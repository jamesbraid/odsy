# Tier-2 routine roles, odsy recovered batch 3

- `wbflush` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21db4
  **Inferred.** Not derived. The facts give an 8-byte body whose only return is at 0x21db4 with v0 unknown. No operation is decoded, so the role is not settled.

- `issplhi` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21e04
  **Inferred.** Returns 0 or 1. The bne at 0x21e0c compares a1 with the constant 1 (v1 = 0x1), and the bne at 0x21e18 tests bit 0x400 of a0. The return at 0x21e24 gives v0 of 0 or 1. The facts do not say what bit 0x400 means, so this is a 0/1 predicate on a0 and a1 only.

- `issplprof` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21e2c
  **Inferred.** Returns 0 or 1. The bne at 0x21e34 compares a1 with the constant 1 (v1 = 0x1), and the bne at 0x21e40 tests bit 0x2000 of a0. The return at 0x21e4c gives v0 of 0 or 1. Same limit as issplhi: the meaning of the bit is not in the facts.

- `isspl7` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21e54
  **Inferred.** Returns 0 or 1. The bne at 0x21e5c tests bit 0x1 of a0, the bne at 0x21e70 tests the mask 0xff00 of a0, and the beq at 0x21e64 always jumps to the return at 0x21e7c. It is a 0/1 predicate on a0 bits. The facts do not say which priority level or state the masks stand for.

- `splecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21eb4
  **Inferred.** Not derived. The facts give a 32-byte body and one return at 0x21ecc with v0 unknown. No branch or operation is decoded, so the role is not settled.

- `isspl0` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21ef0
  **Inferred.** Returns 1 when a0 equals 0xff01 and 0 otherwise. The bne at 0x21ef8 compares a0 with the constant 0xff01 and branches to the return of 0 at 0x21f08. The return of 1 is at 0x21f00. The facts state only the comparison, not what the constant denotes.

- `exception` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23580
  **Inferred.** Looks like the general exception entry. It saves state with 8-byte stores into the block at base -0x3000 from offset 0x0 to about 0x140 (sd at 0x235b0 onward), reads a word at 0xffffffffffffd00c, and tests bits 0x1, 0x2 and 0x4 of the word at [-0x2ff4] (beq at 0x23588, 0x235fc and 0x23678). It copies with bcopy (jal at 0x236ac) and calls getpc (jal at 0x23594). Tail jumps at 0x237b8 (systrap), 0x237c8 (kmiss), 0x237e8 (longway), 0x237f0 (intrnorm), 0x23804 (handle_intr_wgflush), 0x2380c (handle_brkpt) and 0x23814 (handle_watch) are chosen by the mask 0x7c tested at 0x237a8 and the zero tests after it. The dispatch reading rests on those branch targets, not on any source.

- `wgflush_start` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23868
  **Inferred.** Stores 16 doublewords to the block at a1 at offsets 0x0 to 0x78 (sd at 0x2386c to 0x238a8). It reads the word at 0xffffffffffffc038 in the delay slot of the jump to intrnorm at 0x238b0, and passes the four entry arguments through unchanged. The registers the stores write are not in the facts, so what is saved is not derived.

- `handle_brkpt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x238b8
  **Inferred.** Breakpoint check. It tests bits 0x18 of k0 (bne at 0x238c0 to 0x237e8) and the sign of k0 (bgez at 0x238d0 to 0x238dc). It loads a word from sym kernelbp at 0x238fc and compares it with k0 at 0x23900, and any mismatch goes to 0x237e8. The action on a match, between 0x238dc and 0x238f8, is not derived.

- `handle_watch` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23908
  **Inferred.** Watchpoint hook. It loads a halfword at 0xffffffffffffc428 and uses it as an index, shifted by 2, into the table at flag_at_kernelbp, storing a word there (sw at 0x23930). It reads debugger_update and debugger_stopped and stores to debugger_update at 0x2394c. Then it reads the pointer pair at 0xa800000000001020 and makes a register call (jr at 0x23974) with the entry arguments. The beq branches at 0x2393c, 0x23960 and 0x2396c return to 0x237e8 when the flag or a pointer is zero. The value stored to debugger_update is not in the facts.

- `kmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23980
  **Inferred.** Large kernel-miss handler over the range 0x23980 to 0x24050, which overlaps kmissnxt. It reads the words at 0xffffffffffffc018, c038, c040 and c028, and loads from the table at [-0x3fe8] (offsets 0x588, 0x578, 0x580, 0x3f0). It bounds-checks against syssegsz and sptsz (lw at 0x23cc8, 0x23d08) and loads kptbl (ld at 0x23e90). The loads and bounds suggest a page-table walk, which is a reading of the accesses, not something the facts state. It calls cmn_err at 0x23d98 with colormap_size as an argument.

- `kmissnxt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23c94
  **Inferred.** Second half of the same walk, from 0x23c94 to 0x23fb4. It compares k0 with syssegsz+3072 (beq at 0x23cd8), tests k1 loaded from -0x3b70 (beq at 0x23ce8), and compares k0 with sptsz (beq at 0x23d14). Those branches go to 0x23f38, 0x23ec0 and 0x23d48. It also calls cmn_err at 0x23d98. The range overlaps kmiss, so the same instructions count in both entries.

- `kvmiss_hit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23fb4
  **Inferred.** Stores doublewords at offsets 0x18, 0x20 and 0x28 of _assregs (sd at 0x23fd4, 0x23ff0 and 0x2400c), then jumps to assfail at 0x24044 with two addresses inside .data and a2 = 0. The beq at 0x23fb4 is unconditional, so the visible path is store, then assertion call. The condition that reaches this code lies outside the range, so the role as a hit path is not settled.

- `ULIsystrap_j` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24080
  **Inferred.** Eight bytes. The jump at 0x24080 tail-calls ULIsystrap with the entry arguments, and the store at 0x24084 in its delay slot writes a doubleword to 0xffffffffffffc038.

- `systrap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24100
  **Inferred.** System-call dispatch. It loads 0xffffffffffffc028 and 0xffffffffffffc018 and saves about 30 doublewords through the pointer at [-0x3fe8]+1008 (sd at 0x24118 to 0x2417c). It calls ktimer_switch at 0x241a8 with a1 = 1 and again at 0x241ec with a1 = 0, and calls syscall at 0x241c8 with a0 read through a pointer chain at +368. The bne at 0x24104 sends k0 != 0 (read from -0x3fd8) back to 0x24080. The bne at 0x241e0 sends a nonzero syscall result to exception_exit (jump at 0x24274). The call to _baduk is also in the body.

- `VEC_syscall` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2427c
  **Inferred.** The only action shown is a cmn_err call at 0x24294 with level 0, a .data format address and the entry a2 and a3. The rest of the 32-byte body is not in the facts, so this is a diagnostic stub as far as is known.

- `get_fpc_irr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24304
  **Inferred.** Not derived. The facts show two word stores to 0xffffffffffffc48c (at 0x24318 and 0x24328) and a return at 0x24330 with v0 unknown. The name suggests a read of the FP control register, but the facts show only stores, so the role is not settled.
