// generated from odsy cc82edb1b264 ODSY_DECODE.h - do not edit, regenerate in odsy
//!
//! Board identity on the crossbar, the register positions of the board
//! window, and the identity, strap and memory-configuration words.
//!
//! Grades on each item say what is known about it: `established` is what the
//! shipped driver software does, read in full; `inferred` is a reasoned
//! reading; `unknown` is not derived. None of them is a measurement of the
//! silicon.

#![allow(dead_code)]

/// established.
pub const WIDGET_MFR: u32 = 35;
/// established.
pub const WIDGET_PART: u32 = 0xc013;
/// established.
pub const PIO_WINDOW_BYTES: u32 = 0x401000;
/// established.
pub const BOARD_WIDGET_ID: u32 = 4;
/// established.
pub const BOARD_WIDGET_STATUS: u32 = 12;
/// established.
pub const BOARD_ERR_ADDR_HI: u32 = 20;
/// established.
pub const BOARD_ERR_ADDR_LO: u32 = 28;
/// established.
pub const BOARD_WIDGET_CONTROL: u32 = 36;
/// established.
pub const BOARD_INTR_DEST_HI: u32 = 52;
/// established.
pub const BOARD_INTR_DEST_LO: u32 = 60;
/// established.
pub const BOARD_ERR_COMMAND: u32 = 68;
/// inferred.
pub const BOARD_XBAR_INTR_CONFIG: u32 = 92;
/// established.
pub const BOARD_SDRAM_CONFIG: u32 = 0x1004;
/// inferred.
pub const BOARD_ABORT: u32 = 0x100c;
/// established.
pub const BOARD_FLAGS: u32 = 0x1014;
/// established.
pub const BOARD_FLAG_CLEAR: u32 = 0x101c;
/// established.
pub const BOARD_FLAG_INTR_ENABLE: u32 = 0x1034;
/// established.
pub const BOARD_FLAG_INTR_DISABLE: u32 = 0x103c;
/// established.
pub const BOARD_INTR_CTL_HI: u32 = 0x1044;
/// established.
pub const BOARD_INTR_CTL_LO: u32 = 0x104c;
/// established.
pub const BOARD_INTR_VECTOR: u32 = 0x1054;
/// inferred.
pub const BOARD_INTR_HEADER: u32 = 0x105c;
/// established.
pub const BOARD_STATUS0: u32 = 0x1064;
/// established.
pub const BOARD_LEVELS_STRAPS: u32 = 0x106c;
/// established.
pub const BOARD_FLOW_CONFIG: u32 = 0x1074;
/// inferred.
pub const BOARD_FLOW_OFF: u32 = 0x107c;
/// established.
pub const BOARD_FLOW_CLEAR: u32 = 0x1084;
/// established, label only.
pub const BOARD_SCAN_CONFIG: u32 = 0x108c;
/// established, label only.
pub const BOARD_SCAN_ADDR_HI: u32 = 0x109c;
/// established, label only.
pub const BOARD_SCAN_ADDR_LO: u32 = 0x10a4;
/// established, label only.
pub const BOARD_SCAN_GO: u32 = 0x10ac;
/// inferred.
pub const BOARD_SWAP_TRIGGER: u32 = 0x10b4;
/// inferred.
pub const BOARD_SWAP_TIMING: u32 = 0x10bc;
/// inferred.
pub const BOARD_BUFFER_B_SET: u32 = 0x10c4;
/// established.
pub const BOARD_BUFFER_B_CLEAR: u32 = 0x10cc;
/// inferred.
pub const BOARD_BUFFER_B_STATE: u32 = 0x10d4;
/// established.
pub const BOARD_CTX_SAVE_ADDR_HI: u32 = 0x4004;
/// established.
pub const BOARD_CTX_SAVE_ADDR_LO: u32 = 0x400c;
/// established.
pub const BOARD_MASTER_ID_A: u32 = 0x4014;
/// established.
pub const BOARD_STATS_ADDR_HI: u32 = 0x401c;
/// established.
pub const BOARD_STATS_ADDR_LO: u32 = 0x4024;
/// established.
pub const BOARD_STATS_CONTROL: u32 = 0x402c;
/// established.
pub const BOARD_SHADOW_ADDR_HI: u32 = 0x4034;
/// established.
pub const BOARD_SHADOW_ADDR_LO: u32 = 0x403c;
/// established.
pub const BOARD_MASTER_ID_B: u32 = 0x4044;
/// established.
pub const BOARD_CMD_FIFO_PORT: u32 = 0x110000;
/// established.
pub const BOARD_CTX_SAVE_PORT: u32 = 0x118000;
/// inferred.
pub const BOARD_CMD_WINDOW_2: u32 = 0x120000;
/// established.
pub const BOARD_DISPLAY_FIFO_PORT: u32 = 0x400000;
/// established.
pub const REV_TYPE_B_BIAS: u32 = 8;
/// established.
pub const WIDGET_ID_TYPE_A_FIRST: u32 = 1;
/// established.
pub const WIDGET_ID_TYPE_A_LAST: u32 = 3;
/// established.
pub const WIDGET_ID_TYPE_B_FIRST: u32 = 9;
/// established.
pub const WIDGET_ID_TYPE_B_LAST: u32 = 15;
/// established.
pub const MASTER_ID_CODE_VALUE: u32 = 18;
/// established.
pub const RGBA12_MIN_MEMORY_MB: u32 = 128;

