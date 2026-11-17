# IRIX files needed for SGI VPro (Odyssey, `odsy`) reverse engineering

This lists the proprietary SGI files a reader copies from their own IRIX
install into a local `root/` directory. They are not tracked in source control.
Paths only: this repository holds no file contents.

`root/` mirrors the IRIX filesystem. The top-level binary directories
(`software/kernel/ip30/`, `software/opengl/`, `software/irisgl/`, `software/xsgi/`, `software/ucode/`) hold relative
symlinks into `root/`.

Two releases matter:

- **IRIX 6.5.30** is the primary release. Every path in section 1 was checked
  against an installed 6.5.30m Octane2 with a VPro (V12) board. Which of its binaries carry
  DWARF is in the table in `AGENTS.md`.
- **Earlier releases.** IRIX 6.5.0 has no VPro. The first release with the
  VPro files is 6.5.8. No release has richer debug information than 6.5.30m:
  section 5 has the survey.

## 1. IRIX 6.5.30 (primary)

Verified on `uname -R` = `6.5 6.5.30m`, IP30 Octane2, VPro graphics. The set
below was copied from that install.

```files
/unix
/usr/cpu/firmware/IP30prom.bin
/usr/cpu/sysgen/IP30boot/kernel.o
/usr/cpu/sysgen/IP30boot/odyssey.a
/usr/cpu/sysgen/IP30boot/odysseystubs.a
/usr/cpu/sysgen/IP30boot/gfx.o
/usr/cpu/sysgen/IP30boot/gfxs.a
/usr/cpu/sysgen/IP30boot/gfxstubs.a
/usr/cpu/sysgen/IP30boot/rrm.o
/usr/cpu/sysgen/IP35boot/kernel.o
/usr/cpu/sysgen/IP35boot/odyssey.a
/usr/cpu/sysgen/IP35boot/odysseystubs.a
/usr/cpu/sysgen/IP35boot/gfx.o
/usr/cpu/sysgen/IP35boot/gfxs.a
/usr/cpu/sysgen/IP35boot/gfxstubs.a
/usr/cpu/sysgen/IP35boot/rrm.o
/usr/cpu/sysgen/IP30boot/tport.a
/usr/cpu/sysgen/IP35boot/tport.a
/usr/cpu/firmware/ip35prom.img
/sbin/stand/ide.IP30
/usr/gfx/gfxinit
/usr/gfx/gfxinfo
/usr/gfx/setmon
/usr/gfx/dmconf
/usr/gfx/sgcombine
/usr/gfx/gfxtopology
/usr/gfx/startgfx
/usr/gfx/stopgfx
/usr/bin/X11/xsetmon
/usr/gfx/arch/GENERIC/Xsgi
/usr/gfx/arch/IP30ODSY
/usr/gfx/arch/IP30ODSY32
/usr/gfx/arch/IP30ODSY64
/usr/gfx/arch/IP35ODSY
/usr/gfx/arch/IP35ODSY32
/usr/gfx/arch/IP35ODSY64
/usr/gfx/arch/IGLOO/libgl.so
/usr/gfx/arch/IGLOO32/libgl.so
/usr/gfx/ucode/ODSY
/usr/gfx/ucode/vfc/rules
/usr/gfx/ucode/STINGRAY
/usr/gfx/STINGRAY/bin
/usr/diags/compositor
/usr/sbin/Confidence/dualchannel
/var/sysgen/master.d/odyssey
/var/sysgen/master.d/odysseystubs
/var/sysgen/mtune/odyssey
/usr/lib32/libfm.so
/usr/lib/X11/dyDDX/odyssey.so
/usr/lib/X11/dyDDX/glx.so
```

### Where each group goes

