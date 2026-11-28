# Which microcode a driver must load: the kernel's array or buzz_xform.bin

Release IRIX 6.5.30m, `usr/gfx/ucode/ODSY/buzz_xform.bin` (the image, 2794 records), the `buzz_ucode` array of IP30 and IP35 `odsy_init.o` (2266 records and a 4-byte trailer), and the program table of the N32 `libGLcore.so` of 6.5.30m (`IP30ODSY32`). Labels: **established** (read in full), **inferred**, **unknown**. A record is 12 bytes, 0-based, as in [buzz_isa.md](buzz_isa.md); "paged" is the overlay mechanism of its "Overlays" section. Written for a driver author who starts the board himself and so chooses the microcode.

## Answer first

- **No GL feature the 6.5.30m library drives needs code that only the image holds**, if the driver is willing to take the library's generic lighting path. Three things in the library need image-only code, and each is optional: the spot and attenuation interpolation routine 792 (only when an environment variable is set), and four fused lighting programs (table records 20 to 23) that only shorten the chain for two common states. **inferred** for the "generic path covers the same states" half: the older VPro patch library carries only records 0 to 19 and no records of image number 2365 or above, and lights those states.
- **The array's first 2048 records are enough for a lit, textured triangle with directional lights, with no paging.** Local lights, which most programs fuse into table records 16 to 19, need records past the 1798 mark and so need the paging of buzz_isa.md; the array's tail (records 2048 to 2265) holds the code for it, but the kernel never sends the tail.
- **The numbering differs, and mixing the library's numbers with the array's contents runs the wrong routine.** Every array record from 792 on is image record + 99 lower; the library of 6.5.30m uses image numbers, the libraries of 6.5.8 to 6.5.27 use array numbers. Pick one image and the table set that matches it.

## The two images, checked this pass

- **established.** Byte comparison of `buzz_xform.bin` against the array, 12 bytes per record: array records 0 to 791 equal image records 0 to 791, and array records 792 to 2265 equal image records 891 to 2364. The image has 99 records (792 to 890) the array lacks, and 429 records (2365 to 2793) after the array's last. The array's four trailing bytes are `ffffffff`.
- **established.** `odsyInitCfifo` sends the array's first 2048 records to RAM addresses 0 to 2047 and nothing else ([buzz_ucode.md](buzz_ucode.md)). The 2048 records are array numbers, so RAM address a holds array record a, which is image record a below 792 and image record a + 99 from 792 up.
- **established.** The library's paged addresses start at 1799: `AddProgram` rewrites any address of 1799 or more as `a - o + 1848` with `o` the lowest such address in the program, and `__glOdysseySetProgram` loads at most 199 records from image record `o` into RAM 1848. The 200-word window at 1848 to 2047 is where the init loop's own records 1848 to 2047 sit until a program replaces them. The data for a page comes from the kernel's shadow, which only `gf_OdsyDownload` fills; a driver that holds the records itself needs no kernel shadow.

## Which table programs fit in the resident 2048

The library selects a hand-fused program from a 24-record table (`__glim_Color3f` + 18048, 0x0dae4680; layout in [buzz_routines.md](buzz_routines.md) "The program table"). For each record the table below gives the highest routine entry it names in the library's numbering, and where that entry falls under each numbering. The fields were re-read from `libGLcore.so` for this page and match the table in buzz_routines.md. The entry is a lower bound: the routine continues to its end mark.

