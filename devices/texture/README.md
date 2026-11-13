# texture

Texture state words of the Odyssey command stream: environment, mode, LOD, offset and target blocks, and the opcodes that carry them.

Source: odsy binary analysis of the shipped GL library texture routines.

The values are in [registers.toml](registers.toml), each graded and sourced, and the generated reference page is [registers.md](registers.md).

Notes on this unit: [texture-formats.md](texture-formats.md), [texture-state.md](texture-state.md).

## Used by

- [Odyssey driver routines of `libGLcore.so`, read one by one](../../software/opengl/libglcore-odyssey-reads.md)
- [OpenGL core and X module notes](../../software/opengl/opengl.md)
