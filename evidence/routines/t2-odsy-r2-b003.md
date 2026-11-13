# Tier-2 routine roles, odsy recovered batch 3

- `wbflush` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21db4
  **Inferred.** Not derived. The facts give an 8-byte body whose only return is at 0x21db4 with v0 unknown. No operation is decoded, so the role is not settled.
  Reviewed: 2026-11-12

- `issplhi` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21e04
  **Inferred.** Returns 0 or 1. The bne at 0x21e0c compares a1 with the constant 1 (v1 = 0x1), and the bne at 0x21e18 tests bit 0x400 of a0. The return at 0x21e24 gives v0 of 0 or 1. The facts do not say what bit 0x400 means, so this is a 0/1 predicate on a0 and a1 only.
  Reviewed: 2026-11-12

- `issplprof` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21e2c
  **Inferred.** Returns 0 or 1. The bne at 0x21e34 compares a1 with the constant 1 (v1 = 0x1), and the bne at 0x21e40 tests bit 0x2000 of a0. The return at 0x21e4c gives v0 of 0 or 1. Same limit as issplhi: the meaning of the bit is not in the facts.
  Reviewed: 2026-11-12

- `isspl7` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21e54
  **Inferred.** Returns 0 or 1. The bne at 0x21e5c tests bit 0x1 of a0 and the bne at 0x21e70 tests the mask 0xff00 of a0. The return at 0x21e7c gives v0 of 0 or 1. It is a 0/1 predicate on a0 bits. The facts do not say which priority level or state the masks stand for.
  Reviewed: 2026-11-12

- `splecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21eb4
  **Inferred.** Not derived. The facts give a 32-byte body and one return at 0x21ecc with v0 unknown. No branch or operation is decoded, so the role is not settled.
  Reviewed: 2026-11-12

- `isspl0` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21ef0
  **Inferred.** Returns 1 when a0 equals 0xff01 and 0 otherwise. The bne at 0x21ef8 compares a0 with the constant 0xff01 and branches to the return of 0 at 0x21f08. The return of 1 is at 0x21f00. The facts state only the comparison, not what the constant denotes.
  Reviewed: 2026-11-12

- `exception` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23580
  **Inferred.** Role (from name): general exception entry. It stores doublewords at offsets 0x0 to 0x128 (sd at 0x235a4 through 0x236dc), and loads the word at 0xffffffffffffd00c, which is the word at [-0x2ff4]. The beq at 0x23588 tests bit 0x1 of that word and skips to 0x237a0 when it is clear, so the getpc call at 0x23594 runs only when the bit is set. The beq at 0x235fc tests bit 0x2 and the beq at 0x23678 tests bit 0x4, and both skip to 0x23780 when clear. The bcopy call at 0x236ac runs only when the bne at 0x23694 falls through (a1 equal to a2 = -0x8000), with a1 = [-0x3000]:8 + 296. The tail jumps at 0x237b8 (systrap), 0x237c8 (kmiss), 0x237e8 (longway), 0x237f0 (intrnorm), 0x23804 (handle_intr_wgflush), 0x2380c (handle_brkpt) and 0x23814 (handle_watch) follow the mask 0x7c tested at 0x237a8 and the zero tests after it. What the offsets and the dispatch values stand for is not derived.
  Reviewed: 2026-11-12

- `wgflush_start` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23868
  **Inferred.** Stores 16 doublewords at offsets 0x0 to 0x78 (sd at 0x2386c to 0x238a8; the facts do not show the base register), then tail-calls intrnorm at 0x238b0 with the four entry arguments passed through unchanged. A doubleword load (ld at 0x238b4) sits in the delay slot of that jump. The registers the stores write are not in the facts, so what is saved is not derived.
  Reviewed: 2026-11-12

- `handle_brkpt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x238b8
  **Inferred.** Breakpoint check. It tests bits 0x18 of k0 (bne at 0x238c0 to 0x237e8) and the sign of k0 (bgez at 0x238d0 to 0x238dc). It loads a word from sym kernelbp at 0x238fc and compares it with k0 at 0x23900, and any mismatch goes to 0x237e8. The action on a match, between 0x238dc and 0x238f8, is not derived.
  Reviewed: 2026-11-12