/// Values of `sdram_size` in `Strap` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum StrapSdramSize {
    /// established.
    Mb32,
    /// established.
    Mb64,
    /// established.
    Mb128,
    /// established.
    Mb32Alt,
    /// A value the notes do not name.
    Other(u8),
}

impl StrapSdramSize {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Mb32,
            0x1 => Self::Mb64,
            0x2 => Self::Mb128,
            0x3 => Self::Mb32Alt,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Mb32 => 0x0,
            Self::Mb64 => 0x1,
            Self::Mb128 => 0x2,
            Self::Mb32Alt => 0x3,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `banks` in `Strap` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum StrapBanks {
    /// established.
    Two,
    /// established.
    Four,
    /// A value the notes do not name.
    Other(u8),
}

impl StrapBanks {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Two,
            0x1 => Self::Four,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Two => 0x0,
            Self::Four => 0x1,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `cas` in `Strap` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum StrapCas {
    /// established.
    Cas3,
    /// established.
    Cas2,
    /// A value the notes do not name.
    Other(u8),
}

impl StrapCas {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Cas3,
            0x1 => Self::Cas2,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Cas3 => 0x0,
            Self::Cas2 => 0x1,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `size` in `SdramCfg` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum SdramCfgSize {
    /// established.
    Mb32,
    /// established.
    Mb64,
    /// established.
    Mb128,
    /// A value the notes do not name.
    Other(u8),
}

impl SdramCfgSize {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Mb32,
            0x1 => Self::Mb64,
            0x2 => Self::Mb128,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Mb32 => 0x0,
            Self::Mb64 => 0x1,
            Self::Mb128 => 0x2,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `banks` in `SdramCfg` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum SdramCfgBanks {
    /// established.
    Two,
    /// established.
    Four,
    /// A value the notes do not name.
    Other(u8),
}

impl SdramCfgBanks {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Two,
            0x1 => Self::Four,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Two => 0x0,
            Self::Four => 0x1,
            Self::Other(v) => v as u32,
        }
    }
}

/// Values of `cas` in `SdramCfg` that the header names.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum SdramCfgCas {
    /// established.
    Cas3,
    /// established.
    Cas2,
    /// A value the notes do not name.
    Other(u8),
}

impl SdramCfgCas {
    pub const fn from_bits(v: u32) -> Self {
        match v {
            0x0 => Self::Cas3,
            0x1 => Self::Cas2,
            _ => Self::Other(v as u8),
        }
    }

