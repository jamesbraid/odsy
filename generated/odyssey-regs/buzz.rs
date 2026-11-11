// generated from odsy 95550b2cfdb3 BUZZ_DECODE.h - do not edit, regenerate in odsy
//!
//! Command opcodes and the image, copy, pixel-mode, texture-level and sampler
//! words of the Odyssey geometry and pixel engine's command stream.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established.
pub const CMD_CLASS1_PREFIX: u32 = 0x10000;
/// established.
pub const OP_COPY: u32 = 0x2031;
pub const OP_COPY_WORDS: u32 = 8;
/// established.
pub const OP_POSTFILTER: u32 = 0x203b;
pub const OP_POSTFILTER_WORDS: u32 = 8;
pub const TEXLEVEL_COUNT: u32 = 64;
pub const OP_TEXMODE: u32 = 0x1c16;
pub const RD_CODE_INDEX_BYTE: u32 = 1;
pub const HDR_W7_TYPE_INPLACE: u32 = 0x1e0;
pub const PF_FRAC_BITS: u32 = 12;
/// established.
pub const PF_ONE: u32 = 0x1000;
pub const PF_MAX_X4096: u32 = 0x7fff;
/// established.
pub const ALPHA_TEST_FUNC_NEVER: u32 = 0;
/// established.
pub const ALPHA_TEST_FUNC_LESS: u32 = 1;
/// established.
pub const ALPHA_TEST_FUNC_EQUAL: u32 = 2;
/// established.
pub const ALPHA_TEST_FUNC_LEQUAL: u32 = 3;
/// established.
pub const ALPHA_TEST_FUNC_GREATER: u32 = 4;
/// established.
pub const ALPHA_TEST_FUNC_NOTEQUAL: u32 = 5;
/// established.
pub const ALPHA_TEST_FUNC_GEQUAL: u32 = 6;
/// established.
pub const ALPHA_TEST_FUNC_ALWAYS: u32 = 7;
/// established.
pub const BLK_ALPHA_TEST: u32 = 30;
/// established id; sent to select the window destination of a host-to-board pixel move; roles of the selects inferred.
pub const BLK_IMAGE_SELECTS: u32 = 29;
/// established id, word 0x00010845, two operands; gamma-ramp fitting parameters, role inferred, field split unknown.
pub const BLK_GAMMA_FIT: u32 = 69;
/// established id; leads a host-written pixel burst: the word 0x4570, then the bare word 0x71, then the pixel groups; fields unknown beyond the copied format and type bits of the image header's word 7.
pub const BLK_PIO_PIXELS: u32 = 0x170;
/// established id; the 16-word data port of the table that sequencer register 0x31 indexes.
pub const BLK_TABLE_DATA: u32 = 0x1a2;
/// established.
pub const SEQ_REG_TABLE_INDEX: u32 = 49;
/// established id, four operands (the first operand of two slot entries, each with bit 31 flipped as a second operand); role inferred.
pub const BLK_SLOT_PAIR: u32 = 0x1ea;
/// established: opcode 0x26, attribute slot 4, one operand; the word the driver stores as that slot's default; what slot 4 carries is unknown.
pub const SLOT4_DEFAULT_WORD: u32 = 0xc480c426;
/// established.
pub const SEQ_REG_COLOUR_MODE_A: u32 = 34;
/// established.
pub const SEQ_REG_COLOUR_MODE_B: u32 = 35;
/// established.
pub const SEQ_COLOUR_MODE_A_RGB: u32 = 0;
/// established.
pub const SEQ_COLOUR_MODE_A_INDEX: u32 = 1;
/// established.
pub const SEQ_COLOUR_MODE_B_RGB: u32 = 2;
/// established.
pub const SEQ_COLOUR_MODE_B_INDEX: u32 = 3;
/// established.
pub const SEQ_WORD_COLOUR_A_RGB: u32 = 0x22008000;
/// established.
pub const SEQ_WORD_COLOUR_B_RGB: u32 = 0x23008002;
/// established.
pub const SEQ_WORD_COLOUR_A_INDEX: u32 = 0x22008001;
/// established.
pub const SEQ_WORD_COLOUR_B_INDEX: u32 = 0x23008003;
/// established; one operand, section 9 bits below.
pub const CMD_RASTER_ENABLE: u32 = 0x10404;
/// established; one operand: clip planes, texture target, colour count.
pub const CMD_PATH_SELECT: u32 = 0x10405;
/// established; one operand: index of the first level descriptor read.
pub const CMD_FIRST_TEXLEVEL: u32 = 0x10406;
/// established; four operands: S bias, T bias, minimum and maximum LOD.
pub const CMD_LOD_LIMITS: u32 = 0x11013;
/// established; one operand: bits 3:2 front, 1:0 back (GL enum minus 0x1b00).
pub const CMD_POLYGON_MODE: u32 = 0x10415;
/// established; four operands, role inferred.
pub const CMD_WINDOW_DESC: u32 = 0x11017;
/// established; six operands: colour pair then function coefficients.
pub const CMD_FOG: u32 = 0x1181a;
/// established; three operands.
pub const CMD_FRAG_LIGHT_MODEL: u32 = 0x10c1c;
/// established; see ALPHA_TEST above.
pub const CMD_ALPHA_TEST: u32 = 0x1041e;
/// established; one operand: bits 2:0 comparison (GL enum minus 0x200).
pub const CMD_DEPTH_FUNC: u32 = 0x10420;
/// established; one operand: bits 3:0 (GL enum minus 0x1500).
pub const CMD_LOGIC_OP: u32 = 0x10422;
/// established; one operand, role inferred as the draw-buffer select.
pub const CMD_BUFFER_SELECT: u32 = 0x10424;
/// established; three operands: 16-bit pattern twice, then repeat minus one.
pub const CMD_LINE_STIPPLE: u32 = 0x10c48;
/// established; one operand: bits 24:0 signed depth offset.
pub const CMD_POLYGON_OFFSET: u32 = 0x10458;
/// established; one operand: index 11:0, stencil 19:12, RGBA enables 23:20, depth 24.
pub const CMD_WRITE_MASKS: u32 = 0x10452;
/// established; sixteen operands: rows 31 down to 16 of the 32 by 32 polygon stipple.
pub const CMD_STIPPLE_ROWS_HI: u32 = 0x13c4e;
/// established; sixteen operands: rows 15 down to 0.
pub const CMD_STIPPLE_ROWS_LO: u32 = 0x13c4f;
/// established word; the operand's meaning is unknown.
pub const CMD_STIPPLE_MODE: u32 = 0x1043f;
/// established; two operands: slot in bits 18:12 with the low bits 0xf, then 0.
pub const CMD_CONTEXT_SELECT: u32 = 0x10850;
/// established; two operands, part of the clip push, fields unknown.
pub const CMD_CLIP_ORIGIN_PAIR: u32 = 0x10840;
/// established; two operands: draw drawable x and y in the low 13 bits.
pub const CMD_DRAWABLE_ORIGIN: u32 = 0x10841;
/// established word; two operands, role inferred.
pub const CMD_LINE_POINT_SIZE: u32 = 0x1084a;
/// established; five operands, sent ahead of a rectangle copy.
pub const CMD_RECT_COPY: u32 = 0x11453;
/// established; one operand, sent before a rectangle copy and DMA transfers.
pub const CMD_DMA_PRELUDE: u32 = 0x10658;
/// established; bit 14 set, id 0, one operand: the primitive type.
pub const CMD_PRIM_BEGIN: u32 = 0x14400;
/// established; no operand.
pub const CMD_PRIM_END: u32 = 0x14001;
/// established.
pub const CMD_POSTFILTER_M1_0: u32 = 0x12030;
/// established.
pub const CMD_POSTFILTER_M1_1: u32 = 0x12031;
/// established.
pub const CMD_POSTFILTER_M1_2: u32 = 0x12032;
/// established.
pub const CMD_POSTFILTER_M1_3: u32 = 0x12033;
/// established; two operands, identity scale 0x1000 and bias 0 by default.
pub const CMD_POSTFILTER_M3: u32 = 0x1083d;
/// established; sixteen operands.
pub const CMD_REGION_ONE_BLOCK: u32 = 0x13c38;
/// established; sixteen operands.
pub const CMD_REGION_BLOCK_0: u32 = 0x13c28;
/// established; sixteen operands.
pub const CMD_REGION_BLOCK_1: u32 = 0x13c29;
/// established; sixteen operands.
pub const CMD_REGION_BLOCK_2: u32 = 0x13c2a;
/// established; sixteen operands.
pub const CMD_REGION_BLOCK_3: u32 = 0x13c2b;
/// established; one operand.
pub const CMD_BLK_01F: u32 = 0x1041f;
/// established; two operands, image-chain set-up.
pub const CMD_BLK_042: u32 = 0x10842;
/// established; six operands, only zeros are ever sent.
pub const CMD_BLK_047: u32 = 0x11847;
/// established; one operand.
pub const CMD_BLK_04C: u32 = 0x1044c;
/// established; sixteen operands.
pub const CMD_BLK_04D: u32 = 0x13c4d;
/// established; one operand: bit 0 and bit 1 are set from vertex pre-clip class and a reversed depth range (roles inferred).
pub const CMD_BLK_051: u32 = 0x10451;
/// established; one operand.
pub const CMD_BLK_056: u32 = 0x10456;
/// established; one operand.
pub const CMD_BLK_057: u32 = 0x10457;
/// established.
pub const RASTER_ENABLE_POINT_SMOOTH: u32 = 1;
/// established.
pub const RASTER_ENABLE_LINE_SMOOTH: u32 = 2;
/// established.
pub const RASTER_ENABLE_POLYGON_SMOOTH: u32 = 4;
/// established.
pub const RASTER_ENABLE_LINE_STIPPLE: u32 = 8;
/// established.
pub const RASTER_ENABLE_POLYGON_STIPPLE: u32 = 16;
/// established.
pub const RASTER_ENABLE_OFFSET_POINT: u32 = 32;
/// established.
pub const RASTER_ENABLE_OFFSET_LINE: u32 = 64;
/// established.
pub const RASTER_ENABLE_OFFSET_FILL: u32 = 128;
/// inferred.
pub const RASTER_ENABLE_CULL: u32 = 0x100;
/// established.
pub const RASTER_ENABLE_CULL_BACK: u32 = 0x200;
/// established.
pub const RASTER_ENABLE_CULL_FRONT: u32 = 0x400;
/// inferred.
pub const RASTER_ENABLE_TWO_SIDE_LIGHT: u32 = 0x800;
/// established.
pub const RASTER_ENABLE_FLAT_SHADE: u32 = 0x1000;
/// established.
pub const RASTER_ENABLE_ALPHA_TEST: u32 = 0x4000;
/// inferred.
pub const RASTER_ENABLE_STENCIL_TEST: u32 = 0x8000;
/// inferred.
pub const RASTER_ENABLE_DEPTH_TEST: u32 = 0x10000;
/// inferred.
pub const RASTER_ENABLE_BLEND: u32 = 0x20000;
/// established.
pub const RASTER_ENABLE_DITHER: u32 = 0x40000;
/// established.
pub const RASTER_ENABLE_INDEX_LOGIC_OP: u32 = 0x80000;
/// established.
pub const RASTER_ENABLE_COLOUR_LOGIC_OP: u32 = 0x100000;
/// established.
pub const RASTER_ENABLE_FOG: u32 = 0x400000;
/// established.
pub const RASTER_ENABLE_FRONT_CW: u32 = 0x800000;
/// established.
pub const SAMPLER_IMAGE_DEFAULT: u32 = 0x3640000;

