// generated from defs/dma.toml by defs-gen - do not edit, change the source
// VPro (Odyssey) "Buzz" graphics ASIC: host DMA engine
#![allow(dead_code)]

/// Header word 7 as the descriptor builder leaves it. The kernel forces the top byte before it builds descriptors: bits 29, 28 and 25 always set, bit 24  (inferred)
pub mod entry_w7 {
    pub const WIDTH: u32 = 32;
    pub mod irq_after { // bits 31:31, inferred
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod differs { // bits 30:30, established
        pub const SHIFT: u32 = 30;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod fixed29 { // bits 29:29, established
        pub const SHIFT: u32 = 29;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod fixed28 { // bits 28:28, established
        pub const SHIFT: u32 = 28;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod transform { // bits 27:27, established
        pub const SHIFT: u32 = 27;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const PLAIN: u32 = 0; // established
        pub const TRANSFORM: u32 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Plain,
            Transform,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Plain,
                    1 => Self::Transform,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Plain => 0,
                    Self::Transform => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod fixed25 { // bits 25:25, established
        pub const SHIFT: u32 = 25;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod read_dir { // bits 24:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const WRITE: u32 = 0; // established
        pub const READ: u32 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Write,
            Read,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Write,
                    1 => Self::Read,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Write => 0,
                    Self::Read => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// (established)
pub mod kick_a_hi {
    pub const WIDTH: u32 = 32;
    pub mod id { // bits 11:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const PLAIN: u32 = 3585; // established
        pub const VARIANT: u32 = 3587; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Plain,
            Variant,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    3585 => Self::Plain,
                    3587 => Self::Variant,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Plain => 3585,
                    Self::Variant => 3587,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// (established)
pub mod kick_a_lo {
    pub const WIDTH: u32 = 32;
    pub mod addr_hi { // bits 29:23, established
        pub const SHIFT: u32 = 23;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod addr_lo { // bits 16:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1ffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod kick_b_hi {
    pub const WIDTH: u32 = 32;
    pub mod addr_hi { // bits 29:23, established
        pub const SHIFT: u32 = 23;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod addr_lo { // bits 16:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1ffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod kick_b_lo {
    pub const WIDTH: u32 = 32;
    pub mod zero { // bits 31:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xffffffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Page entry: 8 bytes, two words, one per run of host memory in order. established as the arithmetic the page-list builder performs; the unit of the cou (established)
pub mod page_w0 {
    pub const WIDTH: u32 = 32;
    pub mod addr { // bits 31:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xffffffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (inferred)
pub mod page_w1 {
    pub const WIDTH: u32 = 32;
    pub mod addr_lo { // bits 31:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod count { // bits 15:0, inferred
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
/// (inferred)
pub mod tag_w0 {
    pub const WIDTH: u32 = 32;
    pub mod flag { // bits 15:15, established
        pub const SHIFT: u32 = 15;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const SET: u32 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Set,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    1 => Self::Set,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Set => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod slot { // bits 14:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7fff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod tag_w1 {
    pub const WIDTH: u32 = 32;
    pub mod marker { // bits 15:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const TAG: u32 = 90; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Tag,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    90 => Self::Tag,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Tag => 90,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod tag { // bits 7:0, established
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
pub const DONE_FLAG_BIT: u32 = 0xb; // established
pub const ENTRY_BYTES: u32 = 0x80; // established
pub const ENTRY_HDR_BYTES: u32 = 0x20; // established
pub const ENTRY_MAX_BYTES: u32 = 0x24000; // established
pub const ENTRY_PAGES_MAX: u32 = 0xc; // established
pub const KICK_ADDR_BITS: u32 = 0x30; // established
pub const PAGE_CHUNK_BYTES: u32 = 0x4000; // established
pub const PAGE_ENTRY_BYTES: u32 = 0x8; // established
pub const TAG_CMD_COUNT: u32 = 0x2; // established
pub const TAG_CMD_ID: u32 = 0x25a; // established
pub const TAG_CMD_LOW16: u32 = 0xa5a; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn kick_a_hi_e01() {
        assert_eq!(kick_a_hi::id::get(0xe01), 3585);
    }

    #[test]
    fn kick_a_hi_e03() {
        assert_eq!(kick_a_hi::id::get(0xe03), 3587);
    }

    #[test]
    fn tag_w1_5a00() {
        assert_eq!(tag_w1::marker::get(0x5a00), 90);
        assert_eq!(tag_w1::tag::get(0x5a00), 0);
    }
}