| Group | Files | Location under `root/` |
|---|---|---|
| Kernel (`software/kernel/ip30/`) | `odyssey.a` (members extracted with `ar x`), `kernel.o`, `gfx.o`, `rrm.o`, `gfxs.a`, `gfxstubs.a`, `odysseystubs.a` | `usr/cpu/sysgen/IP30boot/` |
| OpenGL core (`software/opengl/`) | `libGLcore.so`, `libGL.so` | `usr/gfx/arch/IP30ODSY64/` (also `IP30ODSY/` for o32 and `IP30ODSY32/` for N32) |
| IrisGL (`software/irisgl/`) | `libgl.so`, `libfm.so` | `usr/gfx/arch/IGLOO32/`, `usr/lib32/` |
| X server modules (`software/xsgi/`) | `odyssey.so`, `glx.so`, `Xsgi` | `usr/lib/X11/dyDDX/`, `usr/gfx/arch/GENERIC/` |
| IP35 kernel (`software/kernel/ip35/`) | the same seven files as the IP30 row, from `IP35boot/` (Fuel, Tezro, Onyx 350). Not installed on the Octane2 reference image: take them from the 6.5.30 Installation Tools and Overlays (1 of 3) disc with `instigator extract --unpack --path /usr/cpu/sysgen/IP35boot <iso> <outdir>` | `usr/cpu/sysgen/IP35boot/` |
| Microcode (`software/ucode/`) | `buzz_xform.bin`, `vof/` | `usr/gfx/ucode/ODSY/` |
| Microcode in the kernel (`software/ucode/buzz_ucode_ip30.bin`, `_ip35.bin`) | the `buzz_ucode` array of `odsy_init.o`, written unchanged by `retools/tools/odsy/extract_buzz_ucode.py` | `usr/gfx/ucode/ODSY-kernel/` |
| Firmware | `IP30prom.bin` | `usr/cpu/firmware/` |

The Odyssey kernel driver on an IP30 install is `odyssey.a` under `IP30boot/`
(confirmed on 6.5.30m). The `IP35boot/` location in earlier drafts was wrong for the Octane2; IP35 systems carry their own copy of the same files there (checked on the 6.5.30 disc).
`odysseystubs.a` is the stub used when no VPro is fitted.

Verify the install on your own system with `ls /usr/gfx/arch`, `ls
/usr/lib/X11/dyDDX` and `ls /usr/cpu/sysgen/IP30boot`. Missing paths are
normal: layouts differ by release and graphics option.

The second half of this list is the wider scope of section 6. The reference install holds none of the `IP35*` paths, `ip35prom.img` or the media-only builds: take them from the 6.5.30 discs as section 6 says. `retools/tools/inventory.py` reads whatever of them `root/` holds.

## 2. Copying the files

On the IRIX host, tar the paths in the block above (`tar -cvf /tmp/odsy_root.tar
<paths>`) and unpack on your workstation with `mkdir -p root && cd root && tar
-xvf /path/to/odsy_root.tar`. The symlinks in the binary directories are tracked in
git and resolve once `root/` is filled; the block below lists them.

Reference image used for the 6.5.30 listing, for reproducibility:
`vpro-octane2-installed-20261023.qcow2`, SHA-256
`66c0f16ea149aa9153f1bea05e082a2fa2998a1eeeb54b26a0c9a59d5bdea67f`.

## 3. Symlinks

These blocks list the layout. `archives` lines are `ARCHIVE LINKDIR`: the
archive's members are unpacked inside `root/` and linked into `LINKDIR`. `links`
lines are `LINK TARGET`, relative to the repository root.

```archives
root/usr/cpu/sysgen/IP30boot/odyssey.a software/kernel/ip30
root/usr/cpu/sysgen/IP35boot/odyssey.a software/kernel/ip35
```

```links
software/kernel/ip30/odyssey.a root/usr/cpu/sysgen/IP30boot/odyssey.a
software/kernel/ip30/odysseystubs.a root/usr/cpu/sysgen/IP30boot/odysseystubs.a
software/kernel/ip30/kernel.o root/usr/cpu/sysgen/IP30boot/kernel.o
software/kernel/ip30/gfx.o root/usr/cpu/sysgen/IP30boot/gfx.o
software/kernel/ip30/gfxs.a root/usr/cpu/sysgen/IP30boot/gfxs.a
software/kernel/ip30/gfxstubs.a root/usr/cpu/sysgen/IP30boot/gfxstubs.a
software/kernel/ip30/rrm.o root/usr/cpu/sysgen/IP30boot/rrm.o
software/kernel/ip35/odyssey.a root/usr/cpu/sysgen/IP35boot/odyssey.a
software/kernel/ip35/odysseystubs.a root/usr/cpu/sysgen/IP35boot/odysseystubs.a
software/kernel/ip35/kernel.o root/usr/cpu/sysgen/IP35boot/kernel.o
software/kernel/ip35/gfx.o root/usr/cpu/sysgen/IP35boot/gfx.o
software/kernel/ip35/gfxs.a root/usr/cpu/sysgen/IP35boot/gfxs.a
software/kernel/ip35/gfxstubs.a root/usr/cpu/sysgen/IP35boot/gfxstubs.a
software/kernel/ip35/rrm.o root/usr/cpu/sysgen/IP35boot/rrm.o
software/opengl/libGLcore.so root/usr/gfx/arch/IP30ODSY64/libGLcore.so
software/opengl/libGL.so root/usr/gfx/arch/IP30ODSY64/libGL.so
software/opengl/libGLcore_n32.so root/usr/gfx/arch/IP30ODSY32/libGLcore.so
software/opengl/libGLcore_o32.so root/usr/gfx/arch/IP30ODSY/libGLcore.so
software/irisgl/libgl.so root/usr/gfx/arch/IGLOO32/libgl.so
software/irisgl/libfm.so root/usr/lib32/libfm.so
software/xsgi/odyssey.so root/usr/lib/X11/dyDDX/odyssey.so
software/xsgi/glx.so root/usr/lib/X11/dyDDX/glx.so
software/xsgi/Xsgi root/usr/gfx/arch/GENERIC/Xsgi
software/ucode/ODSY root/usr/gfx/ucode/ODSY
software/firmware/IP30prom.bin root/usr/cpu/firmware/IP30prom.bin
```

