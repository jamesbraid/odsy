# IRIX files needed for SGI VPro (Odyssey) reverse engineering

This lists the proprietary SGI files a reader copies from their own IRIX 6.5
install into a local `root/` directory. They are not tracked in source control.
Paths only: this repository holds no file contents.

`root/` mirrors the IRIX filesystem. The top-level directories (`kernel/`,
`libglcore/`, `ddx/`, `ucode/`) hold relative symlinks into `root/`.

## 1. Layout under `root/`

```
root/
├── unix                                  <- running kernel (optional)
├── usr/
│   ├── cpu/
│   │   ├── firmware/IP30prom.bin         <- machine PROM image
│   │   └── sysgen/
│   │       ├── IP30boot/kernel.o         <- IP30 kernel object
│   │       └── IP35boot/odyssey.a        <- Odyssey kernel driver archive
│   ├── gfx/
│   │   ├── gfxinit                       <- graphics initialisation program
│   │   ├── arch/
│   │   │   ├── IP30ODSY64/libGLcore.so   <- OpenGL core driver
│   │   │   └── GENERIC/Xsgi              <- X server
│   │   └── ucode/ODSY/buzz_xform.bin     <- Buzz transform program
│   └── lib/X11/dyDDX/
│       ├── odyssey.so                    <- X server Odyssey module
│       └── glx.so                        <- GLX module
└── (diagnostics: field_diags_odyssey package, see below)
```

## 2. Where each group goes

| Group | Files | Location under `root/` |
|---|---|---|
| Kernel (`kernel/`) | `kernel.o`, `odyssey.a` (members extracted with `ar x`) | `root/usr/cpu/sysgen/` |
| OpenGL core (`libglcore/`) | `libGLcore.so` | `root/usr/gfx/arch/IP30ODSY64/` |
| X server module (`ddx/`) | `odyssey.so`, `glx.so` | `root/usr/lib/X11/dyDDX/` |
| Microcode (`ucode/`) | `buzz_xform.bin` | `root/usr/gfx/ucode/ODSY/` |

The paths above come from Origami's published Odyssey datasheet and the file listings of the Odyssey diagnostics packages (`field_diags_odyssey`, `odydiags6510`, `odydiags6515`). I could not confirm the exact name or directory of the Odyssey kernel driver object on an IP30 install from those sources. `odyssey.a` is listed under `IP35boot/`. Check `/usr/cpu/sysgen/IP30boot/` on your own install and correct this file.

## 3. Copying the files from an IRIX 6.5 system

Run on the IRIX host with the VPro graphics software installed:

```sh
tar -cvf /tmp/odyssey_root.tar \
    /unix \
    /usr/cpu/firmware/IP30prom.bin \
    /usr/cpu/sysgen/IP30boot/kernel.o \
    /usr/cpu/sysgen/IP35boot/odyssey.a \
    /usr/gfx/gfxinit \
    /usr/gfx/arch/GENERIC/Xsgi \
    /usr/gfx/arch/IP30ODSY64 \
    /usr/gfx/ucode/ODSY \
    /usr/lib/X11/dyDDX/odyssey.so \
    /usr/lib/X11/dyDDX/glx.so
```

Unpack it on your workstation into the ignored `root/` directory:

```sh
mkdir -p root && cd root && tar -xvf /path/to/odyssey_root.tar
```

Missing paths are normal: install layouts differ by IRIX release and by
graphics option. Edit this list to match what your system has.