/// `op_texlevel(i)` is the opcode of descriptor `i`: `0x0e80` plus `i`.
pub const fn op_texlevel(i: u32) -> u32 {
    0x0e80 + i
}

/// Write header format code (bits 4:0).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum WriteFormat {
    /// GL_STENCIL_INDEX, GL_DEPTH_COMPONENT.
    DepthStencil,
    /// GL_COLOR_INDEX.
    Index,
    /// GL_LUMINANCE; GL_ALPHA into dest class 0/3.
    Luminance,
    /// GL_INTENSITY.
    Intensity,
    /// GL_RED.
    Red,
    /// GL_GREEN.
    Green,
    /// GL_BLUE.
    Blue,
    /// GL_ALPHA into other destination classes.
    Alpha,
    /// GL_LUMINANCE_ALPHA.
    LumAlpha,
    /// GL_RGB.
    Rgb,
    /// GL_RGBA; 0xc with packed REV types.
    Rgba,
    /// GL_ABGR_EXT; 0xb with 4_4_4_4_REV or 8_8_8_8_REV.
    Abgr,
    /// GL_BGR; 9 with 5_6_5_REV.
    Bgr,
    /// GL_BGRA; 0x10 with the four REV types.
    Bgra,
    /// A value the notes do not name.
    Other(u8),
}

