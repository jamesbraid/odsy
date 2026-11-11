# Tier-2 routine roles, odsy recovered batch 0

- `uload_uhalf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7d44
  **Inferred.** Loads two bytes from a0 at offsets 0 and 1 (lbu at 0x7d50 and 0x7d54) and stores an 8-byte value to a1 (sd at 0x7d64), then returns 0 (0x7d68). That is consistent with an unaligned halfword load into a caller's buffer. The routine also loads 8 bytes from the fixed address 0xffffffffffffc020 (ld at 0x7d44) and makes two 2-byte stores to [-0x3fe0]+0xf6 (sh at 0x7d4c and 0x7d60). The facts do not say what that block holds.

- `uload_uword` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7d70
  **Inferred.** Loads a 4-byte word from a0 with an lwl and lwr pair (lwl at 0x7d7c at offset 0, lwr at 0x7d80 at offset 3), stores 8 bytes to a1 (sd at 0x7d90) and returns 0 (0x7d94). The name and the unaligned load pair fit. It repeats the fixed-address load at 0x7d70 and the 2-byte stores at 0x7d78 and 0x7d8c of uload_uhalf, and the facts do not explain that block.

- `uload_double` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7d9c
  **Inferred.** Loads 8 bytes from a0 with an ldl and ldr pair (ldl at 0x7da8 at offset 0, ldr at 0x7dac at offset 7), stores them to a1 (sd at 0x7db4) and returns 0 (0x7db8). That is the unaligned doubleword load its name gives. The same fixed-address load and 2-byte store pattern appears at 0x7d9c, 0x7da4 and 0x7db0.

- `ustore_double` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7dc0
  **Inferred.** Stores an 8-byte value into a0 with an sdl and sdr pair (sdl at 0x7dcc at offset 0, sdr at 0x7dd0 at offset 7) and returns 0 (0x7dd8). It is the unaligned doubleword store that mirrors uload_double at 0x7d9c. The stored value comes from a register the facts do not name.

- `ustore_word` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7de0
  **Inferred.** Stores a 4-byte word into a0 with an swl and swr pair (swl at 0x7dec at offset 0, swr at 0x7df0 at offset 3) and returns 0 (0x7df8). It mirrors uload_uword at 0x7d70. The same fixed-address load and 2-byte stores appear at 0x7de0, 0x7de8 and 0x7df4.

- `ustore_half` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7e00
  **Inferred.** Stores two bytes into a0 with sb at 0x7e0c (offset 1) and sb at 0x7e14 (offset 0), then returns 0 (0x7e1c). That is an unaligned halfword store written as two byte stores, which is what the name says. The value stored comes from a register the facts do not name. The fixed-address load at 0x7e00 and the 2-byte stores at 0x7e08 and 0x7e18 repeat the pattern of the other unaligned accessors.

- `bcopy_pref2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7efc
  **Inferred.** A block copy. The inner loop at 0x7f94 to 0x7fd8 loads words from a0 and stores them to a1, and it repeats while a3 differs from a1 (bne at 0x7fd8). Eight-byte loads from a0 at offsets 0x8 to 0x38 (0x7f00 to 0x7f1c) and eight-byte stores to a1 (0x7f20 to 0x7f40) form the unrolled part. The tail tests the low bits of a2 (masks 0x10, 0x8, 0x4 and 0x3 at 0x7fe4, 0x8018, 0x803c and 0x8058) to copy the remainder. The routine returns t8 at 0x806c or 0x8154. The name mentions prefetch, but no prefetch instruction appears in the rendered facts, so that part of the name is not confirmed by this code.