| Table records | State they serve | Highest entry (image numbers) | Needs paging | In array only |
|---|---|---|---|---|
| 0 to 1 | unlit, untextured or textured | 1178 | no | yes |
| 2, 4, 5, 8 | directional fragment light | 1337 to 1472 | no | yes |
| 3, 6, 7, 9, 10, 11 | one to four directional lights, one or two colours | 1509 to 1789 | no | yes |
| 13 | up to two directional lights, two colours, textured | 1851 | in the library's numbers yes (1824 and 1851 are 1799 or more); in the array's numbers no (1725 and 1752) | yes |
| 12 | up to three directional lights and a directional fragment light | 2355 | yes | yes (paged from the array tail) |
| 14, 15 | one directional light, separate specular, one or two colours | 2240, 2268 | yes | yes (paged from the array tail) |
| 16 to 19 | one local light | 1929 to 2214 | yes | yes (paged from the array tail) |
| 20, 21 | lit with no vertex light, local fragment light | 2661, 2764 | yes | **no: entries 2590 and up are above the array's last record (2364)** |
| 22, 23 | two local lights | 2442, 2555 | yes | **no: entries 2365 and up** |

- **established** for every number in the table (read from the library's table bytes and shifted by 99 for the array column).
- **established.** A table record is optional: when the program key matches none, `AddProgram` keeps the routines it has already chosen for lighting, and every routine that path names is in the image's first 1216 records (its immediate loads: 12, 26, 40, 51, 77 to 102, 107, 108, 119, 123, 127, 145, 159, 515, 606, 611, 626, 641, 656, 694, 719, 734, 758, 768, 779, 891, 902 to 1216 by the list in [buzz_isa.md](buzz_isa.md) "Programs, entries and dispatch"). **inferred** that the routines it builds by arithmetic (per-light offsets) stay in the same range; the list holds immediate loads only.
- **inferred.** With eight lights, any mix of local, directional, attenuated and spot nibbles, texture and either normalize setting, the generic path alone runs from the first 1216 records, all resident after the array's start-up load (array numbers 0 to 1117 for the image's 1216). The cost is a longer chain per vertex than a fused program; no correctness difference is shown.

## What only the image has

- **Routine 792 (99 records, image numbers 792 to 890).** Selected by the library only when the environment variable `ODYSSEY_SPOT_INTERPOLATE` is set (the string at 0x0dae4d88 in 6.5.30m; [buzz_routines.md](buzz_routines.md) "Lighting finish routines"). It interpolates linearly between two table samples 1/32 apart for the attenuation or spot term; without the variable the library adds routine 768 and the older behaviour. **inferred:** routine 768 gives the spot exponent without the interpolation, so spot lighting is a little coarser, not absent. What the board's built-in table is and how coarse 768's result is: **unknown** ([buzz_isa.md](buzz_isa.md) passes 16 and 20).
- **Records 2365 to 2793 (429 records).** The routines the four table programs 20 to 23 name. The last routine, entry 2764, ends at record 2789 ([buzz_routines.md](buzz_routines.md)); records 2790 to 2793 follow it and no table entry names them (records 2791 and 2793 are not idle words, so they are code; what runs them: **unknown**).

## What a driver should do

1. Choose the image (`buzz_xform.bin`, 2794 records) if the ICD will use the library's table or any record from 2365 on; choose the array only if the ICD is written against the array's numbering. Do not use the 6.5.30m numbers with the array.
2. Send records 0 to 2047 at start-up as the init routine does (set-address word `0x27008000`, then six data words per record; [buzz_isa.md](buzz_isa.md) "Loading"), and keep the full image in host memory. Page records 1848 to 2047 only when a state selects a program with an entry of 1799 or more.
3. Start without the table: the generic lighting path needs no paging and no image-only record.

## Not settled

- **Whether the generic path handles a local fragment light** (the state of table records 20 and 21) without the fused program: the generic path's fragment-lighting routines (1041 onward of buzz_routines.md) were not matched against that state. **Would settle it:** run `AddProgram` under `retools/tools/mips_shim.py` for that state with the table forced to no match and read the list it builds.
- **What image records 2790 to 2793 are.** They follow the last routine's end mark at 2789, are not all idle words, and nothing in the library names them. **Would settle it:** a reader of the four records in `software/ucode/disasm/buzz_xform.lst` and a search for a sequencer entry that reaches them.