impl WriteFormat {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::DepthStencil,
            0x1 => Self::Index,
            0x2 => Self::Luminance,
            0x3 => Self::Intensity,
            0x4 => Self::Red,
            0x5 => Self::Green,
            0x6 => Self::Blue,
            0x7 => Self::Alpha,
            0x8 => Self::LumAlpha,
            0x9 => Self::Rgb,
            0xb => Self::Rgba,
            0xc => Self::Abgr,
            0xd => Self::Bgr,
            0x11 => Self::Bgra,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::DepthStencil => 0x0,
            Self::Index => 0x1,
            Self::Luminance => 0x2,
            Self::Intensity => 0x3,
            Self::Red => 0x4,
            Self::Green => 0x5,
            Self::Blue => 0x6,
            Self::Alpha => 0x7,
            Self::LumAlpha => 0x8,
            Self::Rgb => 0x9,
            Self::Rgba => 0xb,
            Self::Abgr => 0xc,
            Self::Bgr => 0xd,
            Self::Bgra => 0x11,
            Self::Other(v) => v as u32,
        }
    }
}

/// Write header type code (bits 8:5).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum WriteType {
    /// GL_BYTE, GL_UNSIGNED_BYTE, 8_8_8_8 and REV.
    Byte,
    /// short types.
    Short,
    /// int types; the only depth/stencil source types.
    Int,
    /// UNSIGNED_BYTE_3_3_2 and 2_3_3_REV.
    Packed332,
    /// UNSIGNED_SHORT_4_4_4_4 and REV.
    Packed4444,
    /// UNSIGNED_SHORT_5_5_5_1 and REV.
    Packed5551,
    /// UNSIGNED_INT_10_10_10_2 and REV.
    Packed1010102,
    /// UNSIGNED_SHORT_5_6_5 and REV.
    Packed565,
    /// byte types into a 12-bit-per-channel dest.
    Byte12,
    /// 5_6_5 types into destination class 10.
    Packed565Class10,
    /// A value the notes do not name.
    Other(u8),
}

