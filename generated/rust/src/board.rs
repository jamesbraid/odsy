// generated from devices/board/registers.toml by defs-gen - do not edit, change the source
// VPro (Odyssey) graphics board: widget identity, board
#![allow(dead_code)]

/// (established)
pub mod host_flow_mode {
    pub const WIDTH: u32 = 32;
    pub mod owner_cpu1 { // bits 13:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod owner_cpu0 { // bits 11:10, established
        pub const SHIFT: u32 = 10;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod attach_cpu1 { // bits 9:9, established
        pub const SHIFT: u32 = 9;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod attach_cpu0 { // bits 8:8, established
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
/// (established)
pub mod master_id {
    pub const WIDTH: u32 = 32;
    pub mod bit24 { // bits 24:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod master { // bits 23:20, established
        pub const SHIFT: u32 = 20;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod bit18 { // bits 18:18, established
        pub const SHIFT: u32 = 18;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod code { // bits 15:0, established
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
pub mod sdram_cfg {
    pub const WIDTH: u32 = 32;
    pub mod host_id { // bits 22:19, established
        pub const SHIFT: u32 = 19;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod enable { // bits 8:8, inferred
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod reset { // bits 5:5, inferred
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod size { // bits 4:3, established
        pub const SHIFT: u32 = 3;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const MB32: u32 = 0; // established
        pub const MB64: u32 = 1; // established
        pub const MB128: u32 = 2; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Mb32,
            Mb64,
            Mb128,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Mb32,
                    1 => Self::Mb64,
                    2 => Self::Mb128,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Mb32 => 0,
                    Self::Mb64 => 1,
                    Self::Mb128 => 2,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod banks { // bits 2:2, established
        pub const SHIFT: u32 = 2;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const TWO: u32 = 0; // established
        pub const FOUR: u32 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Two,
            Four,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Two,
                    1 => Self::Four,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Two => 0,
                    Self::Four => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod cas { // bits 1:1, established
        pub const SHIFT: u32 = 1;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const CAS3: u32 = 0; // established
        pub const CAS2: u32 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Cas3,
            Cas2,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Cas3,
                    1 => Self::Cas2,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Cas3 => 0,
                    Self::Cas2 => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
}
/// (established)
pub mod stats_ctl {
    pub const WIDTH: u32 = 32;
    pub mod fixed_top { // bits 31:31, established
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod fixed_mid { // bits 27:27, established
        pub const SHIFT: u32 = 27;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod select { // bits 10:8, established
        pub const SHIFT: u32 = 8;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod flag_c { // bits 6:6, established
        pub const SHIFT: u32 = 6;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod flag_b { // bits 5:5, established
        pub const SHIFT: u32 = 5;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod flag_a { // bits 4:4, established
        pub const SHIFT: u32 = 4;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod size_exp { // bits 3:0, established
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
/// (inferred)
pub mod strap {
    pub const WIDTH: u32 = 32;
    pub mod sdram_size { // bits 31:30, established
        pub const SHIFT: u32 = 30;
        pub const MASK: u32 = 0x3;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const MB32: u32 = 0; // established
        pub const MB64: u32 = 1; // established
        pub const MB128: u32 = 2; // established
        pub const MB32_ALT: u32 = 3; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Mb32,
            Mb64,
            Mb128,
            Mb32Alt,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Mb32,
                    1 => Self::Mb64,
                    2 => Self::Mb128,
                    3 => Self::Mb32Alt,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Mb32 => 0,
                    Self::Mb64 => 1,
                    Self::Mb128 => 2,
                    Self::Mb32Alt => 3,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod banks { // bits 29:29, established
        pub const SHIFT: u32 = 29;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const TWO: u32 = 0; // established
        pub const FOUR: u32 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Two,
            Four,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Two,
                    1 => Self::Four,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Two => 0,
                    Self::Four => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod cas { // bits 28:28, established
        pub const SHIFT: u32 = 28;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
        pub const CAS3: u32 = 0; // established
        pub const CAS2: u32 = 1; // established
        #[derive(Debug, Clone, Copy, PartialEq, Eq)]
        pub enum Value {
            Cas3,
            Cas2,
            Other(u32),
        }
        impl Value {
            pub const fn from_raw(v: u32) -> Self {
                match v {
                    0 => Self::Cas3,
                    1 => Self::Cas2,
                    _ => Self::Other(v),
                }
            }
            pub const fn raw(self) -> u32 {
                match self {
                    Self::Cas3 => 0,
                    Self::Cas2 => 1,
                    Self::Other(v) => v,
                }
            }
        }
    }
    pub mod board_rev { // bits 27:24, established
        pub const SHIFT: u32 = 24;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod command_level { // bits 15:7, inferred
        pub const SHIFT: u32 = 7;
        pub const MASK: u32 = 0x1ff;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod display_level { // bits 6:0, established
        pub const SHIFT: u32 = 0;
        pub const MASK: u32 = 0x7f;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
/// (established)
pub mod widget_control {
    pub const WIDTH: u32 = 32;
    pub mod credit { // bits 15:12, established
        pub const SHIFT: u32 = 12;
        pub const MASK: u32 = 0xf;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod big_endian { // bits 9:9, established
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
/// (inferred)
pub mod widget_id {
    pub const WIDTH: u32 = 32;
    pub mod variant { // bits 31:31, inferred
        pub const SHIFT: u32 = 31;
        pub const MASK: u32 = 0x1;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
    pub mod revision { // bits 30:28, inferred
        pub const SHIFT: u32 = 28;
        pub const MASK: u32 = 0x7;
        pub const fn get(v: u32) -> u32 {
            (v >> SHIFT) & MASK
        }
        pub const fn set(v: u32, x: u32) -> u32 {
            (v & !(MASK << SHIFT)) | ((x & MASK) << SHIFT)
        }
    }
}
pub const BOARD_ABORT: u32 = 0x100c; // inferred
pub const BOARD_BUFFER_B_CLEAR: u32 = 0x10cc; // established
pub const BOARD_BUFFER_B_SET: u32 = 0x10c4; // inferred
pub const BOARD_BUFFER_B_STATE: u32 = 0x10d4; // inferred
pub const BOARD_CMD_FIFO_PORT: u32 = 0x110000; // established
pub const BOARD_CMD_WINDOW_2: u32 = 0x120000; // inferred
pub const BOARD_CTX_SAVE_ADDR_HI: u32 = 0x4004; // established
pub const BOARD_CTX_SAVE_ADDR_LO: u32 = 0x400c; // established
pub const BOARD_CTX_SAVE_PORT: u32 = 0x118000; // established
pub const BOARD_DIAG_ADDR_HI: u32 = 0x404c; // inferred
pub const BOARD_DIAG_ADDR_LO: u32 = 0x4054; // inferred
pub const BOARD_DIAG_MODE: u32 = 0x405c; // inferred
pub const BOARD_DISPLAY_FIFO_PORT: u32 = 0x400000; // established
pub const BOARD_DISPLAY_ID_POS: u32 = 0x23380c; // established
pub const BOARD_DISPLAY_ID_VERSION_MASK: u32 = 0x7; // established
pub const BOARD_ERR_ADDR_HI: u32 = 0x14; // established
pub const BOARD_ERR_ADDR_LO: u32 = 0x1c; // established
pub const BOARD_ERR_COMMAND: u32 = 0x44; // established
pub const BOARD_FLAGS: u32 = 0x1014; // established
pub const BOARD_FLAG_CLEAR: u32 = 0x101c; // established
pub const BOARD_FLAG_INTR_DISABLE: u32 = 0x103c; // established
pub const BOARD_FLAG_INTR_ENABLE: u32 = 0x1034; // established
pub const BOARD_FLOW_CLEAR: u32 = 0x1084; // established
pub const BOARD_FLOW_CONFIG: u32 = 0x1074; // established
pub const BOARD_FLOW_OFF: u32 = 0x107c; // inferred
pub const BOARD_INTR_CTL_HI: u32 = 0x1044; // established
pub const BOARD_INTR_CTL_LO: u32 = 0x104c; // established
pub const BOARD_INTR_DEST_HI: u32 = 0x34; // established
pub const BOARD_INTR_DEST_LO: u32 = 0x3c; // established
pub const BOARD_INTR_HEADER: u32 = 0x105c; // inferred
pub const BOARD_INTR_VECTOR: u32 = 0x1054; // established
pub const BOARD_LEVELS_STRAPS: u32 = 0x106c; // established
pub const BOARD_MASTER_ID_A: u32 = 0x4014; // established
pub const BOARD_MASTER_ID_B: u32 = 0x4044; // established
pub const BOARD_REQ_TIMEOUT: u32 = 0x2c; // established
pub const BOARD_REQ_TIMEOUT_BITS: u32 = 0x14; // established
pub const BOARD_REQ_TIMEOUT_MASK: u32 = 0xfffff; // established
pub const BOARD_SCAN_ADDR_HI: u32 = 0x109c; // established
pub const BOARD_SCAN_ADDR_LO: u32 = 0x10a4; // established
pub const BOARD_SCAN_CONFIG: u32 = 0x108c; // established
pub const BOARD_SCAN_GO: u32 = 0x10ac; // established
pub const BOARD_SDRAM_CONFIG: u32 = 0x1004; // established
pub const BOARD_SHADOW_ADDR_HI: u32 = 0x4034; // established
pub const BOARD_SHADOW_ADDR_LO: u32 = 0x403c; // established
pub const BOARD_STARTUP_PROBE_POS: u32 = 0x201594; // established
pub const BOARD_STARTUP_PROBE_VALUE: u32 = 0x3d0046; // established
pub const BOARD_STATS_ADDR_HI: u32 = 0x401c; // established
pub const BOARD_STATS_ADDR_LO: u32 = 0x4024; // established
pub const BOARD_STATS_CONTROL: u32 = 0x402c; // established
pub const BOARD_STATUS0: u32 = 0x1064; // established
pub const BOARD_SWAP_TIMING: u32 = 0x10bc; // inferred
pub const BOARD_SWAP_TRIGGER: u32 = 0x10b4; // inferred
pub const BOARD_WIDGET_CONTROL: u32 = 0x24; // established
pub const BOARD_WIDGET_ID: u32 = 0x4; // established
pub const BOARD_WIDGET_STATUS: u32 = 0xc; // established
pub const BOARD_XBAR_INTR_CONFIG: u32 = 0x5c; // inferred
pub const HOST_FLOW_MODE_OFFSET: u32 = 0x40; // established
pub const MASTER_ID_CODE_VALUE: u32 = 0x12; // established
pub const PIO_WINDOW_BYTES: u32 = 0x401000; // established
pub const REV_TYPE_B_BIAS: u32 = 0x8; // established
pub const RGBA12_MIN_MEMORY_MB: u32 = 0x80; // established
pub const STATS_CTL_FIXED_BITS: u32 = 0x88000000; // established
pub const WIDGET_ID_TYPE_A_FIRST: u32 = 0x1; // established
pub const WIDGET_ID_TYPE_A_LAST: u32 = 0x3; // established
pub const WIDGET_ID_TYPE_B_FIRST: u32 = 0x9; // established
pub const WIDGET_ID_TYPE_B_LAST: u32 = 0xf; // established
pub const WIDGET_ID_TYPE_MASK: u32 = 0xf; // established
pub const WIDGET_ID_TYPE_SHIFT: u32 = 0x1c; // established
pub const WIDGET_MFR: u32 = 0x23; // established
pub const WIDGET_PART: u32 = 0xc013; // established

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn stats_ctl_88000000() {
        assert_eq!(stats_ctl::fixed_mid::get(0x88000000), 1);
        assert_eq!(stats_ctl::fixed_top::get(0x88000000), 1);
    }

    #[test]
    fn widget_control_4200() {
        assert_eq!(widget_control::big_endian::get(0x4200), 1);
        assert_eq!(widget_control::credit::get(0x4200), 4);
    }
}
