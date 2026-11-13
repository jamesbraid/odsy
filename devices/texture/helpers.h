/* Hand-written helpers for texture, carried over from the old header. Included by the generated header; this is code, not data. */

static inline uint32_t tex_round_even(uint32_t n)
{
    return (n + 1u) & ~1u;
}

/* Row pitch for an ordinary level of stored width w and border b. */
static inline uint32_t tex_pitch_tiles(uint32_t w, uint32_t b)
{
    uint32_t inner = w > 2u * b ? w - 2u * b : 0u;
    uint32_t t = tex_round_even((inner + 15u) / 16u + 2u * b);

    return t == 4096u ? 1u : t;
}

/* Row pitch for an ICC level (index 48 or 49). */
static inline uint32_t tex_pitch_tiles_icc(uint32_t w, uint32_t b)
{
    uint32_t t = ((w + 1u) / 2u + 15u) >> 4;

    if (b) {
        t += 2u;
    }
    t = tex_round_even(t);
    return t == 4096u ? 1u : t;
}

/* Tiles in one slice, before any rounding to a power of two. */
static inline uint32_t tex_slice_tiles(uint32_t pitch, uint32_t h, uint32_t b)
{
    uint32_t inner = h > 2u * b ? h - 2u * b : 0u;

    return pitch * ((inner + 15u) / 16u + 2u * b);
}

/* Slice tile count rounded up to a power of two, for depth >= 2. */
static inline uint32_t tex_slice_tiles_pow2(uint32_t tiles)
{
    uint32_t s = 1u;

    while (s < tiles) {
        s <<= 1;
    }
    return s;
}

/* Base-2 ceiling of a slice tile count; 0 for a count below 2. */
static inline uint32_t tex_slice_exp(uint32_t tiles)
{
    uint32_t e = 0u;

    while ((1u << e) < tiles) {
        e++;
    }
    return e;
}

/* Slice stride in address units for size code c and slice exponent e. */
static inline uint32_t tex_slice_stride(uint32_t c, uint32_t e)
{
    return (TEX_SLICE_STRIDE_BASE << c) << e;
}

/*
 * Indices 14, 15, 19 to 31, 34 to 47, 50 and 51 have no table entry:
 * the width routine writes zero widths and leaves the size code unwritten
 * (established by running them). Indices 52 to 63 rest on the routine's
 * bound check (index below 50), read but not run: inferred the same. The
 * library never sends any of them for a GL format (established). What
 * the board does with them: unknown.
 *
 * Row layout of the table below: present, then the six widths in bits in
 * the order red, green, blue, alpha, luminance, intensity, then the size
 * code c, the pixel class (-1: none, nothing in the pixel path maps to
 * this index), and the texture class (section 6, CLASS) for an RGB-family
 * and for an RGBA-family OpenGL internal format. Where the two classes
 * differ the class depends on the OpenGL format the application named,
 * not on the index: index 17 is sent with class 5 for GL_RGB8 and with
 * class 6 for GL_RGBA8 and the same four bytes are stored. The RGB
 * family is GL_R3_G3_B2, 3, GL_RGB and GL_RGB2_EXT to GL_RGB16. The
 * component bits are the sum of the widths; the booked size in bytes is
 * 2 << c (the allocator's unit, established, not a measured packing).
 */
struct tex_fmt_info {
    uint8_t present;
    uint8_t r, g, b, a, l, i;
    uint8_t size_code;
    int8_t  pixel_class;
    uint8_t class_rgb;
    uint8_t class_rgba;
};

static const struct tex_fmt_info tex_fmt_table[64] = {
    /*        present  r  g  b  a  l  i  c  pclass  rgb rgba */
    [0]  = { 1,  0, 0, 0, 8, 0, 0, 0,  0, 1, 1 }, /* established */
    [1]  = { 1,  0, 0, 0, 8, 0, 0, 0, -1, 1, 1 }, /* established */
    [2]  = { 1,  0, 0, 0, 0, 0, 8, 0,  1, 4, 4 }, /* established */
    [3]  = { 1,  0, 0, 0, 0, 0, 8, 0, -1, 4, 4 }, /* established */
    [4]  = { 1,  0, 0, 0, 0, 8, 0, 0,  2, 2, 2 }, /* established */
    [5]  = { 1,  0, 0, 0, 0, 8, 0, 0, -1, 2, 2 }, /* established */
    [6]  = { 1,  3, 3, 2, 0, 0, 0, 0, -1, 5, 5 }, /* established */
    [7]  = { 1,  3, 3, 2, 0, 0, 0, 0, -1, 5, 5 }, /* established */
    [8]  = { 1,  0, 0, 0, 12, 0, 0, 0,  3, 1, 1 }, /* established */
    [9]  = { 1,  0, 0, 0, 0, 0, 12, 0,  4, 4, 4 }, /* established */
    [10] = { 1,  0, 0, 0, 0, 12, 0, 0,  5, 2, 2 }, /* established */
    [11] = { 1,  0, 0, 0, 8, 8, 0, 0,  6, 3, 3 }, /* established */
    [12] = { 1,  4, 4, 4, 4, 0, 0, 0,  7, 5, 6 }, /* established */
    [13] = { 1,  5, 5, 5, 1, 0, 0, 0,  8, 5, 6 }, /* established */
    [16] = { 1,  0, 0, 0, 12, 12, 0, 1,  9, 3, 3 }, /* established */
    [17] = { 1,  8, 8, 8, 8, 0, 0, 1, 10, 5, 6 }, /* established */
    [18] = { 1, 10, 10, 10, 2, 0, 0, 1, 11, 5, 6 }, /* established */
    [32] = { 1, 12, 12, 12, 12, 0, 0, 2, 13, 5, 6 }, /* inferred role */
    [33] = { 1, 12, 12, 12, 12, 0, 0, 2, 12, 5, 6 }, /* established */
    [48] = { 1,  8, 8, 8, 0, 0, 0, 0, 14, 5, 5 }, /* established, stored width inferred */
    [49] = { 1,  8, 8, 8, 8, 0, 0, 1, 15, 5, 6 }, /* established, stored width inferred */
};

static const uint8_t tex_pixclass_to_index[TEX_PIXCLASS_COUNT] = {
    0, 2, 4, 8, 9, 10, 11, 12, 13, 16, 17, 18, 33, 32, 48, 49, 4, 10
};

/*
 * Annotations the importer does not read, kept verbatim for a repo plugin that does:
 * CALC: pitch w=4 b=1 => 4
 * CALC: pitch w=514 b=1 => 34
 * CALC: pitch w=17 b=1 => 4
 * CALC: pitch_icc w=64 b=0 => 2
 * CALC: pitch_icc w=17 b=0 => 2
 * CALC: pitch_icc w=512 b=0 => 16
 * CALC: pitch_icc w=1024 b=0 => 32
 * CALC: slice_tiles pitch=4 h=4 b=1 => 12
 * CALC: slice_pow2 tiles=12 => 16
 * CALC: slice_exp tiles=16 => 4
 * CALC: stride c=1 e=4 => 1024
 * CALC: stride c=0 e=4 => 512
 * CALC: stride c=2 e=4 => 2048
 * CALC: slice_tiles pitch=8 h=128 b=0 => 64
 * CALC: stride c=1 e=6 => 4096
 */