impl WriteType {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x2 => Self::Byte,
            0x3 => Self::Short,
            0x4 => Self::Int,
            0x5 => Self::Packed332,
            0x6 => Self::Packed4444,
            0x7 => Self::Packed5551,
            0x8 => Self::Packed1010102,
            0xa => Self::Packed565,
            0xb => Self::Byte12,
            0xc => Self::Packed565Class10,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Byte => 0x2,
            Self::Short => 0x3,
            Self::Int => 0x4,
            Self::Packed332 => 0x5,
            Self::Packed4444 => 0x6,
            Self::Packed5551 => 0x7,
            Self::Packed1010102 => 0x8,
            Self::Packed565 => 0xa,
            Self::Byte12 => 0xb,
            Self::Packed565Class10 => 0xc,
            Self::Other(v) => v as u32,
        }
    }
}

/// Pixel-size code (three bits, 18:16).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum PixelSize {
    /// 2 bytes - established.
    Bytes2,
    /// 4 bytes - established.
    Bytes4,
    /// 8 bytes - established.
    Bytes8,
    /// 16 bytes - established.
    Bytes16,
    /// 12 bytes - established.
    Bytes12,
    /// 1 byte - established.
    Bytes1,
    /// 6 bytes - established.
    Bytes6,
    /// 3 bytes - established.
    Bytes3,
    /// A value the notes do not name.
    Other(u8),
}

impl PixelSize {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Bytes2,
            0x1 => Self::Bytes4,
            0x2 => Self::Bytes8,
            0x3 => Self::Bytes16,
            0x4 => Self::Bytes12,
            0x5 => Self::Bytes1,
            0x6 => Self::Bytes6,
            0x7 => Self::Bytes3,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Bytes2 => 0x0,
            Self::Bytes4 => 0x1,
            Self::Bytes8 => 0x2,
            Self::Bytes16 => 0x3,
            Self::Bytes12 => 0x4,
            Self::Bytes1 => 0x5,
            Self::Bytes6 => 0x6,
            Self::Bytes3 => 0x7,
            Self::Other(v) => v as u32,
        }
    }
}

/// Pixel-mode field format (bits 6:4).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum FieldFormat {
    /// classes 16, 17 (colour index).
    Index,
    /// classes 0-5: one channel.
    One,
    /// classes 6, 9: two channels.
    Two,
    /// classes 7, 10, 12, 13.
    Rgba,
    /// classes 8, 11: short alpha.
    RgbaShortA,
    /// A value the notes do not name.
    Other(u8),
}

impl FieldFormat {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Index,
            0x2 => Self::One,
            0x3 => Self::Two,
            0x5 => Self::Rgba,
            0x6 => Self::RgbaShortA,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Index => 0x0,
            Self::One => 0x2,
            Self::Two => 0x3,
            Self::Rgba => 0x5,
            Self::RgbaShortA => 0x6,
            Self::Other(v) => v as u32,
        }
    }
}