## 5. Debug information by release

Checked on the retail discs: the overlay discs of every 6.5.x release from 6.5.2 to 6.5.30,
and the Octane2 VPro Patches disc. No release ships DWARF with types or struct members for
this board. Every unstripped file carries compile units, function and variable names and
line tables only (`dwarfdump -i` shows no structure, member or typedef entries), and the
o32 `.mdebug` table holds procedures and line numbers with no member or typedef symbols.

First release with each file: `odyssey.a` and `libGLcore.so` for IP30 (Octane2) in 6.5.8;
the IP35 (Origin 350) `odyssey.a` and `libGLcore.so` in 6.5.14. 6.5.0 to 6.5.7 have none.

| Files | Debug level | Best release |
|---|---|---|
| `odyssey.a` members (IP30, IP35), `gfx.o` | DWARF with names and lines | 6.5.30 |
| `libGLcore.so` N32 and 64-bit | DWARF with names and lines | 6.5.30 |
| `libGLcore.so` o32 | `.mdebug` names and lines | 6.5.30 |
| `odyssey.so`, `glx.so`, `Xsgi` | stripped to `.dynsym` in every release | none |

Types have to come from headers, the ucode and the RE notes. 6.5.30 is the latest build;
6.5.8 is the earliest VPro build and is only useful for diffing.

## 6. Wider scope: every 6.5.30 file that touches VPro

Found by reading the file lists (`instigator extract --manifest-only`) of the four 6.5.30 discs (Installation Tools and Overlays 1 of 3, Overlays 2 of 3 and 3 of 3, and the Octane2 VPro Patches disc), then unpacking every disc whole (`instigator extract --unpack`) and checking each file for VPro symbols and strings (`odsy`, `Odsy`, `ODYSSEY`, `VPro`, `BUZZ`, `PB&J`). Machine tags in the file lists (`GFXBOARD=ODYSSEY`, `CPUBOARD=IP30` or `IP35`) agree with the string search. Everything below is in `root/`, under the install path, and is read by `retools/tools/inventory.py` (group names in `tools/config/inventory-config.json`).

