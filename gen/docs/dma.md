# VPro (Odyssey) "Buzz" graphics ASIC: host DMA engine

<!-- generated from defs/dma.toml by defs-gen - do not edit, change the source -->

DMA-engine descriptor words of the Odyssey board: the kick words, the transfer entry and its tag.

Unit `dma`, macro prefix `DMA`.
Default source: odsy binary analysis of the shipped kernel DMA routines.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `ENTRY_W7` | 32 | inferred | odsy binary analysis of the shipped kernel DMA routines |
| `KICK_A_HI` | 32 | established | odsy binary analysis of the shipped kernel DMA routines |
| `KICK_A_LO` | 32 | established | odsy binary analysis of the shipped kernel DMA routines |
| `KICK_B_HI` | 32 | established | odsy binary analysis of the shipped kernel DMA routines |
| `KICK_B_LO` | 32 | established | odsy binary analysis of the shipped kernel DMA routines |
| `PAGE_W0` | 32 | established | odsy binary analysis of the shipped kernel DMA routines |
| `PAGE_W1` | 32 | inferred | odsy binary analysis of the shipped kernel DMA routines |
| `TAG_W0` | 32 | inferred | odsy binary analysis of the shipped kernel DMA routines |
| `TAG_W1` | 32 | established | odsy binary analysis of the shipped kernel DMA routines |

### Word `ENTRY_W7`

Header word 7 as the descriptor builder leaves it. The kernel forces the
top byte before it builds descriptors: bits 29, 28 and 25 always set,
bit 24 set for a board-to-host transfer, bits 27 and 30 kept from the
caller. Bits 24, 27 and 30 are the same bits as HDR_W7.read_dir,
HDR_W7.transform and HDR_W7.differs in BUZZ_DECODE.h. Bit 31 is added
by the builder to the last descriptor of a board-to-host request.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `irq_after` | inferred |  | odsy binary analysis of the shipped kernel DMA routines |  |
| 30 | `differs` | established |  | odsy binary analysis of the shipped kernel DMA routines |  |
| 29 | `fixed29` | established |  | odsy binary analysis of the shipped kernel DMA routines |  |
| 28 | `fixed28` | established |  | odsy binary analysis of the shipped kernel DMA routines |  |
| 27 | `transform` | established | plain=0, transform=1 | odsy binary analysis of the shipped kernel DMA routines |  |
| 25 | `fixed25` | established |  | odsy binary analysis of the shipped kernel DMA routines |  |
| 24 | `read_dir` | established | write=0, read=1 | odsy binary analysis of the shipped kernel DMA routines |  |

### Word `KICK_A_HI`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:0 | `id` | established | plain=3585, variant=3587 | odsy binary analysis of the shipped kernel DMA routines |  |

### Word `KICK_A_LO`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 29:23 | `addr_hi` | established |  | odsy binary analysis of the shipped kernel DMA routines |  |
| 16:0 | `addr_lo` | established |  | odsy binary analysis of the shipped kernel DMA routines |  |

### Word `KICK_B_HI`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 29:23 | `addr_hi` | established |  | odsy binary analysis of the shipped kernel DMA routines |  |
| 16:0 | `addr_lo` | established |  | odsy binary analysis of the shipped kernel DMA routines |  |

### Word `KICK_B_LO`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `zero` | established |  | odsy binary analysis of the shipped kernel DMA routines |  |

### Word `PAGE_W0`

Page entry: 8 bytes, two words, one per run of host memory in order.
established as the arithmetic the page-list builder performs; the unit
of the count is inferred from the loop that fills it (bytes). The
address fields hold the run's host physical address; values omitted.
  word 0  the physical address shifted right by 16 (bits 47:16)
  word 1  the physical address bits 15:0 in 31:16, the count in 15:0

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:0 | `addr` | established |  | odsy binary analysis of the shipped kernel DMA routines |  |

### Word `PAGE_W1`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `addr_lo` | established |  | odsy binary analysis of the shipped kernel DMA routines |  |
| 15:0 | `count` | inferred |  | odsy binary analysis of the shipped kernel DMA routines |  |

### Word `TAG_W0`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `flag` | established | set=1 | odsy binary analysis of the shipped kernel DMA routines |  |
| 14:0 | `slot` | inferred |  | odsy binary analysis of the shipped kernel DMA routines |  |

### Word `TAG_W1`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:8 | `marker` | established | tag=90 | odsy binary analysis of the shipped kernel DMA routines |  |
| 7:0 | `tag` | established |  | odsy binary analysis of the shipped kernel DMA routines |  |

## Constants

| Constant | Value | Grade | Source | Description |
|---|---|---|---|---|
| `DONE_FLAG_BIT` | 0xb | established | odsy binary analysis of the shipped kernel DMA routines |  |
| `ENTRY_BYTES` | 0x80 | established | odsy binary analysis of the shipped kernel DMA routines |  |
| `ENTRY_HDR_BYTES` | 0x20 | established | odsy binary analysis of the shipped kernel DMA routines |  |
| `ENTRY_MAX_BYTES` | 0x24000 | established | odsy binary analysis of the shipped kernel DMA routines | 147456;as the split rule |
| `ENTRY_PAGES_MAX` | 0xc | established | odsy binary analysis of the shipped kernel DMA routines |  |
| `KICK_ADDR_BITS` | 0x30 | established | odsy binary analysis of the shipped kernel DMA routines |  |
| `PAGE_CHUNK_BYTES` | 0x4000 | established | odsy binary analysis of the shipped kernel DMA routines | the largest chunk a page entry is built from; whether it is a page size or only a software chunk size: inferred |
| `PAGE_ENTRY_BYTES` | 0x8 | established | odsy binary analysis of the shipped kernel DMA routines |  |
| `TAG_CMD_COUNT` | 0x2 | established | odsy binary analysis of the shipped kernel DMA routines |  |
| `TAG_CMD_ID` | 0x25a | established | odsy binary analysis of the shipped kernel DMA routines | the tag command word with bit 15 cleared; the meaning of bit 15 is unknown |
| `TAG_CMD_LOW16` | 0xa5a | established | odsy binary analysis of the shipped kernel DMA routines |  |

## Test vectors

A vector is a value recorded from a source. An example only shows the layout.

| Target | Value | Kind | Decoded |
|---|---|---|---|
| `ENTRY_W7` | 0x32000000 | example | read_dir=0, fixed25=1, transform=0, fixed28=1, fixed29=1, differs=0, irq_after=0 |
| `ENTRY_W7` | 0x33000000 | example | read_dir=1, fixed25=1, transform=0, fixed28=1, fixed29=1, differs=0, irq_after=0 |
| `ENTRY_W7` | 0xb3000000 | example | read_dir=1, fixed25=1, transform=0, fixed28=1, fixed29=1, differs=0, irq_after=1 |
| `KICK_A_HI` | 0xe01 | vector | id=3585 |
| `KICK_A_HI` | 0xe03 | vector | id=3587 |
| `PAGE_W1` | 0x200 | example | count=512 |
| `TAG_W0` | 0x8000 | example | slot=0, flag=1 |
| `TAG_W1` | 0x5a00 | vector | marker=90, tag=0 |