    pub const fn bits(self) -> u32 {
        match self {
            Self::Cas3 => 0x0,
            Self::Cas2 => 0x1,
            Self::Other(v) => v as u32,
        }
    }
}

/// The `WIDGET_ID` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct WidgetId(u32);

impl WidgetId {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 31, inferred.
    pub const fn variant(self) -> bool {
        (self.0 >> 31) & 1 != 0
    }

    /// Bits 30:28, inferred.
    pub const fn revision(self) -> u32 {
        (self.0 >> 28) & 0x7
    }
}

/// The `WIDGET_CONTROL` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct WidgetControl(u32);

impl WidgetControl {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 9, established.
    pub const fn big_endian(self) -> bool {
        (self.0 >> 9) & 1 != 0
    }

    /// Bits 15:12, established.
    pub const fn credit(self) -> u32 {
        (self.0 >> 12) & 0xf
    }
}

/// The `MASTER_ID` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct MasterId(u32);

impl MasterId {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 15:0, established.
    pub const fn code(self) -> u32 {
        self.0 & 0xffff
    }

    /// Bit 18, established.
    pub const fn bit18(self) -> bool {
        (self.0 >> 18) & 1 != 0
    }

    /// Bits 23:20, established.
    pub const fn master(self) -> u32 {
        (self.0 >> 20) & 0xf
    }

    /// Bit 24, established.
    pub const fn bit24(self) -> bool {
        (self.0 >> 24) & 1 != 0
    }
}

/// The `STRAP` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Strap(u32);

impl Strap {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bits 31:30, established.
    pub const fn sdram_size(self) -> StrapSdramSize {
        StrapSdramSize::from_bits(self.0 >> 30)
    }

    /// Bit 29, established.
    pub const fn banks(self) -> StrapBanks {
        StrapBanks::from_bits((self.0 >> 29) & 0x1)
    }

    /// Bit 28, established.
    pub const fn cas(self) -> StrapCas {
        StrapCas::from_bits((self.0 >> 28) & 0x1)
    }

    /// Bits 27:24, established.
    pub const fn board_rev(self) -> u32 {
        (self.0 >> 24) & 0xf
    }

    /// Bits 15:7, established.
    pub const fn command_level(self) -> u32 {
        (self.0 >> 7) & 0x1ff
    }

    /// Bits 6:0, established.
    pub const fn display_level(self) -> u32 {
        self.0 & 0x7f
    }
}

/// The `SDRAM_CFG` word.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct SdramCfg(u32);

impl SdramCfg {
    pub const fn new(word: u32) -> Self {
        Self(word)
    }

    pub const fn raw(self) -> u32 {
        self.0
    }

    /// Bit 1, established.
    pub const fn cas(self) -> SdramCfgCas {
        SdramCfgCas::from_bits((self.0 >> 1) & 0x1)
    }

    /// Bit 2, established.
    pub const fn banks(self) -> SdramCfgBanks {
        SdramCfgBanks::from_bits((self.0 >> 2) & 0x1)
    }

    /// Bits 4:3, established.
    pub const fn size(self) -> SdramCfgSize {
        SdramCfgSize::from_bits((self.0 >> 3) & 0x3)
    }

    /// Bit 5, inferred.
    pub const fn reset(self) -> bool {
        (self.0 >> 5) & 1 != 0
    }

    /// Bit 8, inferred.
    pub const fn enable(self) -> bool {
        (self.0 >> 8) & 1 != 0
    }

    /// Bits 22:19, established.
    pub const fn host_id(self) -> u32 {
        (self.0 >> 19) & 0xf
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn testvec_widget_control_4200() {
        let w = WidgetControl::new(0x4200);
        assert_eq!(w.big_endian() as u32, 1, "big_endian");
        assert_eq!(w.credit(), 4, "credit");
    }
}
