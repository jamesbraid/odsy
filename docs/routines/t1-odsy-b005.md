# Tier-1 routine readings, odsy batch 5

Routines from `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`. Each role statement
rests on the rendered facts for that routine: register use, memory accesses, callees and
constants. Where the facts stop short of a role, the entry says so. These are software readings.
They do not establish hardware behaviour.

Several entries share one shape: a call to `__glSPDlistSpace` with a0 set to zero, a store into
the space it returns, and a return value that is either a word from a fixed state address or
that call's result. The name prefix `__glOdylc_` appears on all of them.

## `__glOdylc_Color3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb336300`
`__glOdylc_Color3us` (276 bytes) reserves space through `__glSPDlistSpace` (`jalr` at
`0xb336368`) and stores into it. Its return is either the word at `0x1048` or the reservation's
result, chosen by the test at `0xb336388`. The name says it takes an unsigned-short color triple,
but the facts show the reserve-then-store shape, not the operand layout. Grade: inferred.

## `libGLcore.so` at `0xb336530`
`__glOdylc_Color4b` (288 bytes) has the same shape as the Color3us entry above, with the call at
`0xb33659c`. The byte-sized operands come from the name only. Grade: inferred.

## `libGLcore.so` at `0xb336c30`
`__glOdylc_Color4i` (288 bytes) matches the reserve-then-store shape, with the reservation call at
`0xb336c9c`. The signed-int operands come from the name only. Grade: inferred.

## `libGLcore.so` at `0xb336e70`
`__glOdylc_Color4s` (288 bytes) matches the same shape, with the reservation call at `0xb336edc`.
The short operands come from the name only. Grade: inferred.

## `libGLcore.so` at `0xb3370b0`
`__glOdylc_Color4ub` (288 bytes) matches the same shape, with the reservation call at `0xb33711c`.
The unsigned-byte operands come from the name only. Grade: inferred.

## `libGLcore.so` at `0xb3372f0`
`__glOdylc_Color4ui` (288 bytes) matches the same shape, with the reservation call at `0xb33735c`.
The unsigned-int operands come from the name only. Grade: inferred.

## `libGLcore.so` at `0xb337530`
`__glOdylc_Color4us` (288 bytes) matches the same shape, with the reservation call at `0xb33759c`.
The unsigned-short operands come from the name only. Grade: inferred.

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb338560`
`__glOdyim_Clear` (1644 bytes) looks like the driver-side clear entry. It raises GL error 0x502
(GL_INVALID_OPERATION) through `__glSetError` at `0xb338598` and error 0x501 (GL_INVALID_VALUE) at
`0xb3385f0`. It also calls `__glOdysseyClear` (`0xb338904`, `0xb338a40`) and
`__glOdysseySetDrawbuf` (`0xb3389f8`, `0xb338a5c`), with the order of those calls not traced here. It also calls `__glOdysseyIoctl` at `0xb338b60`
with request 0x6f64000d; the high half, 0x6f64, is the ASCII letters "od". The error codes and
callees support the clear reading. What the ioctl does is open. Grade: inferred.

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb338bd0`
`__glOdysseyClear` (1860 bytes) is called from the entry above at `0xb338904` and `0xb338a40`.
Its one call site is `__glOdysseyValidateHardware` (`0xb338fc4`), passed a mask built from
0x10415 and the context word at a0+40996. The function returns either 0x10000 or 0x10046. The
render does not decode the mask bits, so what gets validated is unknown. Grade: inferred.

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb3396d0`
`__glOdysseyFindWindowSize` (332 bytes) appears to read the window size and record it in the
context. It calls `__glChangeWindowSize` (`0xb339770`, `0xb3397cc`) and `__glChangeReadWindowSize`
(`0xb3397ac`), and the second of those reads size fields at a0+1960 and a0+1964. An unnamed callee
at `0xb339710` receives four stack slots that look like out-parameters. Grade: inferred.

## `libGLcore.so` at `0xb33d4e0`
`__glOdysseyInitDefaultValues` (3472 bytes) sets the context's default state. It zeroes a 0x40-byte
block at a0+45072 with `bzero` (`0xb33d74c`). It then makes close to 90 call sites into the
`__glOdyim_*` state setters, using enum values such as 0xb50 (GL_LIGHTING), 0xb71
(GL_DEPTH_TEST) and 0xb10 (GL_POINT_SMOOTH). It ends with `__glOdysseyImageInit`,
`__glOdysseyInitLighting` (`0xb33e014`), the fragment lighting and material initialisers, and
`__glOdysseyTextureDriverInit`, plus a `getenv` call whose string is not decoded. The constants
match standard OpenGL enum values, but the render does not show what each setter stores. Grade:
inferred.

## `libGLcore.so` at `0xb3541a0`
`ApplyMaterialF` (1764 bytes) makes no calls in the rendered facts. It reads through the chain at
`abs 0x1020` and returns the word at `0xb35434c`. The name suggests applying a float material, but
the render does not resolve which material fields it touches, so the role stays partly open.
Grade: inferred.

## `libGLcore.so` at `0xb354890`
`ApplyMaterialI` (2208 bytes) is the integer-valued counterpart of the entry above. It makes no
calls in the rendered facts and returns a word through the same chain at `abs 0x1020`. The
parameter types come from the name only. Grade: inferred.

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb36ae00`
`AddConvolutionBorders` (9352 bytes) appears to fill border texels for a convolution filter. It
calls `__glOdysseyProgramTexFilter` (`0xb36af68`, `0xb36b0c0`), `LoadTextureFilter` (`0xb36afd0`,
`0xb36b0d0`), `__glOdysseyImageMovePixelsTexture` (`0xb36b04c`, `0xb36b184`) and `floorf`
(`0xb36b21c`). The border layout is not resolved by the render. Grade: inferred.

