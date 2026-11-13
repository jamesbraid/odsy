/* Hand-written helpers for pbj, carried over from the old header. Included by the generated header; this is code, not data. */

#define PBJ_FIFO_HDR(type, addr, count) \
    ((((uint32_t)(type) & PBJ_FIFO_HDR_TYPE_MASK) << PBJ_FIFO_HDR_TYPE_SHIFT) | \
     (((uint32_t)(addr) & PBJ_FIFO_HDR_ADDRESS_MASK) << PBJ_FIFO_HDR_ADDRESS_SHIFT) | \
     ((uint32_t)(count) & PBJ_FIFO_HDR_COUNT_MASK))
