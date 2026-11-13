# Instruction readings from hostfacts

Each entry records selected software behavior from its exact binary range. The readings are established for those binaries and do not establish hardware behavior.

- `LookupOpenDeviceIntRec` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1012d310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x1012d310-0x1012d34c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x1012d314 loads 4 bytes from sym(inputInfo) +0x4.
  The `lbu` at 0x1012d324 loads 1 byte from ?.
  The `lw` at 0x1012d330 loads 4 bytes from ?.
  The `beq` branch at 0x1012d31c targets 0x1012d33c, is taken when at(=[sym(inputInfo)+4]) == 0, and falls through when at(=[sym(inputInfo)+4]) != 0.
  The `beq` branch at 0x1012d328 targets 0x1012d344, is taken when v0(?) == a3(?), and falls through when v0(?) != a3(?).
  The `bne` branch at 0x1012d334 targets 0x1012d324, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The return at 0x1012d33c has v0 = 0x0.
  The return at 0x1012d344 has v0 = ?.
- `LookupAnyDeviceIntRec` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10275c80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x10275c80-0x10275ce8 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x10275c84 loads 4 bytes from sym(inputInfo) +0x4.
  The `lw` at 0x10275c8c loads 4 bytes from sym(inputInfo) +0x8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10275c98, `lbu` at 0x10275cb8.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10275ca4, `lw` at 0x10275cc4.
  The `beq` branch at 0x10275c90 targets 0x10275cb0, is taken when at(=[sym(inputInfo)+4]) == 0, and falls through when at(=[sym(inputInfo)+4]) != 0.
  The `beq` branch at 0x10275c9c targets 0x10275cd8, is taken when v0(?) == a3(?), and falls through when v0(?) != a3(?).
  The `bne` branch at 0x10275ca8 targets 0x10275c98, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x10275cb0 targets 0x10275cd0, is taken when a4(=[sym(inputInfo)+8]) == 0, and falls through when a4(=[sym(inputInfo)+8]) != 0.
  The `beq` branch at 0x10275cbc targets 0x10275ce0, is taken when v1(?) == a3(?), and falls through when v1(?) != a3(?).
  The `bne` branch at 0x10275cc8 targets 0x10275cb8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The return at 0x10275cd0 has v0 = 0x0.
  The return at 0x10275cd8 has v0 = ?.
  The return at 0x10275ce0 has v0 = ?.
- `gversionIoctl` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec74b14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec74b14-0xec75790 (3196 bytes).
  It occupies 3196 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xecdd504, including `lw` at 0xec74bec, `lw` at 0xec74c40.
  The `lw` at 0xec74c08 loads 4 bytes from abs 0xecdd508.
  The `lw` at 0xec74c24 loads 4 bytes from abs 0xecdd50c.
  The `lbu` at 0xec74ca8 loads 1 byte from ret(__iglooMalloc) +0x2d.
  The `lw` at 0xec74cc4 loads 4 bytes from abs 0xecdd510.
  The `lw` at 0xec74cf8 loads 4 bytes from ?.
  The `jalr` at 0xec74b3c calls bzero with a0=sp-56, a1=0x28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xec74b6c calls open with a0=0xecd5514, a1=0x800, a2=?, a3=?.
  The `jalr` at 0xec74b8c calls ioctl with a0=ret(open), a1=0x65, a2=0x0, a3=?.
  The `jalr` at 0xec74bb0 calls ioctl with a0=?, a1=0x66, a2=sp-16, a3=?.
  The `jalr` at 0xec74bd0 calls uname with a0=sp-3404, a1=?, a2=?, a3=?.
  The `jalr` at 0xec74be8 calls strcmp with a0=[0xecdd504], a1=sp-56, a2=?, a3=?.
  The `jalr` at 0xec74c04 calls strcmp with a0=[0xecdd508], a1=sp-56, a2=?, a3=?.
  The `jalr` at 0xec74c20 calls strcmp with a0=[0xecdd50c], a1=sp-56, a2=?, a3=?.
  The `jalr` at 0xec74c3c calls match_gfx [0xec747d0] with a0=[0xecdd504], a1=?, a2=?, a3=?.
  The `jalr` at 0xec74c54 calls __iglooMalloc [0xec5fb60] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xec74c90 calls ioctl with a0=?, a1=0x66, a2=sp-16, a3=?.
  The `jalr` at 0xec74cc0 calls match_gfx [0xec747d0] with a0=[0xecdd510], a1=?, a2=?, a3=?.
  The `jalr` at 0xec74ce0 calls match_gfx [0xec747d0] with a0=sp-56, a1=?, a2=?, a3=?.
  The `jalr` at 0xec74d00 calls makeGversionString [0xec7486c] with a0=a0 at entry (arg0), a1=?, a2=sp-2890, a3=?.
  The `jalr` at 0xec74d1c calls close with a0=?, a1=?, a2=?, a3=?.
  The `bltz` branch at 0xec74b78 targets 0xec74d10, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `bgtz` branch at 0xec74b94 targets 0xec74ba4, is taken when v0(=ret(ioctl)) > 0 (signed), and falls through when v0(=ret(ioctl)) <= 0 (signed).
  The `beq` branch at 0xec74b9c targets 0xec74d10 and is always taken.
  The `bgez` branch at 0xec74bb8 targets 0xec74bc8, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xec74bc0 targets 0xec74d10 and is always taken.
  The `beq` branch at 0xec74bf0 targets 0xec74c30, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0xec74c0c targets 0xec74c30, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0xec74c28 targets 0xec74cd4, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0xec74c60 targets 0xec74cf0, is taken when v0(=ret(__iglooMalloc)) == 0, and falls through when v0(=ret(__iglooMalloc)) != 0.
  The `bltz` branch at 0xec74ca0 targets 0xec74cf0, is taken when v0(=ret(ioctl)) < 0 (signed), and falls through when v0(=ret(ioctl)) >= 0 (signed).
  The `bne` branch at 0xec74cac targets 0xec74cf0, is taken when t1(=[ret(__iglooMalloc)+45]:1) != 0, and falls through when t1(=[ret(__iglooMalloc)+45]:1) == 0.
  The `beq` branch at 0xec74ccc targets 0xec74cf0 and is always taken.
  The `bltzl` branch at 0xec74d10 targets 0xec74d2c, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed); its branch-likely delay slot `lw ra,28(sp)` at 0xec74d14 runs only when taken and is annulled on fall-through.
  The return at 0xec74d30 has v0 = one of ?, ret(close).
  The instructions from 0xec74d38 to 0xec7578c are not reached by any path from the entry, and their branches are not listed.
- `__glx_RasterPos2s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a45c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a45c-0xd82a4f0 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd82a46c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a480 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a48c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a4a0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd82a4a4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a4a8 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd82a4ac stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd82a4b0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a4b8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a4d4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[[0x1014]+276]+4]+8, a3=[[0x1014]+276].
  The `beql` branch at 0xd82a4c0 targets 0xd82a4e4, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a4c4 runs only when taken and is annulled on fall-through.
  The return at 0xd82a4e8 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos2iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a4f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a4f0-0xd82a570 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd82a4fc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a50c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a518 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a51c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a520 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd82a524 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd82a52c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd82a530 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd82a534 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd82a538 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a53c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a554 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82a544 targets 0xd82a564, is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a548 runs only when taken and is annulled on fall-through.
  The return at 0xd82a568 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos2i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a570 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a570-0xd82a5ec (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd82a57c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a58c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a598 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a59c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a5a0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd82a5a4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd82a5a8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd82a5ac loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a5b4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a5d0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd82a5bc targets 0xd82a5e0, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a5c0 runs only when taken and is annulled on fall-through.
  The return at 0xd82a5e4 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos2fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a5ec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a5ec-0xd82a66c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd82a5f8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a608 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a614 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a618 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a61c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd82a620 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd82a628 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lwc1` at 0xd82a62c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `swc1` at 0xd82a630 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd82a634 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a638 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a650 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82a640 targets 0xd82a660, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a644 runs only when taken and is annulled on fall-through.
  The return at 0xd82a664 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a66c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a66c-0xd82a6e0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd82a678 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a688 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a694 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a698 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a69c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd82a6a0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd82a6a4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd82a6a8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a6b0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a6c4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd82a6b8 targets 0xd82a6d4, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a6bc runs only when taken and is annulled on fall-through.
  The return at 0xd82a6d8 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_RasterPos2dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a6e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a6e0-0xd82a79c (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0xd82a6f0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a704 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a710 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a718 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a71c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd82a758 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a76c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a72c calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd82a74c calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd82a77c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=?, a3=[[[0x1014]+276]+4]+20.
  The `beq` branch at 0xd82a768 targets 0xd82a788, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+20) (unsigned).
  The return at 0xd82a794 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_RasterPos2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a79c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a79c-0xd82a860 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xd82a7ac loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a7c4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a7d0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a7dc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a7e0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd82a81c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a830 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a7f0 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd82a810 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd82a840 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=?, a3=[[[0x1014]+276]+4]+20.
  The `beq` branch at 0xd82a82c targets 0xd82a84c, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+20) (unsigned).
  The return at 0xd82a858 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Normal3bv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a860 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a860-0xd82a8e8 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xd82a86c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a87c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a888 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a88c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a890 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lb` at 0xd82a894 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xd82a89c stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `lb` at 0xd82a8a0 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sb` at 0xd82a8a4 stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `lb` at 0xd82a8a8 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `sb` at 0xd82a8ac stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd82a8b0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a8b4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a8cc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82a8bc targets 0xd82a8dc, is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a8c0 runs only when taken and is annulled on fall-through.
  The return at 0xd82a8e0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_End` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a8e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a8e8-0xd82a954 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd82a8f4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a904 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a910 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a914 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a918 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd82a91c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a924 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a938 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd82a92c targets 0xd82a948, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a930 runs only when taken and is annulled on fall-through.
  The return at 0xd82a94c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_EdgeFlagv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a954 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a954-0xd82a9cc (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd82a960 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a970 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a97c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a980 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82a984 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lbu` at 0xd82a988 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xd82a990 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd82a994 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82a998 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82a9b0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82a9a0 targets 0xd82a9c0, is taken when t0(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82a9a4 runs only when taken and is annulled on fall-through.
  The return at 0xd82a9c4 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_EdgeFlag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82a9cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82a9cc-0xd82aa44 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd82a9dc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82a9ec loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82a9f8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82a9fc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82aa00 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sb` at 0xd82aa04 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd82aa08 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82aa10 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82aa28 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82aa18 targets 0xd82aa38, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82aa1c runs only when taken and is annulled on fall-through.
  The return at 0xd82aa3c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color4usv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82aa44 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82aa44-0xd82aad4 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd82aa50 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82aa60 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82aa6c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82aa70 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82aa74 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lhu` at 0xd82aa78 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd82aa80 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lhu` at 0xd82aa84 loads 2 bytes from a0 (arg0 at entry) +0x2.
  The `sh` at 0xd82aa88 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `lhu` at 0xd82aa8c loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sh` at 0xd82aa90 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `lhu` at 0xd82aa94 loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `sh` at 0xd82aa98 stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd82aa9c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82aaa0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82aab8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82aaa8 targets 0xd82aac8, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82aaac runs only when taken and is annulled on fall-through.
  The return at 0xd82aacc has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82aad4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82aad4-0xd82ab74 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd82aae4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82ab08 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82ab14 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82ab18 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82ab1c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd82ab20 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd82ab24 stores 2 bytes to [[[0x1014]+276]+4] +0x6.
  The `sh` at 0xd82ab28 stores 2 bytes to [[[0x1014]+276]+4] +0x8.
  The `sh` at 0xd82ab2c stores 2 bytes to [[[0x1014]+276]+4] +0xa.
  The `lw` at 0xd82ab30 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82ab38 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82ab54 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd82ab40 targets 0xd82ab64, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd82ab44 runs only when taken and is annulled on fall-through.
  The return at 0xd82ab6c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Color4uiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82ab74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82ab74-0xd82ac00 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd82ab80 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82ab90 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82ab98 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82ab9c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82aba0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd82aba4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd82abac stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd82abb0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0xd82abb4 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd82abb8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xd82abbc stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd82abc0 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0xd82abc4 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd82abc8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82abcc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82abe4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82abd4 targets 0xd82abf4, is taken when t1(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82abd8 runs only when taken and is annulled on fall-through.
  The return at 0xd82abf8 has v0 = one of 0x14, ret(__glXFlushRenderBuffer).
- `__glx_Color4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82ac00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82ac00-0xd82ac8c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd82ac10 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82ac24 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82ac2c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82ac30 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82ac34 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd82ac38 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd82ac3c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd82ac40 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd82ac44 stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `lw` at 0xd82ac48 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82ac50 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82ac6c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd82ac58 targets 0xd82ac7c, is taken when t7(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned), and falls through when t7(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd82ac5c runs only when taken and is annulled on fall-through.
  The return at 0xd82ac84 has v0 = one of 0x14, ret(__glXFlushRenderBuffer).
- `__glx_Indexd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82ac8c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82ac8c-0xd82ad2c (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd82ac9c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82acb0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82acbc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82acc8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82accc stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd82ace8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82acfc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82acdc calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd82ad0c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12.
  The `beq` branch at 0xd82acf8 targets 0xd82ad18, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned).
  The return at 0xd82ad24 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_Normal3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82ad2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82ad2c-0xd82add8 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xd82ad3c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82ad58 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82ad64 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82ad80 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd82ad84 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sb` at 0xd82ad88 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `sb` at 0xd82ad8c stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `sb` at 0xd82ad90 stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `lw` at 0xd82ad94 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82ad9c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82adb8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=?, a3=[[[0x1014]+276]+4]+8.
  The `beql` branch at 0xd82ada4 targets 0xd82adc8, is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82ada8 runs only when taken and is annulled on fall-through.
  The return at 0xd82add0 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Indexsv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82add8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82add8-0xd82ae50 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd82ade4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82adf4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82ae00 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82ae04 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82ae08 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lh` at 0xd82ae0c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xd82ae14 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd82ae18 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82ae1c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82ae34 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82ae24 targets 0xd82ae44, is taken when t0(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82ae28 runs only when taken and is annulled on fall-through.
  The return at 0xd82ae48 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Indexs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82ae50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82ae50-0xd82aed0 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd82ae60 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82ae70 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82ae7c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82ae88 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd82ae8c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82ae90 stores 2 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd82ae94 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82ae9c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82aeb4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82aea4 targets 0xd82aec4, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82aea8 runs only when taken and is annulled on fall-through.
  The return at 0xd82aec8 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Indexiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82aed0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82aed0-0xd82af48 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd82aedc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82aeec loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82aef8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82aefc stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82af00 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd82af04 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xd82af0c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd82af10 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82af14 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82af2c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82af1c targets 0xd82af3c, is taken when t0(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82af20 runs only when taken and is annulled on fall-through.
  The return at 0xd82af40 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Indexi` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82af48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82af48-0xd82afbc (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd82af54 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82af64 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82af70 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82af74 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82af78 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd82af7c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd82af80 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82af88 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82afa0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82af90 targets 0xd82afb0, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82af94 runs only when taken and is annulled on fall-through.
  The return at 0xd82afb4 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Indexfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82afbc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82afbc-0xd82b034 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd82afc8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82afd8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82afe4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82afe8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82afec stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lwc1` at 0xd82aff0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `swc1` at 0xd82aff8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd82affc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82b000 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82b018 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd82b008 targets 0xd82b028, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82b00c runs only when taken and is annulled on fall-through.
  The return at 0xd82b02c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Indexf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82b034 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82b034-0xd82b0a4 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xd82b040 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82b050 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82b05c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82b060 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82b064 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd82b068 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd82b06c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82b074 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82b088 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd82b07c targets 0xd82b098, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82b080 runs only when taken and is annulled on fall-through.
  The return at 0xd82b09c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_EdgeFlagPointerEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82b0a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82b0a4-0xd82b124 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd82b0b0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82b0b8 loads 4 bytes from [0x1014] +0x114.
  6 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb4, including `lw` at 0xd82b0c0, `lw` at 0xd82b0e4, `lw` at 0xd82b0ec.
  The `lw` at 0xd82b0c4 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd82b0d8 stores 4 bytes to [[0x1014]+276] +0xb0.
  The `sw` at 0xd82b0e0 stores 4 bytes to [[[0x1014]+276]+180] +0xa8.
  The `sw` at 0xd82b0e8 stores 4 bytes to [[[0x1014]+276]+180] +0xac.
  The `sw` at 0xd82b0f4 stores 4 bytes to [[[0x1014]+276]+180] +0xa4.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+180] +0xa0, including `sw` at 0xd82b104, `sw` at 0xd82b10c.
  The `sw` at 0xd82b118 stores 4 bytes to [[[0x1014]+276]+180] +0x9c.
  The `bltz` branch at 0xd82b0b4 targets 0xd82b0c4, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bgezl` branch at 0xd82b0bc targets 0xd82b0e0, is taken when a1 >= 0 (signed), and falls through when a1 < 0 (signed); its branch-likely delay slot `lw t9,180(v0)` at 0xd82b0c0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82b0cc targets 0xd82b11c, is taken when t7(=[[[0x1014]+276]+176]) != 0, and falls through when t7(=[[[0x1014]+276]+176]) == 0.
  The `bne` branch at 0xd82b0f0 targets 0xd82b108, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0xd82b100 targets 0xd82b110 and is always taken.
  The return at 0xd82b0d4 has v0 = [[0x1014]+276].
  The return at 0xd82b11c has v0 = [[0x1014]+276].
  The instructions from 0xd82b0dc to 0xd82b0dc are not reached by any path from the entry, and their branches are not listed.
- `__glx_TexSubImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82b124 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82b124-0xd82b1a8 (132 bytes).
  It occupies 132 bytes.
  The `jalr` at 0xd82b18c calls __glx_TexSubImage1D2DEXT [0xd82b1a8] with a0=0x1003, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0xd82b1a0 has v0 = ret(__glx_TexSubImage1D2DEXT).
- `__glx_TexSubImage1D2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82b1a8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82b1a8-0xd82b528 (896 bytes).
  It occupies 896 bytes.
  The `lw` at 0xd82b214 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82b21c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82b224 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82b228 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82b234 loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82b24c loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82b290, `sh` at 0xd82b2a0.
  14 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82b2b0, `sw` at 0xd82b2b8, `sw` at 0xd82b2c4.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xd82b30c, `sb` at 0xd82b348, `sb` at 0xd82b34c.
  The `lw` at 0xd82b328 loads 4 bytes from [[0x1014]+276] +0xa8.
  The `lw` at 0xd82b368 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82b384 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82b3d0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82b3e0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82b3f0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x1c.
  The `sw` at 0xd82b3fc stores 4 bytes to ret(__glXFlushRenderBuffer) +0x20.
  The `sw` at 0xd82b404 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x24.
  The `sw` at 0xd82b40c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x28.
  The `sw` at 0xd82b414 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x30.
  The `sw` at 0xd82b418 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x34.
  The `sw` at 0xd82b41c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x38.
  The `sw` at 0xd82b420 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x2c.
  2 such `sw` accesses store 4 bytes to ret(__glXFlushRenderBuffer) +0x3c, including `sw` at 0xd82b42c, `sw` at 0xd82b434.
  The `jalr` at 0xd82b204 calls __glXImageSize with a0=?, a1=?, a2=0x1, a3=0x1.
  The `jalr` at 0xd82b270 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82b330 calls (unknown callee) with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82b390 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82b3ac calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82b464 calls SendLargeImage [0xd82ea48] with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `bne` branch at 0xd82b1d4 targets 0xd82b1e4, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `beq` branch at 0xd82b1dc targets 0xd82b214 and is always taken.
  The `beql` branch at 0xd82b22c targets 0xd82b474, is taken when t2(=[[[0x1014]+276]+216]) == 0, and falls through when t2(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82b230 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82b244 targets 0xd82b3a0, is taken when t3(=[[[0x1014]+276]+268]) < a2(?) (signed), and falls through when t3(=[[[0x1014]+276]+268]) >= a2(?) (signed).
  The `beql` branch at 0xd82b25c targets 0xd82b28c, is taken when t4(=[[[0x1014]+276]+12]) >= t7(?) (unsigned), and falls through when t4(=[[[0x1014]+276]+12]) < t7(?) (unsigned); its branch-likely delay slot `lw a1,108(sp)` at 0xd82b260 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd82b2ec targets 0xd82b300, is taken when t4(?) != 0, and falls through when t4(?) == 0; its branch-likely delay slot `sw zero,32(s0)` at 0xd82b2f0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82b2f4 targets 0xd82b300 and is always taken.
  The `blezl` branch at 0xd82b308 targets 0xd82b348, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed); its branch-likely delay slot `sb zero,0(v1)` at 0xd82b30c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82b33c targets 0xd82b364 and is always taken.
  The `beq` branch at 0xd82b380 targets 0xd82b470, is taken when t4(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t4(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd82b398 targets 0xd82b470 and is always taken.
  The `bnel` branch at 0xd82b428 targets 0xd82b43c, is taken when t4(?) != 0, and falls through when t4(?) == 0; its branch-likely delay slot `sw zero,32(a1)` at 0xd82b42c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82b430 targets 0xd82b43c and is always taken.
  The return at 0xd82b47c has v0 = ?.
  The instructions from 0xd82b2fc to 0xd82b2fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82b344 to 0xd82b344 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82b438 to 0xd82b438 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82b484 to 0xd82b524 are not reached by any path from the entry, and their branches are not listed.
- `__glx_TexSubImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82b484 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82b484-0xd82b528 (164 bytes).
  It occupies 164 bytes.
  The `jalr` at 0xd82b50c calls __glx_TexSubImage3D4DEXT [0xd82b528] with a0=0x1013, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0xd82b520 has v0 = ret(__glx_TexSubImage3D4DEXT).
- `__glx_TexSubImage3D4DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82b528 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82b528-0xd82bb24 (1532 bytes).
  It occupies 1532 bytes.
  The `lw` at 0xd82b594 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82b59c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82b5a4 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82b5a8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82b5b4 loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82b5cc loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82b60c, `sh` at 0xd82b61c.
  22 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82b628, `sw` at 0xd82b630, `sw` at 0xd82b63c.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xd82b6ac, `sb` at 0xd82b6ec, `sb` at 0xd82b6f0.
  The `lw` at 0xd82b6d0 loads 4 bytes from [[0x1014]+276] +0xac.
  The `lw` at 0xd82b71c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82b738 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82b78c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82b79c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82b7ac stores 4 bytes to ret(__glXFlushRenderBuffer) +0x2c.
  The `sw` at 0xd82b7b4 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x30.
  The `sw` at 0xd82b7bc stores 4 bytes to ret(__glXFlushRenderBuffer) +0x34.
  The `sw` at 0xd82b7c8 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x38.
  The `sw` at 0xd82b7d0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x3c.
  The `sw` at 0xd82b7d8 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x40.
  The `sw` at 0xd82b7e0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x48.
  The `sw` at 0xd82b7e4 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4c.
  The `sw` at 0xd82b7e8 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x50.
  The `sw` at 0xd82b7ec stores 4 bytes to ret(__glXFlushRenderBuffer) +0x54.
  The `sw` at 0xd82b7f0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x58.
  The `sw` at 0xd82b7f4 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x44.
  2 such `sw` accesses store 4 bytes to ret(__glXFlushRenderBuffer) +0x5c, including `sw` at 0xd82b800, `sw` at 0xd82b808.
  The `jalr` at 0xd82b584 calls __glXImageSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82b5f0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82b6d4 calls (unknown callee) with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82b744 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82b760 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82b83c calls SendLargeImage3D4D [0xd82e918] with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `bne` branch at 0xd82b554 targets 0xd82b564, is taken when t6(?) != 0, and falls through when t6(?) == 0.
  The `beq` branch at 0xd82b55c targets 0xd82b594 and is always taken.
  The `beql` branch at 0xd82b5ac targets 0xd82b84c, is taken when t4(=[[[0x1014]+276]+216]) == 0, and falls through when t4(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,60(sp)` at 0xd82b5b0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82b5c4 targets 0xd82b754, is taken when t5(=[[[0x1014]+276]+268]) < a2(?) (signed), and falls through when t5(=[[[0x1014]+276]+268]) >= a2(?) (signed).
  The `beql` branch at 0xd82b5dc targets 0xd82b60c, is taken when t6(=[[[0x1014]+276]+12]) >= t9(?) (unsigned), and falls through when t6(=[[[0x1014]+276]+12]) < t9(?) (unsigned); its branch-likely delay slot `lw a1,124(sp)` at 0xd82b5e0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd82b68c targets 0xd82b6a0, is taken when t5(?) != 0, and falls through when t5(?) == 0; its branch-likely delay slot `sw zero,48(s0)` at 0xd82b690 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82b694 targets 0xd82b6a0 and is always taken.
  The `blezl` branch at 0xd82b6a8 targets 0xd82b6ec, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed); its branch-likely delay slot `sb zero,0(v1)` at 0xd82b6ac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82b6e0 targets 0xd82b718 and is always taken.
  The `beq` branch at 0xd82b734 targets 0xd82b848, is taken when t6(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t6(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd82b74c targets 0xd82b848 and is always taken.
  The `bnel` branch at 0xd82b7fc targets 0xd82b810, is taken when t7(?) != 0, and falls through when t7(?) == 0; its branch-likely delay slot `sw zero,48(a1)` at 0xd82b800 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82b804 targets 0xd82b810 and is always taken.
  The return at 0xd82b854 has v0 = ?.
  The instructions from 0xd82b69c to 0xd82b69c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82b6e8 to 0xd82b6e8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82b80c to 0xd82b80c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82b85c to 0xd82bb20 are not reached by any path from the entry, and their branches are not listed.
- `__glx_DrawPixels` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82b85c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82b85c-0xd82ba8c (560 bytes).
  It occupies 560 bytes.
  The `lw` at 0xd82b8ac loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82b8b8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82b8c4 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82b8d4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82b8d8 loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82b8ec loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82b930, `sh` at 0xd82b934.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82b938, `sw` at 0xd82b93c, `sw` at 0xd82b940.
  The `lw` at 0xd82b970 loads 4 bytes from [[0x1014]+276] +0xa8.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xd82b990, `sb` at 0xd82b994, `sb` at 0xd82b998.
  The `lw` at 0xd82b9b4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82b9d0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82ba1c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82ba20 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82ba24 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x24.
  The `sw` at 0xd82ba28 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x28.
  The `sw` at 0xd82ba2c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x1c.
  The `sw` at 0xd82ba30 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x20.
  The `jalr` at 0xd82b8a4 calls __glXImageSize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x1.
  The `jalr` at 0xd82b910 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82b97c calls (unknown callee) with a0=[[0x1014]+276], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jalr` at 0xd82b9e0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82b9fc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82ba64 calls SendLargeImage [0xd82ea48] with a0=[[0x1014]+276], a1=ret(__glXImageSize), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `beq` branch at 0xd82b8d0 targets 0xd82ba70, is taken when t7(=[[[0x1014]+276]+216]) == 0, and falls through when t7(=[[[0x1014]+276]+216]) != 0.
  The `bne` branch at 0xd82b8e4 targets 0xd82b9f0, is taken when t8(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t8(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beql` branch at 0xd82b8fc targets 0xd82b928, is taken when t9(=[[[0x1014]+276]+12]) >= t3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+12]) < t3(?) (unsigned); its branch-likely delay slot `lw a1,96(sp)` at 0xd82b900 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd82b954 targets 0xd82b98c, is taken when t5(=ret(__glXImageSize)) <= 0 (signed), and falls through when t5(=ret(__glXImageSize)) > 0 (signed).
  The `beq` branch at 0xd82b984 targets 0xd82b9b0 and is always taken.
  The `beq` branch at 0xd82b9cc targets 0xd82ba70, is taken when t3(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd82b9e8 targets 0xd82ba70 and is always taken.
  The return at 0xd82ba84 has v0 = one of ret(__glXImageSize), ?, ret(__glXFlushRenderBuffer), ret(SendLargeImage).
- `__glx_TexImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82ba8c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82ba8c-0xd82bb24 (152 bytes).
  It occupies 152 bytes.
  The `jalr` at 0xd82bb08 calls __glx_TexImage3D4D [0xd82bb24] with a0=0x1012, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0xd82bb1c has v0 = ret(__glx_TexImage3D4D).
- `__glx_TexImage3D4D` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82bb24 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82bb24-0xd82e918 (11764 bytes).
  It occupies 11764 bytes.
  The `lw` at 0xd82bbac loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82bbb4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82bbbc loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82bbc0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82bbcc loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82bbe4 loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82bc30, `sh` at 0xd82bc40.
  20 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82bc4c, `sw` at 0xd82bc58, `sw` at 0xd82bc60.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0xd82bcb0, `sb` at 0xd82bcb8, `sb` at 0xd82bcf8.
  The `lw` at 0xd82bcd8 loads 4 bytes from [[0x1014]+276] +0xac.
  The `lw` at 0xd82bd28 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82bd44 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82bd9c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82bdac stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82bdbc stores 4 bytes to ret(__glXFlushRenderBuffer) +0x2c.
  The `sw` at 0xd82bdc8 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x30.
  The `sw` at 0xd82bdd0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x34.
  The `sw` at 0xd82bdd8 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x3c.
  The `sw` at 0xd82bddc stores 4 bytes to ret(__glXFlushRenderBuffer) +0x40.
  The `sw` at 0xd82bde0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x44.
  The `sw` at 0xd82bde4 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x38.
  The `sw` at 0xd82bdec stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4c.
  The `sw` at 0xd82bdf0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x50.
  The `sw` at 0xd82bdf8 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x48.
  2 such `sw` accesses store 4 bytes to ret(__glXFlushRenderBuffer) +0x54, including `sw` at 0xd82be00, `sw` at 0xd82be04.
  The `jalr` at 0xd82bb98 calls __glXImageSize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82bc08 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82bce0 calls (unknown callee) with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82bd50 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82bd6c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82be30 calls SendLargeImage3D4D [0xd82e918] with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd82bb50 targets 0xd82bb70, is taken when a1 == at(=0x8070), and falls through when a1 != at(=0x8070).
  The `beql` branch at 0xd82bb60 targets 0xd82bb74, is taken when t0(?) == 0, and falls through when t0(?) != 0; its branch-likely delay slot `lw t0,140(sp)` at 0xd82bb64 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82bb68 targets 0xd82bb7c, is taken when a1 != at(=0x8135), and falls through when a1 == at(=0x8135).
  The `beq` branch at 0xd82bb74 targets 0xd82bbac and is always taken.
  The `beql` branch at 0xd82bbc4 targets 0xd82be40, is taken when t5(=[[[0x1014]+276]+216]) == 0, and falls through when t5(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,60(sp)` at 0xd82bbc8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82bbdc targets 0xd82bd60, is taken when t6(=[[[0x1014]+276]+268]) < a2(?) (signed), and falls through when t6(=[[[0x1014]+276]+268]) >= a2(?) (signed).
  The `beql` branch at 0xd82bbf4 targets 0xd82bc28, is taken when t7(=[[[0x1014]+276]+12]) >= t5(?) (unsigned), and falls through when t7(=[[[0x1014]+276]+12]) < t5(?) (unsigned); its branch-likely delay slot `lw v0,124(sp)` at 0xd82bbf8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82bc8c targets 0xd82bc9c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xd82bc94 targets 0xd82bca0 and is always taken.
  The `blezl` branch at 0xd82bcac targets 0xd82bcf8, is taken when t9(?) <= 0 (signed), and falls through when t9(?) > 0 (signed); its branch-likely delay slot `sb zero,0(v1)` at 0xd82bcb0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82bcb4 targets 0xd82bcf8, is taken when t0(?) == 0, and falls through when t0(?) != 0; its branch-likely delay slot `sb zero,0(v1)` at 0xd82bcb8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82bcec targets 0xd82bd24 and is always taken.
  The `beq` branch at 0xd82bd40 targets 0xd82be3c, is taken when t9(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd82bd58 targets 0xd82be3c and is always taken.
  The `bne` branch at 0xd82bdf4 targets 0xd82be04, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xd82bdfc targets 0xd82be08 and is always taken.
  The return at 0xd82be48 has v0 = ?.
  The instructions from 0xd82bcf4 to 0xd82bcf4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82be50 to 0xd82e914 are not reached by any path from the entry, and their branches are not listed.
- `__glx_TexSubImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82be50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82be50-0xd82bed8 (136 bytes).
  It occupies 136 bytes.
  The `jalr` at 0xd82bebc calls __glx_TexSubImage1D2DEXT [0xd82b1a8] with a0=0x1004, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0xd82bed0 has v0 = ret(__glx_TexSubImage1D2DEXT).
- `__glx_GetClipPlane` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82bed8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82bed8-0xd82c060 (392 bytes).
  It occupies 392 bytes.
  The `lw` at 0xd82bee8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82bf04 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82bf08 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82bf0c loads 4 bytes from [[0x1014]+276] +0x4.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd82bf2c, `lw` at 0xd82bff4, `lw` at 0xd82c010.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd82bf38, `lw` at 0xd82bf50, `lw` at 0xd82bf7c.
  The `lw` at 0xd82bf3c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd82bf54 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd82bf64, `sw` at 0xd82bf80.
  The `sh` at 0xd82bf88 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd82bf8c, `sb` at 0xd82bfb8.
  The `lw` at 0xd82bf90 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82bfa4 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd82bfa8 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd82bfac loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd82bfb0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd82bfbc loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd82bfc8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd82bfd4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd82c018, `lw` at 0xd82c030.
  The `lw` at 0xd82c01c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd82bf24 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd82bf44 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82bf70 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82bfdc calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0.
  The `jalr` at 0xd82c004 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=0x20, a3=?.
  The `jalr` at 0xd82c024 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82c040 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd82bf10 targets 0xd82c050, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd82bf14 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82bf34 targets 0xd82bf54, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd82bf38 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82bf60 targets 0xd82bf84, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd82bf64 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd82bff0 targets 0xd82c014, is taken when t8(?) != at(=0x8), and falls through when t8(?) == at(=0x8); its branch-likely delay slot `lw v0,1232(s0)` at 0xd82bff4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82c014 targets 0xd82c034, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd82c018 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82c038 targets 0xd82c050, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd82c03c runs only when taken and is annulled on fall-through.
  The return at 0xd82c058 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetError` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82c060 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82c060-0xd82c1e0 (384 bytes).
  It occupies 384 bytes.
  The `lw` at 0xd82c070 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82c084 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82c08c loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd82c09c stores 4 bytes to [[0x1014]+276] +0xb0.
  The `lw` at 0xd82c0a0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82c0a4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd82c0c4, `lw` at 0xd82c174.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd82c0d0, `lw` at 0xd82c0e8, `lw` at 0xd82c114.
  The `lw` at 0xd82c0d4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd82c0ec loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd82c0fc, `sw` at 0xd82c118.
  The `sh` at 0xd82c120 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd82c124, `sb` at 0xd82c150.
  The `lw` at 0xd82c128 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82c13c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd82c140 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd82c144 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd82c148 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd82c154 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd82c160 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd82c184, `lw` at 0xd82c1a4.
  The `lw` at 0xd82c18c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd82c0bc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd82c0dc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82c108 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82c16c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd82c194 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82c1b8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd82c090 targets 0xd82c0a0, is taken when v1(=[[[0x1014]+276]+176]) == 0, and falls through when v1(=[[[0x1014]+276]+176]) != 0.
  The `beq` branch at 0xd82c098 targets 0xd82c1cc and is always taken.
  The `beql` branch at 0xd82c0a8 targets 0xd82c1cc, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `or v0,a1,zero` at 0xd82c0ac runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82c0cc targets 0xd82c0ec, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd82c0d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82c0f8 targets 0xd82c11c, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd82c0fc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82c180 targets 0xd82c1a8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd82c184 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82c1ac targets 0xd82c1cc, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `or v0,a1,zero` at 0xd82c1b0 runs only when taken and is annulled on fall-through.
  The return at 0xd82c1d8 has v0 = one of [[[0x1014]+276]+176], 0x0, ?.
- `__glx_ColorTableSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82c1e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82c1e0-0xd82c47c (668 bytes).
  It occupies 668 bytes.
  The `lw` at 0xd82c264 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82c26c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82c274 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82c278 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82c284 loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82c29c loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82c2e0, `sh` at 0xd82c2e4.
  9 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82c2f4, `sw` at 0xd82c304, `sw` at 0xd82c30c.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0xd82c328, `sb` at 0xd82c330, `sb` at 0xd82c36c.
  The `lw` at 0xd82c348 loads 4 bytes from [[0x1014]+276] +0xa8.
  The `lw` at 0xd82c38c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82c3a8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82c3f0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82c3f4 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82c404 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x1c.
  The `sw` at 0xd82c410 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x20.
  The `sw` at 0xd82c41c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x24.
  The `sw` at 0xd82c424 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x28.
  The `sw` at 0xd82c42c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x2c.
  The `jalr` at 0xd82c254 calls __glXImageSize with a0=a2 at entry (arg2), a1=0x1, a2=0x1, a3=0x1.
  The `jalr` at 0xd82c2c0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82c354 calls (unknown callee) with a0=[[0x1014]+276], a1=a2 at entry (arg2), a2=0x1, a3=a3 at entry (arg3).
  The `jalr` at 0xd82c3b4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82c3d0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82c45c calls SendLargeImage [0xd82ea48] with a0=[[0x1014]+276], a1=?, a2=a2 at entry (arg2), a3=0x1.
  The `beq` branch at 0xd82c20c targets 0xd82c230, is taken when a0 == at(=0x80bd), and falls through when a0 != at(=0x80bd).
  The `beq` branch at 0xd82c218 targets 0xd82c230, is taken when a0 == at(=0x80d3), and falls through when a0 != at(=0x80d3).
  The `beq` branch at 0xd82c220 targets 0xd82c230, is taken when a0 == at(=0x80d4), and falls through when a0 != at(=0x80d4).
  The `bne` branch at 0xd82c228 targets 0xd82c238, is taken when a0 != at(=0x80d5), and falls through when a0 == at(=0x80d5).
  The `beq` branch at 0xd82c230 targets 0xd82c264 and is always taken.
  The `beql` branch at 0xd82c27c targets 0xd82c46c, is taken when t2(=[[[0x1014]+276]+216]) == 0, and falls through when t2(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82c280 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82c294 targets 0xd82c3c4, is taken when t3(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t3(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beql` branch at 0xd82c2ac targets 0xd82c2dc, is taken when t4(=[[[0x1014]+276]+12]) >= t7(?) (unsigned), and falls through when t4(=[[[0x1014]+276]+12]) < t7(?) (unsigned); its branch-likely delay slot `lw t1,104(sp)` at 0xd82c2b0 runs only when taken and is annulled on fall-through.
  The `blezl` branch at 0xd82c324 targets 0xd82c36c, is taken when t6(?) <= 0 (signed), and falls through when t6(?) > 0 (signed); its branch-likely delay slot `sb zero,0(v0)` at 0xd82c328 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82c32c targets 0xd82c36c, is taken when t0(?) == 0, and falls through when t0(?) != 0; its branch-likely delay slot `sb zero,0(v0)` at 0xd82c330 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82c360 targets 0xd82c388 and is always taken.
  The `beq` branch at 0xd82c3a4 targets 0xd82c468, is taken when t3(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd82c3bc targets 0xd82c468 and is always taken.
  The return at 0xd82c474 has v0 = ?.
  The instructions from 0xd82c368 to 0xd82c368 are not reached by any path from the entry, and their branches are not listed.
- `__glx_SeparableFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82c47c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82c47c-0xd82c898 (1052 bytes).
  It occupies 1052 bytes.
  The `lw` at 0xd82c50c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82c52c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82c538 loads 4 bytes from [[0x1014]+276] +0xd8.
  3 such `lw` accesses load 4 bytes from [[0x1014]+276] +0x4, including `lw` at 0xd82c548, `lw` at 0xd82c82c, `lw` at 0xd82c86c.
  The `lw` at 0xd82c54c loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82c560 loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82c5ac, `sh` at 0xd82c5b0.
  10 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82c5c0, `sw` at 0xd82c5c8, `sw` at 0xd82c5d0.
  4 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xa8, including `lw` at 0xd82c608, `lw` at 0xd82c660, `lw` at 0xd82c7cc.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xd82c69c, `sb` at 0xd82c6a0, `sb` at 0xd82c6a4.
  The `lw` at 0xd82c6bc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82c6c0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82c710 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82c714 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82c724 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x1c.
  The `sw` at 0xd82c734 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x20.
  The `sw` at 0xd82c73c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x24.
  The `sw` at 0xd82c744 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x28.
  The `sw` at 0xd82c74c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x2c.
  The `sw` at 0xd82c754 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x30.
  The `lbu` at 0xd82c758 loads 1 byte from [[0x1014]+276] +0xa4.
  The `lw` at 0xd82c794 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd82c7a8 stores 4 bytes to [[0x1014]+276] +0xb0.
  The `jalr` at 0xd82c4cc calls __glXImageSize with a0=a2 at entry (arg2), a1=0x1, a2=0x1, a3=0x1.
  The `jalr` at 0xd82c4fc calls __glXImageSize with a0=a3 at entry (arg3), a1=0x1, a2=0x1, a3=0x1.
  The `jalr` at 0xd82c584 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82c614 calls (unknown callee) with a0=[[0x1014]+276], a1=a2 at entry (arg2), a2=0x1, a3=?.
  The `jalr` at 0xd82c66c calls (unknown callee) with a0=[[0x1014]+276], a1=a3 at entry (arg3), a2=0x1, a3=?.
  The `jalr` at 0xd82c6dc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82c6f8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82c77c calls malloc with a0=?, a1=?, a2=?, a3=ret(__glXFlushRenderBuffer)+52.
  The `jalr` at 0xd82c7dc calls (unknown callee) with a0=[[0x1014]+276], a1=a2 at entry (arg2), a2=0x1, a3=?.
  The `jalr` at 0xd82c820 calls (unknown callee) with a0=[[0x1014]+276], a1=a3 at entry (arg3), a2=0x1, a3=?.
  The `jalr` at 0xd82c844 calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=ret(malloc).
  The `jalr` at 0xd82c858 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82c878 calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=ret(__glXFlushRenderBuffer)+52.
  The `beq` branch at 0xd82c544 targets 0xd82c884, is taken when t5(=[[[0x1014]+276]+216]) == 0, and falls through when t5(=[[[0x1014]+276]+216]) != 0.
  The `bne` branch at 0xd82c558 targets 0xd82c6ec, is taken when t6(=[[[0x1014]+276]+268]) < a0(?) (unsigned), and falls through when t6(=[[[0x1014]+276]+268]) >= a0(?) (unsigned).
  The `beq` branch at 0xd82c570 targets 0xd82c59c, is taken when t7(=[[[0x1014]+276]+12]) >= t1(?) (unsigned), and falls through when t7(=[[[0x1014]+276]+12]) < t1(?) (unsigned).
  The `bne` branch at 0xd82c5e4 targets 0xd82c638, is taken when t0(=ret(__glXImageSize)+3) < 0x4 (unsigned), and falls through when t0(=ret(__glXImageSize)+3) >= 0x4 (unsigned).
  The `beql` branch at 0xd82c63c targets 0xd82c68c, is taken when t7(=ret(__glXImageSize)) == 0, and falls through when t7(=ret(__glXImageSize)) != 0; its branch-likely delay slot `addiu at,zero,3` at 0xd82c640 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82c68c targets 0xd82c6bc, is taken when t0(=ret(__glXImageSize)+3) != at(=0x3), and falls through when t0(=ret(__glXImageSize)+3) == at(=0x3).
  The `bne` branch at 0xd82c694 targets 0xd82c6bc, is taken when t3(=ret(__glXImageSize)) != 0, and falls through when t3(=ret(__glXImageSize)) == 0.
  The `beql` branch at 0xd82c6c8 targets 0xd82c888, is taken when t5(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t5(=[[[0x1014]+276]+8]) < s0(?) (unsigned); its branch-likely delay slot `lw ra,52(sp)` at 0xd82c6cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82c6e4 targets 0xd82c884 and is always taken.
  The `bne` branch at 0xd82c764 targets 0xd82c868, is taken when t5(=[[[0x1014]+276]+164]:1) != 0, and falls through when t5(=[[[0x1014]+276]+164]:1) == 0.
  The `bne` branch at 0xd82c78c targets 0xd82c7ac, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd82c79c targets 0xd82c888, is taken when t7(=[[[0x1014]+276]+176]) != 0, and falls through when t7(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82c7a0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82c7a4 targets 0xd82c884 and is always taken.
  The `beq` branch at 0xd82c860 targets 0xd82c884 and is always taken.
  The return at 0xd82c890 has v0 = one of ?, ret(malloc).
- `__glx_ConvolutionFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82c898 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82c898-0xd82c90c (116 bytes).
  It occupies 116 bytes.
  The `jalr` at 0xd82c8f0 calls __glx_ConvolutionFilter1D2D with a0=0x1006, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0xd82c904 has v0 = ret(__glx_ConvolutionFilter1D2D).
- `__glx_ConvolutionFilter1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82c90c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82c90c-0xd82c980 (116 bytes).
  It occupies 116 bytes.
  The `jalr` at 0xd82c964 calls __glx_ConvolutionFilter1D2D with a0=0x1005, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0xd82c978 has v0 = ret(__glx_ConvolutionFilter1D2D).
- `__glx_ConvolutionFilter1D2D` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82c980 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82c980-0xd82cbe4 (612 bytes).
  It occupies 612 bytes.
  The `lw` at 0xd82c9d8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82c9e4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82c9f0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82ca04 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82ca08 loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82ca1c loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82ca64, `sh` at 0xd82ca74.
  10 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82ca84, `sw` at 0xd82ca8c, `sw` at 0xd82ca90.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xd82caa8, `sb` at 0xd82cadc, `sb` at 0xd82cae0.
  The `lw` at 0xd82cac0 loads 4 bytes from [[0x1014]+276] +0xa8.
  The `lw` at 0xd82cafc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82cb18 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82cb68 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82cb78 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82cb84 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x1c.
  The `sw` at 0xd82cb8c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x2c.
  The `sw` at 0xd82cb90 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x24.
  The `sw` at 0xd82cb94 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x28.
  The `sw` at 0xd82cb98 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x30.
  The `sw` at 0xd82cb9c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x20.
  The `jalr` at 0xd82c9d0 calls __glXImageSize with a0=a3 at entry (arg3), a1=?, a2=0x1, a3=0x1.
  The `jalr` at 0xd82ca40 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82cac8 calls (unknown callee) with a0=[[0x1014]+276], a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xd82cb28 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82cb44 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82cbc4 calls SendLargeImage [0xd82ea48] with a0=[[0x1014]+276], a1=ret(__glXImageSize), a2=a3 at entry (arg3), a3=?.
  The `beq` branch at 0xd82ca00 targets 0xd82cbd0, is taken when t9(=[[[0x1014]+276]+216]) == 0, and falls through when t9(=[[[0x1014]+276]+216]) != 0.
  The `bne` branch at 0xd82ca14 targets 0xd82cb38, is taken when t2(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t2(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beql` branch at 0xd82ca2c targets 0xd82ca5c, is taken when t3(=[[[0x1014]+276]+12]) >= t6(?) (unsigned), and falls through when t3(=[[[0x1014]+276]+12]) < t6(?) (unsigned); its branch-likely delay slot `lw a1,100(sp)` at 0xd82ca30 runs only when taken and is annulled on fall-through.
  The `blezl` branch at 0xd82caa4 targets 0xd82cadc, is taken when t2(=ret(__glXImageSize)) <= 0 (signed), and falls through when t2(=ret(__glXImageSize)) > 0 (signed); its branch-likely delay slot `sb zero,0(v0)` at 0xd82caa8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82cad0 targets 0xd82caf8 and is always taken.
  The `beq` branch at 0xd82cb14 targets 0xd82cbd0, is taken when t8(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t8(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd82cb30 targets 0xd82cbd0 and is always taken.
  The return at 0xd82cbdc has v0 = one of ret(__glXImageSize), ?, ret(__glXFlushRenderBuffer), ret(SendLargeImage).
  The instructions from 0xd82cad8 to 0xd82cad8 are not reached by any path from the entry, and their branches are not listed.
- `__glx_TexImage2D` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82cbe4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82cbe4-0xd82ce88 (676 bytes).
  It occupies 676 bytes.
  The `lw` at 0xd82cc50 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82cc58 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82cc60 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82cc64 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82cc70 loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82cc88 loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82ccd0, `sh` at 0xd82ccd4.
  12 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82cce4, `sw` at 0xd82ccf4, `sw` at 0xd82ccfc.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0xd82cd2c, `sb` at 0xd82cd34, `sb` at 0xd82cd6c.
  The `lw` at 0xd82cd4c loads 4 bytes from [[0x1014]+276] +0xa8.
  The `lw` at 0xd82cd8c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82cda8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82cdfc stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82ce00 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82ce10 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x1c.
  The `sw` at 0xd82ce1c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x20.
  The `sw` at 0xd82ce24 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x24.
  The `sw` at 0xd82ce2c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x2c.
  The `sw` at 0xd82ce30 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x28.
  The `sw` at 0xd82ce38 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x34.
  The `sw` at 0xd82ce3c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x38.
  The `sw` at 0xd82ce40 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x30.
  The `jalr` at 0xd82cc40 calls __glXImageSize with a0=a3 at entry (arg3), a1=?, a2=0x1, a3=0x1.
  The `jalr` at 0xd82ccac calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82cd54 calls (unknown callee) with a0=[[0x1014]+276], a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xd82cdb4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82cdd0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82ce68 calls SendLargeImage [0xd82ea48] with a0=[[0x1014]+276], a1=?, a2=a3 at entry (arg3), a3=?.
  The `bne` branch at 0xd82cc10 targets 0xd82cc20, is taken when a0 != at(=0x8064), and falls through when a0 == at(=0x8064).
  The `beq` branch at 0xd82cc18 targets 0xd82cc50 and is always taken.
  The `beql` branch at 0xd82cc68 targets 0xd82ce78, is taken when t3(=[[[0x1014]+276]+216]) == 0, and falls through when t3(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82cc6c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82cc80 targets 0xd82cdc4, is taken when t4(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t4(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beql` branch at 0xd82cc98 targets 0xd82ccc8, is taken when t5(=[[[0x1014]+276]+12]) >= t8(?) (unsigned), and falls through when t5(=[[[0x1014]+276]+12]) < t8(?) (unsigned); its branch-likely delay slot `lw a2,104(sp)` at 0xd82cc9c runs only when taken and is annulled on fall-through.
  The `blezl` branch at 0xd82cd28 targets 0xd82cd6c, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed); its branch-likely delay slot `sb zero,0(v0)` at 0xd82cd2c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82cd30 targets 0xd82cd6c, is taken when t0(?) == 0, and falls through when t0(?) != 0; its branch-likely delay slot `sb zero,0(v0)` at 0xd82cd34 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82cd60 targets 0xd82cd88 and is always taken.
  The `beq` branch at 0xd82cda4 targets 0xd82ce74, is taken when t5(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t5(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd82cdbc targets 0xd82ce74 and is always taken.
  The return at 0xd82ce80 has v0 = ?.
  The instructions from 0xd82cd68 to 0xd82cd68 are not reached by any path from the entry, and their branches are not listed.
- `__glx_PixelMapuiv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82ce88 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82ce88-0xd82d030 (424 bytes).
  It occupies 424 bytes.
  The `lw` at 0xd82ce98 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82ceb4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82cebc loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82cec0 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd82ced4 stores 4 bytes to [[0x1014]+276] +0xb0.
  The `lw` at 0xd82ced8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82ceec loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82cf04 loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82cf48, `sh` at 0xd82cf4c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82cf5c, `sw` at 0xd82cf64.
  The `lw` at 0xd82cf84 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82cf98 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82cfe0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82cfe4 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82cff4 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x8.
  The `sw` at 0xd82d000 stores 4 bytes to ret(__glXFlushRenderBuffer) +0xc.
  The `jalr` at 0xd82cf2c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd82cf74 calls memcpy with a0=?, a1=a2 at entry (arg2), a2=(a1 << 0x2), a3=?.
  The `jalr` at 0xd82cfa8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82cfc4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd82d010 calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=ret(__glXFlushRenderBuffer), a2=0x10, a3=a2 at entry (arg2).
  The `bgez` branch at 0xd82ceb8 targets 0xd82ced8, is taken when a1 >= 0 (signed), and falls through when a1 < 0 (signed).
  The `bnel` branch at 0xd82cec4 targets 0xd82d020, is taken when t8(=[[[0x1014]+276]+176]) != 0, and falls through when t8(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd82cec8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82ced0 targets 0xd82d01c and is always taken.
  The `beq` branch at 0xd82cee4 targets 0xd82d01c, is taken when t1(=[[[0x1014]+276]+216]) == 0, and falls through when t1(=[[[0x1014]+276]+216]) != 0.
  The `bne` branch at 0xd82cefc targets 0xd82cfb8, is taken when t2(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t2(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beq` branch at 0xd82cf18 targets 0xd82cf44, is taken when t3(=[[[0x1014]+276]+12]) >= t6(?) (unsigned), and falls through when t3(=[[[0x1014]+276]+12]) < t6(?) (unsigned).
  The `beq` branch at 0xd82cf94 targets 0xd82d01c, is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The `beq` branch at 0xd82cfb0 targets 0xd82d01c and is always taken.
  The return at 0xd82d028 has v0 = ?.
- `__glx_PixelMapfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82d030 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82d030-0xd82d1d8 (424 bytes).
  It occupies 424 bytes.
  The `lw` at 0xd82d040 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82d05c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82d064 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82d068 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd82d07c stores 4 bytes to [[0x1014]+276] +0xb0.
  The `lw` at 0xd82d080 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82d094 loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82d0ac loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82d0f0, `sh` at 0xd82d0f4.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82d104, `sw` at 0xd82d10c.
  The `lw` at 0xd82d12c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82d140 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82d188 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82d18c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82d19c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x8.
  The `sw` at 0xd82d1a8 stores 4 bytes to ret(__glXFlushRenderBuffer) +0xc.
  The `jalr` at 0xd82d0d4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd82d11c calls memcpy with a0=?, a1=a2 at entry (arg2), a2=(a1 << 0x2), a3=?.
  The `jalr` at 0xd82d150 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82d16c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd82d1b8 calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=ret(__glXFlushRenderBuffer), a2=0x10, a3=a2 at entry (arg2).
  The `bgez` branch at 0xd82d060 targets 0xd82d080, is taken when a1 >= 0 (signed), and falls through when a1 < 0 (signed).
  The `bnel` branch at 0xd82d06c targets 0xd82d1c8, is taken when t8(=[[[0x1014]+276]+176]) != 0, and falls through when t8(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd82d070 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82d078 targets 0xd82d1c4 and is always taken.
  The `beq` branch at 0xd82d08c targets 0xd82d1c4, is taken when t1(=[[[0x1014]+276]+216]) == 0, and falls through when t1(=[[[0x1014]+276]+216]) != 0.
  The `bne` branch at 0xd82d0a4 targets 0xd82d160, is taken when t2(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t2(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beq` branch at 0xd82d0c0 targets 0xd82d0ec, is taken when t3(=[[[0x1014]+276]+12]) >= t6(?) (unsigned), and falls through when t3(=[[[0x1014]+276]+12]) < t6(?) (unsigned).
  The `beq` branch at 0xd82d13c targets 0xd82d1c4, is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The `beq` branch at 0xd82d158 targets 0xd82d1c4 and is always taken.
  The return at 0xd82d1d0 has v0 = ?.
- `__glx_Map2f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82d1d8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82d1d8-0xd82d56c (916 bytes).
  It occupies 916 bytes.
  The `lw` at 0xd82d1e8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82d210 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82d218 loads 4 bytes from [[0x1014]+276] +0x4.
  3 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd82d228, `lw` at 0xd82d26c, `lw` at 0xd82d4b4.
  3 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xb0, including `sw` at 0xd82d23c, `sw` at 0xd82d280, `sw` at 0xd82d4c8.
  The `lw` at 0xd82d268 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82d298 loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82d2cc loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82d318, `sh` at 0xd82d340.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82d348, `sw` at 0xd82d360, `sw` at 0xd82d370.
  4 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xd82d350, `swc1` at 0xd82d358, `swc1` at 0xd82d368.
  The `lw` at 0xd82d3a8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82d3bc stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82d438 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82d43c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82d444 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x8.
  The `swc1` at 0xd82d44c stores 4 bytes to ret(__glXFlushRenderBuffer) +0xc.
  The `sw` at 0xd82d454 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x14.
  The `swc1` at 0xd82d458 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x10.
  The `swc1` at 0xd82d460 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x18.
  The `sw` at 0xd82d468 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x20.
  The `swc1` at 0xd82d46c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x1c.
  The `jalr` at 0xd82d214 calls __glXEvalComputeK with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82d2f0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82d39c calls __glXFillMap2f with a0=ret(__glXEvalComputeK), a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd82d3cc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82d3e8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82d49c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82d4f0 calls __glXFillMap2f with a0=ret(__glXEvalComputeK), a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd82d514 calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=ret(__glXFlushRenderBuffer), a2=0x24, a3=ret(malloc).
  The `jalr` at 0xd82d528 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82d54c calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=ret(__glXFlushRenderBuffer), a2=0x24, a3=?.
  The `bne` branch at 0xd82d220 targets 0xd82d240, is taken when v0(=ret(__glXEvalComputeK)) != 0, and falls through when v0(=ret(__glXEvalComputeK)) == 0.
  The `bnel` branch at 0xd82d230 targets 0xd82d55c, is taken when t7(=[[[0x1014]+276]+176]) != 0, and falls through when t7(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82d234 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82d238 targets 0xd82d558 and is always taken.
  The `bne` branch at 0xd82d24c targets 0xd82d26c, is taken when t9(?) < v0(=ret(__glXEvalComputeK)) (signed), and falls through when t9(?) >= v0(=ret(__glXEvalComputeK)) (signed).
  The `bne` branch at 0xd82d254 targets 0xd82d26c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `blez` branch at 0xd82d25c targets 0xd82d26c, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bgtzl` branch at 0xd82d264 targets 0xd82d288, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed); its branch-likely delay slot `lw t4,216(s1)` at 0xd82d268 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd82d274 targets 0xd82d55c, is taken when t2(=[[[0x1014]+276]+176]) != 0, and falls through when t2(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82d278 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82d27c targets 0xd82d558 and is always taken.
  The `beql` branch at 0xd82d28c targets 0xd82d55c, is taken when t4(=[[[0x1014]+276]+216]) == 0, and falls through when t4(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82d290 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82d2c4 targets 0xd82d3dc, is taken when t7(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t7(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beql` branch at 0xd82d2dc targets 0xd82d308, is taken when t8(=[[[0x1014]+276]+12]) >= t1(?) (unsigned), and falls through when t8(=[[[0x1014]+276]+12]) < t1(?) (unsigned); its branch-likely delay slot `lw t2,68(sp)` at 0xd82d2e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82d3b8 targets 0xd82d558, is taken when t1(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd82d3d4 targets 0xd82d558 and is always taken.
  The `bne` branch at 0xd82d474 targets 0xd82d494, is taken when t8(?) != v1(=ret(__glXEvalComputeK)), and falls through when t8(?) == v1(=ret(__glXEvalComputeK)).
  The `beql` branch at 0xd82d48c targets 0xd82d53c, is taken when t1(=a3) == t2(?), and falls through when t1(=a3) != t2(?); its branch-likely delay slot `sw t9,16(sp)` at 0xd82d490 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82d4ac targets 0xd82d4cc, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd82d4bc targets 0xd82d55c, is taken when t3(=[[[0x1014]+276]+176]) != 0, and falls through when t3(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82d4c0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82d4c4 targets 0xd82d558 and is always taken.
  The `beq` branch at 0xd82d530 targets 0xd82d558 and is always taken.
  The return at 0xd82d564 has v0 = one of ret(__glXEvalComputeK), ret(malloc), ?.
  The instructions from 0xd82d284 to 0xd82d284 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82d538 to 0xd82d538 are not reached by any path from the entry, and their branches are not listed.
- `__glx_Map2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82d56c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82d56c-0xd82d9a8 (1084 bytes).
  It occupies 1084 bytes.
  The `lw` at 0xd82d57c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82d5a0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82d5a8 loads 4 bytes from [[0x1014]+276] +0x4.
  3 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd82d5b8, `lw` at 0xd82d5fc, `lw` at 0xd82d8f4.
  3 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xb0, including `sw` at 0xd82d5cc, `sw` at 0xd82d610, `sw` at 0xd82d908.
  The `lw` at 0xd82d5f8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82d624 loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82d658 loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82d6a4, `sh` at 0xd82d6d4.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82d74c, `sw` at 0xd82d750, `sw` at 0xd82d754.
  The `lw` at 0xd82d784 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82d798 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82d7e8 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82d820 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82d890 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x28.
  The `sw` at 0xd82d898 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x2c.
  The `sw` at 0xd82d8a0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x30.
  The `jalr` at 0xd82d5a4 calls __glXEvalComputeK with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82d67c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82d6e0 calls memcpy with a0=?, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd82d6fc calls memcpy with a0=?, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd82d718 calls memcpy with a0=?, a1=sp+32, a2=0x8, a3=?.
  The `jalr` at 0xd82d734 calls memcpy with a0=?, a1=sp+40, a2=0x8, a3=?.
  The `jalr` at 0xd82d778 calls __glXFillMap2d with a0=ret(__glXEvalComputeK), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82d7a8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82d7c4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82d82c calls memcpy with a0=ret(__glXFlushRenderBuffer)+8, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd82d848 calls memcpy with a0=ret(__glXFlushRenderBuffer)+16, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd82d864 calls memcpy with a0=ret(__glXFlushRenderBuffer)+24, a1=sp+32, a2=0x8, a3=?.
  The `jalr` at 0xd82d880 calls memcpy with a0=ret(__glXFlushRenderBuffer)+32, a1=sp+40, a2=0x8, a3=?.
  The `jalr` at 0xd82d8e0 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82d934 calls __glXFillMap2d with a0=ret(__glXEvalComputeK), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82d958 calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=ret(__glXFlushRenderBuffer), a2=0x34, a3=ret(malloc).
  The `jalr` at 0xd82d96c calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82d988 calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=ret(__glXFlushRenderBuffer), a2=0x34, a3=?.
  The `bne` branch at 0xd82d5b0 targets 0xd82d5d0, is taken when v0(=ret(__glXEvalComputeK)) != 0, and falls through when v0(=ret(__glXEvalComputeK)) == 0.
  The `bnel` branch at 0xd82d5c0 targets 0xd82d998, is taken when t7(=[[[0x1014]+276]+176]) != 0, and falls through when t7(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82d5c4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82d5c8 targets 0xd82d994 and is always taken.
  The `bne` branch at 0xd82d5dc targets 0xd82d5fc, is taken when t9(?) < v0(=ret(__glXEvalComputeK)) (signed), and falls through when t9(?) >= v0(=ret(__glXEvalComputeK)) (signed).
  The `bne` branch at 0xd82d5e4 targets 0xd82d5fc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `blez` branch at 0xd82d5ec targets 0xd82d5fc, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `bgtzl` branch at 0xd82d5f4 targets 0xd82d618, is taken when t0(?) > 0 (signed), and falls through when t0(?) <= 0 (signed); its branch-likely delay slot `lw t4,216(s1)` at 0xd82d5f8 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd82d604 targets 0xd82d998, is taken when t2(=[[[0x1014]+276]+176]) != 0, and falls through when t2(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82d608 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82d60c targets 0xd82d994 and is always taken.
  The `beql` branch at 0xd82d618 targets 0xd82d998, is taken when t4(=[[[0x1014]+276]+216]) == 0, and falls through when t4(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82d61c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82d650 targets 0xd82d7b8, is taken when t6(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t6(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beql` branch at 0xd82d668 targets 0xd82d698, is taken when t7(=[[[0x1014]+276]+12]) >= t1(?) (unsigned), and falls through when t7(=[[[0x1014]+276]+12]) < t1(?) (unsigned); its branch-likely delay slot `lw t2,68(sp)` at 0xd82d66c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82d794 targets 0xd82d994, is taken when t1(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd82d7b0 targets 0xd82d994 and is always taken.
  The `bne` branch at 0xd82d8b0 targets 0xd82d8d8, is taken when t4(?) != t5(=ret(__glXEvalComputeK)), and falls through when t4(?) == t5(=ret(__glXEvalComputeK)).
  The `beq` branch at 0xd82d8d0 targets 0xd82d97c, is taken when t6(?) == t9(?), and falls through when t6(?) != t9(?).
  The `bne` branch at 0xd82d8ec targets 0xd82d90c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd82d8fc targets 0xd82d998, is taken when t7(=[[[0x1014]+276]+176]) != 0, and falls through when t7(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82d900 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82d904 targets 0xd82d994 and is always taken.
  The `beq` branch at 0xd82d974 targets 0xd82d994 and is always taken.
  The return at 0xd82d9a0 has v0 = one of ret(__glXEvalComputeK), ret(malloc), ?.
  The instructions from 0xd82d614 to 0xd82d614 are not reached by any path from the entry, and their branches are not listed.
- `__glx_Map1f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82d9a8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82d9a8-0xd82dc9c (756 bytes).
  It occupies 756 bytes.
  The `lw` at 0xd82d9b8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82d9e0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82d9e8 loads 4 bytes from [[0x1014]+276] +0x4.
  4 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd82d9f8, `lw` at 0xd82da20, `lw` at 0xd82da2c.
  3 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xb0, including `sw` at 0xd82da0c, `sw` at 0xd82da40, `sw` at 0xd82dc0c.
  The `lw` at 0xd82da28 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82da58 loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82da7c loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82dac4, `sh` at 0xd82dadc.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82dae4, `sw` at 0xd82dafc.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xd82daec, `swc1` at 0xd82daf4.
  The `lw` at 0xd82db24 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82db38 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82dba8 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82dbac stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82dbb4 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x8.
  The `swc1` at 0xd82dbbc stores 4 bytes to ret(__glXFlushRenderBuffer) +0xc.
  The `sw` at 0xd82dbc4 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x14.
  The `swc1` at 0xd82dbc8 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x10.
  The `jalr` at 0xd82d9e4 calls __glXEvalComputeK with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82daa0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82db18 calls __glXFillMap1f with a0=ret(__glXEvalComputeK), a1=?, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xd82db48 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82db64 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82dbe4 calls malloc with a0=?, a1=ret(__glXEvalComputeK), a2=0x18, a3=?.
  The `jalr` at 0xd82dc28 calls __glXFillMap1f with a0=ret(__glXEvalComputeK), a1=?, a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xd82dc4c calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=ret(__glXFlushRenderBuffer), a2=0x18, a3=ret(malloc).
  The `jalr` at 0xd82dc60 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82dc7c calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=ret(__glXFlushRenderBuffer), a2=0x18, a3=?.
  The `bne` branch at 0xd82d9f0 targets 0xd82da10, is taken when v0(=ret(__glXEvalComputeK)) != 0, and falls through when v0(=ret(__glXEvalComputeK)) == 0.
  The `bnel` branch at 0xd82da00 targets 0xd82dc8c, is taken when t7(=[[[0x1014]+276]+176]) != 0, and falls through when t7(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd82da04 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82da08 targets 0xd82dc88 and is always taken.
  The `bnel` branch at 0xd82da1c targets 0xd82da30, is taken when t9(=a3) < v0(=ret(__glXEvalComputeK)) (signed), and falls through when t9(=a3) >= v0(=ret(__glXEvalComputeK)) (signed); its branch-likely delay slot `lw t1,176(s1)` at 0xd82da20 runs only when taken and is annulled on fall-through.
  The `bgtzl` branch at 0xd82da24 targets 0xd82da48, is taken when t0(?) > 0 (signed), and falls through when t0(?) <= 0 (signed); its branch-likely delay slot `lw t3,216(s1)` at 0xd82da28 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd82da34 targets 0xd82dc8c, is taken when t1(=[[[0x1014]+276]+176]) != 0, and falls through when t1(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd82da38 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82da3c targets 0xd82dc88 and is always taken.
  The `beql` branch at 0xd82da4c targets 0xd82dc8c, is taken when t3(=[[[0x1014]+276]+216]) == 0, and falls through when t3(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd82da50 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82da74 targets 0xd82db58, is taken when t5(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t5(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beql` branch at 0xd82da8c targets 0xd82dab4, is taken when t6(=[[[0x1014]+276]+12]) >= t9(?) (unsigned), and falls through when t6(=[[[0x1014]+276]+12]) < t9(?) (unsigned); its branch-likely delay slot `lw t0,60(sp)` at 0xd82da90 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82db34 targets 0xd82dc88, is taken when t7(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t7(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd82db50 targets 0xd82dc88 and is always taken.
  The `beq` branch at 0xd82dbd4 targets 0xd82dc70, is taken when t4(=a3) == a1(=ret(__glXEvalComputeK)), and falls through when t4(=a3) != a1(=ret(__glXEvalComputeK)).
  The `bne` branch at 0xd82dbf0 targets 0xd82dc10, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd82dc00 targets 0xd82dc8c, is taken when t5(=[[[0x1014]+276]+176]) != 0, and falls through when t5(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd82dc04 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82dc08 targets 0xd82dc88 and is always taken.
  The `beq` branch at 0xd82dc68 targets 0xd82dc88 and is always taken.
  The return at 0xd82dc94 has v0 = one of ret(__glXEvalComputeK), ret(malloc), ?.
  The instructions from 0xd82da44 to 0xd82da44 are not reached by any path from the entry, and their branches are not listed.
- `__glx_Map1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82dc9c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82dc9c-0xd82dfdc (832 bytes).
  It occupies 832 bytes.
  The `lw` at 0xd82dcac loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82dcd0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82dcd8 loads 4 bytes from [[0x1014]+276] +0x4.
  4 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd82dce8, `lw` at 0xd82dd10, `lw` at 0xd82dd1c.
  3 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xb0, including `sw` at 0xd82dcfc, `sw` at 0xd82dd30, `sw` at 0xd82df4c.
  The `lw` at 0xd82dd18 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82dd44 loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82dd68 loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82ddb0, `sh` at 0xd82ddd0.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82de10, `sw` at 0xd82de14.
  The `lw` at 0xd82de34 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82de48 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82de94 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82debc stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82def8 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x18.
  The `sw` at 0xd82df08 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x1c.
  The `jalr` at 0xd82dcd4 calls __glXEvalComputeK with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82dd8c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82dddc calls memcpy with a0=?, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd82ddf8 calls memcpy with a0=?, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd82de28 calls __glXFillMap1d with a0=ret(__glXEvalComputeK), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82de58 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82de74 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82dec8 calls memcpy with a0=ret(__glXFlushRenderBuffer)+8, a1=sp+8, a2=0x8, a3=?.
  The `jalr` at 0xd82dee4 calls memcpy with a0=ret(__glXFlushRenderBuffer)+16, a1=sp+16, a2=0x8, a3=?.
  The `jalr` at 0xd82df24 calls malloc with a0=?, a1=ret(__glXFlushRenderBuffer), a2=0x20, a3=?.
  The `jalr` at 0xd82df68 calls __glXFillMap1d with a0=ret(__glXEvalComputeK), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82df8c calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=ret(__glXFlushRenderBuffer), a2=0x20, a3=ret(malloc).
  The `jalr` at 0xd82dfa0 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82dfbc calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=ret(__glXFlushRenderBuffer), a2=0x20, a3=?.
  The `bne` branch at 0xd82dce0 targets 0xd82dd00, is taken when v0(=ret(__glXEvalComputeK)) != 0, and falls through when v0(=ret(__glXEvalComputeK)) == 0.
  The `bnel` branch at 0xd82dcf0 targets 0xd82dfcc, is taken when t7(=[[[0x1014]+276]+176]) != 0, and falls through when t7(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd82dcf4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82dcf8 targets 0xd82dfc8 and is always taken.
  The `bnel` branch at 0xd82dd0c targets 0xd82dd20, is taken when t9(?) < v0(=ret(__glXEvalComputeK)) (signed), and falls through when t9(?) >= v0(=ret(__glXEvalComputeK)) (signed); its branch-likely delay slot `lw t0,176(s1)` at 0xd82dd10 runs only when taken and is annulled on fall-through.
  The `bgtzl` branch at 0xd82dd14 targets 0xd82dd38, is taken when a3(?) > 0 (signed), and falls through when a3(?) <= 0 (signed); its branch-likely delay slot `lw t2,216(s1)` at 0xd82dd18 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd82dd24 targets 0xd82dfcc, is taken when t0(=[[[0x1014]+276]+176]) != 0, and falls through when t0(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd82dd28 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82dd2c targets 0xd82dfc8 and is always taken.
  The `beql` branch at 0xd82dd38 targets 0xd82dfcc, is taken when t2(=[[[0x1014]+276]+216]) == 0, and falls through when t2(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd82dd3c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82dd60 targets 0xd82de68, is taken when t3(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t3(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beql` branch at 0xd82dd78 targets 0xd82dda4, is taken when t4(=[[[0x1014]+276]+12]) >= t7(?) (unsigned), and falls through when t4(=[[[0x1014]+276]+12]) < t7(?) (unsigned); its branch-likely delay slot `lw t8,60(sp)` at 0xd82dd7c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82de44 targets 0xd82dfc8, is taken when t3(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd82de60 targets 0xd82dfc8 and is always taken.
  The `beq` branch at 0xd82df14 targets 0xd82dfb0, is taken when t2(?) == t3(=ret(__glXEvalComputeK)), and falls through when t2(?) != t3(=ret(__glXEvalComputeK)).
  The `bne` branch at 0xd82df30 targets 0xd82df50, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd82df40 targets 0xd82dfcc, is taken when t5(=[[[0x1014]+276]+176]) != 0, and falls through when t5(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd82df44 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82df48 targets 0xd82dfc8 and is always taken.
  The `beq` branch at 0xd82dfa8 targets 0xd82dfc8 and is always taken.
  The return at 0xd82dfd4 has v0 = one of ret(__glXEvalComputeK), ret(malloc), ?.
  The instructions from 0xd82dd34 to 0xd82dd34 are not reached by any path from the entry, and their branches are not listed.
- `__glx_CallLists` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82dfdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82dfdc-0xd82e178 (412 bytes).
  It occupies 412 bytes.
  The `lw` at 0xd82e00c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82e020 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82e02c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82e030 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82e03c loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82e050 loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82e090, `sh` at 0xd82e094.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82e0a4, `sw` at 0xd82e0ac.
  The `lw` at 0xd82e0cc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82e0e0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82e128 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82e12c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82e13c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x8.
  The `sw` at 0xd82e148 stores 4 bytes to ret(__glXFlushRenderBuffer) +0xc.
  The `jalr` at 0xd82e004 calls __glXCallLists_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82e074 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd82e0bc calls memcpy with a0=?, a1=a2 at entry (arg2), a2=ret(__glXCallLists_size), a3=?.
  The `jalr` at 0xd82e0f0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82e10c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd82e158 calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=ret(__glXFlushRenderBuffer), a2=0x10, a3=a2 at entry (arg2).
  The `beql` branch at 0xd82e034 targets 0xd82e168, is taken when t7(=[[[0x1014]+276]+216]) == 0, and falls through when t7(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd82e038 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82e048 targets 0xd82e100, is taken when t8(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t8(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beql` branch at 0xd82e060 targets 0xd82e08c, is taken when t9(=[[[0x1014]+276]+12]) >= t3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+12]) < t3(?) (unsigned); its branch-likely delay slot `lw t4,40(sp)` at 0xd82e064 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82e0dc targets 0xd82e164, is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The `beq` branch at 0xd82e0f8 targets 0xd82e164 and is always taken.
  The return at 0xd82e170 has v0 = one of ret(__glXCallLists_size), ?.
- `__glx_PixelMapusv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82e178 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82e178-0xd82e320 (424 bytes).
  It occupies 424 bytes.
  The `lw` at 0xd82e188 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82e1a4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82e1ac loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82e1b0 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd82e1c4 stores 4 bytes to [[0x1014]+276] +0xb0.
  The `lw` at 0xd82e1c8 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82e1dc loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82e1f4 loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82e238, `sh` at 0xd82e23c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82e24c, `sw` at 0xd82e254.
  The `lw` at 0xd82e274 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82e288 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82e2d0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82e2d4 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82e2e4 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x8.
  The `sw` at 0xd82e2f0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0xc.
  The `jalr` at 0xd82e21c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd82e264 calls memcpy with a0=?, a1=a2 at entry (arg2), a2=(a1 << 0x1), a3=?.
  The `jalr` at 0xd82e298 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82e2b4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd82e300 calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=ret(__glXFlushRenderBuffer), a2=0x10, a3=a2 at entry (arg2).
  The `bgez` branch at 0xd82e1a8 targets 0xd82e1c8, is taken when a1 >= 0 (signed), and falls through when a1 < 0 (signed).
  The `bnel` branch at 0xd82e1b4 targets 0xd82e310, is taken when t8(=[[[0x1014]+276]+176]) != 0, and falls through when t8(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd82e1b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82e1c0 targets 0xd82e30c and is always taken.
  The `beq` branch at 0xd82e1d4 targets 0xd82e30c, is taken when t1(=[[[0x1014]+276]+216]) == 0, and falls through when t1(=[[[0x1014]+276]+216]) != 0.
  The `bne` branch at 0xd82e1ec targets 0xd82e2a8, is taken when t2(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t2(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beq` branch at 0xd82e208 targets 0xd82e234, is taken when t3(=[[[0x1014]+276]+12]) >= t6(?) (unsigned), and falls through when t3(=[[[0x1014]+276]+12]) < t6(?) (unsigned).
  The `beq` branch at 0xd82e284 targets 0xd82e30c, is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The `beq` branch at 0xd82e2a0 targets 0xd82e30c and is always taken.
  The return at 0xd82e318 has v0 = ?.
- `__glx_TexImage1D` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82e320 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82e320-0xd82e5c4 (676 bytes).
  It occupies 676 bytes.
  The `lw` at 0xd82e38c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82e394 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82e39c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82e3a0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82e3ac loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82e3c4 loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82e40c, `sh` at 0xd82e410.
  12 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82e420, `sw` at 0xd82e430, `sw` at 0xd82e438.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0xd82e464, `sb` at 0xd82e46c, `sb` at 0xd82e4a8.
  The `lw` at 0xd82e484 loads 4 bytes from [[0x1014]+276] +0xa8.
  The `lw` at 0xd82e4c8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82e4e4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82e534 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82e538 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82e548 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x1c.
  The `sw` at 0xd82e554 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x20.
  The `sw` at 0xd82e560 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x24.
  The `sw` at 0xd82e568 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x2c.
  The `sw` at 0xd82e56c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x28.
  The `sw` at 0xd82e574 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x34.
  The `sw` at 0xd82e578 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x38.
  The `sw` at 0xd82e57c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x30.
  The `jalr` at 0xd82e37c calls __glXImageSize with a0=a3 at entry (arg3), a1=0x1, a2=0x1, a3=0x1.
  The `jalr` at 0xd82e3e8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82e490 calls (unknown callee) with a0=[[0x1014]+276], a1=a3 at entry (arg3), a2=0x1, a3=?.
  The `jalr` at 0xd82e4f0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82e50c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82e5a4 calls SendLargeImage [0xd82ea48] with a0=[[0x1014]+276], a1=?, a2=a3 at entry (arg3), a3=0x1.
  The `bne` branch at 0xd82e34c targets 0xd82e35c, is taken when a0 != at(=0x8063), and falls through when a0 == at(=0x8063).
  The `beq` branch at 0xd82e354 targets 0xd82e38c and is always taken.
  The `beql` branch at 0xd82e3a4 targets 0xd82e5b4, is taken when t4(=[[[0x1014]+276]+216]) == 0, and falls through when t4(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82e3a8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82e3bc targets 0xd82e500, is taken when t5(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t5(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beql` branch at 0xd82e3d4 targets 0xd82e404, is taken when t6(=[[[0x1014]+276]+12]) >= t9(?) (unsigned), and falls through when t6(=[[[0x1014]+276]+12]) < t9(?) (unsigned); its branch-likely delay slot `lw a3,108(sp)` at 0xd82e3d8 runs only when taken and is annulled on fall-through.
  The `blezl` branch at 0xd82e460 targets 0xd82e4a8, is taken when t4(?) <= 0 (signed), and falls through when t4(?) > 0 (signed); its branch-likely delay slot `sb zero,0(v0)` at 0xd82e464 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82e468 targets 0xd82e4a8, is taken when t0(?) == 0, and falls through when t0(?) != 0; its branch-likely delay slot `sb zero,0(v0)` at 0xd82e46c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82e49c targets 0xd82e4c4 and is always taken.
  The `beq` branch at 0xd82e4e0 targets 0xd82e5b0, is taken when t6(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t6(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd82e4f8 targets 0xd82e5b0 and is always taken.
  The return at 0xd82e5bc has v0 = ?.
  The instructions from 0xd82e4a4 to 0xd82e4a4 are not reached by any path from the entry, and their branches are not listed.
- `__glx_Bitmap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82e5c4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82e5c4-0xd82e808 (580 bytes).
  It occupies 580 bytes.
  The `lw` at 0xd82e61c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82e628 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82e634 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82e644 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82e648 loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd82e65c loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd82e698, `sh` at 0xd82e69c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82e6a0, `sw` at 0xd82e6a4.
  4 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xd82e6b4, `swc1` at 0xd82e6c4, `swc1` at 0xd82e6d4.
  The `lw` at 0xd82e6fc loads 4 bytes from [[0x1014]+276] +0xa8.
  The `lw` at 0xd82e70c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82e72c stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd82e770 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd82e774 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd82e778 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x1c.
  The `sw` at 0xd82e77c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x20.
  The `swc1` at 0xd82e78c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x24.
  The `swc1` at 0xd82e79c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x28.
  The `swc1` at 0xd82e7ac stores 4 bytes to ret(__glXFlushRenderBuffer) +0x2c.
  The `swc1` at 0xd82e7b8 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x30.
  The `jalr` at 0xd82e614 calls __glXImageSize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x1.
  The `jalr` at 0xd82e680 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82e700 calls (unknown callee) with a0=[[0x1014]+276], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=0x1900.
  The `jalr` at 0xd82e73c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82e758 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd82e7e0 calls SendLargeImage [0xd82ea48] with a0=[[0x1014]+276], a1=ret(__glXImageSize), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `beq` branch at 0xd82e640 targets 0xd82e7ec, is taken when t9(=[[[0x1014]+276]+216]) == 0, and falls through when t9(=[[[0x1014]+276]+216]) != 0.
  The `bne` branch at 0xd82e654 targets 0xd82e74c, is taken when t1(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t1(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beql` branch at 0xd82e66c targets 0xd82e698, is taken when t2(=[[[0x1014]+276]+12]) >= t5(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+12]) < t5(?) (unsigned); its branch-likely delay slot `addiu t6,zero,5` at 0xd82e670 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82e728 targets 0xd82e7ec, is taken when t2(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd82e744 targets 0xd82e7ec and is always taken.
  The return at 0xd82e800 has v0 = one of ret(__glXImageSize), ret(?), ret(__glXFlushRenderBuffer), ret(SendLargeImage).
- `__glx_PolygonStipple` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82e808 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82e808-0xd82e918 (272 bytes).
  It occupies 272 bytes.
  The `lw` at 0xd82e850 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82e85c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82e868 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82e878 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd82e87c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd82e880 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd82e8b0 loads 4 bytes from [[0x1014]+276] +0xa8.
  The `lw` at 0xd82e8d4 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82e8ec stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd82e848 calls __glXImageSize with a0=0x20, a1=0x20, a2=0x1, a3=0x1.
  The `jalr` at 0xd82e8bc calls (unknown callee) with a0=[[0x1014]+276], a1=0x20, a2=0x20, a3=0x1900.
  The `jalr` at 0xd82e8f8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd82e874 targets 0xd82e904, is taken when t9(=[[[0x1014]+276]+216]) == 0, and falls through when t9(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd82e8e8 targets 0xd82e904, is taken when t6(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t6(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The return at 0xd82e910 has v0 = one of ret(__glXImageSize), ret(?), ret(__glXFlushRenderBuffer).
- `SendLargeImage3D4D` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82e918 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82e918-0xd82ea48 (304 bytes).
  It occupies 304 bytes.
  The `lbu` at 0xd82e940 loads 1 byte from a0 (arg0 at entry) +0xa4.
  The `lw` at 0xd82e970 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `sw` at 0xd82e984 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0xd82e9b8 loads 4 bytes from a0 (arg0 at entry) +0xac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xd82e9d4, `lw` at 0xd82ea18.
  The `jalr` at 0xd82e95c calls malloc with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd82e9c8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xd82e9f0 calls __glXSendLargeCommand with a0=a0 at entry (arg0), a1=[a0+4], a2=?, a3=ret(malloc).
  The `jalr` at 0xd82ea04 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82ea28 calls __glXSendLargeCommand with a0=a0 at entry (arg0), a1=[a0+4], a2=?, a3=?.
  The `bne` branch at 0xd82e94c targets 0xd82ea14, is taken when t6(=[a0+164]:1) != 0, and falls through when t6(=[a0+164]:1) == 0.
  The `bne` branch at 0xd82e968 targets 0xd82e988, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd82e978 targets 0xd82ea38, is taken when t7(=[a0+176]) != 0, and falls through when t7(=[a0+176]) == 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82e97c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82e980 targets 0xd82ea34 and is always taken.
  The `beq` branch at 0xd82ea0c targets 0xd82ea34 and is always taken.
  The return at 0xd82ea40 has v0 = one of ret(malloc), ?.
- `SendLargeImage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82ea48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82ea48-0xd82f2e4 (2204 bytes).
  It occupies 2204 bytes.
  The `lbu` at 0xd82ea70 loads 1 byte from a0 (arg0 at entry) +0xa4.
  The `lw` at 0xd82eaa0 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `sw` at 0xd82eab4 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `lw` at 0xd82eaec loads 4 bytes from a0 (arg0 at entry) +0xa8.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xd82eb08, `sb` at 0xd82eb0c, `sb` at 0xd82eb10.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82eb18, `sw` at 0xd82eb1c, `sw` at 0xd82eb20.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xd82eb2c, `lw` at 0xd82eb6c.
  The `jalr` at 0xd82ea8c calls malloc with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd82eaf8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=?.
  The `jalr` at 0xd82eb44 calls __glXSendLargeCommand with a0=a0 at entry (arg0), a1=[a0+4], a2=?, a3=ret(malloc).
  The `jalr` at 0xd82eb58 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82eb7c calls __glXSendLargeCommand with a0=a0 at entry (arg0), a1=[a0+4], a2=?, a3=?.
  The `bne` branch at 0xd82ea7c targets 0xd82eb68, is taken when t6(=[a0+164]:1) != 0, and falls through when t6(=[a0+164]:1) == 0.
  The `bne` branch at 0xd82ea98 targets 0xd82eab8, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd82eaa8 targets 0xd82eb8c, is taken when t7(=[a0+176]) != 0, and falls through when t7(=[a0+176]) == 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd82eaac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82eab0 targets 0xd82eb88 and is always taken.
  The `bne` branch at 0xd82eac4 targets 0xd82eb08, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0xd82eb00 targets 0xd82eb28 and is always taken.
  The `beq` branch at 0xd82eb60 targets 0xd82eb88 and is always taken.
  The return at 0xd82eb94 has v0 = one of ret(malloc), ?.
  The instructions from 0xd82eb9c to 0xd82f2e0 are not reached by any path from the entry, and their branches are not listed.
- `__glx_Disable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82eb9c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82eb9c-0xd82ec90 (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0xd82eba8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82ebb8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82ebc4 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82ebd4 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82ebec loads 4 bytes from (a0-32884 << 0x2) +0xd842058.
  The `sh` at 0xd82ec48 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd82ec4c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd82ec50 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd82ec54 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82ec5c stores 4 bytes to [[0x1014]+276] +0x4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jr` at 0xd82ebf4).
  The `jalr` at 0xd82ec74 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beq` branch at 0xd82ebd0 targets 0xd82ec80, is taken when t7(=[[[0x1014]+276]+216]) == 0, and falls through when t7(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd82ebd8 targets 0xd82ec44, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beql` branch at 0xd82ec64 targets 0xd82ec84, is taken when t7(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t7(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82ec68 runs only when taken and is annulled on fall-through.
  The return at 0xd82ec88 has v0 = ?.
  The instructions from 0xd82ebfc to 0xd82ec40 are not reached by any path from the entry, and their branches are not listed.
- `__glx_Enable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82ec98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82ec98-0xd82eda4 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0xd82eca4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82ecb4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82ecc0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82ecd0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd82ece8 loads 4 bytes from (a0-32884 << 0x2) +0xd842040.
  The `sh` at 0xd82ed5c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd82ed60 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd82ed64 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd82ed68 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd82ed70 stores 4 bytes to [[0x1014]+276] +0x4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jr` at 0xd82ecf0).
  The `jalr` at 0xd82ed88 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beq` branch at 0xd82eccc targets 0xd82ed94, is taken when t7(=[[[0x1014]+276]+216]) == 0, and falls through when t7(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd82ecd4 targets 0xd82ed58, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beql` branch at 0xd82ed78 targets 0xd82ed98, is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd82ed7c runs only when taken and is annulled on fall-through.
  The return at 0xd82ed9c has v0 = ?.
  The instructions from 0xd82ecf8 to 0xd82ed54 are not reached by any path from the entry, and their branches are not listed.
- `__glx_GetBooleanv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82eda4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82eda4-0xd82f2e4 (1344 bytes).
  It occupies 1344 bytes.
  The `lw` at 0xd82edb4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82edc8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82edd4 loads 4 bytes from [[0x1014]+276] +0xd8.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb4, including `lw` at 0xd82edfc, `lw` at 0xd82ee1c.
  The `lw` at 0xd82ee4c loads 4 bytes from (a0-32875 << 0x2) +0xd842070.
  The `lw` at 0xd82ee6c loads 4 bytes from [[0x1014]+276] +0xb8.
  The `lw` at 0xd82ee9c loads 4 bytes from (a0-3312 << 0x2) +0xd8420fc.
  The `lw` at 0xd82eeb4 loads 4 bytes from [[0x1014]+276] +0xc0.
  The `lw` at 0xd82f124 loads 4 bytes from [[[0x1014]+276]+180] +0xb0.
  5 such `sb` accesses store 1 byte to a1 (arg1 at entry) +0x0, including `sb` at 0xd82f12c, `sb` at 0xd82f13c, `sb` at 0xd82f154.
  The `lw` at 0xd82f134 loads 4 bytes from [[[0x1014]+276]+180] +0xb4.
  The `lw` at 0xd82f144 loads 4 bytes from [[0x1014]+276] +0xbc.
  The `lw` at 0xd82f168 loads 4 bytes from [[0x1014]+276] +0x4.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd82f188, `lw` at 0xd82f190, `lw` at 0xd82f194.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82f1bc, `sw` at 0xd82f1d8, `sw` at 0xd82f1fc.
  The `sh` at 0xd82f1e0 stores 2 bytes to ?.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0xd82f1e4, `sb` at 0xd82f208, `sb` at 0xd82f210.
  The `lw` at 0xd82f204 loads 4 bytes from [[0x1014]+276] +0x110.
  The `lw` at 0xd82f214 loads 4 bytes from [[0x1014]+276] +0x3c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jr` at 0xd82ee54).
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jr` at 0xd82eea4).
  The `jalr` at 0xd82f178 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xd82f198 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f1c4 calls _XFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f230 calls _XReply with a0=?, a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd82f264 calls _XRead with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd82f288 calls _XEatData with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f2a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f2c4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beql` branch at 0xd82eddc targets 0xd82f2d4, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd82ede0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82ede4 targets 0xd82ee5c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bnel` branch at 0xd82edf0 targets 0xd82ee0c, is taken when a0 < v1(=0x80e9) (unsigned), and falls through when a0 >= v1(=0x80e9) (unsigned); its branch-likely delay slot `ori at,zero,0x808e` at 0xd82edf4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82edf8 targets 0xd82f134, is taken when a0 == v1(=0x80e9), and falls through when a0 != v1(=0x80e9); its branch-likely delay slot `lw t9,180(s0)` at 0xd82edfc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82ee00 targets 0xd82f164 and is always taken.
  The `bne` branch at 0xd82ee10 targets 0xd82ee28, is taken when a2(=a0) < at(=0x808e) (unsigned), and falls through when a2(=a0) >= at(=0x808e) (unsigned).
  The `beql` branch at 0xd82ee18 targets 0xd82f124, is taken when a2(=a0) == at(=0x80e8), and falls through when a2(=a0) != at(=0x80e8); its branch-likely delay slot `lw t7,180(s0)` at 0xd82ee1c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82ee20 targets 0xd82f164 and is always taken.
  The `beq` branch at 0xd82ee38 targets 0xd82f164, is taken when t7(=a0-32875) >= 0x23 (unsigned), and falls through when t7(=a0-32875) < 0x23 (unsigned).
  The `bne` branch at 0xd82ee60 targets 0xd82ee78, is taken when a2(=a0) < 0xd06 (unsigned), and falls through when a2(=a0) >= 0xd06 (unsigned).
  The `beql` branch at 0xd82ee68 targets 0xd82f15c, is taken when a2(=a0) == at(=0xd3b), and falls through when a2(=a0) != at(=0xd3b); its branch-likely delay slot `lw t5,184(s0)` at 0xd82ee6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82ee70 targets 0xd82f164 and is always taken.
  The `bne` branch at 0xd82ee7c targets 0xd82eeac, is taken when a2(=a0) < 0xbb2 (unsigned), and falls through when a2(=a0) >= 0xbb2 (unsigned).
  The `beq` branch at 0xd82ee88 targets 0xd82f164, is taken when t8(=a0-3312) >= 0x16 (unsigned), and falls through when t8(=a0-3312) < 0x16 (unsigned).
  The `beql` branch at 0xd82eeb0 targets 0xd82f144, is taken when a2(=a0) == at(=0xbb1), and falls through when a2(=a0) != at(=0xbb1); its branch-likely delay slot `lw t1,192(s0)` at 0xd82eeb4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82eeb8 targets 0xd82f164 and is always taken.
  The `beq` branch at 0xd82f128 targets 0xd82f2d0 and is always taken.
  The `beq` branch at 0xd82f138 targets 0xd82f2d0 and is always taken.
  The `beq` branch at 0xd82f150 targets 0xd82f2d0 and is always taken.
  The `beq` branch at 0xd82f15c targets 0xd82f2d0 and is always taken.
  The `beq` branch at 0xd82f164 targets 0xd82f2d0, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd82f18c targets 0xd82f1ac, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw v1,108(a0)` at 0xd82f190 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82f1b8 targets 0xd82f1dc, is taken when t6(?) >= t7(?) (unsigned), and falls through when t6(?) < t7(?) (unsigned); its branch-likely delay slot `sw v1,100(a0)` at 0xd82f1bc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82f244 targets 0xd82f258, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd82f250 targets 0xd82f298 and is always taken.
  The `beq` branch at 0xd82f274 targets 0xd82f298, is taken when (s0(?) & 0x3) == 0, and falls through when (s0(?) & 0x3) != 0.
  The `beql` branch at 0xd82f29c targets 0xd82f2bc, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw v0,124(a0)` at 0xd82f2a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82f2bc targets 0xd82f2d4, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd82f2c0 runs only when taken and is annulled on fall-through.
  The return at 0xd82f2dc has v0 = one of [[[0x1014]+276]+216], ?.
  The instructions from 0xd82ee08 to 0xd82ee08 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82eec0 to 0xd82f120 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82f130 to 0xd82f130 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82f140 to 0xd82f140 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82f158 to 0xd82f158 are not reached by any path from the entry, and their branches are not listed.
- `FillCompHeader` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82f2e4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82f2e4-0xd82f3e4 (256 bytes).
  It occupies 256 bytes.
  The `lbu` at 0xd82f2e4 loads 1 byte from a0 (arg0 at entry) +0x20.
  The `lw` at 0xd82f2f8 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `sw` at 0xd82f300 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0xd82f304 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sw` at 0xd82f30c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lbu` at 0xd82f310 loads 1 byte from a0 (arg0 at entry) +0x3c.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x5c, including `lbu` at 0xd82f31c, `lbu` at 0xd82f340.
  The `lw` at 0xd82f320 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `sw` at 0xd82f32c stores 4 bytes to (a1 + one of 0x0, 0xc) +0x0.
  The `lw` at 0xd82f330 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `sw` at 0xd82f334 stores 4 bytes to (a1 + one of 0x8, 0x14) +0x0.
  The `sw` at 0xd82f33c stores 4 bytes to (a1 + one of 0x4, 0x10) +0x0.
  The `lw` at 0xd82f354 loads 4 bytes from a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd82f358 stores 4 bytes to (a1 + one of 0x4, 0x10, 0x1c) +0x0.
  The `sw` at 0xd82f35c stores 4 bytes to (a1 + one of 0x8, 0x14, 0x20) +0x0.
  The `sw` at 0xd82f364 stores 4 bytes to (a1 + one of 0x0, 0xc, 0x18) +0x0.
  The `lbu` at 0xd82f368 loads 1 byte from a0 (arg0 at entry) +0x78.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x98, including `lbu` at 0xd82f370, `lbu` at 0xd82f394.
  The `lw` at 0xd82f374 loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `sw` at 0xd82f380 stores 4 bytes to (a1 + one of 0x0, 0xc, 0x18, 0x24) +0x0.
  The `lw` at 0xd82f384 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `sw` at 0xd82f388 stores 4 bytes to (a1 + one of 0x8, 0x14, 0x20, 0x2c) +0x0.
  The `sw` at 0xd82f390 stores 4 bytes to (a1 + one of 0x4, 0x10, 0x1c, 0x28) +0x0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0xd82f3a0, `lbu` at 0xd82f3b4.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd82f3a4, `sw` at 0xd82f3a8, `sw` at 0xd82f3ac.
  The `lw` at 0xd82f3c0 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xd82f3d0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `bne` branch at 0xd82f2f0 targets 0xd82f310, is taken when a2(=0x1) != t6(=[a0+32]:1), and falls through when a2(=0x1) == t6(=[a0+32]:1).
  The `bnel` branch at 0xd82f318 targets 0xd82f344, is taken when a2(=0x1) != t0(=[a0+60]:1), and falls through when a2(=0x1) == t0(=[a0+60]:1); its branch-likely delay slot `lbu t4,92(a0)` at 0xd82f31c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82f34c targets 0xd82f368, is taken when a2(=0x1) != t4(=[a0+92]:1), and falls through when a2(=0x1) == t4(=[a0+92]:1).
  The `bnel` branch at 0xd82f36c targets 0xd82f398, is taken when a2(=0x1) != t7(=[a0+120]:1), and falls through when a2(=0x1) == t7(=[a0+120]:1); its branch-likely delay slot `lbu t1,152(a0)` at 0xd82f370 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd82f39c targets 0xd82f3b8, is taken when a2(=0x1) != t1(=[a0+152]:1), and falls through when a2(=0x1) == t1(=[a0+152]:1); its branch-likely delay slot `lbu t4,0(a0)` at 0xd82f3a0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82f3b8 targets 0xd82f3dc, is taken when a2(=0x1) != t4(=[a0]:1), and falls through when a2(=0x1) == t4(=[a0]:1).
  The return at 0xd82f3dc has v0 = ?.
- `__glXDrawArraysDataSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82f3e4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82f3e4-0xd82f56c (392 bytes).
  It occupies 392 bytes.
  The `lw` at 0xd82f424 loads 4 bytes from (a0-32884 << 0x2) +0xd842670.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd82f42c).
  The `beq` branch at 0xd82f410 targets 0xd82f554, is taken when t6(=a0-32884) >= 0x6 (unsigned), and falls through when t6(=a0-32884) < 0x6 (unsigned).
  The return at 0xd82f564 has v0 = 0x0.
  The instructions from 0xd82f434 to 0xd82f550 are not reached by any path from the entry, and their branches are not listed.
- `__glXBytesPerArrayElt` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82f56c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82f56c-0xd82febc (2384 bytes).
  It occupies 2384 bytes.
  The `lw` at 0xd82f57c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82f594 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82f5a4 loads 4 bytes from [[0x1014]+276] +0xb4.
  The `lw` at 0xd82f5b4 loads 4 bytes from (a0-32884 << 0x2) +0xd842658.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd82f5bc).
  The `beq` branch at 0xd82f5a0 targets 0xd82f680, is taken when t7(=a0-32884) >= 0x6 (unsigned), and falls through when t7(=a0-32884) < 0x6 (unsigned).
  The return at 0xd82f690 has v0 = 0x0.
  The instructions from 0xd82f5c4 to 0xd82f67c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd82f698 to 0xd82feb8 are not reached by any path from the entry, and their branches are not listed.
- `__glXTypeSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82f698 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82f698-0xd82f724 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xd82f6c0 loads 4 bytes from (a0-5119 << 0x2) +0xd842628.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd82f6c8).
  The `beql` branch at 0xd82f6ac targets 0xd82f71c, is taken when t6(=a0-5119) >= 0xc (unsigned), and falls through when t6(=a0-5119) < 0xc (unsigned); its branch-likely delay slot `or v0,zero,zero` at 0xd82f6b0 runs only when taken and is annulled on fall-through.
  The return at 0xd82f71c has v0 = 0x0.
  The instructions from 0xd82f6d0 to 0xd82f718 are not reached by any path from the entry, and their branches are not listed.
- `__glx_GetColorTableSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82f724 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82f724-0xd82f9a8 (644 bytes).
  It occupies 644 bytes.
  The `lw` at 0xd82f734 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82f758 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82f75c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82f76c loads 4 bytes from [[0x1014]+276] +0x4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd82f780, `lw` at 0xd82f86c, `lw` at 0xd82f8b8.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd82f78c, `lw` at 0xd82f7a4, `lw` at 0xd82f7d0.
  The `lw` at 0xd82f790 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd82f7a8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd82f7b8, `sw` at 0xd82f7d4.
  The `sh` at 0xd82f7e0 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd82f7e4, `sb` at 0xd82f814.
  The `lw` at 0xd82f7e8 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82f7fc stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd82f800 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd82f804 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd82f80c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd82f810 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd82f818 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd82f824 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd82f834 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd82f83c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd82f844 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x14.
  The `lbu` at 0xd82f848 loads 1 byte from [[0x1014]+276] +0x4c.
  The `sb` at 0xd82f84c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x18.
  The `lw` at 0xd82f8a8 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd82f8c0 stores 4 bytes to [[0x1014]+276] +0xb0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd82f960, `lw` at 0xd82f978.
  The `lw` at 0xd82f964 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd82f778 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82f798 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f7c4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f854 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd82f87c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f8a0 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f8dc calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd82f904 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f938 calls __glXEmptyImage with a0=[[0x1014]+276], a1=?, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0xd82f94c calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f96c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82f988 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd82f760 targets 0xd82f998, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82f764 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82f768 targets 0xd82f994, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd82f788 targets 0xd82f7a8, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd82f78c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82f7b4 targets 0xd82f7d8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+28) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+28) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd82f7b8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82f868 targets 0xd82f95c, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd82f86c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82f88c targets 0xd82f8c4, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd82f8b4 targets 0xd82f95c, is taken when t4(=[[[0x1014]+276]+176]) != 0, and falls through when t4(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd82f8b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82f8bc targets 0xd82f958 and is always taken.
  The `beq` branch at 0xd82f8f4 targets 0xd82f910, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0.
  The `beql` branch at 0xd82f95c targets 0xd82f97c, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd82f960 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82f980 targets 0xd82f998, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82f984 runs only when taken and is annulled on fall-through.
  The return at 0xd82f9a0 has v0 = one of ?, [[[[0x1014]+276]+216]+124].
- `__glx_GetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82f9a8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82f9a8-0xd82fc2c (644 bytes).
  It occupies 644 bytes.
  The `lw` at 0xd82f9b8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82f9dc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82f9e0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82f9f0 loads 4 bytes from [[0x1014]+276] +0x4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd82fa04, `lw` at 0xd82faf8, `lw` at 0xd82fb44.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd82fa10, `lw` at 0xd82fa28, `lw` at 0xd82fa54.
  The `lw` at 0xd82fa14 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd82fa2c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd82fa3c, `sw` at 0xd82fa58.
  The `sh` at 0xd82fa64 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd82fa68, `sb` at 0xd82fa98.
  The `lw` at 0xd82fa6c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82fa80 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd82fa84 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd82fa88 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd82fa90 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd82fa94 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd82fa9c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd82faa8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd82fab8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd82fac0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd82fac8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x14.
  The `lbu` at 0xd82facc loads 1 byte from [[0x1014]+276] +0x4c.
  The `sb` at 0xd82fad0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x18.
  The `sb` at 0xd82fad8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x19.
  The `lw` at 0xd82fb34 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd82fb4c stores 4 bytes to [[0x1014]+276] +0xb0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd82fbe4, `lw` at 0xd82fbfc.
  The `lw` at 0xd82fbe8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd82f9fc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82fa1c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82fa48 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82fae0 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd82fb08 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82fb2c calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82fb60 calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd82fb88 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82fbbc calls __glXEmptyImage with a0=[[0x1014]+276], a1=0x2, a2=0x1, a3=a2 at entry (arg2).
  The `jalr` at 0xd82fbd0 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82fbf0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82fc0c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd82f9e4 targets 0xd82fc1c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82f9e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82f9ec targets 0xd82fc18, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd82fa0c targets 0xd82fa2c, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd82fa10 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82fa38 targets 0xd82fa5c, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+28) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+28) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd82fa3c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82faf4 targets 0xd82fbe0, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd82faf8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82fb18 targets 0xd82fb50, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd82fb40 targets 0xd82fbe0, is taken when t5(=[[[0x1014]+276]+176]) != 0, and falls through when t5(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd82fb44 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82fb48 targets 0xd82fbdc and is always taken.
  The `beq` branch at 0xd82fb78 targets 0xd82fb94, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0.
  The `beql` branch at 0xd82fbe0 targets 0xd82fc00, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd82fbe4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82fc04 targets 0xd82fc1c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82fc08 runs only when taken and is annulled on fall-through.
  The return at 0xd82fc24 has v0 = one of ?, [[[[0x1014]+276]+216]+124].
- `__glx_GetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82fc2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82fc2c-0xd82febc (656 bytes).
  It occupies 656 bytes.
  The `lw` at 0xd82fc3c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd82fc60 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd82fc64 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd82fc74 loads 4 bytes from [[0x1014]+276] +0x4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd82fc88, `lw` at 0xd82fd7c, `lw` at 0xd82fdc8.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd82fc94, `lw` at 0xd82fcac, `lw` at 0xd82fcd8.
  The `lw` at 0xd82fc98 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd82fcb0 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd82fcc0, `sw` at 0xd82fcdc.
  The `sh` at 0xd82fce8 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd82fcec, `sb` at 0xd82fd1c.
  The `lw` at 0xd82fcf0 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd82fd04 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd82fd08 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd82fd0c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd82fd14 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd82fd18 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd82fd20 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd82fd2c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd82fd3c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd82fd44 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd82fd4c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x14.
  The `lbu` at 0xd82fd50 loads 1 byte from [[0x1014]+276] +0x4c.
  The `sb` at 0xd82fd54 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x18.
  The `sb` at 0xd82fd5c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x19.
  The `lw` at 0xd82fdb8 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd82fdd0 stores 4 bytes to [[0x1014]+276] +0xb0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd82fe74, `lw` at 0xd82fe8c.
  The `lw` at 0xd82fe78 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd82fc80 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd82fca0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82fccc calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82fd64 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd82fd8c calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd82fdb0 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82fdf0 calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd82fe18 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82fe4c calls __glXEmptyImage with a0=[[0x1014]+276], a1=?, a2=0x1, a3=a2 at entry (arg2).
  The `jalr` at 0xd82fe60 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82fe80 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd82fe9c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd82fc68 targets 0xd82feac, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82fc6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82fc70 targets 0xd82fea8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd82fc90 targets 0xd82fcb0, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd82fc94 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82fcbc targets 0xd82fce0, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+28) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+28) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd82fcc0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82fd78 targets 0xd82fe70, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd82fd7c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd82fd9c targets 0xd82fdd4, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd82fdc4 targets 0xd82fe70, is taken when t5(=[[[0x1014]+276]+176]) != 0, and falls through when t5(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd82fdc8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82fdcc targets 0xd82fe6c and is always taken.
  The `beq` branch at 0xd82fe04 targets 0xd82fe24, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0.
  The `beql` branch at 0xd82fe70 targets 0xd82fe90, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd82fe74 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82fe94 targets 0xd82feac, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd82fe98 runs only when taken and is annulled on fall-through.
  The return at 0xd82feb4 has v0 = one of ?, [[[[0x1014]+276]+216]+124].
- `FillArrayData` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd82febc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd82febc-0xd8342dc (17440 bytes).
  It occupies 17440 bytes.
  3 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x20, including `lbu` at 0xd82fefc, `lbu` at 0xd82fffc, `lbu` at 0xd830230.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x28, including `lw` at 0xd82ff10, `lw` at 0xd830040.
  The `lw` at 0xd82ff14 loads 4 bytes from a2 (arg2 at entry) +0x2c.
  3 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x3c, including `lbu` at 0xd82ff28, `lbu` at 0xd830004, `lbu` at 0xd83005c.
  4 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x5c, including `lbu` at 0xd82ff30, `lbu` at 0xd82ff4c, `lbu` at 0xd830064.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x44, including `lw` at 0xd82ff34, `lw` at 0xd8300a0.
  The `lw` at 0xd82ff38 loads 4 bytes from a2 (arg2 at entry) +0x48.
  4 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x78, including `lbu` at 0xd82ff58, `lbu` at 0xd82ff74, `lbu` at 0xd8300c4.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x64, including `lw` at 0xd82ff5c, `lw` at 0xd830100.
  The `lw` at 0xd82ff60 loads 4 bytes from a2 (arg2 at entry) +0x68.
  4 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x98, including `lbu` at 0xd82ff7c, `lbu` at 0xd82ff98, `lbu` at 0xd830124.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x80, including `lw` at 0xd82ff80, `lw` at 0xd83015c.
  The `lw` at 0xd82ff84 loads 4 bytes from a2 (arg2 at entry) +0x84.
  4 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x0, including `lbu` at 0xd82ffa4, `lbu` at 0xd82ffc0, `lbu` at 0xd83017c.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xa0, including `lw` at 0xd82ffa8, `lw` at 0xd8301b4.
  The `lw` at 0xd82ffac loads 4 bytes from a2 (arg2 at entry) +0xa4.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0xd82ffd0, `lw` at 0xd83020c.
  The `lw` at 0xd82ffd4 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `jalr` at 0xd830014 calls __glXBytesPerArrayElt [0xd82f56c] with a0=0x8075, a1=?, a2=?, a3=?.
  The `jalr` at 0xd830034 calls memcpy with a0=?, a1=?, a2=ret(__glXBytesPerArrayElt), a3=?.
  The `jalr` at 0xd830074 calls __glXBytesPerArrayElt [0xd82f56c] with a0=0x8076, a1=?, a2=?, a3=?.
  The `jalr` at 0xd830094 calls memcpy with a0=?, a1=?, a2=ret(__glXBytesPerArrayElt), a3=?.
  The `jalr` at 0xd8300d4 calls __glXBytesPerArrayElt [0xd82f56c] with a0=0x8077, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8300f4 calls memcpy with a0=?, a1=?, a2=ret(__glXBytesPerArrayElt), a3=?.
  The `jalr` at 0xd830134 calls __glXBytesPerArrayElt [0xd82f56c] with a0=0x8078, a1=?, a2=?, a3=?.
  The `jalr` at 0xd830154 calls memcpy with a0=?, a1=?, a2=ret(__glXBytesPerArrayElt), a3=?.
  The `jalr` at 0xd83018c calls __glXBytesPerArrayElt [0xd82f56c] with a0=0x8079, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8301ac calls memcpy with a0=?, a1=?, a2=ret(__glXBytesPerArrayElt), a3=?.
  The `jalr` at 0xd8301e4 calls __glXBytesPerArrayElt [0xd82f56c] with a0=0x8074, a1=?, a2=?, a3=?.
  The `jalr` at 0xd830204 calls memcpy with a0=?, a1=?, a2=ret(__glXBytesPerArrayElt), a3=?.
  The `bne` branch at 0xd82ff08 targets 0xd82ff28, is taken when s4(=0x1) != t6(=[a2+32]:1), and falls through when s4(=0x1) == t6(=[a2+32]:1).
  The `bnel` branch at 0xd82ff2c targets 0xd82ff50, is taken when s4(=0x1) != t1(=[a2+60]:1), and falls through when s4(=0x1) == t1(=[a2+60]:1); its branch-likely delay slot `lbu t6,92(s2)` at 0xd82ff30 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd82ff54 targets 0xd82ff78, is taken when s4(=0x1) != t6(=[a2+92]:1), and falls through when s4(=0x1) == t6(=[a2+92]:1); its branch-likely delay slot `lbu t1,120(s2)` at 0xd82ff58 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd82ff78 targets 0xd82ff9c, is taken when s4(=0x1) != t1(=[a2+120]:1), and falls through when s4(=0x1) == t1(=[a2+120]:1); its branch-likely delay slot `lbu t5,152(s2)` at 0xd82ff7c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd82ffa0 targets 0xd82ffc4, is taken when s4(=0x1) != t5(=[a2+152]:1), and falls through when s4(=0x1) == t5(=[a2+152]:1); its branch-likely delay slot `lbu t9,0(s2)` at 0xd82ffa4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd82ffc8 targets 0xd82ffec, is taken when s4(=0x1) != t9(=[a2]:1), and falls through when s4(=0x1) == t9(=[a2]:1); its branch-likely delay slot `lw t3,96(sp)` at 0xd82ffcc runs only when taken and is annulled on fall-through.
  The `blezl` branch at 0xd82fff4 targets 0xd830238, is taken when t3(=a0) <= 0 (signed), and falls through when t3(=a0) > 0 (signed); its branch-likely delay slot `lw ra,60(sp)` at 0xd82fff8 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd830000 targets 0xd830060, is taken when s4(=0x1) != t4(=[a2+32]:1), and falls through when s4(=0x1) == t4(=[a2+32]:1); its branch-likely delay slot `lbu t1,60(s2)` at 0xd830004 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd830060 targets 0xd8300c0, is taken when s4(=0x1) != t1(=[a2+60]:1), and falls through when s4(=0x1) == t1(=[a2+60]:1); its branch-likely delay slot `lbu t7,92(s2)` at 0xd830064 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8300c0 targets 0xd830120, is taken when s4(=0x1) != t7(=[a2+92]:1), and falls through when s4(=0x1) == t7(=[a2+92]:1); its branch-likely delay slot `lbu t2,120(s2)` at 0xd8300c4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd830120 targets 0xd830178, is taken when s4(=0x1) != t2(=[a2+120]:1), and falls through when s4(=0x1) == t2(=[a2+120]:1); its branch-likely delay slot `lbu t7,152(s2)` at 0xd830124 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd830178 targets 0xd8301d0, is taken when s4(=0x1) != t7(=[a2+152]:1), and falls through when s4(=0x1) == t7(=[a2+152]:1); its branch-likely delay slot `lbu t1,0(s2)` at 0xd83017c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8301d0 targets 0xd830228, is taken when s4(=0x1) != t1(=[a2]:1), and falls through when s4(=0x1) == t1(=[a2]:1); its branch-likely delay slot `lw t4,96(sp)` at 0xd8301d4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd83022c targets 0xd830000, is taken when s5(?) != t4(=a0), and falls through when s5(?) == t4(=a0); its branch-likely delay slot `lbu t4,32(s2)` at 0xd830230 runs only when taken and is annulled on fall-through.
  The return at 0xd83025c has v0 = ?.
  The instructions from 0xd830264 to 0xd8342d8 are not reached by any path from the entry, and their branches are not listed.
- `__glx_TexCoordPointerEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd830264 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd830264-0xd830540 (732 bytes).
  It occupies 732 bytes.
  The `lw` at 0xd830274 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83028c loads 4 bytes from [0x1014] +0x114.
  4 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd830298, `lw` at 0xd8302a0, `lw` at 0xd8302ac.
  2 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xb0, including `sw` at 0xd8302c0, `sw` at 0xd8304bc.
  27 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb4, including `lw` at 0xd8302fc, `lw` at 0xd830318, `lw` at 0xd830334.
  16 such `sw` accesses store 4 bytes to [[[0x1014]+276]+180] +0x7c, including `sw` at 0xd830304, `sw` at 0xd830320, `sw` at 0xd83033c.
  The `sw` at 0xd8304c4 stores 4 bytes to [[[0x1014]+276]+180] +0x88.
  The `sw` at 0xd8304cc stores 4 bytes to [[[0x1014]+276]+180] +0x8c.
  The `sw` at 0xd8304d4 stores 4 bytes to [[[0x1014]+276]+180] +0x90.
  The `sw` at 0xd8304dc stores 4 bytes to [[[0x1014]+276]+180] +0x94.
  The `sw` at 0xd8304ec stores 4 bytes to [[[0x1014]+276]+180] +0x84.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+180] +0x80, including `sw` at 0xd830518, `sw` at 0xd830528.
  The `jalr` at 0xd8304fc calls __glXTypeSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0xd830288 targets 0xd8302ac, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beql` branch at 0xd830294 targets 0xd8302b0, is taken when a0 >= 0x5 (signed), and falls through when a0 < 0x5 (signed); its branch-likely delay slot `lw t7,176(v1)` at 0xd830298 runs only when taken and is annulled on fall-through.
  The `bltzl` branch at 0xd83029c targets 0xd8302b0, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed); its branch-likely delay slot `lw t7,176(v1)` at 0xd8302a0 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd8302a4 targets 0xd8302c4, is taken when a3 >= 0 (signed), and falls through when a3 < 0 (signed).
  The `bnel` branch at 0xd8302b4 targets 0xd830530, is taken when t7(=[[[0x1014]+276]+176]) != 0, and falls through when t7(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8302b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8302bc targets 0xd83052c and is always taken.
  The `beq` branch at 0xd8302c4 targets 0xd8302ec, is taken when a1 == at(=0x1402), and falls through when a1 != at(=0x1402).
  The `beq` branch at 0xd8302cc targets 0xd83035c, is taken when a1 == at(=0x1404), and falls through when a1 != at(=0x1404).
  The `beq` branch at 0xd8302d4 targets 0xd8303cc, is taken when a1 == at(=0x1406), and falls through when a1 != at(=0x1406).
  The `beql` branch at 0xd8302dc targets 0xd830440, is taken when a1 == at(=0x140a), and falls through when a1 != at(=0x140a); its branch-likely delay slot `addiu at,zero,1` at 0xd8302e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8302e4 targets 0xd8304ac and is always taken.
  The `bnel` branch at 0xd8302f0 targets 0xd83030c, is taken when s0(=a0) != at(=0x1), and falls through when s0(=a0) == at(=0x1); its branch-likely delay slot `addiu at,zero,2` at 0xd8302f4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830300 targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd83030c targets 0xd830328, is taken when s0(=a0) != at(=0x2), and falls through when s0(=a0) == at(=0x2); its branch-likely delay slot `addiu at,zero,3` at 0xd830310 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83031c targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd830328 targets 0xd830344, is taken when s0(=a0) != at(=0x3), and falls through when s0(=a0) == at(=0x3); its branch-likely delay slot `addiu at,zero,4` at 0xd83032c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830338 targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd830344 targets 0xd8304c4, is taken when s0(=a0) != at(=0x4), and falls through when s0(=a0) == at(=0x4); its branch-likely delay slot `lw t3,180(v1)` at 0xd830348 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830354 targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd830360 targets 0xd83037c, is taken when s0(=a0) != at(=0x1), and falls through when s0(=a0) == at(=0x1); its branch-likely delay slot `addiu at,zero,2` at 0xd830364 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830370 targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd83037c targets 0xd830398, is taken when s0(=a0) != at(=0x2), and falls through when s0(=a0) == at(=0x2); its branch-likely delay slot `addiu at,zero,3` at 0xd830380 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83038c targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd830398 targets 0xd8303b4, is taken when s0(=a0) != at(=0x3), and falls through when s0(=a0) == at(=0x3); its branch-likely delay slot `addiu at,zero,4` at 0xd83039c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8303a8 targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd8303b4 targets 0xd8304c4, is taken when s0(=a0) != at(=0x4), and falls through when s0(=a0) == at(=0x4); its branch-likely delay slot `lw t3,180(v1)` at 0xd8303b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8303c4 targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd8303d0 targets 0xd8303ec, is taken when s0(=a0) != at(=0x1), and falls through when s0(=a0) == at(=0x1); its branch-likely delay slot `addiu at,zero,2` at 0xd8303d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8303e0 targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd8303ec targets 0xd830408, is taken when s0(=a0) != at(=0x2), and falls through when s0(=a0) == at(=0x2); its branch-likely delay slot `addiu at,zero,3` at 0xd8303f0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8303fc targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd830408 targets 0xd830424, is taken when s0(=a0) != at(=0x3), and falls through when s0(=a0) == at(=0x3); its branch-likely delay slot `addiu at,zero,4` at 0xd83040c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830418 targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd830424 targets 0xd8304c4, is taken when s0(=a0) != at(=0x4), and falls through when s0(=a0) == at(=0x4); its branch-likely delay slot `lw t3,180(v1)` at 0xd830428 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830434 targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd830440 targets 0xd83045c, is taken when s0(=a0) != at(=0x1), and falls through when s0(=a0) == at(=0x1); its branch-likely delay slot `addiu at,zero,2` at 0xd830444 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830450 targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd83045c targets 0xd830478, is taken when s0(=a0) != at(=0x2), and falls through when s0(=a0) == at(=0x2); its branch-likely delay slot `addiu at,zero,3` at 0xd830460 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83046c targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd830478 targets 0xd830494, is taken when s0(=a0) != at(=0x3), and falls through when s0(=a0) == at(=0x3); its branch-likely delay slot `addiu at,zero,4` at 0xd83047c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830488 targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd830494 targets 0xd8304c4, is taken when s0(=a0) != at(=0x4), and falls through when s0(=a0) == at(=0x4); its branch-likely delay slot `lw t3,180(v1)` at 0xd830498 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8304a4 targets 0xd8304c0 and is always taken.
  The `bnel` branch at 0xd8304b0 targets 0xd830530, is taken when t1(=[[[0x1014]+276]+176]) != 0, and falls through when t1(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8304b4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8304b8 targets 0xd83052c and is always taken.
  The `bne` branch at 0xd8304e8 targets 0xd830524, is taken when a2 != 0, and falls through when a2 == 0.
  The `beq` branch at 0xd83051c targets 0xd830530 and is always taken.
  The return at 0xd830538 has v0 = one of ?, ret(__glXTypeSize).
  The instructions from 0xd830308 to 0xd830308 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830324 to 0xd830324 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830340 to 0xd830340 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830378 to 0xd830378 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830394 to 0xd830394 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8303b0 to 0xd8303b0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8303e8 to 0xd8303e8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830404 to 0xd830404 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830420 to 0xd830420 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83043c to 0xd83043c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830458 to 0xd830458 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830474 to 0xd830474 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830490 to 0xd830490 are not reached by any path from the entry, and their branches are not listed.
- `__glx_IndexPointerEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd830540 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd830540-0xd830678 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xd830550 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd830560 loads 4 bytes from [0x1014] +0x114.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd83056c, `lw` at 0xd830590.
  2 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xb0, including `sw` at 0xd830580, `sw` at 0xd830614.
  The `lw` at 0xd8305a0 loads 4 bytes from (a0-5121 << 0x2) +0xd8426e0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd8305a8).
  The `bltz` branch at 0xd83055c targets 0xd83056c, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bgezl` branch at 0xd830564 targets 0xd830588, is taken when a2 >= 0 (signed), and falls through when a2 < 0 (signed); its branch-likely delay slot `addiu t9,a0,-5121` at 0xd830568 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd830574 targets 0xd83066c, is taken when t7(=[[[0x1014]+276]+176]) != 0, and falls through when t7(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd830578 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83057c targets 0xd830668 and is always taken.
  The `beql` branch at 0xd83058c targets 0xd830604, is taken when t9(=a0-5121) >= 0xa (unsigned), and falls through when t9(=a0-5121) < 0xa (unsigned); its branch-likely delay slot `lw t0,176(v1)` at 0xd830590 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd830608 targets 0xd83066c, is taken when t0(=[[[0x1014]+276]+176]) != 0, and falls through when t0(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd83060c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830610 targets 0xd830668 and is always taken.
  The return at 0xd830670 has v0 = ?.
  The instructions from 0xd830584 to 0xd830584 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8305b0 to 0xd830600 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830618 to 0xd830664 are not reached by any path from the entry, and their branches are not listed.
- `__glx_ColorPointerEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd830678 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd830678-0xd830948 (720 bytes).
  It occupies 720 bytes.
  The `lw` at 0xd830688 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8306a0 loads 4 bytes from [0x1014] +0x114.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd8306ac, `lw` at 0xd8306d0.
  2 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xb0, including `sw` at 0xd8306c0, `sw` at 0xd8308c4.
  The `lw` at 0xd8306e0 loads 4 bytes from (a1-5120 << 0x2) +0xd8426b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd8306e8).
  The `bltz` branch at 0xd83069c targets 0xd8306ac, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bgezl` branch at 0xd8306a4 targets 0xd8306c8, is taken when a3 >= 0 (signed), and falls through when a3 < 0 (signed); its branch-likely delay slot `addiu t9,a1,-5120` at 0xd8306a8 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8306b4 targets 0xd830938, is taken when t7(=[[[0x1014]+276]+176]) != 0, and falls through when t7(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8306b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8306bc targets 0xd830934 and is always taken.
  The `beql` branch at 0xd8306cc targets 0xd8308b4, is taken when t9(=a1-5120) >= 0xb (unsigned), and falls through when t9(=a1-5120) < 0xb (unsigned); its branch-likely delay slot `lw t2,176(v1)` at 0xd8306d0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8308b8 targets 0xd830938, is taken when t2(=[[[0x1014]+276]+176]) != 0, and falls through when t2(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8308bc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8308c0 targets 0xd830934 and is always taken.
  The return at 0xd830940 has v0 = ?.
  The instructions from 0xd8306c4 to 0xd8306c4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8306f0 to 0xd8308b0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8308c8 to 0xd830930 are not reached by any path from the entry, and their branches are not listed.
- `__glx_NormalPointerEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd830948 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd830948-0xd830a88 (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0xd830958 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd830968 loads 4 bytes from [0x1014] +0x114.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd830974, `lw` at 0xd830998.
  2 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xb0, including `sw` at 0xd830988, `sw` at 0xd830a1c.
  The `lw` at 0xd8309a8 loads 4 bytes from (a0-5120 << 0x2) +0xd842688.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd8309b0).
  The `bltz` branch at 0xd830964 targets 0xd830974, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bgezl` branch at 0xd83096c targets 0xd830990, is taken when a2 >= 0 (signed), and falls through when a2 < 0 (signed); its branch-likely delay slot `addiu t9,a0,-5120` at 0xd830970 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd83097c targets 0xd830a7c, is taken when t7(=[[[0x1014]+276]+176]) != 0, and falls through when t7(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd830980 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830984 targets 0xd830a78 and is always taken.
  The `beql` branch at 0xd830994 targets 0xd830a0c, is taken when t9(=a0-5120) >= 0xb (unsigned), and falls through when t9(=a0-5120) < 0xb (unsigned); its branch-likely delay slot `lw t0,176(v1)` at 0xd830998 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd830a10 targets 0xd830a7c, is taken when t0(=[[[0x1014]+276]+176]) != 0, and falls through when t0(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd830a14 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830a18 targets 0xd830a78 and is always taken.
  The return at 0xd830a80 has v0 = ?.
  The instructions from 0xd83098c to 0xd83098c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8309b8 to 0xd830a08 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830a20 to 0xd830a74 are not reached by any path from the entry, and their branches are not listed.
- `__glx_VertexPointerEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd830a88 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd830a88-0xd830cf8 (624 bytes).
  It occupies 624 bytes.
  The `lw` at 0xd830a98 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd830ab4 loads 4 bytes from [0x1014] +0x114.
  4 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd830ac0, `lw` at 0xd830ac8, `lw` at 0xd830ad4.
  2 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xb0, including `sw` at 0xd830ae8, `sw` at 0xd830c74.
  23 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb4, including `lw` at 0xd830b24, `lw` at 0xd830b40, `lw` at 0xd830b54.
  12 such `sw` accesses store 4 bytes to [[[0x1014]+276]+180] +0x4, including `sw` at 0xd830b2c, `sw` at 0xd830b48, `sw` at 0xd830b64.
  The `sw` at 0xd830c7c stores 4 bytes to [[[0x1014]+276]+180] +0x10.
  The `sw` at 0xd830c84 stores 4 bytes to [[[0x1014]+276]+180] +0x14.
  The `sw` at 0xd830c8c stores 4 bytes to [[[0x1014]+276]+180] +0x18.
  The `sw` at 0xd830c94 stores 4 bytes to [[[0x1014]+276]+180] +0x1c.
  The `sw` at 0xd830ca4 stores 4 bytes to [[[0x1014]+276]+180] +0xc.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+180] +0x8, including `sw` at 0xd830cd0, `sw` at 0xd830ce0.
  The `jalr` at 0xd830cb4 calls __glXTypeSize with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd830ab0 targets 0xd830ad4, is taken when a0 < 0x2 (signed), and falls through when a0 >= 0x2 (signed).
  The `beql` branch at 0xd830abc targets 0xd830ad8, is taken when a0 >= 0x5 (signed), and falls through when a0 < 0x5 (signed); its branch-likely delay slot `lw t7,176(v1)` at 0xd830ac0 runs only when taken and is annulled on fall-through.
  The `bltzl` branch at 0xd830ac4 targets 0xd830ad8, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed); its branch-likely delay slot `lw t7,176(v1)` at 0xd830ac8 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd830acc targets 0xd830aec, is taken when a3 >= 0 (signed), and falls through when a3 < 0 (signed).
  The `bnel` branch at 0xd830adc targets 0xd830ce8, is taken when t7(=[[[0x1014]+276]+176]) != 0, and falls through when t7(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd830ae0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830ae4 targets 0xd830ce4 and is always taken.
  The `beq` branch at 0xd830aec targets 0xd830b14, is taken when a1 == at(=0x1402), and falls through when a1 != at(=0x1402).
  The `beq` branch at 0xd830af4 targets 0xd830b68, is taken when a1 == at(=0x1404), and falls through when a1 != at(=0x1404).
  The `beq` branch at 0xd830afc targets 0xd830bbc, is taken when a1 == at(=0x1406), and falls through when a1 != at(=0x1406).
  The `beql` branch at 0xd830b04 targets 0xd830c14, is taken when a1 == at(=0x140a), and falls through when a1 != at(=0x140a); its branch-likely delay slot `addiu at,zero,2` at 0xd830b08 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830b0c targets 0xd830c64 and is always taken.
  The `bnel` branch at 0xd830b18 targets 0xd830b34, is taken when s0(=a0) != at(=0x2), and falls through when s0(=a0) == at(=0x2); its branch-likely delay slot `addiu at,zero,3` at 0xd830b1c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830b28 targets 0xd830c78 and is always taken.
  The `bnel` branch at 0xd830b34 targets 0xd830b50, is taken when s0(=a0) != at(=0x3), and falls through when s0(=a0) == at(=0x3); its branch-likely delay slot `addiu at,zero,4` at 0xd830b38 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830b44 targets 0xd830c78 and is always taken.
  The `bnel` branch at 0xd830b50 targets 0xd830c7c, is taken when s0(=a0) != at(=0x4), and falls through when s0(=a0) == at(=0x4); its branch-likely delay slot `lw t5,180(v1)` at 0xd830b54 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830b60 targets 0xd830c78 and is always taken.
  The `bnel` branch at 0xd830b6c targets 0xd830b88, is taken when s0(=a0) != at(=0x2), and falls through when s0(=a0) == at(=0x2); its branch-likely delay slot `addiu at,zero,3` at 0xd830b70 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830b7c targets 0xd830c78 and is always taken.
  The `bnel` branch at 0xd830b88 targets 0xd830ba4, is taken when s0(=a0) != at(=0x3), and falls through when s0(=a0) == at(=0x3); its branch-likely delay slot `addiu at,zero,4` at 0xd830b8c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830b98 targets 0xd830c78 and is always taken.
  The `bnel` branch at 0xd830ba4 targets 0xd830c7c, is taken when s0(=a0) != at(=0x4), and falls through when s0(=a0) == at(=0x4); its branch-likely delay slot `lw t5,180(v1)` at 0xd830ba8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830bb4 targets 0xd830c78 and is always taken.
  The `bnel` branch at 0xd830bc0 targets 0xd830bdc, is taken when s0(=a0) != at(=0x2), and falls through when s0(=a0) == at(=0x2); its branch-likely delay slot `addiu at,zero,3` at 0xd830bc4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830bd0 targets 0xd830c78 and is always taken.
  The `bnel` branch at 0xd830bdc targets 0xd830bf8, is taken when s0(=a0) != at(=0x3), and falls through when s0(=a0) == at(=0x3); its branch-likely delay slot `addiu at,zero,4` at 0xd830be0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830bec targets 0xd830c78 and is always taken.
  The `bnel` branch at 0xd830bf8 targets 0xd830c7c, is taken when s0(=a0) != at(=0x4), and falls through when s0(=a0) == at(=0x4); its branch-likely delay slot `lw t5,180(v1)` at 0xd830bfc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830c08 targets 0xd830c78 and is always taken.
  The `bnel` branch at 0xd830c14 targets 0xd830c30, is taken when s0(=a0) != at(=0x2), and falls through when s0(=a0) == at(=0x2); its branch-likely delay slot `addiu at,zero,3` at 0xd830c18 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830c24 targets 0xd830c78 and is always taken.
  The `bnel` branch at 0xd830c30 targets 0xd830c4c, is taken when s0(=a0) != at(=0x3), and falls through when s0(=a0) == at(=0x3); its branch-likely delay slot `addiu at,zero,4` at 0xd830c34 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830c40 targets 0xd830c78 and is always taken.
  The `bnel` branch at 0xd830c4c targets 0xd830c7c, is taken when s0(=a0) != at(=0x4), and falls through when s0(=a0) == at(=0x4); its branch-likely delay slot `lw t5,180(v1)` at 0xd830c50 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830c5c targets 0xd830c78 and is always taken.
  The `bnel` branch at 0xd830c68 targets 0xd830ce8, is taken when t3(=[[[0x1014]+276]+176]) != 0, and falls through when t3(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd830c6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830c70 targets 0xd830ce4 and is always taken.
  The `bne` branch at 0xd830ca0 targets 0xd830cdc, is taken when a2 != 0, and falls through when a2 == 0.
  The `beq` branch at 0xd830cd4 targets 0xd830ce8 and is always taken.
  The return at 0xd830cf0 has v0 = one of ?, ret(__glXTypeSize).
  The instructions from 0xd830b30 to 0xd830b30 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830b4c to 0xd830b4c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830b84 to 0xd830b84 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830ba0 to 0xd830ba0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830bd8 to 0xd830bd8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830bf4 to 0xd830bf4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830c10 to 0xd830c10 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830c2c to 0xd830c2c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd830c48 to 0xd830c48 are not reached by any path from the entry, and their branches are not listed.
- `__glx_DrawArraysEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd830cf8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd830cf8-0xd830d34 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xd830d18 calls SendDrawArrays [0xd83d2cc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1014.
  The return at 0xd830d2c has v0 = ret(SendDrawArrays).
- `__glx_ArrayElementEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd830d34 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd830d34-0xd830ea4 (368 bytes).
  It occupies 368 bytes.
  The `lw` at 0xd830d44 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd830d5c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd830d68 loads 4 bytes from [[0x1014]+276] +0xb4.
  The `lbu` at 0xd830d6c loads 1 byte from [[[0x1014]+276]+180] +0x20.
  2 such `lbu` accesses load 1 byte from [[[0x1014]+276]+180] +0x3c, including `lbu` at 0xd830d74, `lbu` at 0xd830d9c.
  The `lw` at 0xd830d78 loads 4 bytes from [[[0x1014]+276]+180] +0x28.
  The `lw` at 0xd830d7c loads 4 bytes from [[[0x1014]+276]+180] +0x2c.
  The `lw` at 0xd830d84 loads 4 bytes from [[[0x1014]+276]+180] +0x24.
  2 such `lbu` accesses load 1 byte from [[[0x1014]+276]+180] +0x5c, including `lbu` at 0xd830da4, `lbu` at 0xd830dcc.
  The `lw` at 0xd830da8 loads 4 bytes from [[[0x1014]+276]+180] +0x44.
  The `lw` at 0xd830dac loads 4 bytes from [[[0x1014]+276]+180] +0x40.
  The `lw` at 0xd830db0 loads 4 bytes from [[[0x1014]+276]+180] +0x48.
  2 such `lbu` accesses load 1 byte from [[[0x1014]+276]+180] +0x78, including `lbu` at 0xd830dd4, `lbu` at 0xd830dfc.
  The `lw` at 0xd830dd8 loads 4 bytes from [[[0x1014]+276]+180] +0x64.
  The `lw` at 0xd830ddc loads 4 bytes from [[[0x1014]+276]+180] +0x60.
  The `lw` at 0xd830de0 loads 4 bytes from [[[0x1014]+276]+180] +0x68.
  2 such `lbu` accesses load 1 byte from [[[0x1014]+276]+180] +0x98, including `lbu` at 0xd830e04, `lbu` at 0xd830e2c.
  The `lw` at 0xd830e08 loads 4 bytes from [[[0x1014]+276]+180] +0x80.
  The `lw` at 0xd830e0c loads 4 bytes from [[[0x1014]+276]+180] +0x7c.
  The `lw` at 0xd830e10 loads 4 bytes from [[[0x1014]+276]+180] +0x84.
  2 such `lbu` accesses load 1 byte from [[[0x1014]+276]+180] +0x0, including `lbu` at 0xd830e34, `lbu` at 0xd830e5c.
  The `lw` at 0xd830e38 loads 4 bytes from [[[0x1014]+276]+180] +0xa0.
  The `lw` at 0xd830e3c loads 4 bytes from [[[0x1014]+276]+180] +0x9c.
  The `lw` at 0xd830e40 loads 4 bytes from [[[0x1014]+276]+180] +0xa4.
  The `lw` at 0xd830e68 loads 4 bytes from [[[0x1014]+276]+180] +0x8.
  The `lw` at 0xd830e6c loads 4 bytes from [[[0x1014]+276]+180] +0x4.
  The `lw` at 0xd830e70 loads 4 bytes from [[[0x1014]+276]+180] +0xc.
  The `jalr` at 0xd830d90 calls (unknown callee) with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd830dc0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd830df0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd830e20 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd830e50 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd830e80 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `bnel` branch at 0xd830d70 targets 0xd830da0, is taken when s2(=0x1) != t7(=[[[[0x1014]+276]+180]+32]:1), and falls through when s2(=0x1) == t7(=[[[[0x1014]+276]+180]+32]:1); its branch-likely delay slot `lbu t1,60(s0)` at 0xd830d74 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd830da0 targets 0xd830dd0, is taken when s2(=0x1) != t1(=[[[[0x1014]+276]+180]+60]:1), and falls through when s2(=0x1) == t1(=[[[[0x1014]+276]+180]+60]:1); its branch-likely delay slot `lbu t5,92(s0)` at 0xd830da4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd830dd0 targets 0xd830e00, is taken when s2(=0x1) != t5(=[[[[0x1014]+276]+180]+92]:1), and falls through when s2(=0x1) == t5(=[[[[0x1014]+276]+180]+92]:1); its branch-likely delay slot `lbu t0,120(s0)` at 0xd830dd4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd830e00 targets 0xd830e30, is taken when s2(=0x1) != t0(=[[[[0x1014]+276]+180]+120]:1), and falls through when s2(=0x1) == t0(=[[[[0x1014]+276]+180]+120]:1); its branch-likely delay slot `lbu t4,152(s0)` at 0xd830e04 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd830e30 targets 0xd830e60, is taken when s2(=0x1) != t4(=[[[[0x1014]+276]+180]+152]:1), and falls through when s2(=0x1) == t4(=[[[[0x1014]+276]+180]+152]:1); its branch-likely delay slot `lbu t8,0(s0)` at 0xd830e34 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd830e60 targets 0xd830e90, is taken when s2(=0x1) != t8(=[[[[0x1014]+276]+180]]:1), and falls through when s2(=0x1) == t8(=[[[[0x1014]+276]+180]]:1); its branch-likely delay slot `lw ra,36(sp)` at 0xd830e64 runs only when taken and is annulled on fall-through.
  The return at 0xd830e9c has v0 = one of ?, ret(?).
- `__glx_RenderMode` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd830ea4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd830ea4-0xd83107c (472 bytes).
  It occupies 472 bytes.
  The `lw` at 0xd830eb4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd830ecc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd830ed0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd830ee8 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd830efc, `lw` at 0xd831028.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd830f08, `lw` at 0xd830f20, `lw` at 0xd830f4c.
  The `lw` at 0xd830f0c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd830f24 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd830f34, `sw` at 0xd830f50.
  The `sh` at 0xd830f58 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd830f5c, `sb` at 0xd830f88.
  The `lw` at 0xd830f60 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd830f74 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd830f78 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd830f7c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd830f80 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd830f8c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd830f98 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd830fa4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `lw` at 0xd830fcc loads 4 bytes from [[0x1014]+276] +0x40.
  The `lw` at 0xd830fe8 loads 4 bytes from [[0x1014]+276] +0x44.
  The `lw` at 0xd831010 loads 4 bytes from [[0x1014]+276] +0x48.
  The `sw` at 0xd831024 stores 4 bytes to [[0x1014]+276] +0x40.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd831030, `lw` at 0xd831048.
  The `lw` at 0xd831034 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd830ef4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd830f14 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd830f40 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd830fac calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-56, a2=0x0, a3=0x0.
  The `jalr` at 0xd830fec calls _XRead with a0=[[[0x1014]+276]+216], a1=[[[0x1014]+276]+68], a2=?, a3=?.
  The `jalr` at 0xd831014 calls _XRead with a0=[[[0x1014]+276]+216], a1=[[[0x1014]+276]+72], a2=?, a3=?.
  The `jalr` at 0xd83103c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831058 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `bne` branch at 0xd830ed4 targets 0xd830ee4, is taken when v0(=[[[0x1014]+276]+216]) != 0, and falls through when v0(=[[[0x1014]+276]+216]) == 0.
  The `beq` branch at 0xd830edc targets 0xd831068 and is always taken.
  The `beq` branch at 0xd830ee4 targets 0xd831064, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd830f04 targets 0xd830f24, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd830f08 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd830f30 targets 0xd830f54, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd830f34 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd830fc4 targets 0xd831028, is taken when t0(=a0) != t1(?), and falls through when t0(=a0) == t1(?).
  The `bnel` branch at 0xd830fd8 targets 0xd831000, is taken when v0(=[[[0x1014]+276]+64]) != at(=0x1c01), and falls through when v0(=[[[0x1014]+276]+64]) == at(=0x1c01); its branch-likely delay slot `addiu at,zero,7170` at 0xd830fdc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd830ff4 targets 0xd831020 and is always taken.
  The `bne` branch at 0xd831000 targets 0xd831020, is taken when v0(=[[[0x1014]+276]+64]) != at(=0x1c02), and falls through when v0(=[[[0x1014]+276]+64]) == at(=0x1c02).
  The `beql` branch at 0xd83102c targets 0xd83104c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd831030 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd831050 targets 0xd831068, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw v0,84(sp)` at 0xd831054 runs only when taken and is annulled on fall-through.
  The return at 0xd831074 has v0 = one of -0x1, ?.
  The instructions from 0xd830ffc to 0xd830ffc are not reached by any path from the entry, and their branches are not listed.
- `__glx_GetConvolutionFilterEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83107c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83107c-0xd831308 (652 bytes).
  It occupies 652 bytes.
  The `lw` at 0xd83108c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8310b0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8310b4 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8310c4 loads 4 bytes from [[0x1014]+276] +0x4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8310d8, `lw` at 0xd8311c4, `lw` at 0xd831210.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8310e4, `lw` at 0xd8310fc, `lw` at 0xd831128.
  The `lw` at 0xd8310e8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd831100 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd831110, `sw` at 0xd83112c.
  The `sh` at 0xd831138 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83113c, `sb` at 0xd83116c.
  The `lw` at 0xd831140 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd831154 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd831158 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83115c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd831164 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd831168 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd831170 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83117c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd83118c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd831194 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd83119c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x14.
  The `lbu` at 0xd8311a0 loads 1 byte from [[0x1014]+276] +0x4c.
  The `sb` at 0xd8311a4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x18.
  The `lw` at 0xd831200 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd831218 stores 4 bytes to [[0x1014]+276] +0xb0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8312c0, `lw` at 0xd8312d8.
  The `lw` at 0xd8312c4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8310d0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8310f0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83111c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8311ac calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd8311d4 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8311f8 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83123c calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd831264 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831298 calls __glXEmptyImage with a0=[[0x1014]+276], a1=?, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xd8312ac calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8312cc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8312e8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8310b8 targets 0xd8312f8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd8310bc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8310c0 targets 0xd8312f4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd8310e0 targets 0xd831100, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8310e4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83110c targets 0xd831130, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+28) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+28) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd831110 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8311c0 targets 0xd8312bc, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd8311c4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8311e4 targets 0xd83121c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd83120c targets 0xd8312bc, is taken when t4(=[[[0x1014]+276]+176]) != 0, and falls through when t4(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd831210 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd831214 targets 0xd8312b8 and is always taken.
  The `beq` branch at 0xd831250 targets 0xd831270, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0.
  The `beql` branch at 0xd8312bc targets 0xd8312dc, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8312c0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8312e0 targets 0xd8312f8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd8312e4 runs only when taken and is annulled on fall-through.
  The return at 0xd831300 has v0 = one of ?, [[[[0x1014]+276]+216]+124].
- `__glx_Flush` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8315a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8315a4-0xd8316e8 (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xd8315b4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8315c8 loads 4 bytes from [0x1014] +0x114.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xd8, including `lw` at 0xd8315cc, `lw` at 0xd8316c4.
  The `lw` at 0xd8315dc loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8315f0, `lw` at 0xd831684.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8315fc, `lw` at 0xd831614, `lw` at 0xd831640.
  The `lw` at 0xd831600 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd831618 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd831628, `sw` at 0xd831644.
  The `sh` at 0xd83164c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd831650, `sb` at 0xd831678.
  The `lw` at 0xd831654 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd831668 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83166c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd831670 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd831674 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83167c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd831680 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83168c, `lw` at 0xd8316a4.
  The `lw` at 0xd831690 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8315e8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd831608 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831634 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd831698 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8316b4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8316c8 calls XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8315d0 targets 0xd8316d4, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8315d8 targets 0xd8316c0, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd8315f8 targets 0xd831618, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8315fc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd831624 targets 0xd831648, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd831628 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd831688 targets 0xd8316a8, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83168c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8316ac targets 0xd8316c0, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  The return at 0xd8316e0 has v0 = one of [[[0x1014]+276]+216], ret(XFlush).
- `__glx_GetIntegerv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8316e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8316e8-0xd831c04 (1308 bytes).
  It occupies 1308 bytes.
  The `lw` at 0xd8316f8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83170c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd831718 loads 4 bytes from [[0x1014]+276] +0xd8.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb4, including `lw` at 0xd831740, `lw` at 0xd831760.
  The `lw` at 0xd831790 loads 4 bytes from (a0-32875 << 0x2) +0xd84231c.
  The `lw` at 0xd8317b0 loads 4 bytes from [[0x1014]+276] +0xb8.
  The `lw` at 0xd8317e0 loads 4 bytes from (a0-3312 << 0x2) +0xd8423a8.
  The `lw` at 0xd8317f8 loads 4 bytes from [[0x1014]+276] +0xc0.
  The `lw` at 0xd831a68 loads 4 bytes from [[[0x1014]+276]+180] +0xb0.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd831a70, `sw` at 0xd831a80, `sw` at 0xd831a98.
  The `lw` at 0xd831a78 loads 4 bytes from [[[0x1014]+276]+180] +0xb4.
  The `lw` at 0xd831a88 loads 4 bytes from [[0x1014]+276] +0xbc.
  The `lw` at 0xd831aac loads 4 bytes from [[0x1014]+276] +0x4.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd831acc, `lw` at 0xd831ad4, `lw` at 0xd831ad8.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd831b00, `sw` at 0xd831b1c, `sw` at 0xd831b40.
  The `sh` at 0xd831b24 stores 2 bytes to ?.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0xd831b28, `sb` at 0xd831b4c, `sb` at 0xd831b54.
  The `lw` at 0xd831b48 loads 4 bytes from [[0x1014]+276] +0x110.
  The `lw` at 0xd831b58 loads 4 bytes from [[0x1014]+276] +0x3c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jr` at 0xd831798).
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jr` at 0xd8317e8).
  The `jalr` at 0xd831abc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xd831adc calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd831b08 calls _XFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd831b74 calls _XReply with a0=?, a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd831ba8 calls _XRead with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd831bc8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd831be4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beql` branch at 0xd831720 targets 0xd831bf4, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd831724 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd831728 targets 0xd8317a0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bnel` branch at 0xd831734 targets 0xd831750, is taken when a0 < v1(=0x80e9) (unsigned), and falls through when a0 >= v1(=0x80e9) (unsigned); its branch-likely delay slot `ori at,zero,0x808e` at 0xd831738 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83173c targets 0xd831a78, is taken when a0 == v1(=0x80e9), and falls through when a0 != v1(=0x80e9); its branch-likely delay slot `lw t9,180(s0)` at 0xd831740 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd831744 targets 0xd831aa8 and is always taken.
  The `bne` branch at 0xd831754 targets 0xd83176c, is taken when a2(=a0) < at(=0x808e) (unsigned), and falls through when a2(=a0) >= at(=0x808e) (unsigned).
  The `beql` branch at 0xd83175c targets 0xd831a68, is taken when a2(=a0) == at(=0x80e8), and falls through when a2(=a0) != at(=0x80e8); its branch-likely delay slot `lw t7,180(s0)` at 0xd831760 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd831764 targets 0xd831aa8 and is always taken.
  The `beq` branch at 0xd83177c targets 0xd831aa8, is taken when t7(=a0-32875) >= 0x23 (unsigned), and falls through when t7(=a0-32875) < 0x23 (unsigned).
  The `bne` branch at 0xd8317a4 targets 0xd8317bc, is taken when a2(=a0) < 0xd06 (unsigned), and falls through when a2(=a0) >= 0xd06 (unsigned).
  The `beql` branch at 0xd8317ac targets 0xd831aa0, is taken when a2(=a0) == at(=0xd3b), and falls through when a2(=a0) != at(=0xd3b); its branch-likely delay slot `lw t5,184(s0)` at 0xd8317b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8317b4 targets 0xd831aa8 and is always taken.
  The `bne` branch at 0xd8317c0 targets 0xd8317f0, is taken when a2(=a0) < 0xbb2 (unsigned), and falls through when a2(=a0) >= 0xbb2 (unsigned).
  The `beq` branch at 0xd8317cc targets 0xd831aa8, is taken when t8(=a0-3312) >= 0x16 (unsigned), and falls through when t8(=a0-3312) < 0x16 (unsigned).
  The `beql` branch at 0xd8317f4 targets 0xd831a88, is taken when a2(=a0) == at(=0xbb1), and falls through when a2(=a0) != at(=0xbb1); its branch-likely delay slot `lw t1,192(s0)` at 0xd8317f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8317fc targets 0xd831aa8 and is always taken.
  The `beq` branch at 0xd831a6c targets 0xd831bf0 and is always taken.
  The `beq` branch at 0xd831a7c targets 0xd831bf0 and is always taken.
  The `beq` branch at 0xd831a94 targets 0xd831bf0 and is always taken.
  The `beq` branch at 0xd831aa0 targets 0xd831bf0 and is always taken.
  The `beq` branch at 0xd831aa8 targets 0xd831bf0, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd831ad0 targets 0xd831af0, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw v1,108(a0)` at 0xd831ad4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd831afc targets 0xd831b20, is taken when t6(?) >= t7(?) (unsigned), and falls through when t6(?) < t7(?) (unsigned); its branch-likely delay slot `sw v1,100(a0)` at 0xd831b00 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd831b88 targets 0xd831b9c, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd831b94 targets 0xd831bb8 and is always taken.
  The `beql` branch at 0xd831bbc targets 0xd831bdc, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw v0,124(a0)` at 0xd831bc0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd831bdc targets 0xd831bf4, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd831be0 runs only when taken and is annulled on fall-through.
  The return at 0xd831bfc has v0 = one of [[[0x1014]+276]+216], ?.
  The instructions from 0xd83174c to 0xd83174c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd831804 to 0xd831a64 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd831a74 to 0xd831a74 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd831a84 to 0xd831a84 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd831a9c to 0xd831a9c are not reached by any path from the entry, and their branches are not listed.
- `__glx_GetFloatv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd831c04 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd831c04-0xd8324f8 (2292 bytes).
  It occupies 2292 bytes.
  The `lw` at 0xd831c14 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd831c28 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd831c34 loads 4 bytes from [[0x1014]+276] +0xd8.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb4, including `lw` at 0xd831c5c, `lw` at 0xd831c7c.
  The `lw` at 0xd831cac loads 4 bytes from (a0-32875 << 0x2) +0xd842238.
  The `lw` at 0xd831ccc loads 4 bytes from [[0x1014]+276] +0xb8.
  The `lw` at 0xd831cfc loads 4 bytes from (a0-3312 << 0x2) +0xd8422c4.
  The `lw` at 0xd831d14 loads 4 bytes from [[0x1014]+276] +0xc0.
  The `lw` at 0xd83232c loads 4 bytes from [[[0x1014]+276]+180] +0xb0.
  5 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `swc1` at 0xd832340, `swc1` at 0xd83235c, `swc1` at 0xd832380.
  The `lw` at 0xd832348 loads 4 bytes from [[[0x1014]+276]+180] +0xb4.
  The `lw` at 0xd832364 loads 4 bytes from [[0x1014]+276] +0xbc.
  The `lw` at 0xd8323a0 loads 4 bytes from [[0x1014]+276] +0x4.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8323c0, `lw` at 0xd8323c8, `lw` at 0xd8323cc.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8323f4, `sw` at 0xd832410, `sw` at 0xd832434.
  The `sh` at 0xd832418 stores 2 bytes to ?.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0xd83241c, `sb` at 0xd832440, `sb` at 0xd832448.
  The `lw` at 0xd83243c loads 4 bytes from [[0x1014]+276] +0x110.
  The `lw` at 0xd83244c loads 4 bytes from [[0x1014]+276] +0x3c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jr` at 0xd831cb4).
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jr` at 0xd831d04).
  The `jalr` at 0xd8323b0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xd8323d0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8323fc calls _XFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd832468 calls _XReply with a0=?, a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83249c calls _XRead with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd8324bc calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8324d8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beql` branch at 0xd831c3c targets 0xd8324e8, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd831c40 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd831c44 targets 0xd831cbc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bnel` branch at 0xd831c50 targets 0xd831c6c, is taken when a0 < v1(=0x80e9) (unsigned), and falls through when a0 >= v1(=0x80e9) (unsigned); its branch-likely delay slot `ori at,zero,0x808e` at 0xd831c54 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd831c58 targets 0xd832348, is taken when a0 == v1(=0x80e9), and falls through when a0 != v1(=0x80e9); its branch-likely delay slot `lw t9,180(s0)` at 0xd831c5c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd831c60 targets 0xd83239c and is always taken.
  The `bne` branch at 0xd831c70 targets 0xd831c88, is taken when a2(=a0) < at(=0x808e) (unsigned), and falls through when a2(=a0) >= at(=0x808e) (unsigned).
  The `beql` branch at 0xd831c78 targets 0xd83232c, is taken when a2(=a0) == at(=0x80e8), and falls through when a2(=a0) != at(=0x80e8); its branch-likely delay slot `lw t7,180(s0)` at 0xd831c7c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd831c80 targets 0xd83239c and is always taken.
  The `beq` branch at 0xd831c98 targets 0xd83239c, is taken when t7(=a0-32875) >= 0x23 (unsigned), and falls through when t7(=a0-32875) < 0x23 (unsigned).
  The `bne` branch at 0xd831cc0 targets 0xd831cd8, is taken when a2(=a0) < 0xd06 (unsigned), and falls through when a2(=a0) >= 0xd06 (unsigned).
  The `beql` branch at 0xd831cc8 targets 0xd832388, is taken when a2(=a0) == at(=0xd3b), and falls through when a2(=a0) != at(=0xd3b); its branch-likely delay slot `lw t5,184(s0)` at 0xd831ccc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd831cd0 targets 0xd83239c and is always taken.
  The `bne` branch at 0xd831cdc targets 0xd831d0c, is taken when a2(=a0) < 0xbb2 (unsigned), and falls through when a2(=a0) >= 0xbb2 (unsigned).
  The `beq` branch at 0xd831ce8 targets 0xd83239c, is taken when t8(=a0-3312) >= 0x16 (unsigned), and falls through when t8(=a0-3312) < 0x16 (unsigned).
  The `beql` branch at 0xd831d10 targets 0xd832364, is taken when a2(=a0) == at(=0xbb1), and falls through when a2(=a0) != at(=0xbb1); its branch-likely delay slot `lw t1,192(s0)` at 0xd831d14 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd831d18 targets 0xd83239c and is always taken.
  The `beq` branch at 0xd83233c targets 0xd8324e4 and is always taken.
  The `beq` branch at 0xd832358 targets 0xd8324e4 and is always taken.
  The `beq` branch at 0xd83237c targets 0xd8324e4 and is always taken.
  The `beq` branch at 0xd832394 targets 0xd8324e4 and is always taken.
  The `beq` branch at 0xd83239c targets 0xd8324e4, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd8323c4 targets 0xd8323e4, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw v1,108(a0)` at 0xd8323c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8323f0 targets 0xd832414, is taken when t6(?) >= t7(?) (unsigned), and falls through when t6(?) < t7(?) (unsigned); its branch-likely delay slot `sw v1,100(a0)` at 0xd8323f4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83247c targets 0xd832490, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd832488 targets 0xd8324ac and is always taken.
  The `beql` branch at 0xd8324b0 targets 0xd8324d0, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw v0,124(a0)` at 0xd8324b4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8324d0 targets 0xd8324e8, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8324d4 runs only when taken and is annulled on fall-through.
  The return at 0xd8324f0 has v0 = one of [[[0x1014]+276]+216], ?.
  The instructions from 0xd831c68 to 0xd831c68 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd831d20 to 0xd832328 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd832344 to 0xd832344 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd832360 to 0xd832360 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd832384 to 0xd832384 are not reached by any path from the entry, and their branches are not listed.
- `__glx_GetDoublev` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8324f8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8324f8-0xd832e68 (2416 bytes).
  It occupies 2416 bytes.
  The `lw` at 0xd832508 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83251c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd832528 loads 4 bytes from [[0x1014]+276] +0xd8.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb4, including `lw` at 0xd832550, `lw` at 0xd832570.
  The `lw` at 0xd8325a0 loads 4 bytes from (a0-32875 << 0x2) +0xd842154.
  The `lw` at 0xd8325c0 loads 4 bytes from [[0x1014]+276] +0xb8.
  The `lw` at 0xd8325f0 loads 4 bytes from (a0-3312 << 0x2) +0xd8421e0.
  The `lw` at 0xd832608 loads 4 bytes from [[0x1014]+276] +0xc0.
  The `lw` at 0xd832c8c loads 4 bytes from [[[0x1014]+276]+180] +0xb0.
  4 such `sdc1` accesses store 8 bytes to a1 (arg1 at entry) +0x0, including `sdc1` at 0xd832ca0, `sdc1` at 0xd832cbc, `sdc1` at 0xd832ce0.
  The `lw` at 0xd832ca8 loads 4 bytes from [[[0x1014]+276]+180] +0xb4.
  The `lw` at 0xd832cc4 loads 4 bytes from [[0x1014]+276] +0xbc.
  The `lw` at 0xd832d00 loads 4 bytes from [[0x1014]+276] +0x4.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd832d20, `lw` at 0xd832d28, `lw` at 0xd832d2c.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd832d54, `sw` at 0xd832d70, `sw` at 0xd832d94.
  The `sh` at 0xd832d78 stores 2 bytes to ?.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0xd832d7c, `sb` at 0xd832da0, `sb` at 0xd832da8.
  The `lw` at 0xd832d9c loads 4 bytes from [[0x1014]+276] +0x110.
  The `lw` at 0xd832dac loads 4 bytes from [[0x1014]+276] +0x3c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jr` at 0xd8325a8).
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jr` at 0xd8325f8).
  The `jalr` at 0xd832d10 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xd832d30 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd832d5c calls _XFlush with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd832dc8 calls _XReply with a0=?, a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd832df0 calls memcpy with a0=a1 at entry (arg1), a1=sp-36, a2=0x8, a3=?.
  The `jalr` at 0xd832e0c calls _XRead with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xd832e2c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd832e48 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beql` branch at 0xd832530 targets 0xd832e58, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd832534 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd832538 targets 0xd8325b0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bnel` branch at 0xd832544 targets 0xd832560, is taken when a0 < v1(=0x80e9) (unsigned), and falls through when a0 >= v1(=0x80e9) (unsigned); its branch-likely delay slot `ori at,zero,0x808e` at 0xd832548 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83254c targets 0xd832ca8, is taken when a0 == v1(=0x80e9), and falls through when a0 != v1(=0x80e9); its branch-likely delay slot `lw t9,180(s0)` at 0xd832550 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd832554 targets 0xd832cfc and is always taken.
  The `bne` branch at 0xd832564 targets 0xd83257c, is taken when a2(=a0) < at(=0x808e) (unsigned), and falls through when a2(=a0) >= at(=0x808e) (unsigned).
  The `beql` branch at 0xd83256c targets 0xd832c8c, is taken when a2(=a0) == at(=0x80e8), and falls through when a2(=a0) != at(=0x80e8); its branch-likely delay slot `lw t7,180(s0)` at 0xd832570 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd832574 targets 0xd832cfc and is always taken.
  The `beq` branch at 0xd83258c targets 0xd832cfc, is taken when t7(=a0-32875) >= 0x23 (unsigned), and falls through when t7(=a0-32875) < 0x23 (unsigned).
  The `bne` branch at 0xd8325b4 targets 0xd8325cc, is taken when a2(=a0) < 0xd06 (unsigned), and falls through when a2(=a0) >= 0xd06 (unsigned).
  The `beql` branch at 0xd8325bc targets 0xd832ce8, is taken when a2(=a0) == at(=0xd3b), and falls through when a2(=a0) != at(=0xd3b); its branch-likely delay slot `lw t5,184(s0)` at 0xd8325c0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8325c4 targets 0xd832cfc and is always taken.
  The `bne` branch at 0xd8325d0 targets 0xd832600, is taken when a2(=a0) < 0xbb2 (unsigned), and falls through when a2(=a0) >= 0xbb2 (unsigned).
  The `beq` branch at 0xd8325dc targets 0xd832cfc, is taken when t8(=a0-3312) >= 0x16 (unsigned), and falls through when t8(=a0-3312) < 0x16 (unsigned).
  The `beql` branch at 0xd832604 targets 0xd832cc4, is taken when a2(=a0) == at(=0xbb1), and falls through when a2(=a0) != at(=0xbb1); its branch-likely delay slot `lw t1,192(s0)` at 0xd832608 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83260c targets 0xd832cfc and is always taken.
  The `beq` branch at 0xd832c9c targets 0xd832e54 and is always taken.
  The `beq` branch at 0xd832cb8 targets 0xd832e54 and is always taken.
  The `beq` branch at 0xd832cdc targets 0xd832e54 and is always taken.
  The `beq` branch at 0xd832cf4 targets 0xd832e54 and is always taken.
  The `beq` branch at 0xd832cfc targets 0xd832e54, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd832d24 targets 0xd832d44, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw v1,108(a0)` at 0xd832d28 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd832d50 targets 0xd832d74, is taken when t6(?) >= t7(?) (unsigned), and falls through when t6(?) < t7(?) (unsigned); its branch-likely delay slot `sw v1,100(a0)` at 0xd832d54 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd832ddc targets 0xd832e00, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd832df8 targets 0xd832e18 and is always taken.
  The `beql` branch at 0xd832e20 targets 0xd832e40, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw v0,124(a0)` at 0xd832e24 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd832e40 targets 0xd832e58, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd832e44 runs only when taken and is annulled on fall-through.
  The return at 0xd832e60 has v0 = one of [[[0x1014]+276]+216], ?.
  The instructions from 0xd83255c to 0xd83255c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd832614 to 0xd832c88 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd832ca4 to 0xd832ca4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd832cc0 to 0xd832cc0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd832ce4 to 0xd832ce4 are not reached by any path from the entry, and their branches are not listed.
- `__glx_Finish` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd832e68 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd832e68-0xd832fb8 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0xd832e78 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd832e8c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd832e90 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd832ea0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd832eb4, `lw` at 0xd832f64.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd832ec0, `lw` at 0xd832ed8, `lw` at 0xd832f04.
  The `lw` at 0xd832ec4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd832edc loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd832eec, `sw` at 0xd832f08.
  The `sh` at 0xd832f10 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd832f14, `sb` at 0xd832f40.
  The `lw` at 0xd832f18 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd832f2c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd832f30 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd832f34 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd832f38 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd832f44 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd832f50 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd832f70, `lw` at 0xd832f88.
  The `lw` at 0xd832f74 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd832eac calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd832ecc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd832ef8 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd832f5c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0.
  The `jalr` at 0xd832f7c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd832f98 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd832e94 targets 0xd832fa4, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd832e9c targets 0xd832fa4, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd832ebc targets 0xd832edc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd832ec0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd832ee8 targets 0xd832f0c, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd832eec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd832f6c targets 0xd832f8c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd832f70 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd832f90 targets 0xd832fa8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd832f94 runs only when taken and is annulled on fall-through.
  The return at 0xd832fb0 has v0 = one of [[[[0x1014]+276]+216]+124], ?.
- `__glx_GetSeparableFilterEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd832fb8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd832fb8-0xd833404 (1100 bytes).
  It occupies 1100 bytes.
  The `lw` at 0xd832fc8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd832fe8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd832ff0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd833000 loads 4 bytes from [[0x1014]+276] +0x4.
  6 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd833014, `lw` at 0xd8331b8, `lw` at 0xd8331c0.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd833020, `lw` at 0xd833038, `lw` at 0xd833064.
  The `lw` at 0xd833024 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83303c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd83306c stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd833078 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83307c, `sb` at 0xd8330ac.
  The `lw` at 0xd833080 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd833094 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd833098 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd83309c, `lw` at 0xd8330b0, `lw` at 0xd8331b0.
  The `sw` at 0xd8330a4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd8330a8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd8330bc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8330cc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd8330d4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd8330dc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x14.
  The `lbu` at 0xd8330e0 loads 1 byte from ?.
  The `sb` at 0xd8330e4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x18.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8331bc, `sw` at 0xd8332e4.
  6 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8331c8, `lw` at 0xd8331e0, `lw` at 0xd8332f0.
  3 such `lw` accesses load 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4, including `lw` at 0xd8331cc, `lw` at 0xd8332f4, `lw` at 0xd8333c0.
  The `jalr` at 0xd83300c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83302c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd833058 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8330ec calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd833134 calls __glXImageSize with a0=?, a1=0x1, a2=0x1, a3=0x1.
  The `jalr` at 0xd833164 calls __glXImageSize with a0=?, a1=0x1, a2=0x1, a3=0x1.
  The `jalr` at 0xd83317c calls malloc with a0=ret(__glXImageSize), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83319c calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8331d4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8331f0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd833210 calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=ret(__glXImageSize), a3=?.
  The `jalr` at 0xd833238 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=ret(__glXImageSize), a3=?.
  The `jalr` at 0xd83326c calls __glXEmptyImage with a0=?, a1=?, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0xd833280 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd833294 calls malloc with a0=ret(__glXImageSize), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8332c4 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8332fc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd833318 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd833338 calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=ret(__glXImageSize), a3=?.
  The `jalr` at 0xd833360 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=ret(__glXImageSize), a3=?.
  The `jalr` at 0xd833394 calls __glXEmptyImage with a0=?, a1=?, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0xd8333a8 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8333c8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8333e4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd832ff4 targets 0xd8333f4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd832ff8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd832ffc targets 0xd8333f0, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd83301c targets 0xd83303c, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd833020 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd833048 targets 0xd83306c, is taken when t1(=[[[[0x1014]+276]+216]+112]) >= t2(=[[[[0x1014]+276]+216]+108]+28) (unsigned), and falls through when t1(=[[[[0x1014]+276]+216]+112]) < t2(=[[[[0x1014]+276]+216]+108]+28) (unsigned); its branch-likely delay slot `lw t0,140(sp)` at 0xd83304c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd833104 targets 0xd8333b4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xd833188 targets 0xd833200, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd8331b4 targets 0xd8331c4, is taken when t4(?) != 0, and falls through when t4(?) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd8331b8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8331c4 targets 0xd8331e4, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8331c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8331e8 targets 0xd8333f4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd8331ec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8331f8 targets 0xd8333f0 and is always taken.
  The `beq` branch at 0xd833224 targets 0xd833244, is taken when (a2(=ret(__glXImageSize)) & 0x3) == 0, and falls through when (a2(=ret(__glXImageSize)) & 0x3) != 0.
  The `bne` branch at 0xd8332a0 targets 0xd833328, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd8332dc targets 0xd8332ec, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd8332e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8332ec targets 0xd83330c, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8332f0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd833310 targets 0xd8333f4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd833314 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd833320 targets 0xd8333f0 and is always taken.
  The `beq` branch at 0xd83334c targets 0xd83336c, is taken when (a2(=ret(__glXImageSize)) & 0x3) == 0, and falls through when (a2(=ret(__glXImageSize)) & 0x3) != 0.
  The `beql` branch at 0xd8333b8 targets 0xd8333d8, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8333bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8333dc targets 0xd8333f4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd8333e0 runs only when taken and is annulled on fall-through.
  The return at 0xd8333fc has v0 = one of ?, [[[[0x1014]+276]+216]+124].
- `__glx_GetPolygonStipple` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd833404 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd833404-0xd8335b8 (436 bytes).
  It occupies 436 bytes.
  The `lw` at 0xd833414 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83342c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd833430 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd833440 loads 4 bytes from [[0x1014]+276] +0x4.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd833454, `lw` at 0xd833518, `lw` at 0xd833568.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd833460, `lw` at 0xd833478, `lw` at 0xd8334a4.
  The `lw` at 0xd833464 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83347c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83348c, `sw` at 0xd8334a8.
  The `sh` at 0xd8334b0 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8334b4, `sb` at 0xd8334e0.
  The `lw` at 0xd8334b8 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8334cc stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8334d0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8334d4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8334d8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8334e4 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sb` at 0xd8334e8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8334f0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd833570, `lw` at 0xd833588.
  The `lw` at 0xd833574 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83344c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83346c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd833498 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd833500 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0.
  The `jalr` at 0xd833528 calls _XRead with a0=[[[0x1014]+276]+216], a1=sp-176, a2=0x80, a3=?.
  The `jalr` at 0xd83355c calls __glXEmptyImage with a0=[[0x1014]+276], a1=0x20, a2=0x20, a3=0x1900.
  The `jalr` at 0xd83357c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd833598 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd833434 targets 0xd8335a8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd833438 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83343c targets 0xd8335a4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd83345c targets 0xd83347c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd833460 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd833488 targets 0xd8334ac, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83348c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd833514 targets 0xd83356c, is taken when t7(?) != at(=0x20), and falls through when t7(?) == at(=0x20); its branch-likely delay slot `lw v0,1232(s0)` at 0xd833518 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83356c targets 0xd83358c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd833570 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd833590 targets 0xd8335a8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd833594 runs only when taken and is annulled on fall-through.
  The return at 0xd8335b0 has v0 = one of ?, [[[[0x1014]+276]+216]+124].
- `__glx_GetTexImage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8335b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8335b8-0xd8338c0 (776 bytes).
  It occupies 776 bytes.
  The `lw` at 0xd8335c8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8335e8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8335f0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd833600 loads 4 bytes from [[0x1014]+276] +0x4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd833614, `lw` at 0xd833700, `lw` at 0xd833750.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd833620, `lw` at 0xd833638, `lw` at 0xd833664.
  The `lw` at 0xd833624 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83363c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd83366c stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd833674 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd833678, `sb` at 0xd8336a4.
  The `lw` at 0xd83367c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd833690 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd833694 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd833698, `lw` at 0xd8336a8, `lw` at 0xd833748.
  The `sb` at 0xd83369c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd8336b4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd8336c0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8336c8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd8336d0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `sw` at 0xd8336d8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x14.
  The `lbu` at 0xd8336dc loads 1 byte from ?.
  The `sb` at 0xd8336e0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x18.
  The `sw` at 0xd833758 stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd833878, `lw` at 0xd833890.
  The `lw` at 0xd83387c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83360c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83362c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd833658 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8336e8 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0.
  The `jalr` at 0xd833710 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd833734 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83377c calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd8337a4 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83380c calls __glXEmptyImage with a0=?, a1=?, a2=?, a3=a2 at entry (arg2).
  The `jalr` at 0xd833850 calls __glXEmptyImage3D4D with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd833864 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd833884 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8338a0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8335f4 targets 0xd8338b0, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd8335f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8335fc targets 0xd8338ac, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd83361c targets 0xd83363c, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd833620 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd833648 targets 0xd83366c, is taken when t1(=[[[[0x1014]+276]+216]+112]) >= t2(=[[[[0x1014]+276]+216]+108]+28) (unsigned), and falls through when t1(=[[[[0x1014]+276]+216]+112]) < t2(=[[[[0x1014]+276]+216]+108]+28) (unsigned); its branch-likely delay slot `lw t0,140(sp)` at 0xd83364c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8336fc targets 0xd833874, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd833700 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd833720 targets 0xd83375c, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd83374c targets 0xd833874, is taken when t7(?) != 0, and falls through when t7(?) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd833750 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd833754 targets 0xd833870 and is always taken.
  The `beql` branch at 0xd833790 targets 0xd8337b4, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0; its branch-likely delay slot `lw v0,144(sp)` at 0xd833794 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8337bc targets 0xd8337ec, is taken when v0(=a0) == at(=0xde0), and falls through when v0(=a0) != at(=0xde0).
  The `beq` branch at 0xd8337c8 targets 0xd8337ec, is taken when v0(=a0) == at(=0xde1), and falls through when v0(=a0) != at(=0xde1).
  The `beq` branch at 0xd8337d0 targets 0xd83381c, is taken when v0(=a0) == at(=0x806f), and falls through when v0(=a0) != at(=0x806f).
  The `beql` branch at 0xd8337dc targets 0xd833820, is taken when v0(=a0) == at(=0x8134), and falls through when v0(=a0) != at(=0x8134); its branch-likely delay slot `lw t9,92(sp)` at 0xd8337e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8337e4 targets 0xd83385c and is always taken.
  The `beq` branch at 0xd833814 targets 0xd83385c and is always taken.
  The `beql` branch at 0xd833874 targets 0xd833894, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd833878 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd833898 targets 0xd8338b0, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd83389c runs only when taken and is annulled on fall-through.
  The return at 0xd8338b8 has v0 = one of ?, [[[[0x1014]+276]+216]+124].
- `__glx_GetPointervEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd833b4c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd833b4c-0xd833c58 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0xd833b58 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd833b60 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd833b64 loads 4 bytes from [[0x1014]+276] +0xd8.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd833b88, `lw` at 0xd833bc0.
  The `lw` at 0xd833b98 loads 4 bytes from (a0-32910 << 0x2) +0xd842418.
  The `lw` at 0xd833bb8 loads 4 bytes from [[0x1014]+276] +0x48.
  The `lw` at 0xd833c24 loads 4 bytes from [[0x1014]+276] +0x44.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xd833c2c, `sw` at 0xd833c38.
  The `sw` at 0xd833c4c stores 4 bytes to [[0x1014]+276] +0xb0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd833ba0).
  The `beq` branch at 0xd833b68 targets 0xd833c50, is taken when v1(=[[[0x1014]+276]+216]) == 0, and falls through when v1(=[[[0x1014]+276]+216]) != 0.
  The `bne` branch at 0xd833b70 targets 0xd833ba8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beql` branch at 0xd833b84 targets 0xd833c40, is taken when t7(=a0-32910) >= 0x6 (unsigned), and falls through when t7(=a0-32910) < 0x6 (unsigned); its branch-likely delay slot `lw t2,176(v0)` at 0xd833b88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd833bac targets 0xd833c24, is taken when a0 == at(=0xdf0), and falls through when a0 != at(=0xdf0).
  The `beql` branch at 0xd833bb4 targets 0xd833c34, is taken when a0 == at(=0xdf3), and falls through when a0 != at(=0xdf3); its branch-likely delay slot `lw t1,72(v0)` at 0xd833bb8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd833bbc targets 0xd833c40 and is always taken.
  The `bne` branch at 0xd833c44 targets 0xd833c50, is taken when t2(=[[[0x1014]+276]+176]) != 0, and falls through when t2(=[[[0x1014]+276]+176]) == 0.
  The return at 0xd833c28 has v0 = [[0x1014]+276].
  The return at 0xd833c34 has v0 = [[0x1014]+276].
  The return at 0xd833c50 has v0 = [[0x1014]+276].
  The instructions from 0xd833bc4 to 0xd833c20 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd833c30 to 0xd833c30 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd833c3c to 0xd833c3c are not reached by any path from the entry, and their branches are not listed.
- `__glx_IsEnabled` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd833c5c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd833c5c-0xd833e58 (508 bytes).
  It occupies 508 bytes.
  The `lw` at 0xd833c6c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd833c84 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd833c90 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd833cc4 loads 4 bytes from (a0-32884 << 0x2) +0xd842400.
  The `lw` at 0xd833d20 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd833d34, `lw` at 0xd833dec.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd833d40, `lw` at 0xd833d58, `lw` at 0xd833d84.
  The `lw` at 0xd833d44 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd833d5c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd833d6c, `sw` at 0xd833d88.
  The `sh` at 0xd833d90 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd833d94, `sb` at 0xd833dc0.
  The `lw` at 0xd833d98 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd833dac stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd833db0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd833db4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd833db8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd833dc4 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd833dd0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd833ddc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd833dfc, `lw` at 0xd833e1c.
  The `lw` at 0xd833e04 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd833ccc).
  The `jalr` at 0xd833d2c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd833d4c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd833d78 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd833de4 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd833e0c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd833e30 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `bne` branch at 0xd833c9c targets 0xd833cac, is taken when s0(=[[[0x1014]+276]+216]) != 0, and falls through when s0(=[[[0x1014]+276]+216]) == 0.
  The `beq` branch at 0xd833ca4 targets 0xd833e44 and is always taken.
  The `beq` branch at 0xd833cb0 targets 0xd833d1c, is taken when t8(=a0-32884) >= 0x6 (unsigned), and falls through when t8(=a0-32884) < 0x6 (unsigned).
  The `beq` branch at 0xd833d1c targets 0xd833e40, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd833d3c targets 0xd833d5c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd833d40 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd833d68 targets 0xd833d8c, is taken when t5(=[[[[0x1014]+276]+216]+112]) >= t6(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t5(=[[[[0x1014]+276]+216]+112]) < t6(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd833d6c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd833df8 targets 0xd833e20, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd833dfc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd833e24 targets 0xd833e44, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `or v0,v1,zero` at 0xd833e28 runs only when taken and is annulled on fall-through.
  The return at 0xd833e50 has v0 = one of 0x0, ?.
  The instructions from 0xd833cd4 to 0xd833d18 are not reached by any path from the entry, and their branches are not listed.
- `__glXInit` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd833e98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd833e98-0xd833fe8 (336 bytes).
  It occupies 336 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd833f90, `lw` at 0xd833fa0, `lw` at 0xd833fa8.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd833f9c, `sw` at 0xd833fa4, `sw` at 0xd833fb0.
  The `sw` at 0xd833fc8 stores 4 bytes to abs 0x1014.
  The `jalr` at 0xd833ebc calls open with a0=0xd840cc8, a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd833ed8 calls getpagesize with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd833f0c calls mmap with a0=?, a1=0x1000, a2=0x3, a3=0x92.
  The `jalr` at 0xd833f38 calls fprintf with a0=sym(__iob)+32, a1=0xd840cd4, a2=ret(mmap), a3=?.
  The `jalr` at 0xd833f4c calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0xd833f64 calls perror with a0=0xd840cfc, a1=?, a2=?, a3=?.
  The `jalr` at 0xd833f78 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0xd833fcc calls __glXInitDummyContext with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd833ecc targets 0xd833f5c, is taken when v0(=ret(open)) == at(=-0x1), and falls through when v0(=ret(open)) != at(=-0x1).
  The `beq` branch at 0xd833f20 targets 0xd833f44, is taken when v0(=ret(mmap)) == t7(?), and falls through when v0(=ret(mmap)) != t7(?).
  The `beq` branch at 0xd833f54 targets 0xd833f84 and is always taken.
  The `bne` branch at 0xd833fac targets 0xd833f90, is taken when t9(?) != t2(=sym(__glx_nopDispatch)+1884), and falls through when t9(?) == t2(=sym(__glx_nopDispatch)+1884).
  The return at 0xd833fe0 has v0 = ret(__glXInitDummyContext).
- `__glx_GetString` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd833fe8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd833fe8-0xd8342dc (756 bytes).
  It occupies 756 bytes.
  The `lw` at 0xd833ff8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83400c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd834018 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd834048 loads 4 bytes from [[0x1014]+276] +0x104.
  The `lw` at 0xd834054 loads 4 bytes from [[0x1014]+276] +0xf8.
  The `lw` at 0xd834068 loads 4 bytes from [[0x1014]+276] +0xfc.
  The `lw` at 0xd83407c loads 4 bytes from [[0x1014]+276] +0x100.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd8340a4, `lw` at 0xd8341d0.
  2 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xb0, including `sw` at 0xd8340b0, `sw` at 0xd8341e8.
  The `lw` at 0xd8340c4 loads 4 bytes from [[0x1014]+276] +0x4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8340dc, `lw` at 0xd8341e0, `lw` at 0xd834268.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8340e8, `lw` at 0xd834100, `lw` at 0xd83412c.
  The `lw` at 0xd8340ec loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd834104 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd834114, `sw` at 0xd834130.
  The `sh` at 0xd834138 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83413c, `sb` at 0xd834168.
  The `lw` at 0xd834140 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd834154 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd834158 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83415c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd834160 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83416c loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd834178 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd834184 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd834270 stores 4 bytes to [[0x1014]+276] +0xf8.
  The `sw` at 0xd834278 stores 4 bytes to [[0x1014]+276] +0xfc.
  The `sw` at 0xd834280 stores 4 bytes to [[0x1014]+276] +0x100.
  The `sw` at 0xd834284 stores 4 bytes to [[0x1014]+276] +0x104.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd834290, `lw` at 0xd8342a8.
  The `lw` at 0xd834294 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8340d4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xd8340f4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd834120 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83418c calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd8341a4 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8341c8 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8341fc calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd834224 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83429c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8342b8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `bne` branch at 0xd83401c targets 0xd83402c, is taken when v0(=[[[0x1014]+276]+216]) != 0, and falls through when v0(=[[[0x1014]+276]+216]) == 0.
  The `beq` branch at 0xd834024 targets 0xd8342c8 and is always taken.
  The `beq` branch at 0xd83402c targets 0xd834054, is taken when a2(=a0) == at(=0x1f00), and falls through when a2(=a0) != at(=0x1f00).
  The `beq` branch at 0xd834034 targets 0xd834068, is taken when a2(=a0) == at(=0x1f01), and falls through when a2(=a0) != at(=0x1f01).
  The `beq` branch at 0xd83403c targets 0xd83407c, is taken when a2(=a0) == at(=0x1f02), and falls through when a2(=a0) != at(=0x1f02).
  The `beql` branch at 0xd834044 targets 0xd834094, is taken when a2(=a0) == at(=0x1f03), and falls through when a2(=a0) != at(=0x1f03); its branch-likely delay slot `lw v1,260(s1)` at 0xd834048 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83404c targets 0xd8340a4 and is always taken.
  The `beql` branch at 0xd834058 targets 0xd8340c0, is taken when v1(=[[[0x1014]+276]+248]) == 0, and falls through when v1(=[[[0x1014]+276]+248]) != 0; its branch-likely delay slot `or s0,v0,zero` at 0xd83405c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd834060 targets 0xd8342c8 and is always taken.
  The `beql` branch at 0xd83406c targets 0xd8340c0, is taken when v1(=[[[0x1014]+276]+252]) == 0, and falls through when v1(=[[[0x1014]+276]+252]) != 0; its branch-likely delay slot `or s0,v0,zero` at 0xd834070 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd834074 targets 0xd8342c8 and is always taken.
  The `beql` branch at 0xd834080 targets 0xd8340c0, is taken when v1(=[[[0x1014]+276]+256]) == 0, and falls through when v1(=[[[0x1014]+276]+256]) != 0; its branch-likely delay slot `or s0,v0,zero` at 0xd834084 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd834088 targets 0xd8342c8 and is always taken.
  The `beql` branch at 0xd834094 targets 0xd8340c0, is taken when v1(=[[[0x1014]+276]+260]) == 0, and falls through when v1(=[[[0x1014]+276]+260]) != 0; its branch-likely delay slot `or s0,v0,zero` at 0xd834098 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83409c targets 0xd8342c8 and is always taken.
  The `bne` branch at 0xd8340a8 targets 0xd8340b4, is taken when t7(=[[[0x1014]+276]+176]) != 0, and falls through when t7(=[[[0x1014]+276]+176]) == 0.
  The `beq` branch at 0xd8340b4 targets 0xd8342c8 and is always taken.
  The `beq` branch at 0xd8340c0 targets 0xd8342c4, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd8340e4 targets 0xd834104, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8340e8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd834110 targets 0xd834134, is taken when t0(=[[[[0x1014]+276]+216]+112]) >= t1(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t0(=[[[[0x1014]+276]+216]+112]) < t1(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd834114 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd8341b4 targets 0xd8341ec, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd8341dc targets 0xd83428c, is taken when t1(=[[[0x1014]+276]+176]) != 0, and falls through when t1(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd8341e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8341e4 targets 0xd834288 and is always taken.
  The `beql` branch at 0xd834210 targets 0xd834234, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0; its branch-likely delay slot `lw v0,112(sp)` at 0xd834214 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83423c targets 0xd83426c, is taken when v0(=a0) == at(=0x1f00), and falls through when v0(=a0) != at(=0x1f00).
  The `beq` branch at 0xd834244 targets 0xd834274, is taken when v0(=a0) == at(=0x1f01), and falls through when v0(=a0) != at(=0x1f01).
  The `beq` branch at 0xd834250 targets 0xd83427c, is taken when v0(=a0) == at(=0x1f02), and falls through when v0(=a0) != at(=0x1f02).
  The `beq` branch at 0xd83425c targets 0xd834284, is taken when v0(=a0) == at(=0x1f03), and falls through when v0(=a0) != at(=0x1f03).
  The `beq` branch at 0xd834264 targets 0xd83428c and is always taken.
  The `beq` branch at 0xd83426c targets 0xd834288 and is always taken.
  The `beq` branch at 0xd834274 targets 0xd834288 and is always taken.
  The `beq` branch at 0xd83427c targets 0xd834288 and is always taken.
  The `beql` branch at 0xd83428c targets 0xd8342ac, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd834290 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8342b0 targets 0xd8342c8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw v0,56(sp)` at 0xd8342b4 runs only when taken and is annulled on fall-through.
  The return at 0xd8342d4 has v0 = one of 0x0, [[[0x1014]+276]+248], [[[0x1014]+276]+252], [[[0x1014]+276]+256], [[[0x1014]+276]+260], ret(malloc), ?.
  The instructions from 0xd834090 to 0xd834090 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8340bc to 0xd8340bc are not reached by any path from the entry, and their branches are not listed.
- `isNotProxy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8342dc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8342dc-0xd8344d0 (500 bytes).
  It occupies 500 bytes.
  The `lw` at 0xd8342f4 loads 4 bytes from a0 (arg0 at entry) +0x108.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0xd834304, `lw` at 0xd8343c0.
  The `lw` at 0xd834448 loads 4 bytes from ?.
  2 such `lbu` accesses load 1 byte from ret(strchr) +0x0, including `lbu` at 0xd83446c, `lbu` at 0xd834484.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd83449c, `lbu` at 0xd8344ac, `lbu` at 0xd8344b8.
  The `jalr` at 0xd834328 calls open with a0=0xd840d08, a1=0x802, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xd834350 calls fcntl with a0=ret(open), a1=0x2, a2=0x5, a3=?.
  The `jalr` at 0xd834368 calls close with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd834388 calls ioctl with a0=?, a1=0x65, a2=0x0, a3=?.
  The `jalr` at 0xd8343a0 calls close with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd8343dc calls close with a0=?, a1=0x66, a2=sp-28, a3=?.
  The `jalr` at 0xd834400 calls ioctl with a0=?, a1=0x66, a2=sp-28, a3=?.
  The `jalr` at 0xd834418 calls close with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd834430 calls close with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83444c calls strchr with a0=?, a1=0x3a, a2=?, a3=?.
  The `bne` branch at 0xd83430c targets 0xd83431c, is taken when t7(=[a0+36]) < 0x40 (signed), and falls through when t7(=[a0+36]) >= 0x40 (signed).
  The `beq` branch at 0xd834314 targets 0xd8344c0 and is always taken.
  The `bgez` branch at 0xd834334 targets 0xd834344, is taken when v0(=ret(open)) >= 0 (signed), and falls through when v0(=ret(open)) < 0 (signed).
  The `beq` branch at 0xd83433c targets 0xd8344c0 and is always taken.
  The `bgez` branch at 0xd83435c targets 0xd83437c, is taken when v0(=ret(fcntl)) >= 0 (signed), and falls through when v0(=ret(fcntl)) < 0 (signed).
  The `beq` branch at 0xd834374 targets 0xd8344c0 and is always taken.
  The `bgtz` branch at 0xd834394 targets 0xd8343b4, is taken when v0(=ret(ioctl)) > 0 (signed), and falls through when v0(=ret(ioctl)) <= 0 (signed).
  The `beq` branch at 0xd8343ac targets 0xd8344c0 and is always taken.
  The `bnel` branch at 0xd8343d0 targets 0xd8343f4, is taken when v1(=[a0+36]) < v0(=ret(ioctl)) (signed), and falls through when v1(=[a0+36]) >= v0(=ret(ioctl)) (signed); its branch-likely delay slot `sw t9,92(sp)` at 0xd8343d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8343e8 targets 0xd8344c0 and is always taken.
  The `bgez` branch at 0xd83440c targets 0xd83442c, is taken when v0(=ret(ioctl)) >= 0 (signed), and falls through when v0(=ret(ioctl)) < 0 (signed).
  The `beq` branch at 0xd834424 targets 0xd8344c0 and is always taken.
  The `bne` branch at 0xd83445c targets 0xd83446c, is taken when v0(=ret(strchr)) != 0, and falls through when v0(=ret(strchr)) == 0.
  The `beq` branch at 0xd834464 targets 0xd8344c0 and is always taken.
  The `bne` branch at 0xd83447c targets 0xd8344bc, is taken when t2(=[ret(strchr)]:1) != t3(?), and falls through when t2(=[ret(strchr)]:1) == t3(?).
  The `beq` branch at 0xd834490 targets 0xd8344a0, is taken when a2(=0x2e) == a1(?), and falls through when a2(=0x2e) != a1(?).
  The `bnel` branch at 0xd834498 targets 0xd8344ac, is taken when a1(?) != 0, and falls through when a1(?) == 0; its branch-likely delay slot `lbu t5,0(t4)` at 0xd83449c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8344a0 targets 0xd8344c0 and is always taken.
  The `beql` branch at 0xd8344b4 targets 0xd834488, is taken when t5(?) == t7(?), and falls through when t5(?) != t7(?); its branch-likely delay slot `lbu a1,0(a0)` at 0xd8344b8 runs only when taken and is annulled on fall-through.
  The return at 0xd8344c8 has v0 = one of 0x0, 0x1.
  The instructions from 0xd8343f0 to 0xd8343f0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8344a8 to 0xd8344a8 are not reached by any path from the entry, and their branches are not listed.
- `orderLarger1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd835ea8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd835ea8-0xd837524 (5756 bytes).
  It occupies 5756 bytes.
  The return at 0xd835ea8 has v0 = ?.
  The instructions from 0xd835eb0 to 0xd837520 are not reached by any path from the entry, and their branches are not listed.
- `glXCreatePixmap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83720c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83720c-0xd8373a4 (408 bytes).
  It occupies 408 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83725c, `lw` at 0xd837268, `lw` at 0xd837284.
  The `lw` at 0xd837260 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0xd837274 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `lw` at 0xd837280 loads 4 bytes from ?.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83728c, `lw` at 0xd8372a4, `lw` at 0xd8372d0.
  The `lw` at 0xd837290 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8372a8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8372d8 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8372e4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8372e8, `sb` at 0xd837310.
  The `lw` at 0xd8372ec loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd837300 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd837304 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd83730c stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd837314 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd837318 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd83731c loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd837320 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd837328 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd837330 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd837348 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd83734c stores 4 bytes to [a0+108] +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd837358, `lw` at 0xd837370.
  The `lw` at 0xd83735c loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd837238 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd837298 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd8372c4 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837334 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x16, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd837364 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd837380 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd837248 targets 0xd837258, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd837250 targets 0xd837390 and is always taken.
  The `beql` branch at 0xd837258 targets 0xd837288, is taken when a3 == 0, and falls through when a3 != 0; its branch-likely delay slot `lw a1,1232(s0)` at 0xd83725c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837264 targets 0xd837288, is taken when v1(=[a3]) == 0, and falls through when v1(=[a3]) != 0; its branch-likely delay slot `lw a1,1232(s0)` at 0xd837268 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83726c targets 0xd837284, is taken when v1(=[a3]) == 0, and falls through when v1(=[a3]) != 0.
  The `bnel` branch at 0xd83727c targets 0xd837278, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `lw t6,8(v0)` at 0xd837280 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837288 targets 0xd8372a8, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s0)` at 0xd83728c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8372b4 targets 0xd8372d8, is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned); its branch-likely delay slot `lw a2,60(sp)` at 0xd8372b8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837354 targets 0xd837374, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd837358 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837378 targets 0xd837390, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,48(sp)` at 0xd83737c runs only when taken and is annulled on fall-through.
  The return at 0xd83739c has v0 = one of 0x0, ret(?).
- `glXDestroyPixmap` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8373a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8373a4-0xd8374bc (280 bytes).
  It occupies 280 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8373dc, `lw` at 0xd83746c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8373e4, `lw` at 0xd8373fc, `lw` at 0xd837428.
  The `lw` at 0xd8373e8 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd837400 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd837410, `sw` at 0xd83742c.
  The `sh` at 0xd837438 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83743c, `sb` at 0xd837460.
  The `lw` at 0xd837440 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd837450 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd837454 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd83745c stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd837468 stores 4 bytes to [a0+108] +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd837474, `lw` at 0xd83748c.
  The `lw` at 0xd837478 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8373c8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8373f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83741c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837480 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x17, a2=?, a3=?.
  The `jalr` at 0xd83749c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8373d4 targets 0xd8374a8, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd8373e0 targets 0xd837400, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8373e4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83740c targets 0xd837430, is taken when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd837410 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837470 targets 0xd837490, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd837474 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837494 targets 0xd8374ac, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd837498 runs only when taken and is annulled on fall-through.
  The return at 0xd8374b4 has v0 = one of [a0+124], ?.
- `glXGetProcAddress` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd837d28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd837d28-0xd837d94 (108 bytes).
  It occupies 108 bytes.
  The `jalr` at 0xd837d60 calls dlopen with a0=0xd840da8, a1=0x1, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xd837d78 calls dlsym with a0=ret(dlopen), a1=a0 at entry (arg0), a2=?, a3=?.
  The `bne` branch at 0xd837d40 targets 0xd837d50, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0xd837d48 targets 0xd837d84 and is always taken.
  The return at 0xd837d8c has v0 = one of 0x0, ret(dlsym).
- `glXGetProcAddressARB` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd837d94 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd837d94-0xd837dc8 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd837dac calls glXGetProcAddress with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd837dc0 has v0 = ret(glXGetProcAddress).
- `__glXSpriteParameterfvSGIX_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd837dd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd837dd0-0xd837e0c (60 bytes).
  It occupies 60 bytes.
  The `beq` branch at 0xd837dd4 targets 0xd837dfc, is taken when a0 == at(=0x8149), and falls through when a0 != at(=0x8149).
  The `beq` branch at 0xd837ddc targets 0xd837df4, is taken when a0 == at(=0x814a), and falls through when a0 != at(=0x814a).
  The `bne` branch at 0xd837de4 targets 0xd837e04, is taken when a0 != at(=0x814b), and falls through when a0 == at(=0x814b).
  The return at 0xd837dec has v0 = 0x3.
  The return at 0xd837df4 has v0 = 0x3.
  The return at 0xd837dfc has v0 = 0x1.
  The return at 0xd837e04 has v0 = 0x0.
- `__glXSpriteParameterivSGIX_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd837e0c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd837e0c-0xd837e40 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd837e24 calls __glXSpriteParameterfvSGIX_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd837e38 has v0 = ret(__glXSpriteParameterfvSGIX_size).
- `__glXPointParameterfvSGIS_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd837e40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd837e40-0xd837e8c (76 bytes).
  It occupies 76 bytes.
  The `beq` branch at 0xd837e44 targets 0xd837e6c, is taken when a0 == at(=0x8126), and falls through when a0 != at(=0x8126).
  The `beq` branch at 0xd837e4c targets 0xd837e74, is taken when a0 == at(=0x8127), and falls through when a0 != at(=0x8127).
  The `beq` branch at 0xd837e54 targets 0xd837e7c, is taken when a0 == at(=0x8128), and falls through when a0 != at(=0x8128).
  The `bne` branch at 0xd837e5c targets 0xd837e84, is taken when a0 != at(=0x8129), and falls through when a0 == at(=0x8129).
  The return at 0xd837e64 has v0 = 0x3.
  The return at 0xd837e6c has v0 = 0x1.
  The return at 0xd837e74 has v0 = 0x1.
  The return at 0xd837e7c has v0 = 0x1.
  The return at 0xd837e84 has v0 = 0x0.
- `__glXPixelTransformParameterfvSGI_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd837e8c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd837e8c-0xd837f30 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xd837f04 loads 4 bytes from (a0-32787 << 0x2) +0xd841508.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd837f0c).
  The `bne` branch at 0xd837ea0 targets 0xd837ec0, is taken when a0 < at(=0x8155) (unsigned), and falls through when a0 >= at(=0x8155) (unsigned).
  The `beq` branch at 0xd837ea8 targets 0xd837f14, is taken when a0 == at(=0x81c9), and falls through when a0 != at(=0x81c9).
  The `beq` branch at 0xd837eb0 targets 0xd837f14, is taken when a0 == at(=0x81ca), and falls through when a0 != at(=0x81ca).
  The `beq` branch at 0xd837eb8 targets 0xd837f28 and is always taken.
  The `bne` branch at 0xd837ec8 targets 0xd837ee0, is taken when a0 < at(=0x801c) (unsigned), and falls through when a0 >= at(=0x801c) (unsigned).
  The `beq` branch at 0xd837ed0 targets 0xd837f1c, is taken when a0 == at(=0x8154), and falls through when a0 != at(=0x8154).
  The `beq` branch at 0xd837ed8 targets 0xd837f28 and is always taken.
  The `beql` branch at 0xd837ef0 targets 0xd837f28, is taken when t6(=a0-32787) >= 0x9 (unsigned), and falls through when t6(=a0-32787) < 0x9 (unsigned); its branch-likely delay slot `or v0,zero,zero` at 0xd837ef4 runs only when taken and is annulled on fall-through.
  The return at 0xd837f14 has v0 = 0x1.
  The return at 0xd837f1c has v0 = 0x4.
  The return at 0xd837f28 has v0 = 0x0.
  The instructions from 0xd837f24 to 0xd837f24 are not reached by any path from the entry, and their branches are not listed.
- `__glXPixelTransformParameterivSGI_size` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd837f30 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd837f30-0xd837f64 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd837f48 calls __glXPixelTransformParameterfvSGI_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd837f5c has v0 = ret(__glXPixelTransformParameterfvSGI_size).
- `__glXOverrideVisualsBogusChoose` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8380a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8380a4-0xd8380e8 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xd8380bc loads 4 bytes from abs 0xd846770.
  The `bne` branch at 0xd8380c0 targets 0xd8380d0, is taken when t6(=[0xd846770]) != 0, and falls through when t6(=[0xd846770]) == 0.
  The `bne` branch at 0xd8380d0 targets 0xd8380e0, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?).
  The return at 0xd8380c8 has v0 = a0.
  The return at 0xd8380d8 has v0 = a1.
  The return at 0xd8380e0 has v0 = a0.
- `__glXOverrideVisualsIdToXid` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8380e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8380e8-0xd838118 (48 bytes).
  It occupies 48 bytes.
  The `lw` at 0xd8380fc loads 4 bytes from abs 0xd846770.
  The `bne` branch at 0xd838100 targets 0xd838110, is taken when t6(=[0xd846770]) != 0, and falls through when t6(=[0xd846770]) == 0.
  The return at 0xd838108 has v0 = a0.
  The return at 0xd838110 has v0 = ?.
- `__glXOverrideVisualGetVisualInfo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd838118 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd838118-0xd8381e0 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd838130 loads 4 bytes from abs 0xd846770.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd838164, `lw` at 0xd838174, `lw` at 0xd83817c.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd838170, `sw` at 0xd838178, `sw` at 0xd838184.
  The `lw` at 0xd8381bc loads 4 bytes from ret(XGetVisualInfo) +0x4.
  The `sw` at 0xd8381c8 stores 4 bytes to ret(XGetVisualInfo) +0x4.
  The `jalr` at 0xd838148 calls XGetVisualInfo with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8381a8 calls XGetVisualInfo with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-48, a3=a3 at entry (arg3).
  The `bne` branch at 0xd83813c targets 0xd838158, is taken when t6(=[0xd846770]) != 0, and falls through when t6(=[0xd846770]) == 0.
  The `beq` branch at 0xd838150 targets 0xd8381d0 and is always taken.
  The `bne` branch at 0xd838180 targets 0xd838164, is taken when t7(?) != t1(=a2+36), and falls through when t7(?) == t1(=a2+36).
  The `beq` branch at 0xd8381b4 targets 0xd8381cc, is taken when v0(=ret(XGetVisualInfo)) == 0, and falls through when v0(=ret(XGetVisualInfo)) != 0.
  The return at 0xd8381d8 has v0 = ret(XGetVisualInfo).
- `glXGetCurrentDrawableEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8381e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8381e0-0xd838214 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0xd8381f8 calls glXGetCurrentDrawable with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd83820c has v0 = ret(glXGetCurrentDrawable).
- `checkExtension` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd838914 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd838914-0xd8389cc (184 bytes).
  It occupies 184 bytes.
  The `lbu` at 0xd838970 loads 1 byte from (ret(strlen) + ret(strstr)) +0x0.
  The `jalr` at 0xd838944 calls strstr with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd838964 calls strlen with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83899c calls strstr with a0=(ret(strlen) + ret(strstr)), a1=a0 at entry (arg0), a2=(ret(strlen) + ret(strstr)), a3=?.
  The `beq` branch at 0xd838950 targets 0xd8389b0, is taken when v0(=ret(strstr)) == 0, and falls through when v0(=ret(strstr)) != 0.
  The `beq` branch at 0xd838978 targets 0xd838988, is taken when s2(=0x20) == a0(=[(ret(strlen) + ret(strstr))]:1), and falls through when s2(=0x20) != a0(=[(ret(strlen) + ret(strstr))]:1).
  The `bne` branch at 0xd838980 targets 0xd838990, is taken when a0(=[(ret(strlen) + ret(strstr))]:1) != 0, and falls through when a0(=[(ret(strlen) + ret(strstr))]:1) == 0.
  The `beq` branch at 0xd838988 targets 0xd8389b4 and is always taken.
  The `bne` branch at 0xd8389a8 targets 0xd83895c, is taken when v0(=ret(strstr)) != 0, and falls through when v0(=ret(strstr)) == 0.
  The return at 0xd8389c4 has v0 = one of 0x0, 0x1.
- `__glXatExit` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8389cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8389cc-0xd839c70 (4772 bytes).
  It occupies 4772 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd838a04, `lw` at 0xd838a44, `lw` at 0xd838a54.
  The `lw` at 0xd838a10 loads 4 bytes from [0x1014] +0x104.
  The `lw` at 0xd838a2c loads 4 bytes from ?.
  The `sw` at 0xd838a50 stores 4 bytes to ?.
  The `jalr` at 0xd8389f8 calls __glXInitThread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd838a3c calls close with a0=?, a1=[0x1014], a2=?, a3=?.
  The `jalr` at 0xd838a6c calls free with a0=[0x1014], a1=[0x1014], a2=?, a3=?.
  The `beq` branch at 0xd838a14 targets 0xd838a64, is taken when s2(=[[0x1014]+260]) == s4(=-0x1), and falls through when s2(=[[0x1014]+260]) != s4(=-0x1).
  The `blez` branch at 0xd838a1c targets 0xd838a64, is taken when s2(=[[0x1014]+260]) <= 0 (signed), and falls through when s2(=[[0x1014]+260]) > 0 (signed).
  The `bltzl` branch at 0xd838a30 targets 0xd838a5c, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed); its branch-likely delay slot `addiu s0,s0,4` at 0xd838a34 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd838a5c targets 0xd838a2c, is taken when s0(?) != s1(=([[0x1014]+260] << 0x2)), and falls through when s0(?) == s1(=([[0x1014]+260] << 0x2)); its branch-likely delay slot `addu t6,a1,s0` at 0xd838a60 runs only when taken and is annulled on fall-through.
  The return at 0xd838a90 has v0 = ret(free).
  The instructions from 0xd838a98 to 0xd839c6c are not reached by any path from the entry, and their branches are not listed.
- `__glXInitChannelRectState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd839c70 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd839c70-0xd83b750 (6880 bytes).
  It occupies 6880 bytes.
  The `lbu` at 0xd839cb8 loads 1 byte from (a3 + (((a2 << 0x2) + a2) << 0x3)) +0x49.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd839d34, `lw` at 0xd839d40.
  The `sw` at 0xd839d4c stores 4 bytes to (a3 + (((a2 << 0x2) + a2) << 0x3)) +0x44.
  The `sw` at 0xd839d84 stores 4 bytes to (a3 + (((a2 << 0x2) + a2) << 0x3)) +0x24.
  The `sw` at 0xd839d94 stores 4 bytes to (a3 + (((a2 << 0x2) + a2) << 0x3)) +0x28.
  The `sw` at 0xd839d9c stores 4 bytes to (a3 + (((a2 << 0x2) + a2) << 0x3)) +0x2c.
  The `sw` at 0xd839da4 stores 4 bytes to (a3 + (((a2 << 0x2) + a2) << 0x3)) +0x30.
  The `sw` at 0xd839dac stores 4 bytes to (a3 + (((a2 << 0x2) + a2) << 0x3)) +0x34.
  The `sw` at 0xd839db4 stores 4 bytes to (a3 + (((a2 << 0x2) + a2) << 0x3)) +0x38.
  The `sw` at 0xd839dbc stores 4 bytes to (a3 + (((a2 << 0x2) + a2) << 0x3)) +0x3c.
  The `sb` at 0xd839dc4 stores 1 byte to (a3 + (((a2 << 0x2) + a2) << 0x3)) +0x48.
  The `sb` at 0xd839dc8 stores 1 byte to (a3 + (((a2 << 0x2) + a2) << 0x3)) +0x49.
  The `sw` at 0xd839dcc stores 4 bytes to (a3 + (((a2 << 0x2) + a2) << 0x3)) +0x40.
  The `jalr` at 0xd839cdc calls XSGIvcQueryVideoScreenInfo with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-52, a3=a3 at entry (arg3).
  The `jalr` at 0xd839d14 calls XSGIvcQueryChannelInfo with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-4.
  The `jalr` at 0xd839d68 calls XSGIvcQueryPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x65.
  The `jalr` at 0xd839de8 calls XFree with a0=?, a1=?, a2=?, a3=?.
  The `bltz` branch at 0xd839c98 targets 0xd839dd4, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `beq` branch at 0xd839ca4 targets 0xd839dd4, is taken when a2 >= 0x10 (signed), and falls through when a2 < 0x10 (signed).
  The `beq` branch at 0xd839cc0 targets 0xd839cd0, is taken when t9(=[(a3 + (((a2 << 0x2) + a2) << 0x3))+73]:1) == 0, and falls through when t9(=[(a3 + (((a2 << 0x2) + a2) << 0x3))+73]:1) != 0.
  The `beq` branch at 0xd839cc8 targets 0xd839df8 and is always taken.
  The `beq` branch at 0xd839ce8 targets 0xd839dd4, is taken when v0(=ret(XSGIvcQueryVideoScreenInfo)) == 0, and falls through when v0(=ret(XSGIvcQueryVideoScreenInfo)) != 0.
  The `beql` branch at 0xd839d00 targets 0xd839dd8, is taken when a2 >= t0(?) (signed), and falls through when a2 < t0(?) (signed); its branch-likely delay slot `lw t8,148(sp)` at 0xd839d04 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd839d20 targets 0xd839dd4, is taken when v0(=ret(XSGIvcQueryChannelInfo)) == 0, and falls through when v0(=ret(XSGIvcQueryChannelInfo)) != 0.
  The `beql` branch at 0xd839d38 targets 0xd839dd8, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `lw t8,148(sp)` at 0xd839d3c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd839d7c targets 0xd839dd4, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beql` branch at 0xd839dd8 targets 0xd839df8, is taken when t8(?) == 0, and falls through when t8(?) != 0; its branch-likely delay slot `lw v0,44(sp)` at 0xd839ddc runs only when taken and is annulled on fall-through.
  The return at 0xd839e00 has v0 = one of 0x0, 0x1.
  The instructions from 0xd839e08 to 0xd83b74c are not reached by any path from the entry, and their branches are not listed.
- `glXQueryChannelDeltasSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd839f4c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd839f4c-0xd83a060 (276 bytes).
  It occupies 276 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd839fd8, `lw` at 0xd83a000, `lw` at 0xd83a020.
  The `sw` at 0xd839fdc stores 4 bytes to a3 (arg3 at entry) +0x0.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd83a004, `sw` at 0xd83a024, `sw` at 0xd83a044.
  The `jalr` at 0xd839f78 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd839fa4 calls __glXInitChannelRectState [0xd839c70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `beq` branch at 0xd839f88 targets 0xd83a04c, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd839fb4 targets 0xd83a04c, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beql` branch at 0xd839fc4 targets 0xd839fe4, is taken when v1(=a3) == 0, and falls through when v1(=a3) != 0; its branch-likely delay slot `lw v1,56(sp)` at 0xd839fc8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd839fec targets 0xd83a00c, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw v1,60(sp)` at 0xd839ff0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a00c targets 0xd83a02c, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw v1,64(sp)` at 0xd83a010 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a02c targets 0xd83a04c, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `sw t8,32(sp)` at 0xd83a030 runs only when taken and is annulled on fall-through.
  The return at 0xd83a058 has v0 = one of 0x0, 0x1.
- `glXChannelRectSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83a060 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83a060-0xd83a260 (512 bytes).
  It occupies 512 bytes.
  The `lw` at 0xd83a070 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83a08c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83a094 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lbu` at 0xd83a11c loads 1 byte from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x48.
  The `lw` at 0xd83a128 loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x24.
  The `lw` at 0xd83a12c loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x34.
  The `lw` at 0xd83a130 loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x28.
  The `lw` at 0xd83a170 loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x38.
  The `lw` at 0xd83a1ac loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x3c.
  The `lw` at 0xd83a1e8 loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x40.
  The `lw` at 0xd83a220 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83a224 loads 4 bytes from [[[0x1014]+276]+200] +0x84.
  The `lw` at 0xd83a230 loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x44.
  The `jalr` at 0xd83a0ac calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83a0e4 calls __glXInitChannelRectState [0xd839c70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd83a238 calls (unknown callee) with a0=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+68], a1=(a3 + [(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+36]), a2=?, a3=?.
  The `beq` branch at 0xd83a098 targets 0xd83a24c, is taken when t7(=[[[0x1014]+276]+196]) == 0, and falls through when t7(=[[[0x1014]+276]+196]) != 0.
  The `beq` branch at 0xd83a0c0 targets 0xd83a24c, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd83a0f8 targets 0xd83a24c, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beql` branch at 0xd83a120 targets 0xd83a250, is taken when t3(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+72]:1) == 0, and falls through when t3(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+72]:1) != 0; its branch-likely delay slot `or v0,t1,zero` at 0xd83a124 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83a144 targets 0xd83a150, is taken when t6(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+52]) != 0, and falls through when t6(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+52]) == 0.
  The `bne` branch at 0xd83a154 targets 0xd83a168, is taken when t6(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+52]) != at(=-0x1), and falls through when t6(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+52]) == at(=-0x1).
  The `bne` branch at 0xd83a15c targets 0xd83a168, is taken when a1(=(a3 + [(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+36])) != at(=0xffffffff80000000), and falls through when a1(=(a3 + [(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+36])) == at(=0xffffffff80000000).
  The `bnel` branch at 0xd83a168 targets 0xd83a250, is taken when t7(?) != 0, and falls through when t7(?) == 0; its branch-likely delay slot `or v0,t1,zero` at 0xd83a16c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83a180 targets 0xd83a18c, is taken when t8(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+56]) != 0, and falls through when t8(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+56]) == 0.
  The `bne` branch at 0xd83a190 targets 0xd83a1a4, is taken when t8(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+56]) != at(=-0x1), and falls through when t8(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+56]) == at(=-0x1).
  The `bne` branch at 0xd83a198 targets 0xd83a1a4, is taken when a2(?) != at(=0xffffffff80000000), and falls through when a2(?) == at(=0xffffffff80000000).
  The `bnel` branch at 0xd83a1a4 targets 0xd83a250, is taken when t9(?) != 0, and falls through when t9(?) == 0; its branch-likely delay slot `or v0,t1,zero` at 0xd83a1a8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83a1bc targets 0xd83a1c8, is taken when t3(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+60]) != 0, and falls through when t3(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+60]) == 0.
  The `bne` branch at 0xd83a1cc targets 0xd83a1e0, is taken when t3(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+60]) != at(=-0x1), and falls through when t3(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+60]) == at(=-0x1).
  The `bne` branch at 0xd83a1d4 targets 0xd83a1e0, is taken when a3(?) != at(=0xffffffff80000000), and falls through when a3(?) == at(=0xffffffff80000000).
  The `bnel` branch at 0xd83a1e0 targets 0xd83a250, is taken when t4(?) != 0, and falls through when t4(?) == 0; its branch-likely delay slot `or v0,t1,zero` at 0xd83a1e4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83a1f4 targets 0xd83a200, is taken when t5(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+64]) != 0, and falls through when t5(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+64]) == 0.
  The `bne` branch at 0xd83a204 targets 0xd83a218, is taken when t5(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+64]) != at(=-0x1), and falls through when t5(=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+64]) == at(=-0x1).
  The `bne` branch at 0xd83a20c targets 0xd83a218, is taken when t2(?) != at(=0xffffffff80000000), and falls through when t2(?) == at(=0xffffffff80000000).
  The `bnel` branch at 0xd83a218 targets 0xd83a250, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `or v0,t1,zero` at 0xd83a21c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a228 targets 0xd83a250, is taken when v1(=[[[[0x1014]+276]+200]+132]) == 0, and falls through when v1(=[[[[0x1014]+276]+200]+132]) != 0; its branch-likely delay slot `or v0,t1,zero` at 0xd83a22c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83a244 targets 0xd83a250 and is always taken.
  The return at 0xd83a258 has v0 = one of 0x0, 0x1.
- `glXQueryChannelRectSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83a260 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83a260-0xd83a398 (312 bytes).
  It occupies 312 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd83a318, `lw` at 0xd83a348.
  The `sw` at 0xd83a320 stores 4 bytes to a3 (arg3 at entry) +0x0.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd83a354, `sw` at 0xd83a368, `sw` at 0xd83a37c.
  The `jalr` at 0xd83a28c calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83a2b4 calls __glXInitChannelRectState [0xd839c70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd83a2e4 calls XSGIvcQueryPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x65.
  The `beq` branch at 0xd83a298 targets 0xd83a384, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd83a2bc targets 0xd83a384, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beql` branch at 0xd83a2f4 targets 0xd83a328, is taken when v1(=a3) == 0, and falls through when v1(=a3) != 0; its branch-likely delay slot `lw v0,120(sp)` at 0xd83a2f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83a330 targets 0xd83a358, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beql` branch at 0xd83a360 targets 0xd83a370, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw v0,128(sp)` at 0xd83a364 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83a374 targets 0xd83a384, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `sw t4,44(sp)` at 0xd83a378 runs only when taken and is annulled on fall-through.
  The return at 0xd83a390 has v0 = one of 0x0, 0x1.
- `glXChannelRectSyncSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83a398 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83a398-0xd83a438 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd83a3a8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83a3c4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83a3f0 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83a3fc loads 4 bytes from [[[0x1014]+276]+200] +0x88.
  The `lw` at 0xd83a410 loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x44.
  The `jalr` at 0xd83a3cc calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83a414 calls (unknown callee) with a0=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+68], a1=a3 at entry (arg3), a2=ret(__glXInitialize), a3=?.
  The `beq` branch at 0xd83a3dc targets 0xd83a424, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beql` branch at 0xd83a408 targets 0xd83a428, is taken when v0(=[[[[0x1014]+276]+200]+136]) == 0, and falls through when v0(=[[[[0x1014]+276]+200]+136]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd83a40c runs only when taken and is annulled on fall-through.
  The return at 0xd83a430 has v0 = one of 0x0, 0x1.
- `glXBindHyperpipeSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83ae9c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83ae9c-0xd83af54 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xd83aeac loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83aebc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83aec8 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83aed0 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83aee0 loads 4 bytes from [[[0x1014]+276]+200] +0x98.
  The `lw` at 0xd83aee8 loads 4 bytes from [[0x1014]+276] +0x38.
  The `sw` at 0xd83af3c stores 4 bytes to [[0x1014]+276] +0x38.
  The `jalr` at 0xd83af1c calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=-0x1, a3=a3 at entry (arg3).
  The `beq` branch at 0xd83aec0 targets 0xd83aed4, is taken when v1(=[[0x1014]+276]) == 0, and falls through when v1(=[[0x1014]+276]) != 0.
  The `bnel` branch at 0xd83aecc targets 0xd83aee0, is taken when t7(=[[[0x1014]+276]+196]) != 0, and falls through when t7(=[[[0x1014]+276]+196]) == 0; its branch-likely delay slot `lw a0,200(v1)` at 0xd83aed0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83aed4 targets 0xd83af44 and is always taken.
  The `bnel` branch at 0xd83aee4 targets 0xd83aef8, is taken when v0(=[[[[0x1014]+276]+200]+152]) != 0, and falls through when v0(=[[[[0x1014]+276]+200]+152]) == 0; its branch-likely delay slot `lw t8,56(v1)` at 0xd83aee8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83aeec targets 0xd83af44 and is always taken.
  The `beql` branch at 0xd83aefc targets 0xd83af18, is taken when a2(=-0x1) == t8(=[[[0x1014]+276]+56]), and falls through when a2(=-0x1) != t8(=[[[0x1014]+276]+56]); its branch-likely delay slot `sw v1,36(sp)` at 0xd83af00 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83af04 targets 0xd83af18, is taken when a1 == a2(=-0x1), and falls through when a1 != a2(=-0x1); its branch-likely delay slot `sw v1,36(sp)` at 0xd83af08 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83af0c targets 0xd83af44 and is always taken.
  The `beq` branch at 0xd83af2c targets 0xd83af3c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd83af34 targets 0xd83af44 and is always taken.
  The return at 0xd83af4c has v0 = one of 0x0, 0x5, 0x5c.
  The instructions from 0xd83aedc to 0xd83aedc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83aef4 to 0xd83aef4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83af14 to 0xd83af14 are not reached by any path from the entry, and their branches are not listed.
- `glXQueryHyperpipeBestAttribSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83af54 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83af54-0xd83afec (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xd83af64 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83af74 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83af80 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83af88 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83af9c loads 4 bytes from [[[0x1014]+276]+200] +0x9c.
  The `jalr` at 0xd83afbc calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83af78 targets 0xd83af8c, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `bnel` branch at 0xd83af84 targets 0xd83af98, is taken when t7(=[[[0x1014]+276]+196]) != 0, and falls through when t7(=[[[0x1014]+276]+196]) == 0; its branch-likely delay slot `lw a0,200(v0)` at 0xd83af88 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83af8c targets 0xd83afdc and is always taken.
  The `bnel` branch at 0xd83afa0 targets 0xd83afb4, is taken when v1(=[[[[0x1014]+276]+200]+156]) != 0, and falls through when v1(=[[[[0x1014]+276]+200]+156]) == 0; its branch-likely delay slot `lw t9,60(sp)` at 0xd83afa4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83afa8 targets 0xd83afdc and is always taken.
  The `beq` branch at 0xd83afc8 targets 0xd83afd8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd83afd0 targets 0xd83afdc and is always taken.
  The return at 0xd83afe4 has v0 = one of 0x5, 0x5c, ret(?).
  The instructions from 0xd83af94 to 0xd83af94 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83afb0 to 0xd83afb0 are not reached by any path from the entry, and their branches are not listed.
- `glXQueryHyperpipeAttribSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83afec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83afec-0xd83b07c (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd83affc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83b00c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83b018 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83b020 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83b034 loads 4 bytes from [[[0x1014]+276]+200] +0xa0.
  The `jalr` at 0xd83b04c calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83b010 targets 0xd83b024, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `bnel` branch at 0xd83b01c targets 0xd83b030, is taken when t7(=[[[0x1014]+276]+196]) != 0, and falls through when t7(=[[[0x1014]+276]+196]) == 0; its branch-likely delay slot `lw a0,200(v0)` at 0xd83b020 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83b024 targets 0xd83b06c and is always taken.
  The `bnel` branch at 0xd83b038 targets 0xd83b04c, is taken when v1(=[[[[0x1014]+276]+200]+160]) != 0, and falls through when v1(=[[[[0x1014]+276]+200]+160]) == 0; its branch-likely delay slot `sw t8,16(sp)` at 0xd83b03c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83b040 targets 0xd83b06c and is always taken.
  The `beq` branch at 0xd83b058 targets 0xd83b068, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd83b060 targets 0xd83b06c and is always taken.
  The return at 0xd83b074 has v0 = one of 0x5, 0x5c, ret(?).
  The instructions from 0xd83b02c to 0xd83b02c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83b048 to 0xd83b048 are not reached by any path from the entry, and their branches are not listed.
- `glXHyperpipeAttribSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83b07c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83b07c-0xd83b10c (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd83b08c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83b09c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83b0a8 loads 4 bytes from [[0x1014]+276] +0xc4.
  The `lw` at 0xd83b0b0 loads 4 bytes from [[0x1014]+276] +0xc8.
  The `lw` at 0xd83b0c4 loads 4 bytes from [[[0x1014]+276]+200] +0xa4.
  The `jalr` at 0xd83b0dc calls (unknown callee) with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd83b0a0 targets 0xd83b0b4, is taken when v0(=[[0x1014]+276]) == 0, and falls through when v0(=[[0x1014]+276]) != 0.
  The `bnel` branch at 0xd83b0ac targets 0xd83b0c0, is taken when t7(=[[[0x1014]+276]+196]) != 0, and falls through when t7(=[[[0x1014]+276]+196]) == 0; its branch-likely delay slot `lw a0,200(v0)` at 0xd83b0b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83b0b4 targets 0xd83b0fc and is always taken.
  The `bnel` branch at 0xd83b0c8 targets 0xd83b0dc, is taken when v1(=[[[[0x1014]+276]+200]+164]) != 0, and falls through when v1(=[[[[0x1014]+276]+200]+164]) == 0; its branch-likely delay slot `sw t8,16(sp)` at 0xd83b0cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83b0d0 targets 0xd83b0fc and is always taken.
  The `beq` branch at 0xd83b0e8 targets 0xd83b0f8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xd83b0f0 targets 0xd83b0fc and is always taken.
  The return at 0xd83b104 has v0 = one of 0x5, 0x5c, ret(?).
  The instructions from 0xd83b0bc to 0xd83b0bc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83b0d8 to 0xd83b0d8 are not reached by any path from the entry, and their branches are not listed.
- `glXQueryDrawable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83b4e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83b4e8-0xd83b5c0 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xd83b54c loads 4 bytes from (a2-32787 << 0x2) +0xd841d88.
  The `jalr` at 0xd83b514 calls __glXGetDrawableAttributes with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-28, a3=0x0.
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xd83b554).
  The `beq` branch at 0xd83b51c targets 0xd83b5ac, is taken when v0(=ret(__glXGetDrawableAttributes)) == 0, and falls through when v0(=ret(__glXGetDrawableAttributes)) != 0.
  The `beql` branch at 0xd83b538 targets 0xd83b5b0, is taken when t7(=a2-32787) >= 0x13 (unsigned), and falls through when t7(=a2-32787) < 0x13 (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd83b53c runs only when taken and is annulled on fall-through.
  The return at 0xd83b5b8 has v0 = ret(__glXGetDrawableAttributes).
  The instructions from 0xd83b55c to 0xd83b5a8 are not reached by any path from the entry, and their branches are not listed.
- `glXSelectEvent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83b5c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83b5c0-0xd83b6f4 (308 bytes).
  It occupies 308 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83b5fc, `lw` at 0xd83b6a4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83b604, `lw` at 0xd83b61c, `lw` at 0xd83b648.
  The `lw` at 0xd83b608 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd83b620 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd83b630, `sw` at 0xd83b64c.
  The `sh` at 0xd83b658 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83b65c, `sb` at 0xd83b688.
  The `lw` at 0xd83b660 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83b674 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83b678 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd83b680 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd83b690 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd83b694 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83b698 stores 4 bytes to [a0+108] +0x4.
  The `sw` at 0xd83b6a0 stores 4 bytes to [a0+108] +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd83b6ac, `lw` at 0xd83b6c4.
  The `lw` at 0xd83b6b0 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd83b5e8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83b610 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83b63c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83b6b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1e, a2=?, a3=?.
  The `jalr` at 0xd83b6d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83b5f4 targets 0xd83b6e0, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd83b600 targets 0xd83b620, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd83b604 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83b62c targets 0xd83b650, is taken when t6(=[a0+112]) >= t7(=[a0+108]+20) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+20) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd83b630 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83b6a8 targets 0xd83b6c8, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83b6ac runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83b6cc targets 0xd83b6e4, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd83b6d0 runs only when taken and is annulled on fall-through.
  The return at 0xd83b6ec has v0 = one of [a0+124], ?.
- `glXGetSelectedEvent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83b6f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83b6f4-0xd83b744 (80 bytes).
  It occupies 80 bytes.
  The `sw` at 0xd83b730 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0xd83b718 calls __glXGetDrawableAttributes with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-28, a3=0x0.
  The `beq` branch at 0xd83b720 targets 0xd83b734, is taken when v0(=ret(__glXGetDrawableAttributes)) == 0, and falls through when v0(=ret(__glXGetDrawableAttributes)) != 0.
  The return at 0xd83b73c has v0 = ret(__glXGetDrawableAttributes).
- `UnpackSubsampledImage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83b750 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83b750-0xd83bd8c (1596 bytes).
  It occupies 1596 bytes.
  The `lw` at 0xd83b798 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xd83b79c loads 4 bytes from a0 (arg0 at entry) +0xa0.
  24 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd83b954, `lbu` at 0xd83b964, `lbu` at 0xd83b974.
  41 such `sb` accesses store 1 byte to ?, including `sb` at 0xd83b960, `sb` at 0xd83b970, `sb` at 0xd83b988.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xd83bc0c, `swc1` at 0xd83bc2c, `swc1` at 0xd83bc34.
  The `jalr` at 0xd83b7b0 calls ElementsPerGroup [0xd820be4] with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83b7cc calls BytesPerElement [0xd820af0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83b800 targets 0xd83b818, is taken when s1(=[a0+160]) == at(=0x842e), and falls through when s1(=[a0+160]) != at(=0x842e).
  The `bne` branch at 0xd83b808 targets 0xd83b820, is taken when s1(=[a0+160]) != at(=0x842f), and falls through when s1(=[a0+160]) == at(=0x842f).
  The `beq` branch at 0xd83b810 targets 0xd83b820 and is always taken.
  The `beq` branch at 0xd83b818 targets 0xd83b820 and is always taken.
  The `beq` branch at 0xd83b824 targets 0xd83b83c, is taken when s3(=[a0+156]) == at(=0x85a3), and falls through when s3(=[a0+156]) != at(=0x85a3).
  The `beq` branch at 0xd83b82c targets 0xd83b85c, is taken when s3(=[a0+156]) == at(=0x85a4), and falls through when s3(=[a0+156]) != at(=0x85a4).
  The `beq` branch at 0xd83b834 targets 0xd83b87c and is always taken.
  The `beq` branch at 0xd83b854 targets 0xd83b888 and is always taken.
  The `beq` branch at 0xd83b874 targets 0xd83b888 and is always taken.
  The `beq` branch at 0xd83b888 targets 0xd83b8b0, is taken when s2(?) == at(=0x1907), and falls through when s2(?) != at(=0x1907).
  The `beq` branch at 0xd83b890 targets 0xd83b8b0, is taken when s2(?) == at(=0x1908), and falls through when s2(?) != at(=0x1908).
  The `beq` branch at 0xd83b898 targets 0xd83b8d0, is taken when s2(?) == at(=0x8000), and falls through when s2(?) != at(=0x8000).
  The `beq` branch at 0xd83b8a0 targets 0xd83b8b0, is taken when s2(?) == at(=0x80e0), and falls through when s2(?) != at(=0x80e0).
  The `bne` branch at 0xd83b8a8 targets 0xd83b8ec, is taken when s2(?) != at(=0x80e1), and falls through when s2(?) == at(=0x80e1).
  The `beq` branch at 0xd83b8c8 targets 0xd83b8f8 and is always taken.
  The `beq` branch at 0xd83b8e4 targets 0xd83b8f8 and is always taken.
  The `blez` branch at 0xd83b900 targets 0xd83bb9c, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `blez` branch at 0xd83b924 targets 0xd83ba4c, is taken when v0(=ret(BytesPerElement)) <= 0 (signed), and falls through when v0(=ret(BytesPerElement)) > 0 (signed).
  The `beq` branch at 0xd83b930 targets 0xd83b994, is taken when (v0(=ret(BytesPerElement)) & 0x3) == 0, and falls through when (v0(=ret(BytesPerElement)) & 0x3) != 0.
  The `bne` branch at 0xd83b984 targets 0xd83b954, is taken when t3(?) != t0(?), and falls through when t3(?) == t0(?).
  The `beql` branch at 0xd83b98c targets 0xd83ba4c, is taken when t0(?) == v0(=ret(BytesPerElement)), and falls through when t0(?) != v0(=ret(BytesPerElement)); its branch-likely delay slot `or t0,zero,zero` at 0xd83b990 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83ba40 targets 0xd83b9c8, is taken when t0(?) != s4(=ret(BytesPerElement)), and falls through when t0(?) == s4(=ret(BytesPerElement)).
  The `blez` branch at 0xd83ba4c targets 0xd83bb80, is taken when v0(=ret(BytesPerElement)) <= 0 (signed), and falls through when v0(=ret(BytesPerElement)) > 0 (signed).
  The `beql` branch at 0xd83ba58 targets 0xd83bac4, is taken when (v0(=ret(BytesPerElement)) & 0x1) == 0, and falls through when (v0(=ret(BytesPerElement)) & 0x1) != 0; its branch-likely delay slot `lw t8,176(sp)` at 0xd83ba5c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83ba60 targets 0xd83ba74, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xd83ba6c targets 0xd83ba84 and is always taken.
  The `beq` branch at 0xd83ba90 targets 0xd83baa4, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xd83ba9c targets 0xd83bab4 and is always taken.
  The `beql` branch at 0xd83bab8 targets 0xd83bb84, is taken when t0(=0x1) == v0(=ret(BytesPerElement)), and falls through when t0(=0x1) != v0(=ret(BytesPerElement)); its branch-likely delay slot `lw t8,68(sp)` at 0xd83babc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83bae4 targets 0xd83baf4, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xd83baec targets 0xd83bb00 and is always taken.
  The `beq` branch at 0xd83bb08 targets 0xd83bb18, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xd83bb10 targets 0xd83bb24 and is always taken.
  The `beql` branch at 0xd83bb24 targets 0xd83bb38, is taken when t5(?) == 0, and falls through when t5(?) != 0; its branch-likely delay slot `addu t9,ra,t0` at 0xd83bb28 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83bb2c targets 0xd83bb44 and is always taken.
  The `beq` branch at 0xd83bb4c targets 0xd83bb5c, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xd83bb54 targets 0xd83bb6c and is always taken.
  The `bne` branch at 0xd83bb78 targets 0xd83bae4, is taken when t0(?) != s4(=ret(BytesPerElement)), and falls through when t0(?) == s4(=ret(BytesPerElement)).
  The `bne` branch at 0xd83bb90 targets 0xd83b924, is taken when s6(?) < s8(?) (signed), and falls through when s6(?) >= s8(?) (signed).
  The `bne` branch at 0xd83bba8 targets 0xd83bd5c, is taken when a0(=ret(ElementsPerGroup)) != at(=0x4), and falls through when a0(=ret(ElementsPerGroup)) == at(=0x4).
  The `beq` branch at 0xd83bbbc targets 0xd83bc5c, is taken when v1(?) == at(=0x1400), and falls through when v1(?) != at(=0x1400).
  The `beq` branch at 0xd83bbc8 targets 0xd83bc5c, is taken when v1(?) == at(=0x1402), and falls through when v1(?) != at(=0x1402).
  The `beq` branch at 0xd83bbd0 targets 0xd83bc5c, is taken when v1(?) == at(=0x1404), and falls through when v1(?) != at(=0x1404).
  The `bne` branch at 0xd83bbd8 targets 0xd83bce8, is taken when v1(?) != at(=0x1406), and falls through when v1(?) == at(=0x1406).
  The `blezl` branch at 0xd83bbe0 targets 0xd83bd60, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed); its branch-likely delay slot `lw ra,60(sp)` at 0xd83bbe4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83bbfc targets 0xd83bc24, is taken when (a0(?) & 0x3) == 0, and falls through when (a0(?) & 0x3) != 0; its branch-likely delay slot `lui at,0x3f80` at 0xd83bc00 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83bc14 targets 0xd83bc0c, is taken when v0(?) != s6(?), and falls through when v0(?) == s6(?).
  The `beq` branch at 0xd83bc1c targets 0xd83bd5c, is taken when s6(?) == a0(?), and falls through when s6(?) != a0(?).
  The `bne` branch at 0xd83bc4c targets 0xd83bc2c, is taken when s6(?) != s8(?), and falls through when s6(?) == s8(?).
  The `beq` branch at 0xd83bc54 targets 0xd83bd60 and is always taken.
  The `blezl` branch at 0xd83bc5c targets 0xd83bd60, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed); its branch-likely delay slot `lw ra,60(sp)` at 0xd83bc60 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83bc84 targets 0xd83bcd4, is taken when v0(=ret(BytesPerElement)) < 0x2 (signed), and falls through when v0(=ret(BytesPerElement)) >= 0x2 (signed).
  The `beq` branch at 0xd83bc94 targets 0xd83bcb4, is taken when (a2(=ret(BytesPerElement)-1) & 0x3) == 0, and falls through when (a2(=ret(BytesPerElement)-1) & 0x3) != 0.
  The `bne` branch at 0xd83bca8 targets 0xd83bca0, is taken when a1(?) != t0(?), and falls through when a1(?) == t0(?).
  The `beq` branch at 0xd83bcb0 targets 0xd83bcd4, is taken when t0(?) == v0(=ret(BytesPerElement)), and falls through when t0(?) != v0(=ret(BytesPerElement)).
  The `bne` branch at 0xd83bccc targets 0xd83bcb8, is taken when t0(?) != s4(=ret(BytesPerElement)), and falls through when t0(?) == s4(=ret(BytesPerElement)).
  The `bne` branch at 0xd83bcd8 targets 0xd83bc7c, is taken when s6(?) != s8(?), and falls through when s6(?) == s8(?).
  The `beq` branch at 0xd83bce0 targets 0xd83bd60 and is always taken.
  The `blezl` branch at 0xd83bce8 targets 0xd83bd60, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed); its branch-likely delay slot `lw ra,60(sp)` at 0xd83bcec runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd83bd04 targets 0xd83bd50, is taken when v0(=ret(BytesPerElement)) <= 0 (signed), and falls through when v0(=ret(BytesPerElement)) > 0 (signed).
  The `beq` branch at 0xd83bd10 targets 0xd83bd30, is taken when (v0(=ret(BytesPerElement)) & 0x3) == 0, and falls through when (v0(=ret(BytesPerElement)) & 0x3) != 0.
  The `bne` branch at 0xd83bd24 targets 0xd83bd1c, is taken when a1(?) != t0(?), and falls through when a1(?) == t0(?).
  The `beq` branch at 0xd83bd2c targets 0xd83bd50, is taken when t0(?) == v0(=ret(BytesPerElement)), and falls through when t0(?) != v0(=ret(BytesPerElement)).
  The `bne` branch at 0xd83bd48 targets 0xd83bd34, is taken when t0(?) != s4(=ret(BytesPerElement)), and falls through when t0(?) == s4(=ret(BytesPerElement)).
  The `bne` branch at 0xd83bd54 targets 0xd83bd04, is taken when s6(?) != s8(?), and falls through when s6(?) == s8(?).
  The return at 0xd83bd84 has v0 = one of ret(BytesPerElement), ?.
  The instructions from 0xd83bb34 to 0xd83bb34 are not reached by any path from the entry, and their branches are not listed.
- `PackSubsampledImage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83bd8c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83bd8c-0xd83d2cc (5440 bytes).
  It occupies 5440 bytes.
  The `lw` at 0xd83bdd8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  20 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xd83bf30, `lbu` at 0xd83bf40, `lbu` at 0xd83bf50.
  20 such `sb` accesses store 1 byte to ?, including `sb` at 0xd83bf3c, `sb` at 0xd83bf4c, `sb` at 0xd83bf64.
  The `jalr` at 0xd83bdec calls ElementsPerGroup [0xd820be4] with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83be08 calls BytesPerElement [0xd820af0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83be54 targets 0xd83be6c, is taken when s0(=[a0+112]) == at(=0x85a3), and falls through when s0(=[a0+112]) != at(=0x85a3).
  The `beq` branch at 0xd83be5c targets 0xd83be74, is taken when s0(=[a0+112]) == at(=0x85a4), and falls through when s0(=[a0+112]) != at(=0x85a4).
  The `beq` branch at 0xd83be64 targets 0xd83be88 and is always taken.
  The `beq` branch at 0xd83be6c targets 0xd83be94 and is always taken.
  The `beq` branch at 0xd83be80 targets 0xd83be94 and is always taken.
  The `beq` branch at 0xd83be98 targets 0xd83bec4, is taken when s1(?) == at(=0x1907), and falls through when s1(?) != at(=0x1907).
  The `beq` branch at 0xd83bea0 targets 0xd83bec4, is taken when s1(?) == at(=0x1908), and falls through when s1(?) != at(=0x1908).
  The `beq` branch at 0xd83bea8 targets 0xd83becc, is taken when s1(?) == at(=0x8000), and falls through when s1(?) != at(=0x8000).
  The `beq` branch at 0xd83beb4 targets 0xd83bec4, is taken when s1(?) == at(=0x80e0), and falls through when s1(?) != at(=0x80e0).
  The `bne` branch at 0xd83bebc targets 0xd83bedc, is taken when s1(?) != at(=0x80e1), and falls through when s1(?) == at(=0x80e1).
  The `beq` branch at 0xd83bec4 targets 0xd83bee4 and is always taken.
  The `beq` branch at 0xd83bed4 targets 0xd83bee4 and is always taken.
  The `blez` branch at 0xd83bee4 targets 0xd83c0bc, is taken when v1(?) <= 0 (signed), and falls through when v1(?) > 0 (signed).
  The `blez` branch at 0xd83bf04 targets 0xd83c020, is taken when v0(=ret(BytesPerElement)) <= 0 (signed), and falls through when v0(=ret(BytesPerElement)) > 0 (signed).
  The `beq` branch at 0xd83bf10 targets 0xd83bf6c, is taken when (v0(=ret(BytesPerElement)) & 0x3) == 0, and falls through when (v0(=ret(BytesPerElement)) & 0x3) != 0.
  The `bne` branch at 0xd83bf60 targets 0xd83bf30, is taken when t2(?) != t1(?), and falls through when t2(?) == t1(?).
  The `beq` branch at 0xd83bf68 targets 0xd83c01c, is taken when t1(?) == v0(=ret(BytesPerElement)), and falls through when t1(?) != v0(=ret(BytesPerElement)).
  The `bne` branch at 0xd83c014 targets 0xd83bf9c, is taken when t1(?) != t4(=ret(BytesPerElement)), and falls through when t1(?) == t4(=ret(BytesPerElement)).
  The `blez` branch at 0xd83c020 targets 0xd83c0a0, is taken when v0(=ret(BytesPerElement)) <= 0 (signed), and falls through when v0(=ret(BytesPerElement)) > 0 (signed).
  The `beq` branch at 0xd83c02c targets 0xd83c060, is taken when (v0(=ret(BytesPerElement)) & 0x3) == 0, and falls through when (v0(=ret(BytesPerElement)) & 0x3) != 0.
  The `bne` branch at 0xd83c054 targets 0xd83c044, is taken when a1(?) != t1(?), and falls through when a1(?) == t1(?).
  The `beq` branch at 0xd83c05c targets 0xd83c0a0, is taken when t1(?) == v0(=ret(BytesPerElement)), and falls through when t1(?) != v0(=ret(BytesPerElement)).
  The `bne` branch at 0xd83c098 targets 0xd83c070, is taken when t1(?) != t4(=ret(BytesPerElement)), and falls through when t1(?) == t4(=ret(BytesPerElement)).
  The `bne` branch at 0xd83c0b4 targets 0xd83bf04, is taken when s1(?) < t6(?) (signed), and falls through when s1(?) >= t6(?) (signed).
  The return at 0xd83c0e4 has v0 = ret(BytesPerElement).
  The instructions from 0xd83c0ec to 0xd83d2c8 are not reached by any path from the entry, and their branches are not listed.
- `__glx_TexImage4DSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83c0ec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83c0ec-0xd83c184 (152 bytes).
  It occupies 152 bytes.
  The `jalr` at 0xd83c168 calls __glx_TexImage3D4D [0xd82bb24] with a0=0x1012, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0xd83c17c has v0 = ret(__glx_TexImage3D4D).
- `__glx_TexSubImage4DSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83c184 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83c184-0xd83c22c (168 bytes).
  It occupies 168 bytes.
  The `jalr` at 0xd83c210 calls __glx_TexSubImage3D4DEXT [0xd82b528] with a0=0x1013, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0xd83c224 has v0 = ret(__glx_TexSubImage3D4DEXT).
- `__glx_ColorSubTable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83c22c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83c22c-0xd83c490 (612 bytes).
  It occupies 612 bytes.
  The `lw` at 0xd83c284 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83c290 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83c29c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83c2b0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `lw` at 0xd83c2b4 loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd83c2c8 loads 4 bytes from [[0x1014]+276] +0xc.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xd83c310, `sh` at 0xd83c314.
  9 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd83c324, `sw` at 0xd83c32c, `sw` at 0xd83c330.
  5 such `sb` accesses store 1 byte to ?, including `sb` at 0xd83c354, `sb` at 0xd83c384, `sb` at 0xd83c388.
  The `lw` at 0xd83c368 loads 4 bytes from [[0x1014]+276] +0xa8.
  The `lw` at 0xd83c3a8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83c3c4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd83c418 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd83c41c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd83c42c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x1c.
  The `sw` at 0xd83c434 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x24.
  The `sw` at 0xd83c438 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x2c.
  The `sw` at 0xd83c43c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x28.
  The `sw` at 0xd83c440 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x20.
  The `jalr` at 0xd83c27c calls __glXImageSize with a0=a2 at entry (arg2), a1=0x1, a2=0x1, a3=0x1.
  The `jalr` at 0xd83c2ec calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd83c374 calls (unknown callee) with a0=[[0x1014]+276], a1=a2 at entry (arg2), a2=0x1, a3=a3 at entry (arg3).
  The `jalr` at 0xd83c3d4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c3f0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd83c470 calls SendLargeImage [0xd82ea48] with a0=[[0x1014]+276], a1=ret(__glXImageSize), a2=a2 at entry (arg2), a3=0x1.
  The `beq` branch at 0xd83c2ac targets 0xd83c47c, is taken when t9(=[[[0x1014]+276]+216]) == 0, and falls through when t9(=[[[0x1014]+276]+216]) != 0.
  The `bne` branch at 0xd83c2c0 targets 0xd83c3e4, is taken when t3(=[[[0x1014]+276]+268]) < v1(?) (signed), and falls through when t3(=[[[0x1014]+276]+268]) >= v1(?) (signed).
  The `beql` branch at 0xd83c2d8 targets 0xd83c308, is taken when t4(=[[[0x1014]+276]+12]) >= t7(?) (unsigned), and falls through when t4(=[[[0x1014]+276]+12]) < t7(?) (unsigned); its branch-likely delay slot `lw a1,96(sp)` at 0xd83c2dc runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xd83c348 targets 0xd83c384, is taken when t5(=ret(__glXImageSize)) <= 0 (signed), and falls through when t5(=ret(__glXImageSize)) > 0 (signed).
  The `beql` branch at 0xd83c350 targets 0xd83c388, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `sb zero,0(v0)` at 0xd83c354 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83c37c targets 0xd83c3a4 and is always taken.
  The `beq` branch at 0xd83c3c0 targets 0xd83c47c, is taken when t3(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t3(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd83c3dc targets 0xd83c47c and is always taken.
  The return at 0xd83c488 has v0 = one of ret(__glXImageSize), ?, ret(__glXFlushRenderBuffer), ret(SendLargeImage).
- `__glx_GetSeparableFilter` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83c494 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83c494-0xd83c8d4 (1088 bytes).
  It occupies 1088 bytes.
  The `lw` at 0xd83c4a4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83c4c4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83c4cc loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83c4dc loads 4 bytes from [[0x1014]+276] +0x4.
  6 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83c4f0, `lw` at 0xd83c688, `lw` at 0xd83c690.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83c4fc, `lw` at 0xd83c514, `lw` at 0xd83c540.
  The `lw` at 0xd83c500 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83c518 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd83c548 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd83c550 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83c554, `sb` at 0xd83c580.
  The `lw` at 0xd83c558 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83c56c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83c570 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd83c574, `lw` at 0xd83c584, `lw` at 0xd83c680.
  The `sb` at 0xd83c578 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `sw` at 0xd83c590 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83c59c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd83c5a4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd83c5ac stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `lbu` at 0xd83c5b0 loads 1 byte from ?.
  The `sb` at 0xd83c5b4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x14.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd83c68c, `sw` at 0xd83c7b4.
  6 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83c698, `lw` at 0xd83c6b0, `lw` at 0xd83c7c0.
  3 such `lw` accesses load 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4, including `lw` at 0xd83c69c, `lw` at 0xd83c7c4, `lw` at 0xd83c890.
  The `jalr` at 0xd83c4e8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83c508 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c534 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c5bc calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83c604 calls __glXImageSize with a0=?, a1=0x1, a2=0x1, a3=0x1.
  The `jalr` at 0xd83c634 calls __glXImageSize with a0=?, a1=0x1, a2=0x1, a3=0x1.
  The `jalr` at 0xd83c64c calls malloc with a0=ret(__glXImageSize), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c66c calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c6a4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c6c0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c6e0 calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=ret(__glXImageSize), a3=?.
  The `jalr` at 0xd83c708 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=ret(__glXImageSize), a3=?.
  The `jalr` at 0xd83c73c calls __glXEmptyImage with a0=?, a1=?, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0xd83c750 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c764 calls malloc with a0=ret(__glXImageSize), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c794 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c7cc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c7e8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c808 calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=ret(__glXImageSize), a3=?.
  The `jalr` at 0xd83c830 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=ret(__glXImageSize), a3=?.
  The `jalr` at 0xd83c864 calls __glXEmptyImage with a0=?, a1=?, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0xd83c878 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c898 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c8b4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83c4d0 targets 0xd83c8c4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd83c4d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83c4d8 targets 0xd83c8c0, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd83c4f8 targets 0xd83c518, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83c4fc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83c524 targets 0xd83c548, is taken when t1(=[[[[0x1014]+276]+216]+112]) >= t2(=[[[[0x1014]+276]+216]+108]+24) (unsigned), and falls through when t1(=[[[[0x1014]+276]+216]+112]) < t2(=[[[[0x1014]+276]+216]+108]+24) (unsigned); its branch-likely delay slot `lw t0,140(sp)` at 0xd83c528 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83c5d4 targets 0xd83c884, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xd83c658 targets 0xd83c6d0, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd83c684 targets 0xd83c694, is taken when t2(?) != 0, and falls through when t2(?) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd83c688 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83c694 targets 0xd83c6b4, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83c698 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83c6b8 targets 0xd83c8c4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd83c6bc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83c6c8 targets 0xd83c8c0 and is always taken.
  The `beq` branch at 0xd83c6f4 targets 0xd83c714, is taken when (a2(=ret(__glXImageSize)) & 0x3) == 0, and falls through when (a2(=ret(__glXImageSize)) & 0x3) != 0.
  The `bne` branch at 0xd83c770 targets 0xd83c7f8, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd83c7ac targets 0xd83c7bc, is taken when t4(?) != 0, and falls through when t4(?) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd83c7b0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83c7bc targets 0xd83c7dc, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83c7c0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83c7e0 targets 0xd83c8c4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd83c7e4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83c7f0 targets 0xd83c8c0 and is always taken.
  The `beq` branch at 0xd83c81c targets 0xd83c83c, is taken when (a2(=ret(__glXImageSize)) & 0x3) == 0, and falls through when (a2(=ret(__glXImageSize)) & 0x3) != 0.
  The `beql` branch at 0xd83c888 targets 0xd83c8a8, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83c88c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83c8ac targets 0xd83c8c4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xd83c8b0 runs only when taken and is annulled on fall-through.
  The return at 0xd83c8cc has v0 = one of ?, [[[[0x1014]+276]+216]+124].
- `__glx_GetConvolutionFilter` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83c8d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83c8d4-0xd83cb54 (640 bytes).
  It occupies 640 bytes.
  The `lw` at 0xd83c8e4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83c908 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83c90c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83c91c loads 4 bytes from [[0x1014]+276] +0x4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83c930, `lw` at 0xd83ca10, `lw` at 0xd83ca5c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83c93c, `lw` at 0xd83c954, `lw` at 0xd83c980.
  The `lw` at 0xd83c940 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83c958 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83c968, `sw` at 0xd83c984.
  The `sh` at 0xd83c98c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83c990, `sb` at 0xd83c9bc.
  The `lw` at 0xd83c994 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83c9a8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83c9ac stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83c9b0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83c9b4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83c9c0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83c9cc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83c9d8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd83c9e0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd83c9e8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `lbu` at 0xd83c9ec loads 1 byte from [[0x1014]+276] +0x4c.
  The `sb` at 0xd83c9f0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x14.
  The `lw` at 0xd83ca4c loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd83ca64 stores 4 bytes to [[0x1014]+276] +0xb0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83cb0c, `lw` at 0xd83cb24.
  The `lw` at 0xd83cb10 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83c928 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83c948 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c974 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83c9f8 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83ca20 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ca44 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ca88 calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83cab0 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cae4 calls __glXEmptyImage with a0=[[0x1014]+276], a1=?, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xd83caf8 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cb18 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cb34 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83c910 targets 0xd83cb44, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd83c914 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83c918 targets 0xd83cb40, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd83c938 targets 0xd83c958, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83c93c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83c964 targets 0xd83c988, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+24) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+24) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83c968 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83ca0c targets 0xd83cb08, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd83ca10 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83ca30 targets 0xd83ca68, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd83ca58 targets 0xd83cb08, is taken when t2(=[[[0x1014]+276]+176]) != 0, and falls through when t2(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd83ca5c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83ca60 targets 0xd83cb04 and is always taken.
  The `beql` branch at 0xd83ca9c targets 0xd83cac0, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0; its branch-likely delay slot `lw t9,144(sp)` at 0xd83caa0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83cb08 targets 0xd83cb28, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83cb0c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83cb2c targets 0xd83cb44, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd83cb30 runs only when taken and is annulled on fall-through.
  The return at 0xd83cb4c has v0 = one of ?, [[[[0x1014]+276]+216]+124].
- `__glx_GetHistogram` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83cb54 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83cb54-0xd83cdd4 (640 bytes).
  It occupies 640 bytes.
  The `lw` at 0xd83cb64 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83cb88 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83cb8c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83cb9c loads 4 bytes from [[0x1014]+276] +0x4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83cbb0, `lw` at 0xd83cc98, `lw` at 0xd83cce4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83cbbc, `lw` at 0xd83cbd4, `lw` at 0xd83cc00.
  The `lw` at 0xd83cbc0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83cbd8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83cbe8, `sw` at 0xd83cc04.
  The `sh` at 0xd83cc0c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83cc10, `sb` at 0xd83cc3c.
  The `lw` at 0xd83cc14 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83cc28 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83cc2c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83cc30 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83cc34 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83cc40 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83cc4c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83cc58 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd83cc60 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd83cc68 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `lbu` at 0xd83cc6c loads 1 byte from [[0x1014]+276] +0x4c.
  The `sb` at 0xd83cc70 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x14.
  The `sb` at 0xd83cc78 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x15.
  The `lw` at 0xd83ccd4 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd83ccec stores 4 bytes to [[0x1014]+276] +0xb0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83cd8c, `lw` at 0xd83cda4.
  The `lw` at 0xd83cd90 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83cba8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83cbc8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cbf4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cc80 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83cca8 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cccc calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cd08 calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83cd30 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cd64 calls __glXEmptyImage with a0=[[0x1014]+276], a1=?, a2=0x1, a3=a2 at entry (arg2).
  The `jalr` at 0xd83cd78 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cd98 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cdb4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83cb90 targets 0xd83cdc4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd83cb94 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83cb98 targets 0xd83cdc0, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd83cbb8 targets 0xd83cbd8, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83cbbc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83cbe4 targets 0xd83cc08, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+24) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+24) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83cbe8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83cc94 targets 0xd83cd88, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd83cc98 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83ccb8 targets 0xd83ccf0, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd83cce0 targets 0xd83cd88, is taken when t3(=[[[0x1014]+276]+176]) != 0, and falls through when t3(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd83cce4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83cce8 targets 0xd83cd84 and is always taken.
  The `beql` branch at 0xd83cd1c targets 0xd83cd40, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0; its branch-likely delay slot `lw t9,148(sp)` at 0xd83cd20 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83cd88 targets 0xd83cda8, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83cd8c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83cdac targets 0xd83cdc4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd83cdb0 runs only when taken and is annulled on fall-through.
  The return at 0xd83cdcc has v0 = one of ?, [[[[0x1014]+276]+216]+124].
- `__glx_GetMinmax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83cdd4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83cdd4-0xd83d04c (632 bytes).
  It occupies 632 bytes.
  The `lw` at 0xd83cde4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83ce08 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83ce0c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83ce1c loads 4 bytes from [[0x1014]+276] +0x4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83ce30, `lw` at 0xd83cf18, `lw` at 0xd83cf64.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83ce3c, `lw` at 0xd83ce54, `lw` at 0xd83ce80.
  The `lw` at 0xd83ce40 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83ce58 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83ce68, `sw` at 0xd83ce84.
  The `sh` at 0xd83ce8c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83ce90, `sb` at 0xd83cebc.
  The `lw` at 0xd83ce94 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83cea8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83ceac stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83ceb0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83ceb4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83cec0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83cecc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83ced8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd83cee0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd83cee8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `lbu` at 0xd83ceec loads 1 byte from [[0x1014]+276] +0x4c.
  The `sb` at 0xd83cef0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x14.
  The `sb` at 0xd83cef8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x15.
  The `lw` at 0xd83cf54 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd83cf6c stores 4 bytes to [[0x1014]+276] +0xb0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83d004, `lw` at 0xd83d01c.
  The `lw` at 0xd83d008 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83ce28 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83ce48 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ce74 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cf00 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83cf28 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cf4c calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cf80 calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83cfa8 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83cfdc calls __glXEmptyImage with a0=[[0x1014]+276], a1=0x2, a2=0x1, a3=a2 at entry (arg2).
  The `jalr` at 0xd83cff0 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d010 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d02c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83ce10 targets 0xd83d03c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd83ce14 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83ce18 targets 0xd83d038, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd83ce38 targets 0xd83ce58, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83ce3c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83ce64 targets 0xd83ce88, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+24) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+24) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83ce68 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83cf14 targets 0xd83d000, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd83cf18 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83cf38 targets 0xd83cf70, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd83cf60 targets 0xd83d000, is taken when t3(=[[[0x1014]+276]+176]) != 0, and falls through when t3(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd83cf64 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83cf68 targets 0xd83cffc and is always taken.
  The `beql` branch at 0xd83cf94 targets 0xd83cfb8, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0; its branch-likely delay slot `lw t9,72(sp)` at 0xd83cf98 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83d000 targets 0xd83d020, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83d004 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83d024 targets 0xd83d03c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd83d028 runs only when taken and is annulled on fall-through.
  The return at 0xd83d044 has v0 = one of ?, [[[[0x1014]+276]+216]+124].
- `__glx_GetColorTable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83d04c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83d04c-0xd83d2c4 (632 bytes).
  It occupies 632 bytes.
  The `lw` at 0xd83d05c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d080 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d084 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83d094 loads 4 bytes from [[0x1014]+276] +0x4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83d0a8, `lw` at 0xd83d188, `lw` at 0xd83d1d4.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83d0b4, `lw` at 0xd83d0cc, `lw` at 0xd83d0f8.
  The `lw` at 0xd83d0b8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83d0d0 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83d0e0, `sw` at 0xd83d0fc.
  The `sh` at 0xd83d104 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83d108, `sb` at 0xd83d134.
  The `lw` at 0xd83d10c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83d120 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83d124 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83d128 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83d12c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83d138 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83d144 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83d150 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd83d158 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd83d160 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `lbu` at 0xd83d164 loads 1 byte from [[0x1014]+276] +0x4c.
  The `sb` at 0xd83d168 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x14.
  The `lw` at 0xd83d1c4 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd83d1dc stores 4 bytes to [[0x1014]+276] +0xb0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83d27c, `lw` at 0xd83d294.
  The `lw` at 0xd83d280 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83d0a0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83d0c0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d0ec calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d170 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83d198 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d1bc calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d1f8 calls _XRead with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0xd83d220 calls _XEatData with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d254 calls __glXEmptyImage with a0=[[0x1014]+276], a1=?, a2=0x1, a3=a1 at entry (arg1).
  The `jalr` at 0xd83d268 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d288 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d2a4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83d088 targets 0xd83d2b4, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd83d08c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83d090 targets 0xd83d2b0, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd83d0b0 targets 0xd83d0d0, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83d0b4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83d0dc targets 0xd83d100, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+24) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+24) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83d0e0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83d184 targets 0xd83d278, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd83d188 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83d1a8 targets 0xd83d1e0, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd83d1d0 targets 0xd83d278, is taken when t2(=[[[0x1014]+276]+176]) != 0, and falls through when t2(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd83d1d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83d1d8 targets 0xd83d274 and is always taken.
  The `beql` branch at 0xd83d20c targets 0xd83d230, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0; its branch-likely delay slot `lw t9,80(sp)` at 0xd83d210 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83d278 targets 0xd83d298, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83d27c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83d29c targets 0xd83d2b4, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd83d2a0 runs only when taken and is annulled on fall-through.
  The return at 0xd83d2bc has v0 = one of ?, [[[[0x1014]+276]+216]+124].
- `SendDrawArrays` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83d2cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83d2cc-0xd840760 (13460 bytes).
  It occupies 13460 bytes.
  The `lw` at 0xd83d2dc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d308 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d314 loads 4 bytes from [[0x1014]+276] +0xb4.
  The `lw` at 0xd83d31c loads 4 bytes from [[0x1014]+276] +0x4.
  The `lbu` at 0xd83d320 loads 1 byte from [[[0x1014]+276]+180] +0x20.
  2 such `lbu` accesses load 1 byte from [[[0x1014]+276]+180] +0x3c, including `lbu` at 0xd83d328, `lbu` at 0xd83d34c.
  2 such `lbu` accesses load 1 byte from [[[0x1014]+276]+180] +0x5c, including `lbu` at 0xd83d35c, `lbu` at 0xd83d384.
  2 such `lbu` accesses load 1 byte from [[[0x1014]+276]+180] +0x78, including `lbu` at 0xd83d394, `lbu` at 0xd83d3bc.
  2 such `lbu` accesses load 1 byte from [[[0x1014]+276]+180] +0x98, including `lbu` at 0xd83d3cc, `lbu` at 0xd83d3f4.
  2 such `lbu` accesses load 1 byte from [[[0x1014]+276]+180] +0x0, including `lbu` at 0xd83d404, `lbu` at 0xd83d42c.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xd8, including `lw` at 0xd83d43c, `lw` at 0xd83d464.
  The `lw` at 0xd83d47c loads 4 bytes from [[0x1014]+276] +0x10c.
  The `lw` at 0xd83d49c loads 4 bytes from [[0x1014]+276] +0xc.
  The `sh` at 0xd83d4ac stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd83d4d0 stores 2 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sh` at 0xd83d4e0 stores 2 bytes to ?.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd83d4e8, `sw` at 0xd83d4f0, `sw` at 0xd83d4fc.
  The `lw` at 0xd83d534 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83d548 stores 4 bytes to [[0x1014]+276] +0x4.
  The `sw` at 0xd83d58c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x0.
  The `sw` at 0xd83d59c stores 4 bytes to ret(__glXFlushRenderBuffer) +0x4.
  The `sw` at 0xd83d5a4 stores 4 bytes to ret(__glXFlushRenderBuffer) +0xc.
  The `sw` at 0xd83d5a8 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x8.
  The `sw` at 0xd83d5b0 stores 4 bytes to ret(__glXFlushRenderBuffer) +0x10.
  The `lw` at 0xd83d5ec loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd83d600 stores 4 bytes to [[0x1014]+276] +0xb0.
  The `jalr` at 0xd83d33c calls __glXDrawArraysDataSize [0xd82f3e4] with a0=0x8075, a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83d370 calls __glXDrawArraysDataSize [0xd82f3e4] with a0=0x8076, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd83d3a8 calls __glXDrawArraysDataSize [0xd82f3e4] with a0=0x8077, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd83d3e0 calls __glXDrawArraysDataSize [0xd82f3e4] with a0=0x8078, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd83d418 calls __glXDrawArraysDataSize [0xd82f3e4] with a0=0x8079, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd83d450 calls __glXDrawArraysDataSize [0xd82f3e4] with a0=0x8074, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd83d4bc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd83d500 calls FillCompHeader [0xd82f2e4] with a0=[[[0x1014]+276]+180], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d528 calls FillArrayData [0xd82febc] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=[[[0x1014]+276]+180], a3=?.
  The `jalr` at 0xd83d558 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d574 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=?, a3=?.
  The `jalr` at 0xd83d5bc calls FillCompHeader [0xd82f2e4] with a0=[[[0x1014]+276]+180], a1=ret(__glXFlushRenderBuffer)+20, a2=?, a3=?.
  The `jalr` at 0xd83d5d8 calls malloc with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83d618 calls FillArrayData [0xd82febc] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=[[[0x1014]+276]+180], a3=ret(malloc).
  The `jalr` at 0xd83d640 calls __glXSendLargeCommand with a0=[[0x1014]+276], a1=ret(__glXFlushRenderBuffer), a2=?, a3=ret(malloc).
  The `jalr` at 0xd83d654 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `bnel` branch at 0xd83d324 targets 0xd83d350, is taken when t7(=[[[[0x1014]+276]+180]+32]:1) != at(=0x1), and falls through when t7(=[[[[0x1014]+276]+180]+32]:1) == at(=0x1); its branch-likely delay slot `lbu t8,60(s3)` at 0xd83d328 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd83d358 targets 0xd83d388, is taken when t8(=[[[[0x1014]+276]+180]+60]:1) != at(=0x1), and falls through when t8(=[[[[0x1014]+276]+180]+60]:1) == at(=0x1); its branch-likely delay slot `lbu t9,92(s3)` at 0xd83d35c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd83d390 targets 0xd83d3c0, is taken when t9(=[[[[0x1014]+276]+180]+92]:1) != at(=0x1), and falls through when t9(=[[[[0x1014]+276]+180]+92]:1) == at(=0x1); its branch-likely delay slot `lbu t1,120(s3)` at 0xd83d394 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd83d3c8 targets 0xd83d3f8, is taken when t1(=[[[[0x1014]+276]+180]+120]:1) != at(=0x1), and falls through when t1(=[[[[0x1014]+276]+180]+120]:1) == at(=0x1); its branch-likely delay slot `lbu t2,152(s3)` at 0xd83d3cc runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd83d400 targets 0xd83d430, is taken when t2(=[[[[0x1014]+276]+180]+152]:1) != at(=0x1), and falls through when t2(=[[[[0x1014]+276]+180]+152]:1) == at(=0x1); its branch-likely delay slot `lbu t3,0(s3)` at 0xd83d404 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd83d438 targets 0xd83d468, is taken when t3(=[[[[0x1014]+276]+180]]:1) != at(=0x1), and falls through when t3(=[[[[0x1014]+276]+180]]:1) == at(=0x1); its branch-likely delay slot `lw t4,216(s2)` at 0xd83d43c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83d470 targets 0xd83d660, is taken when t4(=[[[0x1014]+276]+216]) == 0, and falls through when t4(=[[[0x1014]+276]+216]) != 0.
  The `bne` branch at 0xd83d494 targets 0xd83d568, is taken when t7(=[[[0x1014]+276]+268]) < t0(?) (signed), and falls through when t7(=[[[0x1014]+276]+268]) >= t0(?) (signed).
  The `beql` branch at 0xd83d4a8 targets 0xd83d4d4, is taken when t8(=[[[0x1014]+276]+12]) >= t9(?) (unsigned), and falls through when t8(=[[[0x1014]+276]+12]) < t9(?) (unsigned); its branch-likely delay slot `sh t0,0(s0)` at 0xd83d4ac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83d544 targets 0xd83d660, is taken when t5(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t5(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The `beq` branch at 0xd83d560 targets 0xd83d660 and is always taken.
  The `bne` branch at 0xd83d5e4 targets 0xd83d604, is taken when v0(=ret(malloc)) != 0, and falls through when v0(=ret(malloc)) == 0.
  The `bnel` branch at 0xd83d5f4 targets 0xd83d664, is taken when t2(=[[[0x1014]+276]+176]) != 0, and falls through when t2(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd83d5f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83d5fc targets 0xd83d660 and is always taken.
  The return at 0xd83d674 has v0 = one of ret(malloc), ?.
  The instructions from 0xd83d67c to 0xd84075c are not reached by any path from the entry, and their branches are not listed.
- `__glx_DrawArrays` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83d67c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83d67c-0xd83d6b8 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xd83d69c calls SendDrawArrays [0xd83d2cc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0xc1.
  The return at 0xd83d6b0 has v0 = ret(SendDrawArrays).
- `__glx_VertexPointer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83d6b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83d6b8-0xd83d6fc (68 bytes).
  It occupies 68 bytes.
  The `jalr` at 0xd83d6e0 calls __glx_VertexPointerEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0.
  The return at 0xd83d6f4 has v0 = ret(__glx_VertexPointerEXT).
- `__glx_NormalPointer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83d6fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83d6fc-0xd83d738 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xd83d71c calls __glx_NormalPointerEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a2 at entry (arg2).
  The return at 0xd83d730 has v0 = ret(__glx_NormalPointerEXT).
- `__glx_ColorPointer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83d738 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83d738-0xd83d77c (68 bytes).
  It occupies 68 bytes.
  The `jalr` at 0xd83d760 calls __glx_ColorPointerEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0.
  The return at 0xd83d774 has v0 = ret(__glx_ColorPointerEXT).
- `__glx_IndexPointer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83d77c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83d77c-0xd83d7b8 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xd83d79c calls __glx_IndexPointerEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a2 at entry (arg2).
  The return at 0xd83d7b0 has v0 = ret(__glx_IndexPointerEXT).
- `__glx_TexCoordPointer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83d7b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83d7b8-0xd83d7fc (68 bytes).
  It occupies 68 bytes.
  The `jalr` at 0xd83d7e0 calls __glx_TexCoordPointerEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0.
  The return at 0xd83d7f4 has v0 = ret(__glx_TexCoordPointerEXT).
- `__glx_EdgeFlagPointer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83d7fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83d7fc-0xd83d838 (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0xd83d81c calls __glx_EdgeFlagPointerEXT with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0xd83d830 has v0 = ret(__glx_EdgeFlagPointerEXT).
- `__glx_EnableClientState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83d838 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83d838-0xd83d908 (208 bytes).
  It occupies 208 bytes.
  The `lw` at 0xd83d844 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d850 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d85c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83d86c loads 4 bytes from [[0x1014]+276] +0xb0.
  The `lw` at 0xd83d87c loads 4 bytes from (a0-32884 << 0x2) +0xd842708.
  The `sw` at 0xd83d8fc stores 4 bytes to [[0x1014]+276] +0xb0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd83d884).
  The `beq` branch at 0xd83d860 targets 0xd83d900, is taken when t7(=[[[0x1014]+276]+216]) == 0, and falls through when t7(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd83d868 targets 0xd83d8f0, is taken when at(?) == 0, and falls through when at(?) != 0; its branch-likely delay slot `lw t1,176(v0)` at 0xd83d86c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83d8f4 targets 0xd83d900, is taken when t1(=[[[0x1014]+276]+176]) != 0, and falls through when t1(=[[[0x1014]+276]+176]) == 0.
  The return at 0xd83d900 has v0 = [[0x1014]+276].
  The instructions from 0xd83d88c to 0xd83d8ec are not reached by any path from the entry, and their branches are not listed.
- `__glx_DisableClientState` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83d908 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83d908-0xd83d9c0 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xd83d914 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d920 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d92c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83d93c loads 4 bytes from [[0x1014]+276] +0xb0.
  The `lw` at 0xd83d94c loads 4 bytes from (a0-32884 << 0x2) +0xd842720.
  The `sw` at 0xd83d9b4 stores 4 bytes to [[0x1014]+276] +0xb0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd83d954).
  The `beq` branch at 0xd83d930 targets 0xd83d9b8, is taken when t7(=[[[0x1014]+276]+216]) == 0, and falls through when t7(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd83d938 targets 0xd83d9a8, is taken when at(?) == 0, and falls through when at(?) != 0; its branch-likely delay slot `lw t5,176(v0)` at 0xd83d93c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83d9ac targets 0xd83d9b8, is taken when t5(=[[[0x1014]+276]+176]) != 0, and falls through when t5(=[[[0x1014]+276]+176]) == 0.
  The return at 0xd83d9b8 has v0 = [[0x1014]+276].
  The instructions from 0xd83d95c to 0xd83d9a4 are not reached by any path from the entry, and their branches are not listed.
- `__glx_PushClientAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83d9c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83d9c0-0xd83db50 (400 bytes).
  It occupies 400 bytes.
  The `lw` at 0xd83d9cc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83d9dc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83d9e4 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83d9f0 loads 4 bytes from [[0x1014]+276] +0xb8.
  The `lw` at 0xd83d9f4 loads 4 bytes from [[0x1014]+276] +0xbc.
  The `lw` at 0xd83d9f8 loads 4 bytes from [[0x1014]+276] +0xc0.
  The `lw` at 0xd83da0c loads 4 bytes from [[0x1014]+276] +0xb0.
  The `lw` at 0xd83da10 loads 4 bytes from [[[0x1014]+276]+192] +0x0.
  The `sw` at 0xd83da1c stores 4 bytes to [[[[0x1014]+276]+192]] +0x0.
  The `sw` at 0xd83da4c stores 4 bytes to [[[0x1014]+276]+192] +0x0.
  The `sw` at 0xd83da50 stores 4 bytes to ret(calloc) +0x0.
  The `sw` at 0xd83da60 stores 4 bytes to [[0x1014]+276] +0xc0.
  14 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd83da70, `lw` at 0xd83da80, `lw` at 0xd83da88.
  14 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd83da7c, `sw` at 0xd83da84, `sw` at 0xd83da90.
  The `lw` at 0xd83daf0 loads 4 bytes from [[0x1014]+276] +0xb4.
  The `sw` at 0xd83db3c stores 4 bytes to [[0x1014]+276] +0xb0.
  The `jalr` at 0xd83da30 calls calloc with a0=0x1, a1=0x114, a2=[[[0x1014]+276]+192], a3=a0 at entry (arg0).
  The `beql` branch at 0xd83d9e8 targets 0xd83db44, is taken when t7(=[[[0x1014]+276]+216]) == 0, and falls through when t7(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd83d9ec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83da08 targets 0xd83db30, is taken when a2(=[[[0x1014]+276]+192]) >= t1(=([[[0x1014]+276]+188] + ([[[0x1014]+276]+184] << 0x2))) (unsigned), and falls through when a2(=[[[0x1014]+276]+192]) < t1(=([[[0x1014]+276]+188] + ([[[0x1014]+276]+184] << 0x2))) (unsigned); its branch-likely delay slot `lw t1,176(v1)` at 0xd83da0c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd83da18 targets 0xd83da54, is taken when a0(=[[[[0x1014]+276]+192]]) != 0, and falls through when a0(=[[[[0x1014]+276]+192]]) == 0; its branch-likely delay slot `sw a3,0(a0)` at 0xd83da1c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83da5c targets 0xd83dae4, is taken when (a3(=a0) & 0x1) == 0, and falls through when (a3(=a0) & 0x1) != 0.
  The `bne` branch at 0xd83da8c targets 0xd83da70, is taken when t6(?) != t9(=[[0x1014]+276]+36), and falls through when t6(?) == t9(=[[0x1014]+276]+36).
  The `bne` branch at 0xd83dacc targets 0xd83dab0, is taken when t1(?) != t3(=[[0x1014]+276]+36), and falls through when t1(?) == t3(=[[0x1014]+276]+36).
  The `beql` branch at 0xd83dae8 targets 0xd83db44, is taken when (a3(=a0) & 0x2) == 0, and falls through when (a3(=a0) & 0x2) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd83daec runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83db18 targets 0xd83dafc, is taken when t6(?) != t3(=[[[0x1014]+276]+180]+180), and falls through when t6(?) == t3(=[[[0x1014]+276]+180]+180).
  The `beq` branch at 0xd83db24 targets 0xd83db40 and is always taken.
  The `bnel` branch at 0xd83db34 targets 0xd83db44, is taken when t1(=[[[0x1014]+276]+176]) != 0, and falls through when t1(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd83db38 runs only when taken and is annulled on fall-through.
  The return at 0xd83db48 has v0 = ?.
  The instructions from 0xd83db2c to 0xd83db2c are not reached by any path from the entry, and their branches are not listed.
- `__glx_PopClientAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83db50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83db50-0xd83dc74 (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0xd83db50 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83db54 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83db58 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83db64 loads 4 bytes from [[0x1014]+276] +0xc0.
  The `lw` at 0xd83db68 loads 4 bytes from [[0x1014]+276] +0xbc.
  The `lw` at 0xd83db74 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `lw` at 0xd83db78 loads 4 bytes from [[[0x1014]+276]+192] -0x4.
  The `lw` at 0xd83db84 loads 4 bytes from [[[[0x1014]+276]+192]-4] +0x0.
  The `sw` at 0xd83db88 stores 4 bytes to [[0x1014]+276] +0xc0.
  14 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd83db9c, `lw` at 0xd83dbac, `lw` at 0xd83dbb4.
  14 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd83dba8, `sw` at 0xd83dbb0, `sw` at 0xd83dbbc.
  The `lw` at 0xd83dc1c loads 4 bytes from [[0x1014]+276] +0xb4.
  The `sw` at 0xd83dc54 stores 4 bytes to [[[[0x1014]+276]+192]-4] +0x0.
  The `sw` at 0xd83dc68 stores 4 bytes to [[0x1014]+276] +0xb0.
  The `beq` branch at 0xd83db5c targets 0xd83dc6c, is taken when t7(=[[[0x1014]+276]+216]) == 0, and falls through when t7(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd83db70 targets 0xd83dc5c, is taken when t8(=[[[0x1014]+276]+188]) >= v1(=[[[0x1014]+276]+192]) (unsigned), and falls through when t8(=[[[0x1014]+276]+188]) < v1(=[[[0x1014]+276]+192]) (unsigned); its branch-likely delay slot `lw t7,176(v0)` at 0xd83db74 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83db94 targets 0xd83dc10, is taken when (a1(=[[[[[0x1014]+276]+192]-4]]) & 0x1) == 0, and falls through when (a1(=[[[[[0x1014]+276]+192]-4]]) & 0x1) != 0.
  The `bne` branch at 0xd83dbb8 targets 0xd83db9c, is taken when t2(?) != t4(=[[[[0x1014]+276]+192]-4]+36), and falls through when t2(?) == t4(=[[[[0x1014]+276]+192]-4]+36).
  The `bne` branch at 0xd83dbf8 targets 0xd83dbdc, is taken when t7(?) != t9(=[[[[0x1014]+276]+192]-4]+36), and falls through when t7(?) == t9(=[[[[0x1014]+276]+192]-4]+36).
  The `beq` branch at 0xd83dc14 targets 0xd83dc50, is taken when (a1(=[[[[[0x1014]+276]+192]-4]]) & 0x2) == 0, and falls through when (a1(=[[[[[0x1014]+276]+192]-4]]) & 0x2) != 0.
  The `bne` branch at 0xd83dc40 targets 0xd83dc24, is taken when t1(?) != t9(=[[[[0x1014]+276]+192]-4]+180), and falls through when t1(?) == t9(=[[[[0x1014]+276]+192]-4]+180).
  The `bne` branch at 0xd83dc60 targets 0xd83dc6c, is taken when t7(=[[[0x1014]+276]+176]) != 0, and falls through when t7(=[[[0x1014]+276]+176]) == 0.
  The return at 0xd83dc50 has v0 = [[0x1014]+276].
  The return at 0xd83dc6c has v0 = [[0x1014]+276].
  The instructions from 0xd83dc58 to 0xd83dc58 are not reached by any path from the entry, and their branches are not listed.
- `__glx_InterleavedArrays` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83dc74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83dc74-0xd83deb0 (572 bytes).
  It occupies 572 bytes.
  The `lw` at 0xd83dc9c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83dca4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83dca8 loads 4 bytes from [[0x1014]+276] +0xd8.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd83dcbc, `lw` at 0xd83dce4.
  2 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xb0, including `sw` at 0xd83dcd0, `sw` at 0xd83dcf8.
  The `lw` at 0xd83dd1c loads 4 bytes from table(0xd842450) +0x0.
  5 such `lw` accesses load 4 bytes from abs 0x13bc, including `lw` at 0xd83dd28, `lw` at 0xd83dd44, `lw` at 0xd83dd64.
  The `lbu` at 0xd83dd58 loads 1 byte from table(0xd842430) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x13c8, including `lw` at 0xd83dd68, `lw` at 0xd83ddbc, `lw` at 0xd83de18.
  The `lw` at 0xd83dd78 loads 4 bytes from abs 0x13d8.
  The `lw` at 0xd83dd80 loads 4 bytes from table(0xd842434) +0x0.
  The `lbu` at 0xd83ddb0 loads 1 byte from table(0xd842431) +0x0.
  The `lw` at 0xd83ddcc loads 4 bytes from abs 0x13b8.
  The `lw` at 0xd83ddd0 loads 4 bytes from table(0xd842444) +0x0.
  The `lw` at 0xd83dddc loads 4 bytes from table(0xd842438) +0x0.
  The `lw` at 0xd83dde0 loads 4 bytes from table(0xd842440) +0x0.
  The `lbu` at 0xd83de0c loads 1 byte from table(0xd842432) +0x0.
  The `lw` at 0xd83de28 loads 4 bytes from abs 0x13d4.
  The `lw` at 0xd83de2c loads 4 bytes from table(0xd842448) +0x0.
  The `lw` at 0xd83de74 loads 4 bytes from abs 0x13dc.
  The `lw` at 0xd83de78 loads 4 bytes from table(0xd84244c) +0x0.
  The `lw` at 0xd83de84 loads 4 bytes from table(0xd84243c) +0x0.
  The `jalr` at 0xd83dd3c calls (unknown callee) with a0=0x8079, a1=?, a2=a2 at entry (arg2), a3=a0-10784.
  The `jalr` at 0xd83dd50 calls (unknown callee) with a0=0x8077, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83dd70 calls (unknown callee) with a0=0x8078, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83dd8c calls (unknown callee) with a0=entry(0xd842434), a1=0x1406, a2=?, a3=a2 at entry (arg2).
  The `jalr` at 0xd83dda4 calls (unknown callee) with a0=0x8078, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ddc4 calls (unknown callee) with a0=0x8076, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83dde8 calls (unknown callee) with a0=entry(0xd842438), a1=entry(0xd842440), a2=?, a3=(entry(0xd842444) + a2).
  The `jalr` at 0xd83de00 calls (unknown callee) with a0=0x8076, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83de20 calls (unknown callee) with a0=0x8075, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83de40 calls (unknown callee) with a0=0x1406, a1=?, a2=(entry(0xd842448) + a2), a3=?.
  The `jalr` at 0xd83de58 calls (unknown callee) with a0=0x8075, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83de6c calls (unknown callee) with a0=0x8074, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83de90 calls (unknown callee) with a0=entry(0xd84243c), a1=0x1406, a2=?, a3=(entry(0xd84244c) + a2).
  The `beql` branch at 0xd83dcac targets 0xd83dea0, is taken when t7(=[[[0x1014]+276]+216]) == 0, and falls through when t7(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83dcb0 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd83dcb4 targets 0xd83dcd4, is taken when a1 >= 0 (signed), and falls through when a1 < 0 (signed).
  The `bnel` branch at 0xd83dcc0 targets 0xd83dea0, is taken when t8(=[[[0x1014]+276]+176]) != 0, and falls through when t8(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83dcc4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83dccc targets 0xd83de9c and is always taken.
  The `bne` branch at 0xd83dcd4 targets 0xd83dce4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xd83dcdc targets 0xd83dcfc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bnel` branch at 0xd83dcec targets 0xd83dea0, is taken when t0(=[[[0x1014]+276]+176]) != 0, and falls through when t0(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83dcf0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83dcf4 targets 0xd83de9c and is always taken.
  The `bne` branch at 0xd83dcfc targets 0xd83dd20, is taken when a1 != 0, and falls through when a1 == 0.
  The `beql` branch at 0xd83dd60 targets 0xd83dda0, is taken when t7(=entry(0xd842430)) == 0, and falls through when t7(=entry(0xd842430)) != 0; its branch-likely delay slot `lw t9,956(s0)` at 0xd83dd64 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83dd94 targets 0xd83ddb0 and is always taken.
  The `beql` branch at 0xd83ddb4 targets 0xd83ddfc, is taken when t8(=entry(0xd842431)) == 0, and falls through when t8(=entry(0xd842431)) != 0; its branch-likely delay slot `lw t9,956(s0)` at 0xd83ddb8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83ddf0 targets 0xd83de0c and is always taken.
  The `beql` branch at 0xd83de10 targets 0xd83de54, is taken when t2(=entry(0xd842432)) == 0, and falls through when t2(=entry(0xd842432)) != 0; its branch-likely delay slot `lw t9,956(s0)` at 0xd83de14 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83de48 targets 0xd83de64 and is always taken.
  The return at 0xd83dea8 has v0 = one of [[0x1014]+276], ?.
  The instructions from 0xd83dd9c to 0xd83dd9c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83ddf8 to 0xd83ddf8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83de50 to 0xd83de50 are not reached by any path from the entry, and their branches are not listed.
- `__glx_DrawElements` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83deb0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83deb0-0xd83e068 (440 bytes).
  It occupies 440 bytes.
  The `lw` at 0xd83ded8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83dee4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83dee8 loads 4 bytes from [[0x1014]+276] +0xd8.
  2 such `lw` accesses load 4 bytes from [[0x1014]+276] +0xb0, including `lw` at 0xd83defc, `lw` at 0xd83df34.
  2 such `sw` accesses store 4 bytes to [[0x1014]+276] +0xb0, including `sw` at 0xd83df10, `sw` at 0xd83df48.
  The `lw` at 0xd83df50 loads 4 bytes from abs 0x106c.
  4 such `lw` accesses load 4 bytes from abs 0x107c, including `lw` at 0xd83df84, `lw` at 0xd83dfc4, `lw` at 0xd83e004.
  The `lbu` at 0xd83df94 loads 1 byte from a3 (arg3 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1368, including `lw` at 0xd83df9c, `lw` at 0xd83dfe0, `lw` at 0xd83e020.
  The `lbu` at 0xd83dfbc loads 1 byte from ?.
  The `lhu` at 0xd83dfd8 loads 2 bytes from a3 (arg3 at entry) +0x0.
  The `lhu` at 0xd83dffc loads 2 bytes from ?.
  The `lw` at 0xd83e018 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0xd83e03c loads 4 bytes from ?.
  The `jalr` at 0xd83df54 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83dfa0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83dfe4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83e024 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd83e044 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83deec targets 0xd83e054, is taken when t7(=[[[0x1014]+276]+216]) == 0, and falls through when t7(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83def0 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xd83def4 targets 0xd83df14, is taken when a1 >= 0 (signed), and falls through when a1 < 0 (signed).
  The `bnel` branch at 0xd83df00 targets 0xd83e054, is taken when t8(=[[[0x1014]+276]+176]) != 0, and falls through when t8(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83df04 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83df0c targets 0xd83e050 and is always taken.
  The `beq` branch at 0xd83df14 targets 0xd83df34, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd83df1c targets 0xd83df4c, is taken when s0(=a2) == at(=0x1401), and falls through when s0(=a2) != at(=0x1401).
  The `beq` branch at 0xd83df24 targets 0xd83df4c, is taken when s0(=a2) == at(=0x1403), and falls through when s0(=a2) != at(=0x1403).
  The `beql` branch at 0xd83df2c targets 0xd83df50, is taken when s0(=a2) == at(=0x1405), and falls through when s0(=a2) != at(=0x1405); its branch-likely delay slot `sw a3,76(sp)` at 0xd83df30 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd83df3c targets 0xd83e054, is taken when t0(=[[[0x1014]+276]+176]) != 0, and falls through when t0(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83df40 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83df44 targets 0xd83e050 and is always taken.
  The `beq` branch at 0xd83df64 targets 0xd83df88, is taken when s0(=a2) == at(=0x1401), and falls through when s0(=a2) != at(=0x1401).
  The `beq` branch at 0xd83df70 targets 0xd83dfc8, is taken when s0(=a2) == at(=0x1403), and falls through when s0(=a2) != at(=0x1403).
  The `beq` branch at 0xd83df78 targets 0xd83e008, is taken when s0(=a2) == at(=0x1405), and falls through when s0(=a2) != at(=0x1405).
  The `beq` branch at 0xd83df80 targets 0xd83e044 and is always taken.
  The `blez` branch at 0xd83df88 targets 0xd83e040, is taken when s1(=a1) <= 0 (signed), and falls through when s1(=a1) > 0 (signed).
  The `bnel` branch at 0xd83dfb8 targets 0xd83df98, is taken when v0(?) != s1(=a1), and falls through when v0(?) == s1(=a1); its branch-likely delay slot `lbu a0,0(s0)` at 0xd83dfbc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83dfc0 targets 0xd83e044 and is always taken.
  The `blez` branch at 0xd83dfc8 targets 0xd83e040, is taken when s1(=a1) <= 0 (signed), and falls through when s1(=a1) > 0 (signed).
  The `bnel` branch at 0xd83dff8 targets 0xd83dfdc, is taken when s0(?) != v0(=((a1 << 0x1) + a3)), and falls through when s0(?) == v0(=((a1 << 0x1) + a3)); its branch-likely delay slot `lhu a0,0(s0)` at 0xd83dffc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83e000 targets 0xd83e044 and is always taken.
  The `blez` branch at 0xd83e008 targets 0xd83e040, is taken when s1(=a1) <= 0 (signed), and falls through when s1(=a1) > 0 (signed).
  The `bnel` branch at 0xd83e038 targets 0xd83e01c, is taken when s0(?) != v0(=((a1 << 0x2) + a3)), and falls through when s0(?) == v0(=((a1 << 0x2) + a3)); its branch-likely delay slot `lw a0,0(s0)` at 0xd83e03c runs only when taken and is annulled on fall-through.
  The return at 0xd83e060 has v0 = one of [[0x1014]+276], ?.
- `__glx_DrawRangeElements` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e068 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e068-0xd83e0e4 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd83e078 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e088 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e090 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83e0a4 loads 4 bytes from [[0x1014]+276] +0xb0.
  The `sw` at 0xd83e0b8 stores 4 bytes to [[0x1014]+276] +0xb0.
  The `jalr` at 0xd83e0c8 calls __glx_DrawElements with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `beql` branch at 0xd83e094 targets 0xd83e0d8, is taken when t7(=[[[0x1014]+276]+216]) == 0, and falls through when t7(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd83e098 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83e09c targets 0xd83e0bc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bnel` branch at 0xd83e0a8 targets 0xd83e0d8, is taken when t8(=[[[0x1014]+276]+176]) != 0, and falls through when t8(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd83e0ac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd83e0b4 targets 0xd83e0d4 and is always taken.
  The return at 0xd83e0dc has v0 = one of [[0x1014]+276], ?.
- `__glx_PolygonOffset` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e0e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e0e8-0xd83e15c (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd83e0f4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e104 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e110 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e114 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd83e118 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `swc1` at 0xd83e11c stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd83e120 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd83e124 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83e12c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e140 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd83e134 targets 0xd83e150, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd83e138 runs only when taken and is annulled on fall-through.
  The return at 0xd83e154 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Indexub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e15c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e15c-0xd83e1d4 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd83e16c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e17c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e188 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e18c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd83e190 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sb` at 0xd83e194 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd83e198 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83e1a0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e1b8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd83e1a8 targets 0xd83e1c8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd83e1ac runs only when taken and is annulled on fall-through.
  The return at 0xd83e1cc has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_Indexubv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e1d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e1d4-0xd83e24c (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xd83e1e0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e1f0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e1fc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e200 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd83e204 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lbu` at 0xd83e208 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xd83e210 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd83e214 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83e218 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e230 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd83e220 targets 0xd83e240, is taken when t0(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd83e224 runs only when taken and is annulled on fall-through.
  The return at 0xd83e244 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_PixelTexGenSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e24c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e24c-0xd83e2c0 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd83e258 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e268 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e274 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e278 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd83e27c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd83e280 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd83e284 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83e28c stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e2a4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd83e294 targets 0xd83e2b4, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd83e298 runs only when taken and is annulled on fall-through.
  The return at 0xd83e2b8 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_SpriteParameterfSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e2c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e2c0-0xd83e33c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd83e2cc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e2dc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e2e8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e2f0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd83e2f4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd83e2f8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd83e2fc stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd83e300 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83e308 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e320 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd83e310 targets 0xd83e330, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd83e314 runs only when taken and is annulled on fall-through.
  The return at 0xd83e334 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_SpriteParameterfvSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e33c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e33c-0xd83e404 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd83e36c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e380 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e38c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e390 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd83e394 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd83e3a0 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd83e3c0 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83e3d4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e360 calls __glXSpriteParameterfvSGIX_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83e3b0 calls memcpy with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(ret(__glXSpriteParameterfvSGIX_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd83e3e4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83e3d0 targets 0xd83e3f0, is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd83e3fc has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_SpriteParameteriSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e404 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e404-0xd83e480 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd83e410 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e420 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e42c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e430 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd83e434 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd83e438 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd83e43c stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd83e440 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83e448 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e464 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276].
  The `beql` branch at 0xd83e450 targets 0xd83e474, is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd83e454 runs only when taken and is annulled on fall-through.
  The return at 0xd83e478 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_SpriteParameterivSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e480 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e480-0xd83e548 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd83e4b0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e4c4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e4d0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e4d4 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd83e4d8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd83e4e4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd83e504 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83e518 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e4a4 calls __glXSpriteParameterivSGIX_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83e4f4 calls memcpy with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(ret(__glXSpriteParameterivSGIX_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd83e528 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83e514 targets 0xd83e534, is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd83e540 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_TexFilterFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e548 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e548-0xd83e61c (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xd83e558 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e578 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e584 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e598 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd83e59c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd83e5ac stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd83e5b8 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd83e5c0 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `lw` at 0xd83e5d8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83e5ec stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e5cc calls memcpy with a0=[[[0x1014]+276]+4]+16, a1=a3 at entry (arg3), a2=(a2 << 0x2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83e5fc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xd83e580 targets 0xd83e608, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `beq` branch at 0xd83e5e8 targets 0xd83e608, is taken when t2(=[[[0x1014]+276]+8]) >= s0(?) (unsigned), and falls through when t2(=[[[0x1014]+276]+8]) < s0(?) (unsigned).
  The return at 0xd83e614 has v0 = one of (a2 << 0x2), ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_PointParameterfSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e61c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e61c-0xd83e698 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd83e628 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e638 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e644 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e64c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd83e650 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd83e654 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `swc1` at 0xd83e658 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `lw` at 0xd83e65c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83e664 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e67c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd83e66c targets 0xd83e68c, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd83e670 runs only when taken and is annulled on fall-through.
  The return at 0xd83e690 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_PointParameterfvSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e698 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e698-0xd83e760 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xd83e6c8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e6dc loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e6e8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e6ec stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd83e6f0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd83e6fc stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd83e71c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83e730 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e6bc calls __glXPointParameterfvSGIS_size with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83e70c calls memcpy with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(ret(__glXPointParameterfvSGIS_size) << 0x2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd83e740 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83e72c targets 0xd83e74c, is taken when t1(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t1(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd83e758 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_FogFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e760 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e760-0xd83e820 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xd83e770 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e784 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e790 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e7a8 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd83e7ac stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sw` at 0xd83e7b8 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd83e7dc loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83e7f0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e7cc calls memcpy with a0=[[[0x1014]+276]+4]+8, a1=a1 at entry (arg1), a2=(a0 << 0x3), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd83e800 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `bltz` branch at 0xd83e78c targets 0xd83e80c, is taken when v0(=(a0 << 0x1)) < 0 (signed), and falls through when v0(=(a0 << 0x1)) >= 0 (signed).
  The `beq` branch at 0xd83e7ec targets 0xd83e80c, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd83e818 has v0 = one of (a0 << 0x1), ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_StartInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e894 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e894-0xd83e900 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd83e8a0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e8b0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e8bc loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e8c0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd83e8c4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd83e8c8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83e8d0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e8e4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd83e8d8 targets 0xd83e8f4, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd83e8dc runs only when taken and is annulled on fall-through.
  The return at 0xd83e8f8 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_StopInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e900 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e900-0xd83e974 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd83e90c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e91c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e928 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e92c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd83e930 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd83e934 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd83e938 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83e940 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e958 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd83e948 targets 0xd83e968, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd83e94c runs only when taken and is annulled on fall-through.
  The return at 0xd83e96c has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_ReferencePlaneSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e974 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e974-0xd83ea70 (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xd83e984 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83e99c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83e9a8 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83e9b0 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd83e9b4 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd83ea2c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83ea40 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83e9c4 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=a3 at entry (arg3).
  The `jalr` at 0xd83e9e4 calls memcpy with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=?.
  The `jalr` at 0xd83ea04 calls memcpy with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=?.
  The `jalr` at 0xd83ea24 calls memcpy with a0=[[[0x1014]+276]+4]+28, a1=a0+24, a2=0x8, a3=?.
  The `jalr` at 0xd83ea50 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=?.
  The `beq` branch at 0xd83ea3c targets 0xd83ea5c, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  The return at 0xd83ea68 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_FrameZoomSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83ea70 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83ea70-0xd83eae4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xd83ea7c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83ea8c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83ea98 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83ea9c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd83eaa0 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd83eaa4 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `lw` at 0xd83eaa8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83eab0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83eac8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `beql` branch at 0xd83eab8 targets 0xd83ead8, is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd83eabc runs only when taken and is annulled on fall-through.
  The return at 0xd83eadc has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_CopyColorSubTable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83eae4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83eae4-0xd83eb7c (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xd83eaf4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83eb08 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83eb14 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd83eb18 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd83eb1c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sw` at 0xd83eb20 stores 4 bytes to [[[0x1014]+276]+4] +0x4.
  The `sw` at 0xd83eb24 stores 4 bytes to [[[0x1014]+276]+4] +0x8.
  The `sw` at 0xd83eb28 stores 4 bytes to [[[0x1014]+276]+4] +0xc.
  The `sw` at 0xd83eb2c stores 4 bytes to [[[0x1014]+276]+4] +0x10.
  The `sw` at 0xd83eb38 stores 4 bytes to [[[0x1014]+276]+4] +0x14.
  The `lw` at 0xd83eb3c loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd83eb40 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd83eb5c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+24, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd83eb48 targets 0xd83eb6c, is taken when t0(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+24) (unsigned), and falls through when t0(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+24) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd83eb4c runs only when taken and is annulled on fall-through.
  The return at 0xd83eb74 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_GetColorTableParameterfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83f2d8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83f2d8-0xd83f478 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd83f2e8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83f308 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83f30c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83f310 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83f330, `lw` at 0xd83f428.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83f33c, `lw` at 0xd83f354, `lw` at 0xd83f380.
  The `lw` at 0xd83f340 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83f358 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83f368, `sw` at 0xd83f384.
  The `sh` at 0xd83f38c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83f390, `sb` at 0xd83f3bc.
  The `lw` at 0xd83f394 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83f3a8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83f3ac stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83f3b0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83f3b4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83f3c0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83f3cc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83f3d8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd83f3e0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd83f40c stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83f430, `lw` at 0xd83f448.
  The `lw` at 0xd83f434 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83f328 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd83f348 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f374 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f3e8 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83f41c calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd83f43c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f458 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83f314 targets 0xd83f468, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83f318 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f338 targets 0xd83f358, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83f33c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f364 targets 0xd83f388, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83f368 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83f3fc targets 0xd83f410, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd83f408 targets 0xd83f428 and is always taken.
  The `beql` branch at 0xd83f42c targets 0xd83f44c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83f430 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f450 targets 0xd83f468, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83f454 runs only when taken and is annulled on fall-through.
  The return at 0xd83f470 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetColorTableParameteriv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83f478 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83f478-0xd83f618 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd83f488 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83f4a8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83f4ac loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83f4b0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83f4d0, `lw` at 0xd83f5c8.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83f4dc, `lw` at 0xd83f4f4, `lw` at 0xd83f520.
  The `lw` at 0xd83f4e0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83f4f8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83f508, `sw` at 0xd83f524.
  The `sh` at 0xd83f52c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83f530, `sb` at 0xd83f55c.
  The `lw` at 0xd83f534 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83f548 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83f54c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83f550 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83f554 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83f560 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83f56c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83f578 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd83f580 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd83f5ac stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83f5d0, `lw` at 0xd83f5e8.
  The `lw` at 0xd83f5d4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83f4c8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd83f4e8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f514 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f588 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83f5bc calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd83f5dc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f5f8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83f4b4 targets 0xd83f608, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83f4b8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f4d8 targets 0xd83f4f8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83f4dc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f504 targets 0xd83f528, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83f508 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83f59c targets 0xd83f5b0, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd83f5a8 targets 0xd83f5c8 and is always taken.
  The `beql` branch at 0xd83f5cc targets 0xd83f5ec, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83f5d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f5f0 targets 0xd83f608, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83f5f4 runs only when taken and is annulled on fall-through.
  The return at 0xd83f610 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetConvolutionParameterfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83f618 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83f618-0xd83f7b8 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd83f628 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83f648 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83f64c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83f650 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83f670, `lw` at 0xd83f768.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83f67c, `lw` at 0xd83f694, `lw` at 0xd83f6c0.
  The `lw` at 0xd83f680 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83f698 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83f6a8, `sw` at 0xd83f6c4.
  The `sh` at 0xd83f6cc stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83f6d0, `sb` at 0xd83f6fc.
  The `lw` at 0xd83f6d4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83f6e8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83f6ec stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83f6f0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83f6f4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83f700 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83f70c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83f718 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd83f720 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd83f74c stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83f770, `lw` at 0xd83f788.
  The `lw` at 0xd83f774 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83f668 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd83f688 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f6b4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f728 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83f75c calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd83f77c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f798 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83f654 targets 0xd83f7a8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83f658 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f678 targets 0xd83f698, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83f67c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f6a4 targets 0xd83f6c8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83f6a8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83f73c targets 0xd83f750, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd83f748 targets 0xd83f768 and is always taken.
  The `beql` branch at 0xd83f76c targets 0xd83f78c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83f770 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f790 targets 0xd83f7a8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83f794 runs only when taken and is annulled on fall-through.
  The return at 0xd83f7b0 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetConvolutionParameteriv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83f7b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83f7b8-0xd83f958 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd83f7c8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83f7e8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83f7ec loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83f7f0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83f810, `lw` at 0xd83f908.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83f81c, `lw` at 0xd83f834, `lw` at 0xd83f860.
  The `lw` at 0xd83f820 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83f838 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83f848, `sw` at 0xd83f864.
  The `sh` at 0xd83f86c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83f870, `sb` at 0xd83f89c.
  The `lw` at 0xd83f874 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83f888 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83f88c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83f890 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83f894 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83f8a0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83f8ac stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83f8b8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd83f8c0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd83f8ec stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83f910, `lw` at 0xd83f928.
  The `lw` at 0xd83f914 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83f808 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd83f828 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f854 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f8c8 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83f8fc calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd83f91c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f938 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83f7f4 targets 0xd83f948, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83f7f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f818 targets 0xd83f838, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83f81c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f844 targets 0xd83f868, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83f848 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83f8dc targets 0xd83f8f0, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd83f8e8 targets 0xd83f908 and is always taken.
  The `beql` branch at 0xd83f90c targets 0xd83f92c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83f910 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f930 targets 0xd83f948, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83f934 runs only when taken and is annulled on fall-through.
  The return at 0xd83f950 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetHistogramParameterfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83f958 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83f958-0xd83faf8 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd83f968 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83f988 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83f98c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83f990 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83f9b0, `lw` at 0xd83faa8.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83f9bc, `lw` at 0xd83f9d4, `lw` at 0xd83fa00.
  The `lw` at 0xd83f9c0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83f9d8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83f9e8, `sw` at 0xd83fa04.
  The `sh` at 0xd83fa0c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83fa10, `sb` at 0xd83fa3c.
  The `lw` at 0xd83fa14 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83fa28 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83fa2c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83fa30 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83fa34 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83fa40 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83fa4c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83fa58 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd83fa60 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd83fa8c stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83fab0, `lw` at 0xd83fac8.
  The `lw` at 0xd83fab4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83f9a8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd83f9c8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83f9f4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83fa68 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83fa9c calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd83fabc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83fad8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83f994 targets 0xd83fae8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83f998 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f9b8 targets 0xd83f9d8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83f9bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83f9e4 targets 0xd83fa08, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83f9e8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83fa7c targets 0xd83fa90, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd83fa88 targets 0xd83faa8 and is always taken.
  The `beql` branch at 0xd83faac targets 0xd83facc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83fab0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83fad0 targets 0xd83fae8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83fad4 runs only when taken and is annulled on fall-through.
  The return at 0xd83faf0 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetHistogramParameteriv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83faf8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83faf8-0xd83fc98 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd83fb08 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83fb28 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83fb2c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83fb30 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83fb50, `lw` at 0xd83fc48.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83fb5c, `lw` at 0xd83fb74, `lw` at 0xd83fba0.
  The `lw` at 0xd83fb60 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83fb78 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83fb88, `sw` at 0xd83fba4.
  The `sh` at 0xd83fbac stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83fbb0, `sb` at 0xd83fbdc.
  The `lw` at 0xd83fbb4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83fbc8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83fbcc stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83fbd0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83fbd4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83fbe0 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83fbec stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83fbf8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd83fc00 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd83fc2c stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83fc50, `lw` at 0xd83fc68.
  The `lw` at 0xd83fc54 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83fb48 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd83fb68 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83fb94 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83fc08 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83fc3c calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd83fc5c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83fc78 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83fb34 targets 0xd83fc88, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83fb38 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83fb58 targets 0xd83fb78, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83fb5c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83fb84 targets 0xd83fba8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83fb88 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83fc1c targets 0xd83fc30, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd83fc28 targets 0xd83fc48 and is always taken.
  The `beql` branch at 0xd83fc4c targets 0xd83fc6c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83fc50 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83fc70 targets 0xd83fc88, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83fc74 runs only when taken and is annulled on fall-through.
  The return at 0xd83fc90 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetMinmaxParameterfv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83fc98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83fc98-0xd83fe38 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd83fca8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83fcc8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83fccc loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83fcd0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83fcf0, `lw` at 0xd83fde8.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83fcfc, `lw` at 0xd83fd14, `lw` at 0xd83fd40.
  The `lw` at 0xd83fd00 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83fd18 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83fd28, `sw` at 0xd83fd44.
  The `sh` at 0xd83fd4c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83fd50, `sb` at 0xd83fd7c.
  The `lw` at 0xd83fd54 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83fd68 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83fd6c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83fd70 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83fd74 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83fd80 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83fd8c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83fd98 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd83fda0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `swc1` at 0xd83fdcc stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83fdf0, `lw` at 0xd83fe08.
  The `lw` at 0xd83fdf4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83fce8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd83fd08 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83fd34 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83fda8 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83fddc calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd83fdfc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83fe18 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83fcd4 targets 0xd83fe28, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83fcd8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83fcf8 targets 0xd83fd18, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83fcfc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83fd24 targets 0xd83fd48, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83fd28 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83fdbc targets 0xd83fdd0, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd83fdc8 targets 0xd83fde8 and is always taken.
  The `beql` branch at 0xd83fdec targets 0xd83fe0c, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83fdf0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83fe10 targets 0xd83fe28, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83fe14 runs only when taken and is annulled on fall-through.
  The return at 0xd83fe30 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetMinmaxParameteriv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83fe38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83fe38-0xd83ffd8 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0xd83fe48 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83fe68 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd83fe6c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd83fe70 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83fe90, `lw` at 0xd83ff88.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd83fe9c, `lw` at 0xd83feb4, `lw` at 0xd83fee0.
  The `lw` at 0xd83fea0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd83feb8 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd83fec8, `sw` at 0xd83fee4.
  The `sh` at 0xd83feec stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd83fef0, `sb` at 0xd83ff1c.
  The `lw` at 0xd83fef4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd83ff08 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd83ff0c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd83ff10 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd83ff14 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd83ff20 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd83ff2c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd83ff38 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd83ff40 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd83ff6c stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd83ff90, `lw` at 0xd83ffa8.
  The `lw` at 0xd83ff94 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd83fe88 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd83fea8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83fed4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ff48 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd83ff7c calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd83ff9c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd83ffb8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd83fe74 targets 0xd83ffc8, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83fe78 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83fe98 targets 0xd83feb8, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd83fe9c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83fec4 targets 0xd83fee8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd83fec8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd83ff5c targets 0xd83ff70, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd83ff68 targets 0xd83ff88 and is always taken.
  The `beql` branch at 0xd83ff8c targets 0xd83ffac, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd83ff90 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd83ffb0 targets 0xd83ffc8, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd83ffb4 runs only when taken and is annulled on fall-through.
  The return at 0xd83ffd0 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetTexFilterFuncSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83ffe4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83ffe4-0xd840190 (428 bytes).
  It occupies 428 bytes.
  The `lw` at 0xd83fff4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd840014 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd840018 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd84001c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd84003c, `lw` at 0xd840140.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd840048, `lw` at 0xd840060, `lw` at 0xd84008c.
  The `lw` at 0xd84004c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd840064 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd840074, `sw` at 0xd840090.
  The `sh` at 0xd84009c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8400a0, `sb` at 0xd8400d0.
  The `lw` at 0xd8400a4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8400b8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8400bc stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8400c0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd8400c8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd8400cc stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8400d4 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8400e0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8400f0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd8400f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x10.
  The `swc1` at 0xd840124 stores 4 bytes to a2 (arg2 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd840148, `lw` at 0xd840160.
  The `lw` at 0xd84014c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd840034 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd840054 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd840080 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd840100 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd840134 calls _XRead with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xd840154 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd840170 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd840020 targets 0xd840180, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd840024 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd840044 targets 0xd840064, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd840048 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd840070 targets 0xd840094, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+20) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd840074 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd840114 targets 0xd840128, is taken when v0(?) != at(=0x1), and falls through when v0(?) == at(=0x1).
  The `beq` branch at 0xd840120 targets 0xd840140 and is always taken.
  The `beql` branch at 0xd840144 targets 0xd840164, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd840148 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd840168 targets 0xd840180, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd84016c runs only when taken and is annulled on fall-through.
  The return at 0xd840188 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glx_GetInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd840190 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd840190-0xd840304 (372 bytes).
  It occupies 372 bytes.
  The `lw` at 0xd8401a0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8401b4 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8401bc loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8401c0 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8401dc, `lw` at 0xd840298.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8401e8, `lw` at 0xd840200, `lw` at 0xd84022c.
  The `lw` at 0xd8401ec loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd840204 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd840214, `sw` at 0xd840230.
  The `sh` at 0xd84023c stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd840240, `sb` at 0xd840270.
  The `lw` at 0xd840244 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd840258 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd84025c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd840260 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd840268 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd84026c stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd840274 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd840280 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8402a8, `lw` at 0xd8402c8.
  The `lw` at 0xd8402b0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8401d4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8401f4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd840220 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd840290 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd8402b8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8402dc calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8401c4 targets 0xd8402f0, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8401c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8401e4 targets 0xd840204, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8401e8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd840210 targets 0xd840234, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd840214 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8402a4 targets 0xd8402cc, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8402a8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8402d0 targets 0xd8402f0, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8402d4 runs only when taken and is annulled on fall-through.
  The return at 0xd8402fc has v0 = one of 0x0, ?.
- `__glx_PollInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd840490 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd840490-0xd840614 (388 bytes).
  It occupies 388 bytes.
  The `lw` at 0xd8404a0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8404b8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8404c0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8404c4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8404e0, `lw` at 0xd8405bc.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8404ec, `lw` at 0xd840504, `lw` at 0xd840530.
  The `lw` at 0xd8404f0 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd840508 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd840518, `sw` at 0xd840534.
  The `sh` at 0xd840540 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd840544, `sb` at 0xd840574.
  The `lw` at 0xd840548 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd84055c stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd840560 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd840564 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd84056c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd840570 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd840578 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd840584 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8405c8, `lw` at 0xd8405e0.
  The `lw` at 0xd8405cc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8404d8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8404f8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd840524 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd840594 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0.
  The `jalr` at 0xd8405b4 calls _XRead with a0=[[[0x1014]+276]+216], a1=a0 at entry (arg0), a2=0x4, a3=?.
  The `jalr` at 0xd8405d4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8405f0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8404c8 targets 0xd840600, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8404cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8404e8 targets 0xd840508, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8404ec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd840514 targets 0xd840538, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd840518 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8405c4 targets 0xd8405e4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8405c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8405e8 targets 0xd840600, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8405ec runs only when taken and is annulled on fall-through.
  The return at 0xd84060c has v0 = one of 0x0, ?.
- `__glx_FlushRasterSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd840614 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd840614-0xd84075c (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0xd840624 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd840634 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd840638 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd84063c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd84065c, `lw` at 0xd84070c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd84066c, `lw` at 0xd84068c, `lw` at 0xd8406c0.
  The `lw` at 0xd840674 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd840690 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8406a0, `sw` at 0xd8406c4.
  The `sh` at 0xd8406d0 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8406d4, `sb` at 0xd840700.
  The `lw` at 0xd8406d8 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8406ec stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8406f0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8406f4 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd8406f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd8406fc stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd840704 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd840708 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd840714, `lw` at 0xd84072c.
  The `lw` at 0xd840718 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd840654 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=a3 at entry (arg3).
  The `jalr` at 0xd84067c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd8406b0 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd840720 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=0x10, a2=[[0x1014]+276], a3=?.
  The `jalr` at 0xd84073c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd840640 targets 0xd84074c, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd840644 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd840668 targets 0xd840690, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd84066c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd84069c targets 0xd8406c8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8406a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd840710 targets 0xd840730, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd840714 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd840734 targets 0xd84074c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd840738 runs only when taken and is annulled on fall-through.
  The return at 0xd840754 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `__glOdyim_DrawRangeElements` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f54cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f54cc-0xd9f5530 (100 bytes).
  It occupies 100 bytes.
  The `jalr` at 0xd9f54f8 calls __glSetError [0xda4b3d8] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f5514 calls __glOdyim_DrawElements [0xd9f5224] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `beq` branch at 0xd9f54e8 targets 0xd9f5508, is taken when a2 >= a1 (unsigned), and falls through when a2 < a1 (unsigned).
  The `beq` branch at 0xd9f5500 targets 0xd9f5520 and is always taken.
  The return at 0xd9f5528 has v0 = one of ret(__glSetError), ret(__glOdyim_DrawElements).
- `__glOdyim_TexCoordPointerEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f5858 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f5858-0xd9f58a8 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xd9f5864 loads 4 bytes from abs 0x1010.
  The `sw` at 0xd9f5880 stores 4 bytes to [0x1010] +0x16a1c.
  The `jalr` at 0xd9f588c calls __glim_TexCoordPointerEXT [0xdab2b04] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd9f58a0 has v0 = ret(__glim_TexCoordPointerEXT).
- `__glOdyim_TexCoordPointer` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f58a8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f58a8-0xd9f5928 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd9f58c8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9f58d0 loads 4 bytes from abs 0x1010.
  The `sw` at 0xd9f58fc stores 4 bytes to [0x1010] +0x16a1c.
  The `jalr` at 0xd9f58e4 calls __glSetError [0xda4b3d8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f590c calls __glim_TexCoordPointerEXT [0xdab2b04] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0.
  The `bne` branch at 0xd9f58d4 targets 0xd9f58f4, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xd9f58ec targets 0xd9f5918 and is always taken.
  The return at 0xd9f5920 has v0 = one of ret(__glSetError), ret(__glim_TexCoordPointerEXT).
- `__glOdyim_ClipPlane` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f7180 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f7180-0xd9f7264 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0xd9f719c loads 4 bytes from abs 0x1018.
  The `lw` at 0xd9f71a4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xd9f7230 loads 4 bytes from [0x1010] +0x16964.
  The `sw` at 0xd9f7240 stores 4 bytes to [0x1010] +0x16964.
  The `sw` at 0xd9f7248 stores 4 bytes to abs 0x1018.
  The `lw` at 0xd9f724c loads 4 bytes from [0x1010] +0x2e24.
  The `sw` at 0xd9f7250 stores 4 bytes to [0x1010] +0x2e24.
  The `jalr` at 0xd9f71b8 calls __glSetError [0xda4b3d8] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f71dc calls __glSetError [0xda4b3d8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f7200 calls __glSetError [0xda4b3d8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f7218 calls __glim_ClipPlane [0xdab552c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd9f71a8 targets 0xd9f71cc, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `sltiu at,a0,12288` at 0xd9f71ac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd9f71c0 targets 0xd9f7254 and is always taken.
  The `beq` branch at 0xd9f71cc targets 0xd9f71ec, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd9f71e4 targets 0xd9f7254 and is always taken.
  The `bne` branch at 0xd9f71f0 targets 0xd9f7210, is taken when t7(=a0-12288) < 0x6 (unsigned), and falls through when t7(=a0-12288) >= 0x6 (unsigned).
  The `beq` branch at 0xd9f7208 targets 0xd9f7254 and is always taken.
  The return at 0xd9f725c has v0 = one of ret(__glSetError), [0x1010].
  The instructions from 0xd9f71c8 to 0xd9f71c8 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipMatValidateVbuf0N` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f9b00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f9b00-0xd9f9b9c (156 bytes).
  It occupies 156 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31c8, including `lw` at 0xd9f9b24, `lw` at 0xd9f9b70.
  The `lbu` at 0xd9f9b48 loads 1 byte from a0 (arg0 at entry) +0x16f48.
  The `lw` at 0xd9f9b58 loads 4 bytes from a0 (arg0 at entry) +0x19e8c.
  The `lbu` at 0xd9f9b80 loads 1 byte from ?.
  The `jalr` at 0xd9f9b64 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd9f9b38 targets 0xd9f9b84, is taken when s0(=a0+93624) >= v0(=[a0+12744]) (unsigned), and falls through when s0(=a0+93624) < v0(=[a0+12744]) (unsigned).
  The `beql` branch at 0xd9f9b50 targets 0xd9f9b78, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `addiu s0,s0,408` at 0xd9f9b54 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd9f9b7c targets 0xd9f9b4c, is taken when s0(?) < v0(=[a0+12744]) (unsigned), and falls through when s0(?) >= v0(=[a0+12744]) (unsigned); its branch-likely delay slot `lbu t6,400(s0)` at 0xd9f9b80 runs only when taken and is annulled on fall-through.
  The return at 0xd9f9b94 has v0 = [a0+12744].
- `__glOdysseySoftClipMatValidateV1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f9b9c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f9b9c-0xd9f9bec (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xd9f9bb4 loads 4 bytes from a0 (arg0 at entry) +0x31cc.
  The `lbu` at 0xd9f9bb8 loads 1 byte from [a0+12748] +0x190.
  The `lw` at 0xd9f9bcc loads 4 bytes from a0 (arg0 at entry) +0x19e8c.
  The `jalr` at 0xd9f9bd0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+12748], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd9f9bbc targets 0xd9f9be0, is taken when t6(=[[a0+12748]+400]:1) == 0, and falls through when t6(=[[a0+12748]+400]:1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd9f9bc0 runs only when taken and is annulled on fall-through.
  The return at 0xd9f9be4 has v0 = one of ?, ret(?).
- `__glOdysseySoftClipMatValidateV1V2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f9bec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f9bec-0xd9f9c6c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd9f9c04 loads 4 bytes from a0 (arg0 at entry) +0x31cc.
  The `lbu` at 0xd9f9c08 loads 1 byte from [a0+12748] +0x190.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31d0, including `lw` at 0xd9f9c10, `lw` at 0xd9f9c34.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x19e8c, including `lw` at 0xd9f9c20, `lw` at 0xd9f9c4c.
  The `lbu` at 0xd9f9c38 loads 1 byte from [a0+12752] +0x190.
  The `jalr` at 0xd9f9c24 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+12748], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f9c50 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+12752], a2=?, a3=?.
  The `beql` branch at 0xd9f9c0c targets 0xd9f9c38, is taken when t6(=[[a0+12748]+400]:1) == 0, and falls through when t6(=[[a0+12748]+400]:1) != 0; its branch-likely delay slot `lw a1,12752(a0)` at 0xd9f9c10 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9f9c3c targets 0xd9f9c60, is taken when t7(=[[a0+12752]+400]:1) == 0, and falls through when t7(=[[a0+12752]+400]:1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd9f9c40 runs only when taken and is annulled on fall-through.
  The return at 0xd9f9c64 has v0 = one of ?, ret(?).
- `__glOdysseySoftClipMatValidateVbuf0V1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f9c6c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f9c6c-0xd9f9cf8 (140 bytes).
  It occupies 140 bytes.
  The `lbu` at 0xd9f9c8c loads 1 byte from a0 (arg0 at entry) +0x16f48.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31cc, including `lw` at 0xd9f9c94, `lw` at 0xd9f9cc0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x19e8c, including `lw` at 0xd9f9ca4, `lw` at 0xd9f9cd8.
  The `lbu` at 0xd9f9cc4 loads 1 byte from [a0+12748] +0x190.
  The `jalr` at 0xd9f9cb0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+93624, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f9cdc calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+12748], a2=?, a3=?.
  The `beql` branch at 0xd9f9c90 targets 0xd9f9cc4, is taken when t6(=[a0+94024]:1) == 0, and falls through when t6(=[a0+94024]:1) != 0; its branch-likely delay slot `lw a1,12748(a0)` at 0xd9f9c94 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9f9cc8 targets 0xd9f9cec, is taken when t7(=[[a0+12748]+400]:1) == 0, and falls through when t7(=[[a0+12748]+400]:1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd9f9ccc runs only when taken and is annulled on fall-through.
  The return at 0xd9f9cf0 has v0 = one of ?, ret(?).
- `__glOdysseySoftClipMatValidateV1V2V3` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f9cf8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f9cf8-0xd9f9da8 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xd9f9d10 loads 4 bytes from a0 (arg0 at entry) +0x31cc.
  The `lbu` at 0xd9f9d14 loads 1 byte from [a0+12748] +0x190.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31d0, including `lw` at 0xd9f9d1c, `lw` at 0xd9f9d40.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x19e8c, including `lw` at 0xd9f9d2c, `lw` at 0xd9f9d5c, `lw` at 0xd9f9d88.
  The `lbu` at 0xd9f9d44 loads 1 byte from [a0+12752] +0x190.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31d4, including `lw` at 0xd9f9d4c, `lw` at 0xd9f9d70.
  The `lbu` at 0xd9f9d74 loads 1 byte from [a0+12756] +0x190.
  The `jalr` at 0xd9f9d30 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+12748], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f9d60 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+12752], a2=?, a3=?.
  The `jalr` at 0xd9f9d8c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+12756], a2=?, a3=?.
  The `beql` branch at 0xd9f9d18 targets 0xd9f9d44, is taken when t6(=[[a0+12748]+400]:1) == 0, and falls through when t6(=[[a0+12748]+400]:1) != 0; its branch-likely delay slot `lw a1,12752(a0)` at 0xd9f9d1c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9f9d48 targets 0xd9f9d74, is taken when t7(=[[a0+12752]+400]:1) == 0, and falls through when t7(=[[a0+12752]+400]:1) != 0; its branch-likely delay slot `lw a1,12756(a0)` at 0xd9f9d4c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9f9d78 targets 0xd9f9d9c, is taken when t8(=[[a0+12756]+400]:1) == 0, and falls through when t8(=[[a0+12756]+400]:1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd9f9d7c runs only when taken and is annulled on fall-through.
  The return at 0xd9f9da0 has v0 = one of ?, ret(?).
- `__glOdysseySoftClipMatValidateV2V3` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f9da8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f9da8-0xd9f9e28 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xd9f9dc0 loads 4 bytes from a0 (arg0 at entry) +0x31d0.
  The `lbu` at 0xd9f9dc4 loads 1 byte from [a0+12752] +0x190.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31d4, including `lw` at 0xd9f9dcc, `lw` at 0xd9f9df0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x19e8c, including `lw` at 0xd9f9ddc, `lw` at 0xd9f9e08.
  The `lbu` at 0xd9f9df4 loads 1 byte from [a0+12756] +0x190.
  The `jalr` at 0xd9f9de0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+12752], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f9e0c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+12756], a2=?, a3=?.
  The `beql` branch at 0xd9f9dc8 targets 0xd9f9df4, is taken when t6(=[[a0+12752]+400]:1) == 0, and falls through when t6(=[[a0+12752]+400]:1) != 0; its branch-likely delay slot `lw a1,12756(a0)` at 0xd9f9dcc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9f9df8 targets 0xd9f9e1c, is taken when t7(=[[a0+12756]+400]:1) == 0, and falls through when t7(=[[a0+12756]+400]:1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd9f9dfc runs only when taken and is annulled on fall-through.
  The return at 0xd9f9e20 has v0 = one of ?, ret(?).
- `__glOdysseySoftClipMatValidateVbuf0V1V2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f9e28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f9e28-0xd9f9ee4 (188 bytes).
  It occupies 188 bytes.
  The `lbu` at 0xd9f9e48 loads 1 byte from a0 (arg0 at entry) +0x16f48.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31cc, including `lw` at 0xd9f9e50, `lw` at 0xd9f9e7c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x19e8c, including `lw` at 0xd9f9e60, `lw` at 0xd9f9e98, `lw` at 0xd9f9ec4.
  The `lbu` at 0xd9f9e80 loads 1 byte from [a0+12748] +0x190.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31d0, including `lw` at 0xd9f9e88, `lw` at 0xd9f9eac.
  The `lbu` at 0xd9f9eb0 loads 1 byte from [a0+12752] +0x190.
  The `jalr` at 0xd9f9e6c calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+93624, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd9f9e9c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+12748], a2=?, a3=?.
  The `jalr` at 0xd9f9ec8 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+12752], a2=?, a3=?.
  The `beql` branch at 0xd9f9e4c targets 0xd9f9e80, is taken when t6(=[a0+94024]:1) == 0, and falls through when t6(=[a0+94024]:1) != 0; its branch-likely delay slot `lw a1,12748(a0)` at 0xd9f9e50 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9f9e84 targets 0xd9f9eb0, is taken when t7(=[[a0+12748]+400]:1) == 0, and falls through when t7(=[[a0+12748]+400]:1) != 0; its branch-likely delay slot `lw a1,12752(a0)` at 0xd9f9e88 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd9f9eb4 targets 0xd9f9ed8, is taken when t8(=[[a0+12752]+400]:1) == 0, and falls through when t8(=[[a0+12752]+400]:1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd9f9eb8 runs only when taken and is annulled on fall-through.
  The return at 0xd9f9edc has v0 = one of ?, ret(?).
- `SoftClipThirdTrianglesVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f9ee4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f9ee4-0xd9f9f60 (124 bytes).
  It occupies 124 bytes.
  The `lbu` at 0xd9f9efc loads 1 byte from a0 (arg0 at entry) +0x1c5.
  The `sb` at 0xd9f9f08 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9f9f0c stores 4 bytes to a0 (arg0 at entry) +0x6de0.
  The `sw` at 0xd9f9f44 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9f9f4c stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `jalr` at 0xd9f9f2c calls __glOdysseySoftClipProcessTriangle [0xda006a4] with a0=a0 at entry (arg0), a1=a0+93624, a2=a0+94032, a3=a1 at entry (arg1).
  The return at 0xd9f9f58 has v0 = ret(__glOdysseySoftClipProcessTriangle).
- `SoftClipSecondTrianglesVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f9f60 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f9f60-0xd9f9f94 (52 bytes).
  It occupies 52 bytes.
  The `lbu` at 0xd9f9f6c loads 1 byte from a0 (arg0 at entry) +0x1c5.
  The `sb` at 0xd9f9f80 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9f9f88 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9f9f90 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9f9f8c has v0 = ?.
- `SoftClipFirstTrianglesVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f9f94 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f9f94-0xd9fa0fc (360 bytes).
  It occupies 360 bytes.
  The `lbu` at 0xd9f9fa0 loads 1 byte from a0 (arg0 at entry) +0x1c5.
  The `sb` at 0xd9f9fb4 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9f9fbc stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9f9fc4 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9f9fc0 has v0 = ?.
  The instructions from 0xd9f9fc8 to 0xd9fa0f8 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipEvenTriangleStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9f9ffc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9f9ffc-0xd9fa07c (128 bytes).
  It occupies 128 bytes.
  The `sb` at 0xd9fa018 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa020 stores 4 bytes to a0 (arg0 at entry) +0x6de0.
  The `lw` at 0xd9fa024 loads 4 bytes from a0 (arg0 at entry) +0x31d0.
  The `lw` at 0xd9fa028 loads 4 bytes from a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fa05c stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa060 stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fa064 stores 4 bytes to a0 (arg0 at entry) +0x31d0.
  The `sw` at 0xd9fa068 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `jalr` at 0xd9fa03c calls __glOdysseySoftClipProcessTriangle [0xda006a4] with a0=a0 at entry (arg0), a1=[a0+12752], a2=a1 at entry (arg1), a3=[a0+12748].
  The return at 0xd9fa074 has v0 = ret(__glOdysseySoftClipProcessTriangle).
- `__glOdysseySoftClipOddTriangleStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa07c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa07c-0xd9fa0fc (128 bytes).
  It occupies 128 bytes.
  The `sb` at 0xd9fa098 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa0a0 stores 4 bytes to a0 (arg0 at entry) +0x6de0.
  The `lw` at 0xd9fa0a4 loads 4 bytes from a0 (arg0 at entry) +0x31d0.
  The `lw` at 0xd9fa0a8 loads 4 bytes from a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fa0dc stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa0e0 stores 4 bytes to a0 (arg0 at entry) +0x31d0.
  The `sw` at 0xd9fa0e4 stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fa0e8 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `jalr` at 0xd9fa0bc calls __glOdysseySoftClipProcessTriangle [0xda006a4] with a0=a0 at entry (arg0), a1=[a0+12752], a2=[a0+12748], a3=a1 at entry (arg1).
  The return at 0xd9fa0f4 has v0 = ret(__glOdysseySoftClipProcessTriangle).
- `SoftClipSecondTriangleStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa0fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa0fc-0xd9fa154 (88 bytes).
  It occupies 88 bytes.
  The `sb` at 0xd9fa120 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa13c stores 4 bytes to a0 (arg0 at entry) +0x31d0.
  The `sw` at 0xd9fa140 stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fa144 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa148 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fa150 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9fa14c has v0 = ?.
- `SoftClipFirstTriangleStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa154 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa154-0xd9fa1bc (104 bytes).
  It occupies 104 bytes.
  The `sb` at 0xd9fa170 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa17c stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa184 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9fa180 has v0 = ?.
  The instructions from 0xd9fa188 to 0xd9fa1b8 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipBeginTStrip` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa188 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa188-0xd9fa1bc (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9fa1ac stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa1b0 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fa1b8 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9fa1b4 has v0 = ?.
- `SoftClipTriangleFanVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa1bc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa1bc-0xd9fa224 (104 bytes).
  It occupies 104 bytes.
  The `sb` at 0xd9fa1dc stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa1e0 stores 4 bytes to a0 (arg0 at entry) +0x6de0.
  The `lw` at 0xd9fa1e8 loads 4 bytes from a0 (arg0 at entry) +0x31d0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31cc, including `lw` at 0xd9fa1ec, `lw` at 0xd9fa208.
  The `sw` at 0xd9fa20c stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fa210 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `jalr` at 0xd9fa1f4 calls __glOdysseySoftClipProcessTriangle [0xda006a4] with a0=a0 at entry (arg0), a1=[a0+12752], a2=[a0+12748], a3=a1 at entry (arg1).
  The return at 0xd9fa21c has v0 = ret(__glOdysseySoftClipProcessTriangle).
- `SoftClipSecondTriangleFanVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa224 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa224-0xd9fa280 (92 bytes).
  It occupies 92 bytes.
  The `sb` at 0xd9fa24c stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa268 stores 4 bytes to a0 (arg0 at entry) +0x31d0.
  The `sw` at 0xd9fa26c stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fa270 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa274 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fa27c stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9fa278 has v0 = ?.
- `SoftClipFirstTriangleFanVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa280 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa280-0xd9fa2e8 (104 bytes).
  It occupies 104 bytes.
  The `sb` at 0xd9fa29c stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa2a8 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa2b0 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9fa2ac has v0 = ?.
  The instructions from 0xd9fa2b4 to 0xd9fa2e4 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipBeginTFan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa2b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa2b4-0xd9fa2e8 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9fa2d8 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa2dc stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fa2e4 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9fa2e0 has v0 = ?.
- `SoftClipForthQuadsVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa2e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa2e8-0xd9fa3c4 (220 bytes).
  It occupies 220 bytes.
  The `lbu` at 0xd9fa304 loads 1 byte from a0 (arg0 at entry) +0x1c5.
  The `sb` at 0xd9fa310 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa320 stores 4 bytes to a0 (arg0 at entry) +0x6de0.
  The `lbu` at 0xd9fa324 loads 1 byte from a0 (arg0 at entry) +0x171a0.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x171a0, including `sb` at 0xd9fa334, `sb` at 0xd9fa370.
  The `lbu` at 0xd9fa374 loads 1 byte from a0 (arg0 at entry) +0x16e70.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x16e70, including `sb` at 0xd9fa37c, `sb` at 0xd9fa3a4.
  The `sw` at 0xd9fa3ac stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fa3b0 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `jalr` at 0xd9fa354 calls __glOdysseySoftClipProcessTriangle [0xda006a4] with a0=a0 at entry (arg0), a1=a0+93624, a2=a0+94032, a3=a0+94440.
  The `jalr` at 0xd9fa388 calls __glOdysseySoftClipProcessTriangle [0xda006a4] with a0=a0 at entry (arg0), a1=a0+93624, a2=a0+94440, a3=a1 at entry (arg1).
  The return at 0xd9fa3bc has v0 = ret(__glOdysseySoftClipProcessTriangle).
- `SoftClipThirdQuadsVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa3c4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa3c4-0xd9fa3f8 (52 bytes).
  It occupies 52 bytes.
  The `lbu` at 0xd9fa3d0 loads 1 byte from a0 (arg0 at entry) +0x1c5.
  The `sb` at 0xd9fa3e4 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa3ec stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa3f4 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9fa3f0 has v0 = ?.
- `SoftClipSecondQuadsVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa3f8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa3f8-0xd9fa42c (52 bytes).
  It occupies 52 bytes.
  The `lbu` at 0xd9fa404 loads 1 byte from a0 (arg0 at entry) +0x1c5.
  The `sb` at 0xd9fa418 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa420 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa428 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9fa424 has v0 = ?.
- `SoftClipFirstQuadsVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa42c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa42c-0xd9fa494 (104 bytes).
  It occupies 104 bytes.
  The `lbu` at 0xd9fa438 loads 1 byte from a0 (arg0 at entry) +0x1c5.
  The `sb` at 0xd9fa44c stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa454 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa45c stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9fa458 has v0 = ?.
  The instructions from 0xd9fa460 to 0xd9fa490 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipBeginQuads` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa460 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa460-0xd9fa494 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9fa484 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa488 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fa490 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9fa48c has v0 = ?.
- `SoftClipEvenQuadStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa494 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa494-0xd9fa584 (240 bytes).
  It occupies 240 bytes.
  The `sb` at 0xd9fa4b8 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `lw` at 0xd9fa4bc loads 4 bytes from a0 (arg0 at entry) +0x31c8.
  The `lw` at 0xd9fa4c0 loads 4 bytes from a0 (arg0 at entry) +0x31d0.
  The `lw` at 0xd9fa4c8 loads 4 bytes from a0 (arg0 at entry) +0x31d4.
  The `lw` at 0xd9fa4cc loads 4 bytes from a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fa4d4 stores 4 bytes to a0 (arg0 at entry) +0x6de0.
  The `lbu` at 0xd9fa4d8 loads 1 byte from [a0+12752] +0xb8.
  2 such `sb` accesses store 1 byte to [a0+12752] +0xb8, including `sb` at 0xd9fa4e4, `sb` at 0xd9fa50c.
  The `lbu` at 0xd9fa510 loads 1 byte from [a0+12748] +0xb8.
  2 such `sb` accesses store 1 byte to [a0+12748] +0xb8, including `sb` at 0xd9fa51c, `sb` at 0xd9fa540.
  The `sw` at 0xd9fa544 stores 4 bytes to a0 (arg0 at entry) +0x31d4.
  The `sw` at 0xd9fa550 stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fa554 stores 4 bytes to a0 (arg0 at entry) +0x31d0.
  The `sw` at 0xd9fa564 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fa568 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa56c stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The `jalr` at 0xd9fa4f4 calls __glOdysseySoftClipProcessTriangle [0xda006a4] with a0=a0 at entry (arg0), a1=[a0+12748], a2=[a0+12756], a3=[a0+12752].
  The `jalr` at 0xd9fa528 calls __glOdysseySoftClipProcessTriangle [0xda006a4] with a0=a0 at entry (arg0), a1=[a0+12748], a2=[a0+12752], a3=[a0+12744].
  The return at 0xd9fa57c has v0 = ret(__glOdysseySoftClipProcessTriangle).
- `SoftClipOddQuadStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa584 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa584-0xd9fa5bc (56 bytes).
  It occupies 56 bytes.
  The `sb` at 0xd9fa598 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `lw` at 0xd9fa59c loads 4 bytes from a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fa5a8 stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fa5ac stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fa5b0 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa5b8 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9fa5b4 has v0 = ?.
- `SoftClipSecondQuadStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa5bc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa5bc-0xd9fa620 (100 bytes).
  It occupies 100 bytes.
  The `sb` at 0xd9fa5f0 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa608 stores 4 bytes to a0 (arg0 at entry) +0x31d4.
  The `sw` at 0xd9fa60c stores 4 bytes to a0 (arg0 at entry) +0x31d0.
  The `sw` at 0xd9fa610 stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fa614 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa61c stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9fa618 has v0 = ?.
- `SoftClipFirstQuadStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa620 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa620-0xd9fa688 (104 bytes).
  It occupies 104 bytes.
  The `sb` at 0xd9fa63c stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa648 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa650 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9fa64c has v0 = ?.
  The instructions from 0xd9fa654 to 0xd9fa684 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipBeginQStrip` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa654 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa654-0xd9fa688 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9fa678 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa67c stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fa684 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9fa680 has v0 = ?.
- `SoftClipEndPolygon3Verts` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa688 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa688-0xd9fa6e8 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0xd9fa6a8 loads 4 bytes from a0 (arg0 at entry) +0x31d0.
  The `lw` at 0xd9fa6ac loads 4 bytes from a0 (arg0 at entry) +0x31cc.
  The `jalr` at 0xd9fa6b8 calls __glOdysseySoftClipProcessTriangle [0xda006a4] with a0=a0 at entry (arg0), a1=a0+93624, a2=[a0+12752], a3=[a0+12748].
  The `jalr` at 0xd9fa6cc calls __glEndPrim [0xda7e990] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0xd9fa6e0 has v0 = ret(__glEndPrim).
- `SoftClipEndPolygon` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa6e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa6e8-0xd9fa754 (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xd9fa704 loads 4 bytes from a0 (arg0 at entry) +0x31d0.
  The `lw` at 0xd9fa708 loads 4 bytes from a0 (arg0 at entry) +0x31cc.
  The `sb` at 0xd9fa710 stores 1 byte to a0 (arg0 at entry) +0x16e70.
  The `jalr` at 0xd9fa724 calls __glOdysseySoftClipProcessTriangle [0xda006a4] with a0=a0 at entry (arg0), a1=a0+93624, a2=[a0+12752], a3=[a0+12748].
  The `jalr` at 0xd9fa738 calls __glEndPrim [0xda7e990] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0xd9fa74c has v0 = ret(__glEndPrim).
- `SoftClipPolygonVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa754 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa754-0xd9fa804 (176 bytes).
  It occupies 176 bytes.
  The `lbu` at 0xd9fa770 loads 1 byte from a0 (arg0 at entry) +0x1c5.
  The `sb` at 0xd9fa77c stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `lbu` at 0xd9fa780 loads 1 byte from a0 (arg0 at entry) +0x16e70.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31cc, including `lw` at 0xd9fa784, `lw` at 0xd9fa7e0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31d0, including `lw` at 0xd9fa788, `lw` at 0xd9fa7dc.
  The `lbu` at 0xd9fa790 loads 1 byte from [a0+12748] +0xb8.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x16e70, including `sb` at 0xd9fa7a0, `sb` at 0xd9fa7d0.
  2 such `sb` accesses store 1 byte to [a0+12748] +0xb8, including `sb` at 0xd9fa7a4, `sb` at 0xd9fa7d8.
  The `sw` at 0xd9fa7e4 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa7e8 stores 4 bytes to a0 (arg0 at entry) +0x31d0.
  The `sw` at 0xd9fa7f0 stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `jalr` at 0xd9fa7b4 calls __glOdysseySoftClipProcessTriangle [0xda006a4] with a0=a0 at entry (arg0), a1=a0+93624, a2=[a0+12752], a3=[a0+12748].
  The return at 0xd9fa7fc has v0 = ret(__glOdysseySoftClipProcessTriangle).
- `SoftClipForthPolygonVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa804 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa804-0xd9fa8b8 (180 bytes).
  It occupies 180 bytes.
  The `lbu` at 0xd9fa820 loads 1 byte from a0 (arg0 at entry) +0x1c5.
  The `sb` at 0xd9fa82c stores 1 byte to a1 (arg1 at entry) +0xb8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31cc, including `lw` at 0xd9fa830, `lw` at 0xd9fa874.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31d0, including `lw` at 0xd9fa834, `lw` at 0xd9fa870.
  The `lbu` at 0xd9fa83c loads 1 byte from [a0+12748] +0xb8.
  2 such `sb` accesses store 1 byte to [a0+12748] +0xb8, including `sb` at 0xd9fa844, `sb` at 0xd9fa86c.
  The `sw` at 0xd9fa87c stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa880 stores 4 bytes to a0 (arg0 at entry) +0x31d0.
  The `sw` at 0xd9fa898 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fa89c stores 4 bytes to a0 (arg0 at entry) +0x2f5c.
  The `sw` at 0xd9fa8a0 stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fa8a4 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The `jalr` at 0xd9fa854 calls __glOdysseySoftClipProcessTriangle [0xda006a4] with a0=a0 at entry (arg0), a1=a0+93624, a2=[a0+12752], a3=[a0+12748].
  The return at 0xd9fa8b0 has v0 = ret(__glOdysseySoftClipProcessTriangle).
- `SoftClipThirdPolygonVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa8b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa8b8-0xd9fa918 (96 bytes).
  It occupies 96 bytes.
  The `lbu` at 0xd9fa8cc loads 1 byte from a0 (arg0 at entry) +0x1c5.
  The `sb` at 0xd9fa8e8 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa900 stores 4 bytes to a0 (arg0 at entry) +0x31d0.
  The `sw` at 0xd9fa904 stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fa908 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa90c stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fa914 stores 4 bytes to a0 (arg0 at entry) +0x2f5c.
  The return at 0xd9fa910 has v0 = ?.
- `SoftClipSecondPolygonVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa918 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa918-0xd9fa94c (52 bytes).
  It occupies 52 bytes.
  The `lbu` at 0xd9fa924 loads 1 byte from a0 (arg0 at entry) +0x1c5.
  The `sb` at 0xd9fa938 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa940 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa948 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9fa944 has v0 = ?.
- `SoftClipFirstPolygonVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa94c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa94c-0xd9fa9c0 (116 bytes).
  It occupies 116 bytes.
  The `lbu` at 0xd9fa958 loads 1 byte from a0 (arg0 at entry) +0x1c5.
  The `sb` at 0xd9fa968 stores 1 byte to a1 (arg1 at entry) +0xb8.
  The `sw` at 0xd9fa974 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa978 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fa980 stores 4 bytes to a0 (arg0 at entry) +0x6de0.
  The return at 0xd9fa97c has v0 = ?.
  The instructions from 0xd9fa984 to 0xd9fa9bc are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipBeginPolygon` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa984 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa984-0xd9fa9b8 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9fa9a8 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fa9ac stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fa9b4 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9fa9b0 has v0 = ?.
- `SoftClipSecondLinesVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fa9c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fa9c0-0xd9faa28 (104 bytes).
  It occupies 104 bytes.
  The `sw` at 0xd9fa9d8 stores 4 bytes to a0 (arg0 at entry) +0x6de0.
  The `sw` at 0xd9faa0c stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9faa14 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `jalr` at 0xd9fa9f4 calls __glOdysseySoftClipProcessLine [0xda00da8] with a0=a0 at entry (arg0), a1=a0+93624, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0xd9faa20 has v0 = ret(__glOdysseySoftClipProcessLine).
- `SoftClipFirstLinesVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9faa28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9faa28-0xd9faa8c (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xd9faa4c stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9faa54 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9faa50 has v0 = ?.
  The instructions from 0xd9faa58 to 0xd9faa88 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipBeginLines` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9faa58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9faa58-0xd9faa8c (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9faa7c stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9faa80 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9faa88 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9faa84 has v0 = ?.
- `SoftClipLineStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9faa8c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9faa8c-0xd9faae8 (92 bytes).
  It occupies 92 bytes.
  The `sw` at 0xd9faaa8 stores 4 bytes to a0 (arg0 at entry) +0x6de0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31cc, including `lw` at 0xd9faab0, `lw` at 0xd9faacc.
  The `sw` at 0xd9faad0 stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9faad4 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `jalr` at 0xd9faab8 calls __glOdysseySoftClipProcessLine [0xda00da8] with a0=a0 at entry (arg0), a1=[a0+12748], a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0xd9faae0 has v0 = ret(__glOdysseySoftClipProcessLine).
- `SoftClipFirstLineStripVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9faae8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9faae8-0xd9fab64 (124 bytes).
  It occupies 124 bytes.
  The `sw` at 0xd9fab1c stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fab20 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fab24 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fab2c stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9fab28 has v0 = ?.
  The instructions from 0xd9fab30 to 0xd9fab60 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipBeginLStrip` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fab30 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fab30-0xd9fab64 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9fab54 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fab58 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fab60 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9fab5c has v0 = ?.
- `SoftClipEndLineLoop` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fab64 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fab64-0xd9fabc8 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xd9fab88 stores 4 bytes to a0 (arg0 at entry) +0x6de0.
  The `lw` at 0xd9fab90 loads 4 bytes from a0 (arg0 at entry) +0x31cc.
  The `jalr` at 0xd9fab98 calls __glOdysseySoftClipProcessLine [0xda00da8] with a0=a0 at entry (arg0), a1=[a0+12748], a2=a0+93624, a3=a3 at entry (arg3).
  The `jalr` at 0xd9fabac calls __glEndPrim [0xda7e990] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0xd9fabc0 has v0 = ret(__glEndPrim).
- `SoftClipLineLoopVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fabc8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fabc8-0xd9fac24 (92 bytes).
  It occupies 92 bytes.
  The `sw` at 0xd9fabe4 stores 4 bytes to a0 (arg0 at entry) +0x6de0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x31cc, including `lw` at 0xd9fabec, `lw` at 0xd9fac08.
  The `sw` at 0xd9fac0c stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fac10 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `jalr` at 0xd9fabf4 calls __glOdysseySoftClipProcessLine [0xda00da8] with a0=a0 at entry (arg0), a1=[a0+12748], a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0xd9fac1c has v0 = ret(__glOdysseySoftClipProcessLine).
- `SoftClipSecondLineLoopVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fac24 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fac24-0xd9facb4 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0xd9fac3c stores 4 bytes to a0 (arg0 at entry) +0x6de0.
  The `sw` at 0xd9fac90 stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fac94 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fac98 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fac9c stores 4 bytes to a0 (arg0 at entry) +0x2f5c.
  The `sw` at 0xd9faca0 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The `jalr` at 0xd9fac54 calls __glOdysseySoftClipProcessLine [0xda00da8] with a0=a0 at entry (arg0), a1=a0+93624, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0xd9facac has v0 = ret(__glOdysseySoftClipProcessLine).
- `SoftClipFirstLineLoopVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9facb4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9facb4-0xd9fad18 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xd9facd8 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9face0 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9facdc has v0 = ?.
  The instructions from 0xd9face4 to 0xd9fad14 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipBeginLLoop` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9face4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9face4-0xd9fad18 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9fad08 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fad0c stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fad14 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9fad10 has v0 = ?.
- `SoftClipSecondLineLoopVertexPartial` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fad18 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fad18-0xd9fad6c (84 bytes).
  It occupies 84 bytes.
  The `sw` at 0xd9fad54 stores 4 bytes to a0 (arg0 at entry) +0x31cc.
  The `sw` at 0xd9fad58 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fad5c stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fad60 stores 4 bytes to a0 (arg0 at entry) +0x2f5c.
  The `sw` at 0xd9fad68 stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9fad64 has v0 = ?.
- `SoftClipFirstLineLoopVertexPartial` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fad6c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fad6c-0xd9fadd0 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xd9fad90 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fad98 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9fad94 has v0 = ?.
  The instructions from 0xd9fad9c to 0xd9fadcc are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipBeginLLoopPartial` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fad9c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fad9c-0xd9fadd0 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xd9fadc0 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fadc4 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The `sw` at 0xd9fadcc stores 4 bytes to a0 (arg0 at entry) +0x2f2c.
  The return at 0xd9fadc8 has v0 = ?.
- `SoftClipPointVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fadd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fadd0-0xd9faf10 (320 bytes).
  It occupies 320 bytes.
  The `sw` at 0xd9fade8 stores 4 bytes to a0 (arg0 at entry) +0x6de0.
  The `lw` at 0xd9fadec loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xd9fadf8 loads 4 bytes from a0 (arg0 at entry) +0x3108.
  The `jalr` at 0xd9fadfc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xd9fadf0 targets 0xd9fae0c, is taken when t6(=[a1+4]) != 0, and falls through when t6(=[a1+4]) == 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd9fadf4 runs only when taken and is annulled on fall-through.
  The return at 0xd9fae10 has v0 = one of ?, ret(?).
  The instructions from 0xd9fae18 to 0xd9faf0c are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipBeginPoints` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fae18 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fae18-0xd9fae44 (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0xd9fae38 stores 4 bytes to a0 (arg0 at entry) +0x31c8.
  The `sw` at 0xd9fae40 stores 4 bytes to a0 (arg0 at entry) +0x2ee4.
  The return at 0xd9fae3c has v0 = ?.
- `__glOdysseyClipCheck` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fae60 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fae60-0xd9faf10 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xd9fae74 loads 4 bytes from a0 (arg0 at entry) +0x16818.
  The `lwc1` at 0xd9fae80 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lwc1` at 0xd9fae84 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lwc1` at 0xd9fae88 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lwc1` at 0xd9fae8c loads 4 bytes from a1 (arg1 at entry) +0x1c.
  4 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xd9faeb8, `lwc1` at 0xd9faebc, `lwc1` at 0xd9faec8.
  The `beq` branch at 0xd9fae98 targets 0xd9faf08, is taken when v0(=[a0+92184]) == 0, and falls through when v0(=[a0+92184]) != 0.
  The `beq` branch at 0xd9faeb0 targets 0xd9faefc, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `bc1fl` branch at 0xd9faef0 targets 0xd9faf00, is taken when not (f6 < f18 (c.lt.d at 0xd9faee8)), and falls through when f6 < f18 (c.lt.d at 0xd9faee8); its branch-likely delay slot `sll a2,a2,0x1` at 0xd9faef4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xd9faf00 targets 0xd9faeac, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The return at 0xd9faf08 has v0 = one of 0x0, ?.
- `__glOdysseySoftClipValidateVertex` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fe504 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fe504-0xda01058 (11092 bytes).
  It occupies 11092 bytes.
  The `lw` at 0xd9fe51c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xd9fe534 loads 4 bytes from a1 (arg1 at entry) +0xc0.
  The `lw` at 0xd9fe538 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `sw` at 0xd9fe53c stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `sw` at 0xd9fe540 stores 4 bytes to a1 (arg1 at entry) +0x24.
  The `lw` at 0xd9fe544 loads 4 bytes from a1 (arg1 at entry) +0xcc.
  The `lw` at 0xd9fe548 loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `sw` at 0xd9fe54c stores 4 bytes to a1 (arg1 at entry) +0x2c.
  The `sw` at 0xd9fe550 stores 4 bytes to a1 (arg1 at entry) +0x28.
  The `jalr` at 0xd9fe558 calls __glValidateVertex4 [0xdae93a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xd9fe52c targets 0xd9fe554, is taken when (t7(?) & 0x8) == 0, and falls through when (t7(?) & 0x8) != 0.
  The return at 0xd9fe56c has v0 = ret(__glValidateVertex4).
  The instructions from 0xd9fe574 to 0xda01054 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipPickVertexProcs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9fe574 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xd9fe574-0xd9fe7f4 (640 bytes).
  It occupies 640 bytes.
  The `lbu` at 0xd9fe580 loads 1 byte from a0 (arg0 at entry) +0xc94.
  The `lw` at 0xd9fe584 loads 4 bytes from a0 (arg0 at entry) +0x700.
  The `lw` at 0xd9fe588 loads 4 bytes from a0 (arg0 at entry) +0x704.
  The `lw` at 0xd9fe5dc loads 4 bytes from a0 (arg0 at entry) +0x7c0.
  The `lw` at 0xd9fe5fc loads 4 bytes from a0 (arg0 at entry) +0x83c.
  The `sw` at 0xd9fe614 stores 4 bytes to a0 (arg0 at entry) +0x2ecc.
  The `sw` at 0xd9fe618 stores 4 bytes to a0 (arg0 at entry) +0x2ed0.
  The `sw` at 0xd9fe620 stores 4 bytes to a0 (arg0 at entry) +0x2ed4.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x585, including `lbu` at 0xd9fe638, `lbu` at 0xd9fe768.
  The `lw` at 0xd9fe66c loads 4 bytes from a0 (arg0 at entry) +0x1647c.
  The `lw` at 0xd9fe6b0 loads 4 bytes from table(0xdafa940) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2ec8, including `sw` at 0xd9fe6bc, `sw` at 0xd9fe7b4.
  The `sw` at 0xd9fe6c0 stores 4 bytes to a0 (arg0 at entry) +0x168bc.
  The `sw` at 0xd9fe6cc stores 4 bytes to a0 (arg0 at entry) +0x168c0.
  The `lbu` at 0xd9fe6d0 loads 1 byte from a0 (arg0 at entry) +0x19de2.
  The `lw` at 0xd9fe6f8 loads 4 bytes from table(0xdafab80) +0x0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x19e94, including `sw` at 0xd9fe708, `sw` at 0xd9fe744, `sw` at 0xd9fe7c8.
  The `lw` at 0xd9fe710 loads 4 bytes from table(0xdafac80) +0x0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x19e98, including `sw` at 0xd9fe720, `sw` at 0xd9fe758, `sw` at 0xd9fe7d8.
  The `lw` at 0xd9fe738 loads 4 bytes from table(0xdafa980) +0x0.
  The `lw` at 0xd9fe748 loads 4 bytes from table(0xdafaa80) +0x0.
  The `lw` at 0xd9fe7a0 loads 4 bytes from ?.
  The `lw` at 0xd9fe7b8 loads 4 bytes from table(0xdafad80) +0x0.
  The `lw` at 0xd9fe7cc loads 4 bytes from table(0xdafae80) +0x0.
  The `sw` at 0xd9fe7e4 stores 4 bytes to a0 (arg0 at entry) +0x2f00.
  The `sw` at 0xd9fe7e8 stores 4 bytes to a0 (arg0 at entry) +0x2f04.
  The `sw` at 0xd9fe7f0 stores 4 bytes to a0 (arg0 at entry) +0x2f08.
  The `beq` branch at 0xd9fe590 targets 0xd9fe5c0, is taken when 0 >= a1(=[a0+3220]:1) (unsigned), and falls through when 0 < a1(=[a0+3220]:1) (unsigned).
  The `bne` branch at 0xd9fe5a0 targets 0xd9fe5c0, is taken when 0 < a3(?) (unsigned), and falls through when 0 >= a3(?) (unsigned).
  The `bne` branch at 0xd9fe5b0 targets 0xd9fe5c0, is taken when 0 < a3(?) (unsigned), and falls through when 0 >= a3(?) (unsigned).
  The `beq` branch at 0xd9fe5cc targets 0xd9fe608, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `bgez` branch at 0xd9fe5d4 targets 0xd9fe5ec, is taken when t6(=([a0+1792] << 0xd)) >= 0 (signed), and falls through when t6(=([a0+1792] << 0xd)) < 0 (signed).
  The `bne` branch at 0xd9fe5e8 targets 0xd9fe608, is taken when a2(?) < 0x1 (unsigned), and falls through when a2(?) >= 0x1 (unsigned).
  The `beq` branch at 0xd9fe5f4 targets 0xd9fe608, is taken when 0 >= t0(?) (unsigned), and falls through when 0 < t0(?) (unsigned).
  The `beq` branch at 0xd9fe61c targets 0xd9fe75c, is taken when a1(=[a0+3220]:1) == 0, and falls through when a1(=[a0+3220]:1) != 0.
  The `beq` branch at 0xd9fe630 targets 0xd9fe654, is taken when (t8(?) & 0xff) == 0, and falls through when (t8(?) & 0xff) != 0.
  The `beq` branch at 0xd9fe644 targets 0xd9fe65c, is taken when t1(=[a0+1413]:1) == 0, and falls through when t1(=[a0+1413]:1) != 0.
  The `beq` branch at 0xd9fe64c targets 0xd9fe65c and is always taken.
  The `beq` branch at 0xd9fe65c targets 0xd9fe680, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xd9fe670 targets 0xd9fe680, is taken when t3(=[a0+91260]) == 0, and falls through when t3(=[a0+91260]) != 0.
  The `beq` branch at 0xd9fe680 targets 0xd9fe69c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xd9fe68c targets 0xd9fe69c, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0xd9fe6dc targets 0xd9fe724, is taken when t9(=[a0+105954]:1) == 0, and falls through when t9(=[a0+105954]:1) != 0.
  The `beq` branch at 0xd9fe71c targets 0xd9fe7dc and is always taken.
  The `beq` branch at 0xd9fe754 targets 0xd9fe7dc and is always taken.
  The `beq` branch at 0xd9fe760 targets 0xd9fe784, is taken when (t5(?) & 0xff) == 0, and falls through when (t5(?) & 0xff) != 0.
  The `beq` branch at 0xd9fe774 targets 0xd9fe78c, is taken when t7(=[a0+1413]:1) == 0, and falls through when t7(=[a0+1413]:1) != 0.
  The `beq` branch at 0xd9fe77c targets 0xd9fe78c and is always taken.
  The return at 0xd9fe7ec has v0 = 0xd9fe504.
- `__glOdysseySoftClipRenderTriangle` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda004c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda004c0-0xda006a4 (484 bytes).
  It occupies 484 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6de0, including `lw` at 0xda004f8, `lw` at 0xda00544.
  7 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xda00500, `sw` at 0xda0050c, `sw` at 0xda00644.
  The `lw` at 0xda00510 loads 4 bytes from a0 (arg0 at entry) +0x570.
  The `lw` at 0xda00524 loads 4 bytes from a0 (arg0 at entry) +0x2f2c.
  The `lw` at 0xda00528 loads 4 bytes from a0 (arg0 at entry) +0x6de4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2f2c, including `sw` at 0xda0052c, `sw` at 0xda0056c.
  The `lw` at 0xda00530 loads 4 bytes from [a0+28128] +0x0.
  The `lw` at 0xda0054c loads 4 bytes from [a0+28128] +0xc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x19e9c, including `lw` at 0xda00574, `lw` at 0xda00588, `lw` at 0xda0059c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x19e98, including `lw` at 0xda005b0, `lw` at 0xda005c4, `lw` at 0xda005d8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x19e94, including `lw` at 0xda00600, `lw` at 0xda00610, `lw` at 0xda00624.
  The `lw` at 0xda0064c loads 4 bytes from a0 (arg0 at entry) +0x96f4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x9830, including `sw` at 0xda0066c, `sw` at 0xda00688.
  The `jalr` at 0xda00554 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+28128], a2=[a0+28132], a3=a3 at entry (arg3).
  The `jalr` at 0xda00580 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xda00594 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0xda005a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xda005bc calls (unknown callee) with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xda005d0 calls (unknown callee) with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xda005e4 calls (unknown callee) with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `jalr` at 0xda00608 calls (unknown callee) with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda0061c calls (unknown callee) with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xda00630 calls (unknown callee) with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `bnel` branch at 0xda00518 targets 0xda005f8, is taken when t8(=[a0+1392]) != at(=0x1d00), and falls through when t8(=[a0+1392]) == at(=0x1d00); its branch-likely delay slot `lui at,0x1` at 0xda0051c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda0053c targets 0xda00568, is taken when (t1(?) & a2(=[a0+28132])) == 0, and falls through when (t1(?) & a2(=[a0+28132])) != 0; its branch-likely delay slot `lui at,0x1` at 0xda00540 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda005ec targets 0xda0063c and is always taken.
  The `beq` branch at 0xda00658 targets 0xda00684, is taken when t4(=[a0+38644]) == 0, and falls through when t4(=[a0+38644]) != 0.
  The return at 0xda0069c has v0 = 0x10046.
  The instructions from 0xda005f4 to 0xda005f4 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipProcessTriangle` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda006a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda006a4-0xda0085c (440 bytes).
  It occupies 440 bytes.
  The `lw` at 0xda006cc loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lw` at 0xda006d0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda006d4 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `lw` at 0xda00704 loads 4 bytes from a0 (arg0 at entry) +0x2f2c.
  The `lw` at 0xda0070c loads 4 bytes from a0 (arg0 at entry) +0x6de4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2f2c, including `sw` at 0xda00714, `sw` at 0xda00824.
  The `lw` at 0xda00718 loads 4 bytes from a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xda00728, `lw` at 0xda00748.
  The `lw` at 0xda00730 loads 4 bytes from a1 (arg1 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0xda00758, `lw` at 0xda0077c.
  The `lw` at 0xda00760 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x570, including `lw` at 0xda0078c, `lw` at 0xda007b0.
  The `lw` at 0xda00794 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lw` at 0xda007c0 loads 4 bytes from a0 (arg0 at entry) +0x6de0.
  The `lw` at 0xda007c4 loads 4 bytes from [a0+28128] +0x0.
  The `lw` at 0xda007dc loads 4 bytes from [a0+28128] +0xc.
  The `lw` at 0xda00808 loads 4 bytes from a0 (arg0 at entry) +0x2f70.
  The `lw` at 0xda00828 loads 4 bytes from a0 (arg0 at entry) +0x2f60.
  The `jalr` at 0xda00738 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+28132], a3=a3 at entry (arg3).
  The `jalr` at 0xda0076c calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a0+28132], a3=a3 at entry (arg3).
  The `jalr` at 0xda007a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[a0+28132], a3=a3 at entry (arg3).
  The `jalr` at 0xda007e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+28128], a2=[a0+28132], a3=a3 at entry (arg3).
  The `jalr` at 0xda00810 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda00834 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda006ec targets 0xda00828, is taken when t7(=(([a1+4] | [a2+4]) | [a3+4])) == 0, and falls through when t7(=(([a1+4] | [a2+4]) | [a3+4])) != 0.
  The `bnel` branch at 0xda006fc targets 0xda00844, is taken when (t8(?) & t1(=[a3+4])) != 0, and falls through when (t8(?) & t1(=[a3+4])) == 0; its branch-likely delay slot `lw ra,52(sp)` at 0xda00700 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda00724 targets 0xda0074c, is taken when (t4(?) & s1(=[a0+28132])) == 0, and falls through when (t4(?) & s1(=[a0+28132])) != 0; its branch-likely delay slot `lw t6,0(s3)` at 0xda00728 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda00754 targets 0xda00780, is taken when (t7(?) & s1(=[a0+28132])) == 0, and falls through when (t7(?) & s1(=[a0+28132])) != 0; its branch-likely delay slot `lw t2,0(a3)` at 0xda00758 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda00788 targets 0xda007b4, is taken when (t3(?) & s1(=[a0+28132])) == 0, and falls through when (t3(?) & s1(=[a0+28132])) != 0; its branch-likely delay slot `lw t5,1392(s0)` at 0xda0078c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda007b8 targets 0xda007fc, is taken when t5(=[a0+1392]) != at(=0x1d00), and falls through when t5(=[a0+1392]) == at(=0x1d00); its branch-likely delay slot `lw t2,68(sp)` at 0xda007bc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda007d0 targets 0xda007fc, is taken when (t7(?) & s1(=[a0+28132])) == 0, and falls through when (t7(?) & s1(=[a0+28132])) != 0; its branch-likely delay slot `lw t2,68(sp)` at 0xda007d4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda00820 targets 0xda00840 and is always taken.
  The return at 0xda00854 has v0 = one of ?, ret(?).
- `__glOdysseySoftClipRenderLine` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda00860 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda00860-0xda00da8 (1352 bytes).
  It occupies 1352 bytes.
  The `lw` at 0xda00890 loads 4 bytes from a0 (arg0 at entry) +0xa6a8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6de0, including `lw` at 0xda00894, `lw` at 0xda008e0.
  The `lw` at 0xda008a0 loads 4 bytes from a0 (arg0 at entry) +0x570.
  The `lbu` at 0xda008b0 loads 1 byte from a1 (arg1 at entry) +0x191.
  The `lbu` at 0xda008b8 loads 1 byte from a2 (arg2 at entry) +0x191.
  The `lw` at 0xda008c0 loads 4 bytes from a0 (arg0 at entry) +0x2f2c.
  The `lw` at 0xda008c4 loads 4 bytes from a0 (arg0 at entry) +0x6de4.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2f2c, including `sw` at 0xda008c8, `sw` at 0xda008dc, `sw` at 0xda008fc.
  The `lw` at 0xda008cc loads 4 bytes from [a0+28128] +0x0.
  The `lw` at 0xda008e8 loads 4 bytes from [a0+28128] +0xc.
  The `lw` at 0xda00908 loads 4 bytes from a0 (arg0 at entry) +0x7b70.
  The `lwc1` at 0xda00920 loads 4 bytes from a0 (arg0 at entry) +0x95bc.
  4 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lwc1` at 0xda00924, `lwc1` at 0xda00a7c, `lwc1` at 0xda00a90.
  The `lwc1` at 0xda00928 loads 4 bytes from a0 (arg0 at entry) +0x95b8.
  The `lwc1` at 0xda0092c loads 4 bytes from a0 (arg0 at entry) +0x95c4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x1c, including `lwc1` at 0xda00930, `lwc1` at 0xda00ae0.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lwc1` at 0xda00934, `lwc1` at 0xda00ab8.
  The `lwc1` at 0xda00944 loads 4 bytes from a0 (arg0 at entry) +0x95c0.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lwc1` at 0xda00948, `lwc1` at 0xda00ac8.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lwc1` at 0xda00990, `lwc1` at 0xda00a20, `lwc1` at 0xda00b00.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x10, including `lwc1` at 0xda00998, `lwc1` at 0xda00a1c, `lwc1` at 0xda00afc.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x18, including `lwc1` at 0xda009a4, `lwc1` at 0xda00a30, `lwc1` at 0xda00b10.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x1c, including `lwc1` at 0xda009b0, `lwc1` at 0xda00a48, `lwc1` at 0xda00b28.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9588, including `lwc1` at 0xda009e0, `lwc1` at 0xda00a18.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x958c, including `lwc1` at 0xda009e4, `lwc1` at 0xda00a28.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9590, including `lwc1` at 0xda009f8, `lwc1` at 0xda00a38.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9594, including `lwc1` at 0xda00a04, `lwc1` at 0xda00a40.
  The `swc1` at 0xda00a14 stores 4 bytes to a1 (arg1 at entry) +0x80.
  The `swc1` at 0xda00a5c stores 4 bytes to a2 (arg2 at entry) +0x80.
  The `lwc1` at 0xda00a60 loads 4 bytes from a0 (arg0 at entry) +0x19d9c.
  The `lwc1` at 0xda00a64 loads 4 bytes from a2 (arg2 at entry) +0x80.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x19da8, including `lwc1` at 0xda00a80, `lwc1` at 0xda00b60.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x19da4, including `lwc1` at 0xda00a94, `lwc1` at 0xda00b74.
  The `lwc1` at 0xda00a98 loads 4 bytes from a1 (arg1 at entry) +0x80.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9598, including `lwc1` at 0xda00ab4, `lwc1` at 0xda00af8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x959c, including `lwc1` at 0xda00ac0, `lwc1` at 0xda00b08.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x95a0, including `lwc1` at 0xda00ad0, `lwc1` at 0xda00b18.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x95a4, including `lwc1` at 0xda00ad8, `lwc1` at 0xda00b20.
  The `swc1` at 0xda00af4 stores 4 bytes to a1 (arg1 at entry) +0x84.
  The `swc1` at 0xda00b3c stores 4 bytes to a2 (arg2 at entry) +0x84.
  The `lwc1` at 0xda00b40 loads 4 bytes from a0 (arg0 at entry) +0x19da0.
  The `lwc1` at 0xda00b44 loads 4 bytes from a2 (arg2 at entry) +0x84.
  The `lwc1` at 0xda00b78 loads 4 bytes from a1 (arg1 at entry) +0x84.
  7 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xda00b94, `sw` at 0xda00b9c, `sw` at 0xda00d48.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa698, including `sw` at 0xda00bb0, `sw` at 0xda00bfc, `sw` at 0xda00c68.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa69c, including `sw` at 0xda00bbc, `sw` at 0xda00c4c, `sw` at 0xda00c94.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x19e94, including `lw` at 0xda00bc4, `lw` at 0xda00bd0, `lw` at 0xda00c50.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x19e98, including `lw` at 0xda00c14, `lw` at 0xda00ca8, `lw` at 0xda00cf8.
  The `lw` at 0xda00d4c loads 4 bytes from a0 (arg0 at entry) +0x96f4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x9830, including `sw` at 0xda00d6c, `sw` at 0xda00d88.
  The `jalr` at 0xda008ec calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+28128], a2=[a0+28132], a3=a2 at entry (arg2).
  The `jalr` at 0xda00bc8 calls (unknown callee) with a0=a1 at entry (arg1), a1=?, a2=0x10000, a3=a2 at entry (arg2).
  The `jalr` at 0xda00bdc calls (unknown callee) with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xda00c0c calls __glOdysseySetProgram [0xd9dc0b8] with a0=a0 at entry (arg0), a1=0x1, a2=0x10000, a3=a2 at entry (arg2).
  The `jalr` at 0xda00c20 calls (unknown callee) with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xda00c38 calls __glOdysseySetProgram [0xd9dc0b8] with a0=a0 at entry (arg0), a1=[a0+42664], a2=?, a3=?.
  The `jalr` at 0xda00c54 calls (unknown callee) with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xda00c84 calls (unknown callee) with a0=a1 at entry (arg1), a1=?, a2=0x10000, a3=a2 at entry (arg2).
  The `jalr` at 0xda00ca0 calls __glOdysseySetProgram [0xd9dc0b8] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `jalr` at 0xda00cb4 calls (unknown callee) with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xda00ccc calls __glOdysseySetProgram [0xd9dc0b8] with a0=a0 at entry (arg0), a1=[a0+42664], a2=?, a3=?.
  The `jalr` at 0xda00cf0 calls __glOdysseySetProgram [0xd9dc0b8] with a0=a0 at entry (arg0), a1=0x1, a2=0x10000, a3=a2 at entry (arg2).
  The `jalr` at 0xda00d04 calls (unknown callee) with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xda00d18 calls (unknown callee) with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jalr` at 0xda00d30 calls __glOdysseySetProgram [0xd9dc0b8] with a0=a0 at entry (arg0), a1=[a0+42664], a2=?, a3=?.
  The `bne` branch at 0xda008b4 targets 0xda00908, is taken when t7(=[a0+1392]) != at(=0x1d00), and falls through when t7(=[a0+1392]) == at(=0x1d00).
  The `beql` branch at 0xda008d8 targets 0xda00900, is taken when (t1(?) & a2(=[a0+28132])) == 0, and falls through when (t1(?) & a2(=[a0+28132])) != 0; its branch-likely delay slot `sw s2,12076(s0)` at 0xda008dc runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0xda00918 targets 0xda00b8c, is taken when t4(=([a0+31600] << 0x9)) < 0 (signed), and falls through when t4(=([a0+31600] << 0x9)) >= 0 (signed).
  The `bc1fl` branch at 0xda00a78 targets 0xda00ab4, is taken when not (f12(=[a1+20]) <= f6 (c.le.d at 0xda00a70)), and falls through when f12(=[a1+20]) <= f6 (c.le.d at 0xda00a70); its branch-likely delay slot `lwc1 $f4,16(s3)` at 0xda00a7c runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda00a8c targets 0xda00ab4, is taken when not (f0 < f4(=[a0+105896]) (c.lt.s at 0xda00a84)), and falls through when f0 < f4(=[a0+105896]) (c.lt.s at 0xda00a84); its branch-likely delay slot `lwc1 $f4,16(s3)` at 0xda00a90 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xda00aa8 targets 0xda00d90, is taken when f6(=[a1+128]) <= f10 (c.le.s at 0xda00aa0), and falls through when not (f6(=[a1+128]) <= f10 (c.le.s at 0xda00aa0)); its branch-likely delay slot `lw ra,44(sp)` at 0xda00aac runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda00b58 targets 0xda00b90, is taken when not (f12 <= f6 (c.le.d at 0xda00b50)), and falls through when f12 <= f6 (c.le.d at 0xda00b50); its branch-likely delay slot `ori t5,t5,0x4400` at 0xda00b5c runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda00b6c targets 0xda00b90, is taken when not (f0 < f8(=[a0+105896]) (c.lt.s at 0xda00b64)), and falls through when f0 < f8(=[a0+105896]) (c.lt.s at 0xda00b64); its branch-likely delay slot `ori t5,t5,0x4400` at 0xda00b70 runs only when taken and is annulled on fall-through.
  The `bc1t` branch at 0xda00b88 targets 0xda00d8c, is taken when f6(=[a1+132]) <= f4 (c.le.s at 0xda00b80), and falls through when not (f6(=[a1+132]) <= f4 (c.le.s at 0xda00b80)).
  The `beq` branch at 0xda00ba0 targets 0xda00bec, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xda00ba8 targets 0xda00bec, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xda00be4 targets 0xda00d3c and is always taken.
  The `bne` branch at 0xda00bec targets 0xda00c64, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda00bf4 targets 0xda00c64, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xda00c5c targets 0xda00d3c and is always taken.
  The `beql` branch at 0xda00c64 targets 0xda00ce0, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `sw v0,9880(s1)` at 0xda00c68 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda00c6c targets 0xda00cdc, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda00cd4 targets 0xda00d3c and is always taken.
  The `beq` branch at 0xda00d58 targets 0xda00d84, is taken when t3(=[a0+38644]) == 0, and falls through when t3(=[a0+38644]) != 0.
  The return at 0xda00da0 has v0 = one of 0x1, 0x10046.
- `__glOdysseySoftClipProcessLine` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda00da8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda00da8-0xda00ebc (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xda00dc8 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lw` at 0xda00dcc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda00df0 loads 4 bytes from a0 (arg0 at entry) +0x2f2c.
  The `lw` at 0xda00df8 loads 4 bytes from a0 (arg0 at entry) +0x6de4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2f2c, including `sw` at 0xda00e00, `sw` at 0xda00e8c.
  The `lw` at 0xda00e04 loads 4 bytes from a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xda00e14, `lw` at 0xda00e38.
  The `lw` at 0xda00e20 loads 4 bytes from a1 (arg1 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30fc, including `lw` at 0xda00e48, `lw` at 0xda00e6c.
  The `lw` at 0xda00e50 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0xda00e90 loads 4 bytes from a0 (arg0 at entry) +0x30f0.
  The `jalr` at 0xda00e24 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+28132], a3=a1 at entry (arg1).
  The `jalr` at 0xda00e5c calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a0+28132], a3=a1 at entry (arg1).
  The `jalr` at 0xda00e78 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a1 at entry (arg1).
  The `jalr` at 0xda00e9c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a1 at entry (arg1).
  The `beq` branch at 0xda00ddc targets 0xda00e90, is taken when v0(=([a1+4] | [a2+4])) == 0, and falls through when v0(=([a1+4] | [a2+4])) != 0.
  The `bnel` branch at 0xda00de8 targets 0xda00eac, is taken when (v1(=[a1+4]) & t0(=[a2+4])) != 0, and falls through when (v1(=[a1+4]) & t0(=[a2+4])) == 0; its branch-likely delay slot `lw ra,36(sp)` at 0xda00dec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda00e10 targets 0xda00e3c, is taken when (t9(?) & a2(=[a0+28132])) == 0, and falls through when (t9(?) & a2(=[a0+28132])) != 0; its branch-likely delay slot `lw t2,0(s1)` at 0xda00e14 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda00e44 targets 0xda00e70, is taken when (t3(?) & a2(=[a0+28132])) == 0, and falls through when (t3(?) & a2(=[a0+28132])) != 0; its branch-likely delay slot `lw t9,12540(s0)` at 0xda00e48 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda00e88 targets 0xda00ea8 and is always taken.
  The return at 0xda00eb4 has v0 = one of ?, ret(?).
- `__glOdysseySoftClipRenderPoint` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda00ec0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda00ec0-0xda00f78 (184 bytes).
  It occupies 184 bytes.
  7 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xda00ee8, `sw` at 0xda00eec, `sw` at 0xda00f20.
  The `lw` at 0xda00efc loads 4 bytes from a0 (arg0 at entry) +0x19e94.
  The `lw` at 0xda00f28 loads 4 bytes from a0 (arg0 at entry) +0x96f4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x9830, including `sw` at 0xda00f48, `sw` at 0xda00f64.
  The `jalr` at 0xda00f04 calls (unknown callee) with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xda00f34 targets 0xda00f60, is taken when t8(=[a0+38644]) == 0, and falls through when t8(=[a0+38644]) != 0.
  The return at 0xda00f70 has v0 = 0x10000.
- `__glOdyim_SoftClipEnable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda00f90 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda00f90-0xda00ff4 (100 bytes).
  It occupies 100 bytes.
  The `jalr` at 0xda00fc4 calls __glim_Enable [0xda3fd60] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda00fd8 calls __glOdyim_Enable [0xd958d64] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xda00fa8 targets 0xda00fbc, is taken when a0 == at(=0xb50), and falls through when a0 != at(=0xb50).
  The `bne` branch at 0xda00fb4 targets 0xda00fd4, is taken when a0 != at(=0xb57), and falls through when a0 == at(=0xb57).
  The return at 0xda00fec has v0 = ret(__glOdyim_Enable).
- `__glOdyim_SoftClipDisable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda00ff4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda00ff4-0xda01058 (100 bytes).
  It occupies 100 bytes.
  The `jalr` at 0xda01028 calls __glim_Disable [0xda406f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda0103c calls __glOdyim_Disable [0xd96022c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xda0100c targets 0xda01020, is taken when a0 == at(=0xb50), and falls through when a0 != at(=0xb50).
  The `bne` branch at 0xda01018 targets 0xda01038, is taken when a0 != at(=0xb57), and falls through when a0 == at(=0xb57).
  The return at 0xda01050 has v0 = ret(__glOdyim_Disable).
- `__glOdyim_SoftClipMaterialf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda01338 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda01338-0xda01398 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xda01364 calls __glOdyim_SoftClipMaterialfv [0xda0118c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=a3 at entry (arg3).
  The `jalr` at 0xda0137c calls __glSetError [0xda4b3d8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda01354 targets 0xda01374, is taken when a1 != at(=0x1601), and falls through when a1 == at(=0x1601).
  The `beq` branch at 0xda0136c targets 0xda01388 and is always taken.
  The return at 0xda01390 has v0 = one of ret(__glOdyim_SoftClipMaterialfv), ret(__glSetError).
- `__glOdyim_SoftClipMateriali` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda01934 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda01934-0xda01994 (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xda01960 calls __glOdyim_SoftClipMaterialiv [0xda01778] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp+8, a3=a3 at entry (arg3).
  The `jalr` at 0xda01978 calls __glSetError [0xda4b3d8] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda01950 targets 0xda01970, is taken when a1 != at(=0x1601), and falls through when a1 == at(=0x1601).
  The `beq` branch at 0xda01968 targets 0xda01984 and is always taken.
  The return at 0xda0198c has v0 = one of ret(__glOdyim_SoftClipMaterialiv), ret(__glSetError).
- `__glOdysseyClipToPlaneObj` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda019a0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda019a0-0xda02390 (2544 bytes).
  It occupies 2544 bytes.
  The `lw` at 0xda019f8 loads 4 bytes from (a1 + (a2 << 0x2)) -0x4.
  12 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda01a00, `lwc1` at 0xda01a08, `lwc1` at 0xda01a20.
  The `lwc1` at 0xda01a04 loads 4 bytes from [(a1 + (a2 << 0x2))-4] +0x10.
  The `lwc1` at 0xda01a0c loads 4 bytes from [(a1 + (a2 << 0x2))-4] +0x14.
  The `lwc1` at 0xda01a14 loads 4 bytes from [(a1 + (a2 << 0x2))-4] +0x18.
  The `lw` at 0xda01a34 loads 4 bytes from a0 (arg0 at entry) +0x19d88.
  The `lw` at 0xda01a38 loads 4 bytes from a0 (arg0 at entry) +0x2f78.
  The `lwc1` at 0xda01a44 loads 4 bytes from [(a1 + (a2 << 0x2))-4] +0x1c.
  The `lw` at 0xda01a64 loads 4 bytes from ?.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda01ac4, `sw` at 0xda01b10, `sw` at 0xda01b14.
  The `lbu` at 0xda01b00 loads 1 byte from ?.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xda01b08, `sb` at 0xda01b0c, `sb` at 0xda01b64.
  The `sw` at 0xda01b9c stores 4 bytes to a0 (arg0 at entry) +0x19d88.
  The `jalr` at 0xda01af8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda01b58 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xda01a54 targets 0xda01b8c, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bc1fl` branch at 0xda01aac targets 0xda01b28, is taken when not (f22 <= f20 (c.le.s at 0xda01aa4)), and falls through when f22 <= f20 (c.le.s at 0xda01aa4); its branch-likely delay slot `c.le.s $f22,$f0` at 0xda01ab0 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda01abc targets 0xda01ad8, is taken when not (f22 <= f0 (c.le.s at 0xda01ab4)), and falls through when f22 <= f0 (c.le.s at 0xda01ab4); its branch-likely delay slot `sub.s $f4,$f20,$f0` at 0xda01ac0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda01acc targets 0xda01b78 and is always taken.
  The `beq` branch at 0xda01b1c targets 0xda01b78 and is always taken.
  The `bc1fl` branch at 0xda01b2c targets 0xda01b7c, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `lw t2,80(sp)` at 0xda01b30 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda01b84 targets 0xda01a64, is taken when s7(?) != t2(=((a2 << 0x2) + a1)), and falls through when s7(?) == t2(=((a2 << 0x2) + a1)).
  The return at 0xda01bd0 has v0 = one of 0x0, ?.
  The instructions from 0xda01ad4 to 0xda01ad4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda01b24 to 0xda01b24 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda01bd8 to 0xda0238c are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseySoftClipClipTriangle` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda01e68 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda01e68-0xda01ec0 (88 bytes).
  It occupies 88 bytes.
  The `jalr` at 0xda01ea4 calls __glOdysseyDoTriangleClip [0xda01bd8] with a0=a0 at entry (arg0), a1=sp-16, a2=0x3, a3=?.
  The return at 0xda01eb8 has v0 = ret(__glOdysseyDoTriangleClip).
- `__glOdysseySoftClipClipTriangleFast` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda02150 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda02150-0xda021a8 (88 bytes).
  It occupies 88 bytes.
  The `jalr` at 0xda0218c calls __glOdysseyDoTriangleClipFast [0xda01ec0] with a0=a0 at entry (arg0), a1=sp-16, a2=0x3, a3=?.
  The return at 0xda021a0 has v0 = ret(__glOdysseyDoTriangleClipFast).
- `__glOdysseySoftClipClipLine` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda021b0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda021b0-0xda02384 (468 bytes).
  It occupies 468 bytes.
  The `lw` at 0xda021ec loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lw` at 0xda021f0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda0220c loads 4 bytes from a0 (arg0 at entry) +0x3100.
  12 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda0222c, `lwc1` at 0xda02230, `lwc1` at 0xda02234.
  The `lw` at 0xda02348 loads 4 bytes from a0 (arg0 at entry) +0x30f0.
  The `jalr` at 0xda022d8 calls (unknown callee) with a0=sp-412, a1=?, a2=?, a3=?.
  The `jalr` at 0xda02320 calls (unknown callee) with a0=sp-820, a1=?, a2=?, a3=?.
  The `jalr` at 0xda0234c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xda02224 targets 0xda02334, is taken when (s3(?) & 0x1) == 0, and falls through when (s3(?) & 0x1) != 0; its branch-likely delay slot `srl s3,s3,0x1` at 0xda02228 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda0229c targets 0xda022f0, is taken when not (f8 < f20 (c.lt.d at 0xda02294)), and falls through when f8 < f20 (c.lt.d at 0xda02294); its branch-likely delay slot `cvt.d.s $f8,$f16` at 0xda022a0 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xda022b0 targets 0xda0235c, is taken when f10 < f20 (c.lt.d at 0xda022a8), and falls through when not (f10 < f20 (c.lt.d at 0xda022a8)); its branch-likely delay slot `lw ra,60(sp)` at 0xda022b4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda022e4 targets 0xda02330 and is always taken.
  The `bc1fl` branch at 0xda022f8 targets 0xda02334, is taken when not (f8 < f20 (c.lt.d at 0xda022f0)), and falls through when f8 < f20 (c.lt.d at 0xda022f0); its branch-likely delay slot `srl s3,s3,0x1` at 0xda022fc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda02334 targets 0xda02220, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The return at 0xda0237c has v0 = one of ?, ret(?).
  The instructions from 0xda022ec to 0xda022ec are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseyGetNumHWClipPlanes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda025f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda025f0-0xda02690 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xda025f0 loads 4 bytes from a0 (arg0 at entry) +0x70c.
  The `lw` at 0xda025f4 loads 4 bytes from a0 (arg0 at entry) +0x700.
  The `lw` at 0xda02614 loads 4 bytes from a0 (arg0 at entry) +0x7b70.
  The `beq` branch at 0xda025fc targets 0xda02614, is taken when a2(=[a0+1804]) == 0, and falls through when a2(=[a0+1804]) != 0.
  The `bne` branch at 0xda0260c targets 0xda02604, is taken when (a1(?) & t6(?)) != 0, and falls through when (a1(?) & t6(?)) == 0.
  The `bgez` branch at 0xda02624 targets 0xda02634, is taken when t8(=([a0+31600] << 0xf)) >= 0 (signed), and falls through when t8(=([a0+31600] << 0xf)) < 0 (signed).
  The `beq` branch at 0xda0262c targets 0xda0267c and is always taken.
  The `beq` branch at 0xda02638 targets 0xda02648, is taken when (v0(=[a0+1792]) & at(=0x40000000)) == 0, and falls through when (v0(=[a0+1792]) & at(=0x40000000)) != 0.
  The `beq` branch at 0xda02640 targets 0xda02668 and is always taken.
  The `bgez` branch at 0xda02648 targets 0xda02658, is taken when t0(=([a0+1792] << 0xe)) >= 0 (signed), and falls through when t0(=([a0+1792] << 0xe)) < 0 (signed).
  The `beq` branch at 0xda02650 targets 0xda02668 and is always taken.
  The `bgez` branch at 0xda02658 targets 0xda02668, is taken when t1(=([a0+1792] << 0xf)) >= 0 (signed), and falls through when t1(=([a0+1792] << 0xf)) < 0 (signed).
  The `beq` branch at 0xda02660 targets 0xda02668 and is always taken.
  The `beq` branch at 0xda02670 targets 0xda0267c, is taken when v1(?) >= a1(?) (signed), and falls through when v1(?) < a1(?) (signed).
  The `beq` branch at 0xda0267c targets 0xda02688, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The return at 0xda02688 has v0 = one of ?, 0x0.
- `__glOdysseyGetNumSWClipPlanes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda02690 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda02690-0xda026ec (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0xda026a8 loads 4 bytes from a0 (arg0 at entry) +0x70c.
  The `jalr` at 0xda026cc calls __glOdysseyGetNumHWClipPlanes [0xda025f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda026b0 targets 0xda026c4, is taken when v0(=[a0+1804]) == 0, and falls through when v0(=[a0+1804]) != 0.
  The `bne` branch at 0xda026bc targets 0xda026b4, is taken when (v0(?) & t6(?)) != 0, and falls through when (v0(?) & t6(?)) == 0.
  The return at 0xda026e4 has v0 = ?.
- `__glOdysseySoftClipPickParameterClipProcs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda02cc8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda02cc8-0xda02ce8 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xda02cdc stores 4 bytes to a0 (arg0 at entry) +0x3100.
  The `sw` at 0xda02ce4 stores 4 bytes to a0 (arg0 at entry) +0x2f78.
  The return at 0xda02ce0 has v0 = 0xda02390.
- `__glOdysseyVertexWARClipNOP` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda04c00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda04c00-0xda04c88 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xda04c10 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda04c2c loads 4 bytes from [0x1010] +0x19d90.
  2 such `swc1` accesses store 4 bytes to [0x1010] +0x19d90, including `swc1` at 0xda04c40, `swc1` at 0xda04c74.
  The `lw` at 0xda04c48 loads 4 bytes from [0x1010] +0x17f4.
  The `lw` at 0xda04c54 loads 4 bytes from [[0x1010]+6132] +0x570.
  The `jalr` at 0xda04c58 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda04c80 has v0 = [0x1010].
- `__glOdyim_SoftClipEnd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda04c88 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda04c88-0xda04d78 (240 bytes).
  It occupies 240 bytes.
  The `lw` at 0xda04c98 loads 4 bytes from abs 0x1010.
  2 such `lbu` accesses load 1 byte from [0x1010] +0x19dc8, including `lbu` at 0xda04cc0, `lbu` at 0xda04d14.
  The `lw` at 0xda04cd0 loads 4 bytes from [0x1010] +0x70c.
  The `sw` at 0xda04ce8 stores 4 bytes to [0x1010] +0x70c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x16964, including `lw` at 0xda04cf0, `lw` at 0xda04d48.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x16964, including `sw` at 0xda04d00, `sw` at 0xda04d58.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda04d08, `sw` at 0xda04d5c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x2e24, including `lw` at 0xda04d0c, `lw` at 0xda04d60.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x2e24, including `sw` at 0xda04d10, `sw` at 0xda04d64.
  The `lw` at 0xda04d24 loads 4 bytes from [0x1010] +0x16818.
  The `sw` at 0xda04d44 stores 4 bytes to [0x1010] +0x16818.
  The `jalr` at 0xda04ca8 calls __glim_End [0xda7e914] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda04cc8 targets 0xda04d18, is taken when v1(=[[0x1010]+105928]:1) != 0, and falls through when v1(=[[0x1010]+105928]:1) == 0.
  The `beq` branch at 0xda04ce0 targets 0xda04d18, is taken when (a0(=[[0x1010]+1804]) & 0x100) == 0, and falls through when (a0(=[[0x1010]+1804]) & 0x100) != 0.
  The `bne` branch at 0xda04d18 targets 0xda04d68, is taken when v1(=[[0x1010]+105928]:1) != 0, and falls through when v1(=[[0x1010]+105928]:1) == 0.
  The `beq` branch at 0xda04d34 targets 0xda04d68, is taken when (a0(=[[0x1010]+92184]) & 0x100) == 0, and falls through when (a0(=[[0x1010]+92184]) & 0x100) != 0.
  The return at 0xda04d70 has v0 = [0x1010].
Skipped routines from the first 250 targets: 1 routine (`gversionIoctl` in `usr/gfx/arch/IGLOO32/libgl.so`) because the renderer found no function symbol at `0x0` and the inventory provides no size.