| Group | Files | Disc |
|---|---|---|
| Kernel, IP30 | `IP30boot/` `odyssey.a`, `odysseystubs.a`, `gfx.o`, `gfxs.a`, `gfxstubs.a`, `rrm.o`, `kernel.o`, `tport.a` (the text-port set-up that calls `odsy_earlyinit`) | Tools and Overlays 1 |
| Kernel, IP35 | the same set from `IP35boot/` | Tools and Overlays 1 |
| Kernel stubs | `odysseystubs.a` also in `IP27boot/` and `IP32boot/` (no VPro code, listed for completeness, not read) | Tools and Overlays 1 |
| Kernel config | `/var/sysgen/master.d/odyssey`, `odysseystubs`, `/var/sysgen/mtune/odyssey` | Tools and Overlays 1 |
| libGLcore and libGL | `IP30ODSY`, `IP30ODSY32`, `IP30ODSY64` and `IP35ODSY`, `IP35ODSY32`, `IP35ODSY64`: `libGLcore.so` and `libGL.so` in each, so six libGLcore builds and six libGL builds per release | Tools and Overlays 1 |
| Earlier IP30 builds | the same IP30 `libGLcore.so`, `libGL.so` and `odyssey.a` as shipped on the base disc (`root/builds/6.5.30-media/`) and in patches 4103 and 4104 of the VPro Patches disc (`root/builds/vpro-patch-4103/`, `vpro-patch-4104/`); the reference install carries a newer build of the libraries still | Tools and Overlays 1, VPro Patches |
| IrisGL | `/usr/gfx/arch/IGLOO/libgl.so`, `IGLOO32/libgl.so` (both name the Odyssey board among the supported ones), `/usr/lib32/libfm.so` | Tools and Overlays 1 |
| X | `odyssey.so`, `glx.so`, `Xsgi` | Tools and Overlays 1 |
| Graphics tools | `gfxinit` (loads the transform microcode), `gfxinfo`, `setmon`, `dmconf`, `sgcombine`, `gfxtopology`, `startgfx`, `stopgfx`, `/usr/bin/X11/xsetmon` | Tools and Overlays 1 |
| Diagnostics | `/sbin/stand/ide.IP30` (also installed as `/usr/stand/ide`; the IP30 IDE holds the textport part of the driver plus the timing-table and display-clock routines the PROM also carries), `usr/diags/compositor/bin/sting`, `usr/sbin/Confidence/dualchannel` (I2C tests), `usr/gfx/STINGRAY/bin/cmp_flash` and `cmp_flash_all` (compositor flash tools) | Tools and Overlays 1 |
| Microcode and timing data | `ODSY/buzz_xform.bin`; `ODSY/vof/*.vfo` (video formats); `vfc/rules/VPro_*.def`; `STINGRAY/cmb`, `vfo`, `xlx` and `usr/diags/compositor/data/*.cmb` (compositor tables for the Odyssey dual-channel option); the kernel's own copy, `ODSY-kernel/buzz_ucode_ip30.bin` and `_ip35.bin`, made by `retools/tools/odsy/extract_buzz_ucode.py` | Tools and Overlays 1 |
| Field diagnostics | `odydiags`, the VPro diagnostics that run under IRIX, from the Internal Support Tools 2.7 disc (builds for 6.5.10 and 6.5.15, both with the same microcode): `usr/diags/ody/ucode/diagxform.bin`, its own transform microcode (24,252 bytes, 2021 records, SHA-256 `dd27f727e58ee230ff61e711836096d810edaa152a50174c221ce6956ff47530`), linked at `root/builds/odydiags-6.5.15/usr/diags/ody/ucode/diagxform.bin`; listing `software/ucode/disasm/diagxform.lst`. The 6.5.15 program `usr/diags/ody/odydiags` (6,720,984 bytes, SHA-256 `46a9c870ebaa7ba43098687cb44a629d00698103cd9d3db696e29d3c0150158a`) and its stored frames and CRC lists `usr/diags/ody/checksum/` are linked under the same root. The package's user guide names one transform test, a microcode-memory write and read-back; its drawing tests replay command streams recorded from the board's C simulator and compare the frame with the simulator's (`ucode/buzz_isa.md`, passes 17 and 18; `retools/tools/odsy/odydiags_frame_check.py`) | Internal Support Tools 2.7 |
| PROM | `IP30prom.bin` carries graphics code: the Odyssey timing-table loader, the DCD2 register loader, the I2C reset and ID routines (about eleven `odsy` routine names appear as strings). `ip35prom.img` holds the string "odsy" once; its code is not readable as an ELF. Neither is disassembled here, only listed in the function inventory by name | Tools and Overlays 1 |

Checked and left out. Reason in each case: the file has no VPro code.

- Files with only the text `ODYSSEY` in a renderer-name table (`/usr/sbin/scope`, `hist`, `vhist`, `slide`, `colorbars`, `gamcal`, `ical`, `vis`, `movie`, `mousemon`): the name appears in a list of boards with no VPro-specific code behind it.
- `/usr/sbin/ov` (a desktop class named `DeskVProp`) and `/usr/sbin/flash`, `flashio` (the text "ODSYS" in a SysAD message): name collisions, not VPro.
- `libpf`, `libfxplugutils`, `libXm`, `fglrx_*`, `libblas*`, `hinv` and the IP27/IP30/IP35 kernel objects that merely mention `odsy_xt` (a bus-widget name used by `pcibr.o`, `xbridge.o`, `ioc3.o`, `ioc4.o`, `kernel.o` and others): at most a table of cost numbers, a model string or a widget name.
- The installed `IP35VOYAGER`, `STINGRAY` hardware names beyond the compositor data above, and every `KONA`, `MGRAS`, `VENICE`, `GR5` file: other boards.
- The video and sync tools on disc (`videoout`, `videopanel`, `vidtomem`, `ksync*`): they carry no VPro string and `ksync*` are kernel mutex tools, not video sync. No VPro genlock tool exists apart from the genlock paths of the kernel driver and `setmon`.
- Manual pages, release notes and Insight books that mention VPro: prose, not binaries; not read.

Copy a file from a disc with `instigator extract --unpack --path <install path> <iso> <outdir>`; for several builds of one path, extract each disc to its own directory (the patch disc replaces files the base disc has).
