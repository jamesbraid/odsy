// generated from defs/display.toml by defs-gen - do not edit, change the source
// VPro (Odyssey) display registers (publish-safe subset)
#![allow(dead_code)]

/// Colour map. One entry per register, indexed by the entry number in the display FIFO header address. Each entry packs three 10-bit channels. The softwa (established)
pub mod cmap {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x0;
    pub const COUNT: u32 = 8192;
    pub const STRIDE: u64 = 1;
    pub mod top { // bits 31:30, unknown
        pub const SHIFT: u32 = 30;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod r { // bits 29:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod g { // bits 19:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod b { // bits 9:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Video timing line table, up to 2048 16-bit entries, two per word with the even entry in the low half. A line type is a run of entries ending at the fi (established)
pub mod line_table {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2000;
    pub const COUNT: u32 = 1024;
    pub const STRIDE: u64 = 1;
    pub mod e1_end { // bits 31:31, established
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod e1_duration { // bits 30:24, inferred
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod e1_levels { // bits 23:16, unknown
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod e0_end { // bits 15:15, established
        pub const SHIFT: u32 = 15;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod e0_duration { // bits 14:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod e0_levels { // bits 7:0, unknown
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Video timing frame table, up to 256 16-bit entries, two per word like the line table. Entries come in pairs: the position of a line type in the line t (established)
pub mod frame_table {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2400;
    pub const COUNT: u32 = 128;
    pub const STRIDE: u64 = 1;
    pub mod repeat { // bits 31:16, inferred
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod position { // bits 15:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Video timing generator control word. The loader writes the timing structure's control word with 0x42 ORed in, then writes 1 after the clock is program (established)
pub mod vtg_ctl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2481;
    pub mod locked { // bits 1:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Timing generator initial-state word. The driver reads it back once at start-up as its shadow and clears bit 5 of the shadow to blank the screen. The l (established)
pub mod vtg_init_state {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2482;
    pub mod blank_gate { // bits 5:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Timing generator channel-enable word. Blanking clears the three bits of mask 0x23 (bits 5, 1 and 0) in the driver's shadow of it and unblanking sets t (established)
pub mod vtg_chan_en {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2483;
    pub mod blank_gate_5 { // bits 5:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blank_gate_1 { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blank_gate_0 { // bits 0:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Cursor image block A, 128 words. A 32 by 32 cursor at 4 bits a pixel is 512 bytes, which is this block. Each pixel indexes the cursor colour table; in (established)
pub mod cursor_image_a {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2500;
    pub const COUNT: u32 = 128;
    pub const STRIDE: u64 = 1;
}
/// Cursor position word: the cursor x minus the hotspot x in the high half and y minus the hotspot y in the low half. The write goes out as an immediate  (established)
pub mod cursor_pos {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2580;
    pub mod x { // bits 31:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod y { // bits 15:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Cursor control word. Five named fields live in bits 4:0: the firmware textport clears 4:2 and sets 1:0, so enable and delay enable are in 1:0 and the  (established)
pub mod cursor_ctl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2581;
    pub mod toggle { // bits 5:5, unknown
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dual_head { // bits 4:4, unknown
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod field_seq { // bits 3:3, unknown
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod crosshair { // bits 2:2, unknown
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod enable { // bits 1:1, unknown
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod delay_enable { // bits 0:0, unknown
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Cursor colour table, 15 words for pixel values 0 to 14, in the colour- map entry format. Software shifts an 8-bit value into the top eight bits of eac (established)
pub mod cursor_colors {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2590;
    pub const COUNT: u32 = 15;
    pub const STRIDE: u64 = 1;
    pub mod top { // bits 31:30, unknown
        pub const SHIFT: u32 = 30;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod r { // bits 29:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod g { // bits 19:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod b { // bits 9:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Cursor image block B, 64 words: 2 bits a pixel, the alpha plane that decides where the cursor shows. Alpha 3 is an opaque cursor pixel and 0 transpare (established)
pub mod cursor_image_b {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x25c0;
    pub const COUNT: u32 = 64;
    pub const STRIDE: u64 = 1;
}
/// Data-path control of the display chip. The timing load writes the structure's word here and sets bit 7 when bit 6 of that word is set. The blanking ro (inferred)
pub mod datapath_ctl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2600;
    pub mod bit7 { // bits 7:7, unknown
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit6 { // bits 6:6, unknown
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Written once per timing load from a word of the timing structure that sits next to the DAC and data-path words. What it controls is unknown. (established)
pub mod aux_ctl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2680;
}
/// DAC control. Blanking sets bit 0; the DAC-gain routine sets or clears bit 1 with a read-modify-write; the timing load writes the structure's DAC word. (established)
pub mod dac_ctl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x26c0;
    pub mod gain { // bits 1:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blank { // bits 0:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Twelve consecutive timing generator words, written in order from twelve consecutive words of the timing structure. Bit meanings are unknown. (established)
pub mod vtg_misc {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x27c0;
    pub const COUNT: u32 = 12;
    pub const STRIDE: u64 = 1;
}
/// Genlock control. The timing load writes the structure's word here after enabling the genlock interrupt source, and the genlock handler continues only  (established)
pub mod genlock_ctl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x27cc;
    pub mod enabled { // bits 6:6, inferred
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Genlock status, read only. The handler returns if bit 0 is clear. Bit 1 selects the branch that reprograms the clock part: set takes the "lost" branch (inferred)
pub mod genlock_status {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x27cd;
    pub mod lost { // bits 1:1, inferred
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod valid { // bits 0:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Display-mode table: one mode word per display id, ids 0 to 36 seen in the shipped tables (the upper bound is unknown). Type-7 (retrace- synchronised)  (established)
pub mod mode_table {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2900;
    pub const COUNT: u32 = 37;
    pub const STRIDE: u64 = 1;
    pub mod top { // bits 31:25, unknown
        pub const SHIFT: u32 = 25;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit24 { // bits 24:24, unknown
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod layout { // bits 23:12, unknown
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod pixel_format { // bits 11:9, inferred
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const RGB10: u32 = 1; // inferred
        pub const RGB8: u32 = 2; // inferred
        pub const RGB5: u32 = 3; // inferred
        pub const RGB4: u32 = 4; // inferred
        pub const RGB10_ALT: u32 = 6; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Rgb10,
            Rgb8,
            Rgb5,
            Rgb4,
            Rgb10Alt,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    1 => Self::Rgb10,
                    2 => Self::Rgb8,
                    3 => Self::Rgb5,
                    4 => Self::Rgb4,
                    6 => Self::Rgb10Alt,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Rgb10 => 1,
                    Self::Rgb8 => 2,
                    Self::Rgb5 => 3,
                    Self::Rgb4 => 4,
                    Self::Rgb10Alt => 6,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod cmap_group { // bits 8:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const GAMMA: u32 = 26; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Gamma,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    26 => Self::Gamma,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Gamma => 26,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod low_code { // bits 3:0, unknown
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Colour-map unit configuration. Start-up writes 0; the timing load stores a flag bit of the timing load, the same flag it stores to the second scan con (inferred)
pub mod cmap_unit_ctl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2929;
}
/// Red, green and blue overrides of the colour-map unit, in that order. Start-up writes 0 to each. (inferred)
pub mod cmap_override {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x292a;
    pub const COUNT: u32 = 3;
    pub const STRIDE: u64 = 1;
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn mode_table_4b59a6() {
        assert_eq!(mode_table::low_code::get(0x4b59a6), 6);
        assert_eq!(mode_table::cmap_group::get(0x4b59a6), 26);
        assert_eq!(mode_table::pixel_format::get(0x4b59a6), 4);
        assert_eq!(mode_table::layout::get(0x4b59a6), 1205);
    }

    #[test]
    fn mode_table_4b5f00() {
        assert_eq!(mode_table::low_code::get(0x4b5f00), 0);
        assert_eq!(mode_table::cmap_group::get(0x4b5f00), 16);
        assert_eq!(mode_table::pixel_format::get(0x4b5f00), 7);
        assert_eq!(mode_table::layout::get(0x4b5f00), 1205);
    }

    #[test]
    fn mode_table_5213a6() {
        assert_eq!(mode_table::low_code::get(0x5213a6), 6);
        assert_eq!(mode_table::cmap_group::get(0x5213a6), 26);
        assert_eq!(mode_table::pixel_format::get(0x5213a6), 1);
        assert_eq!(mode_table::layout::get(0x5213a6), 1313);
    }

    #[test]
    fn mode_table_521590() {
        assert_eq!(mode_table::low_code::get(0x521590), 0);
        assert_eq!(mode_table::cmap_group::get(0x521590), 25);
        assert_eq!(mode_table::pixel_format::get(0x521590), 2);
        assert_eq!(mode_table::layout::get(0x521590), 1313);
    }

    #[test]
    fn mode_table_600da6() {
        assert_eq!(mode_table::low_code::get(0x600da6), 6);
        assert_eq!(mode_table::cmap_group::get(0x600da6), 26);
        assert_eq!(mode_table::pixel_format::get(0x600da6), 6);
        assert_eq!(mode_table::layout::get(0x600da6), 1536);
    }

    #[test]
    fn mode_table_9659a7() {
        assert_eq!(mode_table::low_code::get(0x9659a7), 7);
        assert_eq!(mode_table::cmap_group::get(0x9659a7), 26);
        assert_eq!(mode_table::pixel_format::get(0x9659a7), 4);
        assert_eq!(mode_table::layout::get(0x9659a7), 2405);
    }
}
