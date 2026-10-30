#!/usr/bin/env python3
"""Check the two-dimensional evaluator bodies of an IRIX N32 libGLcore against the plain sum.

Usage: evaluator_check.py BINARY [--max-order N] [--sizes 1,2,3,4] [--inventory FILE]

Runs the library's `DoDomain2` (0xd977d80..0xd979d70) and `DoDomain2WithDerivs`
(0xd979d70..0xd97c60c) under Unicorn for every pair of orders (u, v) from 1 to N and each
control-point size, with the basis arrays of the work area pre-filled to the Bernstein
basis (and the derivative basis divided by the degree) at u = 0.25, v = 0.5 so that no
basis is recomputed, and compares each output with
    sum over j, k of basis_u[j] * basis_v[k] * P[(j * v_order + k) * size + c]
(and the same with the derivative basis in place of one factor). It lists the pairs
that disagree. The emulator lacks three kinds of MIPS IV instruction the routines use, so
the script rewrites them in the emulated copy of the code to no-ops and performs them from
a hook: the multiply-add `madd.s`, the conditional move `movz`, and condition codes other
than 0 (all compares of the routine are folded onto code 0, which is safe when each compare
is consumed before the next: the script checks that). This is software evidence of what
the shipped code does with those inputs, not of what the board does.
"""
import argparse
import os
import random
import struct
import sys
from math import comb

import numpy as np
import unicorn.mips_const as mc

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from attrib_roundtrip import RoundTrip, CTX  # noqa: E402
from unicorn import UC_HOOK_CODE  # noqa: E402

def decode(w):
    op=w>>26
    if op==0x11:
        rs=(w>>21)&0x1f
        if rs==8: return ('bc1',(w>>18)&7)
        if rs in (0x10,0x11) and (w&0x3f)>=0x30: return ('cmp',(w>>8)&7)
        if rs in (0x10,0x11) and (w&0x3f) in (0x11,0x12): return ('movcf',(w>>18)&7)
    if op==0 and (w&0x3f)==1: return ('movci',(w>>18)&7)
    return None
def patch(mu,start,end):
    n=0; live=None; conflicts=[]; cmps=0
    last_cmp=None; consumed=True
    for a in range(start,end,4):
        w=struct.unpack('>I',bytes(mu.mem_read(a,4)))[0]
        d=decode(w)
        if not d: continue
        k,cc=d
        if k=='cmp':
            cmps+=1
            if last_cmp is not None and not consumed and last_cmp[1]!=cc: conflicts.append((hex(last_cmp[0]),hex(a)))
            last_cmp=(a,cc); consumed=False
        elif k in('bc1','movcf','movci'): consumed=True
        if cc:
            if k=='cmp': nw=w&~(7<<8)
            else: nw=w&~(7<<18)
            mu.mem_write(a,struct.pack('>I',nw)); n+=1
    return n,cmps,conflicts

import numpy as np
import unicorn.mips_const as mc
def F(n): return getattr(mc,'UC_MIPS_REG_F%d'%n)
def f32(bits): return np.frombuffer(struct.pack('>I',bits&0xffffffff),dtype='>f4')[0]
def f64(bits): return np.frombuffer(struct.pack('>Q',bits&0xffffffffffffffff),dtype='>f8')[0]
def b32(x): return struct.unpack('>I',np.array([x],dtype='>f4').tobytes())[0]
def b64(x): return struct.unpack('>Q',np.array([x],dtype='>f8').tobytes())[0]
def patch_cop1x(mu,start,end,hooks):
    """replace madd/msub/nmadd/nmsub with nop and emulate them from a code hook"""
    n=0; kinds=set()
    for a in range(start,end,4):
        w=struct.unpack('>I',bytes(mu.mem_read(a,4)))[0]
        if w>>26==0x13:
            fn=w&0x3f; fr=(w>>21)&31; ft=(w>>16)&31; fs=(w>>11)&31; fd=(w>>6)&31
            kinds.add(hex(fn))
            if fn in (0x20,0x21,0x28,0x29,0x30,0x31,0x38,0x39):
                hooks[a]=(fn,fd,fr,fs,ft); mu.mem_write(a,b'\0\0\0\0'); n+=1
    return n,kinds
def emu_cop1x(mu,a,hooks):
    fn,fd,fr,fs,ft=hooks[a]
    dbl=fn&1
    rd=(lambda r: f64(mu.reg_read(F(r)))) if dbl else (lambda r: f32(mu.reg_read(F(r))))
    x,y,z=rd(fs),rd(ft),rd(fr)
    T=np.float64 if dbl else np.float32
    prod=T(x)*T(y)
    base=fn&0x38
    if base==0x20: r=prod+T(z)
    elif base==0x28: r=prod-T(z)
    elif base==0x30: r=-(prod+T(z))
    else: r=-(prod-T(z))
    mu.reg_write(F(fd), b64(r) if dbl else b32(r))

def R_(n): return getattr(mc,'UC_MIPS_REG_%d'%n) if n else None
def patch_moves(mu,start,end,hooks):
    n=0
    for a in range(start,end,4):
        w=struct.unpack('>I',bytes(mu.mem_read(a,4)))[0]
        op=w>>26; fn=w&0x3f
        if op==0 and fn in (0x0a,0x0b):
            hooks[a]=('mz',fn,(w>>11)&31,(w>>21)&31,(w>>16)&31); mu.mem_write(a,b'\0\0\0\0'); n+=1
        elif op==0 and fn==1:
            hooks[a]=('mci',(w>>16)&1,(w>>11)&31,(w>>21)&31,0); mu.mem_write(a,b'\0\0\0\0'); n+=1
        elif op==0x11 and ((w>>21)&31) in (0x10,0x11) and fn in (0x11,0x12):
            # movf/movt fmt: bit16 tf; funct 0x11 = movcf
            hooks[a]=('mcf',(w>>16)&1,(w>>6)&31,(w>>11)&31,(w>>21)&31); mu.mem_write(a,b'\0\0\0\0'); n+=1
    return n
