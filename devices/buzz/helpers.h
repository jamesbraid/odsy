/* Hand-written helpers for buzz, carried over from the old header. Included by the generated header; this is code, not data. */

#define BUZZ_FIELD_GET(w, shift, mask) (((w) >> (shift)) & (mask))
/*
 * Texture level descriptor i (i = 0..63): count 3, id 0x280 + i.
 * Low 16 bits of the command word are 0x0e80 + i. established.
 */
#define BUZZ_OP_TEXLEVEL(i)      (0x0e80u + (i))

/*
 * Annotations the importer does not read, kept verbatim for a repo plugin that does:
 * COPY: rectangle copy between two drawables or buffers, count 8, id 0x031.
 * POSTFILTER: scale and bias, count 8, id 0x03b. established.
 */

/*
 * Old bare expressions, kept as macros: a write-word flag that is the read_dir
 * bit, and the lower bound of the 3.12 post-filter scale and bias field.
 */
#define BUZZ_HDR_W7_READ          (1u << 24)
#define BUZZ_PF_MIN_X4096         (-8 * 4096)
