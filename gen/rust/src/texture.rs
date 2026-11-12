// generated from defs/texture.toml by defs-gen - do not edit, change the source
// VPro (Odyssey) "Buzz" texture state: environment,
#![allow(dead_code)]

/// Texture class (the "class" columns above): the component set the environment sees, a 3-bit value stored in the sampler word bits 25:23 (BUZZ_DECODE.h  (established)
pub mod class {
    pub const WIDTH: u32 = 32;
    pub mod value { // bits 2:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NONE: u32 = 0; // established
        pub const ALPHA: u32 = 1; // inferred
        pub const LUMINANCE: u32 = 2; // inferred
        pub const LUMINANCE_ALPHA: u32 = 3; // inferred
        pub const INTENSITY: u32 = 4; // inferred
        pub const RGB: u32 = 5; // inferred
        pub const RGBA: u32 = 6; // inferred
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            None,
            Alpha,
            Luminance,
            LuminanceAlpha,
            Intensity,
            Rgb,
            Rgba,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::None,
                    1 => Self::Alpha,
                    2 => Self::Luminance,
                    3 => Self::LuminanceAlpha,
                    4 => Self::Intensity,
                    5 => Self::Rgb,
                    6 => Self::Rgba,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::None => 0,
                    Self::Alpha => 1,
                    Self::Luminance => 2,
                    Self::LuminanceAlpha => 3,
                    Self::Intensity => 4,
                    Self::Rgb => 5,
                    Self::Rgba => 6,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// (established)
pub mod coltab_a {
    pub const WIDTH: u32 = 32;
    pub mod kept { // bits 31:24, unknown
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod red { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod green { // bits 11:0, established
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
/// (established)
pub mod coltab_b {
    pub const WIDTH: u32 = 32;
    pub mod kept { // bits 31:24, unknown
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blue { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod alpha { // bits 11:0, established
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
/// (established)
pub mod env_w0 {
    pub const WIDTH: u32 = 32;
    pub mod unwritten { // bits 31:3, unknown
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1fffffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod mode { // bits 2:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const REPLACE: u32 = 1; // established
        pub const MODULATE: u32 = 2; // established
        pub const DECAL: u32 = 3; // established
        pub const BLEND: u32 = 4; // established
        pub const ADD: u32 = 5; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Replace,
            Modulate,
            Decal,
            Blend,
            Add,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    1 => Self::Replace,
                    2 => Self::Modulate,
                    3 => Self::Decal,
                    4 => Self::Blend,
                    5 => Self::Add,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Replace => 1,
                    Self::Modulate => 2,
                    Self::Decal => 3,
                    Self::Blend => 4,
                    Self::Add => 5,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// Values 0, 6 and 7 are never sent. GL_PHASE_SGIX is not an environment mode: it is a filter, and sets bit 17 of the sampler word (BUZZ_DECODE.h). Words (inferred)
pub mod env_w1 {
    pub const WIDTH: u32 = 32;
    pub mod top { // bits 31:24, unknown
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod red { // bits 23:12, inferred
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod green { // bits 11:0, inferred
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
/// (inferred)
pub mod env_w2 {
    pub const WIDTH: u32 = 32;
    pub mod top { // bits 31:24, unknown
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blue { // bits 23:12, inferred
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod alpha { // bits 11:0, inferred
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
/// Words 3 and 4 are always zero for OpenGL texturing: the initialiser stores zero in both and no texture setter writes either. established as what is se (unknown)
pub mod env_w3 {
    pub const WIDTH: u32 = 32;
    pub mod bits { // bits 31:0, unknown
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
/// (unknown)
pub mod env_w4 {
    pub const WIDTH: u32 = 32;
    pub mod bits { // bits 31:0, unknown
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
/// The write coverage of the level descriptor words (the bits the library writes in word 1 are the format index 25:20, size code 31:30, pitch 11:0 and, f (established)
pub mod firstlevel {
    pub const WIDTH: u32 = 32;
    pub mod unwritten { // bits 31:6, unknown
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x3ffffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod index { // bits 5:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod fmt {
    pub const WIDTH: u32 = 32;
    pub mod index { // bits 5:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const A8: u32 = 0; // established
        pub const A8_ALT: u32 = 1; // established
        pub const I8: u32 = 2; // established
        pub const I8_ALT: u32 = 3; // established
        pub const L8: u32 = 4; // established
        pub const L8_ALT: u32 = 5; // established
        pub const R3G3B2: u32 = 6; // established
        pub const R3G3B2_ALT: u32 = 7; // established
        pub const A12: u32 = 8; // established
        pub const I12: u32 = 9; // established
        pub const L12: u32 = 10; // established
        pub const L8A8: u32 = 11; // established
        pub const RGBA4: u32 = 12; // established
        pub const RGB5A1: u32 = 13; // established
        pub const L12A12: u32 = 16; // established
        pub const RGBA8: u32 = 17; // established
        pub const RGB10A2: u32 = 18; // established
        pub const RGBA12_MOVE: u32 = 32; // inferred
        pub const RGBA12: u32 = 33; // established
        pub const ICC_RGB: u32 = 48; // established
        pub const ICC_RGBA: u32 = 49; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            A8,
            A8Alt,
            I8,
            I8Alt,
            L8,
            L8Alt,
            R3g3b2,
            R3g3b2Alt,
            A12,
            I12,
            L12,
            L8a8,
            Rgba4,
            Rgb5a1,
            L12a12,
            Rgba8,
            Rgb10a2,
            Rgba12Move,
            Rgba12,
            IccRgb,
            IccRgba,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::A8,
                    1 => Self::A8Alt,
                    2 => Self::I8,
                    3 => Self::I8Alt,
                    4 => Self::L8,
                    5 => Self::L8Alt,
                    6 => Self::R3g3b2,
                    7 => Self::R3g3b2Alt,
                    8 => Self::A12,
                    9 => Self::I12,
                    10 => Self::L12,
                    11 => Self::L8a8,
                    12 => Self::Rgba4,
                    13 => Self::Rgb5a1,
                    16 => Self::L12a12,
                    17 => Self::Rgba8,
                    18 => Self::Rgb10a2,
                    32 => Self::Rgba12Move,
                    33 => Self::Rgba12,
                    48 => Self::IccRgb,
                    49 => Self::IccRgba,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::A8 => 0,
                    Self::A8Alt => 1,
                    Self::I8 => 2,
                    Self::I8Alt => 3,
                    Self::L8 => 4,
                    Self::L8Alt => 5,
                    Self::R3g3b2 => 6,
                    Self::R3g3b2Alt => 7,
                    Self::A12 => 8,
                    Self::I12 => 9,
                    Self::L12 => 10,
                    Self::L8a8 => 11,
                    Self::Rgba4 => 12,
                    Self::Rgb5a1 => 13,
                    Self::L12a12 => 16,
                    Self::Rgba8 => 17,
                    Self::Rgb10a2 => 18,
                    Self::Rgba12Move => 32,
                    Self::Rgba12 => 33,
                    Self::IccRgb => 48,
                    Self::IccRgba => 49,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// 3D textures. established: the library fills one level-table entry for a 3D target and does not change the filter, so a 3D texture whose application as (established)
pub mod level3d_w2 {
    pub const WIDTH: u32 = 32;
    pub mod slice_exp { // bits 11:0, established
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
/// (established)
pub mod lod {
    pub const WIDTH: u32 = 32;
    pub mod value { // bits 13:0, established
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
/// (established)
pub mod mode_w0 {
    pub const WIDTH: u32 = 32;
    pub mod detail_modulate { // bits 31:31, established
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit30 { // bits 30:30, unknown
        pub const SHIFT: u32 = 30;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod detail_level { // bits 29:25, established
        pub const SHIFT: u32 = 25;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod unwritten { // bits 24:15, unknown
        pub const SHIFT: u32 = 15;
        pub const MASK: u32 = 0x3ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod log2_s { // bits 14:10, inferred
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod log2_t { // bits 9:5, inferred
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod log2_r { // bits 4:0, inferred
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// detail_level is the detail level as a positive count, min(-level, 15): the field is five bits wide but the library never sends more than 15. detail_mo (established)
pub mod mode_w1 {
    pub const WIDTH: u32 = 32;
    pub mod top { // bits 31:24, unknown
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod wrap_aux { // bits 23:18, established
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit17 { // bits 17:17, unknown
        pub const SHIFT: u32 = 17;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod max_clamp { // bits 16:0, established
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
pub mod mode_w2 {
    pub const WIDTH: u32 = 32;
    pub mod top { // bits 31:24, unknown
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod wrap_aux { // bits 23:18, established
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit17 { // bits 17:17, unknown
        pub const SHIFT: u32 = 17;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod max_clamp { // bits 16:0, established
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
pub mod mode_w3 {
    pub const WIDTH: u32 = 32;
    pub mod top { // bits 31:24, unknown
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod wrap_aux { // bits 23:18, established
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit17 { // bits 17:17, unknown
        pub const SHIFT: u32 = 17;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod max_clamp { // bits 16:0, established
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
/// The R axis setter writes repeat to the sampler for any target but 3D (established). Any other wrap enumerant is refused by the library. The library se (established)
pub mod mode_w5 {
    pub const WIDTH: u32 = 32;
    pub mod top { // bits 31:24, unknown
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod red { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod green { // bits 11:0, established
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
/// (established)
pub mod mode_w6 {
    pub const WIDTH: u32 = 32;
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
    pub mod has_offset { // bits 24:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blue { // bits 23:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod alpha { // bits 11:0, established
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
/// Code 3 is never sent (the allocator's table does accept element sizes of 16 and 32 bytes, codes 3 and 4, but no format row uses them). Offset code (le (established)
pub mod offcode {
    pub const WIDTH: u32 = 32;
    pub mod value { // bits 2:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const NONE: u32 = 0; // established
        pub const CODE2: u32 = 2; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            None,
            Code2,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::None,
                    2 => Self::Code2,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::None => 0,
                    Self::Code2 => 2,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// Size code c (level descriptor word 1 bits 31:30, BUZZ_DECODE.h TEXLEVEL_W1.size_code): 0 for indices 0..15 and 48, 1 for 16, 17, 18 and 49, 2 for 32 a (established)
pub mod size {
    pub const WIDTH: u32 = 32;
    pub mod code { // bits 1:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const B2: u32 = 0; // established
        pub const B4: u32 = 1; // established
        pub const B8: u32 = 2; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            B2,
            B4,
            B8,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::B2,
                    1 => Self::B4,
                    2 => Self::B8,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::B2 => 0,
                    Self::B4 => 1,
                    Self::B8 => 2,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// Active texture target (id 0x005, count 1). The word is shared with the clip-plane and path-selection bits of the same block; only the target bits are  (established)
pub mod target {
    pub const WIDTH: u32 = 32;
    pub mod bit11 { // bits 11:11, unknown
        pub const SHIFT: u32 = 11;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod active { // bits 10:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dim3 { // bits 5:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dim2 { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dim1 { // bits 3:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Wrap modes are independent per axis: each setter takes one enumerant, writes one axis and looks at no other. The wrap codes themselves (0 repeat, 1 cl (established)
pub mod wrapaux {
    pub const WIDTH: u32 = 32;
    pub mod value { // bits 5:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const REPEAT_CLAMP: u32 = 0; // established
        pub const EDGE: u32 = 1; // established
        pub const BORDER: u32 = 63; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            RepeatClamp,
            Edge,
            Border,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::RepeatClamp,
                    1 => Self::Edge,
                    63 => Self::Border,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::RepeatClamp => 0,
                    Self::Edge => 1,
                    Self::Border => 63,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
pub const BORDER_MAX: u32 = 0x1; // established
pub const COLOUR12_BITS: u32 = 0xc; // established
pub const COLOUR12_LANE_MASK: u32 = 0xfff; // established
pub const COLOUR12_MAX: u32 = 0xfff; // established
pub const COLOUR12_ROUND_SCALE: u32 = 0xfff; // established
pub const COLTAB_A_BASE: u32 = 0x3e00; // established
pub const COLTAB_B_BASE: u32 = 0x3e10; // established
pub const COLTAB_C_BASE: u32 = 0x3e20; // inferred
pub const COLTAB_D_BASE: u32 = 0x3e30; // inferred
pub const COLTAB_ENTRIES: u32 = 0x100; // established
pub const COLTAB_MAX_WIDTH: u32 = 0x100; // established
pub const COLTAB_UPLOAD_LAST: u32 = 0xf; // established
pub const COLTAB_UPLOAD_SHIFT: u32 = 0x4; // established
pub const COLTAB_UPLOAD_WORDS: u32 = 0x10; // established
pub const COLTAB_WORD_MASK: u32 = 0xf; // established
pub const DETAIL_COUNT_MAX: u32 = 0xf; // established
pub const DETAIL_FIRST: u32 = 0x31; // established
pub const ENV_WORDS: u32 = 0x5; // established
pub const FMT_INDEX_MAX_USED: u32 = 0x31; // established
pub const LEVEL_TABLE_ENTRIES: u32 = 0x40; // established
pub const LOD_BITS: u32 = 0xe; // established
pub const LOD_LIMIT: u32 = 0xf; // established
pub const LOD_MAX_DEFAULT: u32 = 0xf00; // established
pub const LOD_MIN_DEFAULT: u32 = 0x3100; // established
pub const LOD_WORDS: u32 = 0x4; // established
pub const MODE_WORDS: u32 = 0x7; // established
pub const OFFSET_WORDS: u32 = 0x3; // established
pub const OP_FIRSTLEVEL: u32 = 0x406; // established
pub const OP_TARGET: u32 = 0x405; // established
pub const OP_TEXENV: u32 = 0x141b; // established
pub const OP_TEXLOD: u32 = 0x1013; // established
pub const OP_TEXMODE: u32 = 0x1c16; // established
pub const OP_TEXOFFSET: u32 = 0xc3e; // established
pub const PIXCLASS_COUNT: u32 = 0x12; // established
pub const PRIMARY_LAST: u32 = 0xf; // established
pub const PRIMARY_LEVELS_MAX: u32 = 0x10; // established
pub const SCRATCH_LEVEL: u32 = 0x3c; // established
pub const SIZE_MAX: u32 = 0x8000; // established
pub const SLICE_STRIDE_BASE: u32 = 0x20; // established
pub const TABLE_LAST: u32 = 0x3f; // established
pub const TILE_TEXELS: u32 = 0x10; // established
pub const UNUSED_FIRST: u32 = 0x10; // established
pub const UNUSED_LAST: u32 = 0x30; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn env_w1_ffffff() {
        assert_eq!(env_w1::red::get(0xffffff), 4095);
        assert_eq!(env_w1::green::get(0xffffff), 4095);
    }

    #[test]
    fn env_w2_ffffff() {
        assert_eq!(env_w2::blue::get(0xffffff), 4095);
        assert_eq!(env_w2::alpha::get(0xffffff), 4095);
    }

    #[test]
    fn lod_f00() {
        assert_eq!(lod::value::get(0xf00), 3840);
    }

    #[test]
    fn lod_3100() {
        assert_eq!(lod::value::get(0x3100), 12544);
    }
}