## `libGLcore.so` at `0xb380aa0`
`__glOdysseyImageMovePixelsCopy` (8280 bytes) appears to copy pixels within an image. It clears two
stack parameter blocks with `memset` (`0xb380b14`, `0xb380b2c`) and makes four `ceilf` calls from
`0xb380b4c`, presumably on rectangle bounds. It then calls `OdysseyImageCalcXferCopyParams`
(`0xb380c88`) for the transfer parameters. The copy direction and layout are not in the rendered
facts. Grade: inferred.

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb383380`
`__glOdysseyImageMovePixelsDMAtoGfx` (6172 bytes) looks like the DMA-to-graphics variant of the
copy routine above. It uses the same `memset` and `ceilf` pattern from `0xb383480`, then calls
`__glOdysseyImageCalcXferWriteParams` (`0xb383584`). Which DMA engine it drives is not visible in
these facts. Grade: inferred.

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb38ad80`
`__glOdysseyInitLighting` (788 bytes) is called from `__glOdysseyInitDefaultValues` at `0xb33e014`.
The rendered facts show no callees, and the return value at `0xb38b078` is unresolved. The name is
the only role evidence, so the lighting fields it sets are open. Grade: inferred.

## `libGLcore.so` at `0xb38dbf0`
`__glOdylc_Normal3b` (256 bytes) has the reserve-then-store shape. It calls `__glSPDlistSpace` at
`0xb38dc44` with a0 zero, and returns either the word at `0x1060` plus 4 or the reservation's
result. The byte operand type comes from the name only. Grade: inferred.

## `libGLcore.so` at `0xb38e430`
`__glOdylc_Normal3s` (256 bytes) has the same shape as the Normal3b entry above, with the
reservation call at `0xb38e484`. The short operand type comes from the name only. Grade: inferred.

## `libGLcore.so` at `0xb38f960`
`__glOdysseyReadFromPMObj` (268 bytes) reads through the kernel. It calls `CheckMMXfrArgs`
(`0xb38f9e8`), then `__glOdysseyIoctl` at `0xb38fa08` with request 0x6f640006, and returns 0 or 1.
The "PM object" in the name is not decoded in these facts, so what it reads stays open. Grade:
inferred.

## `libGLcore.so` at `0xb38fa70`
`OpenPipeMemReference` (496 bytes) appears to open a reference to a pipe-memory object. It calls
`__glOdysseyMIPS_SYNC` at `0xb38fb7c` and `0xb38fc08` on either side of an `__glOdysseyIoctl` at
`0xb38fbe0` with request 0x6f640003. The sync calls probably order memory access around the kernel
request. What "pipe memory" refers to here is not established. Grade: inferred.

## `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xb390500`
`LookupKnownGroup` (396 bytes) looks up a group in a known-groups table and adds one when it is
missing. It calls `LookupCSetId` (`0xb39054c`), `AddKnownGroup` (`0xb3905c8`),
`LookupCoresidRange` (`0xb3905e8`) and `RemoveKnownGroup` (`0xb390668`). On failure it raises error
0x505 (GL_OUT_OF_MEMORY) through `__glSetError` at `0xb390638`. The table layout is not in the
rendered facts. Grade: inferred.

## `libGLcore.so` at `0xb390690`
`LookupCoresidRange` (592 bytes) looks up a co-resident range. It zeroes a 0x40-byte block with
`bzero` (`0xb390714`) and asks the kernel through `__glOdysseyIoctl` at `0xb390774` with request
0x6f640004. It raises error 0x505 (GL_OUT_OF_MEMORY) through `__glSetError` at `0xb3908c0` on
failure. The range layout and the ioctl's meaning are not decoded. Grade: inferred.

## `libGLcore.so` at `0xb3929a0`
`__glOdysseySetProgram` (1208 bytes) makes no calls in the rendered facts. Its returns are the
constant 0x29808062 and one unresolved value. The name suggests binding a program object, but the
constant is not decoded, so this entry stays weakly grounded. Grade: inferred.

## `libGLcore.so` at `0xb394f40`
`__glOdylc_TexCoord1d` (240 bytes) has the reserve-then-store shape. It calls `__glSPDlistSpace` at
`0xb394f90` with a0 zero, stores a word to `abs 0x1060` at `0xb395004`, and returns either the word
at `0x1060` plus 2 or the reservation's result. The double-precision operand comes from the name
only. Grade: inferred.
