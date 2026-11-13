/* generated from devices/dma/registers.toml by defs-gen - do not edit, change the source */
/* VPro (Odyssey) "Buzz" graphics ASIC: host DMA engine */
#ifndef DMA_GEN_H
#define DMA_GEN_H

#include <stdint.h>


/*
 * Header word 7 as the descriptor builder leaves it. The kernel forces the
 * top byte before it builds descriptors: bits 29, 28 and 25 always set,
 * bit 24 set for a board-to-host transfer, bits 27 and 30 kept from the
 * caller. Bits 24, 27 and 30 are the same bits as HDR_W7.read_dir,
 * HDR_W7.transform and HDR_W7.differs in generated/c/buzz.h. Bit 31 is added
 * by the builder to the last descriptor of a board-to-host request.
 */
/* word ENTRY_W7: 32 bits; odsy binary analysis of the shipped kernel DMA routines */
#define DMA_ENTRY_W7_WIDTH                           32 /* inferred */
#define DMA_ENTRY_W7_IRQ_AFTER_SHIFT                 31 /* inferred */
#define DMA_ENTRY_W7_IRQ_AFTER_MASK                  0x1u
#define DMA_ENTRY_W7_IRQ_AFTER_INPLACE               (DMA_ENTRY_W7_IRQ_AFTER_MASK << DMA_ENTRY_W7_IRQ_AFTER_SHIFT)
#define DMA_ENTRY_W7_DIFFERS_SHIFT                   30 /* established */
#define DMA_ENTRY_W7_DIFFERS_MASK                    0x1u
#define DMA_ENTRY_W7_DIFFERS_INPLACE                 (DMA_ENTRY_W7_DIFFERS_MASK << DMA_ENTRY_W7_DIFFERS_SHIFT)
#define DMA_ENTRY_W7_FIXED29_SHIFT                   29 /* established */
#define DMA_ENTRY_W7_FIXED29_MASK                    0x1u
#define DMA_ENTRY_W7_FIXED29_INPLACE                 (DMA_ENTRY_W7_FIXED29_MASK << DMA_ENTRY_W7_FIXED29_SHIFT)
#define DMA_ENTRY_W7_FIXED28_SHIFT                   28 /* established */
#define DMA_ENTRY_W7_FIXED28_MASK                    0x1u
#define DMA_ENTRY_W7_FIXED28_INPLACE                 (DMA_ENTRY_W7_FIXED28_MASK << DMA_ENTRY_W7_FIXED28_SHIFT)
#define DMA_ENTRY_W7_TRANSFORM_SHIFT                 27 /* established */
#define DMA_ENTRY_W7_TRANSFORM_MASK                  0x1u
#define DMA_ENTRY_W7_TRANSFORM_INPLACE               (DMA_ENTRY_W7_TRANSFORM_MASK << DMA_ENTRY_W7_TRANSFORM_SHIFT)
#define DMA_ENTRY_W7_TRANSFORM_PLAIN                 0 /* established */
#define DMA_ENTRY_W7_TRANSFORM_TRANSFORM             1 /* established */
#define DMA_ENTRY_W7_FIXED25_SHIFT                   25 /* established */
#define DMA_ENTRY_W7_FIXED25_MASK                    0x1u
#define DMA_ENTRY_W7_FIXED25_INPLACE                 (DMA_ENTRY_W7_FIXED25_MASK << DMA_ENTRY_W7_FIXED25_SHIFT)
#define DMA_ENTRY_W7_READ_DIR_SHIFT                  24 /* established */
#define DMA_ENTRY_W7_READ_DIR_MASK                   0x1u
#define DMA_ENTRY_W7_READ_DIR_INPLACE                (DMA_ENTRY_W7_READ_DIR_MASK << DMA_ENTRY_W7_READ_DIR_SHIFT)
#define DMA_ENTRY_W7_READ_DIR_WRITE                  0 /* established */
#define DMA_ENTRY_W7_READ_DIR_READ                   1 /* established */

/* word KICK_A_HI: 32 bits; odsy binary analysis of the shipped kernel DMA routines */
#define DMA_KICK_A_HI_WIDTH                          32 /* established */
#define DMA_KICK_A_HI_ID_SHIFT                       0 /* established */
#define DMA_KICK_A_HI_ID_MASK                        0xfffu
#define DMA_KICK_A_HI_ID_INPLACE                     (DMA_KICK_A_HI_ID_MASK << DMA_KICK_A_HI_ID_SHIFT)
#define DMA_KICK_A_HI_ID_PLAIN                       3585 /* established */
#define DMA_KICK_A_HI_ID_VARIANT                     3587 /* established */

/* word KICK_A_LO: 32 bits; odsy binary analysis of the shipped kernel DMA routines */
#define DMA_KICK_A_LO_WIDTH                          32 /* established */
#define DMA_KICK_A_LO_ADDR_HI_SHIFT                  23 /* established */
#define DMA_KICK_A_LO_ADDR_HI_MASK                   0x7fu
#define DMA_KICK_A_LO_ADDR_HI_INPLACE                (DMA_KICK_A_LO_ADDR_HI_MASK << DMA_KICK_A_LO_ADDR_HI_SHIFT)
#define DMA_KICK_A_LO_ADDR_LO_SHIFT                  0 /* established */
#define DMA_KICK_A_LO_ADDR_LO_MASK                   0x1ffffu
#define DMA_KICK_A_LO_ADDR_LO_INPLACE                (DMA_KICK_A_LO_ADDR_LO_MASK << DMA_KICK_A_LO_ADDR_LO_SHIFT)