/// Sampler minification filter (bits 7:5).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum SamplerMin {
    /// established.
    Nearest,
    /// established.
    Linear,
    /// established.
    NearestMipNearest,
    /// established.
    LinearMipNearest,
    /// established.
    NearestMipLinear,
    /// established.
    LinearMipLinear,
    /// A value the notes do not name.
    Other(u8),
}

impl SamplerMin {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Nearest,
            0x1 => Self::Linear,
            0x2 => Self::NearestMipNearest,
            0x3 => Self::LinearMipNearest,
            0x4 => Self::NearestMipLinear,
            0x5 => Self::LinearMipLinear,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Nearest => 0x0,
            Self::Linear => 0x1,
            Self::NearestMipNearest => 0x2,
            Self::LinearMipNearest => 0x3,
            Self::NearestMipLinear => 0x4,
            Self::LinearMipLinear => 0x5,
            Self::Other(v) => v as u32,
        }
    }
}

/// Sampler magnification mode (bits 4:1).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum SamplerMag {
    /// established.
    Nearest,
    /// established.
    Linear,
    /// established.
    Detail,
    /// established.
    DetailAlpha,
    /// established.
    DetailColor,
    /// A value the notes do not name.
    Other(u8),
}

impl SamplerMag {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Nearest,
            0x1 => Self::Linear,
            0x2 => Self::Detail,
            0x3 => Self::DetailAlpha,
            0x4 => Self::DetailColor,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Nearest => 0x0,
            Self::Linear => 0x1,
            Self::Detail => 0x2,
            Self::DetailAlpha => 0x3,
            Self::DetailColor => 0x4,
            Self::Other(v) => v as u32,
        }
    }
}

/// Sampler wrap mode.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum SamplerWrap {
    /// established.
    Repeat,
    /// established: clamp to edge.
    Edge,
    /// established.
    Clamp,
    /// established: clamp to border.
    Border,
    /// A value the notes do not name.
    Other(u8),
}

impl SamplerWrap {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Repeat,
            0x1 => Self::Edge,
            0x2 => Self::Clamp,
            0x3 => Self::Border,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Repeat => 0x0,
            Self::Edge => 0x1,
            Self::Clamp => 0x2,
            Self::Border => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Image header word 0: board reference.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ImageWord0(u32);

impl ImageWord0 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 28:0, established.
    pub const fn ref_(self) -> u32 {
        self.0 & 0x1fffffff
    }

    /// Bit 29, established.
    pub const fn window_rel(self) -> bool {
        (self.0 >> 29) & 1 != 0
    }

    /// Bits 31:30, inferred.
    pub const fn kept(self) -> u32 {
        self.0 >> 30
    }
}

/// Image header word 1: x and y of the smaller corner.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ImageWord1(u32);

impl ImageWord1 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:0, established.
    pub const fn x(self) -> u32 {
        self.0 & 0xffff
    }

    /// Bits 31:16, established.
    pub const fn y(self) -> u32 {
        self.0 >> 16
    }
}

/// Image header word 3: width and height.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ImageWord3(u32);

impl ImageWord3 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:0, established.
    pub const fn width(self) -> u32 {
        self.0 & 0xffff
    }

    /// Bits 31:16, established.
    pub const fn height(self) -> u32 {
        self.0 >> 16
    }
}

/// Image header word 2: the window word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ImageWord2(u32);

impl ImageWord2 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn window_word(self) -> u32 {
        self.0 & 0xfff
    }
}

/// Image header word 6: row bytes.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ImageWord6(u32);

impl ImageWord6 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 19:0, established.
    pub const fn row_bytes(self) -> u32 {
        self.0 & 0xfffff
    }
}

/// Image header word 4: class and code, field geometry, pixel size.
/// The read header's word 4, and the COPY source description.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ReadHeader(u32);

impl ReadHeader {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 2:0, established.
    pub const fn class(self) -> u32 {
        self.0 & 0x7
    }

    /// Bits 7:3, established.
    pub const fn code(self) -> u32 {
        (self.0 >> 3) & 0x1f
    }

    /// Bit 12, established.
    pub const fn bit12(self) -> bool {
        (self.0 >> 12) & 1 != 0
    }

    /// Bits 15:13, established.
    pub const fn size_field(self) -> u32 {
        (self.0 >> 13) & 0x7
    }

