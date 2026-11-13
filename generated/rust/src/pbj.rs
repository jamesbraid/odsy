// generated from devices/pbj/registers.toml by defs-gen - do not edit, change the source
// VPro (Odyssey) PB&J display back end (publish-safe subset)
#![allow(dead_code)]

/// Host-interface control of the display chip. The timing load puts the first clock-select field of the timing load in bits 14:12 and the second in bits  (established)
pub mod hif_ctl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2700;
    pub mod clock_run { // bits 18:18, established
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod clock_sel_b { // bits 17:15, established
        pub const SHIFT: u32 = 15;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod clock_sel_a { // bits 14:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod low_bits { // bits 11:0, unknown
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Identification word. Bits 2:0 are the chip version the board information block reports. Bit 10 is tested at start-up: when it is clear, the driver pro (established)
pub mod id {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2701;
    pub mod no_option { // bits 10:10, inferred
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod version { // bits 2:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// I2C controller control register, option port (first of the port's two registers). The register-read routine reads it, clears bits 12, 8 and 10 of its  (established)
pub mod i2c_opt_ctl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2740;
    pub mod bit12 { // bits 12:12, unknown
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit10 { // bits 10:10, unknown
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit8 { // bits 8:8, unknown
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// I2C controller status/data register, option port. The register-read routine polls it for bit 9, up to 133 times. Bit meanings are unknown. (established)
pub mod i2c_opt_data {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2741;
    pub mod bit9 { // bits 9:9, unknown
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// I2C controller control register, main port (first of the port's two registers). The register-read routine reads it, clears bits 12, 8 and 10 of its sh (established)
pub mod i2c_main_ctl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2780;
    pub mod bit12 { // bits 12:12, unknown
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit10 { // bits 10:10, unknown
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit8 { // bits 8:8, unknown
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// I2C controller status/data register, main port. The register-read routine polls it for bit 9, up to 133 times. Bit meanings are unknown. (established)
pub mod i2c_main_data {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2781;
    pub mod bit9 { // bits 9:9, unknown
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Scanout base of the second buffer region, written by the frame-buffer set-up as a tile count shifted left 9, after rounding the region start up to a m (established)
pub mod fb_base_b {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2800;
}
/// Scanout base of the first buffer region, same encoding as the second. (established)
pub mod fb_base_a {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2801;
}
/// Written 0 by the frame-buffer set-up, 0 or 1280 by start-up, and the timing load's active-width value (1280 in the built-in timings, twice that on one (inferred)
pub mod scan_width {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2802;
}
/// Companion of the width register: 0, 1024 in the full-size form, or the timing load's active-height value. Active height in lines (inferred, same cavea (inferred)
pub mod scan_height {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2803;
}
/// Written from the low two bits of a timing load value by the timing load. Meaning unknown. (established)
pub mod scan_cfg_a {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2804;
}
/// Listed among the addresses the kernel writes; no read of the source of its value was completed. Meaning unknown. (unknown)
pub mod scan_cfg_b {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2805;
}
/// Written from one flag bit of a timing load value by the timing load (the same flag as the colour-map unit configuration). Meaning unknown. (established)
pub mod scan_cfg_c {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2806;
}
/// Scanout pitch: the frame-buffer width in 16-pixel tiles, rounded up to an even count. Reading as pitch is inferred from the arithmetic. (inferred)
pub mod fb_pitch {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2807;
}
/// Scanout pixel size code. The codes the set-up writes are 2 for 8 bits a pixel, 3 for 16 and 4 for 32 (established as values). The field width is not k (inferred)
pub mod fb_depth {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2809;
    pub mod code { // bits 2:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const BPP8: u32 = 2; // established
        pub const BPP16: u32 = 3; // established
        pub const BPP32: u32 = 4; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Bpp8,
            Bpp16,
            Bpp32,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    2 => Self::Bpp8,
                    3 => Self::Bpp16,
                    4 => Self::Bpp32,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Bpp8 => 2,
                    Self::Bpp16 => 3,
                    Self::Bpp32 => 4,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// Back-end interface configuration. The timing load stores a 3-bit timing load value here; its role is unknown (the field name is a placeholder). Start- (inferred)
pub mod dcb_ctl {
    pub const WIDTH: u32 = 32;
    pub const OFFSET: u64 = 0x2b00;
    pub mod dcb_clock { // bits 2:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// A write is a header word followed by COUNT data words that go to consecutive register addresses. The kernel normally sends the header and one data wor (established)
pub mod fifo_hdr {
    pub const WIDTH: u32 = 32;
    pub mod r#type { // bits 31:28, established
        pub const SHIFT: u32 = 28;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NOW: u32 = 3; // inferred
        pub const SYNCED: u32 = 7; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Now,
            Synced,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    3 => Self::Now,
                    7 => Self::Synced,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Now => 3,
                    Self::Synced => 7,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod address { // bits 27:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0x3fff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod count { // bits 13:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3fff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
pub const ADDR_BITS: u32 = 0xe; // established
pub const CLOCK_A_REG_DPA_CONTROL: u32 = 0x5; // established
pub const CLOCK_A_REG_DPA_OFFSET: u32 = 0x4; // established
pub const CLOCK_A_REG_FEEDBACK_DIV0: u32 = 0x2; // established
pub const CLOCK_A_REG_FEEDBACK_DIV1: u32 = 0x3; // established
pub const CLOCK_A_REG_INPUT_CONTROL: u32 = 0x0; // established
pub const CLOCK_A_REG_LOOP_CONTROL: u32 = 0x1; // established
pub const CLOCK_A_REG_OSC_DIV: u32 = 0x7; // established
pub const CLOCK_A_REG_OUTPUT_ENABLE: u32 = 0x6; // established
pub const CLOCK_I2C_ADDR_A: u32 = 0x26; // established
pub const CLOCK_I2C_ADDR_B: u32 = 0x58; // established
pub const CLOCK_WRITE_COUNT: u32 = 0x8; // established
pub const FIFO_DEPTH_DWORDS: u32 = 0x18; // inferred
pub const READ_SLOT_BYTES: u32 = 0x8; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn hif_ctl_6d3e0() {
        assert_eq!(hif_ctl::clock_run::get(0x6d3e0), 1);
        assert_eq!(hif_ctl::clock_sel_b::get(0x6d3e0), 5);
        assert_eq!(hif_ctl::clock_sel_a::get(0x6d3e0), 5);
        assert_eq!(hif_ctl::low_bits::get(0x6d3e0), 992);
    }

    #[test]
    fn fifo_hdr_38000400() {
        assert_eq!(fifo_hdr::count::get(0x38000400), 1024);
        assert_eq!(fifo_hdr::address::get(0x38000400), 8192);
        assert_eq!(fifo_hdr::r#type::get(0x38000400), 3);
    }

    #[test]
    fn fifo_hdr_39000080() {
        assert_eq!(fifo_hdr::count::get(0x39000080), 128);
        assert_eq!(fifo_hdr::address::get(0x39000080), 9216);
        assert_eq!(fifo_hdr::r#type::get(0x39000080), 3);
    }

    #[test]
    fn fifo_hdr_39400080() {
        assert_eq!(fifo_hdr::count::get(0x39400080), 128);
        assert_eq!(fifo_hdr::address::get(0x39400080), 9472);
        assert_eq!(fifo_hdr::r#type::get(0x39400080), 3);
    }

    #[test]
    fn fifo_hdr_39600001() {
        assert_eq!(fifo_hdr::count::get(0x39600001), 1);
        assert_eq!(fifo_hdr::address::get(0x39600001), 9600);
        assert_eq!(fifo_hdr::r#type::get(0x39600001), 3);
    }

    #[test]
    fn fifo_hdr_3964000f() {
        assert_eq!(fifo_hdr::count::get(0x3964000f), 15);
        assert_eq!(fifo_hdr::address::get(0x3964000f), 9616);
        assert_eq!(fifo_hdr::r#type::get(0x3964000f), 3);
    }

    #[test]
    fn fifo_hdr_39700040() {
        assert_eq!(fifo_hdr::count::get(0x39700040), 64);
        assert_eq!(fifo_hdr::address::get(0x39700040), 9664);
        assert_eq!(fifo_hdr::r#type::get(0x39700040), 3);
    }

    #[test]
    fn fifo_hdr_39b00001() {
        assert_eq!(fifo_hdr::count::get(0x39b00001), 1);
        assert_eq!(fifo_hdr::address::get(0x39b00001), 9920);
        assert_eq!(fifo_hdr::r#type::get(0x39b00001), 3);
    }

    #[test]
    fn fifo_hdr_79600001() {
        assert_eq!(fifo_hdr::count::get(0x79600001), 1);
        assert_eq!(fifo_hdr::address::get(0x79600001), 9600);
        assert_eq!(fifo_hdr::r#type::get(0x79600001), 7);
    }

    #[test]
    fn fifo_hdr_79604001() {
        assert_eq!(fifo_hdr::count::get(0x79604001), 1);
        assert_eq!(fifo_hdr::address::get(0x79604001), 9601);
        assert_eq!(fifo_hdr::r#type::get(0x79604001), 7);
    }
}