/* word KICK_B_HI: 32 bits; odsy binary analysis of the shipped kernel DMA routines */
#define DMA_KICK_B_HI_WIDTH                          32 /* established */
#define DMA_KICK_B_HI_ADDR_HI_SHIFT                  23 /* established */
#define DMA_KICK_B_HI_ADDR_HI_MASK                   0x7fu
#define DMA_KICK_B_HI_ADDR_HI_INPLACE                (DMA_KICK_B_HI_ADDR_HI_MASK << DMA_KICK_B_HI_ADDR_HI_SHIFT)
#define DMA_KICK_B_HI_ADDR_LO_SHIFT                  0 /* established */
#define DMA_KICK_B_HI_ADDR_LO_MASK                   0x1ffffu
#define DMA_KICK_B_HI_ADDR_LO_INPLACE                (DMA_KICK_B_HI_ADDR_LO_MASK << DMA_KICK_B_HI_ADDR_LO_SHIFT)

/* word KICK_B_LO: 32 bits; odsy binary analysis of the shipped kernel DMA routines */
#define DMA_KICK_B_LO_WIDTH                          32 /* established */
#define DMA_KICK_B_LO_ZERO_SHIFT                     0 /* established */
#define DMA_KICK_B_LO_ZERO_MASK                      0xffffffffu
#define DMA_KICK_B_LO_ZERO_INPLACE                   (DMA_KICK_B_LO_ZERO_MASK << DMA_KICK_B_LO_ZERO_SHIFT)

/*
 * Page entry: 8 bytes, two words, one per run of host memory in order.
 * established as the arithmetic the page-list builder performs; the unit
 * of the count is inferred from the loop that fills it (bytes). The
 * address fields hold the run's host physical address; values omitted.
 *   word 0  the physical address shifted right by 16 (bits 47:16)
 *   word 1  the physical address bits 15:0 in 31:16, the count in 15:0
 */
/* word PAGE_W0: 32 bits; odsy binary analysis of the shipped kernel DMA routines */
#define DMA_PAGE_W0_WIDTH                            32 /* established */
#define DMA_PAGE_W0_ADDR_SHIFT                       0 /* established */
#define DMA_PAGE_W0_ADDR_MASK                        0xffffffffu
#define DMA_PAGE_W0_ADDR_INPLACE                     (DMA_PAGE_W0_ADDR_MASK << DMA_PAGE_W0_ADDR_SHIFT)

/* word PAGE_W1: 32 bits; odsy binary analysis of the shipped kernel DMA routines */
#define DMA_PAGE_W1_WIDTH                            32 /* inferred */
#define DMA_PAGE_W1_ADDR_LO_SHIFT                    16 /* established */
#define DMA_PAGE_W1_ADDR_LO_MASK                     0xffffu
#define DMA_PAGE_W1_ADDR_LO_INPLACE                  (DMA_PAGE_W1_ADDR_LO_MASK << DMA_PAGE_W1_ADDR_LO_SHIFT)
#define DMA_PAGE_W1_COUNT_SHIFT                      0 /* inferred */
#define DMA_PAGE_W1_COUNT_MASK                       0xffffu
#define DMA_PAGE_W1_COUNT_INPLACE                    (DMA_PAGE_W1_COUNT_MASK << DMA_PAGE_W1_COUNT_SHIFT)

/* word TAG_W0: 32 bits; odsy binary analysis of the shipped kernel DMA routines */
#define DMA_TAG_W0_WIDTH                             32 /* inferred */
#define DMA_TAG_W0_FLAG_SHIFT                        15 /* established */
#define DMA_TAG_W0_FLAG_MASK                         0x1u
#define DMA_TAG_W0_FLAG_INPLACE                      (DMA_TAG_W0_FLAG_MASK << DMA_TAG_W0_FLAG_SHIFT)
#define DMA_TAG_W0_FLAG_SET                          1 /* established */
#define DMA_TAG_W0_SLOT_SHIFT                        0 /* inferred */
#define DMA_TAG_W0_SLOT_MASK                         0x7fffu
#define DMA_TAG_W0_SLOT_INPLACE                      (DMA_TAG_W0_SLOT_MASK << DMA_TAG_W0_SLOT_SHIFT)

/* word TAG_W1: 32 bits; odsy binary analysis of the shipped kernel DMA routines */
#define DMA_TAG_W1_WIDTH                             32 /* established */
#define DMA_TAG_W1_MARKER_SHIFT                      8 /* established */
#define DMA_TAG_W1_MARKER_MASK                       0xffu
#define DMA_TAG_W1_MARKER_INPLACE                    (DMA_TAG_W1_MARKER_MASK << DMA_TAG_W1_MARKER_SHIFT)
#define DMA_TAG_W1_MARKER_TAG                        90 /* established */
#define DMA_TAG_W1_TAG_SHIFT                         0 /* established */
#define DMA_TAG_W1_TAG_MASK                          0xffu
#define DMA_TAG_W1_TAG_INPLACE                       (DMA_TAG_W1_TAG_MASK << DMA_TAG_W1_TAG_SHIFT)

#define DMA_DONE_FLAG_BIT                            0xbu /* established */
#define DMA_ENTRY_BYTES                              0x80u /* established */
#define DMA_ENTRY_HDR_BYTES                          0x20u /* established */
#define DMA_ENTRY_MAX_BYTES                          0x24000u /* established */
#define DMA_ENTRY_PAGES_MAX                          0xcu /* established */
#define DMA_KICK_ADDR_BITS                           0x30u /* established */
#define DMA_PAGE_CHUNK_BYTES                         0x4000u /* established */
#define DMA_PAGE_ENTRY_BYTES                         0x8u /* established */
#define DMA_TAG_CMD_COUNT                            0x2u /* established */
#define DMA_TAG_CMD_ID                               0x25au /* established */
#define DMA_TAG_CMD_LOW16                            0xa5au /* established */

#endif /* DMA_GEN_H */