    /// Bits 18:16, inferred.
    pub const fn pixel_size(self) -> PixelSize {
        PixelSize::from_bits((self.0 >> 16) & 0x7)
    }

    /// Bit 19, unknown.
    pub const fn pixel_size_b19(self) -> bool {
        (self.0 >> 19) & 1 != 0
    }

    /// Bits 23:20, established.
    pub const fn field_a(self) -> u32 {
        (self.0 >> 20) & 0xf
    }

    /// Bits 27:24, established.
    pub const fn field_b(self) -> u32 {
        (self.0 >> 24) & 0xf
    }

    /// Bit 28, established.
    pub const fn drawable(self) -> bool {
        (self.0 >> 28) & 1 != 0
    }

    /// Bit 31, established.
    pub const fn front(self) -> bool {
        (self.0 >> 31) & 1 != 0
    }
}

/// Image header word 7: format, type, size and path control.
/// The write header's word 7, and the COPY destination control.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct WriteHeader(u32);

impl WriteHeader {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 4:0, established.
    pub const fn format(self) -> WriteFormat {
        WriteFormat::from_bits(self.0 & 0x1f)
    }

    /// Bits 8:5, established.
    pub const fn type_(self) -> WriteType {
        WriteType::from_bits((self.0 >> 5) & 0xf)
    }

    /// Bit 9, established.
    pub const fn expand(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bit 10, inferred.
    pub const fn swap(self) -> bool {
        (self.0 >> 10) & 1 != 0
    }

    /// Bits 15:13, established.
    pub const fn size_field(self) -> u32 {
        (self.0 >> 13) & 0x7
    }

    /// Bits 18:16, established.
    pub const fn psize(self) -> PixelSize {
        PixelSize::from_bits((self.0 >> 16) & 0x7)
    }

    /// Bit 24, established.
    pub const fn read_dir(self) -> bool {
        (self.0 >> 24) & 1 != 0
    }

    /// Bit 27, established.
    pub const fn transform(self) -> bool {
        (self.0 >> 27) & 1 != 0
    }

    /// Bit 30, established.
    pub const fn differs(self) -> bool {
        (self.0 >> 30) & 1 != 0
    }
}

/// COPY operand 2: the two window words and the destination's second field code.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CopyMixed(u32);

impl CopyMixed {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn src_window(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 15:12, established.
    pub const fn dst_field_b(self) -> u32 {
        (self.0 >> 12) & 0xf
    }

    /// Bits 27:16, established.
    pub const fn dst_window(self) -> u32 {
        (self.0 >> 16) & 0xfff
    }

    /// Bit 31, established.
    pub const fn dst_front(self) -> bool {
        (self.0 >> 31) & 1 != 0
    }
}

/// COPY operand 7 beyond the write header: flags set around the walk.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CopyControl(u32);

impl CopyControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 23:20, established.
    pub const fn dst_field_a(self) -> u32 {
        (self.0 >> 20) & 0xf
    }

    /// Bits 19:16, established.
    pub const fn size_code(self) -> u32 {
        (self.0 >> 16) & 0xf
    }

    /// Bits 29:28, inferred.
    pub const fn clamp_off(self) -> u32 {
        (self.0 >> 28) & 0x3
    }

    /// Bit 30, inferred.
    pub const fn dst_y_in_src(self) -> bool {
        (self.0 >> 30) & 1 != 0
    }

    /// Bit 31, inferred.
    pub const fn dst_x_in_src(self) -> bool {
        (self.0 >> 31) & 1 != 0
    }
}

/// A scale or bias word of the post-filter block.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct PostFilterWord(u32);

impl PostFilterWord {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:0, established.
    pub const fn value(self) -> u32 {
        self.0 & 0xffff
    }
}

/// Pixel-mode descriptor, second word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct PixelModeW1(u32);

impl PixelModeW1 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 6:4, established.
    pub const fn field_format(self) -> FieldFormat {
        FieldFormat::from_bits((self.0 >> 4) & 0x7)
    }

    /// Bits 9:7, established.
    pub const fn layout(self) -> u32 {
        (self.0 >> 7) & 0x7
    }

    /// Bits 12:10, established.
    pub const fn storage(self) -> u32 {
        (self.0 >> 10) & 0x7
    }

    /// Bits 15:13, established.
    pub const fn size_field(self) -> u32 {
        (self.0 >> 13) & 0x7
    }

    /// Bit 19, established.
    pub const fn index_class(self) -> bool {
        (self.0 >> 19) & 1 != 0
    }

