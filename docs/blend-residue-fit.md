# The blend frame's residue: measurements and fits

`retools/tools/odsy/odydiags_blend_fit.py` takes apart the difference between the rebuilt
and the stored `blend` frame of the VPro field diagnostics. The stored frame is
the board simulator's output, not a capture from a board, so every result is a
statement about that simulator's stream and frame. The rebuild is
`retools/tools/odsy/odydiags_frame_check.py --test blend` under the rules of
[raster.md](raster.md): 12,598 of 1,310,720 pixels differ.

```
uv run --with numpy python retools/tools/odsy/odydiags_blend_fit.py [panels|amplify|dither|fit|frame|all]
```

It needs numpy for `fit` and `frame` and the files under `root/` that the frame
builder reads. `frame` rebuilds the whole frame six times and takes about two
minutes. `all` output from the run behind these numbers is in
[ucode/runs/odydiags-blend-fit-candidates.txt](../ucode/runs/odydiags-blend-fit-candidates.txt).

## What each part measures

| Command | Measures |
| --- | --- |
| `panels` | Pixels the rebuild gets wrong in each of the nine panels, and how many of them differ by more than 3 in some byte |
| `amplify` | For the panels that combine source and destination bit by bit, how many of those large errors vanish when the operation is applied to the stored COPY and NOOP panels instead of the rebuild's |
| `dither` | The primitives drawn under each value of block 0x004 and each logic operation, and every begin and end pair drawn with block 0x004 bit 18 set |
| `fit` | Candidate colour arithmetic for panel 0, which draws no logic operation: pixels each candidate leaves different |
| `frame` | A change to the colour packing, applied to the whole frame |

## Results

**Established** (counts from the run above, for this frame):

- Panel 0 differs in 1070 pixels, 730 red, 727 green, 751 blue and 244 alpha
  bytes, almost all one step low. The stored COPY panel equals panel 0 pixel for
  pixel.
- 1325 pixels differ by more than 3 steps, all in the AND, AND_REVERSE,
  AND_INVERTED, XOR and OR panels (232, 248, 225, 379 and 241). The CLEAR, COPY
  and NOOP panels have none. Applying each operation to the stored COPY and NOOP
  panels' pixels reproduces the stored pixel (or the stored destination, where
  the second quad does not cover) for 1311 of the 1325: all of AND, AND_REVERSE
  and AND_INVERTED, 370 of 379 in XOR, 236 of 241 in OR. A one-step difference at
  a carry boundary changes many bits under these operations, so the large errors
  are the panel 0 residue amplified, not coverage or ordering errors.
- Block 0x004 bit 18 is clear for every drawn primitive; the only pair with it
  set is a begin and end with no vertex. The panels draw ten quads under 0x2200
  and eight under 0x22200 with a logic operation.

**Inferred**, a partial account of the panel 0 residue (pixels left different of
13,934):

| Candidate | Pixels |
| --- | --- |
| baseline, floor(256 c) | 1070 |
| floor(256 c + b), b from 0.01 to 0.15 | 1053 (b = 0.03) to 3514 |
| 12-bit vertex colours, the weighted sum quantised, then to 8 bits: best | 774 (sum rounded up, then >> 4) |
| weights held to 10 to 16 bits in the forms tried, plus 0, 0.5 or 1 low bit | 735 best of 1368 variants |
| vertex 1/w with a 6 to 14 bit mantissa, three rounding modes, plus one low bit | 729 best |
| red, green and blue plus one 12-bit low bit (1/16 of an output step), alpha unchanged, 1.0 as 4096 | 556 |
| the same with the vertex colour 1.0 as 4095 | 782 |
| the same with red, green and blue 1.0 as 4095 at the vertices and alpha 1.0 as 4096 | 500 |

With the same change applied to every panel's packing (`frame`), the whole frame
differs in 10,051 pixels, 900 of them over 3 steps (baseline 12,598 and 1325).
Converting the interpolated colour as round(4095 c) + 1 instead gives 10,044 and
970 (panel 0: 571).

One constant fits one triangle: in the 5981-pixel triangle of the second quad
whose vertex colours are 0, 0.5 and 0.5, adding 1/16 of a step to red, green and
blue leaves 3 pixels different per channel against 370, and any constant from
0.062 to 0.0635 leaves 3 to 5. Nothing fits the rest: the other triangle of that
quad keeps 114 to 134 pixels per channel with the constant, and the first quad's
green 33 to 86. The offsets the stored bytes allow (the last table of `fit`)
change sign with the value, which no constant, weight width, 12-bit conversion
or 1/w width tried explains. The form of the simulator's colour interpolation is
**unknown**.
