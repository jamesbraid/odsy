# IRIX files needed for SGI VPro (Odyssey, `odsy`) reverse engineering

This lists the proprietary SGI files a reader copies from their own IRIX
install into a local `root/` directory. They are not tracked in source control.
Paths only: this repository holds no file contents.

`root/` mirrors the IRIX filesystem. The top-level binary directories
(`odsy_kernel/`, `libglcore/`, `irisgl/`, `ddx/`, `ucode/`) hold relative
symlinks into `root/`.

Two releases matter:

- **IRIX 6.5.30** is the primary release. Every path in section 1 was checked
  against an installed 6.5.30m Octane2 with a VPro (V12) board. Which of its binaries carry
  DWARF is in the table in `AGENTS.md`.
- **Earlier releases.** IRIX 6.5.0 has no VPro. Which release first ships the
  VPro files is **unknown**. It may not matter: 6.5.30m already carries DWARF
  in the Odyssey kernel objects, the N32 and 64-bit `libGLcore.so` and the
  IrisGL libraries; only the X modules and the o32 `libGLcore.so` are stripped.
  If you check another release, record what `scripts/map_binaries.py` shows.

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
/usr/gfx/gfxinit
/usr/gfx/arch/GENERIC/Xsgi
/usr/gfx/arch/IP30ODSY
/usr/gfx/arch/IP30ODSY32
/usr/gfx/arch/IP30ODSY64
/usr/gfx/arch/IGLOO32/libgl.so
/usr/gfx/ucode/ODSY
/usr/lib32/libfm.so
/usr/lib/X11/dyDDX/odyssey.so
/usr/lib/X11/dyDDX/glx.so
```

### Where each group goes

| Group | Files | Location under `root/` |
|---|---|---|
| Kernel (`odsy_kernel/`) | `odyssey.a` (members extracted with `ar x`), `kernel.o`, `gfx.o`, `rrm.o`, `gfxs.a`, `gfxstubs.a`, `odysseystubs.a` | `usr/cpu/sysgen/IP30boot/` |
| OpenGL core (`libglcore/`) | `libGLcore.so`, `libGL.so` | `usr/gfx/arch/IP30ODSY64/` (also `IP30ODSY/` for o32 and `IP30ODSY32/` for N32) |
| IrisGL (`irisgl/`) | `libgl.so`, `libfm.so` | `usr/gfx/arch/IGLOO32/`, `usr/lib32/` |
| X server modules (`ddx/`) | `odyssey.so`, `glx.so`, `Xsgi` | `usr/lib/X11/dyDDX/`, `usr/gfx/arch/GENERIC/` |
| Microcode (`ucode/`) | `buzz_xform.bin`, `vof/` | `usr/gfx/ucode/ODSY/` |
| Firmware | `IP30prom.bin` | `usr/cpu/firmware/` |

The Odyssey kernel driver on an IP30 install is `odyssey.a` under `IP30boot/`
(confirmed on 6.5.30m). The `IP35boot/` location in earlier drafts was wrong.
`odysseystubs.a` is the stub used when no VPro is fitted.

Verify the install on your own system with `ls /usr/gfx/arch`, `ls
/usr/lib/X11/dyDDX` and `ls /usr/cpu/sysgen/IP30boot`. Missing paths are
normal: layouts differ by release and graphics option.

## 2. Copying the files

On the IRIX host, tar the paths in the block above (`tar -cvf /tmp/odsy_root.tar
<paths>`) and unpack on your workstation with `mkdir -p root && cd root && tar
-xvf /path/to/odsy_root.tar`. `scripts/populate-root` then creates the symlinks
in the binary directories from the block below.

Reference image used for the 6.5.30 listing, for reproducibility:
`vpro-octane2-installed-20261023.qcow2`, SHA-256
`66c0f16ea149aa9153f1bea05e082a2fa2998a1eeeb54b26a0c9a59d5bdea67f`.

## 3. Symlinks

`scripts/populate-root` reads these blocks. `archives` lines are `ARCHIVE LINKDIR`: the
archive's members are unpacked inside `root/` and linked into `LINKDIR`. `links`
lines are `LINK TARGET`, relative to the repository root.

```archives
root/usr/cpu/sysgen/IP30boot/odyssey.a odsy_kernel
```

```links
odsy_kernel/odyssey.a root/usr/cpu/sysgen/IP30boot/odyssey.a
odsy_kernel/odysseystubs.a root/usr/cpu/sysgen/IP30boot/odysseystubs.a
odsy_kernel/kernel.o root/usr/cpu/sysgen/IP30boot/kernel.o
odsy_kernel/gfx.o root/usr/cpu/sysgen/IP30boot/gfx.o
odsy_kernel/gfxs.a root/usr/cpu/sysgen/IP30boot/gfxs.a
odsy_kernel/gfxstubs.a root/usr/cpu/sysgen/IP30boot/gfxstubs.a
odsy_kernel/rrm.o root/usr/cpu/sysgen/IP30boot/rrm.o
libglcore/libGLcore.so root/usr/gfx/arch/IP30ODSY64/libGLcore.so
libglcore/libGL.so root/usr/gfx/arch/IP30ODSY64/libGL.so
libglcore/libGLcore_n32.so root/usr/gfx/arch/IP30ODSY32/libGLcore.so
libglcore/libGLcore_o32.so root/usr/gfx/arch/IP30ODSY/libGLcore.so
irisgl/libgl.so root/usr/gfx/arch/IGLOO32/libgl.so
irisgl/libfm.so root/usr/lib32/libfm.so
ddx/odyssey.so root/usr/lib/X11/dyDDX/odyssey.so
ddx/glx.so root/usr/lib/X11/dyDDX/glx.so
ddx/Xsgi root/usr/gfx/arch/GENERIC/Xsgi
ucode/ODSY root/usr/gfx/ucode/ODSY
firmware/IP30prom.bin root/usr/cpu/firmware/IP30prom.bin
```