    /// Bit 21, unknown.
    pub const fn bit21(self) -> bool {
        (self.0 >> 21) & 1 != 0
    }

    /// Bit 22, inferred.
    pub const fn storage3(self) -> bool {
        (self.0 >> 22) & 1 != 0
    }

    /// Bit 27, unknown.
    pub const fn bit27(self) -> bool {
        (self.0 >> 27) & 1 != 0
    }
}

/// Pixel-mode descriptor, first word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct PixelModeW0(u32);

impl PixelModeW0 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn window_word(self) -> u32 {
        self.0 & 0xfff
    }
}

/// Texture level descriptor, word 0.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct TexLevelW0(u32);

impl TexLevelW0 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 28:0, established.
    pub const fn addr(self) -> u32 {
        self.0 & 0x1fffffff
    }

    /// Bits 31:29, unknown.
    pub const fn kept(self) -> u32 {
        self.0 >> 29
    }
}

/// Texture level descriptor, word 1.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct TexLevelW1(u32);

impl TexLevelW1 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn pitch(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 25:20, established.
    pub const fn format_index(self) -> u32 {
        (self.0 >> 20) & 0x3f
    }

    /// Bits 28:26, established.
    pub const fn offset_code(self) -> u32 {
        (self.0 >> 26) & 0x7
    }

    /// Bits 31:30, established.
    pub const fn size_code(self) -> u32 {
        self.0 >> 30
    }
}

/// Texture level descriptor, word 2.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct TexLevelW2(u32);

impl TexLevelW2 {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn bits(self) -> u32 {
        self.0 & 0xfff
    }
}

/// The sampler word: operand 4 of the texture-mode block.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct SamplerWord(u32);

impl SamplerWord {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 0, established.
    pub const fn colour_table(self) -> bool {
        self.0 & 1 != 0
    }

    /// Bits 4:1, established.
    pub const fn mag(self) -> SamplerMag {
        SamplerMag::from_bits((self.0 >> 1) & 0xf)
    }

    /// Bits 7:5, established.
    pub const fn min(self) -> SamplerMin {
        SamplerMin::from_bits((self.0 >> 5) & 0x7)
    }

    /// Bits 9:8, established.
    pub const fn wrap_r(self) -> SamplerWrap {
        SamplerWrap::from_bits((self.0 >> 8) & 0x3)
    }

    /// Bits 11:10, established.
    pub const fn wrap_t(self) -> SamplerWrap {
        SamplerWrap::from_bits((self.0 >> 10) & 0x3)
    }

    /// Bits 13:12, established.
    pub const fn wrap_s(self) -> SamplerWrap {
        SamplerWrap::from_bits((self.0 >> 12) & 0x3)
    }

    /// Bit 14, established.
    pub const fn image_flag14(self) -> bool {
        (self.0 >> 14) & 1 != 0
    }

    /// Bit 17, established.
    pub const fn trilinear(self) -> bool {
        (self.0 >> 17) & 1 != 0
    }

    /// Bit 18, established.
    pub const fn image_flag18(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }

    /// Bits 22:20, established.
    pub const fn table_fmt(self) -> u32 {
        (self.0 >> 20) & 0x7
    }

    /// Bits 25:23, established.
    pub const fn activation(self) -> u32 {
        (self.0 >> 23) & 0x7
    }

    /// Bit 28, established.
    pub const fn no_offset(self) -> bool {
        (self.0 >> 28) & 1 != 0
    }
}

/// The `ALPHA_TEST` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct AlphaTest(u32);

impl AlphaTest {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 11:0, established.
    pub const fn reference(self) -> u32 {
        self.0 & 0xfff
    }

    /// Bits 14:12, established.
    pub const fn func(self) -> u32 {
        (self.0 >> 12) & 0x7
    }
}

/// The `FRAME_PIXEL` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct FramePixel(u32);

impl FramePixel {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 7:0, established.
    pub const fn alpha(self) -> u32 {
        self.0 & 0xff
    }

    /// Bits 15:8, established.
    pub const fn blue(self) -> u32 {
        (self.0 >> 8) & 0xff
    }

    /// Bits 23:16, established.
    pub const fn green(self) -> u32 {
        (self.0 >> 16) & 0xff
    }