- `handle_watch` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23908
  **Inferred.** Role (from name): watchpoint handler. It loads a halfword at 0xffffffffffffc428 at 0x23908 and stores a word at 0x23930 (sw); the facts do not show the store's base. It loads the doubleword at debugger_update at 0x23938. When that is nonzero (the fall-through of the beq at 0x2393c) it loads another doubleword at 0x23948 and stores a doubleword at 0x2394c; when it is zero the beq goes to 0x23950, past those. At 0x23950 it loads the doubleword at 0xa800000000001020, and the beq at 0x23960 goes to 0x237e8 when that is zero. Otherwise it loads the doubleword at +8 from it, and the beq at 0x2396c goes to 0x237e8 when that is zero. Otherwise it makes a register call at 0x23974 with the entry arguments (a0 to a3 passed through). The values stored are not in the facts.
  Reviewed: 2026-11-12

- `kmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23980
  **Inferred.** Role (from name): kernel miss handler, over the range 0x23980 to 0x24050, which overlaps kmissnxt. It loads the words at 0xffffffffffffc018 ([-0x3fe8]) and 0xffffffffffffc028 ([-0x3fd8]), and loads through the table at [-0x3fe8] (offsets 0x588, 0x578, 0x580, 0x3f0). It compares k0 with syssegsz+3072 (lw at 0x23cc8) and with sptsz (lw at 0x23d08). It reads colormap_size at 0x23d64, and calls cmn_err at 0x23d98 with level 0 and colormap_size as a3 only when the bne at 0x23d6c does not skip it, that is when k0 is at or above colormap_size. Other paths end in tail calls to assfail (0x24044) or longway (0x24048). That the loads and compares form a page-table walk is a guess from the accesses, not something the facts state.
  Reviewed: 2026-11-12

- `kmissnxt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23c94
  **Inferred.** Covers 0x23c94 to 0x23fb4 and overlaps kmiss, so the same instructions count in both entries. It compares k0 with syssegsz+3072 (beq at 0x23cd8), tests k1 loaded from -0x3b70 (beq at 0x23ce8), and compares k0 with sptsz (beq at 0x23d14). When taken, those branches go to 0x23f38, 0x23ec0 and 0x23d48. It calls cmn_err at 0x23d98 only when the bne at 0x23d6c does not skip it, that is when k0 is at or above colormap_size. The facts do not settle the role of this range.
  Reviewed: 2026-11-12

- `kvmiss_hit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23fb4
  **Inferred.** Stores doublewords at offsets 0x18, 0x20 and 0x28 (sd at 0x23fd4, 0x23ff0 and 0x2400c; the facts do not show the base), then jumps to assfail at 0x24044 with two addresses inside .data and a2 = 0. The condition that reaches this code lies outside the range, so the role as a hit path is not settled.
  Reviewed: 2026-11-12

- `ULIsystrap_j` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24080
  **Inferred.** Eight bytes. The jump at 0x24080 tail-calls ULIsystrap with the entry arguments, and the doubleword store at 0x24084 in its delay slot is not resolved further by the facts.
  Reviewed: 2026-11-12

- `systrap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24100
  **Inferred.** System-call dispatch. It loads 0xffffffffffffc028 and 0xffffffffffffc018 and saves 25 doublewords through the pointer at [-0x3fe8]+1008 (sd at 0x24118 to 0x241a4). It calls ktimer_switch at 0x241a8 with a1 = 1 and again at 0x241ec with a1 = 0, and calls syscall at 0x241c8 with a0 read through a pointer chain at +368. The bne at 0x24104 sends k0 != 0 (read from -0x3fd8) back to 0x24080. The bne at 0x241e0 sends a nonzero syscall result to exception_exit (jump at 0x24274). The call to _baduk is also in the body.
  Reviewed: 2026-11-12

- `VEC_syscall` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2427c
  **Inferred.** The only action shown is a cmn_err call at 0x24294 with level 0, a .data format address and the entry a2 and a3. The rest of the 32-byte body is not in the facts, so this is a diagnostic stub as far as is known.
  Reviewed: 2026-11-12

- `get_fpc_irr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24304
  **Inferred.** Not derived. The facts show two word stores (sw at 0x24318 and 0x24328) and a return at 0x24330 with v0 unknown. Role (from name): the name suggests a read of the FP control register, but the facts show only stores, so the role is not settled.
  Reviewed: 2026-11-12