- `rtlock_ownerstamp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8304
  **Inferred.** An atomic update of the word at a0. It loads with ll (0x8314) and stores with sc (0x831c), and it retries from 0x8314 while a1 is zero (beq at 0x8320). A negative a0 at entry branches to 0x7ccc (bltz at 0x8304), and the routine returns 0 (0x832c). The name suggests the stored value is an owner identifier for a lock, but the facts do not show which value is stored or what the lock word holds.

- `dumpcopy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8334
  **Inferred.** Calls bcopy (jal at 0x8354) with its own four argument registers. Before and after the call it branches on an 8-byte value at [-0x3fe0] (beq at 0x8340 and 0x8360), writes a 4-byte word to the fixed address 0xffffffffffffc48c (sw at 0x8350 and 0x8370), and reads the word at 0xffffffffffffc020 (ld at 0x833c and 0x835c). It returns 0 (0x837c). The name suggests a copy for a crash dump, but the facts do not show what the value at [-0x3fe0] means.

- `update_ust_i` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa4ec
  **Inferred.** Wraps update_ust in an interrupt-level change. It raises the level with spl7 (jal at 0xa4f4), calls update_ust (0xa4fc), restores the old level with splx (0xa508) and returns update_ust's result (0xa51c). The spl7 and splx pair suggests the update runs in a critical section.

- `get_ust_nano` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa524
  **Inferred.** Stores an 8-byte value to a0 (sd at 0xa550, just after the return at 0xa54c) and returns the 8-byte word at .sdata+72 (v0 = [sym(.sdata)+72] at 0xa54c). The name suggests a nanosecond read, but the routine has no arithmetic, so any conversion is not visible here.

- `ust_to_nano` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa554
  **Inferred.** Stores an 8-byte value to a1 (sd at 0xa57c, just after the return at 0xa578) and returns the word at .sdata+72 (v0 = [sym(.sdata)+72]). It takes its destination in the second argument, the same shape as get_ust_nano at 0xa524. The name suggests a conversion from UST units to nanoseconds, but the rendered facts show no arithmetic, so the conversion is not visible in this routine.

- `get_ust` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa580
  **Inferred.** Stores an 8-byte value to a0 (sd at 0xa588, after the return at 0xa584) and has no calls. Its return value v0 is not resolved by the facts. The name suggests it copies the UST value into the caller's buffer, but the source of the stored value is not in the facts.

- `get_updated_ust_i` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa58c
  **Inferred.** Wraps update_ust under the same interrupt-level change as update_ust_i at 0xa4ec. It raises the level with spl7 (jal at 0xa594), calls update_ust (0xa59c), restores with splx (0xa5ac), and returns the 8-byte word at ust_val (v0 = [sym(ust_val)]:8 at 0xa5c0). The name and the spl7 and splx pair suggest it returns the value after the update, made under the guard.

- `update_ust` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa660
  **Inferred.** Loads an 8-byte value from the fixed address 0x9200000001030100 (ld at 0xa678), stores it to ust_val (sd at 0xa680) and returns the same value (0xa67c). The facts do not name the device or register behind that fixed address, so the source of the value is open.

- `ecc_exception` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa690
  **Inferred.** An ECC exception handler. It calls tfi_save (jal at 0xa6f8), writes a set of words into low memory from 0x418 to 0x588 (sd at 0xa694 to 0xa720, sw at 0xa748 to 0xa758), and calls ecc_handler with 0x400 and 0x568 (jal at 0xa770). It calls ecc_panic when the handler returns a nonzero value (beq at 0xa778 skips the call at 0xa7b4 on zero). It then calls tfi_restore (0xa7cc) and reads the same addresses back (ld at 0xa7d4 to 0xa838). A byte at 0x58e decides a branch (lb at 0xa72c, bne at 0xa730), and the facts do not say what that flag means.

- `init_all_devices` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd2c0
  **Inferred.** Brings up I/O devices across nodes. It initializes a semaphore at .bss+1792 (init_sema at 0xd2e0) and starts I/O init threads with sthread_create (0xd368, entry io_init_pri, argument io_init_node). It waits on that semaphore with psema (0xd390 and 0xd3b0) in loops bounded by maxnodes and io_init_node_threads (0xd304 to 0xd3d0). It then calls update_node_information (0xd3d8), reads a kernel option with kopt_find and atoi (0xd40c and 0xd414), and calls ef_ifattach (0xd450), which by its name attaches an Ethernet interface. The callee bodies are not in this routine, so the device work is inferred from the call sequence.