    /// Bits 31:24, established.
    pub const fn red(self) -> u32 {
        self.0 >> 24
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_hdr_w7_41() {
        let w = WriteHeader::new(0x41);
        assert_eq!(w.format().bits(), 1, "format");
        assert_eq!(w.type_().bits(), 2, "type");
        assert_eq!(w.expand() as u32, 0, "expand");
    }

    #[test]
    fn testvec_hdr_w7_42() {
        let w = WriteHeader::new(0x42);
        assert_eq!(w.format().bits(), 2, "format");
        assert_eq!(w.type_().bits(), 2, "type");
        assert_eq!(w.expand() as u32, 0, "expand");
    }

    #[test]
    fn testvec_hdr_w7_4b() {
        let w = WriteHeader::new(0x4b);
        assert_eq!(w.format().bits(), 11, "format");
        assert_eq!(w.type_().bits(), 2, "type");
        assert_eq!(w.expand() as u32, 0, "expand");
    }

    #[test]
    fn testvec_hdr_w7_61() {
        let w = WriteHeader::new(0x61);
        assert_eq!(w.format().bits(), 1, "format");
        assert_eq!(w.type_().bits(), 3, "type");
        assert_eq!(w.expand() as u32, 0, "expand");
    }

    #[test]
    fn testvec_hdr_w7_6b() {
        let w = WriteHeader::new(0x6b);
        assert_eq!(w.format().bits(), 11, "format");
        assert_eq!(w.type_().bits(), 3, "type");
        assert_eq!(w.expand() as u32, 0, "expand");
    }

    #[test]
    fn testvec_hdr_w7_16c() {
        let w = WriteHeader::new(0x16c);
        assert_eq!(w.format().bits(), 12, "format");
        assert_eq!(w.type_().bits(), 11, "type");
        assert_eq!(w.expand() as u32, 0, "expand");
    }

    #[test]
    fn testvec_hdr_w7_32050041() {
        let w = WriteHeader::new(0x32050041);
        assert_eq!(w.format().bits(), 1, "format");
        assert_eq!(w.type_().bits(), 2, "type");
        assert_eq!(w.psize().bits(), 5, "psize");
        assert_eq!(w.read_dir() as u32, 0, "read_dir");
        assert_eq!(w.transform() as u32, 0, "transform");
        assert_eq!(w.differs() as u32, 0, "differs");
    }

    #[test]
    fn testvec_hdr_w4_8() {
        let w = ReadHeader::new(0x8);
        assert_eq!(w.class(), 0, "class");
        assert_eq!(w.code(), 1, "code");
    }

    #[test]
    fn testvec_hdr_w4_83331008() {
        let w = ReadHeader::new(0x83331008);
        assert_eq!(w.class(), 0, "class");
        assert_eq!(w.code(), 1, "code");
        assert_eq!(w.bit12() as u32, 1, "bit12");
        assert_eq!(w.size_field(), 0, "size_field");
        assert_eq!(w.pixel_size().bits(), 3, "pixel_size");
        assert_eq!(w.field_a(), 3, "field_a");
        assert_eq!(w.field_b(), 3, "field_b");
        assert_eq!(w.drawable() as u32, 0, "drawable");
        assert_eq!(w.front() as u32, 1, "front");
    }

    #[test]
    fn testvec_sampler_82() {
        let w = SamplerWord::new(0x82);
        assert_eq!(w.colour_table() as u32, 0, "colour_table");
        assert_eq!(w.mag().bits(), 1, "mag");
        assert_eq!(w.min().bits(), 4, "min");
    }

    #[test]
    fn testvec_alpha_test_3800() {
        let w = AlphaTest::new(0x3800);
        assert_eq!(w.func(), 3, "func");
        assert_eq!(w.reference(), 2048, "reference");
    }

    #[test]
    fn testvec_frame_pixel_8099b3ff() {
        let w = FramePixel::new(0x8099b3ff);
        assert_eq!(w.red(), 128, "red");
        assert_eq!(w.green(), 153, "green");
        assert_eq!(w.blue(), 179, "blue");
        assert_eq!(w.alpha(), 255, "alpha");
    }

    #[test]
    fn testvec_sampler_3640000() {
        let w = SamplerWord::new(0x3640000);
        assert_eq!(w.colour_table() as u32, 0, "colour_table");
        assert_eq!(w.mag().bits(), 0, "mag");
        assert_eq!(w.min().bits(), 0, "min");
        assert_eq!(w.image_flag18() as u32, 1, "image_flag18");
        assert_eq!(w.table_fmt(), 6, "table_fmt");
        assert_eq!(w.activation(), 6, "activation");
        assert_eq!(w.no_offset() as u32, 0, "no_offset");
    }
}
