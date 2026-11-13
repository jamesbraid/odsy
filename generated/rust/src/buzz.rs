// generated from devices/buzz/registers.toml by defs-gen - do not edit, change the source
// VPro (Odyssey) "Buzz" graphics ASIC: command and image
#![allow(dead_code)]

pub mod enums {
    pub mod fieldfmt {
        pub const INDEX: u32 = 0; // established
        pub const ONE: u32 = 2; // established
        pub const TWO: u32 = 3; // established
        pub const RGBA: u32 = 5; // established
        pub const RGBA_SHORT_A: u32 = 6; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Index,
            One,
            Two,
            Rgba,
            RgbaShortA,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Index,
                    2 => Self::One,
                    3 => Self::Two,
                    5 => Self::Rgba,
                    6 => Self::RgbaShortA,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Index => 0,
                    Self::One => 2,
                    Self::Two => 3,
                    Self::Rgba => 5,
                    Self::RgbaShortA => 6,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod fmt {
        pub const DEPTH_STENCIL: u32 = 0; // established
        pub const INDEX: u32 = 1; // established
        pub const LUMINANCE: u32 = 2; // established
        pub const INTENSITY: u32 = 3; // established
        pub const RED: u32 = 4; // established
        pub const GREEN: u32 = 5; // established
        pub const BLUE: u32 = 6; // established
        pub const ALPHA: u32 = 7; // established
        pub const LUM_ALPHA: u32 = 8; // established
        pub const RGB: u32 = 9; // established
        pub const RGBA: u32 = 11; // established
        pub const ABGR: u32 = 12; // established
        pub const BGR: u32 = 13; // established
        pub const BGRA: u32 = 17; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            DepthStencil,
            Index,
            Luminance,
            Intensity,
            Red,
            Green,
            Blue,
            Alpha,
            LumAlpha,
            Rgb,
            Rgba,
            Abgr,
            Bgr,
            Bgra,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::DepthStencil,
                    1 => Self::Index,
                    2 => Self::Luminance,
                    3 => Self::Intensity,
                    4 => Self::Red,
                    5 => Self::Green,
                    6 => Self::Blue,
                    7 => Self::Alpha,
                    8 => Self::LumAlpha,
                    9 => Self::Rgb,
                    11 => Self::Rgba,
                    12 => Self::Abgr,
                    13 => Self::Bgr,
                    17 => Self::Bgra,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::DepthStencil => 0,
                    Self::Index => 1,
                    Self::Luminance => 2,
                    Self::Intensity => 3,
                    Self::Red => 4,
                    Self::Green => 5,
                    Self::Blue => 6,
                    Self::Alpha => 7,
                    Self::LumAlpha => 8,
                    Self::Rgb => 9,
                    Self::Rgba => 11,
                    Self::Abgr => 12,
                    Self::Bgr => 13,
                    Self::Bgra => 17,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod psize {
        pub const V2B: u32 = 0; // established
        pub const V4B: u32 = 1; // established
        pub const V8B: u32 = 2; // established
        pub const V16B: u32 = 3; // established
        pub const V12B: u32 = 4; // established
        pub const V1B: u32 = 5; // established
        pub const V6B: u32 = 6; // established
        pub const V3B: u32 = 7; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            V2b,
            V4b,
            V8b,
            V16b,
            V12b,
            V1b,
            V6b,
            V3b,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::V2b,
                    1 => Self::V4b,
                    2 => Self::V8b,
                    3 => Self::V16b,
                    4 => Self::V12b,
                    5 => Self::V1b,
                    6 => Self::V6b,
                    7 => Self::V3b,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::V2b => 0,
                    Self::V4b => 1,
                    Self::V8b => 2,
                    Self::V16b => 3,
                    Self::V12b => 4,
                    Self::V1b => 5,
                    Self::V6b => 6,
                    Self::V3b => 7,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod sampler_mag {
        pub const NEAREST: u32 = 0; // established
        pub const LINEAR: u32 = 1; // established
        pub const DETAIL: u32 = 2; // established
        pub const DETAIL_ALPHA: u32 = 3; // established
        pub const DETAIL_COLOR: u32 = 4; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Nearest,
            Linear,
            Detail,
            DetailAlpha,
            DetailColor,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Nearest,
                    1 => Self::Linear,
                    2 => Self::Detail,
                    3 => Self::DetailAlpha,
                    4 => Self::DetailColor,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Nearest => 0,
                    Self::Linear => 1,
                    Self::Detail => 2,
                    Self::DetailAlpha => 3,
                    Self::DetailColor => 4,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod sampler_min {
        pub const NEAREST: u32 = 0; // established
        pub const LINEAR: u32 = 1; // established
        pub const NEAREST_MIP_NEAREST: u32 = 2; // established
        pub const LINEAR_MIP_NEAREST: u32 = 3; // established
        pub const NEAREST_MIP_LINEAR: u32 = 4; // established
        pub const LINEAR_MIP_LINEAR: u32 = 5; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Nearest,
            Linear,
            NearestMipNearest,
            LinearMipNearest,
            NearestMipLinear,
            LinearMipLinear,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Nearest,
                    1 => Self::Linear,
                    2 => Self::NearestMipNearest,
                    3 => Self::LinearMipNearest,
                    4 => Self::NearestMipLinear,
                    5 => Self::LinearMipLinear,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Nearest => 0,
                    Self::Linear => 1,
                    Self::NearestMipNearest => 2,
                    Self::LinearMipNearest => 3,
                    Self::NearestMipLinear => 4,
                    Self::LinearMipLinear => 5,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod sampler_wrap {
        pub const REPEAT: u32 = 0; // established
        pub const EDGE: u32 = 1; // established
        pub const CLAMP: u32 = 2; // established
        pub const BORDER: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Repeat,
            Edge,
            Clamp,
            Border,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Repeat,
                    1 => Self::Edge,
                    2 => Self::Clamp,
                    3 => Self::Border,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Repeat => 0,
                    Self::Edge => 1,
                    Self::Clamp => 2,
                    Self::Border => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod r#type {
        pub const BYTE: u32 = 2; // established
        pub const SHORT: u32 = 3; // established
        pub const INT: u32 = 4; // established
        pub const V332: u32 = 5; // established
        pub const V4444: u32 = 6; // established
        pub const V5551: u32 = 7; // established
        pub const V1010102: u32 = 8; // established
        pub const V565: u32 = 10; // established
        pub const BYTE_12: u32 = 11; // established
        pub const V565_CLASS10: u32 = 12; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Byte,
            Short,
            Int,
            V332,
            V4444,
            V5551,
            V1010102,
            V565,
            Byte12,
            V565Class10,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    2 => Self::Byte,
                    3 => Self::Short,
                    4 => Self::Int,
                    5 => Self::V332,
                    6 => Self::V4444,
                    7 => Self::V5551,
                    8 => Self::V1010102,
                    10 => Self::V565,
                    11 => Self::Byte12,
                    12 => Self::V565Class10,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Byte => 2,
                    Self::Short => 3,
                    Self::Int => 4,
                    Self::V332 => 5,
                    Self::V4444 => 6,
                    Self::V5551 => 7,
                    Self::V1010102 => 8,
                    Self::V565 => 10,
                    Self::Byte12 => 11,
                    Self::V565Class10 => 12,
                    Self::Other(v) => v,
                }
            }
        }
    }
}

/// (established)
pub mod alpha_test {
    pub const WIDTH: u32 = 32;
    pub mod func { // bits 14:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod reference { // bits 11:0, established
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
/// COPY operand 2: the two window words and the destination's second field code. (established)
pub mod copy_w2 {
    pub const WIDTH: u32 = 32;
    pub mod dst_front { // bits 31:31, established
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dst_window { // bits 27:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xfff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dst_field_b { // bits 15:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod src_window { // bits 11:0, established
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
/// COPY operand 7 beyond the write header: flags set around the walk. (inferred)
pub mod copy_w7 {
    pub const WIDTH: u32 = 32;
    pub mod dst_x_in_src { // bits 31:31, inferred
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dst_y_in_src { // bits 30:30, inferred
        pub const SHIFT: u32 = 30;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod clamp_off { // bits 29:28, inferred
        pub const SHIFT: u32 = 28;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod dst_field_a { // bits 23:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod size_code { // bits 19:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Frame pixel as stored in the vendor simulator's reference frames: red in bits 31:24, green 23:16, blue 15:8 and alpha 7:0, each component the colour i (established)
pub mod frame_pixel {
    pub const WIDTH: u32 = 32;
    pub mod red { // bits 31:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod green { // bits 23:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod blue { // bits 15:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0xff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod alpha { // bits 7:0, established
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
/// Image header word 0: board reference. (inferred)
pub mod hdr_w0 {
    pub const WIDTH: u32 = 32;
    pub mod kept { // bits 31:30, inferred
        pub const SHIFT: u32 = 30;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod window_rel { // bits 29:29, established
        pub const SHIFT: u32 = 29;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod r#ref { // bits 28:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1fffffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Image header word 1: x and y of the smaller corner. (established)
pub mod hdr_w1 {
    pub const WIDTH: u32 = 32;
    pub mod y { // bits 31:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod x { // bits 15:0, established
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
/// Image header word 2: the window word. (established)
pub mod hdr_w2 {
    pub const WIDTH: u32 = 32;
    pub mod window_word { // bits 11:0, established
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
/// Image header word 3: width and height. (established)
pub mod hdr_w3 {
    pub const WIDTH: u32 = 32;
    pub mod height { // bits 31:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0xffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod width { // bits 15:0, established
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
/// Image header word 4: class and code, field geometry, pixel size. The read header's word 4, and the COPY source description. (unknown)
pub mod hdr_w4 {
    pub const WIDTH: u32 = 32;
    pub mod front { // bits 31:31, established
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod drawable { // bits 28:28, established
        pub const SHIFT: u32 = 28;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod field_b { // bits 27:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod field_a { // bits 23:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod pixel_size_b19 { // bits 19:19, unknown
        pub const SHIFT: u32 = 19;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod pixel_size { // bits 18:16, inferred
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub use super::super::enums::psize::Value;
    }
    pub mod size_field { // bits 15:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit12 { // bits 12:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod code { // bits 7:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod class { // bits 2:0, established
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
/// Image header word 6: row bytes. (established)
pub mod hdr_w6 {
    pub const WIDTH: u32 = 32;
    pub mod row_bytes { // bits 19:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0xfffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Image header word 7: format, type, size and path control. The write header's word 7, and the COPY destination control. (inferred)
pub mod hdr_w7 {
    pub const WIDTH: u32 = 32;
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
    pub mod transform { // bits 27:27, established
        pub const SHIFT: u32 = 27;
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
    }
    pub mod psize { // bits 18:16, established
        pub const SHIFT: u32 = 16;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub use super::super::enums::psize::Value;
    }
    pub mod size_field { // bits 15:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod swap { // bits 10:10, inferred
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod expand { // bits 9:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod r#type { // bits 8:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub use super::super::enums::r#type::Value;
    }
    pub mod format { // bits 4:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub use super::super::enums::fmt::Value;
    }
}
/// A scale or bias word of the post-filter block. (established)
pub mod pf {
    pub const WIDTH: u32 = 32;
    pub mod value { // bits 15:0, established
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
/// Pixel-mode descriptor, first word. (established)
pub mod pixmode_w0 {
    pub const WIDTH: u32 = 32;
    pub mod window_word { // bits 11:0, established
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
/// Pixel-mode descriptor, second word. (unknown)
pub mod pixmode_w1 {
    pub const WIDTH: u32 = 32;
    pub mod bit27 { // bits 27:27, unknown
        pub const SHIFT: u32 = 27;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod storage3 { // bits 22:22, inferred
        pub const SHIFT: u32 = 22;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit21 { // bits 21:21, unknown
        pub const SHIFT: u32 = 21;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod index_class { // bits 19:19, established
        pub const SHIFT: u32 = 19;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod size_field { // bits 15:13, established
        pub const SHIFT: u32 = 13;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod storage { // bits 12:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod layout { // bits 9:7, established
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod field_format { // bits 6:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub use super::super::enums::fieldfmt::Value;
    }
}
/// The sampler word: operand 4 of the texture-mode block. (established)
pub mod sampler {
    pub const WIDTH: u32 = 32;
    pub mod no_offset { // bits 28:28, established
        pub const SHIFT: u32 = 28;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod activation { // bits 25:23, established
        pub const SHIFT: u32 = 23;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod table_fmt { // bits 22:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod image_flag18 { // bits 18:18, established
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod trilinear { // bits 17:17, established
        pub const SHIFT: u32 = 17;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod image_flag14 { // bits 14:14, established
        pub const SHIFT: u32 = 14;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod wrap_s { // bits 13:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub use super::super::enums::sampler_wrap::Value;
    }
    pub mod wrap_t { // bits 11:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub use super::super::enums::sampler_wrap::Value;
    }
    pub mod wrap_r { // bits 9:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub use super::super::enums::sampler_wrap::Value;
    }
    pub mod min { // bits 7:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub use super::super::enums::sampler_min::Value;
    }
    pub mod mag { // bits 4:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub use super::super::enums::sampler_mag::Value;
    }
    pub mod colour_table { // bits 0:0, established
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
/// Texture level descriptor, word 0. (unknown)
pub mod texlevel_w0 {
    pub const WIDTH: u32 = 32;
    pub mod kept { // bits 31:29, unknown
        pub const SHIFT: u32 = 29;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod addr { // bits 28:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x1fffffff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// Texture level descriptor, word 1. (established)
pub mod texlevel_w1 {
    pub const WIDTH: u32 = 32;
    pub mod size_code { // bits 31:30, established
        pub const SHIFT: u32 = 30;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod offset_code { // bits 28:26, established
        pub const SHIFT: u32 = 26;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod format_index { // bits 25:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0x3f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod pitch { // bits 11:0, established
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
/// Texture level descriptor, word 2. (established)
pub mod texlevel_w2 {
    pub const WIDTH: u32 = 32;
    pub mod bits { // bits 11:0, established
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
pub const ALPHA_TEST_FUNC_ALWAYS: u32 = 0x7; // established
pub const ALPHA_TEST_FUNC_EQUAL: u32 = 0x2; // established
pub const ALPHA_TEST_FUNC_GEQUAL: u32 = 0x6; // established
pub const ALPHA_TEST_FUNC_GREATER: u32 = 0x4; // established
pub const ALPHA_TEST_FUNC_LEQUAL: u32 = 0x3; // established
pub const ALPHA_TEST_FUNC_LESS: u32 = 0x1; // established
pub const ALPHA_TEST_FUNC_NEVER: u32 = 0x0; // established
pub const ALPHA_TEST_FUNC_NOTEQUAL: u32 = 0x5; // established
pub const ATTR_LOW_COUNT4_OP2F: u32 = 0xd02f; // established
pub const ATTR_VERTEX3F_WORD: u32 = 0x8080cc03; // established
pub const BLK_ALPHA_TEST: u32 = 0x1e; // established
pub const BLK_GAMMA_FIT: u32 = 0x45; // established
pub const BLK_IMAGE_SELECTS: u32 = 0x1d; // established
pub const BLK_PIO_PIXELS: u32 = 0x170; // established
pub const BLK_SLOT_PAIR: u32 = 0x1ea; // established
pub const BLK_TABLE_DATA: u32 = 0x1a2; // established
pub const CLASS0_CLEAR_ADDR: u32 = 0x1c0; // established
pub const CLASS0_CLEAR_WORDS: u32 = 0x240; // established
pub const CLASS0_ID_ADDR: u32 = 0x340; // established
pub const CLASS0_ID_DATA: u32 = 0x341; // established
pub const CLASS0_WRITE_ADDR: u32 = 0x740; // established
pub const CLASS0_WRITE_DATA: u32 = 0x741; // established
pub const CMD_ALPHA_TEST: u32 = 0x1041e; // established
pub const CMD_BLK_01F: u32 = 0x1041f; // established
pub const CMD_BLK_042: u32 = 0x10842; // established
pub const CMD_BLK_047: u32 = 0x11847; // established
pub const CMD_BLK_04C: u32 = 0x1044c; // established
pub const CMD_BLK_04D: u32 = 0x13c4d; // established
pub const CMD_BLK_051: u32 = 0x10451; // established
pub const CMD_BLK_056: u32 = 0x10456; // established
pub const CMD_BLK_057: u32 = 0x10457; // established
pub const CMD_BUFFER_SELECT: u32 = 0x10424; // established
pub const CMD_CLASS1_PREFIX: u32 = 0x10000; // established
pub const CMD_CLIP_ORIGIN_PAIR: u32 = 0x10840; // established
pub const CMD_CONTEXT_SELECT: u32 = 0x10850; // established
pub const CMD_DEPTH_FUNC: u32 = 0x10420; // established
pub const CMD_DMA_PRELUDE: u32 = 0x10658; // established
pub const CMD_DRAWABLE_ORIGIN: u32 = 0x10841; // established
pub const CMD_FIRST_TEXLEVEL: u32 = 0x10406; // established
pub const CMD_FLUSH: u32 = 0x10019; // established
pub const CMD_FOG: u32 = 0x1181a; // established
pub const CMD_FRAG_LIGHT_MODEL: u32 = 0x10c1c; // established
pub const CMD_LINE_POINT_SIZE: u32 = 0x1084a; // established
pub const CMD_LINE_STIPPLE: u32 = 0x10c48; // established
pub const CMD_LOD_LIMITS: u32 = 0x11013; // established
pub const CMD_LOGIC_OP: u32 = 0x10422; // established
pub const CMD_PAD: u32 = 0x10046; // established
pub const CMD_PATH_SELECT: u32 = 0x10405; // established
pub const CMD_POLYGON_MODE: u32 = 0x10415; // established
pub const CMD_POLYGON_OFFSET: u32 = 0x10458; // established
pub const CMD_POSTFILTER_M1_0: u32 = 0x12030; // established
pub const CMD_POSTFILTER_M1_1: u32 = 0x12031; // established
pub const CMD_POSTFILTER_M1_2: u32 = 0x12032; // established
pub const CMD_POSTFILTER_M1_3: u32 = 0x12033; // established
pub const CMD_POSTFILTER_M3: u32 = 0x1083d; // established
pub const CMD_PRIM_BEGIN: u32 = 0x14400; // established
pub const CMD_PRIM_END: u32 = 0x14001; // established
pub const CMD_RANGE_BLOCK: u32 = 0x10854; // established
pub const CMD_RASTER_ENABLE: u32 = 0x10404; // established
pub const CMD_RECT_COPY: u32 = 0x11453; // established
pub const CMD_REGION_BLOCK_0: u32 = 0x13c28; // established
pub const CMD_REGION_BLOCK_1: u32 = 0x13c29; // established
pub const CMD_REGION_BLOCK_2: u32 = 0x13c2a; // established
pub const CMD_REGION_BLOCK_3: u32 = 0x13c2b; // established
pub const CMD_REGION_ONE_BLOCK: u32 = 0x13c38; // established
pub const CMD_SCREEN_MASK: u32 = 0x1204b; // established
pub const CMD_STIPPLE_MODE: u32 = 0x1043f; // established
pub const CMD_STIPPLE_ROWS_HI: u32 = 0x13c4e; // established
pub const CMD_STIPPLE_ROWS_LO: u32 = 0x13c4f; // established
pub const CMD_WAIT: u32 = 0x10443; // established
pub const CMD_WINDOW_DESC: u32 = 0x11017; // established
pub const CMD_WRITE_MASKS: u32 = 0x10452; // established
pub const INIT_DELAY_US: u32 = 0x7d0; // established
pub const INIT_DW_6B0: u64 = 0x6b000000000; // established
pub const INIT_DW_6B1: u64 = 0x6b100000100; // established
pub const INIT_DW_6B2: u64 = 0x6b200007dc0; // established
pub const INIT_DW_6B3: u64 = 0x6b300005e50; // established
pub const INIT_DW_7B5: u64 = 0x7b500000001; // established
pub const INIT_DW_7F0: u64 = 0x7f03b9aca00; // established
pub const OP_COPY: u32 = 0x2031; // established
pub const OP_COPY_WORDS: u32 = 0x8; // established
pub const OP_POSTFILTER: u32 = 0x203b; // established
pub const OP_POSTFILTER_WORDS: u32 = 0x8; // established
pub const OP_TEXMODE: u32 = 0x1c16; // established
pub const PF_FRAC_BITS: u32 = 0xc; // established
pub const PF_MAX_X4096: u32 = 0x7fff; // inferred
pub const PF_ONE: u32 = 0x1000; // established
pub const RANGE_BLOCK_HIGH: u32 = 0xfffffff; // established
pub const RANGE_BLOCK_LOW: u32 = 0x0; // established
pub const RASTER_ENABLE_ALPHA_TEST: u32 = 0x4000; // established
pub const RASTER_ENABLE_BLEND: u32 = 0x20000; // inferred
pub const RASTER_ENABLE_COLOUR_LOGIC_OP: u32 = 0x100000; // established
pub const RASTER_ENABLE_CULL: u32 = 0x100; // inferred
pub const RASTER_ENABLE_CULL_BACK: u32 = 0x200; // established
pub const RASTER_ENABLE_CULL_FRONT: u32 = 0x400; // established
pub const RASTER_ENABLE_DEPTH_TEST: u32 = 0x10000; // inferred
pub const RASTER_ENABLE_DITHER: u32 = 0x40000; // established
pub const RASTER_ENABLE_FLAT_SHADE: u32 = 0x1000; // established
pub const RASTER_ENABLE_FOG: u32 = 0x400000; // established
pub const RASTER_ENABLE_FRONT_CW: u32 = 0x800000; // established
pub const RASTER_ENABLE_INDEX_LOGIC_OP: u32 = 0x80000; // established
pub const RASTER_ENABLE_LINE_SMOOTH: u32 = 0x2; // established
pub const RASTER_ENABLE_LINE_STIPPLE: u32 = 0x8; // established
pub const RASTER_ENABLE_OFFSET_FILL: u32 = 0x80; // established
pub const RASTER_ENABLE_OFFSET_LINE: u32 = 0x40; // established
pub const RASTER_ENABLE_OFFSET_POINT: u32 = 0x20; // established
pub const RASTER_ENABLE_POINT_SMOOTH: u32 = 0x1; // established
pub const RASTER_ENABLE_POLYGON_SMOOTH: u32 = 0x4; // established
pub const RASTER_ENABLE_POLYGON_STIPPLE: u32 = 0x10; // established
pub const RASTER_ENABLE_STENCIL_TEST: u32 = 0x8000; // inferred
pub const RASTER_ENABLE_TWO_SIDE_LIGHT: u32 = 0x800; // inferred
pub const RD_CODE_INDEX_BYTE: u32 = 0x1; // established
pub const SAMPLER_IMAGE_DEFAULT: u32 = 0x3640000; // established
pub const SEQ_COLOUR_MODE_A_INDEX: u32 = 0x1; // established
pub const SEQ_COLOUR_MODE_A_RGB: u32 = 0x0; // established
pub const SEQ_COLOUR_MODE_B_INDEX: u32 = 0x3; // established
pub const SEQ_COLOUR_MODE_B_RGB: u32 = 0x2; // established
pub const SEQ_REG_COLOUR_MODE_A: u32 = 0x22; // established
pub const SEQ_REG_COLOUR_MODE_B: u32 = 0x23; // established
pub const SEQ_REG_TABLE_INDEX: u32 = 0x31; // established
pub const SEQ_WORD_COLOUR_A_INDEX: u32 = 0x22008001; // established
pub const SEQ_WORD_COLOUR_A_RGB: u32 = 0x22008000; // established
pub const SEQ_WORD_COLOUR_B_INDEX: u32 = 0x23008003; // established
pub const SEQ_WORD_COLOUR_B_RGB: u32 = 0x23008002; // established
pub const SLOT15_WORD_OP12F: u32 = 0xcf80a92f; // established
pub const SLOT16_WORD_OP33: u32 = 0xd080c433; // established
pub const SLOT16_WORD_OP34: u32 = 0xd080cc34; // established
pub const SLOT2_WORD: u32 = 0xc280cc1c; // established
pub const SLOT4_DEFAULT_WORD: u32 = 0xc480c426; // established
pub const SYNC_WAIT_FIRST: u32 = 0xfa; // established
pub const SYNC_WAIT_SECOND: u32 = 0x96; // established
pub const TEXLEVEL_COUNT: u32 = 0x40; // inferred
pub const WORD_CLIP_STATE_A_LOW24: u32 = 0x8116; // established
pub const WORD_CLIP_STATE_B_LOW24: u32 = 0xbda2; // established
pub const WORD_DATA_LOAD4: u32 = 0x8e809015; // established
pub const WORD_PROGRAM_SWITCH_LOW24: u32 = 0x808800; // established
pub const WORD_TABLE16_A_LOW24: u32 = 0x80bda2; // established
pub const WORD_TABLE16_B_LOW24: u32 = 0x80bdc8; // established
pub const WORD_TABLE4_A_LOW24: u32 = 0x8091df; // established
pub const WORD_TABLE4_B_LOW24: u32 = 0x8091ea; // established
pub const WORD_TOP_BYTE_90: u32 = 0x90; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn alpha_test_3800() {
        assert_eq!(alpha_test::func::get(0x3800), 3);
        assert_eq!(alpha_test::reference::get(0x3800), 2048);
    }

    #[test]
    fn frame_pixel_8099b3ff() {
        assert_eq!(frame_pixel::red::get(0x8099b3ff), 128);
        assert_eq!(frame_pixel::green::get(0x8099b3ff), 153);
        assert_eq!(frame_pixel::blue::get(0x8099b3ff), 179);
        assert_eq!(frame_pixel::alpha::get(0x8099b3ff), 255);
    }

    #[test]
    fn hdr_w4_8() {
        assert_eq!(hdr_w4::class::get(0x8), 0);
        assert_eq!(hdr_w4::code::get(0x8), 1);
    }

    #[test]
    fn hdr_w4_83331008() {
        assert_eq!(hdr_w4::class::get(0x83331008), 0);
        assert_eq!(hdr_w4::code::get(0x83331008), 1);
        assert_eq!(hdr_w4::bit12::get(0x83331008), 1);
        assert_eq!(hdr_w4::size_field::get(0x83331008), 0);
        assert_eq!(hdr_w4::pixel_size::get(0x83331008), 3);
        assert_eq!(hdr_w4::field_a::get(0x83331008), 3);
        assert_eq!(hdr_w4::field_b::get(0x83331008), 3);
        assert_eq!(hdr_w4::drawable::get(0x83331008), 0);
        assert_eq!(hdr_w4::front::get(0x83331008), 1);
    }

    #[test]
    fn hdr_w7_41() {
        assert_eq!(hdr_w7::format::get(0x41), 1);
        assert_eq!(hdr_w7::r#type::get(0x41), 2);
        assert_eq!(hdr_w7::expand::get(0x41), 0);
    }

    #[test]
    fn hdr_w7_42() {
        assert_eq!(hdr_w7::format::get(0x42), 2);
        assert_eq!(hdr_w7::r#type::get(0x42), 2);
        assert_eq!(hdr_w7::expand::get(0x42), 0);
    }

    #[test]
    fn hdr_w7_4b() {
        assert_eq!(hdr_w7::format::get(0x4b), 11);
        assert_eq!(hdr_w7::r#type::get(0x4b), 2);
        assert_eq!(hdr_w7::expand::get(0x4b), 0);
    }

    #[test]
    fn hdr_w7_61() {
        assert_eq!(hdr_w7::format::get(0x61), 1);
        assert_eq!(hdr_w7::r#type::get(0x61), 3);
        assert_eq!(hdr_w7::expand::get(0x61), 0);
    }

    #[test]
    fn hdr_w7_6b() {
        assert_eq!(hdr_w7::format::get(0x6b), 11);
        assert_eq!(hdr_w7::r#type::get(0x6b), 3);
        assert_eq!(hdr_w7::expand::get(0x6b), 0);
    }

    #[test]
    fn hdr_w7_16c() {
        assert_eq!(hdr_w7::format::get(0x16c), 12);
        assert_eq!(hdr_w7::r#type::get(0x16c), 11);
        assert_eq!(hdr_w7::expand::get(0x16c), 0);
    }

    #[test]
    fn hdr_w7_32050041() {
        assert_eq!(hdr_w7::format::get(0x32050041), 1);
        assert_eq!(hdr_w7::r#type::get(0x32050041), 2);
        assert_eq!(hdr_w7::psize::get(0x32050041), 5);
        assert_eq!(hdr_w7::read_dir::get(0x32050041), 0);
        assert_eq!(hdr_w7::transform::get(0x32050041), 0);
        assert_eq!(hdr_w7::differs::get(0x32050041), 0);
    }

    #[test]
    fn sampler_82() {
        assert_eq!(sampler::colour_table::get(0x82), 0);
        assert_eq!(sampler::mag::get(0x82), 1);
        assert_eq!(sampler::min::get(0x82), 4);
    }

    #[test]
    fn sampler_3640000() {
        assert_eq!(sampler::colour_table::get(0x3640000), 0);
        assert_eq!(sampler::mag::get(0x3640000), 0);
        assert_eq!(sampler::min::get(0x3640000), 0);
        assert_eq!(sampler::image_flag18::get(0x3640000), 1);
        assert_eq!(sampler::table_fmt::get(0x3640000), 6);
        assert_eq!(sampler::activation::get(0x3640000), 6);
        assert_eq!(sampler::no_offset::get(0x3640000), 0);
    }
}