def emu_move(mu,a,hooks):
    h=hooks[a]
    if h[0]=='mz':
        _,fn,rd,rs,rt=h
        v=mu.reg_read(R_(rt)) if rt else 0
        if (fn==0x0a and v==0) or (fn==0x0b and v!=0):
            mu.reg_write(R_(rd), mu.reg_read(R_(rs)) if rs else 0)
    elif h[0]=='mci':
        _,tf,rd,rs,_=h
        c=mu.reg_read(mc.UC_MIPS_REG_FCC0)&1
        if c==tf: mu.reg_write(R_(rd), mu.reg_read(R_(rs)) if rs else 0)
    elif h[0]=='mcf':
        _,tf,fd,fs,_=h
        c=mu.reg_read(mc.UC_MIPS_REG_FCC0)&1
        if c==tf: mu.reg_write(F(fd), mu.reg_read(F(fs)))


D1_ADDR, D2_ADDR, D2_END = 0xd977d80, 0xd979d70, 0xd97c60c


def fl(x):
    return struct.pack('>f', x)


def floats(mu, a, n):
    return struct.unpack('>%df' % n, mu.mem_read(a, 4 * n))


def bern(n, t):
    return [comb(n - 1, i) * t ** i * (1 - t) ** (n - 1 - i) for i in range(n)]


def dbern(n, t):
    m = n - 1
    if m == 0:
        return [0.0]
    b = bern(m, t)
    return [(b[i - 1] if i >= 1 else 0.0) - (b[i] if i < m else 0.0) for i in range(n)]


def evaluate(path, inv, deriv, uo, vo, size):
    random.seed(1)
    p = RoundTrip(path, inv)
    p.setup()
    mu = p.mu
    lo, hi = (D2_ADDR, D2_END) if deriv else (D1_ADDR, D2_ADDR)
    hooks = {}
    n, _, conflicts = patch(mu, lo, hi)
    if conflicts:
        raise SystemExit('compares overlap, folding condition codes is not safe: %s' % conflicts)
    patch_cop1x(mu, lo, hi, hooks)
    patch_moves(mu, lo, hi, hooks)
    mu.hook_add(UC_HOOK_CODE, lambda mu, a, s, u: (emu_cop1x(mu, a, hooks) if isinstance(hooks[a][0], int)
                                                   else emu_move(mu, a, hooks)) if a in hooks else None)
    work, rec, pts_a, out, du_a, dv_a = CTX + 0x100000, CTX + 0x101000, CTX + 0x110000, CTX + 0x120000, CTX + 0x121000, CTX + 0x122000
    tu, tv = 0.25, 0.5
    bu, bv, du, dv = bern(uo, tu), bern(vo, tv), dbern(uo, tu), dbern(vo, tv)
    mu.mem_write(work + 0x2f4, fl(tu) + fl(tv))
    mu.mem_write(work + 0x57c, struct.pack('>IIII', uo, vo, 1, 1))
    mu.mem_write(work + 0x2fc, b''.join(fl(x) for x in bu))
    mu.mem_write(work + 0x39c, b''.join(fl(x) for x in bv))
    mu.mem_write(work + 0x43c, b''.join(fl(x) for x in du))
    mu.mem_write(work + 0x4dc, b''.join(fl(x) for x in dv))
    mu.mem_write(rec, struct.pack('>III', size, uo, vo) + fl(0.0) + fl(1.0) + fl(0.0) + fl(1.0))
    pts = [random.uniform(-2, 2) for _ in range(uo * vo * size)]
    mu.mem_write(pts_a, b''.join(fl(x) for x in pts))
    for a in (out, du_a, dv_a):
        mu.mem_write(a, b'\xff' * 256)
    mu.reg_write(mc.UC_MIPS_REG_F13, struct.unpack('>I', fl(tu))[0])
    mu.reg_write(mc.UC_MIPS_REG_F14, struct.unpack('>I', fl(tv))[0])
    args = [work, 0, 0, rec, out] + ([du_a, dv_a] if deriv else []) + [pts_a]
    p.call(D2_ADDR if deriv else D1_ADDR, args, CTX)

    def s(a, b):
        return [sum(a[j] * b[k] * pts[(j * vo + k) * size + c] for j in range(uo) for k in range(vo))
                for c in range(size)]

    near = lambda x, y: all(abs(a - b) < 1e-4 * (1 + abs(b)) for a, b in zip(x, y))  # noqa: E731
    ok = near(floats(mu, out, size), s(bu, bv))
    if deriv:
        ok = ok and near(floats(mu, du_a, size), s(du, bv)) and near(floats(mu, dv_a, size), s(bu, dv))
    return ok


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('binary')
    ap.add_argument('--max-order', type=int, default=7)
    ap.add_argument('--sizes', default='1,2,3,4')
    ap.add_argument('--inventory', default=os.path.join(os.path.dirname(os.path.abspath(__file__)),
                                                         '..', 'docs', 'inventory', 'functions.tsv'))
    a = ap.parse_args()
    sizes = [int(x) for x in a.sizes.split(',')]
    for deriv in (False, True):
        bad = sorted({(u, v) for u in range(1, a.max_order + 1) for v in range(1, a.max_order + 1)
                      for sz in sizes if not evaluate(a.binary, a.inventory, deriv, u, v, sz)})
        print('%s: orders (u, v) that differ from the plain sum: %s'
              % ('DoDomain2WithDerivs' if deriv else 'DoDomain2', bad or 'none'))


if __name__ == '__main__':
    sys.exit(main())
