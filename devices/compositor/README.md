# compositor

VPro (Odyssey) compositor chip: register numbers.

Source: odsy analysis of the compositor diagnostic table in the shipped tools.

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

Notes on this unit: [compositor-registers.md](compositor-registers.md).

## Used by

- [Compositor install files](../../software/firmware/compositor-files.md)
- [The compositor probe and the gfxinfo compositor lines](../../software/kernel/compositor-probe.md)
- [Diagnostic and kernel-driver messages](../../software/kernel/diag-messages.md)
- [Kernel driver functions, one entry each](../../software/kernel/driver-functions.md)
- [Ioctl entries, one per request](../../software/kernel/ioctls.md)
- [Kernel driver functions by object and role](../../software/kernel/kernel-functions.md)
- [The VPro driver archive, object by object](../../software/kernel/kernel-objects.md)
- [Kernel driver notes](../../software/kernel/kernel.md)
- [Diagnostics, libGL and leftover libGLcore functions by role](../../software/opengl/diagnostics-and-libgl-functions.md)
- [VPro tool functions, one entry each](../../software/userland/vpro-tool-functions.md)
- [Display-table files of the VPro install](../../software/video/display-files.md)
- [X module (`odyssey.so`) functions by role](../../software/xsgi/odyssey-so-functions.md)
- [X module (`odyssey.so`) functions read in full, one entry each](../../software/xsgi/odyssey-so-reads.md)