- `devnamefromarcs` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd498
  **Inferred.** Converts a firmware (ARCS) device name into a path under /target/. It matches a 3-byte prefix with strncmp (0xd4b4), walks the characters with the ctype table (lbu at 0xd4d0, bit test 0x4 at 0xd4d8), and calls vertex_to_name and strlen (0xd548 and 0xd554). The path is assembled with strcpy (0xd658) from the constants 0x626c6f63 and 0x2f7461726765742f, which spell "bloc" and "/target/" in ASCII. It prints diagnostics with printf (0xd680 to 0xd770) and reaches prom_reboot (0xd754) on one path.

- `mlreset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd7cc
  **Inferred.** Runs the machine-wide reset and bring-up sequence. It calls the performance counter setters r1nkperf_control_register_set and r1nkperf_data_register_set with 0 as the value argument (0xd7e0 to 0xd888), reads interrupt state with get_cpu_irr (0xd80c and 0xd824), and flushes TLB and cache (0xd844 and 0xd84c). It probes nodes with is_specified and atoi on arg_maxnodes (0xd940 and 0xd950), calls cpu_node_probe (0xd988), and loops over numnodes (0xd9a0 to 0xdc14). It calls ioc3_mlreset, ioc4_mlreset and l1_mlreset (0xd8e0 to 0xd920), initializes memory and I/O graph state with mem_init, iograph_early_init and hubdev_init (0xdb64 to 0xdb74), and calls assfail at 0xdc04, 0xdc20 and 0xdc3c. The order of the callees is the evidence here; their bodies are not in this routine.

- `getcpuid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe718
  **Inferred.** Returns the CPU id of the caller. It raises the interrupt level with splhi (0xe724), gets the NASID with get_nasid (0xe72c), and looks up the node's cpuinfo record with nasid_slice_to_cpuinfo (0xe740). The slice argument comes from the 8-byte word at 0x9200000001000020 (ld at 0xe738). It restores the level with splx (0xe74c) and returns the 16-bit field at offset 0x1e of that record (lh at 0xe760, return at 0xe768). A missing record reaches an assertion at 0xe77c (line constant 0x535). The name suggests a CPU id, which fits that field, but the facts do not show what the field means beyond its offset.

- `cpu_enabled` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe7c8
  **Inferred.** Checks a CPU id against the boot CPU mask. An argument of -1 takes an early exit at 0xe7f8 (beq at 0xe7dc on a0 == -1), returning 0 or a value the facts leave unresolved. Otherwise it reads the first 8-byte word of the boot_cpumask table (ld at 0xe7ec) and returns based on it. The name suggests a per-CPU enabled test, but the facts do not show which bit is tested, so the exact return rule is open.

- `cpuboard` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xea6c
  **Inferred.** Returns the constant 0x16 (22) and does nothing else. The routine is 8 bytes (return at 0xea6c with v0 = 0x16), so every caller in this build sees 22. The name suggests a board-type query, but the facts do not name what 22 denotes.

- `fp_find` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xea74
  **Inferred.** Calls get_fpc_irr with its own four argument registers (jal at 0xea7c), stores a 4-byte word to the fixed address 0xffffffffffffc488 (sw at 0xea88), and returns get_fpc_irr's result (return at 0xea8c). The name suggests a search for the floating-point pending-interrupt register, but the routine has no search loop: it is one forwarding call plus a store.

- `fp_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xea94
  **Inferred.** A three-argument wrapper. It sets a0 to 0 and calls `set_fpc_csr` at 0xea9c, passing its own a1 to a3 through unchanged, then returns the callee's result in v0 at 0xeaa8. The zero in a0 suggests it writes a zero floating-point control word, but the facts do not show what `set_fpc_csr` does with it.

- `get_except_norm` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xeab0
  **Inferred.** A single return at 0xeab0 that yields v0 equal to the address of the symbol `exception`, with no branches or stores. The name suggests it hands back the normal-exception entry, which these facts alone do not confirm.
