/* Hand-written helpers for display, carried over from the old header. Included by the generated header; this is code, not data. */

#define DISPLAY_CMAP_WIDEN8(c) \
    (((((uint32_t)(c)) & 0xffu) << 2) | ((((uint32_t)(c)) & 0xffu) >> 6)) /* established */
