# Instruction readings from hostfacts

Each entry records selected software behavior from its exact binary range. The readings are established for those binaries and do not establish hardware behavior.

Skipped 55,342 located or understood rows and 51,000 named-only or undocumented rows outside this slice, including 881 without positive ranges, exact binary/member/routine entries, duplicate-address aliases, and lower-ranked routines.

- `__gl_swapbuffers` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec35460 (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec35460-0xec354d0 (112 bytes).
  Loads 4 bytes at abs 0xece2d38 (`lw` at 0xec3546c).
  Loads 4 bytes at sym(gl_wstatep) (`lw` at 0xec35478).
  Loads 4 bytes at [sym(gl_wstatep)] +0x114 (`lw` at 0xec35484).
  Loads 4 bytes at [[sym(gl_wstatep)]+276] +0x3c (`lw` at 0xec35488).
  Loads 4 bytes at [[[sym(gl_wstatep)]+276]+60] (`lw` at 0xec3548c).
  Loads 4 bytes at abs 0xece2420 (`lw` at 0xec35498).
  Loads 4 bytes at [sym(gl_wstatep)] +0xe0 (`lw` at 0xec3549c).
  Loads 4 bytes at abs 0xecdfb9c (gl_sstatep) (`lw` at 0xec354a0).
  Loads 4 bytes at [[sym(gl_wstatep)]+224] +0x8 (`lw` at 0xec354a4).
  Loads 4 bytes at [0xecdfb9c] +0x1c (`lw` at 0xec354a8).
  Loads 4 bytes at abs 0xece2584 (`lw` at 0xec354ac).
  Loads 4 bytes at [[0xecdfb9c]+28] +0x4 (`lw` at 0xec354b0).
  Calls `glXSwapBuffers` via got with a0=[[[0xecdfb9c]+28]+4], a1=[[[sym(gl_wstatep)]+224]+8], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec354b4).
  At `beql` at 0xec35490 (target 0xec354c4), taken when t8(=[[[[sym(gl_wstatep)]+276]+60]]) == at(=0x1) and falls through when t8(=[[[[sym(gl_wstatep)]+276]+60]]) != at(=0x1); its branch-likely delay slot `lw ra,28(sp)` at 0xec35494 runs only when taken and is annulled on fall-through.
  Returns v0 = ? (`jr` at 0xec354c8).

- `gl_i_swapbuffers` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec354d0 (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec354d0-0xec35528 (88 bytes).
  Loads 4 bytes at abs 0xece2424 (`lw` at 0xec354dc).
  Loads 4 bytes at abs 0xecdfba0 (gl_inMoveDraw) (`lw` at 0xec354e8).
  Loads 4 bytes at abs 0xece1568 (`lw` at 0xec354f8).
  Loads 4 bytes at abs 0xece01f4 (`lw` at 0xec35508).
  Calls `__iglooNCloseMoveDraw [0xec8fc4c]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec354fc).
  Calls `__gl_swapbuffers [0xec35460]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xec3550c).
  At `beq` at 0xec354f0 (target 0xec35508), taken when t6(=[0xecdfba0]) == 0 and falls through when t6(=[0xecdfba0]) != 0.
  Returns v0 = ret(__gl_swapbuffers), f0 = ret(__gl_swapbuffers) (`jr` at 0xec35520).

- `gl_c_swapbuffers` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec35528 (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec35528-0xec3559c (116 bytes).
  3 4-byte lw loads at abs 0xece0080, including `lw` at 0xec35534, `lw` at 0xec35554, `lw` at 0xec35568.
  Loads 4 bytes at abs 0xecdc244 (`lw` at 0xec35540).
  Loads 4 bytes at abs 0xece0fa0 (`lw` at 0xec35550).
  Stores 4 bytes from t7 at abs 0xecdc244 (`sw` at 0xec3556c).
  Loads 4 bytes at abs 0xece1eb8 (`lw` at 0xec35570).
  Loads 4 bytes at abs 0xece0200 (`lw` at 0xec35574).
  Calls `gl_intrptab_insert [0xec60290]` via register-constant with a0=0xecdc234, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec35558).
  Calls `gl_compile [0xecb41a0]` via register-constant with a0=0x2, a1=sp-8, a2=unknown, a3=unknown (`jalr` at 0xec35580).
  At `bne` at 0xec35548 (target 0xec35570), taken when t6(=[0xecdc244]) != 0 and falls through when t6(=[0xecdc244]) == 0.
  Returns v0 = ret(gl_compile), f0 = ret(gl_compile) (`jr` at 0xec35594).

- `gl_n_swapbuffers` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec3559c (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec3559c-0xec355f8 (92 bytes).
  Loads 4 bytes at abs 0xece2424 (`lw` at 0xec355a8).
  Loads 4 bytes at abs 0xecdfba0 (gl_inMoveDraw) (`lw` at 0xec355b4).
  Loads 4 bytes at abs 0xece1568 (`lw` at 0xec355c8).
  Loads 4 bytes at abs 0xece01f4 (`lw` at 0xec355d8).
  Calls `__iglooNCloseMoveDraw [0xec8fc4c]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec355cc).
  Calls `__gl_swapbuffers [0xec35460]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xec355dc).
  At `beq` at 0xec355c0 (target 0xec355d8), taken when t6(=[0xecdfba0]) == 0 and falls through when t6(=[0xecdfba0]) != 0.
  Returns v0 = a0, f0 = ret(__gl_swapbuffers) (`jr` at 0xec355f0).

- `gl_intrp_freefunc` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec36660 (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec36660-0xec366b4 (84 bytes).
  Loads 4 bytes at a0 +0xc (`lw` at 0xec3667c).
  Loads 4 bytes at abs 0xece0278 (`lw` at 0xec3668c).
  Loads 4 bytes at a0 +0x4 (`lw` at 0xec36694).
  Calls `gl_do_callfunc [0xec363d0]` via register-constant with a0=[a0+12], a1=[a0+4], a2=a0+16, a3=[a0+12] (`jalr` at 0xec36698).
  At `beql` at 0xec36684 (target 0xec366a8), taken when a3(=[a0+12]) == 0 and falls through when a3(=[a0+12]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xec36688 runs only when taken and is annulled on fall-through.
  Returns v0 = ? (`jr` at 0xec366ac).

- `gl_c_mswapbuffers` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec39758 (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec39758-0xec39760 (8 bytes).
  Returns v0 = ? (`jr` at 0xec39758).

- `gl_i_mswapbuffers` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec39768 (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec39768-0xec39770 (8 bytes).
  Returns v0 = ? (`jr` at 0xec39768).

- `gl_comm_popbuffer` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec40670 (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec40670-0xec40710 (160 bytes).
  Loads 4 bytes at abs 0xece2d48 (`lw` at 0xec4067c).
  Loads 4 bytes at sym(comm_save_flag) (`lw` at 0xec40688).
  Stores 4 bytes from t7 at sym(comm_save_flag) (`sw` at 0xec40698).
  Loads 4 bytes at abs 0xece1270 (`lw` at 0xec4069c).
  Loads 4 bytes at abs 0xece004c (`lw` at 0xec406a0).
  Loads 4 bytes at abs 0xece2604 (`lw` at 0xec406b0).
  2 4-byte lw loads at abs 0xece2370, including `lw` at 0xec406b4, `lw` at 0xec406cc.
  Loads 4 bytes at abs 0xecdc604 (comm_buffer) (`lw` at 0xec406bc).
  Loads 4 bytes at abs 0xece2d50 (`lw` at 0xec406c8).
  Loads 4 bytes at abs 0xece2d4c (`lw` at 0xec406d0).
  Loads 4 bytes at sym(comm_save_buffer) (`lw` at 0xec406d4).
  Loads 4 bytes at abs 0xece2d54 (`lw` at 0xec406d8).
  Loads 4 bytes at sym(comm_save_bufsize) (`lw` at 0xec406dc).
  Stores 4 bytes from t9 at abs 0xecdc604 (comm_buffer) (`sw` at 0xec406e0).
  Loads 4 bytes at abs 0xece0080 (`lw` at 0xec406e4).
  Loads 4 bytes at sym(comm_save_endbuffer) (`lw` at 0xec406e8).
  Loads 4 bytes at abs 0xece2d58 (`lw` at 0xec406ec).
  Stores 4 bytes from t0 at abs 0xecdc5fc (`sw` at 0xec406f0).
  Loads 4 bytes at abs 0xece2374 (`lw` at 0xec406f4).
  Loads 4 bytes at sym(comm_save_curbufpos) (`lw` at 0xec406f8).
  Stores 4 bytes from t1 at abs 0xecdc608 (comm_endbuffer) (`sw` at 0xec406fc).
  Loads 4 bytes at abs 0xece2378 (`lw` at 0xec40700).
  Stores 4 bytes from t2 at abs 0xecdc60c (comm_curbufpos) (`sw` at 0xec4070c).
  Calls `gl_dgl_internal_error [0xec7f61c]` via register-constant with a0=0xecd3cb4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec406a4).
  Calls `free` via got with a0=[0xecdc604], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xec406b8).
  At `beq` at 0xec40694 (target 0xec406b0), taken when t7(=[sym(comm_save_flag)]-1) == 0 and falls through when t7(=[sym(comm_save_flag)]-1) != 0.
  Returns v0 = ret(free), f0 = ret(free) (`jr` at 0xec40708).

- `gl_d_loadmatrix` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec46fa0 (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec46fa0-0xec4708c (236 bytes).
  3 4-byte lw loads at abs 0xece2378, including `lw` at 0xec46fac, `lw` at 0xec46ff0, `lw` at 0xec47040.
  2 4-byte lw loads at abs 0xece2374, including `lw` at 0xec46fb0, `lw` at 0xec47050.
  2 4-byte lw loads at abs 0xecdc60c (comm_curbufpos), including `lw` at 0xec46fb8, `lw` at 0xec46ff4.
  Loads 4 bytes at abs 0xecdc608 (comm_endbuffer) (`lw` at 0xec46fbc).
  2 4-byte lw loads at abs 0xece0540, including `lw` at 0xec46fd8, `lw` at 0xec4706c.
  Stores 4 bytes from t8 at [0xecdc60c] (`sw` at 0xec47000).
  Stores 4 bytes from t9 at [0xecdc60c] +0x4 (`sw` at 0xec47008).
  Loads 4 bytes at abs 0xece11e8 (`lw` at 0xec47014).
  Loads 4 bytes at abs 0xece1218 (`lw` at 0xec4702c).
  Loads 4 bytes at abs 0xece2370 (`lw` at 0xec47038).
  Loads 4 bytes at abs 0xece236c (`lw` at 0xec4703c).
  Loads 4 bytes at abs 0xecdc604 (comm_buffer) (`lw` at 0xec47044).
  Loads 4 bytes at abs 0xecdc600 (comm_stdsize) (`lw` at 0xec47048).
  Stores 4 bytes from v1 at abs 0xecdc60c (comm_curbufpos) (`sw` at 0xec4704c).
  Stores 4 bytes from t4 at abs 0xecdc608 (comm_endbuffer) (`sw` at 0xec4705c).
  Calls `gl_comm_flush [0xec3ff10]` via register-constant with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec46fe0).
  Calls `gl_mem_pack_array [0xec79fd4]` via register-constant with a0=[0xecdc60c]+8, a1=a0 at entry (arg0), a2=0x40, a3=0xec7a94c (`jalr` at 0xec47028).
  Calls `gl_comm_flush [0xec3ff10]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xec47070).
  At `beq` at 0xec46fd0 (target 0xec46ff8), taken when t6(=[0xecdc608]) >= t7(=[0xecdc60c]+84) (unsigned) and falls through when t6(=[0xecdc608]) < t7(=[0xecdc60c]+84) (unsigned).
  At `bne` at 0xec47004 (target 0xec47014), taken when a1(=a0) != 0 and falls through when a1(=a0) == 0.
  At `beq` at 0xec4700c (target 0xec47038), the branch is always taken.
  At `beql` at 0xec47064 (target 0xec47080), taken when t4(=([0xecdc604] + [0xecdc600])-24) >= v1(?) (unsigned) and falls through when t4(=([0xecdc604] + [0xecdc600])-24) < v1(?) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xec47068 runs only when taken and is annulled on fall-through.
  Returns v0 = ? (`jr` at 0xec47084).

- `gl_d_swapbuffers` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec497b4 (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec497b4-0xec49828 (116 bytes).
  Loads 4 bytes at abs 0xece2378 (`lw` at 0xec497c0).
  Loads 4 bytes at abs 0xece2374 (`lw` at 0xec497c8).
  Loads 4 bytes at abs 0xecdc60c (comm_curbufpos) (`lw` at 0xec497cc).
  Stores 4 bytes from t6 at [0xecdc60c] (`sw` at 0xec497dc).
  Stores 4 bytes from v0 at abs 0xecdc60c (comm_curbufpos) (`sw` at 0xec497e4).
  Loads 4 bytes at abs 0xecdc608 (comm_endbuffer) (`lw` at 0xec497e8).
  2 4-byte lw loads at abs 0xece0540, including `lw` at 0xec497f8, `lw` at 0xec49808.
  Calls `gl_comm_flush [0xec3ff10]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec497fc).
  Calls `gl_comm_flush [0xec3ff10]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xec4980c).
  At `beq` at 0xec497f0 (target 0xec49808), taken when t7(=[0xecdc608]) >= v0(=[0xecdc60c]+4) (unsigned) and falls through when t7(=[0xecdc608]) < v0(=[0xecdc60c]+4) (unsigned).
  Returns v0 = ret(gl_comm_flush), f0 = ret(gl_comm_flush) (`jr` at 0xec49820).

- `gl_d_mswapbuffers` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec55650 (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec55650-0xec556c8 (120 bytes).
  Loads 4 bytes at abs 0xece2378 (`lw` at 0xec5565c).
  Loads 4 bytes at abs 0xecdc60c (comm_curbufpos) (`lw` at 0xec55668).
  Loads 4 bytes at abs 0xece2374 (`lw` at 0xec55670).
  Stores 4 bytes from t6 at [0xecdc60c] (`sw` at 0xec55678).
  Stores 4 bytes from a0 at [0xecdc60c] +0x4 (`sw` at 0xec5567c).
  Stores 4 bytes from v0 at abs 0xecdc60c (comm_curbufpos) (`sw` at 0xec55684).
  Loads 4 bytes at abs 0xecdc608 (comm_endbuffer) (`lw` at 0xec55688).
  2 4-byte lw loads at abs 0xece0540, including `lw` at 0xec55698, `lw` at 0xec556a8.
  Calls `gl_comm_flush [0xec3ff10]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec5569c).
  Calls `gl_comm_flush [0xec3ff10]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xec556ac).
  At `beq` at 0xec55690 (target 0xec556a8), taken when t7(=[0xecdc608]) >= v0(=[0xecdc60c]+8) (unsigned) and falls through when t7(=[0xecdc608]) < v0(=[0xecdc60c]+8) (unsigned).
  Returns v0 = ret(gl_comm_flush), f0 = ret(gl_comm_flush) (`jr` at 0xec556c0).

- `gl_init_intrp` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec603a0 (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec603a0-0xec60400 (96 bytes).
  2 4-byte lw loads at abs 0xece0080, including `lw` at 0xec603b8, `lw` at 0xec603bc.
  Loads 4 bytes at abs 0xece0fa0 (`lw` at 0xec603d0).
  Calls `gl_intrptab_insert [0xec60290]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xec603d8).
  At `bne` at 0xec603e4 (target 0xec603d0), taken when s0(?) != s1(=0xecdd050) and falls through when s0(?) == s1(=0xecdd050).
  Returns v0 = ret(gl_intrptab_insert), f0 = ret(gl_intrptab_insert) (`jr` at 0xec603f8).

- `__GLswapbuffers` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6d350 (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec6d350-0xec6d3d8 (136 bytes).
  Loads 4 bytes at abs 0xece2424 (`lw` at 0xec6d35c).
  Loads 4 bytes at abs 0xecdfba0 (gl_inMoveDraw) (`lw` at 0xec6d360).
  Loads 4 bytes at abs 0xece1564 (`lw` at 0xec6d370).
  7 4-byte lw loads at ?, including `lw` at 0xec6d3a4, `lw` at 0xec6d3a8, `lw` at 0xec6d3ac.
  Calls `__iglooCloseMoveDrawFromTable [0xec8fc18]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec6d384).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xec6d3d0).
  At `beq` at 0xec6d364 (target 0xec6d3a4), taken when t8(=[0xecdfba0]) == 0 and falls through when t8(=[0xecdfba0]) != 0.
  At `bne` at 0xec6d3b0 (target 0xec6d3d0), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `bne` at 0xec6d3c4 (target 0xec6d3d0), taken when t3(?) != 0 and falls through when t3(?) == 0.

- `__GLloadmatrix` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec6dfe0 (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec6dfe0-0xec6e068 (136 bytes).
  Loads 4 bytes at abs 0xece2424 (`lw` at 0xec6dfec).
  Loads 4 bytes at abs 0xecdfba0 (gl_inMoveDraw) (`lw` at 0xec6dff0).
  Loads 4 bytes at abs 0xece1564 (`lw` at 0xec6e000).
  7 4-byte lw loads at ?, including `lw` at 0xec6e034, `lw` at 0xec6e038, `lw` at 0xec6e03c.
  Calls `__iglooCloseMoveDrawFromTable [0xec8fc18]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec6e014).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xec6e060).
  At `beq` at 0xec6dff4 (target 0xec6e034), taken when t8(=[0xecdfba0]) == 0 and falls through when t8(=[0xecdfba0]) != 0.
  At `bne` at 0xec6e040 (target 0xec6e060), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `bne` at 0xec6e054 (target 0xec6e060), taken when t3(?) != 0 and falls through when t3(?) == 0.

- `mswapbuffers` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec70a78 (o32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec70a78-0xec70b00 (136 bytes).
  Loads 4 bytes at abs 0xece2424 (`lw` at 0xec70a84).
  Loads 4 bytes at abs 0xecdfba0 (gl_inMoveDraw) (`lw` at 0xec70a88).
  Loads 4 bytes at abs 0xece1564 (`lw` at 0xec70a98).
  7 4-byte lw loads at ?, including `lw` at 0xec70acc, `lw` at 0xec70ad0, `lw` at 0xec70ad4.
  Calls `__iglooCloseMoveDrawFromTable [0xec8fc18]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec70aac).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xec70af8).
  At `beq` at 0xec70a8c (target 0xec70acc), taken when t8(=[0xecdfba0]) == 0 and falls through when t8(=[0xecdfba0]) != 0.
  At `bne` at 0xec70ad8 (target 0xec70af8), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `bne` at 0xec70aec (target 0xec70af8), taken when t3(?) != 0 and falls through when t3(?) == 0.

- `__gl_swapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36b00 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec36b00-0xec36b64 (100 bytes).
  Loads 4 bytes at abs 0xecdd8a4 (`lw` at 0xec36b14).
  Loads 4 bytes at sym(gl_wstatep) (`lw` at 0xec36b18).
  Loads 4 bytes at [sym(gl_wstatep)] +0x114 (`lw` at 0xec36b1c).
  Loads 4 bytes at [[sym(gl_wstatep)]+276] +0x3c (`lw` at 0xec36b20).
  Loads 4 bytes at [[[sym(gl_wstatep)]+276]+60] (`lw` at 0xec36b24).
  Loads 4 bytes at abs 0xecdcfbc (`lw` at 0xec36b34).
  Loads 4 bytes at [sym(gl_wstatep)] +0xe0 (`lw` at 0xec36b38).
  Loads 4 bytes at abs 0xece8bec (gl_sstatep) (`lw` at 0xec36b3c).
  Loads 4 bytes at abs 0xecdd0e4 (`lw` at 0xec36b40).
  Loads 4 bytes at [0xece8bec] +0x1c (`lw` at 0xec36b44).
  Loads 4 bytes at [[sym(gl_wstatep)]+224] +0x8 (`lw` at 0xec36b48).
  Loads 4 bytes at [[0xece8bec]+28] +0x4 (`lw` at 0xec36b50).
  Calls `glXSwapBuffers` via got with a0=[[[0xece8bec]+28]+4], a1=[[[sym(gl_wstatep)]+224]+8], a2=a2 at entry (arg2), a3=[sym(gl_wstatep)], a4=0xac070 (`jalr` at 0xec36b4c).
  At `beq` at 0xec36b2c (target 0xec36b54), taken when at(=[[[[sym(gl_wstatep)]+276]+60]]) == v0(=0x1) and falls through when at(=[[[[sym(gl_wstatep)]+276]+60]]) != v0(=0x1).
  Returns v0 = ? (`jr` at 0xec36b5c).

- `gl_i_swapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36b70 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec36b70-0xec36bbc (76 bytes).
  Loads 4 bytes at abs 0xecdcfc0 (`lw` at 0xec36b84).
  Loads 4 bytes at abs 0xece8bf0 (gl_inMoveDraw) (`lw` at 0xec36b88).
  Loads 4 bytes at abs 0xecdc0c8 (`lw` at 0xec36b94).
  Loads 4 bytes at abs 0xecdad54 (`lw` at 0xec36ba0).
  Calls `__iglooNCloseMoveDraw [0xec92d80]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec36b98).
  Calls `__gl_swapbuffers [0xec36b00]` via direct with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xec36ba4).
  At `beq` at 0xec36b8c (target 0xec36ba0), taken when at(=[0xece8bf0]) == 0 and falls through when at(=[0xece8bf0]) != 0.
  Returns v0 = ret(__gl_swapbuffers), f0 = ret(__gl_swapbuffers) (`jr` at 0xec36bb4).

- `gl_c_swapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36bc0 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec36bc0-0xec36c24 (100 bytes).
  Loads 4 bytes at abs 0xecdd93c (`lw` at 0xec36bd4).
  Loads 4 bytes at abs 0xecdca18 (`lw` at 0xec36be0).
  Loads 4 bytes at abs 0xecdad60 (`lw` at 0xec36be8).
  Loads 4 bytes at abs 0xecdbb00 (`lw` at 0xec36c08).
  Loads 4 bytes at abs 0xecdabdc (`lw` at 0xec36c0c).
  Stores 4 bytes from a1 at abs 0xecdd93c (`sw` at 0xec36c20).
  Calls `gl_compile [0xecb5010]` via register-constant with a0=0x2, a1=sp-32, a2=unknown, a3=unknown (`jalr` at 0xec36bf0).
  Calls `gl_intrptab_insert [0xec5f9f0]` via register-constant with a0=0xecd6970, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec36c10).
  At `beq` at 0xec36bd8 (target 0xec36c08), taken when at(=[0xecdd93c]) == 0 and falls through when at(=[0xecdd93c]) != 0.
  At `beq` at 0xec36c1c (target 0xec36be0), the branch is always taken.
  Returns v0 = ret(gl_compile), f0 = ret(gl_compile) (`jr` at 0xec36c00).

- `gl_n_swapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec36c30 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec36c30-0xec36c84 (84 bytes).
  Loads 4 bytes at abs 0xecdcfc0 (`lw` at 0xec36c44).
  Loads 4 bytes at abs 0xece8bf0 (gl_inMoveDraw) (`lw` at 0xec36c48).
  Loads 4 bytes at abs 0xecdc0c8 (`lw` at 0xec36c58).
  Loads 4 bytes at abs 0xecdad54 (`lw` at 0xec36c64).
  Calls `__iglooNCloseMoveDraw [0xec92d80]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec36c5c).
  Calls `__gl_swapbuffers [0xec36b00]` via direct with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xec36c68).
  At `beq` at 0xec36c50 (target 0xec36c64), taken when at(=[0xece8bf0]) == 0 and falls through when at(=[0xece8bf0]) != 0.
  Returns v0 = a0, f0 = ret(__gl_swapbuffers) (`jr` at 0xec36c7c).

- `gl_intrp_freefunc` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec37bb0 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec37bb0-0xec37bfc (76 bytes).
  Loads 4 bytes at a0 +0xc (`lw` at 0xec37bb0).
  Loads 4 bytes at abs 0xecdadd8 (`lw` at 0xec37bdc).
  Loads 4 bytes at a0 +0x4 (`lw` at 0xec37bf0).
  Calls `gl_do_callfunc [0xec37990]` via direct with a0=[a0+12], a1=[a0+4], a2=a0+16, a3=a3 at entry (arg3), a4=[a0+12], a5=a0 at entry (arg0) (`bgezall` at 0xec37bec).
  At `bne` at 0xec37bc8 (target 0xec37bdc), taken when a4(=[a0+12]) != 0 and falls through when a4(=[a0+12]) == 0.
  At `beq` at 0xec37bf4 (target 0xec37bd0), the branch is always taken.
  Returns v0 = ? (`jr` at 0xec37bd4).

- `gl_c_mswapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3aab0 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec3aab0-0xec3aab8 (8 bytes).
  Returns v0 = ? (`jr` at 0xec3aab0).

- `gl_i_mswapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec3aad0 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec3aad0-0xec3aad8 (8 bytes).
  Returns v0 = ? (`jr` at 0xec3aad0).

- `gl_comm_popbuffer` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec40de0 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec40de0-0xec40e78 (152 bytes).
  Loads 4 bytes at abs 0xecdd8a8 (`lw` at 0xec40df4).
  Loads 4 bytes at sym(comm_save_flag) (`lw` at 0xec40df8).
  Stores 4 bytes from at at sym(comm_save_flag) (`sw` at 0xec40e08).
  Loads 4 bytes at abs 0xecdbdd0 (`lw` at 0xec40e0c).
  Loads 4 bytes at abs 0xecdabdc (`lw` at 0xec40e10).
  Loads 4 bytes at abs 0xecdd164 (`lw` at 0xec40e1c).
  2 4-byte lw loads at abs 0xecdcec0, including `lw` at 0xec40e20, `lw` at 0xec40e60.
  Loads 4 bytes at abs 0xecd6c44 (comm_buffer) (`lw` at 0xec40e28).
  Loads 4 bytes at abs 0xecdd8b0 (`lw` at 0xec40e30).
  Loads 4 bytes at abs 0xecdd8b4 (`lw` at 0xec40e34).
  Loads 4 bytes at sym(comm_save_buffer) (`lw` at 0xec40e38).
  Loads 4 bytes at sym(comm_save_endbuffer) (`lw` at 0xec40e3c).
  Loads 4 bytes at abs 0xecdcec8 (`lw` at 0xec40e40).
  Loads 4 bytes at abs 0xecdd8ac (`lw` at 0xec40e44).
  Loads 4 bytes at abs 0xecdd8b8 (`lw` at 0xec40e48).
  Loads 4 bytes at sym(comm_save_bufsize) (`lw` at 0xec40e4c).
  Loads 4 bytes at sym(comm_save_curbufpos) (`lw` at 0xec40e50).
  Stores 4 bytes from a4 at abs 0xecd6c4c (comm_curbufpos) (`sw` at 0xec40e54).
  Loads 4 bytes at abs 0xecdcec4 (`lw` at 0xec40e58).
  Stores 4 bytes from a2 at abs 0xecdda0c (`sw` at 0xec40e5c).
  Stores 4 bytes from a3 at abs 0xecd6c48 (comm_endbuffer) (`sw` at 0xec40e68).
  Stores 4 bytes from a1 at abs 0xecd6c44 (comm_buffer) (`sw` at 0xec40e74).
  Calls `gl_dgl_internal_error [0xec83750]` via register-constant with a0=0xecd70f0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec40e14).
  Calls `free` via got with a0=[0xecd6c44], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xec40e24).
  At `beq` at 0xec40e04 (target 0xec40e1c), taken when at(=[sym(comm_save_flag)]-1) == 0 and falls through when at(=[sym(comm_save_flag)]-1) != 0.
  Returns v0 = ret(free), f0 = ret(free) (`jr` at 0xec40e70).

- `gl_d_loadmatrix` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec47110 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec47110-0xec471fc (236 bytes).
  3 4-byte lw loads at abs 0xecdcec8, including `lw` at 0xec47124, `lw` at 0xec471bc, `lw` at 0xec471d8.
  3 4-byte lw loads at abs 0xecdcec4, including `lw` at 0xec47128, `lw` at 0xec471c0, `lw` at 0xec471dc.
  2 4-byte lw loads at abs 0xecd6c4c (comm_curbufpos), including `lw` at 0xec4712c, `lw` at 0xec471e4.
  Loads 4 bytes at abs 0xecd6c48 (comm_endbuffer) (`lw` at 0xec47130).
  Stores 4 bytes from a2 at [0xecd6c4c] +0x4 (`sw` at 0xec47150).
  Stores 4 bytes from a0 at [0xecd6c4c] (`sw` at 0xec4715c).
  Loads 4 bytes at abs 0xecdcec0 (`lw` at 0xec47168).
  Loads 4 bytes at abs 0xecdcebc (`lw` at 0xec4716c).
  Loads 4 bytes at abs 0xecd6c44 (comm_buffer) (`lw` at 0xec47170).
  Loads 4 bytes at abs 0xecd6c40 (comm_stdsize) (`lw` at 0xec47174).
  Stores 4 bytes from a0 at abs 0xecd6c4c (comm_curbufpos) (`sw` at 0xec47184).
  Stores 4 bytes from a2 at abs 0xecd6c48 (comm_endbuffer) (`sw` at 0xec4718c).
  Loads 4 bytes at abs 0xecdbd48 (`lw` at 0xec471a0).
  Loads 4 bytes at abs 0xecdbd78 (`lw` at 0xec471ac).
  2 4-byte lw loads at abs 0xecdb0a0, including `lw` at 0xec471cc, `lw` at 0xec471e8.
  Calls `gl_mem_pack_array [0xec7d9b0]` via register-constant with a0=[0xecd6c4c]+8, a1=a0 at entry (arg0), a2=0x40, a3=0xec7e8d0, a4=0x54, a5=0xecd6c48, a6=[0xecd6c4c] (`jalr` at 0xec471b0).
  Calls `gl_comm_flush [0xec40750]` via direct with a0=a0 at entry (arg0), a1=0xecd6c4c, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0xecd6c48, a6=[0xecd6c4c] (`bgezall` at 0xec471d0).
  Calls `gl_comm_flush [0xec40750]` via direct with a0=unknown, a1=0xecd6c4c, a2=([0xecd6c40] + [0xecd6c44])-24, a3=unknown, a5=0xecd6c48 (`bgezall` at 0xec471ec).
  At `bne` at 0xec47144 (target 0xec471cc), taken when at(=[0xecd6c48]) < v0(=[0xecd6c4c]+84) (unsigned) and falls through when at(=[0xecd6c48]) >= v0(=[0xecd6c4c]+84) (unsigned).
  At `bne` at 0xec47158 (target 0xec471a0), taken when s0(=a0) != 0 and falls through when s0(=a0) == 0.
  At `bne` at 0xec47188 (target 0xec471e8), taken when a2(=([0xecd6c40] + [0xecd6c44])-24) < a0(?) (unsigned) and falls through when a2(=([0xecd6c40] + [0xecd6c44])-24) >= a0(?) (unsigned).
  At `beq` at 0xec471c4 (target 0xec47168), the branch is always taken.
  At `beq` at 0xec471e0 (target 0xec4714c), the branch is always taken.
  At `beq` at 0xec471f4 (target 0xec47194), the branch is always taken.
  Returns v0 = ? (`jr` at 0xec47198).

- `gl_d_swapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec497d0 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec497d0-0xec49840 (112 bytes).
  Loads 4 bytes at abs 0xecdcec8 (`lw` at 0xec497e4).
  Loads 4 bytes at abs 0xecd6c4c (comm_curbufpos) (`lw` at 0xec497e8).
  Loads 4 bytes at abs 0xecdcec4 (`lw` at 0xec497ec).
  Stores 4 bytes from a0 at [0xecd6c4c] (`sw` at 0xec497f4).
  Loads 4 bytes at abs 0xecd6c48 (comm_endbuffer) (`lw` at 0xec497f8).
  Stores 4 bytes from v0 at abs 0xecd6c4c (comm_curbufpos) (`sw` at 0xec4980c).
  3 4-byte lw loads at abs 0xecdb0a0, including `lw` at 0xec49810, `lw` at 0xec4982c, `lw` at 0xec4983c.
  Calls `gl_comm_flush [0xec40750]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xec49814).
  Calls `gl_comm_flush [0xec40750]` via register-constant with a0=0x91, a1=0x993a0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec49830).
  At `bne` at 0xec49808 (target 0xec4982c), taken when at(=[0xecd6c48]) < v0(=[0xecd6c4c]+4) (unsigned) and falls through when at(=[0xecd6c48]) >= v0(=[0xecd6c4c]+4) (unsigned).
  At `beq` at 0xec49838 (target 0xec49814), the branch is always taken.
  Returns v0 = ret(gl_comm_flush), f0 = ret(gl_comm_flush) (`jr` at 0xec49824).

- `gl_d_mswapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec55300 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec55300-0xec55374 (116 bytes).
  Loads 4 bytes at abs 0xecdcec8 (`lw` at 0xec55314).
  Loads 4 bytes at abs 0xecd6c4c (comm_curbufpos) (`lw` at 0xec55318).
  Loads 4 bytes at abs 0xecdcec4 (`lw` at 0xec5531c).
  Stores 4 bytes from a0 at [0xecd6c4c] +0x4 (`sw` at 0xec55320).
  Stores 4 bytes from a1 at [0xecd6c4c] (`sw` at 0xec55328).
  Loads 4 bytes at abs 0xecd6c48 (comm_endbuffer) (`lw` at 0xec5532c).
  Stores 4 bytes from v0 at abs 0xecd6c4c (comm_curbufpos) (`sw` at 0xec55340).
  3 4-byte lw loads at abs 0xecdb0a0, including `lw` at 0xec55344, `lw` at 0xec55360, `lw` at 0xec55370.
  Calls `gl_comm_flush [0xec40750]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xec55348).
  Calls `gl_comm_flush [0xec40750]` via register-constant with a0=a0 at entry (arg0), a1=0x1e3, a2=0x8d870, a3=a3 at entry (arg3) (`jalr` at 0xec55364).
  At `bne` at 0xec5533c (target 0xec55360), taken when at(=[0xecd6c48]) < v0(=[0xecd6c4c]+8) (unsigned) and falls through when at(=[0xecd6c48]) >= v0(=[0xecd6c4c]+8) (unsigned).
  At `beq` at 0xec5536c (target 0xec55348), the branch is always taken.
  Returns v0 = ret(gl_comm_flush), f0 = ret(gl_comm_flush) (`jr` at 0xec55358).

- `gl_intrptab_insert` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec5f9f0 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec5f9f0-0xec5fab0 (192 bytes).
  2 4-byte lw loads at a0 +0x4, including `lw` at 0xec5f9f4, `lw` at 0xec5fa90.
  Loads 4 bytes at abs 0xecdacc0 (`lw` at 0xec5fa18).
  Loads 4 bytes at abs 0xecdabe0 (`lw` at 0xec5fa1c).
  Stores 4 bytes from a2 at a0 +0x4 (`sw` at 0xec5fa28).
  Loads 4 bytes at abs 0xecdd1a4 (`lw` at 0xec5fa48).
  2 4-byte lw loads at abs 0xecdabdc, including `lw` at 0xec5fa4c, `lw` at 0xec5fa94.
  Loads 4 bytes at a0 +0xc (`lw` at 0xec5fa60).
  2 4-byte lw loads at abs 0xecdd1d8, including `lw` at 0xec5fa68, `lw` at 0xec5fa6c.
  2 4-byte lw loads at abs 0xecdba44, including `lw` at 0xec5fa78, `lw` at 0xec5faac.
  Calls `gl_insert [0xec35010]` via register-constant with a0=0xecdf618, a1=a0 at entry (arg0), a2=unknown, a3=[a0+4] (`jalr` at 0xec5fa2c).
  Calls `strcpy` via got with a0=sp-128, a1=0xecd7e50, a2=a2 at entry (arg2), a3=[a0+4] (`jalr` at 0xec5fa58).
  Calls `strcat` via got with a0=sp-128, a1=[a0+12], a2=unknown, a3=unknown (`jalr` at 0xec5fa70).
  Calls `gl_ErrorHandler [0xec5d440]` via direct with a0=0x6c, a1=0x5, a2=sp-128, a3=unknown (`bgezall` at 0xec5fa84).
  Calls `strcat` via got with a0=sp-128, a1=0xecd7e68, a2=unknown, a3=unknown (`jalr` at 0xec5faa0).
  At `beq` at 0xec5fa10 (target 0xec5fa48), taken when a3(=[a0+4]) == 0 and falls through when a3(=[a0+4]) != 0.
  At `beq` at 0xec5fa64 (target 0xec5fa94), taken when a1(=[a0+12]) == 0 and falls through when a1(=[a0+12]) != 0.
  At `beq` at 0xec5fa8c (target 0xec5fa18), the branch is always taken.
  At `beq` at 0xec5faa8 (target 0xec5fa7c), the branch is always taken.
  Returns v0 = ret(gl_insert), f0 = ret(gl_insert) (`jr` at 0xec5fa40).

- `gl_init_intrp` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec5fab0 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec5fab0-0xec5fbcc (284 bytes).
  Loads 4 bytes at abs 0xecdabdc (`lw` at 0xec5facc).
  11 4-byte lw loads at abs 0xecdbb00, including `lw` at 0xec5fadc, `lw` at 0xec5faf4, `lw` at 0xec5fb08.
  Calls `gl_intrptab_insert [0xec5f9f0]` via direct with a0=0xecd7d40, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xec5fae0).
  Calls `gl_intrptab_insert [0xec5f9f0]` via direct with a0=0xecd7d50, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xec5faf8).
  Calls `gl_intrptab_insert [0xec5f9f0]` via direct with a0=0xecd7d60, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xec5fb0c).
  Calls `gl_intrptab_insert [0xec5f9f0]` via direct with a0=0xecd7d70, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xec5fb20).
  Calls `gl_intrptab_insert [0xec5f9f0]` via direct with a0=0xecd7d80, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xec5fb34).
  Calls `gl_intrptab_insert [0xec5f9f0]` via direct with a0=0xecd7d90, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xec5fb48).
  Calls `gl_intrptab_insert [0xec5f9f0]` via direct with a0=0xecd7da0, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xec5fb5c).
  Calls `gl_intrptab_insert [0xec5f9f0]` via direct with a0=0xecd7db0, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xec5fb70).
  Calls `gl_intrptab_insert [0xec5f9f0]` via direct with a0=0xecd7dc0, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xec5fb84).
  Calls `gl_intrptab_insert [0xec5f9f0]` via direct with a0=0xecd7dd0, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xec5fb98).
  Calls `gl_intrptab_insert [0xec5f9f0]` via direct with a0=0xecd7de0, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xec5fbac).
  Returns v0 = ret(gl_intrptab_insert), f0 = ret(gl_intrptab_insert) (`jr` at 0xec5fbc4).

- `__GLswapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec6fef8 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec6fef8-0xec6ffac (180 bytes).
  Loads 4 bytes at abs 0xecdcfc0 (`lw` at 0xec6ff0c).
  Loads 4 bytes at abs 0xece8bf0 (gl_inMoveDraw) (`lw` at 0xec6ff10).
  Loads 4 bytes at abs 0xecdc0c4 (`lw` at 0xec6ff1c).
  Loads 4 bytes at abs 0xecdcfe8 (`lw` at 0xec6ff74).
  Loads 4 bytes at abs 0xecdad58 (`lw` at 0xec6ff78).
  Loads 4 bytes at abs 0xece8cc0 (gl_immediate_mode) (`lw` at 0xec6ff7c).
  Loads 4 bytes at abs 0xecdd894 (`lw` at 0xec6ff88).
  Loads 4 bytes at abs 0xecdad5c (`lw` at 0xec6ff8c).
  Loads 4 bytes at sym(gl_openobjhdr) (`lw` at 0xec6ff90).
  Loads 4 bytes at abs 0xecdb3ec (`lw` at 0xec6ff9c).
  Calls `__iglooCloseMoveDrawFromTable [0xec92d40]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec6ff44).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xec6ffa4).
  At `beq` at 0xec6ff14 (target 0xec6ff74), taken when t8(=[0xece8bf0]) == 0 and falls through when t8(=[0xece8bf0]) != 0.
  At `bne` at 0xec6ff80 (target 0xec6ffa0), taken when t2(=[0xece8cc0]) != 0 and falls through when t2(=[0xece8cc0]) == 0.
  At `bne` at 0xec6ff94 (target 0xec6ffa0), taken when t3(=[sym(gl_openobjhdr)]) != 0 and falls through when t3(=[sym(gl_openobjhdr)]) == 0.

- `__GLloadmatrix` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec70ed0 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec70ed0-0xec70f84 (180 bytes).
  Loads 4 bytes at abs 0xecdcfc0 (`lw` at 0xec70ee4).
  Loads 4 bytes at abs 0xece8bf0 (gl_inMoveDraw) (`lw` at 0xec70ee8).
  Loads 4 bytes at abs 0xecdc0c4 (`lw` at 0xec70ef4).
  Loads 4 bytes at abs 0xecdcfe8 (`lw` at 0xec70f4c).
  Loads 4 bytes at abs 0xecdcde8 (`lw` at 0xec70f50).
  Loads 4 bytes at abs 0xece8cc0 (gl_immediate_mode) (`lw` at 0xec70f54).
  Loads 4 bytes at abs 0xecdd894 (`lw` at 0xec70f60).
  Loads 4 bytes at abs 0xecdcdec (`lw` at 0xec70f64).
  Loads 4 bytes at sym(gl_openobjhdr) (`lw` at 0xec70f68).
  Loads 4 bytes at abs 0xecdb2e4 (`lw` at 0xec70f74).
  Calls `__iglooCloseMoveDrawFromTable [0xec92d40]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec70f1c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xec70f7c).
  At `beq` at 0xec70eec (target 0xec70f4c), taken when t8(=[0xece8bf0]) == 0 and falls through when t8(=[0xece8bf0]) != 0.
  At `bne` at 0xec70f58 (target 0xec70f78), taken when t2(=[0xece8cc0]) != 0 and falls through when t2(=[0xece8cc0]) == 0.
  At `bne` at 0xec70f6c (target 0xec70f78), taken when t3(=[sym(gl_openobjhdr)]) != 0 and falls through when t3(=[sym(gl_openobjhdr)]) == 0.

- `__GLmswapbuffers` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec7455c (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec7455c-0xec74610 (180 bytes).
  Loads 4 bytes at abs 0xecdcfc0 (`lw` at 0xec74570).
  Loads 4 bytes at abs 0xece8bf0 (gl_inMoveDraw) (`lw` at 0xec74574).
  Loads 4 bytes at abs 0xecdc0c4 (`lw` at 0xec74580).
  Loads 4 bytes at abs 0xecdcfe8 (`lw` at 0xec745d8).
  Loads 4 bytes at abs 0xecdae50 (`lw` at 0xec745dc).
  Loads 4 bytes at abs 0xece8cc0 (gl_immediate_mode) (`lw` at 0xec745e0).
  Loads 4 bytes at abs 0xecdd894 (`lw` at 0xec745ec).
  Loads 4 bytes at abs 0xecdae48 (`lw` at 0xec745f0).
  Loads 4 bytes at sym(gl_openobjhdr) (`lw` at 0xec745f4).
  Loads 4 bytes at abs 0xecdb8fc (`lw` at 0xec74600).
  Calls `__iglooCloseMoveDrawFromTable [0xec92d40]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec745a8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xec74608).
  At `beq` at 0xec74578 (target 0xec745d8), taken when t8(=[0xece8bf0]) == 0 and falls through when t8(=[0xece8bf0]) != 0.
  At `bne` at 0xec745e4 (target 0xec74604), taken when t2(=[0xece8cc0]) != 0 and falls through when t2(=[0xece8cc0]) == 0.
  At `bne` at 0xec745f8 (target 0xec74604), taken when t3(=[sym(gl_openobjhdr)]) != 0 and falls through when t3(=[sym(gl_openobjhdr)]) == 0.

- `_GLRefreshKeyboardMapping` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec8bf90 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xec8bf90-0xec8bfe4 (84 bytes).
  Loads 4 bytes at abs 0xecdd390 (`lw` at 0xec8bfa4).
  2 4-byte lw loads at abs 0xecdab9c, including `lw` at 0xec8bfb4, `lw` at 0xec8bfc4.
  Calls `XRefreshKeyboardMapping` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xec8bfac).
  Calls `(unknown callee) [0xec8bbc0]` via direct with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xec8bfbc).
  Calls `(unknown callee) [0xec8bd80]` via direct with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xec8bfcc).
  Returns v0 = ret(0xec8bd80), f0 = ret(0xec8bd80) (`jr` at 0xec8bfdc).

- `__iglooLoadMatrix` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xecb8940 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xecb8940-0xecb89cc (140 bytes).
  Loads 4 bytes at abs 0x1004 (`lw` at 0xecb8948).
  Loads 4 bytes at [0x1004] +0x9c (`lw` at 0xecb894c).
  Loads 4 bytes at [[0x1004]+156] +0x8 (`lw` at 0xecb895c).
  Loads 4 bytes at abs 0xecdbbe4 (`lw` at 0xecb8968).
  Loads 4 bytes at [[0x1004]+156] (`lw` at 0xecb8970).
  Stores 4 bytes from zero at ([[[0x1004]+156]] + ((([[[0x1004]+156]+8] << 0x3) + [[[0x1004]+156]+8]) << 0x3)) +0x40 (`sw` at 0xecb898c).
  Loads 4 bytes at abs 0xecdd19c (`lw` at 0xecb8990).
  Stores 4 bytes from v0 at ([[[0x1004]+156]] + ((([[[0x1004]+156]+8] << 0x3) + [[[0x1004]+156]+8]) << 0x3)) +0x44 (`sw` at 0xecb89a4).
  Loads 4 bytes at abs 0xecdd53c (`lw` at 0xecb89a8).
  Calls `__iglooGetId [0xec77f10]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xecb8988).
  Calls `memcpy` via got with a0=([[[0x1004]+156]] + ((([[[0x1004]+156]+8] << 0x3) + [[[0x1004]+156]+8]) << 0x3)), a1=a0 at entry (arg0), a2=0x40, a3=unknown (`jalr` at 0xecb89a0).
  Calls `glLoadMatrixf` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xecb89b0).
  Returns v0 = ret(glLoadMatrixf), f0 = ret(glLoadMatrixf) (`jr` at 0xecb89c4).

- `igl_loadMatrix` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xeccf1b0 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xeccf1b0-0xeccf288 (216 bytes).
  Loads 4 bytes at abs 0xecdd8a4 (`lw` at 0xeccf1d4).
  Loads 4 bytes at abs 0xecdc244 (`lw` at 0xeccf1d8).
  Loads 4 bytes at sym(gl_wstatep) (`lw` at 0xeccf1dc).
  Stores 1 byte from zero at [sym(gl_wstatep)] +0x2e58 (`sb` at 0xeccf1e8).
  Loads 2 bytes at [sym(gl_wstatep)] +0x108 (`lh` at 0xeccf1f4).
  3 4-byte lw loads at abs 0xecdcb0c, including `lw` at 0xeccf20c, `lw` at 0xeccf23c, `lw` at 0xeccf260.
  Loads 4 bytes at abs 0xecdcb1c (`lw` at 0xeccf218).
  Loads 4 bytes at [sym(gl_wstatep)] +0xb58 (`lw` at 0xeccf22c).
  Loads 4 bytes at abs 0xecdb168 (`lw` at 0xeccf244).
  Stores 4 bytes from v1 at [sym(gl_wstatep)] +0xb5c (`sw` at 0xeccf254).
  Loads 4 bytes at abs 0xecdc8c4 (`lw` at 0xeccf258).
  Stores 4 bytes from v0 at ? (`sw` at 0xeccf25c).
  Calls `__iglooGetPickingMatrix [0xec99e70]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xeccf1f0).
  Calls `__iglooLoadMatrix [0xecb8940]` via register-constant with a0=ret(__iglooGetPickingMatrix), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xeccf210).
  Calls `__iglooMultMatrix [0xecb8ba0]` via register-constant with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xeccf21c).
  Calls `__iglooRestoreUsrMat [0xec439e0]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xeccf248).
  Calls `__iglooLoadMatrix [0xecb8940]` via register-constant with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xeccf264).
  At `beq` at 0xeccf1f8 (target 0xeccf22c), taken when v0(=ret(__iglooGetPickingMatrix)) == 0 and falls through when v0(=ret(__iglooGetPickingMatrix)) != 0.
  At `beq` at 0xeccf200 (target 0xeccf22c), taken when s0(=[[sym(gl_wstatep)]+264]:2) == t8(=0x2) and falls through when s0(=[[sym(gl_wstatep)]+264]:2) != t8(=0x2).
  At `beq` at 0xeccf208 (target 0xeccf22c), taken when s0(=[[sym(gl_wstatep)]+264]:2) == t9(=0x3) and falls through when s0(=[[sym(gl_wstatep)]+264]:2) != t9(=0x3).
  At `beq` at 0xeccf224 (target 0xeccf270), the branch is always taken.
  At `bne` at 0xeccf238 (target 0xeccf264), taken when ra(=[[sym(gl_wstatep)]+2904]) != v0(=0x1) and falls through when ra(=[[sym(gl_wstatep)]+2904]) == v0(=0x1).
  At `beq` at 0xeccf240 (target 0xeccf260), taken when s0(=[[sym(gl_wstatep)]+264]:2) == at(=0x3) and falls through when s0(=[[sym(gl_wstatep)]+264]:2) != at(=0x3).
  Returns v0 = ? (`jr` at 0xeccf280).

- `gl_i_loadmatrix` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xeccf290 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xeccf290-0xeccf2e0 (80 bytes).
  Loads 4 bytes at abs 0xecdcfc0 (`lw` at 0xeccf2a4).
  Loads 4 bytes at abs 0xece8bf0 (gl_inMoveDraw) (`lw` at 0xeccf2a8).
  Loads 4 bytes at abs 0xecdc0c8 (`lw` at 0xeccf2b4).
  Loads 4 bytes at abs 0xecdcde4 (`lw` at 0xeccf2c4).
  Calls `__iglooNCloseMoveDraw [0xec92d80]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xeccf2b8).
  Calls `igl_loadMatrix [0xeccf1b0]` via direct with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xeccf2c8).
  At `beq` at 0xeccf2ac (target 0xeccf2c4), taken when at(=[0xece8bf0]) == 0 and falls through when at(=[0xece8bf0]) != 0.
  Returns v0 = ret(igl_loadMatrix), f0 = ret(igl_loadMatrix) (`jr` at 0xeccf2d8).

- `gl_c_loadmatrix` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xeccf2e0 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xeccf2e0-0xeccf364 (132 bytes).
  Loads 4 bytes at abs 0xecdde98 (`lw` at 0xeccf2f4).
  Loads 4 bytes at abs 0xecdabac (`lw` at 0xeccf308).
  Loads 4 bytes at abs 0xecdcdf0 (`lw` at 0xeccf314).
  Loads 4 bytes at abs 0xecdca18 (`lw` at 0xeccf324).
  Loads 4 bytes at abs 0xecdbb00 (`lw` at 0xeccf348).
  Loads 4 bytes at abs 0xecdabe0 (`lw` at 0xeccf34c).
  Stores 4 bytes from a1 at abs 0xecdde98 (`sw` at 0xeccf360).
  Calls `(unknown callee) [0xecd00c0]` via direct with a0=sp-92, a1=a0 at entry (arg0), a2=unknown, a3=unknown (`bgezall` at 0xeccf31c).
  Calls `gl_compile [0xecb5010]` via register-constant with a0=0x22, a1=sp-96, a2=unknown, a3=unknown (`jalr` at 0xeccf330).
  Calls `gl_intrptab_insert [0xec5f9f0]` via register-constant with a0=0xecda7d0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xeccf350).
  At `beq` at 0xeccf300 (target 0xeccf348), taken when at(=[0xecdde98]) == 0 and falls through when at(=[0xecdde98]) != 0.
  At `beq` at 0xeccf35c (target 0xeccf308), the branch is always taken.
  Returns v0 = ret(gl_compile), f0 = ret(gl_compile) (`jr` at 0xeccf340).

- `gl_n_loadmatrix` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xeccf370 (n32).
  Evidence grade: established.
  Exact build: `usr/gfx/arch/IGLOO32/libgl.so`.
  Range: 0xeccf370-0xeccf3cc (92 bytes).
  Loads 4 bytes at abs 0xecdcfc0 (`lw` at 0xeccf384).
  Loads 4 bytes at abs 0xece8bf0 (gl_inMoveDraw) (`lw` at 0xeccf388).
  Loads 4 bytes at abs 0xecdc0c8 (`lw` at 0xeccf39c).
  Loads 4 bytes at abs 0xecdcde4 (`lw` at 0xeccf3a8).
  Calls `__iglooNCloseMoveDraw [0xec92d80]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xeccf3a0).
  Calls `igl_loadMatrix [0xeccf1b0]` via direct with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xeccf3ac).
  At `beq` at 0xeccf394 (target 0xeccf3a8), taken when at(=[0xece8bf0]) == 0 and falls through when at(=[0xece8bf0]) != 0.
  Returns v0 = a0+64, f0 = ret(igl_loadMatrix) (`jr` at 0xeccf3c4).

- `__fm_SetupWildMatch` in `usr/lib32/libfm.so` at 0xee15a48 (n32).
  Evidence grade: established.
  Exact build: `usr/lib32/libfm.so`.
  Range: 0xee15a48-0xee15c58 (528 bytes).
  Loads 4 bytes at abs 0xee65178 (`lw` at 0xee15a50).
  Loads 4 bytes at a0 (`lw` at 0xee15a58).
  Loads 4 bytes at a1 (`lw` at 0xee15a6c).
  Loads 1 byte at [a1] (`lbu` at 0xee15a80).
  Loads 1 byte at ? (`lbu` at 0xee15ab4).
  Loads 2 bytes at a1 +0x6 (`lh` at 0xee15aec).
  3 4-byte sw stores at a4, including `sw` at 0xee15af0, `sw` at 0xee15bb4, `sw` at 0xee15c3c.
  2 4-byte lw loads at a0 +0xc, including `lw` at 0xee15af8, `lw` at 0xee15bb8.
  2 4-byte lw loads at a0 +0x8, including `lw` at 0xee15b34, `lw` at 0xee15bec.
  2 4-byte lw loads at ?, including `lw` at 0xee15b54, `lw` at 0xee15c08.
  3 4-byte sw stores at a2, including `sw` at 0xee15b74, `sw` at 0xee15c28, `sw` at 0xee15c40.
  3 4-byte sw stores at a3, including `sw` at 0xee15b7c, `sw` at 0xee15c34, `sw` at 0xee15c4c.
  Loads 4 bytes at abs 0xee65168 (`lw` at 0xee15bd0).
  Calls `strncmp` via got with a0=[a1], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xee15b50).
  Calls `strcmp` via got with a0=[a1], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xee15c04).
  At `beq` at 0xee15aa0 (target 0xee15bb0), taken when v0(=[[a1]]:1) == 0 and falls through when v0(=[[a1]]:1) != 0.
  At `beq` at 0xee15aac (target 0xee15ac4), the branch is always taken.
  At `beq` at 0xee15abc (target 0xee15ae4), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xee15ac4 (target 0xee15ad4), taken when t1(=0x2a) == v0(?) and falls through when t1(=0x2a) != v0(?).
  At `bne` at 0xee15acc (target 0xee15ab4), taken when t2(=0x3f) != v0(?) and falls through when t2(=0x3f) == v0(?).
  At `bne` at 0xee15ad4 (target 0xee15ab4), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0xee15adc (target 0xee15ab4), the branch is always taken.
  At `beq` at 0xee15ae4 (target 0xee15c38), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xee15afc (target 0xee15c40), taken when v0(=[a0+12]) == 0 and falls through when v0(=[a0+12]) != 0.
  At `beq` at 0xee15b04 (target 0xee15bc4), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `blez` at 0xee15b0c (target 0xee15b70), taken when s1(=[a0]) <= 0 (signed) and falls through when s1(=[a0]) > 0 (signed).
  At `beq` at 0xee15b14 (target 0xee15b2c), the branch is always taken.
  At `beq` at 0xee15b24 (target 0xee15b74), taken when s0(?) >= s1(?) (signed) and falls through when s0(?) < s1(?) (signed).
  At `beq` at 0xee15b58 (target 0xee15b74), taken when v0(=ret(strncmp)) == 0 and falls through when v0(=ret(strncmp)) != 0.
  At `bgez` at 0xee15b60 (target 0xee15b1c), taken when v0(=ret(strncmp)) >= 0 (signed) and falls through when v0(=ret(strncmp)) < 0 (signed).
  At `beq` at 0xee15b68 (target 0xee15b20), the branch is always taken.
  At `beq` at 0xee15bbc (target 0xee15c40), taken when t9(=[a0+12]) == 0 and falls through when t9(=[a0+12]) != 0.
  At `blez` at 0xee15bc4 (target 0xee15c24), taken when s1(=[a0]) <= 0 (signed) and falls through when s1(=[a0]) > 0 (signed).
  At `beq` at 0xee15bcc (target 0xee15be0), the branch is always taken.
  At `beq` at 0xee15bdc (target 0xee15c24), taken when s0(?) >= s1(?) (signed) and falls through when s0(?) < s1(?) (signed).
  At `beq` at 0xee15c0c (target 0xee15c50), taken when v0(=ret(strcmp)) == 0 and falls through when v0(=ret(strcmp)) != 0.
  At `bgez` at 0xee15c14 (target 0xee15bd4), taken when v0(=ret(strcmp)) >= 0 (signed) and falls through when v0(=ret(strcmp)) < 0 (signed).
  At `beq` at 0xee15c1c (target 0xee15bd8), the branch is always taken.
  At `beq` at 0xee15c30 (target 0xee15b80), the branch is always taken.
  At `beq` at 0xee15c38 (target 0xee15af4), the branch is always taken.
  At `beq` at 0xee15c48 (target 0xee15b80), the branch is always taken.
  At `beq` at 0xee15c50 (target 0xee15b80), the branch is always taken.
  Returns v0 = ? (`jr` at 0xee15ba8).

- `readmagic` in `usr/lib32/libfm.so` at 0xee299e8 (n32).
  Evidence grade: established.
  Exact build: `usr/lib32/libfm.so`.
  Range: 0xee299e8-0xee29a50 (104 bytes).
  Loads 4 bytes at abs 0xee65200 (`lw` at 0xee299e8).
  Loads 4 bytes at abs 0xee65100 (`lw` at 0xee299ec).
  Loads 4 bytes at abs 0xee651fc (`lw` at 0xee29a18).
  Loads 4 bytes at abs 0xee651b0 (`lw` at 0xee29a34).
  Calls `fopen` via got with a0=a0 at entry (arg0), a1=0xee5bc70, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xee299f8).
  Calls `fread` via got with a0=sp-32, a1=0x4, a2=0x1, a3=ret(fopen) (`jalr` at 0xee29a2c).
  Calls `fclose` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xee29a38).
  At `bne` at 0xee29a00 (target 0xee29a18), taken when v0(=ret(fopen)) != 0 and falls through when v0(=ret(fopen)) == 0.
  Returns v0 = 0x0, f0 = ret(fopen) (`jr` at 0xee29a10).
  Returns v0 = ?, f0 = ret(fclose) (`jr` at 0xee29a48).

- `__fm_BitmapRegisterFontFileFunctions` in `usr/lib32/libfm.so` at 0xee351f4 (n32).
  Evidence grade: established.
  Exact build: `usr/lib32/libfm.so`.
  Range: 0xee351f4-0xee35264 (112 bytes).
  Loads 4 bytes at abs 0xee65100 (`lw` at 0xee35214).
  Loads 4 bytes at abs 0xee65668 (`lw` at 0xee35220).
  Calls `__fm_FontFileRegisterRenderer` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xee3522c).
  At `bne` at 0xee3523c (target 0xee35228), taken when s1(?) < 0x6 (unsigned) and falls through when s1(?) >= 0x6 (unsigned).
  Returns v0 = 0x0, f0 = ret(__fm_FontFileRegisterRenderer) (`jr` at 0xee3525c).

- `__fm_FontFileRegisterFontFileFunctions` in `usr/lib32/libfm.so` at 0xee353d0 (n32).
  Evidence grade: established.
  Exact build: `usr/lib32/libfm.so`.
  Range: 0xee353d0-0xee35408 (56 bytes).
  Loads 4 bytes at abs 0xee65658 (`lw` at 0xee353e4).
  Calls `__fm_BitmapRegisterFontFileFunctions` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xee353ec).
  Returns v0 = 0x0, f0 = ret(__fm_BitmapRegisterFontFileFunctions) (`jr` at 0xee35400).

- `__fm_FontFileRegisterRenderer` in `usr/lib32/libfm.so` at 0xee35408 (n32).
  Evidence grade: established.
  Exact build: `usr/lib32/libfm.so`.
  Range: 0xee35408-0xee354fc (244 bytes).
  Loads 4 bytes at abs 0xee65104 (`lw` at 0xee35428).
  2 4-byte lw loads at abs 0xee749c8, including `lw` at 0xee35430, `lw` at 0xee35474.
  Loads 4 bytes at abs 0xee65168 (`lw` at 0xee35440).
  2 4-byte lw loads at abs 0xee749cc, including `lw` at 0xee35454, `lw` at 0xee35498.
  2 4-byte lw loads at ?, including `lw` at 0xee35460, `lw` at 0xee3546c.
  Loads 4 bytes at a0 (`lw` at 0xee35464).
  2 4-byte lw loads at abs 0xee654b0, including `lw` at 0xee35488, `lw` at 0xee35488.
  Stores 4 bytes from s2 at abs 0xee749c8 (`sw` at 0xee354b4).
  Stores 4 bytes from s1 at a0 +0x18 (`sw` at 0xee354b8).
  Stores 4 bytes from v0 at abs 0xee749cc (`sw` at 0xee354bc).
  Stores 4 bytes from s3 at (ret(__fm_Xrealloc) + ([0xee749c8]+1 << 0x2)) -0x4 (`sw` at 0xee354c4).
  Calls `strcmp` via got with a0=unknown, a1=[a0], a2=unknown, a3=unknown (`jalr` at 0xee35468).
  Calls `__fm_Xrealloc` via got with a0=[0xee749cc], a1=([0xee749c8] << 0x2)+4, a2=unknown, a3=unknown (`jalr` at 0xee3549c).
  At `blez` at 0xee35444 (target 0xee35488), taken when v0(=[0xee749c8]) <= 0 (signed) -> outside and falls through when v0(=[0xee749c8]) > 0 (signed).
  At `beq` at 0xee35470 (target 0xee354f4), taken when v0(=ret(strcmp)) == 0 and falls through when v0(=ret(strcmp)) != 0.
  At `bne` at 0xee35484 (target 0xee35454), taken when s2(?) < v0(=[0xee749c8]) (signed) and falls through when s2(?) >= v0(=[0xee749c8]) (signed).
  At `beq` at 0xee354a8 (target 0xee354ec), taken when v0(=ret(__fm_Xrealloc)) == 0 and falls through when v0(=ret(__fm_Xrealloc)) != 0.
  At `beq` at 0xee354ec (target 0xee354c8), the branch is always taken.
  At `beq` at 0xee354f4 (target 0xee354c8), the branch is always taken.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xee354e4).

- `__fm_FontFileRegisterBitmapSource` in `usr/lib32/libfm.so` at 0xee370e4 (n32).
  Evidence grade: established.
  Exact build: `usr/lib32/libfm.so`.
  Range: 0xee370e4-0xee371bc (216 bytes).
  2 4-byte lw loads at abs 0xee659a0, including `lw` at 0xee370f8, `lw` at 0xee37160.
  2 4-byte lw loads at sym(FontFileBitmapSources) +0x8, including `lw` at 0xee370fc, `lw` at 0xee37170.
  Loads 4 bytes at sym(FontFileBitmapSources) (`lw` at 0xee37108).
  Loads 4 bytes at sym(FontFileBitmapSources) +0x4 (`lw` at 0xee37114).
  Loads 4 bytes at ? (`lw` at 0xee37124).
  Loads 4 bytes at abs 0xee654b0 (`lw` at 0xee37144).
  Stores 4 bytes from v0 at sym(FontFileBitmapSources) (`sw` at 0xee37178).
  Stores 4 bytes from a3 at sym(FontFileBitmapSources) +0x4 (`sw` at 0xee3717c).
  Stores 4 bytes from a5 at sym(FontFileBitmapSources) +0x8 (`sw` at 0xee37188).
  Stores 4 bytes from s0 at ? (`sw` at 0xee37194).
  Calls `__fm_Xrealloc` via got with a0=[sym(FontFileBitmapSources)], a1=([sym(FontFileBitmapSources)+4] << 0x2)+16, a2=[sym(FontFileBitmapSources)+4]+4, a3=unknown, a6=[sym(FontFileBitmapSources)+8], a7=0x1 (`jalr` at 0xee37158).
  At `blez` at 0xee37110 (target 0xee3713c), taken when a6(=[sym(FontFileBitmapSources)+8]) <= 0 (signed) and falls through when a6(=[sym(FontFileBitmapSources)+8]) > 0 (signed).
  At `beq` at 0xee3712c (target 0xee371ac), taken when v1(?) == s0(=a0) and falls through when v1(?) != s0(=a0).
  At `bne` at 0xee37134 (target 0xee37124), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0xee3713c (target 0xee37180), taken when t0(=[sym(FontFileBitmapSources)+4]) != a6(=[sym(FontFileBitmapSources)+8]) and falls through when t0(=[sym(FontFileBitmapSources)+4]) == a6(=[sym(FontFileBitmapSources)+8]).
  At `beq` at 0xee3716c (target 0xee371b4), taken when v0(=ret(__fm_Xrealloc)) == 0 and falls through when v0(=ret(__fm_Xrealloc)) != 0.
  At `beq` at 0xee371ac (target 0xee3719c), the branch is always taken.
  At `beq` at 0xee371b4 (target 0xee3719c), the branch is always taken.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xee371a4).

- `__fm_FontFileUnregisterBitmapSource` in `usr/lib32/libfm.so` at 0xee371bc (n32).
  Evidence grade: established.
  Exact build: `usr/lib32/libfm.so`.
  Range: 0xee371bc-0xee3728c (208 bytes).
  Loads 4 bytes at abs 0xee659a0 (`lw` at 0xee371d4).
  2 4-byte lw loads at sym(FontFileBitmapSources) +0x8, including `lw` at 0xee371d8, `lw` at 0xee37248.
  2 4-byte lw loads at sym(FontFileBitmapSources), including `lw` at 0xee371e8, `lw` at 0xee37238.
  2 4-byte lw loads at ?, including `lw` at 0xee371f0, `lw` at 0xee37240.
  Stores 4 bytes from a5 at sym(FontFileBitmapSources) +0x8 (`sw` at 0xee37220).
  Stores 4 bytes from a1 at ? (`sw` at 0xee37244).
  Loads 4 bytes at abs 0xee654b4 (`lw` at 0xee37264).
  Stores 4 bytes from zero at sym(FontFileBitmapSources) +0x4 (`sw` at 0xee37270).
  Stores 4 bytes from zero at sym(FontFileBitmapSources) (`sw` at 0xee3727c).
  Calls `__fm_Xfree` via got with a0=[sym(FontFileBitmapSources)], a1=a1 at entry (arg1), a2=unknown, a3=unknown, a5=[sym(FontFileBitmapSources)+8]-1, a6=[sym(FontFileBitmapSources)] (`jalr` at 0xee3726c).
  At `blez` at 0xee371e4 (target 0xee3720c), taken when a5(=[sym(FontFileBitmapSources)+8]) <= 0 (signed) and falls through when a5(=[sym(FontFileBitmapSources)+8]) > 0 (signed).
  At `beq` at 0xee371f4 (target 0xee3721c), taken when v0(?) == a0 and falls through when v0(?) != a0.
  At `bne` at 0xee37204 (target 0xee371f0), taken when a2(?) < a5(=[sym(FontFileBitmapSources)+8]) (signed) and falls through when a2(?) >= a5(=[sym(FontFileBitmapSources)+8]) (signed).
  At `beq` at 0xee37228 (target 0xee37264), taken when a5(=[sym(FontFileBitmapSources)+8]-1) == 0 and falls through when a5(=[sym(FontFileBitmapSources)+8]-1) != 0.
  At `beq` at 0xee37230 (target 0xee37210), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0xee37254 (target 0xee37238), taken when a2(?) < a0(=[sym(FontFileBitmapSources)+8]) (signed) and falls through when a2(?) >= a0(=[sym(FontFileBitmapSources)+8]) (signed).
  At `beq` at 0xee3725c (target 0xee37210), the branch is always taken.
  Returns v0 = ? (`jr` at 0xee37214).
  Returns v0 = ret(__fm_Xfree), f0 = ret(__fm_Xfree) (`jr` at 0xee37284).

- `HintReplace` in `usr/lib32/libfm.so` at 0xee531fc (n32).
  Evidence grade: established.
  Exact build: `usr/lib32/libfm.so`.
  Range: 0xee531fc-0xee53210 (20 bytes).
  Loads 4 bytes at abs 0xee65a3c (`lw` at 0xee531fc).
  Loads 4 bytes at abs 0xee65a40 (`lw` at 0xee53200).
  Loads 4 bytes at sym(numstems) (`lw` at 0xee53204).
  Stores 4 bytes from at at sym(currstartstem) (`sw` at 0xee5320c).
  Returns v0 = sym(currstartstem) (`jr` at 0xee53208).

- `__glx_ReadPixels` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8338c0 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8338c0-0xd833b4c (652 bytes).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd8338d0).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd8338f4).
  Loads 4 bytes at [[0x1014]+276] +0xd8 (`lw` at 0xd8338f8).
  Loads 4 bytes at [[0x1014]+276] +0x4 (`lw` at 0xd833908).
  Loads 4 bytes at abs 0xd845d08 (`lw` at 0xd83390c).
  4 4-byte lw loads at [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd83391c, `lw` at 0xd833a18, `lw` at 0xd833a64.
  4 4-byte lw loads at [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd833928, `lw` at 0xd833940, `lw` at 0xd83396c.
  Loads 4 bytes at [[[[0x1014]+276]+216]+1232] (`lw` at 0xd83392c).
  Loads 4 bytes at [[[0x1014]+276]+216] +0x70 (`lw` at 0xd833944).
  2 4-byte sw stores at [[[0x1014]+276]+216] +0x64, including `sw` at 0xd833954, `sw` at 0xd833970.
  Loads 4 bytes at abs 0xd845a80 (`lw` at 0xd833958).
  Stores 2 bytes from t0 at [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd833978).
  2 1-byte sb stores at [[[[0x1014]+276]+216]+108], including `sb` at 0xd83397c, `sb` at 0xd8339a8.
  Loads 4 bytes at [[[0x1014]+276]+216] +0x60 (`lw` at 0xd833980).
  Stores 4 bytes from t2 at [[[0x1014]+276]+216] +0x6c (`sw` at 0xd833994).
  Stores 4 bytes from t4 at [[[0x1014]+276]+216] +0x60 (`sw` at 0xd833998).
  Loads 4 bytes at [[0x1014]+276] +0x110 (`lw` at 0xd83399c).
  Stores 1 byte from t6 at [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8339a0).
  Loads 4 bytes at [[0x1014]+276] +0x3c (`lw` at 0xd8339ac).
  Stores 4 bytes from t9 at [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8339b8).
  Stores 4 bytes from t7 at [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8339c4).
  Stores 4 bytes from t8 at [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd8339cc).
  Stores 4 bytes from t0 at [[[[0x1014]+276]+216]+108] +0x10 (`sw` at 0xd8339d4).
  Stores 4 bytes from t1 at [[[[0x1014]+276]+216]+108] +0x14 (`sw` at 0xd8339dc).
  Stores 4 bytes from t2 at [[[[0x1014]+276]+216]+108] +0x18 (`sw` at 0xd8339e4).
  Stores 4 bytes from t3 at [[[[0x1014]+276]+216]+108] +0x1c (`sw` at 0xd8339ec).
  Loads 1 byte at [[0x1014]+276] +0x4c (`lbu` at 0xd8339f0).
  Stores 1 byte from zero at [[[[0x1014]+276]+216]+108] +0x21 (`sb` at 0xd8339f4).
  Stores 1 byte from t4 at [[[[0x1014]+276]+216]+108] +0x20 (`sb` at 0xd8339f8).
  Loads 4 bytes at abs 0xd845a94 (`lw` at 0xd8339fc).
  Loads 4 bytes at abs 0xd845a7c (`lw` at 0xd833a1c).
  2 4-byte lw loads at abs 0xd845b4c, including `lw` at 0xd833a40, `lw` at 0xd833aa0.
  Loads 4 bytes at [[0x1014]+276] +0xb0 (`lw` at 0xd833a54).
  Stores 4 bytes from t6 at [[0x1014]+276] +0xb0 (`sw` at 0xd833a6c).
  Loads 4 bytes at abs 0xd845abc (`lw` at 0xd833a70).
  Loads 4 bytes at abs 0xd845d3c (`lw` at 0xd833ab4).
  Loads 4 bytes at abs 0xd845a70 (`lw` at 0xd833aec).
  2 4-byte lw loads at [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd833b04, `lw` at 0xd833b1c.
  Loads 4 bytes at [[[[0x1014]+276]+216]+1232] +0x4 (`lw` at 0xd833b08).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd833914).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd833934).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd833960).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0 (`jalr` at 0xd833a00).
  Calls `malloc` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd833a28).
  Calls `_XEatData` via got with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd833a4c).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=unknown, a3=unknown (`jalr` at 0xd833a80).
  Calls `_XEatData` via got with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd833aa8).
  Calls `__glXEmptyImage` via got with a0=[[0x1014]+276], a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=unknown (`jalr` at 0xd833adc).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd833af0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd833b10).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd833b2c).
  At `beql` at 0xd8338fc (target 0xd833b3c), taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd833900 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd833904 (target 0xd833b38), taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  At `beql` at 0xd833924 (target 0xd833944), taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd833928 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd833950 (target 0xd833974), taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+36) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+36) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd833954 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd833a14 (target 0xd833b00), taken when v1(?) == 0 and falls through when v1(?) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd833a18 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd833a38 (target 0xd833a70), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `bnel` at 0xd833a60 (target 0xd833b00), taken when t5(=[[[0x1014]+276]+176]) != 0 and falls through when t5(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd833a64 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd833a68 (target 0xd833afc), the branch is always taken.
  At `beq` at 0xd833a98 (target 0xd833ab4), taken when (a2(?) & 0x3) == 0 and falls through when (a2(?) & 0x3) != 0.
  At `beql` at 0xd833b00 (target 0xd833b20), taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd833b04 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd833b24 (target 0xd833b3c), taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd833b28 runs only when taken and is annulled on fall-through.
  Returns v0 = ? (`jr` at 0xd833b44).

- `__glXFindFBConfigFromVid` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8344d0 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8344d0-0xd834598 (200 bytes).
  Loads 4 bytes at abs 0xd845d00 (`lw` at 0xd8344e0).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd83451c).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd834528).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd834540).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd834548).
  Loads 4 bytes at ? (`lw` at 0xd834564).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8344f4).
  At `bne` at 0xd834504 (target 0xd834514), taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  At `beq` at 0xd83450c (target 0xd834588), the branch is always taken.
  At `bltz` at 0xd834514 (target 0xd83452c), taken when a1 < 0 (signed) and falls through when a1 >= 0 (signed).
  At `bnel` at 0xd834524 (target 0xd834538), taken when a1 < t7(=[a0+136]) (signed) and falls through when a1 >= t7(=[a0+136]) (signed); its branch-likely delay slot `lw t8,32(v0)` at 0xd834528 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd83452c (target 0xd834588), the branch is always taken.
  At `bnel` at 0xd834544 (target 0xd834558), taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0 and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0; its branch-likely delay slot `lw v0,16(a0)` at 0xd834548 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd83454c (target 0xd834588), the branch is always taken.
  At `bltzl` at 0xd83455c (target 0xd834588), taken when v0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]-1) < 0 (signed) and falls through when v0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]-1) >= 0 (signed); its branch-likely delay slot `or v0,zero,zero` at 0xd834560 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd83456c (target 0xd83457c), taken when a2 != t0(?) and falls through when a2 == t0(?).
  At `beq` at 0xd834574 (target 0xd834588), the branch is always taken.
  At `bgez` at 0xd83457c (target 0xd834564), taken when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  Returns v0 = ?, f0 = ret(__glXInitialize) (`jr` at 0xd834590).
  The instructions from 0xd834534 to 0xd834534 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd834554 to 0xd834554 are not reached by any path from the entry, and their branches are not listed.

- `__glXFindFBConfig` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd834598 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd834598-0xd834b6c (1492 bytes).
  Loads 4 bytes at abs 0xd845d00 (`lw` at 0xd8345a8).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd8345e4).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd8345f0).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd834608).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd834610).
  Loads 4 bytes at ? (`lw` at 0xd83462c).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8345bc).
  At `bne` at 0xd8345cc (target 0xd8345dc), taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  At `beq` at 0xd8345d4 (target 0xd834650), the branch is always taken.
  At `bltz` at 0xd8345dc (target 0xd8345f4), taken when a1 < 0 (signed) and falls through when a1 >= 0 (signed).
  At `bnel` at 0xd8345ec (target 0xd834600), taken when a1 < t7(=[a0+136]) (signed) and falls through when a1 >= t7(=[a0+136]) (signed); its branch-likely delay slot `lw t8,32(v0)` at 0xd8345f0 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8345f4 (target 0xd834650), the branch is always taken.
  At `bnel` at 0xd83460c (target 0xd834620), taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0 and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0; its branch-likely delay slot `lw v0,16(a0)` at 0xd834610 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd834614 (target 0xd834650), the branch is always taken.
  At `bltzl` at 0xd834624 (target 0xd834650), taken when v0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]-1) < 0 (signed) and falls through when v0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]-1) >= 0 (signed); its branch-likely delay slot `or v0,zero,zero` at 0xd834628 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd834634 (target 0xd834644), taken when a2 != t0(?) and falls through when a2 == t0(?).
  At `beq` at 0xd83463c (target 0xd834650), the branch is always taken.
  At `bgez` at 0xd834644 (target 0xd83462c), taken when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  Returns v0 = ?, f0 = ret(__glXInitialize) (`jr` at 0xd834658).
  The instructions from 0xd8345fc to 0xd8345fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83461c to 0xd83461c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd834660 to 0xd834b68 are not reached by any path from the entry, and their branches are not listed.

- `glXGetFBConfigFltAttribSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd834a60 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd834a60-0xd834b6c (268 bytes).
  Loads 4 bytes at abs 0xd8458f4 (`lw` at 0xd834a94).
  Loads 4 bytes at (a2-32809 << 0x2) +0xd841070 (`lw` at 0xd834aa0).
  Loads 4 bytes at abs 0xd845bc8 (`lw` at 0xd834b30).
  Stores 8 bytes from f10 at a3 (`sdc1` at 0xd834b54).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd834aa8).
  Calls `glXGetFBConfigAttribSGIX` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-4 (`jalr` at 0xd834b38).
  At `beq` at 0xd834a8c (target 0xd834b30), taken when t6(=a2-32809) >= 0x8 (unsigned) and falls through when t6(=a2-32809) < 0x8 (unsigned).
  Returns v0 = ret(glXGetFBConfigAttribSGIX), f0 = ret(glXGetFBConfigAttribSGIX) (`jr` at 0xd834b64).
  The instructions from 0xd834ab0 to 0xd834b2c are not reached by any path from the entry, and their branches are not listed.

- `orderFBConfigSGIXs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd834b6c (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd834b6c-0xd835ea8 (4924 bytes).
  17 4-byte lw loads at abs 0xd8458ec, including `lw` at 0xd834b7c, `lw` at 0xd834bb8, `lw` at 0xd834bdc.
  Loads 4 bytes at a1 +0x1c (`lw` at 0xd834b9c).
  Loads 4 bytes at a0 +0x1c (`lw` at 0xd834ba4).
  Loads 4 bytes at a0 +0x78 (`lw` at 0xd834bbc).
  Loads 4 bytes at a1 +0x78 (`lw` at 0xd834bc0).
  Loads 4 bytes at a1 +0x74 (`lw` at 0xd834bd8).
  Loads 4 bytes at a0 +0x74 (`lw` at 0xd834be0).
  Loads 4 bytes at a1 +0x70 (`lw` at 0xd834bf8).
  Loads 4 bytes at a0 +0x70 (`lw` at 0xd834c00).
  Loads 4 bytes at a1 +0x7c (`lw` at 0xd834c18).
  Loads 4 bytes at a0 +0x7c (`lw` at 0xd834c20).
  Loads 4 bytes at a0 +0x6c (`lw` at 0xd834c5c).
  Loads 4 bytes at a1 +0x6c (`lw` at 0xd834c60).
  Loads 1 byte at a0 +0x4e (`lbu` at 0xd834c84).
  Loads 1 byte at a1 +0x4e (`lbu` at 0xd834c88).
  Loads 4 bytes at a0 +0x98 (`lw` at 0xd834cac).
  Loads 4 bytes at a1 +0x98 (`lw` at 0xd834cb0).
  Loads 4 bytes at a0 +0x94 (`lw` at 0xd834cd4).
  Loads 4 bytes at a1 +0x94 (`lw` at 0xd834cd8).
  Loads 4 bytes at a0 +0x90 (`lw` at 0xd834cfc).
  Loads 4 bytes at a1 +0x90 (`lw` at 0xd834d00).
  Loads 1 byte at a0 +0xa0 (`lbu` at 0xd834d20).
  Loads 1 byte at a1 +0xa0 (`lbu` at 0xd834d30).
  Loads 8 bytes at a1 +0xa8 (`ldc1` at 0xd834d3c).
  Loads 8 bytes at a0 +0xa8 (`ldc1` at 0xd834d40).
  Loads 8 bytes at a0 +0xb0 (`ldc1` at 0xd834d44).
  Loads 8 bytes at a1 +0xb0 (`ldc1` at 0xd834d48).
  Loads 8 bytes at a1 +0xb8 (`ldc1` at 0xd834d50).
  Loads 8 bytes at a0 +0xb8 (`ldc1` at 0xd834d5c).
  Loads 8 bytes at a0 +0xc0 (`ldc1` at 0xd834d68).
  Loads 8 bytes at a1 +0xc0 (`ldc1` at 0xd834d70).
  Loads 8 bytes at a1 +0xc8 (`ldc1` at 0xd834d78).
  Loads 8 bytes at a0 +0xc8 (`ldc1` at 0xd834d80).
  Loads 8 bytes at a0 +0xd0 (`ldc1` at 0xd834d88).
  Loads 8 bytes at a1 +0xd0 (`ldc1` at 0xd834d90).
  Loads 8 bytes at a1 +0xd8 (`ldc1` at 0xd834d98).
  Loads 8 bytes at a0 +0xd8 (`ldc1` at 0xd834da0).
  Loads 8 bytes at a0 +0xe0 (`ldc1` at 0xd834da8).
  Loads 8 bytes at a1 +0xe0 (`ldc1` at 0xd834db0).
  Loads 4 bytes at a0 +0x64 (`lw` at 0xd834df4).
  Loads 4 bytes at a1 +0x64 (`lw` at 0xd834df8).
  Loads 4 bytes at a0 +0x68 (`lw` at 0xd834e1c).
  Loads 4 bytes at a1 +0x68 (`lw` at 0xd834e20).
  Loads 4 bytes at a0 +0x5c (`lw` at 0xd834e44).
  Loads 4 bytes at a1 +0x5c (`lw` at 0xd834e48).
  Loads 4 bytes at a1 +0x58 (`lw` at 0xd834e60).
  Loads 4 bytes at a0 +0x58 (`lw` at 0xd834e68).
  Loads 4 bytes at a1 +0x54 (`lw` at 0xd834e80).
  Loads 4 bytes at a0 +0x54 (`lw` at 0xd834e88).
  Loads 4 bytes at a1 +0x60 (`lw` at 0xd834ea0).
  Loads 4 bytes at a0 +0x60 (`lw` at 0xd834ea8).
  Loads 4 bytes at a0 (`lw` at 0xd834ee4).
  Loads 4 bytes at a1 (`lw` at 0xd834ee8).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0+28], a1=[a1+28], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd834ba0).
  Calls `orderLarger [0xd825f88]` via register-constant with a0=[a0+120], a1=[a1+120], a2=unknown, a3=unknown (`jalr` at 0xd834bc8).
  Calls `orderLarger [0xd825f88]` via register-constant with a0=[a0+116], a1=[a1+116], a2=unknown, a3=unknown (`jalr` at 0xd834be8).
  Calls `orderLarger [0xd825f88]` via register-constant with a0=[a0+112], a1=[a1+112], a2=unknown, a3=unknown (`jalr` at 0xd834c08).
  Calls `orderLarger [0xd825f88]` via register-constant with a0=[a0+124], a1=[a1+124], a2=unknown, a3=unknown (`jalr` at 0xd834c28).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0+108], a1=[a1+108], a2=unknown, a3=unknown (`jalr` at 0xd834c68).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0+78]:1, a1=[a1+78]:1, a2=unknown, a3=unknown (`jalr` at 0xd834c90).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0+152], a1=[a1+152], a2=unknown, a3=unknown (`jalr` at 0xd834cb8).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0+148], a1=[a1+148], a2=unknown, a3=unknown (`jalr` at 0xd834ce0).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0+144], a1=[a1+144], a2=unknown, a3=unknown (`jalr` at 0xd834d08).
  Calls `orderLarger [0xd825f88]` via register-constant with a0=[a0+100], a1=[a1+100], a2=unknown, a3=unknown (`jalr` at 0xd834e00).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0+104], a1=[a1+104], a2=unknown, a3=unknown (`jalr` at 0xd834e28).
  Calls `orderLarger [0xd825f88]` via register-constant with a0=[a0+92], a1=[a1+92], a2=unknown, a3=unknown (`jalr` at 0xd834e50).
  Calls `orderLarger [0xd825f88]` via register-constant with a0=[a0+88], a1=[a1+88], a2=unknown, a3=unknown (`jalr` at 0xd834e70).
  Calls `orderLarger [0xd825f88]` via register-constant with a0=[a0+84], a1=[a1+84], a2=unknown, a3=unknown (`jalr` at 0xd834e90).
  Calls `orderLarger [0xd825f88]` via register-constant with a0=[a0+96], a1=[a1+96], a2=unknown, a3=unknown (`jalr` at 0xd834eb0).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0], a1=[a1], a2=unknown, a3=unknown (`jalr` at 0xd834ef0).
  At `beq` at 0xd834ba8 (target 0xd834bb8), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd834bb0 (target 0xd834f10), the branch is always taken.
  At `beq` at 0xd834c48 (target 0xd834c58), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xd834c50 (target 0xd834f0c), the branch is always taken.
  At `beq` at 0xd834c70 (target 0xd834c80), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd834c78 (target 0xd834f10), the branch is always taken.
  At `beq` at 0xd834c98 (target 0xd834ca8), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd834ca0 (target 0xd834f10), the branch is always taken.
  At `beq` at 0xd834cc0 (target 0xd834cd0), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd834cc8 (target 0xd834f10), the branch is always taken.
  At `beq` at 0xd834ce8 (target 0xd834cf8), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd834cf0 (target 0xd834f10), the branch is always taken.
  At `beq` at 0xd834d10 (target 0xd834d20), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd834d18 (target 0xd834f10), the branch is always taken.
  At `bne` at 0xd834d28 (target 0xd834df0), taken when v0(=0x1) != t1(=[a0+160]:1) and falls through when v0(=0x1) == t1(=[a0+160]:1).
  At `bne` at 0xd834d34 (target 0xd834df0), taken when v0(=0x1) != t2(=[a1+160]:1) and falls through when v0(=0x1) == t2(=[a1+160]:1).
  At `bc1t` at 0xd834dc8 (target 0xd834df0), taken when f0 == f2 (c.eq.d at 0xd834dc0) and falls through when not (f0 == f2 (c.eq.d at 0xd834dc0)).
  At `bc1f` at 0xd834dd8 (target 0xd834de8), taken when not (f0 < f2 (c.lt.d at 0xd834dd0)) and falls through when f0 < f2 (c.lt.d at 0xd834dd0).
  At `beq` at 0xd834de0 (target 0xd834f0c), the branch is always taken.
  At `beq` at 0xd834de8 (target 0xd834f0c), the branch is always taken.
  At `beq` at 0xd834e08 (target 0xd834e18), taken when v0(=ret(orderLarger)) == 0 and falls through when v0(=ret(orderLarger)) != 0.
  At `beq` at 0xd834e10 (target 0xd834f10), the branch is always taken.
  At `beq` at 0xd834e30 (target 0xd834e40), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd834e38 (target 0xd834f10), the branch is always taken.
  At `beq` at 0xd834ed0 (target 0xd834ee0), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xd834ed8 (target 0xd834f0c), the branch is always taken.
  At `beq` at 0xd834ef8 (target 0xd834f08), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd834f00 (target 0xd834f10), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd834f18).
  The instructions from 0xd834f20 to 0xd835ea4 are not reached by any path from the entry, and their branches are not listed.

- `glXChooseFBConfig` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd835eb0 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd835eb0-0xd8370a0 (4592 bytes).
  Loads 4 bytes at a2 (`lw` at 0xd835ffc).
  4 4-byte lw loads at abs 0xd8458f4, including `lw` at 0xd836010, `lw` at 0xd8360a0, `lw` at 0xd8360c8.
  Loads 8 bytes at abs 0xd8411d0 (`ldc1` at 0xd836050).
  87 4-byte lw loads at ?, including `lw` at 0xd836068, `lw` at 0xd836070, `lw` at 0xd8360fc.
  Loads 4 bytes at (table(-0x800b) << 0x2) +0xd8411d8 (`lw` at 0xd8360ac).
  Loads 4 bytes at table(0xd841270) (`lw` at 0xd8360d4).
  9 4-byte sw stores at a3, including `sw` at 0xd836594, `sw` at 0xd836614, `sw` at 0xd836630.
  Loads 8 bytes at abs 0xd841310 (`ldc1` at 0xd8365bc).
  Loads 4 bytes at abs 0xd845d00 (`lw` at 0xd8365f0).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd836620).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd83662c).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd836648).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd83664c).
  2 4-byte lw loads at abs 0xd845a7c, including `lw` at 0xd8366f4, `lw` at 0xd83681c.
  4 4-byte lw loads at abs 0xd845a70, including `lw` at 0xd83683c, `lw` at 0xd836a44, `lw` at 0xd837024.
  2 4-byte lw loads at abs 0xd8458ec, including `lw` at 0xd8368e4, `lw` at 0xd836ebc.
  22 4-byte sw stores at ?, including `sw` at 0xd836958, `sw` at 0xd836980, `sw` at 0xd836984.
  3 1-byte lbu loads at ?, including `lbu` at 0xd836af0, `lbu` at 0xd836b10, `lbu` at 0xd836d6c.
  8 8-byte ldc1 loads at ?, including `ldc1` at 0xd836d8c, `ldc1` at 0xd836db0, `ldc1` at 0xd836dd4.
  Calls `(unknown callee)` via register with a0=unknown, a1=0x8031, a2=0x186a0, a3=0x186a1 (`jr` at 0xd8360b4).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8365f8).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a2=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12], a3=unknown (`jalr` at 0xd836704).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd836828).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd836844).
  Calls `orderFBConfigs [0xd8259cc]` via register-constant with a0=unknown, a1=unknown, a2=0x0, a3=unknown (`jalr` at 0xd8368f8).
  Calls `free` via got with a0=ret(malloc), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd836a4c).
  Calls `orderFBConfigs [0xd8259cc]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd836ed0).
  Calls `free` via got with a0=ret(malloc), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd83702c).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd837054).
  At `beq` at 0xd835ff4 (target 0xd8365a8), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0xd836008 (target 0xd8365a8), taken when v1(=[a2]) == 0 and falls through when v1(=[a2]) != 0.
  At `bne` at 0xd83605c (target 0xd83607c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beql` at 0xd836064 (target 0xd8363e0), taken when v1(?) == a2(=0x186a0) and falls through when v1(?) != a2(=0x186a0); its branch-likely delay slot `lw t6,0(s0)` at 0xd836068 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd83606c (target 0xd8363f8), taken when v1(?) == a3(=0x186a1) and falls through when v1(?) != a3(=0x186a1); its branch-likely delay slot `lw t9,0(s0)` at 0xd836070 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836074 (target 0xd83658c), the branch is always taken.
  At `bne` at 0xd836080 (target 0xd8360bc), taken when v0(?) < 0x29 (signed) and falls through when v0(?) >= 0x29 (signed).
  At `beql` at 0xd836098 (target 0xd83658c), taken when t6(=table(-0x800b)) >= 0x26 (unsigned) and falls through when t6(=table(-0x800b)) < 0x26 (unsigned); its branch-likely delay slot `lw t8,476(sp)` at 0xd83609c runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8360c0 (target 0xd83658c), taken when t7(?) >= 0x27 (unsigned) and falls through when t7(?) < 0x27 (unsigned); its branch-likely delay slot `lw t8,476(sp)` at 0xd8360c4 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd836104 (target 0xd836598), taken when s7(=-0x1) != t6(?) and falls through when s7(=-0x1) == t6(?).
  At `beq` at 0xd83610c (target 0xd836598), the branch is always taken.
  At `beq` at 0xd83611c (target 0xd836598), the branch is always taken.
  At `beql` at 0xd836128 (target 0xd836148), taken when s7(=-0x1) == v0(?) and falls through when s7(=-0x1) != v0(?); its branch-likely delay slot `ori a0,a0,0x400` at 0xd83612c runs only when taken and is annulled on fall-through.
  At `beq` at 0xd83613c (target 0xd836598), the branch is always taken.
  At `beq` at 0xd836148 (target 0xd836598), the branch is always taken.
  At `bne` at 0xd836158 (target 0xd836164), taken when s7(=-0x1) != v0(?) and falls through when s7(=-0x1) == v0(?).
  At `beq` at 0xd836164 (target 0xd836598), the branch is always taken.
  At `bne` at 0xd836174 (target 0xd836598), taken when s7(=-0x1) != t6(?) and falls through when s7(=-0x1) == t6(?).
  At `beq` at 0xd83617c (target 0xd836598), the branch is always taken.
  At `bne` at 0xd83618c (target 0xd836598), taken when s7(=-0x1) != t9(?) and falls through when s7(=-0x1) == t9(?).
  At `beq` at 0xd836194 (target 0xd836598), the branch is always taken.
  At `bne` at 0xd8361a4 (target 0xd836598), taken when s7(=-0x1) != t6(?) and falls through when s7(=-0x1) == t6(?).
  At `beq` at 0xd8361ac (target 0xd836598), the branch is always taken.
  At `bne` at 0xd8361bc (target 0xd836598), taken when s7(=-0x1) != t9(?) and falls through when s7(=-0x1) == t9(?).
  At `beq` at 0xd8361c4 (target 0xd836598), the branch is always taken.
  At `bne` at 0xd8361d4 (target 0xd836598), taken when s7(=-0x1) != t6(?) and falls through when s7(=-0x1) == t6(?).
  At `beq` at 0xd8361dc (target 0xd836598), the branch is always taken.
  At `bne` at 0xd8361ec (target 0xd836598), taken when s7(=-0x1) != t9(?) and falls through when s7(=-0x1) == t9(?).
  At `beq` at 0xd8361f4 (target 0xd836598), the branch is always taken.
  At `bne` at 0xd836204 (target 0xd836598), taken when s7(=-0x1) != t6(?) and falls through when s7(=-0x1) == t6(?).
  At `beq` at 0xd83620c (target 0xd836598), the branch is always taken.
  At `bne` at 0xd83621c (target 0xd836598), taken when s7(=-0x1) != t9(?) and falls through when s7(=-0x1) == t9(?).
  At `beq` at 0xd836224 (target 0xd836598), the branch is always taken.
  At `bne` at 0xd836234 (target 0xd836598), taken when s7(=-0x1) != t6(?) and falls through when s7(=-0x1) == t6(?).
  At `beq` at 0xd83623c (target 0xd836598), the branch is always taken.
  At `bne` at 0xd83624c (target 0xd836598), taken when s7(=-0x1) != t9(?) and falls through when s7(=-0x1) == t9(?).
  At `beq` at 0xd836254 (target 0xd836598), the branch is always taken.
  At `bne` at 0xd836264 (target 0xd836598), taken when s7(=-0x1) != t6(?) and falls through when s7(=-0x1) == t6(?).
  At `beq` at 0xd83626c (target 0xd836598), the branch is always taken.
  At `beq` at 0xd8362c4 (target 0xd8362d4), taken when s7(=-0x1) == t9(?) and falls through when s7(=-0x1) != t9(?).
  At `beq` at 0xd8362cc (target 0xd836598), the branch is always taken.
  At `beq` at 0xd8362d4 (target 0xd836598), the branch is always taken.
  At `beq` at 0xd8362e4 (target 0xd8362f8), taken when s7(=-0x1) == t7(?) and falls through when s7(=-0x1) != t7(?).
  At `beq` at 0xd8362f0 (target 0xd836598), the branch is always taken.
  At `beq` at 0xd8362f8 (target 0xd836598), the branch is always taken.
  At `beq` at 0xd836308 (target 0xd836598), the branch is always taken.
  At `beq` at 0xd836318 (target 0xd836598), taken when s7(=-0x1) == t7(?) and falls through when s7(=-0x1) != t7(?).
  At `beq` at 0xd836324 (target 0xd836598), the branch is always taken.
  At `beq` at 0xd836338 (target 0xd836598), taken when s7(=-0x1) == t6(?) and falls through when s7(=-0x1) != t6(?).
  At `beq` at 0xd836340 (target 0xd836598), the branch is always taken.
  At `beq` at 0xd836354 (target 0xd836598), taken when s7(=-0x1) == t9(?) and falls through when s7(=-0x1) != t9(?).
  At `beq` at 0xd83635c (target 0xd836598), the branch is always taken.
  At `beq` at 0xd836370 (target 0xd836598), taken when s7(=-0x1) == t9(?) and falls through when s7(=-0x1) != t9(?).
  At `beq` at 0xd836378 (target 0xd836598), the branch is always taken.
  At `beq` at 0xd836388 (target 0xd836598), taken when s7(=-0x1) == t7(?) and falls through when s7(=-0x1) != t7(?).
  At `beq` at 0xd836394 (target 0xd836598), the branch is always taken.
  At `bne` at 0xd8363e4 (target 0xd836598), taken when s7(=-0x1) != t6(?) and falls through when s7(=-0x1) == t6(?).
  At `beq` at 0xd8363ec (target 0xd836598), the branch is always taken.
  At `bne` at 0xd8363fc (target 0xd836598), taken when s7(=-0x1) != t9(?) and falls through when s7(=-0x1) == t9(?).
  At `beq` at 0xd836404 (target 0xd836598), the branch is always taken.
  At `beq` at 0xd836590 (target 0xd83706c), the branch is always taken.
  At `bnel` at 0xd83659c (target 0xd836058), taken when v1(?) != 0 and falls through when v1(?) == 0; its branch-likely delay slot `slt at,v1,a1` at 0xd8365a0 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8365b8 (target 0xd8365c4), the branch is always taken.
  At `beql` at 0xd8365cc (target 0xd8365e0), taken when t7(?) == at(=0x8000) and falls through when t7(?) != at(=0x8000); its branch-likely delay slot `sb zero,169(sp)` at 0xd8365d0 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8365d4 (target 0xd8365f0), taken when s7(=-0x1) != t7(?) and falls through when s7(=-0x1) == t7(?).
  At `bne` at 0xd836600 (target 0xd836618), taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  At `beq` at 0xd836610 (target 0xd83706c), the branch is always taken.
  At `bltz` at 0xd836618 (target 0xd836630), taken when s5(=a1) < 0 (signed) and falls through when s5(=a1) >= 0 (signed).
  At `bnel` at 0xd836628 (target 0xd836640), taken when s5(=a1) < t9(=[a0+136]) (signed) and falls through when s5(=a1) >= t9(=[a0+136]) (signed); its branch-likely delay slot `lw t7,32(v0)` at 0xd83662c runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836634 (target 0xd83706c), the branch is always taken.
  At `beql` at 0xd836650 (target 0xd836664), taken when a2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0 and falls through when a2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0; its branch-likely delay slot `lw t9,476(sp)` at 0xd836654 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd836658 (target 0xd836670), taken when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) != 0 and falls through when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) == 0.
  At `beq` at 0xd836668 (target 0xd83706c), the branch is always taken.
  At `beq` at 0xd836670 (target 0xd8366f4), the branch is always taken.
  At `bne` at 0xd836710 (target 0xd836728), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beq` at 0xd836720 (target 0xd83706c), the branch is always taken.
  At `blez` at 0xd836730 (target 0xd836818), taken when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  At `beq` at 0xd836738 (target 0xd836784), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xd836768 (target 0xd836774), taken when a3(?) >= v0(?) (signed) and falls through when a3(?) < v0(?) (signed).
  At `bne` at 0xd836774 (target 0xd83675c), taken when a0(?) != v1(?) and falls through when a0(?) == v1(?).
  At `beq` at 0xd83677c (target 0xd836814), taken when v1(?) == a2(?) and falls through when v1(?) != a2(?).
  At `beql` at 0xd8367c4 (target 0xd8367d4), taken when a3(?) >= v0(?) (signed) and falls through when a3(?) < v0(?) (signed); its branch-likely delay slot `lw t8,300(s4)` at 0xd8367c8 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8367d8 (target 0xd8367e8), taken when a3(?) >= t8(?) (signed) and falls through when a3(?) < t8(?) (signed); its branch-likely delay slot `lw t9,532(s4)` at 0xd8367dc runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8367ec (target 0xd8367fc), taken when a3(?) >= t9(?) (signed) and falls through when a3(?) < t9(?) (signed); its branch-likely delay slot `lw t6,764(s4)` at 0xd8367f0 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836800 (target 0xd83680c), taken when a3(?) >= t6(?) (signed) and falls through when a3(?) < t6(?) (signed).
  At `bne` at 0xd83680c (target 0xd8367b8), taken when a0(?) != a1(?) and falls through when a0(?) == a1(?).
  At `bne` at 0xd836834 (target 0xd836860), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beq` at 0xd836858 (target 0xd83706c), the branch is always taken.
  At `beq` at 0xd836860 (target 0xd836870), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bnel` at 0xd836868 (target 0xd836a70), taken when t8(?) != 0 and falls through when t8(?) == 0; its branch-likely delay slot `lw t6,172(sp)` at 0xd83686c runs only when taken and is annulled on fall-through.
  At `blez` at 0xd83687c (target 0xd836a44), taken when t9(?) <= 0 (signed) and falls through when t9(?) > 0 (signed).
  At `blez` at 0xd836890 (target 0xd8369ac), taken when t6(?) <= 0 (signed) and falls through when t6(?) > 0 (signed).
  At `bnel` at 0xd8368b8 (target 0xd8369a4), taken when t7(?) != t8(?) and falls through when t7(?) == t8(?); its branch-likely delay slot `addiu a2,a2,232` at 0xd8368bc runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8368c8 (target 0xd836920), taken when s3(?) == 0 and falls through when s3(?) != 0.
  At `bgez` at 0xd836900 (target 0xd836910), taken when v0(=ret(orderFBConfigs)) >= 0 (signed) and falls through when v0(=ret(orderFBConfigs)) < 0 (signed).
  At `beq` at 0xd836908 (target 0xd836914), the branch is always taken.
  At `bnel` at 0xd836914 (target 0xd8368d8), taken when s2(?) != s1(?) and falls through when s2(?) == s1(?); its branch-likely delay slot `addu v0,s2,s1` at 0xd836918 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836924 (target 0xd836994), taken when s2(?) >= s3(?) (signed) and falls through when s2(?) < s3(?) (signed).
  At `beq` at 0xd836938 (target 0xd836960), taken when a1(?) == 0 -> outside and falls through when a1(?) != 0.
  At `bne` at 0xd836954 (target 0xd836948), taken when a0(?) != v1(?) and falls through when a0(?) == v1(?).
  At `beq` at 0xd83695c (target 0xd836994), taken when s2(?) == v1(?) and falls through when s2(?) != v1(?).
  At `bne` at 0xd83698c (target 0xd836968), taken when s2(?) != v1(?) and falls through when s2(?) == v1(?).
  At `bne` at 0xd8369a4 (target 0xd8368ac), taken when a2(?) != s7(?) and falls through when a2(?) == s7(?).
  At `blez` at 0xd8369ac (target 0xd836a30), taken when s8(?) <= 0 (signed) and falls through when s8(?) > 0 (signed).
  At `beq` at 0xd8369c0 (target 0xd8369f4), taken when (s8(?) & 0x3) == 0 -> outside and falls through when (s8(?) & 0x3) != 0.
  At `bne` at 0xd8369e8 (target 0xd8369d4), taken when a1(?) != v1(?) and falls through when a1(?) == v1(?).
  At `beq` at 0xd8369f0 (target 0xd836a30), taken when v1(?) == s8(?) and falls through when v1(?) != s8(?).
  At `bne` at 0xd836a28 (target 0xd8369fc), taken when v1(?) != s8(?) and falls through when v1(?) == s8(?).
  At `bne` at 0xd836a3c (target 0xd836884), taken when t6(?) != t7(?) and falls through when t6(?) == t7(?).
  At `beq` at 0xd836a64 (target 0xd83706c), the branch is always taken.
  At `blez` at 0xd836a78 (target 0xd837024), taken when t6(?) <= 0 (signed) and falls through when t6(?) > 0 (signed).
  At `blez` at 0xd836a88 (target 0xd836f8c), taken when t7(?) <= 0 (signed) and falls through when t7(?) > 0 (signed).
  At `bnel` at 0xd836ab8 (target 0xd836f78), taken when t9(?) != t6(?) and falls through when t9(?) == t6(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836abc runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836ac0 (target 0xd836ad8), taken when s7(=-0x1) == t7(?) and falls through when s7(=-0x1) != t7(?).
  At `bnel` at 0xd836ad0 (target 0xd836f78), taken when t8(?) < t7(?) (signed) and falls through when t8(?) >= t7(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd836ad4 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd836ae0 (target 0xd836f78), taken when t9(?) != t6(?) and falls through when t9(?) == t6(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836ae4 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836ae8 (target 0xd836afc), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bnel` at 0xd836af4 (target 0xd836f78), taken when t7(?) != t9(?) and falls through when t7(?) == t9(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836af8 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836b08 (target 0xd836b1c), taken when t6(?) == 0 and falls through when t6(?) != 0.
  At `bnel` at 0xd836b14 (target 0xd836f78), taken when t8(?) != t7(?) and falls through when t8(?) == t7(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836b18 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836b1c (target 0xd836b34), taken when s7(=-0x1) == t9(?) and falls through when s7(=-0x1) != t9(?).
  At `bnel` at 0xd836b2c (target 0xd836f78), taken when t6(?) < t9(?) (signed) and falls through when t6(?) >= t9(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd836b30 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836b34 (target 0xd836b4c), taken when s7(=-0x1) == t8(?) and falls through when s7(=-0x1) != t8(?).
  At `bnel` at 0xd836b44 (target 0xd836f78), taken when t7(?) < t8(?) (signed) and falls through when t7(?) >= t8(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd836b48 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836b4c (target 0xd836b64), taken when s7(=-0x1) == t6(?) and falls through when s7(=-0x1) != t6(?).
  At `bnel` at 0xd836b5c (target 0xd836f78), taken when t9(?) < t6(?) (signed) and falls through when t9(?) >= t6(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd836b60 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836b64 (target 0xd836b7c), taken when s7(=-0x1) == t7(?) and falls through when s7(=-0x1) != t7(?).
  At `bnel` at 0xd836b74 (target 0xd836f78), taken when t8(?) < t7(?) (signed) and falls through when t8(?) >= t7(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd836b78 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836b7c (target 0xd836b94), taken when s7(=-0x1) == t9(?) and falls through when s7(=-0x1) != t9(?).
  At `bnel` at 0xd836b8c (target 0xd836f78), taken when t6(?) < t9(?) (signed) and falls through when t6(?) >= t9(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd836b90 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836b94 (target 0xd836bac), taken when s7(=-0x1) == t8(?) and falls through when s7(=-0x1) != t8(?).
  At `bnel` at 0xd836ba4 (target 0xd836f78), taken when t7(?) < t8(?) (signed) and falls through when t7(?) >= t8(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd836ba8 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836bac (target 0xd836bc4), taken when s7(=-0x1) == t6(?) and falls through when s7(=-0x1) != t6(?).
  At `bnel` at 0xd836bbc (target 0xd836f78), taken when t9(?) < t6(?) (signed) and falls through when t9(?) >= t6(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd836bc0 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836bc4 (target 0xd836bdc), taken when s7(=-0x1) == t7(?) and falls through when s7(=-0x1) != t7(?).
  At `bnel` at 0xd836bd4 (target 0xd836f78), taken when t8(?) < t7(?) (signed) and falls through when t8(?) >= t7(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd836bd8 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836bdc (target 0xd836bf4), taken when s7(=-0x1) == t9(?) and falls through when s7(=-0x1) != t9(?).
  At `bnel` at 0xd836bec (target 0xd836f78), taken when t6(?) < t9(?) (signed) and falls through when t6(?) >= t9(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd836bf0 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836bf4 (target 0xd836c0c), taken when s7(=-0x1) == t8(?) and falls through when s7(=-0x1) != t8(?).
  At `bnel` at 0xd836c04 (target 0xd836f78), taken when t7(?) < t8(?) (signed) and falls through when t7(?) >= t8(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd836c08 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836c0c (target 0xd836c24), taken when s7(=-0x1) == t6(?) and falls through when s7(=-0x1) != t6(?).
  At `bnel` at 0xd836c1c (target 0xd836f78), taken when t9(?) < t6(?) (signed) and falls through when t9(?) >= t6(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd836c20 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836c24 (target 0xd836c38), taken when t7(?) == 0 and falls through when t7(?) != 0.
  At `bnel` at 0xd836c30 (target 0xd836f78), taken when t8(?) != t9(?) and falls through when t8(?) == t9(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836c34 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836c40 (target 0xd836c54), taken when s7(=-0x1) == t6(?) and falls through when s7(=-0x1) != t6(?).
  At `bnel` at 0xd836c4c (target 0xd836f78), taken when t6(?) != t7(?) and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836c50 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836c54 (target 0xd836c68), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bnel` at 0xd836c60 (target 0xd836f78), taken when t9(?) != t6(?) and falls through when t9(?) == t6(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836c64 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836c74 (target 0xd836c88), taken when t7(?) == 0 and falls through when t7(?) != 0.
  At `bnel` at 0xd836c80 (target 0xd836f78), taken when t8(?) != t9(?) and falls through when t8(?) == t9(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836c84 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836c88 (target 0xd836c9c), taken when t6(?) == 0 and falls through when t6(?) != 0.
  At `bnel` at 0xd836c94 (target 0xd836f78), taken when t7(?) != t8(?) and falls through when t7(?) == t8(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836c98 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836ca8 (target 0xd836cbc), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `bnel` at 0xd836cb4 (target 0xd836f78), taken when t6(?) != t7(?) and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836cb8 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836cbc (target 0xd836cd0), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bnel` at 0xd836cc8 (target 0xd836f78), taken when t9(?) != t6(?) and falls through when t9(?) == t6(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836ccc runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836cdc (target 0xd836cf0), taken when t7(?) == 0 and falls through when t7(?) != 0.
  At `bnel` at 0xd836ce8 (target 0xd836f78), taken when t8(?) != t9(?) and falls through when t8(?) == t9(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836cec runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836cf0 (target 0xd836d08), taken when s7(=-0x1) == t6(?) and falls through when s7(=-0x1) != t6(?).
  At `bnel` at 0xd836d00 (target 0xd836f78), taken when t6(?) != t8(?) and falls through when t6(?) == t8(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836d04 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836d08 (target 0xd836d20), taken when s7(=-0x1) == t9(?) and falls through when s7(=-0x1) != t9(?).
  At `bnel` at 0xd836d18 (target 0xd836f78), taken when t9(?) != t6(?) and falls through when t9(?) == t6(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836d1c runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836d20 (target 0xd836d34), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `beql` at 0xd836d2c (target 0xd836f78), taken when t7(?) == 0 and falls through when t7(?) != 0; its branch-likely delay slot `lw t6,92(sp)` at 0xd836d30 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836d34 (target 0xd836d4c), taken when s7(=-0x1) == t9(?) and falls through when s7(=-0x1) != t9(?).
  At `bnel` at 0xd836d44 (target 0xd836f78), taken when t6(?) < t9(?) (unsigned) and falls through when t6(?) >= t9(?) (unsigned); its branch-likely delay slot `lw t6,92(sp)` at 0xd836d48 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836d4c (target 0xd836d64), taken when s7(=-0x1) == t8(?) and falls through when s7(=-0x1) != t8(?).
  At `bnel` at 0xd836d5c (target 0xd836f78), taken when t7(?) < t8(?) (unsigned) and falls through when t7(?) >= t8(?) (unsigned); its branch-likely delay slot `lw t6,92(sp)` at 0xd836d60 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836d64 (target 0xd836e9c), taken when s7(=-0x1) == v0(?) and falls through when s7(=-0x1) != v0(?).
  At `bnel` at 0xd836d74 (target 0xd836f78), taken when v0(?) != t6(?) and falls through when v0(?) == t6(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd836d78 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836d84 (target 0xd836da4), taken when f20 == f4 (c.eq.d at 0xd836d7c) and falls through when not (f20 == f4 (c.eq.d at 0xd836d7c)); its branch-likely delay slot `c.eq.d $f20,$f8` at 0xd836d88 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836d98 (target 0xd836f78), taken when f4 < f6 (c.lt.d at 0xd836d90) and falls through when not (f4 < f6 (c.lt.d at 0xd836d90)); its branch-likely delay slot `lw t6,92(sp)` at 0xd836d9c runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836da8 (target 0xd836dc8), taken when f20 == f8 (c.eq.d at 0xd836da0) and falls through when not (f20 == f8 (c.eq.d at 0xd836da0)); its branch-likely delay slot `c.eq.d $f20,$f16` at 0xd836dac runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836dbc (target 0xd836f78), taken when f10 < f8 (c.lt.d at 0xd836db4) and falls through when not (f10 < f8 (c.lt.d at 0xd836db4)); its branch-likely delay slot `lw t6,92(sp)` at 0xd836dc0 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836dcc (target 0xd836dec), taken when f20 == f16 (c.eq.d at 0xd836dc4) and falls through when not (f20 == f16 (c.eq.d at 0xd836dc4)); its branch-likely delay slot `c.eq.d $f20,$f4` at 0xd836dd0 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836de0 (target 0xd836f78), taken when f16 < f18 (c.lt.d at 0xd836dd8) and falls through when not (f16 < f18 (c.lt.d at 0xd836dd8)); its branch-likely delay slot `lw t6,92(sp)` at 0xd836de4 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836df0 (target 0xd836e10), taken when f20 == f4 (c.eq.d at 0xd836de8) and falls through when not (f20 == f4 (c.eq.d at 0xd836de8)); its branch-likely delay slot `c.eq.d $f20,$f10` at 0xd836df4 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836e04 (target 0xd836f78), taken when f6 < f4 (c.lt.d at 0xd836dfc) and falls through when not (f6 < f4 (c.lt.d at 0xd836dfc)); its branch-likely delay slot `lw t6,92(sp)` at 0xd836e08 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836e14 (target 0xd836e34), taken when f20 == f10 (c.eq.d at 0xd836e0c) and falls through when not (f20 == f10 (c.eq.d at 0xd836e0c)); its branch-likely delay slot `c.eq.d $f20,$f16` at 0xd836e18 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836e28 (target 0xd836f78), taken when f10 < f8 (c.lt.d at 0xd836e20) and falls through when not (f10 < f8 (c.lt.d at 0xd836e20)); its branch-likely delay slot `lw t6,92(sp)` at 0xd836e2c runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836e38 (target 0xd836e58), taken when f20 == f16 (c.eq.d at 0xd836e30) and falls through when not (f20 == f16 (c.eq.d at 0xd836e30)); its branch-likely delay slot `c.eq.d $f20,$f6` at 0xd836e3c runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836e4c (target 0xd836f78), taken when f18 < f16 (c.lt.d at 0xd836e44) and falls through when not (f18 < f16 (c.lt.d at 0xd836e44)); its branch-likely delay slot `lw t6,92(sp)` at 0xd836e50 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836e5c (target 0xd836e7c), taken when f20 == f6 (c.eq.d at 0xd836e54) and falls through when not (f20 == f6 (c.eq.d at 0xd836e54)); its branch-likely delay slot `c.eq.d $f20,$f10` at 0xd836e60 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836e70 (target 0xd836f78), taken when f6 < f4 (c.lt.d at 0xd836e68) and falls through when not (f6 < f4 (c.lt.d at 0xd836e68)); its branch-likely delay slot `lw t6,92(sp)` at 0xd836e74 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836e80 (target 0xd836ea0), taken when f20 == f10 (c.eq.d at 0xd836e78) and falls through when not (f20 == f10 (c.eq.d at 0xd836e78)); its branch-likely delay slot `addiu s8,s8,1` at 0xd836e84 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd836e94 (target 0xd836f78), taken when f8 < f10 (c.lt.d at 0xd836e8c) and falls through when not (f8 < f10 (c.lt.d at 0xd836e8c)); its branch-likely delay slot `lw t6,92(sp)` at 0xd836e98 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836ea4 (target 0xd836ef4), taken when s3(?) == 0 and falls through when s3(?) != 0.
  At `bgez` at 0xd836ed8 (target 0xd836ee8), taken when v0(=ret(orderFBConfigs)) >= 0 (signed) and falls through when v0(=ret(orderFBConfigs)) < 0 (signed).
  At `beq` at 0xd836ee0 (target 0xd836eec), the branch is always taken.
  At `bnel` at 0xd836eec (target 0xd836eb0), taken when s2(?) != s1(?) and falls through when s2(?) == s1(?); its branch-likely delay slot `addu v0,s2,s1` at 0xd836ef0 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd836ef8 (target 0xd836f68), taken when s2(?) >= s3(?) (signed) and falls through when s2(?) < s3(?) (signed).
  At `beq` at 0xd836f0c (target 0xd836f34), taken when a1(?) == 0 -> outside and falls through when a1(?) != 0.
  At `bne` at 0xd836f28 (target 0xd836f1c), taken when a0(?) != v1(?) and falls through when a0(?) == v1(?).
  At `beq` at 0xd836f30 (target 0xd836f68), taken when s2(?) == v1(?) and falls through when s2(?) != v1(?).
  At `bne` at 0xd836f60 (target 0xd836f3c), taken when s2(?) != v1(?) and falls through when s2(?) == v1(?).
  At `bne` at 0xd836f84 (target 0xd836aac), taken when t9(?) != t7(?) and falls through when t9(?) == t7(?).
  At `blez` at 0xd836f8c (target 0xd837010), taken when s8(?) <= 0 (signed) and falls through when s8(?) > 0 (signed).
  At `beq` at 0xd836fa0 (target 0xd836fd4), taken when (s8(?) & 0x3) == 0 -> outside and falls through when (s8(?) & 0x3) != 0.
  At `bne` at 0xd836fc8 (target 0xd836fb4), taken when a1(?) != v1(?) and falls through when a1(?) == v1(?).
  At `beq` at 0xd836fd0 (target 0xd837010), taken when v1(?) == s8(?) and falls through when v1(?) != s8(?).
  At `bne` at 0xd837008 (target 0xd836fdc), taken when v1(?) != s8(?) and falls through when v1(?) == s8(?).
  At `bne` at 0xd83701c (target 0xd836a80), taken when t9(?) != t7(?) and falls through when t9(?) == t7(?).
  At `blez` at 0xd837034 (target 0xd83704c), taken when s6(?) <= 0 (signed) and falls through when s6(?) > 0 (signed).
  At `beq` at 0xd837044 (target 0xd83706c), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd837098).
  The instructions from 0xd8360e4 to 0xd8360f8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd836144 to 0xd836144 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd836274 to 0xd8362b4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83639c to 0xd8363dc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8363f4 to 0xd8363f4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83640c to 0xd836584 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8365c0 to 0xd8365c0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83663c to 0xd83663c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd836678 to 0xd8366f0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd836a6c to 0xd836a6c are not reached by any path from the entry, and their branches are not listed.

- `glXGetFBConfigs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8370a0 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8370a0-0xd83720c (364 bytes).
  Loads 4 bytes at abs 0xd845d00 (`lw` at 0xd8370b0).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd8370ec).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd8370f8).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd837110).
  Loads 4 bytes at abs 0xd845a7c (`lw` at 0xd837114).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd837118).
  2 4-byte sw stores at a2, including `sw` at 0xd83714c, `sw` at 0xd8371f8.
  5 4-byte sw stores at ?, including `sw` at 0xd837180, `sw` at 0xd8371c4, `sw` at 0xd8371c8.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8370c4).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=a1 at entry (arg1), a2=unknown, a3=unknown (`jalr` at 0xd837124).
  At `bne` at 0xd8370d4 (target 0xd8370e4), taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  At `beq` at 0xd8370dc (target 0xd8371fc), the branch is always taken.
  At `bltz` at 0xd8370e4 (target 0xd8370fc), taken when a1 < 0 (signed) and falls through when a1 >= 0 (signed).
  At `bnel` at 0xd8370f4 (target 0xd837108), taken when a1 < t7(=[a0+136]) (signed) and falls through when a1 >= t7(=[a0+136]) (signed); its branch-likely delay slot `lw t8,32(v1)` at 0xd8370f8 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8370fc (target 0xd8371fc), the branch is always taken.
  At `bne` at 0xd837138 (target 0xd837150), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beq` at 0xd837148 (target 0xd8371fc), the branch is always taken.
  At `blez` at 0xd837150 (target 0xd8371f0), taken when t1(?) <= 0 (signed) and falls through when t1(?) > 0 (signed).
  At `beq` at 0xd83715c (target 0xd837198), taken when (t1(?) & 0x3) == 0 -> outside and falls through when (t1(?) & 0x3) != 0.
  At `bne` at 0xd83718c (target 0xd837180), taken when a2(?) != a1(?) and falls through when a2(?) == a1(?).
  At `beq` at 0xd837194 (target 0xd8371f0), taken when a1(?) == t1(?) and falls through when a1(?) != t1(?).
  At `bne` at 0xd8371e8 (target 0xd8371c4), taken when a1(?) != t1(?) and falls through when a1(?) == t1(?).
  Returns v0 = ? (`jr` at 0xd837204).
  The instructions from 0xd837104 to 0xd837104 are not reached by any path from the entry, and their branches are not listed.

- `glXCreateNewContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8374bc (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8374bc-0xd837524 (104 bytes).
  Loads 4 bytes at abs 0xd8458e8 (`lw` at 0xd8374cc).
  Calls `CreateContext [0xd80f618]` via register-constant with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a2 at entry (arg2) (`jalr` at 0xd837508).
  Returns v0 = ret(CreateContext), f0 = ret(CreateContext) (`jr` at 0xd83751c).

- `__glXQueryContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd837524 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd837524-0xd838214 (3312 bytes).
  Loads 4 bytes at abs 0xd845d04 (`lw` at 0xd837558).
  5 4-byte lw loads at a0 +0x4d0, including `lw` at 0xd83757c, `lw` at 0xd837638, `lw` at 0xd837688.
  4 4-byte lw loads at a0 +0x6c, including `lw` at 0xd837584, `lw` at 0xd83759c, `lw` at 0xd8375c8.
  Loads 4 bytes at [a0+1232] (`lw` at 0xd837588).
  Loads 4 bytes at a0 +0x70 (`lw` at 0xd8375a0).
  2 4-byte sw stores at a0 +0x64, including `sw` at 0xd8375b0, `sw` at 0xd8375cc.
  Loads 4 bytes at abs 0xd845a80 (`lw` at 0xd8375b4).
  Stores 2 bytes from t8 at [a0+108] +0x2 (`sh` at 0xd8375d8).
  2 1-byte sb stores at [a0+108], including `sb` at 0xd8375dc, `sb` at 0xd837608.
  Loads 4 bytes at a0 +0x60 (`lw` at 0xd8375e0).
  Stores 4 bytes from t3 at a0 +0x6c (`sw` at 0xd8375f4).
  Stores 4 bytes from t5 at a0 +0x60 (`sw` at 0xd8375f8).
  Stores 1 byte from t0 at [a0+108] +0x1 (`sb` at 0xd837600).
  Loads 4 bytes at a1 +0x14 (`lw` at 0xd83760c).
  Stores 4 bytes from t6 at [a0+108] +0x4 (`sw` at 0xd837618).
  Loads 4 bytes at abs 0xd845a94 (`lw` at 0xd83761c).
  8 4-byte lw loads at a0 +0x7c, including `lw` at 0xd837640, `lw` at 0xd837658, `lw` at 0xd837690.
  4 4-byte lw loads at [a0+1232] +0x4, including `lw` at 0xd837644, `lw` at 0xd837694, `lw` at 0xd837700.
  Loads 4 bytes at abs 0xd845a7c (`lw` at 0xd8376cc).
  Loads 4 bytes at abs 0xd845abc (`lw` at 0xd837738).
  22 4-byte lw loads at ?, including `lw` at 0xd837778, `lw` at 0xd837788, `lw` at 0xd837790.
  5 4-byte sw stores at a1 +0x30, including `sw` at 0xd8377b0, `sw` at 0xd837820, `sw` at 0xd837874.
  5 4-byte sw stores at a1 +0x34, including `sw` at 0xd8377c0, `sw` at 0xd837830, `sw` at 0xd837884.
  5 4-byte sw stores at a1 +0x20, including `sw` at 0xd8377cc, `sw` at 0xd83783c, `sw` at 0xd837890.
  Loads 4 bytes at abs 0xd845a70 (`lw` at 0xd837944).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd837560).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd837590).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8375bc).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-36, a2=0x0, a3=0x0 (`jalr` at 0xd837620).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd83764c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd837668).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd83769c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8376b8).
  Calls `malloc` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8376d8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=ret(malloc), a2=unknown, a3=unknown (`jalr` at 0xd837708).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd837724).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=unknown, a3=unknown (`jalr` at 0xd837744).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd83794c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd83796c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd837988).
  At `bne` at 0xd837548 (target 0xd837558), taken when a1 != 0 and falls through when a1 == 0.
  At `beq` at 0xd837550 (target 0xd837998), the branch is always taken.
  At `bne` at 0xd83756c (target 0xd83757c), taken when v0(=ret(__glXSetupForCommand)) != 0 and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  At `beq` at 0xd837574 (target 0xd837998), the branch is always taken.
  At `beql` at 0xd837580 (target 0xd8375a0), taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s1)` at 0xd837584 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8375ac (target 0xd8375d0), taken when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned) and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s1)` at 0xd8375b0 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd837630 (target 0xd83767c), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beql` at 0xd83763c (target 0xd83765c), taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd837640 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd837660 (target 0xd837674), taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  At `beq` at 0xd837674 (target 0xd837998), the branch is always taken.
  At `bne` at 0xd837680 (target 0xd8376cc), taken when v1(?) < 0x4 (signed) and falls through when v1(?) >= 0x4 (signed).
  At `beql` at 0xd83768c (target 0xd8376ac), taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd837690 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8376b0 (target 0xd8376c4), taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  At `beq` at 0xd8376c4 (target 0xd837998), the branch is always taken.
  At `bne` at 0xd8376ec (target 0xd837738), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beql` at 0xd8376f8 (target 0xd837718), taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8376fc runs only when taken and is annulled on fall-through.
  At `beq` at 0xd83771c (target 0xd837730), taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  At `beq` at 0xd837730 (target 0xd837998), the branch is always taken.
  At `blez` at 0xd837758 (target 0xd837944), taken when t1(?) <= 0 (signed) and falls through when t1(?) > 0 (signed).
  At `beq` at 0xd837764 (target 0xd8377dc), taken when (t1(?) & 0x3) == 0 -> outside and falls through when (t1(?) & 0x3) != 0.
  At `beql` at 0xd837784 (target 0xd8377c8), taken when v0(?) == a1(=0x800c) and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t2,0(v1)` at 0xd837788 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd83778c (target 0xd8377b8), taken when v0(?) == a2(=0x8011) and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t8,0(v1)` at 0xd837790 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd837794 (target 0xd8377a8), taken when v0(?) == a3(=0x8013) and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t7,0(v1)` at 0xd837798 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd83779c (target 0xd8377d0), the branch is always taken.
  At `beq` at 0xd8377ac (target 0xd8377d0), the branch is always taken.
  At `beq` at 0xd8377bc (target 0xd8377d0), the branch is always taken.
  At `bnel` at 0xd8377d0 (target 0xd83777c), taken when t0(?) != a0(?) and falls through when t0(?) == a0(?); its branch-likely delay slot `lw v0,0(v1)` at 0xd8377d4 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8377d8 (target 0xd837944), taken when a0(?) == t1(?) and falls through when a0(?) != t1(?).
  At `beql` at 0xd8377f4 (target 0xd837838), taken when v0(?) == a1(=0x800c) and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t5,0(v1)` at 0xd8377f8 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8377fc (target 0xd837828), taken when v0(?) == a2(=0x8011) and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t4,0(v1)` at 0xd837800 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd837804 (target 0xd837818), taken when v0(?) == a3(=0x8013) and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t3,0(v1)` at 0xd837808 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd83780c (target 0xd837840), the branch is always taken.
  At `beq` at 0xd83781c (target 0xd837840), the branch is always taken.
  At `beq` at 0xd83782c (target 0xd837840), the branch is always taken.
  At `beql` at 0xd837848 (target 0xd83788c), taken when v0(?) == a1(=0x800c) and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t7,0(v1)` at 0xd83784c runs only when taken and is annulled on fall-through.
  At `beql` at 0xd837850 (target 0xd83787c), taken when v0(?) == a2(=0x8011) and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t9,0(v1)` at 0xd837854 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd837858 (target 0xd83786c), taken when v0(?) == a3(=0x8013) and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t6,0(v1)` at 0xd83785c runs only when taken and is annulled on fall-through.
  At `beq` at 0xd837860 (target 0xd837894), the branch is always taken.
  At `beq` at 0xd837870 (target 0xd837894), the branch is always taken.
  At `beq` at 0xd837880 (target 0xd837894), the branch is always taken.
  At `beql` at 0xd83789c (target 0xd8378e0), taken when v0(?) == a1(=0x800c) and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t3,0(v1)` at 0xd8378a0 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8378a4 (target 0xd8378d0), taken when v0(?) == a2(=0x8011) and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t2,0(v1)` at 0xd8378a8 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8378ac (target 0xd8378c0), taken when v0(?) == a3(=0x8013) and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t8,0(v1)` at 0xd8378b0 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8378b4 (target 0xd8378e8), the branch is always taken.
  At `beq` at 0xd8378c4 (target 0xd8378e8), the branch is always taken.
  At `beq` at 0xd8378d4 (target 0xd8378e8), the branch is always taken.
  At `beql` at 0xd8378f0 (target 0xd837934), taken when v0(?) == a1(=0x800c) and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t6,0(v1)` at 0xd8378f4 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8378f8 (target 0xd837924), taken when v0(?) == a2(=0x8011) and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t5,0(v1)` at 0xd8378fc runs only when taken and is annulled on fall-through.
  At `beql` at 0xd837900 (target 0xd837914), taken when v0(?) == a3(=0x8013) and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t4,0(v1)` at 0xd837904 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd837908 (target 0xd83793c), the branch is always taken.
  At `beq` at 0xd837918 (target 0xd83793c), the branch is always taken.
  At `beq` at 0xd837928 (target 0xd83793c), the branch is always taken.
  At `bnel` at 0xd83793c (target 0xd8377ec), taken when a0(?) != t1(?) and falls through when a0(?) == t1(?); its branch-likely delay slot `lw v0,0(v1)` at 0xd837940 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd83795c (target 0xd83797c), taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd837960 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd837980 (target 0xd837998), taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `or v0,zero,zero` at 0xd837984 runs only when taken and is annulled on fall-through.
  Returns v0 = one of 0x0, 0x5 (`jr` at 0xd8379a4).
  The instructions from 0xd8377a4 to 0xd8377a4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8377b4 to 0xd8377b4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8377c4 to 0xd8377c4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd837814 to 0xd837814 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd837824 to 0xd837824 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd837834 to 0xd837834 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd837868 to 0xd837868 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd837878 to 0xd837878 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd837888 to 0xd837888 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8378bc to 0xd8378bc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8378cc to 0xd8378cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8378dc to 0xd8378dc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd837910 to 0xd837910 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd837920 to 0xd837920 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd837930 to 0xd837930 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8379ac to 0xd838210 are not reached by any path from the entry, and their branches are not listed.

- `glXQueryContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8379ac (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8379ac-0xd837a78 (204 bytes).
  Loads 4 bytes at a1 +0xc4 (`lw` at 0xd8379d0).
  Loads 4 bytes at a1 +0x2c (`lw` at 0xd8379dc).
  Loads 4 bytes at abs 0xd8458f0 (`lw` at 0xd8379e8).
  Loads 4 bytes at a1 +0x30 (`lw` at 0xd837a3c).
  3 4-byte sw stores at a3, including `sw` at 0xd837a44, `sw` at 0xd837a50, `sw` at 0xd837a5c.
  Loads 4 bytes at a1 +0x34 (`lw` at 0xd837a48).
  Loads 4 bytes at a1 +0x20 (`lw` at 0xd837a54).
  Calls `__glXQueryContext [0xd837524]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8379f8).
  At `bne` at 0xd8379c0 (target 0xd8379d0), taken when a1 != 0 and falls through when a1 == 0.
  At `beq` at 0xd8379c8 (target 0xd837a68), the branch is always taken.
  At `bnel` at 0xd8379d4 (target 0xd837a20), taken when t6(=[a1+196]) != 0 and falls through when t6(=[a1+196]) == 0; its branch-likely delay slot `ori at,zero,0x800c` at 0xd8379d8 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8379e0 (target 0xd837a20), taken when t7(=[a1+44]) != 0 and falls through when t7(=[a1+44]) == 0; its branch-likely delay slot `ori at,zero,0x800c` at 0xd8379e4 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd837a0c (target 0xd837a1c), taken when v0(=ret(__glXQueryContext)) == 0 and falls through when v0(=ret(__glXQueryContext)) != 0.
  At `beq` at 0xd837a14 (target 0xd837a6c), the branch is always taken.
  At `beq` at 0xd837a20 (target 0xd837a54), taken when a2 == at(=0x800c) and falls through when a2 != at(=0x800c).
  At `beq` at 0xd837a2c (target 0xd837a48), taken when a2 == at(=0x8011) and falls through when a2 != at(=0x8011).
  At `bne` at 0xd837a34 (target 0xd837a60), taken when a2 != at(=0x8013) and falls through when a2 == at(=0x8013).
  At `beq` at 0xd837a40 (target 0xd837a68), the branch is always taken.
  At `beq` at 0xd837a4c (target 0xd837a68), the branch is always taken.
  At `beq` at 0xd837a58 (target 0xd837a68), the branch is always taken.
  At `beq` at 0xd837a60 (target 0xd837a68), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd837a70).

- `__glXGetReadDrawableSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd837f68 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd837f68-0xd8380a4 (316 bytes).
  Loads 4 bytes at a0 +0x4c (`lw` at 0xd837f88).
  Loads 4 bytes at [a0+76] +0xe8 (`lw` at 0xd837f94).
  Loads 4 bytes at [[a0+76]+232] +0x2c (`lw` at 0xd837fa0).
  3 4-byte lw loads at [a0+76] +0xd8, including `lw` at 0xd837fcc, `lw` at 0xd838000, `lw` at 0xd838040.
  2 4-byte lw loads at [a0+76] +0xdc, including `lw` at 0xd837fd0, `lw` at 0xd838004.
  2 4-byte lw loads at abs 0xd845adc, including `lw` at 0xd837fd4, `lw` at 0xd83804c.
  2 4-byte lw loads at abs 0xd845d28, including `lw` at 0xd837ffc, `lw` at 0xd838024.
  2 4-byte lw loads at ?, including `lw` at 0xd83802c, `lw` at 0xd838034.
  Loads 4 bytes at [[a0+76]+232] +0x24 (`lw` at 0xd838044).
  Stores 4 bytes from t3 at a1 (`sw` at 0xd838084).
  Stores 4 bytes from t5 at a2 (`sw` at 0xd838090).
  Calls `XGetGeometry` via got with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=sp-16, a3=sp-20 (`jalr` at 0xd837fec).
  Calls `glXQueryGLXPbufferSGIX` via got with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801d, a3=sp-8 (`jalr` at 0xd838010).
  Calls `glXQueryGLXPbufferSGIX` via got with a0=unknown, a1=unknown, a2=0x801e, a3=sp-12 (`jalr` at 0xd838030).
  Calls `XGetGeometry` via got with a0=[[a0+76]+216], a1=[[[a0+76]+232]+36], a2=sp-32, a3=sp-36 (`jalr` at 0xd838070).
  At `beq` at 0xd837fac (target 0xd837fcc), taken when v0(=[[[a0+76]+232]+44]) == at(=0x1) and falls through when v0(=[[[a0+76]+232]+44]) != at(=0x1).
  At `beq` at 0xd837fb4 (target 0xd837ffc), taken when v0(=[[[a0+76]+232]+44]) == at(=0x4) and falls through when v0(=[[[a0+76]+232]+44]) != at(=0x4).
  At `beq` at 0xd837fbc (target 0xd837ffc), taken when v0(=[[[a0+76]+232]+44]) == at(=0x5) and falls through when v0(=[[[a0+76]+232]+44]) != at(=0x5).
  At `beq` at 0xd837fc4 (target 0xd838040), taken when v0(=[[[a0+76]+232]+44]) == at(=0x6) and falls through when v0(=[[[a0+76]+232]+44]) != at(=0x6).
  At `beq` at 0xd837ff4 (target 0xd83807c), the branch is always taken.
  At `beq` at 0xd838038 (target 0xd83807c), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd83809c).

- `glXMakeContextCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd839804 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd839804-0xd83983c (56 bytes).
  Loads 4 bytes at abs 0xd845d10 (`lw` at 0xd839810).
  Calls `__glXMakeContextCurrent` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd839820).
  Returns v0 = ret(__glXMakeContextCurrent), f0 = ret(__glXMakeContextCurrent) (`jr` at 0xd839834).

- `glXGetCurrentReadDrawable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83983c (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83983c-0xd839878 (60 bytes).
  Loads 4 bytes at abs 0xd845cfc (`lw` at 0xd839848).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd83985c).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd839868).
  Loads 4 bytes at [[0x1014]+276] +0xdc (`lw` at 0xd83986c).
  Calls `__glXInitThread` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd839854).
  Returns v0 = [[[0x1014]+276]+220], f0 = ret(__glXInitThread) (`jr` at 0xd839870).

- `__glx_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83e820 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd83e820-0xd83e894 (116 bytes).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd83e82c).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd83e83c).
  Loads 4 bytes at [[0x1014]+276] +0x4 (`lw` at 0xd83e848).
  Stores 2 bytes from t7 at [[[0x1014]+276]+4] (`sh` at 0xd83e84c).
  Stores 2 bytes from t8 at [[[0x1014]+276]+4] +0x2 (`sh` at 0xd83e850).
  Stores 4 bytes from a0 at [[[0x1014]+276]+4] +0x4 (`sw` at 0xd83e854).
  Loads 4 bytes at [[0x1014]+276] +0x8 (`lw` at 0xd83e858).
  Stores 4 bytes from a1 at [[0x1014]+276] +0x4 (`sw` at 0xd83e860).
  Loads 4 bytes at abs 0xd845d08 (`lw` at 0xd83e870).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd83e878).
  At `beql` at 0xd83e868 (target 0xd83e888), taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd83e86c runs only when taken and is annulled on fall-through.
  Returns v0 = ? (`jr` at 0xd83e88c).

- `__glReadPixelSpans` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda22594 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda22594-0xda2273c (424 bytes).
  Loads 4 bytes at a0 +0x77f0 (`lw` at 0xda225d4).
  Loads 4 bytes at a1 +0x160 (`lw` at 0xda225d8).
  Loads 4 bytes at a1 +0xa8 (`lw` at 0xda225e4).
  Loads 4 bytes at a1 +0xac (`lw` at 0xda225ec).
  Loads 4 bytes at a1 +0x164 (`lw` at 0xda22614).
  Loads 4 bytes at a0 +0x12f4 (`lw` at 0xda22618).
  2 4-byte lw loads at ?, including `lw` at 0xda22674, `lw` at 0xda226b8.
  2 4-byte lw loads at a1 +0x5c, including `lw` at 0xda226c8, `lw` at 0xda226d0.
  Loads 4 bytes at a1 +0xc0 (`lwc1` at 0xda226cc).
  Loads 4 bytes at a1 +0x60 (`lw` at 0xda226d4).
  Stores 4 bytes from t8 at a1 +0x5c (`sw` at 0xda226e4).
  Stores 4 bytes from f8 at a1 +0xc0 (`swc1` at 0xda226e8).
  Stores 4 bytes from t4 at a0 +0x77f0 (`sw` at 0xda226f4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown (`jalr` at 0xda22660).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown (`jalr` at 0xda22684).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=[a1+92] (`jalr` at 0xda226c4).
  At `blez` at 0xda2261c (target 0xda22704), taken when t3(=[a1+172]) <= 0 (signed) and falls through when t3(=[a1+172]) > 0 (signed).
  At `blez` at 0xda22668 (target 0xda226a8), taken when s5(=[a1+352]-1) <= 0 (signed) and falls through when s5(=[a1+352]-1) > 0 (signed).
  At `bne` at 0xda226a0 (target 0xda22674), taken when s3(?) != s5(=[a1+352]-1) and falls through when s3(?) == s5(=[a1+352]-1).
  At `bnel` at 0xda226fc (target 0xda2264c), taken when s7(?) != t5(?) and falls through when s7(?) == t5(?); its branch-likely delay slot `lw t9,116(s8)` at 0xda22700 runs only when taken and is annulled on fall-through.
  Returns v0 = ? (`jr` at 0xda22734).

- `__glim_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda5c23c (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda5c23c-0xda5c300 (196 bytes).
  Loads 4 bytes at abs 0x1018 (`lw` at 0xda5c258).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xda5c260).
  2 4-byte lw loads at abs 0xdaffb38, including `lw` at 0xda5c26c, `lw` at 0xda5c290.
  Loads 4 bytes at abs 0xdaff5e8 (`lw` at 0xda5c2a8).
  Loads 4 bytes at [0x1010] +0x4fc (`lw` at 0xda5c2ac).
  2 4-byte lw loads at ?, including `lw` at 0xda5c2cc, `lw` at 0xda5c2d4.
  Loads 4 bytes at abs 0xdb0215c (`lw` at 0xda5c2d0).
  Calls `__glSetError [0xda4b3d8]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010] (`jalr` at 0xda5c274).
  Calls `__glSetError [0xda4b3d8]` via register-constant with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010] (`jalr` at 0xda5c298).
  Calls `__glElementsPerGroup [0xda288d0]` via register-constant with a0=[[0x1010]+1276], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010] (`jalr` at 0xda5c2b4).
  Calls `memset` via got with a0=unknown, a1=0x0, a2=unknown, a3=unknown (`jalr` at 0xda5c2e4).
  At `bnel` at 0xda5c264 (target 0xda5c288), taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x8024` at 0xda5c268 runs only when taken and is annulled on fall-through.
  At `beq` at 0xda5c27c (target 0xda5c2f0), the branch is always taken.
  At `beq` at 0xda5c288 (target 0xda5c2a8), taken when a0 == at(=0x8024) and falls through when a0 != at(=0x8024).
  At `beq` at 0xda5c2a0 (target 0xda5c2f0), the branch is always taken.
  Returns v0 = ? (`jr` at 0xda5c2f8).
  The instructions from 0xda5c284 to 0xda5c284 are not reached by any path from the entry, and their branches are not listed.

- `__glResetArray` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda5c778 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda5c778-0xda5ca90 (792 bytes).
  3 4-byte lw loads at abs 0xdafe45c, including `lw` at 0xda5c7e8, `lw` at 0xda5c8a4, `lw` at 0xda5c950.
  Loads 4 bytes at table(0xdaf32a8) (`lw` at 0xda5c7f4).
  Loads 4 bytes at table(0xdaf32bc) (`lw` at 0xda5c8b0).
  Loads 4 bytes at table(0xdaf32dc) (`lw` at 0xda5c95c).
  8 4-byte lw loads at abs 0xdaffd58, including `lw` at 0xda5c96c, `lw` at 0xda5c988, `lw` at 0xda5c9a8.
  Calls `__glSetValue [0xda5c6b8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xda5c978).
  Calls `__glSetValue [0xda5c6b8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xda5c998).
  Calls `__glSetValue [0xda5c6b8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xda5c9b4).
  Calls `__glSetValue [0xda5c6b8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xda5c9d8).
  Calls `__glSetValue [0xda5c6b8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xda5ca00).
  Calls `__glSetValue [0xda5c6b8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xda5ca1c).
  Calls `__glSetValue [0xda5c6b8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xda5ca34).
  Calls `__glSetValue [0xda5c6b8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xda5ca4c).
  At `beq` at 0xda5c7b4 (target 0xda5c7d0), taken when s1(?) == at(=0x1405) and falls through when s1(?) != at(=0x1405).
  At `beq` at 0xda5c7c0 (target 0xda5c7d8), taken when s1(?) == at(=0x1406) and falls through when s1(?) != at(=0x1406).
  At `beq` at 0xda5c7c8 (target 0xda5c7d8), the branch is always taken.
  At `beq` at 0xda5c7d0 (target 0xda5c7d8), the branch is always taken.
  At `beql` at 0xda5c7e0 (target 0xda5c854), taken when t6(=a0-6406) >= 0x5 (unsigned) and falls through when t6(=a0-6406) < 0x5 (unsigned); its branch-likely delay slot `ori at,zero,0x8001` at 0xda5c7e4 runs only when taken and is annulled on fall-through.
  At `beq` at 0xda5c80c (target 0xda5c850), the branch is always taken.
  At `beq` at 0xda5c81c (target 0xda5c850), the branch is always taken.
  At `beq` at 0xda5c82c (target 0xda5c850), the branch is always taken.
  At `beq` at 0xda5c83c (target 0xda5c850), the branch is always taken.
  At `bne` at 0xda5c858 (target 0xda5c878), taken when a1 < at(=0x8001) (unsigned) and falls through when a1 >= at(=0x8001) (unsigned).
  At `beq` at 0xda5c860 (target 0xda5c8e0), taken when a1 == at(=0x80e0) and falls through when a1 != at(=0x80e0).
  At `beq` at 0xda5c868 (target 0xda5c8e8), taken when a1 == at(=0x80e1) and falls through when a1 != at(=0x80e1).
  At `beq` at 0xda5c870 (target 0xda5c8f8), the branch is always taken.
  At `bne` at 0xda5c87c (target 0xda5c898), taken when a1 < 0x190b (unsigned) and falls through when a1 >= 0x190b (unsigned).
  At `beq` at 0xda5c888 (target 0xda5c8e8), taken when a1 == at(=0x8000) and falls through when a1 != at(=0x8000).
  At `beq` at 0xda5c890 (target 0xda5c8f8), the branch is always taken.
  At `beql` at 0xda5c89c (target 0xda5c8f8), taken when t2(=a1-6403) >= 0x8 (unsigned) and falls through when t2(=a1-6403) < 0x8 (unsigned); its branch-likely delay slot `and t3,v1,v0` at 0xda5c8a0 runs only when taken and is annulled on fall-through.
  At `beq` at 0xda5c8c0 (target 0xda5c8f4), the branch is always taken.
  At `beq` at 0xda5c8c8 (target 0xda5c8f4), the branch is always taken.
  At `beq` at 0xda5c8d0 (target 0xda5c8f4), the branch is always taken.
  At `beq` at 0xda5c8d8 (target 0xda5c8f4), the branch is always taken.
  At `beq` at 0xda5c8e0 (target 0xda5c8f4), the branch is always taken.
  At `beq` at 0xda5c8e8 (target 0xda5c8f4), the branch is always taken.
  At `beq` at 0xda5c8f8 (target 0xda5ca6c), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `beql` at 0xda5c934 (target 0xda5ca70), taken when a3 >= t8(?) (signed) and falls through when a3 < t8(?) (signed); its branch-likely delay slot `lw ra,52(sp)` at 0xda5c938 runs only when taken and is annulled on fall-through.
  At `beql` at 0xda5c948 (target 0xda5ca5c), taken when t0(?) >= 0x27 (unsigned) and falls through when t0(?) < 0x27 (unsigned); its branch-likely delay slot `lw t6,112(sp)` at 0xda5c94c runs only when taken and is annulled on fall-through.
  At `beq` at 0xda5c980 (target 0xda5ca58), the branch is always taken.
  At `beq` at 0xda5c9a0 (target 0xda5ca58), the branch is always taken.
  At `beq` at 0xda5c9e0 (target 0xda5ca58), the branch is always taken.
  At `bne` at 0xda5ca64 (target 0xda5c93c), taken when s2(?) != t6(?) and falls through when s2(?) == t6(?).
  Returns v0 = ? (`jr` at 0xda5ca88).

- `__glResetMinmax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda5d110 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda5d110-0xda5d270 (352 bytes).
  Loads 4 bytes at a0 +0x55c (`lw` at 0xda5d11c).
  5 4-byte lw loads at abs 0xdafe45c, including `lw` at 0xda5d138, `lw` at 0xda5d198, `lw` at 0xda5d1c4.
  Loads 4 bytes at table(0xdaf349c) (`lw` at 0xda5d144).
  Loads 4 bytes at abs 0xdaf34b0 (`lwc1` at 0xda5d1a8).
  10 4-byte swc1 stores at ?, including `swc1` at 0xda5d1b0, `swc1` at 0xda5d1dc, `swc1` at 0xda5d1e0.
  Loads 4 bytes at abs 0xdaf34b4 (`lwc1` at 0xda5d1d4).
  Loads 4 bytes at abs 0xdaf34b8 (`lwc1` at 0xda5d220).
  Loads 4 bytes at abs 0xdaf34bc (`lwc1` at 0xda5d248).
  At `beq` at 0xda5d130 (target 0xda5d184), taken when t7(=[a0+1372]-6406) >= 0x5 (unsigned) and falls through when t7(=[a0+1372]-6406) < 0x5 (unsigned).
  At `beq` at 0xda5d158 (target 0xda5d184), the branch is always taken.
  At `beq` at 0xda5d164 (target 0xda5d184), the branch is always taken.
  At `beq` at 0xda5d170 (target 0xda5d184), the branch is always taken.
  At `beq` at 0xda5d17c (target 0xda5d184), the branch is always taken.
  At `blez` at 0xda5d184 (target 0xda5d1f4), taken when v1(?) <= 0 (signed) and falls through when v1(?) > 0 (signed).
  At `beq` at 0xda5d190 (target 0xda5d1c4), taken when (v1(?) & 0x3) == 0 and falls through when (v1(?) & 0x3) != 0.
  At `bne` at 0xda5d1b4 (target 0xda5d1ac), taken when v0(?) != a2(?) and falls through when v0(?) == a2(?).
  At `beql` at 0xda5d1bc (target 0xda5d1f8), taken when a2(?) == v1(?) and falls through when a2(?) != v1(?); its branch-likely delay slot `slt at,v1,a1` at 0xda5d1c0 runs only when taken and is annulled on fall-through.
  At `bne` at 0xda5d1ec (target 0xda5d1d8), taken when a2(?) != v1(?) and falls through when a2(?) == v1(?).
  At `beq` at 0xda5d1f8 (target 0xda5d268), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xda5d208 (target 0xda5d23c), taken when (t0(?) & 0x3) == 0 and falls through when (t0(?) & 0x3) != 0.
  At `bne` at 0xda5d22c (target 0xda5d224), taken when a0(?) != a2(?) and falls through when a0(?) == a2(?).
  At `beq` at 0xda5d234 (target 0xda5d268), taken when a2(?) == a1(?) and falls through when a2(?) != a1(?).
  At `bne` at 0xda5d260 (target 0xda5d24c), taken when a2(?) != a1(?) and falls through when a2(?) == a1(?).
  Returns v0 = ? (`jr` at 0xda5d268).

- `__glim_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda5d364 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda5d364-0xda5d3f4 (144 bytes).
  Loads 4 bytes at abs 0x1018 (`lw` at 0xda5d380).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xda5d388).
  2 4-byte lw loads at abs 0xdaffb38, including `lw` at 0xda5d394, `lw` at 0xda5d3b8.
  Loads 4 bytes at abs 0xdaffd70 (`lw` at 0xda5d3d0).
  Calls `__glSetError [0xda4b3d8]` via register-constant with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda5d39c).
  Calls `__glSetError [0xda4b3d8]` via register-constant with a0=0x500, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda5d3c0).
  Calls `__glResetMinmax [0xda5d110]` via register-constant with a0=[0x1010], a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda5d3d8).
  At `bnel` at 0xda5d38c (target 0xda5d3b0), taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x802e` at 0xda5d390 runs only when taken and is annulled on fall-through.
  At `beq` at 0xda5d3a4 (target 0xda5d3e4), the branch is always taken.
  At `beq` at 0xda5d3b0 (target 0xda5d3d0), taken when a0 == at(=0x802e) and falls through when a0 != at(=0x802e).
  At `beq` at 0xda5d3c8 (target 0xda5d3e4), the branch is always taken.
  Returns v0 = ? (`jr` at 0xda5d3ec).
  The instructions from 0xda5d3ac to 0xda5d3ac are not reached by any path from the entry, and their branches are not listed.

- `__glReadSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda81800 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda81800-0xda81898 (152 bytes).
  Loads 4 bytes at a0 +0xac (`lw` at 0xda81848).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=a2 at entry (arg2), a3=unknown (`jalr` at 0xda81858).
  At `bltz` at 0xda81840 (target 0xda81874), taken when s0(?) < 0 (signed) and falls through when s0(?) >= 0 (signed).
  At `bgez` at 0xda8186c (target 0xda81848), taken when s0(?) >= 0 (signed) and falls through when s0(?) < 0 (signed).
  Returns v0 = 0x0 (`jr` at 0xda81890).

- `__glReadTexImage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda913bc (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda913bc-0xda913fc (64 bytes).
  Loads 4 bytes at a0 +0x3158 (`lw` at 0xda913dc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda913e0).
  Returns v0 = ret(?), f0 = ret(?) (`jr` at 0xda913f4).

- `DestroySoftContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab6aec (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab6aec-0xdab6b5c (112 bytes).
  Loads 4 bytes at abs 0xdaff940 (`lw` at 0xdab6af8).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdab6b00).
  2 4-byte sw stores at abs 0x1010, including `sw` at 0xdab6b0c, `sw` at 0xdab6b58.
  Loads 4 bytes at abs 0xdaffb54 (`lw` at 0xdab6b24).
  Loads 4 bytes at abs 0xdaffb2c (`lw` at 0xdab6b38).
  Calls `__glFreeAttributeState [0xda4196c]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab6b14).
  Calls `__glFreeBufData [0xda4bb48]` via register-constant with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdab6b28).
  Calls `__glDestroyContext [0xda4afb8]` via register-constant with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdab6b3c).
  Returns v0 = ret(__glDestroyContext), f0 = ret(__glDestroyContext) (`jr` at 0xdab6b54).

- `__gllc_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac35b4 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac35b4-0xdac3628 (116 bytes).
  Loads 4 bytes at abs 0xdaff21c (`lw` at 0xdac35c4).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdac35cc).
  Stores 2 bytes from t6 at ret(__glDlistAllocOp2) +0xc (`sh` at 0xdac35f8).
  Loads 4 bytes at abs 0xdb00ec8 (`lw` at 0xdac3600).
  Stores 4 bytes from t7 at ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdac3604).
  Loads 4 bytes at abs 0xdaff224 (`lw` at 0xdac3608).
  Calls `__glDlistAllocOp2 [0xda0b4a0]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac35dc).
  Calls `__glDlistAppendOp [0xda0b538]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xdac8990, a3=unknown (`jalr` at 0xdac360c).
  At `beq` at 0xdac35ec (target 0xdac3618), taken when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  Returns v0 = ? (`jr` at 0xdac3620).

- `__gllc_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac3628 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac3628-0xdac369c (116 bytes).
  Loads 4 bytes at abs 0xdaff21c (`lw` at 0xdac3638).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdac3640).
  Stores 2 bytes from t6 at ret(__glDlistAllocOp2) +0xc (`sh` at 0xdac366c).
  Loads 4 bytes at abs 0xdb00ecc (`lw` at 0xdac3674).
  Stores 4 bytes from t7 at ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdac3678).
  Loads 4 bytes at abs 0xdaff224 (`lw` at 0xdac367c).
  Calls `__glDlistAllocOp2 [0xda0b4a0]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac3650).
  Calls `__glDlistAppendOp [0xda0b538]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xdac89d0, a3=unknown (`jalr` at 0xdac3680).
  At `beq` at 0xdac3660 (target 0xdac368c), taken when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  Returns v0 = ? (`jr` at 0xdac3694).

- `__gllc_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac4864 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac4864-0xdac48d8 (116 bytes).
  Loads 4 bytes at abs 0xdaff21c (`lw` at 0xdac4874).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdac487c).
  Stores 2 bytes from t6 at ret(__glDlistAllocOp2) +0xc (`sh` at 0xdac48a8).
  Loads 4 bytes at abs 0xdb00f38 (`lw` at 0xdac48b0).
  Stores 4 bytes from t7 at ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdac48b4).
  Loads 4 bytes at abs 0xdaff224 (`lw` at 0xdac48b8).
  Calls `__glDlistAllocOp2 [0xda0b4a0]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac488c).
  Calls `__glDlistAppendOp [0xda0b538]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xdac9300, a3=unknown (`jalr` at 0xdac48bc).
  At `beq` at 0xdac489c (target 0xdac48c8), taken when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  Returns v0 = ? (`jr` at 0xdac48d0).

- `__glle_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac8990 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac8990-0xdac89d0 (64 bytes).
  Loads 4 bytes at abs 0x1358 (`lw` at 0xdac89a0).
  Loads 4 bytes at a0 (`lw` at 0xdac89b4).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac89b0).
  Returns v0 = a0+4, f0 = ret(?) (`jr` at 0xdac89c8).

- `__glle_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac89d0 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac89d0-0xdac8a10 (64 bytes).
  Loads 4 bytes at abs 0x135c (`lw` at 0xdac89e0).
  Loads 4 bytes at a0 (`lw` at 0xdac89f4).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac89f0).
  Returns v0 = a0+4, f0 = ret(?) (`jr` at 0xdac8a08).

- `__glle_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdac9300 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdac9300-0xdac9340 (64 bytes).
  Loads 4 bytes at abs 0x1460 (`lw` at 0xdac9310).
  Loads 4 bytes at a0 (`lw` at 0xdac9324).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac9320).
  Returns v0 = a0+4, f0 = ret(?) (`jr` at 0xdac9338).

- `__glsplc_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad03dc (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad03dc-0xdad0428 (76 bytes).
  Loads 4 bytes at abs 0xdafe6d4 (`lw` at 0xdad03e8).
  Stores 4 bytes from t6 at ret(__glSPDlalloc) (`sw` at 0xdad0414).
  Calls `__glSPDlalloc [0xd976680]` via register-constant with a0=0x4, a1=0xce, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdad0400).
  At `beq` at 0xdad0408 (target 0xdad0418), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdad0420).

- `__glsplc_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad0428 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad0428-0xdad0474 (76 bytes).
  Loads 4 bytes at abs 0xdafe6d4 (`lw` at 0xdad0434).
  Stores 4 bytes from t6 at ret(__glSPDlalloc) (`sw` at 0xdad0460).
  Calls `__glSPDlalloc [0xd976680]` via register-constant with a0=0x4, a1=0xcf, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdad044c).
  At `beq` at 0xdad0454 (target 0xdad0464), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdad046c).

- `__glsplc_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1158 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1158-0xdad11a4 (76 bytes).
  Loads 4 bytes at abs 0xdafe6d4 (`lw` at 0xdad1164).
  Stores 4 bytes from t6 at ret(__glSPDlalloc) (`sw` at 0xdad1190).
  Calls `__glSPDlalloc [0xd976680]` via register-constant with a0=0x4, a1=0xf2, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdad117c).
  At `beq` at 0xdad1184 (target 0xdad1194), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdad119c).

- `__glce_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6278 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6278-0xdad6280 (8 bytes).
  At `beq` at 0xdad6278 (target 0xdad67a8), the branch is always taken.

- `__glce_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6280 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6280-0xdad6288 (8 bytes).
  At `beq` at 0xdad6280 (target 0xdad67a8), the branch is always taken.

- `__glce_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6480 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6480-0xdad6488 (8 bytes).
  At `beq` at 0xdad6480 (target 0xdad67a8), the branch is always taken.

- `glResetHistogram` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad73f8 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad73f8-0xdad7404 (12 bytes).
  Loads 4 bytes at abs 0x1358 (`lw` at 0xdad73f8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad73fc).

- `glResetMinmax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7404 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7404-0xdad7410 (12 bytes).
  Loads 4 bytes at abs 0x135c (`lw` at 0xdad7404).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7408).

- `glReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7710 (o32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7710-0xdad771c (12 bytes).
  Loads 4 bytes at abs 0x1460 (`lw` at 0xdad7710).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7714).

- `__glXMakeContextCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd81e664 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd81e664-0xd81f694 (4144 bytes).
  2 4-byte lw loads at abs 0xd846584, including `lw` at 0xd81e684, `lw` at 0xd81e6e4.
  Loads 4 bytes at abs 0xd84658c (`lw` at 0xd81e6a8).
  8 4-byte lw loads at abs 0x1014, including `lw` at 0xd81e6e8, `lw` at 0xd81eaac, `lw` at 0xd81eb2c.
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd81e6ec).
  6 4-byte lw loads at [[0x1014]+276] +0xc4, including `lw` at 0xd81e6f0, `lw` at 0xd81e7ac, `lw` at 0xd81e7d8.
  Loads 4 bytes at [[0x1014]+276] +0xc8 (`lw` at 0xd81e700).
  2 4-byte lw loads at [[0x1014]+276] +0xe0, including `lw` at 0xd81e704, `lw` at 0xd81eaa8.
  2 4-byte lw loads at [[0x1014]+276] +0xdc, including `lw` at 0xd81e710, `lw` at 0xd81eab0.
  Loads 4 bytes at [[[0x1014]+276]+200] +0x5c (`lw` at 0xd81e71c).
  9 4-byte lw loads at abs 0xd84653c, including `lw` at 0xd81e72c, `lw` at 0xd81ea70, `lw` at 0xd81ec34.
  Loads 4 bytes at abs 0xd84652c (`lw` at 0xd81e734).
  2 4-byte lw loads at [[0x1014]+276] +0xe4, including `lw` at 0xd81e738, `lw` at 0xd81ec64.
  Loads 4 bytes at [[0x1014]+276] +0xe8 (`lw` at 0xd81e73c).
  3 4-byte lw loads at a3 +0xc4, including `lw` at 0xd81e74c, `lw` at 0xd81e948, `lw` at 0xd81eac0.
  3 4-byte lw loads at abs 0xd8464e8, including `lw` at 0xd81e764, `lw` at 0xd81e7a8, `lw` at 0xd81ec70.
  7 4-byte lw loads at a3 +0x20, including `lw` at 0xd81e778, `lw` at 0xd81e988, `lw` at 0xd81e9d8.
  2 4-byte lw loads at ret(__glXAddDrawableInterest) +0x8, including `lw` at 0xd81e77c, `lw` at 0xd81ec88.
  5 4-byte lw loads at a3 +0x30, including `lw` at 0xd81e788, `lw` at 0xd81e9b4, `lw` at 0xd81e9c4.
  Loads 4 bytes at ret(__glXAddDrawableInterest) +0xc (`lw` at 0xd81e78c).
  Loads 4 bytes at ret(__glXAddDrawableInterest) +0x2c (`lw` at 0xd81e798).
  6 4-byte lw loads at abs 0xd8461ac, including `lw` at 0xd81e7b4, `lw` at 0xd81e7ec, `lw` at 0xd81e958.
  4 1-byte lbu loads at ?, including `lbu` at 0xd81e7fc, `lbu` at 0xd81e808, `lbu` at 0xd81f07c.
  2 4-byte lw loads at abs 0xd846404, including `lw` at 0xd81e804, `lw` at 0xd81e810.
  2 1-byte lbu loads at a3 +0x1d, including `lbu` at 0xd81e81c, `lbu` at 0xd81e994.
  13 4-byte lw loads at abs 0xd846174, including `lw` at 0xd81e82c, `lw` at 0xd81e8cc, `lw` at 0xd81e93c.
  3 4-byte lw loads at [[0x1014]+276] +0x3c, including `lw` at 0xd81e840, `lw` at 0xd81ebe0, `lw` at 0xd81ecd8.
  4 4-byte lw loads at abs 0xd84624c, including `lw` at 0xd81e850, `lw` at 0xd81e88c, `lw` at 0xd81f098.
  4 4-byte lw loads at a0 +0x4c8, including `lw` at 0xd81e87c, `lw` at 0xd81e8b8, `lw` at 0xd81f0c0.
  4 4-byte sw stores at a0 +0x4c8, including `sw` at 0xd81e888, `sw` at 0xd81e8c8, `sw` at 0xd81f0dc.
  2 4-byte lw loads at abs 0xd846408, including `lw` at 0xd81e920, `lw` at 0xd81eed8.
  2 4-byte sw stores at [[0x1014]+276] +0x3c, including `sw` at 0xd81e96c, `sw` at 0xd81ecf0.
  22 4-byte lw loads at ?, including `lw` at 0xd81e978, `lw` at 0xd81e9f0, `lw` at 0xd81ea0c.
  13 4-byte sw stores at ?, including `sw` at 0xd81e984, `sw` at 0xd81e990, `sw` at 0xd81e9a0.
  2 4-byte lw loads at abs 0xd846560, including `lw` at 0xd81e9a4, `lw` at 0xd81ea14.
  2 4-byte lw loads at abs 0xd846434, including `lw` at 0xd81e9cc, `lw` at 0xd81efe4.
  2 4-byte lw loads at a3 +0x11c, including `lw` at 0xd81e9e0, `lw` at 0xd81f000.
  2 4-byte lw loads at a3 +0x120, including `lw` at 0xd81e9e4, `lw` at 0xd81f004.
  2 4-byte lw loads at abs 0xd8465b4, including `lw` at 0xd81ea08, `lw` at 0xd81f028.
  2 4-byte lw loads at a3 +0xc8, including `lw` at 0xd81ea48, `lw` at 0xd81ead4.
  Loads 4 bytes at [a3+200] +0x68 (`lw` at 0xd81ea4c).
  3 4-byte lw loads at [[0x1014]+276] +0xd8, including `lw` at 0xd81eaa4, `lw` at 0xd81eb30, `lw` at 0xd81ecc0.
  2 4-byte sw stores at [0x1014] +0x114, including `sw` at 0xd81eab4, `sw` at 0xd81ed18.
  Stores 4 bytes from s3 at a3 +0xe8 (`sw` at 0xd81eab8).
  Stores 4 bytes from s6 at a3 +0xdc (`sw` at 0xd81eabc).
  Stores 4 bytes from s1 at a3 +0xe4 (`sw` at 0xd81eac4).
  Stores 4 bytes from s5 at a3 +0xe0 (`sw` at 0xd81eac8).
  Stores 4 bytes from s4 at a3 +0xd8 (`sw` at 0xd81ead0).
  Loads 4 bytes at [a3+200] +0x64 (`lw` at 0xd81ead8).
  2 1-byte lbu loads at a3 +0xf4, including `lbu` at 0xd81eb00, `lbu` at 0xd81ee70.
  Stores 4 bytes from a7 at [0x1014] +0x118 (`sw` at 0xd81eb34).
  Loads 4 bytes at [[0x1014]+276] +0x110 (`lw` at 0xd81eb3c).
  Stores 4 bytes from a5 at [0x1014] +0x11c (`sw` at 0xd81eb40).
  2 4-byte lw loads at [[0x1014]+276] +0x118, including `lw` at 0xd81eb48, `lw` at 0xd81f314.
  Stores 4 bytes from a3 at [0x1014] +0x120 (`sw` at 0xd81eb4c).
  2 4-byte lw loads at [[0x1014]+276] +0x14, including `lw` at 0xd81eb50, `lw` at 0xd81f324.
  Loads 4 bytes at abs 0xd84642c (`lw` at 0xd81eb58).
  Stores 4 bytes from zero at [[0x1014]+276] +0xd0 (`sw` at 0xd81eb5c).
  Stores 4 bytes from zero at [[0x1014]+276] +0xd4 (`sw` at 0xd81eb60).
  4 4-byte sw stores at [[0x1014]+276] +0xe4, including `sw` at 0xd81eb64, `sw` at 0xd81ee74, `sw` at 0xd81ef78.
  4 4-byte sw stores at [[0x1014]+276] +0xe8, including `sw` at 0xd81eb68, `sw` at 0xd81ee84, `sw` at 0xd81ef90.
  4 4-byte sw stores at [[0x1014]+276] +0xe0, including `sw` at 0xd81eb6c, `sw` at 0xd81eea0, `sw` at 0xd81efb4.
  4 4-byte sw stores at [[0x1014]+276] +0xdc, including `sw` at 0xd81eb70, `sw` at 0xd81ee94, `sw` at 0xd81ef98.
  4 4-byte sw stores at [[0x1014]+276] +0xd8, including `sw` at 0xd81eb74, `sw` at 0xd81ee8c, `sw` at 0xd81efa8.
  2 4-byte lw loads at abs 0xd8464f4, including `lw` at 0xd81eb80, `lw` at 0xd81eb94.
  7 4-byte lw loads at a3 +0x14, including `lw` at 0xd81ec10, `lw` at 0xd81eeac, `lw` at 0xd81ef44.
  Loads 4 bytes at a3 +0xd0 (`lw` at 0xd81ec1c).
  Loads 4 bytes at a3 +0xd4 (`lw` at 0xd81ec24).
  Loads 4 bytes at [0x1014] +0x10c (`lw` at 0xd81ec2c).
  2 4-byte lw loads at [0x1014] +0x110, including `lw` at 0xd81ec38, `lw` at 0xd81ec4c.
  2 4-byte sw stores at a3 +0xd0, including `sw` at 0xd81ec44, `sw` at 0xd81f340.
  2 4-byte sw stores at a3 +0xd4, including `sw` at 0xd81ec54, `sw` at 0xd81f344.
  Loads 4 bytes at ret(__glXAddDrawableInterest) +0x10 (`lw` at 0xd81ec90).
  2 4-byte lw loads at abs 0x1048, including `lw` at 0xd81ed1c, `lw` at 0xd81f1e0.
  Loads 4 bytes at abs 0xd846c90 (`lw` at 0xd81ed34).
  27 8-byte ld loads at ?, including `ld` at 0xd81ed48, `ld` at 0xd81ed9c, `ld` at 0xd81edac.
  27 8-byte sd stores at ?, including `sd` at 0xd81ed54, `sd` at 0xd81eda4, `sd` at 0xd81edb4.
  Loads 4 bytes at [a3+200] +0x60 (`lw` at 0xd81ee60).
  2 4-byte lw loads at a0 +0x60, including `lw` at 0xd81f09c, `lw` at 0xd81f450.
  2 4-byte lw loads at abs 0xd84640c, including `lw` at 0xd81f0d0, `lw` at 0xd81f484.
  4 1-byte sb stores at ?, including `sb` at 0xd81f0f4, `sb` at 0xd81f114, `sb` at 0xd81f11c.
  Stores 4 bytes from v0 at a3 +0x3c (`sw` at 0xd81f0fc).
  Loads 4 bytes at abs 0xd846440 (`lw` at 0xd81f1b4).
  Loads 4 bytes at abs 0xd8463e4 (`lw` at 0xd81f1c8).
  Stores 1 byte from a0 at a3 +0x124 (`sb` at 0xd81f1dc).
  Loads 4 bytes at abs 0xd846c88 (`lw` at 0xd81f204).
  Loads 4 bytes at abs 0xd846c8c (`lw` at 0xd81f4bc).
  Calls `__glXInitThread` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81e6a0).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd81e6ac).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+200], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd81e720).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd81e768).
  Calls `(unknown callee) [0xd81e19c]` via direct with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1014]+276]+60], a3=sp-192, a4=a1 at entry (arg1) (`bgezall` at 0xd81e844).
  Calls `(unknown callee) [0xd81e340]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`bgezall` at 0xd81e8e0).
  Calls `_XDeqAsyncHandler` via got with a0=a0 at entry (arg0), a1=sp-248, a2=unknown, a3=unknown, a6=sym(_XAsyncErrorHandler) (`jalr` at 0xd81e92c).
  Calls `__glXOverrideVisualsBogusChoose` via got with a0=unknown, a1=[a3+48], a2=unknown, a3=unknown (`jalr` at 0xd81e9b0).
  Calls `__glXGetModes` via got with a0=a0 at entry (arg0), a1=[a3+32], a2=unknown, a3=unknown (`jalr` at 0xd81e9d4).
  Calls `(unknown callee)` via register with a0=[a3+200], a1=unknown, a2=unknown, a3=unknown, a7=[a3+48] (`jalr` at 0xd81ea64).
  Calls `(unknown callee)` via register with a0=[a3+200], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd81eaf0).
  Calls `__glXRemoveDrawableInterest` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd81eb84).
  Calls `(unknown callee) [0xd81de58]` via direct with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1014]+276]+60], a3=sp-192, a4=a1 at entry (arg1), a5=a2 at entry (arg2) (`bgezall` at 0xd81ebf8).
  Calls `__glXInitThread` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd81ec08).
  Calls `__glXUnbindHWContextFromThread` via got with a0=[[[0x1014]+276]+200], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd81ec58).
  Calls `__glXAddDrawableInterest` via got with a0=a2 at entry (arg2), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd81ec74).
  Calls `(unknown callee) [0xd81e19c]` via direct with a0=[[[0x1014]+276]+216], a1=0x0, a2=[[[0x1014]+276]+60], a3=sp-192, a4=0x0 (`bgezall` at 0xd81ecdc).
  Calls `__glXRemoveDrawableInterest` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd81ecfc).
  Calls `(unknown callee)` via register with a0=[a3+200], a1=[[[0x1014]+276]+224], a2=[[[0x1014]+276]+216], a3=unknown (`jalr` at 0xd81ee64).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd81eea8).
  Calls `(unknown callee) [0xd81e340]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`bgezall` at 0xd81eec4).
  Calls `_XDeqAsyncHandler` via got with a0=a0 at entry (arg0), a1=sp-208, a2=[a0+1224], a3=sp-208 (`jalr` at 0xd81eee4).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd81ef48).
  Calls `(unknown callee) [0xd81e340]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`bgezall` at 0xd81ef64).
  Calls `(unknown callee) [0xd81e340]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`bgezall` at 0xd81efb0).
  Calls `__glXOverrideVisualsBogusChoose` via got with a0=unknown, a1=[a3+48], a2=unknown, a3=unknown (`jalr` at 0xd81efdc).
  Calls `__glXGetModes` via got with a0=a0 at entry (arg0), a1=[a3+32], a2=ret(__glXOverrideVisualsBogusChoose), a3=unknown (`jalr` at 0xd81eff4).
  Calls `glXQueryDrawable` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x8025, a3=unknown, a5=0x6 (`jalr` at 0xd81f038).
  Calls `XSGIMiscQueryExtension` via got with a0=a0 at entry (arg0), a1=sp-160, a2=sp-156, a3=unknown (`jalr` at 0xd81f06c).
  Calls `_XSGISetSpecialDestroyInterest` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd81f0e4).
  Calls `__glXFreeContext` via got with a0=[[0x1014]+276], a1=0x1, a2=[[[0x1014]+276]+20], a3=[[[0x1014]+276]+280], a4=[0x1014], a5=[[[0x1014]+276]+272], a6=[0x1014], a7=[[[0x1014]+276]+216] (`jalr` at 0xd81f148).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xa, a2=0x5, a3=[a3+20] (`jalr` at 0xd81f164).
  Calls `glXQueryServerString` via got with a0=a0 at entry (arg0), a1=[a3+32], a2=0x2, a3=unknown (`jalr` at 0xd81f1c0).
  Calls `strstr` via got with a0=ret(glXQueryServerString), a1=0xd846cc8, a2=unknown, a3=unknown (`jalr` at 0xd81f1d0).
  Calls `glXQueryDrawable` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x8025, a3=unknown, a5=0x6 (`jalr` at 0xd81f304).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x5, a3=[[[0x1014]+276]+20] (`jalr` at 0xd81f328).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd81f3ec).
  Calls `(unknown callee) [0xd81e340]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`bgezall` at 0xd81f408).
  Calls `_XSGISetSpecialDestroyInterest` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd81f498).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0x8, a2=0x5, a3=[a3+20] (`jalr` at 0xd81f5bc).
  Calls `(unknown callee) [0xd81e340]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`bgezall` at 0xd81f5d8).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd81f5fc).
  Calls `(unknown callee) [0xd81e340]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=0x0, a3=0x0 (`bgezall` at 0xd81f618).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd81f63c).
  Calls `(unknown callee) [0xd81e340]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=ret(__glXAddDrawableInterest), a3=0x0 (`bgezall` at 0xd81f658).
  Calls `(unknown callee) [0xd81e340]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=0x0 (`bgezall` at 0xd81f680).
  At `beq` at 0xd81e6b8 (target 0xd81f120), taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  At `bne` at 0xd81e6e0 (target 0xd81ec08), taken when s0(=a3) != 0 and falls through when s0(=a3) == 0.
  At `beq` at 0xd81e6f4 (target 0xd81ecf4), taken when v1(=[[[0x1014]+276]+196]) == 0 and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  At `bne` at 0xd81e6fc (target 0xd81e71c), taken when s0(=a3) != s2(=[[0x1014]+276]) and falls through when s0(=a3) == s2(=[[0x1014]+276]).
  At `bne` at 0xd81e708 (target 0xd81e71c), taken when t8(=[[[0x1014]+276]+224]) != s5(=a1) and falls through when t8(=[[[0x1014]+276]+224]) == s5(=a1).
  At `beq` at 0xd81e714 (target 0xd81ee28), taken when t9(=[[[0x1014]+276]+220]) == s6(=a2) and falls through when t9(=[[[0x1014]+276]+220]) != s6(=a2).
  At `beq` at 0xd81e728 (target 0xd81f314), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `bne` at 0xd81e730 (target 0xd81ec58), taken when s0(=a3) != s2(=[[0x1014]+276]) and falls through when s0(=a3) == s2(=[[0x1014]+276]).
  At `beq` at 0xd81e744 (target 0xd81e7d0), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd81e750 (target 0xd81e7d8), taken when at(=[a3+196]) == 0 and falls through when at(=[a3+196]) != 0.
  At `beq` at 0xd81e758 (target 0xd81e7d8), taken when s5(=a1) == 0 and falls through when s5(=a1) != 0.
  At `beq` at 0xd81e760 (target 0xd81e7d8), taken when s6(=a2) == 0 and falls through when s6(=a2) != 0.
  At `beq` at 0xd81e770 (target 0xd81f5ec), taken when v0(=ret(__glXAddDrawableInterest)) == 0 and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  At `bne` at 0xd81e780 (target 0xd81ec68), taken when v0(=[ret(__glXAddDrawableInterest)+8]) != v1(=[a3+32]) and falls through when v0(=[ret(__glXAddDrawableInterest)+8]) == v1(=[a3+32]).
  At `bne` at 0xd81e790 (target 0xd81ec68), taken when a0(=[ret(__glXAddDrawableInterest)+12]) != a1(=[a3+48]) and falls through when a0(=[ret(__glXAddDrawableInterest)+12]) == a1(=[a3+48]).
  At `beq` at 0xd81e79c (target 0xd81ec68), taken when a2(=[ret(__glXAddDrawableInterest)+44]) == a3(=0x3) and falls through when a2(=[ret(__glXAddDrawableInterest)+44]) != a3(=0x3).
  At `bne` at 0xd81e7a4 (target 0xd81ec74), taken when s5(=a1) != s6(=a2) and falls through when s5(=a1) == s6(=a2).
  At `beq` at 0xd81e7b0 (target 0xd81eef8), taken when a1(=[[[0x1014]+276]+196]) == 0 and falls through when a1(=[[[0x1014]+276]+196]) != 0.
  At `bne` at 0xd81e7b8 (target 0xd81e7e8), taken when s8(=one of 0x0, 0x1) != 0 and falls through when s8(=one of 0x0, 0x1) == 0.
  At `bne` at 0xd81e7c0 (target 0xd81ea20), taken when s1(?) != 0 and falls through when s1(?) == 0.
  At `beq` at 0xd81e7c8 (target 0xd81ea9c), the branch is always taken.
  At `beq` at 0xd81e7d0 (target 0xd81f100), taken when s5(=a1) == 0 and falls through when s5(=a1) != 0.
  At `beq` at 0xd81e7dc (target 0xd81eef4), taken when a1(=[[[0x1014]+276]+196]) == 0 and falls through when a1(=[[[0x1014]+276]+196]) != 0.
  At `beq` at 0xd81e7e8 (target 0xd81ecb0), taken when a1(=[[[0x1014]+276]+196]) == 0 and falls through when a1(=[[[0x1014]+276]+196]) != 0.
  At `beq` at 0xd81e7f4 (target 0xd81e814), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0xd81e800 (target 0xd81f064), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xd81e80c (target 0xd81f064), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xd81e814 (target 0xd81e828), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `bne` at 0xd81e820 (target 0xd81ebd0), taken when a6(=[a3+29]:1) != 0 and falls through when a6(=[a3+29]:1) == 0.
  At `bne` at 0xd81e828 (target 0xd81ebcc), taken when s5(=a1) != s6(=a2) and falls through when s5(=a1) == s6(=a2).
  At `bne` at 0xd81e864 (target 0xd81e88c), taken when ra(?) != at(=sym(_XAsyncErrorHandler)) and falls through when ra(?) == at(=sym(_XAsyncErrorHandler)).
  At `beq` at 0xd81e86c (target 0xd81e87c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xd81e874 (target 0xd81f110), taken when v1(=0x3) == a0(?) and falls through when v1(=0x3) != a0(?).
  At `bne` at 0xd81e880 (target 0xd81eed8), taken when a2(=[a0+1224]) != a3(=sp-208) and falls through when a2(=[a0+1224]) == a3(=sp-208).
  At `bne` at 0xd81e8a0 (target 0xd81e938), taken when a5(?) != a6(=sym(_XAsyncErrorHandler)) and falls through when a5(?) == a6(=sym(_XAsyncErrorHandler)).
  At `beq` at 0xd81e8a8 (target 0xd81e8b8), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0xd81e8b0 (target 0xd81f118), taken when t0(=0x3) == t1(?) and falls through when t0(=0x3) != t1(?).
  At `bne` at 0xd81e8bc (target 0xd81e920), taken when t2(=[a0+1224]) != t3(=sp-248) and falls through when t2(=[a0+1224]) == t3(=sp-248).
  At `bne` at 0xd81e8c4 (target 0xd81e940), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0xd81e938 (target 0xd81e8d0), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0xd81e940 (target 0xd81e954), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd81e94c (target 0xd81f0f8), taken when ra(=[a3+196]) == 0 and falls through when ra(=[a3+196]) != 0.
  At `beq` at 0xd81e954 (target 0xd81e970), taken when s0(=a3) == s2(=[[0x1014]+276]) and falls through when s0(=a3) != s2(=[[0x1014]+276]).
  At `beq` at 0xd81e964 (target 0xd81e970), taken when s2(=[[0x1014]+276]) == at(=0xd846f20) and falls through when s2(=[[0x1014]+276]) != at(=0xd846f20).
  At `beq` at 0xd81e970 (target 0xd81ea74), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `bne` at 0xd81e97c (target 0xd81ea0c), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0xd81e98c (target 0xd81e9c4), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd81e998 (target 0xd81e9c4), taken when a0(=[a3+29]:1) == 0 and falls through when a0(=[a3+29]:1) != 0.
  At `beq` at 0xd81e9bc (target 0xd81e9cc), the branch is always taken.
  At `beq` at 0xd81e9f4 (target 0xd81ea04), taken when a2(=[a3+284]) >= 0x2 (signed) and falls through when a2(=[a3+284]) < 0x2 (signed).
  At `bne` at 0xd81e9fc (target 0xd81ea0c), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `beq` at 0xd81ea04 (target 0xd81f2f8), taken when a4(?) == a5(=0x6) and falls through when a4(?) != a5(=0x6).
  At `beq` at 0xd81ea10 (target 0xd81efc0), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xd81ea18 (target 0xd81ea74), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `bne` at 0xd81ea28 (target 0xd81ea48), taken when a7(=[a3+48]) != a2(?) and falls through when a7(=[a3+48]) == a2(?).
  At `beq` at 0xd81ea34 (target 0xd81ea74), taken when t0(?) == a2(?) and falls through when t0(?) != a2(?).
  At `beq` at 0xd81ea40 (target 0xd81ea74), taken when t1(?) == t2(=0x3) and falls through when t1(?) != t2(=0x3).
  At `beq` at 0xd81ea50 (target 0xd81ea74), taken when t9(=[[a3+200]+104]) == 0 and falls through when t9(=[[a3+200]+104]) != 0.
  At `beq` at 0xd81ea6c (target 0xd81f5b0), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `beq` at 0xd81ea74 (target 0xd81ea9c), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0xd81ea7c (target 0xd81ea9c), taken when s1(?) == s3(?) and falls through when s1(?) != s3(?).
  At `beq` at 0xd81ea88 (target 0xd81ef10), taken when t3(?) == t8(=0x4) and falls through when t3(?) != t8(=0x4).
  At `beq` at 0xd81ea94 (target 0xd81ef10), taken when t9(?) == ra(=0x4) and falls through when t9(?) != ra(=0x4).
  At `beq` at 0xd81ea9c (target 0xd81ed0c), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd81eacc (target 0xd81f1b4), taken when at(=[a3+196]) == 0 and falls through when at(=[a3+196]) != 0.
  At `beq` at 0xd81eae4 (target 0xd81ee60), taken when t9(=[[a3+200]+100]) == 0 and falls through when t9(=[[a3+200]+100]) != 0.
  At `beq` at 0xd81eaf8 (target 0xd81f3b8), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `beq` at 0xd81eb04 (target 0xd81eb14), taken when a0(=[a3+244]:1) == 0 and falls through when a0(=[a3+244]:1) != 0.
  At `beq` at 0xd81eb0c (target 0xd81ef78), taken when s8(=one of 0x0, 0x1) == 0 and falls through when s8(=one of 0x0, 0x1) != 0.
  At `beq` at 0xd81eb14 (target 0xd81eb78), taken when s0(=a3) == s2(=[[0x1014]+276]) and falls through when s0(=a3) != s2(=[[0x1014]+276]).
  At `beq` at 0xd81eb24 (target 0xd81eb78), taken when s2(=[[0x1014]+276]) == a1(=0xd846f20) and falls through when s2(=[[0x1014]+276]) != a1(=0xd846f20).
  At `beq` at 0xd81eb54 (target 0xd81f144), taken when a2(=[[[0x1014]+276]+20]) == 0 and falls through when a2(=[[[0x1014]+276]+20]) != 0.
  At `beq` at 0xd81eb78 (target 0xd81eb98), taken when s7(?) == 0 and falls through when s7(?) != 0.
  At `bne` at 0xd81eb90 (target 0xd81ecfc), taken when s7(?) != t1(?) and falls through when s7(?) == t1(?).
  At `beq` at 0xd81ec00 (target 0xd81e850), the branch is always taken.
  At `beq` at 0xd81ec14 (target 0xd81f380), taken when a3(=[a3+20]) == 0 and falls through when a3(=[a3+20]) != 0.
  At `beq` at 0xd81ec28 (target 0xd81ec44), taken when a0(=[a3+208]) == 0 and falls through when a0(=[a3+208]) != 0.
  At `bne` at 0xd81ec30 (target 0xd81f15c), taken when a0(=[a3+208]) != v0(=[[0x1014]+268]) and falls through when a0(=[a3+208]) == v0(=[[0x1014]+268]).
  At `bne` at 0xd81ec3c (target 0xd81f15c), taken when at(=[a3+212]) != v1(=[[0x1014]+272]) and falls through when at(=[a3+212]) == v1(=[[0x1014]+272]).
  At `beq` at 0xd81ec50 (target 0xd81e6e8), the branch is always taken.
  At `beq` at 0xd81ec60 (target 0xd81e73c), the branch is always taken.
  At `beq` at 0xd81ec68 (target 0xd81f048), taken when s5(=a1) == s6(=a2) and falls through when s5(=a1) != s6(=a2).
  At `beq` at 0xd81ec7c (target 0xd81f62c), taken when v0(=ret(__glXAddDrawableInterest)) == 0 and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  At `bne` at 0xd81ec8c (target 0xd81ec9c), taken when a1(=[ret(__glXAddDrawableInterest)+8]) != a2(=[a3+32]) and falls through when a1(=[ret(__glXAddDrawableInterest)+8]) == a2(=[a3+32]).
  At `bne` at 0xd81ec94 (target 0xd81e7ac), taken when a3(=[ret(__glXAddDrawableInterest)+16]) != 0 and falls through when a3(=[ret(__glXAddDrawableInterest)+16]) == 0.
  At `bne` at 0xd81eca0 (target 0xd81e7e8), taken when a1(=[[[0x1014]+276]+196]) != 0 and falls through when a1(=[[[0x1014]+276]+196]) == 0.
  At `beq` at 0xd81eca8 (target 0xd81f1ac), the branch is always taken.
  At `beq` at 0xd81ecb8 (target 0xd81e7f0), taken when s2(=[[0x1014]+276]) == a4(=0xd846f20) and falls through when s2(=[[0x1014]+276]) != a4(=0xd846f20).
  At `beq` at 0xd81ecc4 (target 0xd81e7f0), taken when a0(=[[[0x1014]+276]+216]) == s4(=a0) and falls through when a0(=[[[0x1014]+276]+216]) != s4(=a0).
  At `beq` at 0xd81ece4 (target 0xd81f66c), taken when v0(=ret(0xd81e19c)) == 0 and falls through when v0(=ret(0xd81e19c)) != 0.
  At `beq` at 0xd81ecec (target 0xd81e7f0), the branch is always taken.
  At `beq` at 0xd81ecf4 (target 0xd81e744), the branch is always taken.
  At `beq` at 0xd81ed04 (target 0xd81eb9c), the branch is always taken.
  At `bne` at 0xd81ed20 (target 0xd81eb14), taken when at(=[0x1048]) != 0 and falls through when at(=[0x1048]) == 0.
  At `bne` at 0xd81ed50 (target 0xd81ed38), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bgtz` at 0xd81ee18 (target 0xd81ed94), taken when v0(?) > 0 (signed) and falls through when v0(?) <= 0 (signed).
  At `beq` at 0xd81ee20 (target 0xd81eb14), the branch is always taken.
  At `bnel` at 0xd81ee6c (target 0xd81eb04), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0; its branch-likely delay slot `lbu a0,244(s0)` at 0xd81ee70 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd81eed0 (target 0xd81eb9c), the branch is always taken.
  At `beq` at 0xd81eeec (target 0xd81e88c), the branch is always taken.
  At `beq` at 0xd81ef00 (target 0xd81e7b8), taken when s2(=[[0x1014]+276]) == ra(=0xd846f20) and falls through when s2(=[[0x1014]+276]) != ra(=0xd846f20).
  At `beq` at 0xd81ef08 (target 0xd81e7e8), the branch is always taken.
  At `bne` at 0xd81ef20 (target 0xd81ea9c), taken when at(?) < v1(?) (signed) and falls through when at(?) >= v1(?) (signed).
  At `bne` at 0xd81ef2c (target 0xd81ea9c), taken when a0(?) < a1(?) (signed) and falls through when a0(?) >= a1(?) (signed).
  At `beq` at 0xd81ef70 (target 0xd81eb9c), the branch is always taken.
  At `beq` at 0xd81efb8 (target 0xd81e6e0), the branch is always taken.
  At `beq` at 0xd81f014 (target 0xd81f024), taken when a2(=[a3+284]) >= 0x2 (signed) and falls through when a2(=[a3+284]) < 0x2 (signed).
  At `bne` at 0xd81f01c (target 0xd81ea18), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `bne` at 0xd81f024 (target 0xd81ea18), taken when a4(?) != a5(=0x6) and falls through when a4(?) == a5(=0x6).
  At `beq` at 0xd81f040 (target 0xd81ea18), the branch is always taken.
  At `bne` at 0xd81f050 (target 0xd81e7e8), taken when a1(=[[[0x1014]+276]+196]) != 0 and falls through when a1(=[[[0x1014]+276]+196]) == 0.
  At `beq` at 0xd81f058 (target 0xd81f1a4), the branch is always taken.
  At `beq` at 0xd81f074 (target 0xd81e814), taken when v0(=ret(XSGIMiscQueryExtension)) == 0 and falls through when v0(=ret(XSGIMiscQueryExtension)) != 0.
  At `beq` at 0xd81f080 (target 0xd81f448), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xd81f088 (target 0xd81e814), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xd81f094 (target 0xd81e814), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0xd81f0f0 (target 0xd81e814), the branch is always taken.
  At `beq` at 0xd81f0f8 (target 0xd81e954), the branch is always taken.
  At `bne` at 0xd81f100 (target 0xd81e7d8), taken when s6(=a2) != 0 and falls through when s6(=a2) == 0.
  At `beq` at 0xd81f108 (target 0xd81e7b0), the branch is always taken.
  At `beq` at 0xd81f110 (target 0xd81e87c), the branch is always taken.
  At `beq` at 0xd81f118 (target 0xd81e8b8), the branch is always taken.
  At `beq` at 0xd81f150 (target 0xd81eb78), the branch is always taken.
  At `beq` at 0xd81f1a4 (target 0xd81eef4), the branch is always taken.
  At `beq` at 0xd81f1ac (target 0xd81eef4), the branch is always taken.
  At `bne` at 0xd81f1e4 (target 0xd81eb14), taken when v1(=[0x1048]) != 0 and falls through when v1(=[0x1048]) == 0.
  At `beq` at 0xd81f1ec (target 0xd81f4b0), taken when v0(=ret(strstr)) == 0 and falls through when v0(=ret(strstr)) != 0.
  At `bne` at 0xd81f220 (target 0xd81f208), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bgtz` at 0xd81f2e8 (target 0xd81f264), taken when a1(?) > 0 (signed) and falls through when a1(?) <= 0 (signed).
  At `beq` at 0xd81f2f0 (target 0xd81eb14), the branch is always taken.
  At `beq` at 0xd81f30c (target 0xd81ea10), the branch is always taken.
  At `beq` at 0xd81f330 (target 0xd81f34c), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd81f338 (target 0xd81f34c), taken when s0(=a3) == s2(=[[0x1014]+276]) and falls through when s0(=a3) != s2(=[[0x1014]+276]).
  At `beq` at 0xd81f4a8 (target 0xd81f088), the branch is always taken.
  At `bne` at 0xd81f4d8 (target 0xd81f4c0), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bgtz` at 0xd81f5a0 (target 0xd81f51c), taken when a1(?) > 0 (signed) and falls through when a1(?) <= 0 (signed).
  At `beq` at 0xd81f5a8 (target 0xd81eb14), the branch is always taken.
  At `beq` at 0xd81f5e4 (target 0xd81eb9c), the branch is always taken.
  At `beq` at 0xd81f624 (target 0xd81eb9c), the branch is always taken.
  At `beq` at 0xd81f664 (target 0xd81eb9c), the branch is always taken.
  At `beq` at 0xd81f68c (target 0xd81eb9c), the branch is always taken.
  Returns v0 = 0x0, f0 = ret(0xd81e340) (`jr` at 0xd81e918).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xd81ebc4).
  Returns v0 = 0x1 (`jr` at 0xd81ee58).
  Returns v0 = 0x0, f0 = ret(__glXSetupForCommand) (`jr` at 0xd81f13c).
  Returns v0 = 0x0, f0 = ret(__glXPostError) (`jr` at 0xd81f19c).
  Returns v0 = 0x0, f0 = ret(__glXPostError) (`jr` at 0xd81f378).
  Returns v0 = 0x0, f0 = ret(__glXInitThread) (`jr` at 0xd81f3b0).
  Returns v0 = 0x0, f0 = ret(0xd81e340) (`jr` at 0xd81f440).
  The instructions from 0xd81f060 to 0xd81f060 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd81f158 to 0xd81f158 are not reached by any path from the entry, and their branches are not listed.

- `glXMakeContextCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd81f704 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd81f704-0xd81f738 (52 bytes).
  Loads 4 bytes at abs 0xd846598 (`lw` at 0xd81f718).
  Calls `__glXMakeContextCurrent` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0 (`jalr` at 0xd81f720).
  Returns v0 = ret(__glXMakeContextCurrent), f0 = ret(__glXMakeContextCurrent) (`jr` at 0xd81f730).

- `glXGetCurrentReadDrawable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd81f778 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd81f778-0xd81f7b8 (64 bytes).
  Loads 4 bytes at abs 0xd846584 (`lw` at 0xd81f78c).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd81f79c).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd81f7a4).
  Loads 4 bytes at [[0x1014]+276] +0xdc (`lw` at 0xd81f7ac).
  Calls `__glXInitThread` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81f794).
  Returns v0 = [[[0x1014]+276]+220], f0 = ret(__glXInitThread) (`jr` at 0xd81f7b0).

- `__glx_ReadPixels` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd831b90 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd831b90-0xd831db4 (548 bytes).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd831bb0).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd831bb8).
  Loads 4 bytes at [[0x1014]+276] +0xd8 (`lw` at 0xd831bc0).
  Loads 4 bytes at abs 0xd846590 (`lw` at 0xd831be0).
  Loads 4 bytes at [[0x1014]+276] +0x4 (`lw` at 0xd831bec).
  2 4-byte lw loads at [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd831bf0, `lw` at 0xd831d58.
  Loads 4 bytes at [[[[0x1014]+276]+216]+1232] (`lw` at 0xd831bfc).
  3 4-byte lw loads at [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd831c08, `lw` at 0xd831c4c, `lw` at 0xd831db0.
  Loads 4 bytes at [[[0x1014]+276]+216] +0x70 (`lw` at 0xd831c0c).
  Loads 4 bytes at abs 0xd846320 (`lw` at 0xd831c34).
  Stores 4 bytes from v0 at [[[0x1014]+276]+216] +0x64 (`sw` at 0xd831c38).
  Stores 2 bytes from t2 at [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd831c40).
  2 1-byte sb stores at [[[[0x1014]+276]+216]+108], including `sb` at 0xd831c44, `sb` at 0xd831c6c.
  Loads 4 bytes at [[[0x1014]+276]+216] +0x60 (`lw` at 0xd831c48).
  Stores 4 bytes from t0 at [[[0x1014]+276]+216] +0x60 (`sw` at 0xd831c54).
  Stores 4 bytes from t1 at [[[0x1014]+276]+216] +0x6c (`sw` at 0xd831c5c).
  Loads 4 bytes at [[0x1014]+276] +0x110 (`lw` at 0xd831c60).
  Stores 1 byte from a6 at [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd831c68).
  Loads 4 bytes at [[0x1014]+276] +0x3c (`lw` at 0xd831c70).
  Stores 4 bytes from v1 at [[[[0x1014]+276]+216]+108] +0x1c (`sw` at 0xd831c74).
  Stores 4 bytes from a0 at [[[[0x1014]+276]+216]+108] +0x18 (`sw` at 0xd831c78).
  Stores 4 bytes from a1 at [[[[0x1014]+276]+216]+108] +0x14 (`sw` at 0xd831c7c).
  Stores 4 bytes from a2 at [[[[0x1014]+276]+216]+108] +0x10 (`sw` at 0xd831c80).
  Stores 4 bytes from a4 at [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd831c84).
  Stores 4 bytes from a3 at [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd831c88).
  Stores 4 bytes from a5 at [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd831c8c).
  Loads 1 byte at [[0x1014]+276] +0x4c (`lbu` at 0xd831c94).
  Stores 1 byte from zero at [[[[0x1014]+276]+216]+108] +0x21 (`sb` at 0xd831ca0).
  Stores 1 byte from at at [[[[0x1014]+276]+216]+108] +0x20 (`sb` at 0xd831cac).
  Loads 4 bytes at abs 0xd846304 (`lw` at 0xd831cbc).
  2 4-byte lw loads at abs 0xd8463d8, including `lw` at 0xd831cd0, `lw` at 0xd831d14.
  Loads 4 bytes at [[0x1014]+276] +0xb0 (`lw` at 0xd831ce0).
  Stores 4 bytes from ra at [[0x1014]+276] +0xb0 (`sw` at 0xd831cf0).
  Loads 4 bytes at abs 0xd846348 (`lw` at 0xd831cf4).
  Loads 4 bytes at abs 0xd8465c4 (`lw` at 0xd831d34).
  Loads 4 bytes at abs 0xd846300 (`lw` at 0xd831d4c).
  Loads 4 bytes at [[[[0x1014]+276]+216]+1232] +0x4 (`lw` at 0xd831d64).
  Loads 4 bytes at [[[0x1014]+276]+216] +0x7c (`lw` at 0xd831d70).
  Loads 4 bytes at abs 0xd84630c (`lw` at 0xd831da0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd831be8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd831c00).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-144, a2=0x0, a3=0x0, a4=a0 at entry (arg0), a5=[[[0x1014]+276]+60], a6=0x6f, a7=[[[0x1014]+276]+272] (`jalr` at 0xd831ca8).
  Calls `malloc` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd831cc0).
  Calls `_XEatData` via got with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd831cd8).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=unknown, a3=unknown (`jalr` at 0xd831d00).
  Calls `_XEatData` via got with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd831d20).
  Calls `__glXEmptyImage` via got with a0=[[0x1014]+276], a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5) (`jalr` at 0xd831d44).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd831d50).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd831d68).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd831d7c).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=a1 at entry (arg1) (`jalr` at 0xd831da4).
  At `beq` at 0xd831bd8 (target 0xd831d84), taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  At `beq` at 0xd831bf4 (target 0xd831c08), taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `bne` at 0xd831c18 (target 0xd831da0), taken when t8(=[[[[0x1014]+276]+216]+112]) < t9(=[[[[0x1014]+276]+216]+108]+36) (unsigned) and falls through when t8(=[[[[0x1014]+276]+216]+112]) >= t9(=[[[[0x1014]+276]+216]+108]+36) (unsigned).
  At `beq` at 0xd831cb8 (target 0xd831d58), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `bne` at 0xd831cc8 (target 0xd831cf4), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `bne` at 0xd831ce4 (target 0xd831d58), taken when t9(=[[[0x1014]+276]+176]) != 0 and falls through when t9(=[[[0x1014]+276]+176]) == 0.
  At `beq` at 0xd831cec (target 0xd831d58), the branch is always taken.
  At `beq` at 0xd831d0c (target 0xd831d2c), taken when (s2(?) & 0x3) == 0 and falls through when (s2(?) & 0x3) != 0.
  At `beq` at 0xd831d5c (target 0xd831d70), taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beq` at 0xd831d74 (target 0xd831d88), taken when t9(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  At `beq` at 0xd831dac (target 0xd831c1c), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd831d98).

- `glXGetCurrentDisplay` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd836674 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd836674-0xd8366cc (88 bytes).
  Loads 4 bytes at abs 0xd846584 (`lw` at 0xd836688).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd836698).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd83669c).
  Loads 4 bytes at [[0x1014]+276] +0xd8 (`lw` at 0xd8366bc).
  Calls `__glXInitThread` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd836690).
  At `bne` at 0xd8366a8 (target 0xd8366b8), taken when a2(=[[0x1014]+276]) != 0 and falls through when a2(=[[0x1014]+276]) == 0.
  Returns v0 = 0x0, f0 = ret(__glXInitThread) (`jr` at 0xd8366b0).
  Returns v0 = [[[0x1014]+276]+216], f0 = ret(__glXInitThread) (`jr` at 0xd8366c4).

- `glXGetFBConfigAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd836cec (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd836cec-0xd8372d4 (1512 bytes).
  Loads 1 byte at a1 +0xa0 (`lbu` at 0xd836d18).
  37 4-byte sw stores at a3, including `sw` at 0xd836d1c, `sw` at 0xd836d80, `sw` at 0xd836dc4.
  2 8-byte ldc1 loads at a1 +0xa8, including `ldc1` at 0xd836d20, `ldc1` at 0xd8371fc.
  8 4-byte swc1 stores at a3, including `swc1` at 0xd836d30, `swc1` at 0xd836f98, `swc1` at 0xd837098.
  Loads 4 bytes at a1 +0x10 (`lw` at 0xd836d74).
  Loads 4 bytes at a1 +0x68 (`lw` at 0xd836db8).
  Loads 4 bytes at a1 +0x40 (`lw` at 0xd836e0c).
  Loads 4 bytes at a1 +0x98 (`lw` at 0xd836e50).
  Loads 4 bytes at a1 +0x14 (`lw` at 0xd836e60).
  Loads 4 bytes at a1 +0x94 (`lw` at 0xd836ea4).
  2 4-byte lw loads at a1 +0x20, including `lw` at 0xd836ee0, `lw` at 0xd8370a4.
  Loads 4 bytes at a1 (`lw` at 0xd836f14).
  Loads 4 bytes at a1 +0x9c (`lw` at 0xd836f3c).
  Loads 4 bytes at a1 +0x54 (`lw` at 0xd836f4c).
  Loads 8 bytes at a1 +0xc8 (`ldc1` at 0xd836f88).
  Loads 4 bytes at a1 +0x24 (`lw` at 0xd836fb8).
  Loads 4 bytes at a1 +0x5c (`lw` at 0xd836fdc).
  Loads 4 bytes at a1 +0x78 (`lw` at 0xd836ffc).
  Loads 4 bytes at a1 +0x34 (`lw` at 0xd837028).
  Loads 4 bytes at a1 +0x8 (`lw` at 0xd83704c).
  Loads 4 bytes at a1 +0x70 (`lw` at 0xd83705c).
  Loads 8 bytes at a1 +0xb0 (`ldc1` at 0xd837088).
  Loads 4 bytes at a1 +0x58 (`lw` at 0xd8370bc).
  Loads 4 bytes at a1 +0x74 (`lw` at 0xd8370d4).
  Loads 1 byte at a1 +0x4f (`lbu` at 0xd8370ec).
  Loads 4 bytes at a1 +0x48 (`lw` at 0xd8370fc).
  Loads 4 bytes at a1 +0x4 (`lw` at 0xd83710c).
  Loads 8 bytes at a1 +0xe0 (`ldc1` at 0xd837138).
  Loads 4 bytes at a1 +0x30 (`lw` at 0xd837154).
  Loads 4 bytes at a1 +0x2c (`lw` at 0xd837170).
  Loads 4 bytes at a1 +0x18 (`lw` at 0xd837188).
  Loads 4 bytes at a1 +0x1c (`lw` at 0xd8371a0).
  Loads 4 bytes at a1 +0x64 (`lw` at 0xd8371b8).
  Loads 1 byte at a1 +0x4e (`lbu` at 0xd8371c8).
  Loads 4 bytes at a1 +0x3c (`lw` at 0xd8371e0).
  Loads 8 bytes at a1 +0xd0 (`ldc1` at 0xd837200).
  Loads 4 bytes at a1 +0x28 (`lw` at 0xd837214).
  Loads 4 bytes at a1 +0x60 (`lw` at 0xd837224).
  Loads 4 bytes at a1 +0x7c (`lw` at 0xd837234).
  Loads 8 bytes at a1 +0xd8 (`ldc1` at 0xd83724c).
  Loads 8 bytes at a1 +0xc0 (`ldc1` at 0xd83726c).
  Loads 4 bytes at a1 +0x38 (`lw` at 0xd837280).
  Loads 4 bytes at a1 +0xc (`lw` at 0xd837290).
  Loads 8 bytes at a1 +0xb8 (`ldc1` at 0xd8372a0).
  Loads 4 bytes at a1 +0x90 (`lw` at 0xd8372b4).
  Loads 4 bytes at a1 +0x6c (`lw` at 0xd8372c4).
  At `bne` at 0xd836cf0 (target 0xd836d34), taken when a2 < 0x28 (signed) and falls through when a2 >= 0x28 (signed).
  At `bne` at 0xd836cfc (target 0xd836e60), taken when a2 < 0x29 (signed) and falls through when a2 >= 0x29 (signed).
  At `bne` at 0xd836d08 (target 0xd836dc8), taken when a2 < v0(=0x8028) (signed) and falls through when a2 >= v0(=0x8028) (signed).
  At `bne` at 0xd836d10 (target 0xd836e70), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0xd836d34 (target 0xd836d84), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0xd836d40 (target 0xd836f4c), taken when a2 < 0xf (signed) and falls through when a2 >= 0xf (signed).
  At `bne` at 0xd836d48 (target 0xd836ef4), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0xd836d54 (target 0xd83710c), taken when a2 < 0x24 (signed) and falls through when a2 >= 0x24 (signed).
  At `bne` at 0xd836d5c (target 0xd837038), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0xd836d64 (target 0xd837290), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `bne` at 0xd836d6c (target 0xd836e24), taken when a2 != a7(=0x27) and falls through when a2 == a7(=0x27).
  At `bne` at 0xd836d84 (target 0xd836e2c), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0xd836d8c (target 0xd83705c), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `bne` at 0xd836d94 (target 0xd836fec), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0xd836da0 (target 0xd837234), taken when a2 < 0xc (signed) and falls through when a2 >= 0xc (signed).
  At `bne` at 0xd836da8 (target 0xd8371b0), taken when t3(?) != 0 and falls through when t3(?) == 0.
  At `beq` at 0xd836db0 (target 0xd836e24), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xd836dd0 (target 0xd836eb4), taken when a2 < v0(=0x8013) (signed) and falls through when a2 >= v0(=0x8013) (signed).
  At `beq` at 0xd836dd8 (target 0xd8370fc), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd836de4 (target 0xd83700c), taken when a2 < v0(=0x8018) (signed) and falls through when a2 >= v0(=0x8018) (signed).
  At `beq` at 0xd836dec (target 0xd837280), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0xd836df8 (target 0xd8371d8), taken when a2 < v0(=0x801a) (signed) and falls through when a2 >= v0(=0x801a) (signed).
  At `bne` at 0xd836e04 (target 0xd836e24), taken when v0(=0x801a) < a2 (signed) and falls through when v0(=0x801a) >= a2 (signed).
  At `beq` at 0xd836e1c (target 0xd8372c4), taken when a2 == a7(=0x2) and falls through when a2 != a7(=0x2).
  At `bne` at 0xd836e30 (target 0xd836f24), taken when a2 < 0x5 (signed) and falls through when a2 >= 0x5 (signed).
  At `bne` at 0xd836e38 (target 0xd8371c8), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `bne` at 0xd836e40 (target 0xd8370e4), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `beq` at 0xd836e48 (target 0xd836e24), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0xd836e74 (target 0xd836f5c), taken when a2 < v0(=0x802e) (signed) and falls through when a2 >= v0(=0x802e) (signed).
  At `beq` at 0xd836e7c (target 0xd837200), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd836e8c (target 0xd83711c), taken when a2 < a5(=0x186a0) (signed) and falls through when a2 >= a5(=0x186a0) (signed).
  At `beq` at 0xd836e94 (target 0xd8372b4), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0xd836e9c (target 0xd836e24), taken when a2 != a4(=0x186a1) and falls through when a2 == a4(=0x186a1).
  At `bne` at 0xd836ebc (target 0xd836f9c), taken when a2 < v0(=0x8010) (signed) and falls through when a2 >= v0(=0x8010) (signed).
  At `beq` at 0xd836ec4 (target 0xd837214), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `bne` at 0xd836ed0 (target 0xd837164), taken when a2 < v0(=0x8012) (signed) and falls through when a2 >= v0(=0x8012) (signed).
  At `bne` at 0xd836ed8 (target 0xd836e24), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `bne` at 0xd836ef4 (target 0xd836fc8), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0xd836efc (target 0xd837224), taken when t3(?) != 0 and falls through when t3(?) == 0.
  At `bne` at 0xd836f04 (target 0xd837198), taken when t8(?) != 0 and falls through when t8(?) == 0.
  At `beq` at 0xd836f0c (target 0xd836e24), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xd836f28 (target 0xd836e1c), taken when a2 < 0x3 (signed) and falls through when a2 >= 0x3 (signed).
  At `beq` at 0xd836f34 (target 0xd836e24), taken when a2 >= 0x4 (signed) and falls through when a2 < 0x4 (signed).
  At `bne` at 0xd836f64 (target 0xd83706c), taken when a2 < v0(=0x802b) (signed) and falls through when a2 >= v0(=0x802b) (signed).
  At `beq` at 0xd836f6c (target 0xd8372a0), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0xd836f78 (target 0xd837260), taken when a2 < v0(=0x802d) (signed) and falls through when a2 >= v0(=0x802d) (signed).
  At `bne` at 0xd836f80 (target 0xd836e24), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `bne` at 0xd836fa4 (target 0xd83709c), taken when a2 < v0(=0x800c) (signed) and falls through when a2 >= v0(=0x800c) (signed).
  At `bne` at 0xd836fb0 (target 0xd836e24), taken when v0(=0x800c) < a2 (signed) and falls through when v0(=0x800c) >= a2 (signed).
  At `bne` at 0xd836fcc (target 0xd8370b4), taken when a2 < 0x10 (signed) and falls through when a2 >= 0x10 (signed).
  At `beq` at 0xd836fd4 (target 0xd836e24), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0xd836fec (target 0xd8370cc), taken when t9(?) != 0 and falls through when t9(?) == 0.
  At `beq` at 0xd836ff4 (target 0xd836e24), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0xd837014 (target 0xd83714c), taken when a2 < v0(=0x8017) (signed) and falls through when a2 >= v0(=0x8017) (signed).
  At `bne` at 0xd837020 (target 0xd836e24), taken when v0(=0x8017) < a2 (signed) and falls through when v0(=0x8017) >= a2 (signed).
  At `bne` at 0xd83703c (target 0xd837180), taken when a2 < 0x25 (signed) and falls through when a2 >= 0x25 (signed).
  At `beq` at 0xd837044 (target 0xd836e24), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xd837074 (target 0xd8371f0), taken when a2 < v0(=0x802a) (signed) and falls through when a2 >= v0(=0x802a) (signed).
  At `bne` at 0xd837080 (target 0xd836e24), taken when v0(=0x802a) < a2 (signed) and falls through when v0(=0x802a) >= a2 (signed).
  At `bne` at 0xd83709c (target 0xd836e24), taken when a2 != t1(=0x800b) and falls through when a2 == t1(=0x800b).
  At `bne` at 0xd8370b4 (target 0xd836e24), taken when a2 != t3(=0xf) and falls through when a2 == t3(=0xf).
  At `bne` at 0xd8370cc (target 0xd836e24), taken when a2 != t9(=0x9) and falls through when a2 == t9(=0x9).
  At `bne` at 0xd8370e4 (target 0xd836e24), taken when a2 != v0(=0x6) and falls through when a2 == v0(=0x6).
  At `bne` at 0xd837124 (target 0xd837244), taken when a2 < v0(=0x8030) (signed) and falls through when a2 >= v0(=0x8030) (signed).
  At `bne` at 0xd837130 (target 0xd836e24), taken when v0(=0x8030) < a2 (signed) and falls through when v0(=0x8030) >= a2 (signed).
  At `bne` at 0xd83714c (target 0xd836e24), taken when a2 != a6(=0x8016) and falls through when a2 == a6(=0x8016).
  At `bne` at 0xd837168 (target 0xd836e24), taken when a2 != t0(=0x8011) and falls through when a2 == t0(=0x8011).
  At `bne` at 0xd837180 (target 0xd836e24), taken when a2 != t2(=0x24) and falls through when a2 == t2(=0x24).
  At `bne` at 0xd837198 (target 0xd836e24), taken when a2 != t8(=0x20) and falls through when a2 == t8(=0x20).
  At `bne` at 0xd8371b0 (target 0xd836e24), taken when a2 != at(=0xc) and falls through when a2 == at(=0xc).
  At `bne` at 0xd8371d8 (target 0xd836e24), taken when a2 != a0(=0x8019) and falls through when a2 == a0(=0x8019).
  At `bne` at 0xd8371f0 (target 0xd836e24), taken when a2 != a4(=0x8029) and falls through when a2 == a4(=0x8029).
  At `beq` at 0xd8371f8 (target 0xd836d24), the branch is always taken.
  At `bne` at 0xd837244 (target 0xd836e24), taken when a2 != t0(=0x802f) and falls through when a2 == t0(=0x802f).
  At `bne` at 0xd837264 (target 0xd836e24), taken when a2 != t1(=0x802c) and falls through when a2 == t1(=0x802c).
  Returns v0 = 0x0 (`jr` at 0xd836d2c).
  Returns v0 = 0x0 (`jr` at 0xd836d7c).
  Returns v0 = 0x0 (`jr` at 0xd836dc0).
  Returns v0 = 0x0 (`jr` at 0xd836e14).
  Returns v0 = 0x2 (`jr` at 0xd836e24).
  Returns v0 = 0x0 (`jr` at 0xd836e58).
  Returns v0 = 0x0 (`jr` at 0xd836e68).
  Returns v0 = 0x0 (`jr` at 0xd836eac).
  Returns v0 = 0x0 (`jr` at 0xd836eec).
  Returns v0 = 0x0 (`jr` at 0xd836f1c).
  Returns v0 = 0x0 (`jr` at 0xd836f44).
  Returns v0 = 0x0 (`jr` at 0xd836f54).
  Returns v0 = 0x0 (`jr` at 0xd836f94).
  Returns v0 = 0x0 (`jr` at 0xd836fc0).
  Returns v0 = 0x0 (`jr` at 0xd836fe4).
  Returns v0 = 0x0 (`jr` at 0xd837004).
  Returns v0 = 0x0 (`jr` at 0xd837030).
  Returns v0 = 0x0 (`jr` at 0xd837054).
  Returns v0 = 0x0 (`jr` at 0xd837064).
  Returns v0 = 0x0 (`jr` at 0xd837094).
  Returns v0 = 0x0 (`jr` at 0xd8370ac).
  Returns v0 = 0x0 (`jr` at 0xd8370c4).
  Returns v0 = 0x0 (`jr` at 0xd8370dc).
  Returns v0 = 0x0 (`jr` at 0xd8370f4).
  Returns v0 = 0x0 (`jr` at 0xd837104).
  Returns v0 = 0x0 (`jr` at 0xd837114).
  Returns v0 = 0x0 (`jr` at 0xd837144).
  Returns v0 = 0x0 (`jr` at 0xd83715c).
  Returns v0 = 0x0 (`jr` at 0xd837178).
  Returns v0 = 0x0 (`jr` at 0xd837190).
  Returns v0 = 0x0 (`jr` at 0xd8371a8).
  Returns v0 = 0x0 (`jr` at 0xd8371c0).
  Returns v0 = 0x0 (`jr` at 0xd8371d0).
  Returns v0 = 0x0 (`jr` at 0xd8371e8).
  Returns v0 = 0x0 (`jr` at 0xd83720c).
  Returns v0 = 0x0 (`jr` at 0xd83721c).
  Returns v0 = 0x0 (`jr` at 0xd83722c).
  Returns v0 = 0x0 (`jr` at 0xd83723c).
  Returns v0 = 0x0 (`jr` at 0xd837258).
  Returns v0 = 0x0 (`jr` at 0xd837278).
  Returns v0 = 0x0 (`jr` at 0xd837288).
  Returns v0 = 0x0 (`jr` at 0xd837298).
  Returns v0 = 0x0 (`jr` at 0xd8372ac).
  Returns v0 = 0x0 (`jr` at 0xd8372bc).
  Returns v0 = 0x0 (`jr` at 0xd8372cc).

- `glXGetFBConfigFltAttribSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd837320 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd837320-0xd837434 (276 bytes).
  Loads 4 bytes at abs 0xd8461ac (`lw` at 0xd837340).
  Loads 4 bytes at table(0xd8445f0) (`lw` at 0xd837358).
  Loads 8 bytes at a1 +0xa8 (`ldc1` at 0xd837364).
  9 8-byte sdc1 stores at a3, including `sdc1` at 0xd837370, `sdc1` at 0xd8373a0, `sdc1` at 0xd8373c0.
  Loads 4 bytes at abs 0xd846450 (`lw` at 0xd837374).
  Loads 8 bytes at a1 +0xe0 (`ldc1` at 0xd8373b4).
  Loads 8 bytes at a1 +0xd8 (`ldc1` at 0xd8373c4).
  Loads 8 bytes at a1 +0xd0 (`ldc1` at 0xd8373d4).
  Loads 8 bytes at a1 +0xc8 (`ldc1` at 0xd8373e4).
  Loads 8 bytes at a1 +0xc0 (`ldc1` at 0xd8373f4).
  Loads 8 bytes at a1 +0xb8 (`ldc1` at 0xd837404).
  Loads 8 bytes at a1 +0xb0 (`ldc1` at 0xd83741c).
  Calls `glXGetFBConfigAttribSGIX` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-32 (`jalr` at 0xd837380).
  At `beq` at 0xd837350 (target 0xd837374), taken when v1(=a2-32809) >= 0x8 (unsigned) and falls through when v1(=a2-32809) < 0x8 (unsigned).
  At `beq` at 0xd83736c (target 0xd8373a4), the branch is always taken.
  At `beq` at 0xd8373bc (target 0xd8373a4), the branch is always taken.
  At `beq` at 0xd8373cc (target 0xd8373a4), the branch is always taken.
  At `beq` at 0xd8373dc (target 0xd8373a4), the branch is always taken.
  At `beq` at 0xd8373ec (target 0xd8373a4), the branch is always taken.
  At `beq` at 0xd8373fc (target 0xd8373a4), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd8373ac).
  Returns v0 = 0x0 (`jr` at 0xd837414).
  Returns v0 = 0x0 (`jr` at 0xd83742c).

- `glXChooseFBConfigWithFltSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd837838 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd837838-0xd838c54 (5148 bytes).
  2 8-byte ldc1 loads at abs 0xd846ce8, including `ldc1` at 0xd8379b0, `ldc1` at 0xd8379b4.
  Loads 4 bytes at a2 (`lw` at 0xd8379f4).
  83 4-byte lw loads at ?, including `lw` at 0xd837a64, `lw` at 0xd837a80, `lw` at 0xd837a8c.
  4 4-byte lw loads at abs 0xd846588, including `lw` at 0xd837b44, `lw` at 0xd837b7c, `lw` at 0xd837b90.
  Loads 8 bytes at a3 (`ldc1` at 0xd837b48).
  18 8-byte ldc1 loads at ?, including `ldc1` at 0xd837b64, `ldc1` at 0xd837b80, `ldc1` at 0xd837b94.
  Loads 4 bytes at abs 0xd8461ac (`lw` at 0xd837ba0).
  Loads 4 bytes at table(0xd844610) (`lw` at 0xd837bc0).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd837c18).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd837c28).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd837c34).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd837c3c).
  Loads 4 bytes at [([ret(__glXInitialize)+32] + (a1 << 0x5))+12] +0x48 (`lw` at 0xd837c74).
  3 4-byte lw loads at abs 0xd846304, including `lw` at 0xd837c7c, `lw` at 0xd838498, `lw` at 0xd838668.
  13 4-byte sw stores at a4, including `sw` at 0xd837cc0, `sw` at 0xd837d74, `sw` at 0xd837f38.
  7 1-byte lbu loads at ?, including `lbu` at 0xd837e1c, `lbu` at 0xd838214, `lbu` at 0xd838300.
  Stores 4 bytes from s0 at ret(malloc) (`sw` at 0xd838134).
  16 4-byte sw stores at ?, including `sw` at 0xd838500, `sw` at 0xd838524, `sw` at 0xd83852c.
  4 4-byte lw loads at abs 0xd846300, including `lw` at 0xd838740, `lw` at 0xd8388c8, `lw` at 0xd838910.
  Loads 4 bytes at abs 0xd846178 (`lw` at 0xd838b70).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd837bfc).
  Calls `malloc` via got with a0=0x4, a1=(a1 << 0x5), a2=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12], a3=unknown, a7=a1 at entry (arg1) (`jalr` at 0xd837f44).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=(a1 << 0x5), a2=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12], a3=unknown, a7=a1 at entry (arg1) (`jalr` at 0xd8384a8).
  Calls `malloc` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd838674).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8388cc).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd838918).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd838934).
  Calls `(unknown callee) [0xd837468]` via direct with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xd838b94).
  At `beq` at 0xd8379ec (target 0xd837b18), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0xd8379f8 (target 0xd838318), taken when t0(=[a2]) == 0 and falls through when t0(=[a2]) != 0.
  At `beq` at 0xd837a58 (target 0xd837a8c), the branch is always taken.
  At `beq` at 0xd837a78 (target 0xd837b40), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xd837a84 (target 0xd837b40), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0xd837a94 (target 0xd837ae8), taken when v0(?) < 0x26 (signed) and falls through when v0(?) >= 0x26 (signed).
  At `bne` at 0xd837aa0 (target 0xd837a60), taken when v0(?) < 0x27 (signed) and falls through when v0(?) >= 0x27 (signed).
  At `bne` at 0xd837aac (target 0xd837da4), taken when v0(?) < a2(=0x8029) (signed) and falls through when v0(?) >= a2(=0x8029) (signed).
  At `bne` at 0xd837ab4 (target 0xd837e30), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd837ad4 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd837aec (target 0xd837bcc), taken when v0(?) < 0xd (signed) and falls through when v0(?) >= 0xd (signed).
  At `beq` at 0xd837af8 (target 0xd837dd4), taken when v0(?) >= 0xe (signed) and falls through when v0(?) < 0xe (signed).
  At `beq` at 0xd837b10 (target 0xd837a78), the branch is always taken.
  At `beq` at 0xd837b40 (target 0xd837bfc), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd837b54 (target 0xd837bf8), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xd837b5c (target 0xd837b94), the branch is always taken.
  At `beq` at 0xd837b78 (target 0xd837bfc), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xd837b8c (target 0xd837bfc), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0xd837bb8 (target 0xd837d6c), taken when v1(=table(-0x8029)) >= 0x8 (unsigned) and falls through when v1(=table(-0x8029)) < 0x8 (unsigned).
  At `bne` at 0xd837bcc (target 0xd837e08), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0xd837bd8 (target 0xd837ebc), taken when v0(?) >= 0x9 (signed) and falls through when v0(?) < 0x9 (signed).
  At `beq` at 0xd837bf0 (target 0xd837a78), the branch is always taken.
  At `beq` at 0xd837c04 (target 0xd837f60), taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  At `bltz` at 0xd837c0c (target 0xd837f0c), taken when a7(=a1) < 0 (signed) and falls through when a7(=a1) >= 0 (signed).
  At `beq` at 0xd837c20 (target 0xd837f0c), taken when t0(=a1) >= t1(=[a0+136]) (signed) and falls through when t0(=a1) < t1(=[a0+136]) (signed).
  At `beq` at 0xd837c38 (target 0xd8380ec), taken when a2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0 and falls through when a2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0.
  At `beq` at 0xd837c40 (target 0xd8380ec), taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) == 0 and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) != 0.
  At `beq` at 0xd837c48 (target 0xd838494), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `blez` at 0xd837c50 (target 0xd837c8c), taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed) and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  At `beq` at 0xd837c78 (target 0xd837f44), taken when t8(?) == s2(?) and falls through when t8(?) != s2(?).
  At `bnel` at 0xd837c84 (target 0xd837c78), taken when s0(?) != s1(?) and falls through when s0(?) == s1(?); its branch-likely delay slot `lw t8,72(s0)` at 0xd837c88 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd837cd4 (target 0xd837b78), the branch is always taken.
  At `beq` at 0xd837cec (target 0xd837b78), the branch is always taken.
  At `beq` at 0xd837d04 (target 0xd837b78), the branch is always taken.
  At `beq` at 0xd837d1c (target 0xd837b78), the branch is always taken.
  At `beq` at 0xd837d34 (target 0xd837b78), the branch is always taken.
  At `beq` at 0xd837d4c (target 0xd837b78), the branch is always taken.
  At `beq` at 0xd837d64 (target 0xd837b78), the branch is always taken.
  At `bne` at 0xd837da8 (target 0xd837e60), taken when v0(?) < a3(=0x8013) (signed) and falls through when v0(?) >= a3(=0x8013) (signed).
  At `bne` at 0xd837db0 (target 0xd837fcc), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd837dcc (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd837dd4 (target 0xd837e90), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `beq` at 0xd837de0 (target 0xd837ff4), taken when v0(?) >= 0x21 (signed) and falls through when v0(?) < 0x21 (signed).
  At `beq` at 0xd837e00 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd837e08 (target 0xd837ee4), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xd837e10 (target 0xd8380a8), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xd837e28 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd837e30 (target 0xd837f98), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `bne` at 0xd837e38 (target 0xd838138), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd837e58 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd837e64 (target 0xd838024), taken when v0(?) < t1(=0x8010) (signed) and falls through when v0(?) >= t1(=0x8010) (signed).
  At `bne` at 0xd837e70 (target 0xd838200), taken when t1(=0x8010) < v0(?) (signed) and falls through when t1(=0x8010) >= v0(?) (signed).
  At `beq` at 0xd837e88 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd837e90 (target 0xd838054), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0xd837e9c (target 0xd838250), taken when v0(?) >= 0x11 (signed) and falls through when v0(?) < 0x11 (signed).
  At `beq` at 0xd837eb4 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd837ebc (target 0xd83807c), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0xd837ec4 (target 0xd838270), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xd837edc (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd837ee8 (target 0xd8380d0), taken when v0(?) < 0x3 (signed) and falls through when v0(?) >= 0x3 (signed).
  At `beq` at 0xd837ef0 (target 0xd838164), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd837f04 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd837f4c (target 0xd838124), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beq` at 0xd837f58 (target 0xd837d78), the branch is always taken.
  At `bne` at 0xd837f9c (target 0xd83819c), taken when v0(?) < t3(=0x802c) (signed) and falls through when v0(?) >= t3(=0x802c) (signed).
  At `bne` at 0xd837fa4 (target 0xd838374), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `beq` at 0xd837fc4 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd837fcc (target 0xd8381d0), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xd837fd4 (target 0xd83839c), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd837fec (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd837ff4 (target 0xd838224), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0xd837ffc (target 0xd8383bc), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xd83801c (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd838024 (target 0xd838290), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd838030 (target 0xd838164), taken when v0(?) >= 0x29 (signed) and falls through when v0(?) < 0x29 (signed).
  At `beq` at 0xd83804c (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd838054 (target 0xd8382b4), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd83805c (target 0xd838164), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0xd838074 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd838080 (target 0xd8382d8), taken when v0(?) < 0xa (signed) and falls through when v0(?) >= 0xa (signed).
  At `beq` at 0xd838088 (target 0xd838164), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0xd8380a0 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd8380a8 (target 0xd8382f8), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd8380b0 (target 0xd838164), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0xd8380c8 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd8380d0 (target 0xd838164), taken when v0(?) != a0(=0x2) and falls through when v0(?) == a0(=0x2).
  At `beq` at 0xd8380e4 (target 0xd837a78), the branch is always taken.
  At `beq` at 0xd838130 (target 0xd837d78), the branch is always taken.
  At `bne` at 0xd838138 (target 0xd838344), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0xd838144 (target 0xd838470), taken when t8(=0x186a0) < v0(?) (signed) and falls through when t8(=0x186a0) >= v0(?) (signed).
  At `beq` at 0xd83815c (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd8381a0 (target 0xd8383e0), taken when v0(?) < a4(=0x802b) (signed) and falls through when v0(?) >= a4(=0x802b) (signed).
  At `bne` at 0xd8381a8 (target 0xd838164), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd8381c8 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd8381d4 (target 0xd83840c), taken when v0(?) < ra(=0x8017) (signed) and falls through when v0(?) >= ra(=0x8017) (signed).
  At `bne` at 0xd8381e0 (target 0xd838164), taken when ra(=0x8017) < v0(?) (signed) and falls through when ra(=0x8017) >= v0(?) (signed).
  At `beq` at 0xd8381f8 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd838200 (target 0xd83842c), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xd83820c (target 0xd838164), taken when t9(=0x8012) < v0(?) (signed) and falls through when t9(=0x8012) >= v0(?) (signed).
  At `beq` at 0xd83821c (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd838228 (target 0xd83844c), taken when v0(?) < 0x23 (signed) and falls through when v0(?) >= 0x23 (signed).
  At `beq` at 0xd838230 (target 0xd838164), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0xd838248 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd838250 (target 0xd838164), taken when v0(?) != a5(=0x11) and falls through when v0(?) == a5(=0x11).
  At `beq` at 0xd838268 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd838270 (target 0xd838164), taken when v0(?) != a7(=0xc) and falls through when v0(?) == a7(=0xc).
  At `beq` at 0xd838288 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd838290 (target 0xd838164), taken when v0(?) != v1(=0x27) and falls through when v0(?) == v1(=0x27).
  At `beq` at 0xd8382ac (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd8382b8 (target 0xd838164), taken when v0(?) != a7(=0xe) and falls through when v0(?) == a7(=0xe).
  At `beq` at 0xd8382d0 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd8382d8 (target 0xd838164), taken when v0(?) != v1(=0x9) and falls through when v0(?) == v1(=0x9).
  At `beq` at 0xd8382f0 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd8382f8 (target 0xd838164), taken when v0(?) != a6(=0x6) and falls through when v0(?) == a6(=0x6).
  At `beq` at 0xd838310 (target 0xd837a78), the branch is always taken.
  At `beq` at 0xd83833c (target 0xd837b40), the branch is always taken.
  At `bne` at 0xd838344 (target 0xd838574), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xd83834c (target 0xd838164), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd83836c (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd838374 (target 0xd838164), taken when v0(?) != a6(=0x802d) and falls through when v0(?) == a6(=0x802d).
  At `beq` at 0xd838394 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd83839c (target 0xd838164), taken when v0(?) != at(=0x8028) and falls through when v0(?) == at(=0x8028).
  At `beq` at 0xd8383b4 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd8383bc (target 0xd838164), taken when v0(?) != a5(=0x25) and falls through when v0(?) == a5(=0x25).
  At `beq` at 0xd8383d8 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd8383e4 (target 0xd838164), taken when v0(?) != at(=0x802a) and falls through when v0(?) == at(=0x802a).
  At `beq` at 0xd838404 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd83840c (target 0xd838164), taken when v0(?) != a5(=0x8016) and falls through when v0(?) == a5(=0x8016).
  At `beq` at 0xd838424 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd83842c (target 0xd838164), taken when v0(?) != a7(=0x8011) and falls through when v0(?) == a7(=0x8011).
  At `beq` at 0xd838444 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd83844c (target 0xd838164), taken when v0(?) != v1(=0x22) and falls through when v0(?) == v1(=0x22).
  At `beq` at 0xd838468 (target 0xd837a78), the branch is always taken.
  At `bne` at 0xd838474 (target 0xd838164), taken when v0(?) != a7(=0x186a1) and falls through when v0(?) == a7(=0x186a1).
  At `beq` at 0xd83848c (target 0xd837a78), the branch is always taken.
  At `beq` at 0xd8384b0 (target 0xd8388f0), taken when v0(=ret(malloc)) == 0 and falls through when v0(=ret(malloc)) != 0.
  At `bne` at 0xd8384b8 (target 0xd8385a0), taken when s1(?) != 0 and falls through when s1(?) == 0.
  At `bne` at 0xd8384c0 (target 0xd8385a0), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `blez` at 0xd8384c8 (target 0xd838564), taken when s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed) and falls through when s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  At `beq` at 0xd8384f4 (target 0xd838510), taken when (s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x7) == 0 and falls through when (s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x7) != 0.
  At `bne` at 0xd838508 (target 0xd8384fc), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0xd838514 (target 0xd838564), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bne` at 0xd83855c (target 0xd83851c), taken when s0(?) != s1(?) and falls through when s0(?) == s1(?).
  At `beq` at 0xd83856c (target 0xd837d78), the branch is always taken.
  At `bne` at 0xd838578 (target 0xd838164), taken when v0(?) != a5(=0x802f) and falls through when v0(?) == a5(=0x802f).
  At `beq` at 0xd838598 (target 0xd837a78), the branch is always taken.
  At `blez` at 0xd8385a0 (target 0xd838900), taken when s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed) and falls through when s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  At `beq` at 0xd8385cc (target 0xd8385ec), taken when (s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x3) == 0 and falls through when (s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) & 0x3) != 0.
  At `bne` at 0xd8385e4 (target 0xd8385d4), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0xd8385f0 (target 0xd838664), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `bne` at 0xd838638 (target 0xd838608), taken when s0(?) != s1(?) and falls through when s0(?) == s1(?).
  At `beq` at 0xd83868c (target 0xd838930), taken when v0(=ret(malloc)) == 0 and falls through when v0(=ret(malloc)) != 0.
  At `blez` at 0xd838694 (target 0xd8388c0), taken when t0(?) <= 0 (signed) and falls through when t0(?) > 0 (signed).
  At `beq` at 0xd8386c0 (target 0xd838744), the branch is always taken.
  At `blez` at 0xd8386c8 (target 0xd838738), taken when v0(?) <= 0 (signed) and falls through when v0(?) > 0 (signed).
  At `beq` at 0xd8386ec (target 0xd838738), taken when a1(?) == a2(?) and falls through when a1(?) != a2(?).
  At `beq` at 0xd838704 (target 0xd838738), taken when a1(?) == a2(?) and falls through when a1(?) != a2(?).
  At `beq` at 0xd83871c (target 0xd838738), taken when a1(?) == a2(?) and falls through when a1(?) != a2(?).
  At `bne` at 0xd838730 (target 0xd8386d8), taken when a1(?) != a2(?) and falls through when a1(?) == a2(?).
  At `beq` at 0xd83873c (target 0xd8388cc), taken when s2(?) == t0(?) and falls through when s2(?) != t0(?).
  At `blez` at 0xd838744 (target 0xd838738), taken when a4(?) <= 0 (signed) and falls through when a4(?) > 0 (signed).
  At `beq` at 0xd838750 (target 0xd838c48), the branch is always taken.
  At `beq` at 0xd838758 (target 0xd8387bc), taken when a1(=one of 0x0, 0x1) == 0 and falls through when a1(=one of 0x0, 0x1) != 0.
  At `beq` at 0xd83876c (target 0xd8386c8), taken when s0(?) == s1(?) and falls through when s0(?) != s1(?).
  At `bne` at 0xd838778 (target 0xd838768), taken when t9(?) != s2(?) and falls through when t9(?) == s2(?).
  At `bne` at 0xd838788 (target 0xd838768), taken when ra(?) < s3(?) (signed) and falls through when ra(?) >= s3(?) (signed).
  At `bne` at 0xd838794 (target 0xd838768), taken when at(?) != s4(?) and falls through when at(?) == s4(?).
  At `beq` at 0xd83879c (target 0xd838758), taken when s5(=one of 0x0, 0x1) == 0 and falls through when s5(=one of 0x0, 0x1) != 0.
  At `beq` at 0xd8387a8 (target 0xd838758), taken when v1(?) == s8(?) and falls through when v1(?) != s8(?).
  At `beq` at 0xd8387b4 (target 0xd838758), the branch is always taken.
  At `bne` at 0xd8387c8 (target 0xd838768), taken when a1(?) != a3(?) and falls through when a1(?) == a3(?).
  At `bne` at 0xd8387d8 (target 0xd838768), taken when a2(?) < a5(?) (signed) and falls through when a2(?) >= a5(?) (signed).
  At `bne` at 0xd8387f0 (target 0xd838768), taken when a6(?) < t1(?) (signed) and falls through when a6(?) >= t1(?) (signed).
  At `bne` at 0xd838800 (target 0xd838768), taken when t8(?) < t9(?) (signed) and falls through when t8(?) >= t9(?) (signed).
  At `bne` at 0xd838810 (target 0xd838768), taken when ra(?) < at(?) (signed) and falls through when ra(?) >= at(?) (signed).
  At `bne` at 0xd838818 (target 0xd838768), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xd838828 (target 0xd838768), taken when a2(?) < a5(?) (signed) and falls through when a2(?) >= a5(?) (signed).
  At `bne` at 0xd838838 (target 0xd838768), taken when a6(?) < t1(?) (signed) and falls through when a6(?) >= t1(?) (signed).
  At `bne` at 0xd838848 (target 0xd838768), taken when t8(?) < t9(?) (signed) and falls through when t8(?) >= t9(?) (signed).
  At `bne` at 0xd838858 (target 0xd838768), taken when ra(?) < at(?) (signed) and falls through when ra(?) >= at(?) (signed).
  At `bne` at 0xd838868 (target 0xd838768), taken when v1(?) < a1(?) (signed) and falls through when v1(?) >= a1(?) (signed).
  At `bne` at 0xd838878 (target 0xd838768), taken when a2(?) < a5(?) (signed) and falls through when a2(?) >= a5(?) (signed).
  At `bne` at 0xd838888 (target 0xd838768), taken when a6(?) < t1(?) (unsigned) and falls through when a6(?) >= t1(?) (unsigned).
  At `bne` at 0xd838898 (target 0xd838768), taken when t8(?) < t9(?) (unsigned) and falls through when t8(?) >= t9(?) (unsigned).
  At `beq` at 0xd8388a0 (target 0xd83894c), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0xd8388b0 (target 0xd83894c), taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  At `beq` at 0xd8388b8 (target 0xd83894c), the branch is always taken.
  At `blez` at 0xd8388d4 (target 0xd838910), taken when s6(?) <= 0 (signed) and falls through when s6(?) > 0 (signed).
  At `beq` at 0xd8388e8 (target 0xd837d78), the branch is always taken.
  At `beq` at 0xd8388f8 (target 0xd837d78), the branch is always taken.
  At `beq` at 0xd838908 (target 0xd838668), the branch is always taken.
  At `beq` at 0xd838928 (target 0xd837d78), the branch is always taken.
  At `beq` at 0xd838944 (target 0xd837d78), the branch is always taken.
  At `bne` at 0xd83894c (target 0xd838768), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `bne` at 0xd838958 (target 0xd838768), taken when a5(?) != a6(?) and falls through when a5(?) == a6(?).
  At `beq` at 0xd838960 (target 0xd83897c), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `beq` at 0xd83896c (target 0xd838980), taken when t8(?) == t9(?) and falls through when t8(?) != t9(?).
  At `beq` at 0xd838974 (target 0xd838980), the branch is always taken.
  At `bne` at 0xd838980 (target 0xd838768), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd838988 (target 0xd8389a4), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0xd838998 (target 0xd8389a4), taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  At `bne` at 0xd8389a4 (target 0xd838768), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8389ac (target 0xd8389c4), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0xd8389bc (target 0xd838768), taken when a2(?) != a5(?) and falls through when a2(?) == a5(?).
  At `beq` at 0xd8389c4 (target 0xd8389e0), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xd8389d4 (target 0xd8389e0), taken when t1(?) == t8(?) and falls through when t1(?) != t8(?).
  At `bne` at 0xd8389e0 (target 0xd838768), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8389e8 (target 0xd838a04), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `beq` at 0xd8389f4 (target 0xd838a08), taken when ra(?) == at(?) and falls through when ra(?) != at(?).
  At `beq` at 0xd8389fc (target 0xd838a08), the branch is always taken.
  At `bne` at 0xd838a08 (target 0xd838768), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd838a10 (target 0xd838a2c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd838a1c (target 0xd838a30), taken when a1(?) == a2(?) and falls through when a1(?) != a2(?).
  At `beq` at 0xd838a24 (target 0xd838a30), the branch is always taken.
  At `bne` at 0xd838a30 (target 0xd838768), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `bne` at 0xd838a40 (target 0xd838768), taken when a5(?) != a6(?) and falls through when a5(?) == a6(?).
  At `bne` at 0xd838a50 (target 0xd838768), taken when t1(?) != t8(?) and falls through when t1(?) == t8(?).
  At `beq` at 0xd838a58 (target 0xd838a6c), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `beq` at 0xd838a64 (target 0xd838c2c), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `bne` at 0xd838a6c (target 0xd838768), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `bne` at 0xd838a7c (target 0xd838768), taken when at(?) < v1(?) (signed) and falls through when at(?) >= v1(?) (signed).
  At `bne` at 0xd838a8c (target 0xd838768), taken when a1(?) < a2(?) (signed) and falls through when a1(?) >= a2(?) (signed).
  At `bne` at 0xd838a9c (target 0xd838768), taken when a5(?) < a6(?) (signed) and falls through when a5(?) >= a6(?) (signed).
  At `bne` at 0xd838aa8 (target 0xd838768), taken when t1(?) != t8(?) and falls through when t1(?) == t8(?).
  At `bc1t` at 0xd838abc (target 0xd838768), taken when f3 < f4 (c.lt.d at 0xd838ab8) and falls through when not (f3 < f4 (c.lt.d at 0xd838ab8)).
  At `bc1t` at 0xd838acc (target 0xd838768), taken when FP condition code 1 is true and falls through when FP condition code 1 is false.
  At `bc1t` at 0xd838ae0 (target 0xd838768), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1t` at 0xd838af0 (target 0xd838768), taken when FP condition code 3 is true and falls through when FP condition code 3 is false.
  At `bc1t` at 0xd838b04 (target 0xd838768), taken when FP condition code 4 is true and falls through when FP condition code 4 is false.
  At `bc1t` at 0xd838b14 (target 0xd838768), taken when FP condition code 5 is true and falls through when FP condition code 5 is false.
  At `bc1t` at 0xd838b28 (target 0xd838768), taken when FP condition code 6 is true and falls through when FP condition code 6 is false.
  At `bc1t` at 0xd838b38 (target 0xd838768), taken when FP condition code 7 is true and falls through when FP condition code 7 is false.
  At `beq` at 0xd838b50 (target 0xd838c40), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0xd838bc0 (target 0xd838b64), taken when a3(?) != a4(?) and falls through when a3(?) == a4(?).
  At `beq` at 0xd838bd0 (target 0xd838c34), taken when a3(?) >= t0(?) (signed) and falls through when a3(?) < t0(?) (signed).
  At `beq` at 0xd838bf4 (target 0xd838c0c), taken when a1(?) == t0(?) and falls through when a1(?) != t0(?).
  At `bne` at 0xd838c04 (target 0xd838bec), taken when a1(?) != t0(?) and falls through when a1(?) == t0(?).
  At `beq` at 0xd838c24 (target 0xd838768), the branch is always taken.
  At `beq` at 0xd838c2c (target 0xd838a6c), the branch is always taken.
  At `beq` at 0xd838c38 (target 0xd838c0c), the branch is always taken.
  At `beq` at 0xd838c40 (target 0xd838c0c), the branch is always taken.
  At `beq` at 0xd838c4c (target 0xd838778), the branch is always taken.
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd837cbc).
  Returns v0 = ? (`jr` at 0xd837d9c).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd837f3c).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd837f90).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd83811c).
  Returns v0 = 0x0 (`jr` at 0xd838194).
  The instructions from 0xd837adc to 0xd837ae4 are not reached by any path from the entry, and their branches are not listed.

- `glXGetVisualFromFBConfig` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd838e30 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd838e30-0xd838e94 (100 bytes).
  Loads 4 bytes at a1 +0x20 (`lw` at 0xd838e34).
  Loads 4 bytes at abs 0xd846568 (`lw` at 0xd838e58).
  Loads 4 bytes at a1 +0x24 (`lw` at 0xd838e68).
  Calls `__glXOverrideVisualGetVisualInfo` via got with a0=a0 at entry (arg0), a1=0x3, a2=sp-64, a3=sp-24, a5=[a1+32], a6=a1 at entry (arg1) (`jalr` at 0xd838e70).
  At `beq` at 0xd838e4c (target 0xd838e88), taken when a5(=[a1+32]) == 0 and falls through when a5(=[a1+32]) != 0.
  Returns v0 = ret(__glXOverrideVisualGetVisualInfo), f0 = ret(__glXOverrideVisualGetVisualInfo) (`jr` at 0xd838e80).
  Returns v0 = 0x0 (`jr` at 0xd838e8c).

- `glXChooseFBConfig` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8395e0 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8395e0-0xd83b03c (6748 bytes).
  2 8-byte ldc1 loads at abs 0xd846ce8, including `ldc1` at 0xd839708, `ldc1` at 0xd839710.
  Loads 4 bytes at a2 (`lw` at 0xd83975c).
  2 8-byte ldc1 loads at abs 0xd846cf0, including `ldc1` at 0xd83979c, `ldc1` at 0xd83a4b8.
  91 4-byte lw loads at ?, including `lw` at 0xd8397ac, `lw` at 0xd8397cc, `lw` at 0xd8397d8.
  Loads 4 bytes at abs 0xd846588 (`lw` at 0xd8399b8).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd8399e0).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd8399f0).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd8399fc).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd839a00).
  3 4-byte lw loads at abs 0xd846304, including `lw` at 0xd839a68, `lw` at 0xd83a358, `lw` at 0xd83a460.
  12 4-byte sw stores at a3, including `sw` at 0xd839aa8, `sw` at 0xd839c80, `sw` at 0xd839c84.
  2 4-byte sw stores at ret(malloc), including `sw` at 0xd839ea4, `sw` at 0xd83a7a0.
  5 1-byte lbu loads at ?, including `lbu` at 0xd83a15c, `lbu` at 0xd83a208, `lbu` at 0xd83a8d4.
  2 4-byte lw loads at abs 0xd84617c, including `lw` at 0xd83a4b0, `lw` at 0xd83a61c.
  14 4-byte sw stores at ?, including `sw` at 0xd83a670, `sw` at 0xd83a684, `sw` at 0xd83a69c.
  5 4-byte lw loads at abs 0xd846300, including `lw` at 0xd83a6ac, `lw` at 0xd83a7a4, `lw` at 0xd83a9b0.
  8 8-byte ldc1 loads at ?, including `ldc1` at 0xd83ada0, `ldc1` at 0xd83adc8, `ldc1` at 0xd83af24.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=a3 at entry (arg3) (`jalr` at 0xd8399c4).
  Calls `malloc` via got with a0=0x4, a1=unknown, a2=unknown, a3=unknown, a4=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12], a5=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a6=ret(__glXInitialize), a7=(a1 << 0x5) (`jalr` at 0xd839cac).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=unknown, a2=unknown, a3=unknown, a4=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12], a5=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a6=ret(__glXInitialize), a7=(a1 << 0x5) (`jalr` at 0xd83a360).
  Calls `malloc` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd83a470).
  Calls `(unknown callee) [0xd83906c]` via direct with a0=unknown, a1=unknown, a2=0x0, a3=unknown (`bgezall` at 0xd83a75c).
  Calls `free` via got with a0=ret(malloc), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd83a7a8).
  Calls `free` via got with a0=ret(malloc), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd83a9b4).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd83aa30).
  Calls `free` via got with a0=ret(malloc), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd83aa54).
  Calls `(unknown callee) [0xd83906c]` via direct with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xd83ae78).
  At `beq` at 0xd839754 (target 0xd83992c), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0xd839760 (target 0xd83a260), taken when a2(=[a2]) == 0 and falls through when a2(=[a2]) != 0.
  At `beq` at 0xd8397a4 (target 0xd8397d8), the branch is always taken.
  At `beq` at 0xd8397d0 (target 0xd839ae4), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0xd8397e0 (target 0xd839830), taken when a6(?) < 0x27 (signed) and falls through when a6(?) >= 0x27 (signed).
  At `bne` at 0xd8397ec (target 0xd8397ac), taken when a6(?) < 0x28 (signed) and falls through when a6(?) >= 0x28 (signed).
  At `bne` at 0xd8397f4 (target 0xd8398a4), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xd8397fc (target 0xd839af0), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0xd839828 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839834 (target 0xd83986c), taken when a6(?) < 0xd (signed) and falls through when a6(?) >= 0xd (signed).
  At `beq` at 0xd839840 (target 0xd8398ec), taken when a6(?) >= 0xe (signed) and falls through when a6(?) < 0xe (signed).
  At `beq` at 0xd839864 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83986c (target 0xd839aac), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0xd839878 (target 0xd839bf0), taken when a6(?) >= 0x9 (signed) and falls through when a6(?) < 0x9 (signed).
  At `beq` at 0xd83989c (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd8398ac (target 0xd839b90), taken when a6(?) < at(=0x8013) (signed) and falls through when a6(?) >= at(=0x8013) (signed).
  At `bne` at 0xd8398bc (target 0xd839d54), taken when v0(=0x8013) < a6(?) (signed) and falls through when v0(=0x8013) >= a6(?) (signed).
  At `beq` at 0xd8398e4 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd8398ec (target 0xd839bbc), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd8398f8 (target 0xd839d80), taken when a6(?) >= 0x23 (signed) and falls through when a6(?) < 0x23 (signed).
  At `beq` at 0xd839924 (target 0xd8397cc), the branch is always taken.
  At `beq` at 0xd839968 (target 0xd839b34), taken when a7(?) == v0(=0x8000) and falls through when a7(?) != v0(=0x8000).
  At `beq` at 0xd839974 (target 0xd839b34), taken when a7(?) == a2(=-0x1) and falls through when a7(?) != a2(=-0x1).
  At `beq` at 0xd8399d0 (target 0xd839cd8), taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  At `bltz` at 0xd8399d8 (target 0xd839c54), taken when a0(=a1) < 0 (signed) and falls through when a0(=a1) >= 0 (signed).
  At `beq` at 0xd8399e8 (target 0xd839c54), taken when a0(=a1) >= a3(=[a0+136]) (signed) and falls through when a0(=a1) < a3(=[a0+136]) (signed).
  At `beq` at 0xd839a08 (target 0xd839e50), taken when a4(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0 and falls through when a4(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0.
  At `beq` at 0xd839a14 (target 0xd839e50), taken when t0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) == 0 and falls through when t0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) != 0.
  At `beq` at 0xd839a1c (target 0xd83a354), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `blez` at 0xd839a28 (target 0xd839a74), taken when t2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed) -> outside and falls through when t2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  At `beq` at 0xd839a64 (target 0xd839cac), taken when t8(?) == s2(?) and falls through when t8(?) != s2(?).
  At `bne` at 0xd839a70 (target 0xd839a60), taken when s0(?) != s1(?) and falls through when s0(?) == s1(?).
  At `bne` at 0xd839aac (target 0xd839c28), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd839ab4 (target 0xd839eb4), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd839ac0 (target 0xd83a588), taken when v0(?) == t3(=-0x1) and falls through when v0(?) != t3(=-0x1).
  At `beq` at 0xd839adc (target 0xd8397cc), the branch is always taken.
  At `beq` at 0xd839ae8 (target 0xd83995c), the branch is always taken.
  At `bne` at 0xd839af4 (target 0xd839d08), taken when a6(?) < at(=0x802e) (signed) and falls through when a6(?) >= at(=0x802e) (signed).
  At `bne` at 0xd839b00 (target 0xd839f10), taken when v0(=0x802e) < a6(?) (signed) and falls through when v0(=0x802e) >= a6(?) (signed).
  At `beq` at 0xd839b2c (target 0xd8397cc), the branch is always taken.
  At `beq` at 0xd839b88 (target 0xd83997c), the branch is always taken.
  At `bne` at 0xd839b94 (target 0xd839dc4), taken when a6(?) < a5(=0x8010) (signed) and falls through when a6(?) >= a5(=0x8010) (signed).
  At `bne` at 0xd839ba0 (target 0xd839fc0), taken when at(=0x8010) < a6(?) (signed) and falls through when at(=0x8010) >= a6(?) (signed).
  At `beq` at 0xd839bb4 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839bbc (target 0xd839df0), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0xd839bc8 (target 0xd83a04c), taken when a6(?) >= 0x11 (signed) and falls through when a6(?) < 0x11 (signed).
  At `beq` at 0xd839be8 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839bf0 (target 0xd839e20), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0xd839bfc (target 0xd83a098), taken when a6(?) >= 0xc (signed) and falls through when a6(?) < 0xc (signed).
  At `beq` at 0xd839c20 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839c2c (target 0xd839ee4), taken when a6(?) < 0x3 (signed) and falls through when a6(?) >= 0x3 (signed).
  At `beq` at 0xd839c34 (target 0xd839c84), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xd839c4c (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839cbc (target 0xd839e80), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beq` at 0xd839cd0 (target 0xd839c8c), the branch is always taken.
  At `bne` at 0xd839d10 (target 0xd839f54), taken when a6(?) < a4(=0x802c) (signed) and falls through when a6(?) >= a4(=0x802c) (signed).
  At `bne` at 0xd839d20 (target 0xd83a1c8), taken when a5(=0x802c) < a6(?) (signed) and falls through when a5(=0x802c) >= a6(?) (signed).
  At `beq` at 0xd839d4c (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839d58 (target 0xd839f98), taken when a6(?) < at(=0x8018) (signed) and falls through when a6(?) >= at(=0x8018) (signed).
  At `bne` at 0xd839d68 (target 0xd83a1f8), taken when v0(=0x8018) < a6(?) (signed) and falls through when v0(=0x8018) >= a6(?) (signed).
  At `beq` at 0xd839d78 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839d80 (target 0xd83a008), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0xd839d88 (target 0xd83a228), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xd839dbc (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839dcc (target 0xd83a0c0), taken when a6(?) < a5(=0x800b) (signed) and falls through when a6(?) >= a5(=0x800b) (signed).
  At `bne` at 0xd839dd8 (target 0xd839c84), taken when at(=0x800b) < a6(?) (signed) and falls through when at(=0x800b) >= a6(?) (signed).
  At `beq` at 0xd839de8 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839df0 (target 0xd83a0fc), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0xd839df8 (target 0xd839c84), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xd839e18 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839e20 (target 0xd83a124), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0xd839e28 (target 0xd839c84), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xd839e48 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839eb4 (target 0xd83a14c), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0xd839ebc (target 0xd839c84), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xd839edc (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839ee8 (target 0xd839c84), taken when a6(?) != a4(=0x2) and falls through when a6(?) == a4(=0x2).
  At `beq` at 0xd839f08 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839f18 (target 0xd83a180), taken when a6(?) < v0(=0x186a0) (signed) and falls through when a6(?) >= v0(=0x186a0) (signed).
  At `bne` at 0xd839f28 (target 0xd83a590), taken when v1(=0x186a0) < a6(?) (signed) and falls through when v1(=0x186a0) >= a6(?) (signed).
  At `beq` at 0xd839f4c (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839f58 (target 0xd83a29c), taken when a6(?) < v0(=0x802b) (signed) and falls through when a6(?) >= v0(=0x802b) (signed).
  At `bne` at 0xd839f64 (target 0xd839c84), taken when v1(=0x802b) < a6(?) (signed) and falls through when v1(=0x802b) >= a6(?) (signed).
  At `beq` at 0xd839f90 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839f9c (target 0xd83a2d4), taken when a6(?) < at(=0x8017) (signed) and falls through when a6(?) >= at(=0x8017) (signed).
  At `bne` at 0xd839fa8 (target 0xd839c84), taken when v0(=0x8017) < a6(?) (signed) and falls through when v0(=0x8017) >= a6(?) (signed).
  At `beq` at 0xd839fb8 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd839fc4 (target 0xd83a2f0), taken when a6(?) < a4(=0x8012) (signed) and falls through when a6(?) >= a4(=0x8012) (signed).
  At `bne` at 0xd839fd4 (target 0xd839c84), taken when a5(=0x8012) < a6(?) (signed) and falls through when a5(=0x8012) >= a6(?) (signed).
  At `beq` at 0xd83a000 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a00c (target 0xd83a310), taken when a6(?) < 0x24 (signed) and falls through when a6(?) >= 0x24 (signed).
  At `beq` at 0xd83a014 (target 0xd839c84), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xd83a044 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a050 (target 0xd83a32c), taken when a6(?) < 0x20 (signed) and falls through when a6(?) >= 0x20 (signed).
  At `beq` at 0xd83a05c (target 0xd839c84), taken when a6(?) >= 0x21 (signed) and falls through when a6(?) < 0x21 (signed).
  At `beq` at 0xd83a090 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a098 (target 0xd839c84), taken when a6(?) != a5(=0xc) and falls through when a6(?) == a5(=0xc).
  At `beq` at 0xd83a0b8 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a0c4 (target 0xd839c84), taken when a6(?) != a5(=0x28) and falls through when a6(?) == a5(=0x28).
  At `beq` at 0xd83a0f4 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a0fc (target 0xd839c84), taken when a6(?) != at(=0xe) and falls through when a6(?) == at(=0xe).
  At `beq` at 0xd83a11c (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a124 (target 0xd839c84), taken when a6(?) != at(=0x9) and falls through when a6(?) == at(=0x9).
  At `beq` at 0xd83a144 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a14c (target 0xd839c84), taken when a6(?) != at(=0x6) and falls through when a6(?) == at(=0x6).
  At `beq` at 0xd83a178 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a188 (target 0xd83a5c0), taken when a6(?) < at(=0x8030) (signed) and falls through when a6(?) >= at(=0x8030) (signed).
  At `bne` at 0xd83a194 (target 0xd839c84), taken when v0(=0x8030) < a6(?) (signed) and falls through when v0(=0x8030) >= a6(?) (signed).
  At `beq` at 0xd83a1c0 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a1c8 (target 0xd839c84), taken when a6(?) != a5(=0x802d) and falls through when a6(?) == a5(=0x802d).
  At `beq` at 0xd83a1f0 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a1fc (target 0xd839c84), taken when a6(?) != at(=0x8028) and falls through when a6(?) == at(=0x8028).
  At `beq` at 0xd83a220 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a228 (target 0xd839c84), taken when a6(?) != at(=0x26) and falls through when a6(?) == at(=0x26).
  At `beq` at 0xd83a258 (target 0xd8397cc), the branch is always taken.
  At `beq` at 0xd83a294 (target 0xd83995c), the branch is always taken.
  At `bne` at 0xd83a2a0 (target 0xd839c84), taken when a6(?) != v0(=0x802a) and falls through when a6(?) == v0(=0x802a).
  At `beq` at 0xd83a2cc (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a2d8 (target 0xd839c84), taken when a6(?) != a5(=0x8016) and falls through when a6(?) == a5(=0x8016).
  At `beq` at 0xd83a2e8 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a2f0 (target 0xd839c84), taken when a6(?) != at(=0x8011) and falls through when a6(?) == at(=0x8011).
  At `beq` at 0xd83a308 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a310 (target 0xd839c84), taken when a6(?) != a4(=0x23) and falls through when a6(?) == a4(=0x23).
  At `beq` at 0xd83a324 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a32c (target 0xd839c84), taken when a6(?) != a5(=0x11) and falls through when a6(?) == a5(=0x11).
  At `beq` at 0xd83a34c (target 0xd8397cc), the branch is always taken.
  At `beq` at 0xd83a36c (target 0xd83aa14), taken when v0(=ret(malloc)) == 0 and falls through when v0(=ret(malloc)) != 0.
  At `blez` at 0xd83a378 (target 0xd83aa24), taken when a1(?) <= 0 (signed) and falls through when a1(?) > 0 (signed).
  At `beq` at 0xd83a3b0 (target 0xd83a3d8), taken when (t8(?) & 0x3) == 0 and falls through when (t8(?) & 0x3) != 0.
  At `bne` at 0xd83a3d0 (target 0xd83a3b8), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0xd83a3dc (target 0xd83a454), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0xd83a428 (target 0xd83a3f8), taken when a0(?) != s1(?) and falls through when a0(?) == s1(?).
  At `beq` at 0xd83a484 (target 0xd83aa4c), taken when v0(=ret(malloc)) == 0 and falls through when v0(=ret(malloc)) != 0.
  At `beq` at 0xd83a48c (target 0xd83a5f8), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `beq` at 0xd83a494 (target 0xd83a5f8), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `blez` at 0xd83a4a0 (target 0xd83a99c), taken when a5(?) <= 0 (signed) and falls through when a5(?) > 0 (signed).
  At `beq` at 0xd83a580 (target 0xd83a858), the branch is always taken.
  At `beq` at 0xd83a588 (target 0xd839ad8), the branch is always taken.
  At `bne` at 0xd83a598 (target 0xd839c84), taken when a6(?) != at(=0x186a1) and falls through when a6(?) == at(=0x186a1).
  At `beq` at 0xd83a5b8 (target 0xd8397cc), the branch is always taken.
  At `bne` at 0xd83a5c4 (target 0xd839c84), taken when a6(?) != at(=0x802f) and falls through when a6(?) == at(=0x802f).
  At `beq` at 0xd83a5f0 (target 0xd8397cc), the branch is always taken.
  At `blez` at 0xd83a608 (target 0xd83a7a4), taken when a5(?) <= 0 (signed) and falls through when a5(?) > 0 (signed).
  At `beq` at 0xd83a640 (target 0xd83a6b0), the branch is always taken.
  At `blez` at 0xd83a64c (target 0xd83a6a4), taken when t9(?) <= 0 (signed) and falls through when t9(?) > 0 (signed).
  At `beq` at 0xd83a674 (target 0xd83a6a0), taken when a1(?) == a6(?) and falls through when a1(?) != a6(?).
  At `beq` at 0xd83a688 (target 0xd83a6a0), taken when a1(?) == a6(?) and falls through when a1(?) != a6(?).
  At `bne` at 0xd83a698 (target 0xd83a664), taken when a1(?) != a6(?) and falls through when a1(?) == a6(?).
  At `beq` at 0xd83a6a8 (target 0xd83a7a8), taken when s2(?) == t2(?) and falls through when s2(?) != t2(?).
  At `blez` at 0xd83a6b4 (target 0xd83a6a0), taken when t3(?) <= 0 (signed) and falls through when t3(?) > 0 (signed).
  At `beq` at 0xd83a6c4 (target 0xd83b030), the branch is always taken.
  At `beq` at 0xd83a6e8 (target 0xd83a6fc), taken when a1(?) == a2(?) and falls through when a1(?) != a2(?).
  At `bne` at 0xd83a6f4 (target 0xd83a6dc), taken when a1(?) != a2(?) and falls through when a1(?) == a2(?).
  At `beq` at 0xd83a704 (target 0xd83a648), taken when s0(?) == s1(?) and falls through when s0(?) != s1(?).
  At `bne` at 0xd83a710 (target 0xd83a700), taken when a5(?) != s2(?) and falls through when a5(?) == s2(?).
  At `beq` at 0xd83a730 (target 0xd83a79c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xd83a774 (target 0xd83a740), taken when s3(?) != s4(?) and falls through when s3(?) == s4(?).
  At `bne` at 0xd83a78c (target 0xd83a6d0), taken when s3(?) < ra(?) (signed) and falls through when s3(?) >= ra(?) (signed).
  At `beq` at 0xd83a794 (target 0xd83a700), the branch is always taken.
  At `beq` at 0xd83a79c (target 0xd83a700), the branch is always taken.
  At `beq` at 0xd83a7d0 (target 0xd839c8c), the branch is always taken.
  At `blez` at 0xd83a7d8 (target 0xd83a84c), taken when a5(?) <= 0 (signed) and falls through when a5(?) > 0 (signed).
  At `beq` at 0xd83a800 (target 0xd83a84c), taken when a1(?) == a6(?) and falls through when a1(?) != a6(?).
  At `beq` at 0xd83a818 (target 0xd83a84c), taken when a1(?) == a6(?) and falls through when a1(?) != a6(?).
  At `beq` at 0xd83a830 (target 0xd83a84c), taken when a1(?) == a6(?) and falls through when a1(?) != a6(?).
  At `bne` at 0xd83a844 (target 0xd83a7ec), taken when a1(?) != a6(?) and falls through when a1(?) == a6(?).
  At `beq` at 0xd83a854 (target 0xd83a9b0), taken when s2(?) == v0(?) and falls through when s2(?) != v0(?).
  At `blez` at 0xd83a85c (target 0xd83a84c), taken when v1(?) <= 0 (signed) and falls through when v1(?) > 0 (signed).
  At `beq` at 0xd83a86c (target 0xd83a894), the branch is always taken.
  At `beq` at 0xd83a880 (target 0xd83a8c0), taken when a1(=one of 0x0, 0x1) == 0 and falls through when a1(=one of 0x0, 0x1) != 0.
  At `beq` at 0xd83a88c (target 0xd83a7d8), taken when s0(?) == s1(?) and falls through when s0(?) != s1(?).
  At `bne` at 0xd83a898 (target 0xd83a888), taken when a1(?) != s2(?) and falls through when a1(?) == s2(?).
  At `beq` at 0xd83a8a0 (target 0xd83a880), taken when s3(?) == s4(=-0x1) and falls through when s3(?) != s4(=-0x1).
  At `beq` at 0xd83a8b0 (target 0xd83a880), taken when a4(?) >= s3(?) (signed) and falls through when a4(?) < s3(?) (signed).
  At `beq` at 0xd83a8b8 (target 0xd83a880), the branch is always taken.
  At `bne` at 0xd83a8c4 (target 0xd83a888), taken when a5(?) != a2(?) and falls through when a5(?) == a2(?).
  At `beq` at 0xd83a8cc (target 0xd83a8e4), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0xd83a8d8 (target 0xd83a8e4), taken when a6(?) == a7(?) and falls through when a6(?) != a7(?).
  At `bne` at 0xd83a8e4 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83a8ec (target 0xd83a908), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0xd83a8fc (target 0xd83a908), taken when t9(?) == ra(?) and falls through when t9(?) != ra(?).
  At `bne` at 0xd83a908 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83a910 (target 0xd83a930), taken when at(?) == s4(=-0x1) and falls through when at(?) != s4(=-0x1).
  At `beq` at 0xd83a924 (target 0xd83a930), taken when v0(?) >= v1(?) (signed) and falls through when v0(?) < v1(?) (signed).
  At `bne` at 0xd83a930 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83a938 (target 0xd83a958), taken when a0(?) == s4(=-0x1) and falls through when a0(?) != s4(=-0x1).
  At `beq` at 0xd83a94c (target 0xd83a958), taken when a1(?) >= a4(?) (signed) and falls through when a1(?) < a4(?) (signed).
  At `bne` at 0xd83a958 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83a960 (target 0xd83a97c), taken when a5(?) == s4(=-0x1) and falls through when a5(?) != s4(=-0x1).
  At `bne` at 0xd83a974 (target 0xd83a888), taken when a6(?) < t0(?) (signed) and falls through when a6(?) >= t0(?) (signed).
  At `beq` at 0xd83a97c (target 0xd83a9e4), taken when t9(?) == s4(=-0x1) and falls through when t9(?) != s4(=-0x1).
  At `beq` at 0xd83a98c (target 0xd83a9e8), taken when ra(?) >= at(?) (signed) and falls through when ra(?) < at(?) (signed).
  At `beq` at 0xd83a994 (target 0xd83a9e8), the branch is always taken.
  At `blez` at 0xd83a9cc (target 0xd83aa2c), taken when s5(?) <= 0 (signed) and falls through when s5(?) > 0 (signed).
  At `beq` at 0xd83a9dc (target 0xd839c8c), the branch is always taken.
  At `bne` at 0xd83a9e8 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83a9f0 (target 0xd83aa70), taken when v1(?) == s4(=-0x1) and falls through when v1(?) != s4(=-0x1).
  At `beq` at 0xd83aa04 (target 0xd83aa70), taken when a0(?) >= a1(?) (signed) and falls through when a0(?) < a1(?) (signed).
  At `beq` at 0xd83aa0c (target 0xd83aa70), the branch is always taken.
  At `beq` at 0xd83aa1c (target 0xd839c8c), the branch is always taken.
  At `beq` at 0xd83aa24 (target 0xd83a45c), the branch is always taken.
  At `beq` at 0xd83aa44 (target 0xd839c8c), the branch is always taken.
  At `beq` at 0xd83aa68 (target 0xd839c8c), the branch is always taken.
  At `bne` at 0xd83aa70 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83aa78 (target 0xd83aa98), taken when a5(?) == s4(=-0x1) and falls through when a5(?) != s4(=-0x1).
  At `beq` at 0xd83aa8c (target 0xd83aa98), taken when a6(?) >= t0(?) (signed) and falls through when a6(?) < t0(?) (signed).
  At `bne` at 0xd83aa98 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83aaa0 (target 0xd83aac0), taken when t9(?) == s4(=-0x1) and falls through when t9(?) != s4(=-0x1).
  At `beq` at 0xd83aab0 (target 0xd83aac4), taken when ra(?) >= at(?) (signed) and falls through when ra(?) < at(?) (signed).
  At `beq` at 0xd83aab8 (target 0xd83aac4), the branch is always taken.
  At `bne` at 0xd83aac4 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83aacc (target 0xd83aaec), taken when v0(?) == s4(=-0x1) and falls through when v0(?) != s4(=-0x1).
  At `beq` at 0xd83aae0 (target 0xd83aaec), taken when v1(?) >= a0(?) (signed) and falls through when v1(?) < a0(?) (signed).
  At `bne` at 0xd83aaec (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83aaf4 (target 0xd83ab14), taken when a1(?) == s4(=-0x1) and falls through when a1(?) != s4(=-0x1).
  At `beq` at 0xd83ab04 (target 0xd83ab18), taken when a4(?) >= a5(?) (signed) and falls through when a4(?) < a5(?) (signed).
  At `beq` at 0xd83ab0c (target 0xd83ab18), the branch is always taken.
  At `bne` at 0xd83ab18 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83ab20 (target 0xd83ab40), taken when a6(?) == s4(=-0x1) and falls through when a6(?) != s4(=-0x1).
  At `beq` at 0xd83ab30 (target 0xd83ab44), taken when t0(?) >= t9(?) (signed) and falls through when t0(?) < t9(?) (signed).
  At `beq` at 0xd83ab38 (target 0xd83ab44), the branch is always taken.
  At `bne` at 0xd83ab44 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83ab4c (target 0xd83ab6c), taken when ra(?) == s4(=-0x1) and falls through when ra(?) != s4(=-0x1).
  At `beq` at 0xd83ab5c (target 0xd83ab70), taken when at(?) >= v0(?) (signed) and falls through when at(?) < v0(?) (signed).
  At `beq` at 0xd83ab64 (target 0xd83ab70), the branch is always taken.
  At `bne` at 0xd83ab70 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83ab78 (target 0xd83ab94), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd83ab84 (target 0xd83ab98), taken when a0(?) == a1(?) and falls through when a0(?) != a1(?).
  At `beq` at 0xd83ab8c (target 0xd83ab98), the branch is always taken.
  At `bne` at 0xd83ab98 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83aba0 (target 0xd83abbc), taken when a4(?) == s4(=-0x1) and falls through when a4(?) != s4(=-0x1).
  At `beq` at 0xd83abac (target 0xd83abc0), taken when a5(?) == a6(?) and falls through when a5(?) != a6(?).
  At `beq` at 0xd83abb4 (target 0xd83abc0), the branch is always taken.
  At `bne` at 0xd83abc0 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83abc8 (target 0xd83abe4), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0xd83abd4 (target 0xd83abe8), taken when t9(?) == ra(?) and falls through when t9(?) != ra(?).
  At `beq` at 0xd83abdc (target 0xd83abe8), the branch is always taken.
  At `bne` at 0xd83abe8 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83abf0 (target 0xd83ac0c), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd83abfc (target 0xd83ac10), taken when v0(?) == v1(?) and falls through when v0(?) != v1(?).
  At `beq` at 0xd83ac04 (target 0xd83ac10), the branch is always taken.
  At `bne` at 0xd83ac10 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83ac18 (target 0xd83ac34), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xd83ac28 (target 0xd83ac34), taken when a1(?) == a4(?) and falls through when a1(?) != a4(?).
  At `bne` at 0xd83ac34 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83ac3c (target 0xd83ac58), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xd83ac48 (target 0xd83ac5c), taken when a6(?) == t0(?) and falls through when a6(?) != t0(?).
  At `beq` at 0xd83ac50 (target 0xd83ac5c), the branch is always taken.
  At `bne` at 0xd83ac5c (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83ac64 (target 0xd83ac80), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `beq` at 0xd83ac70 (target 0xd83ac84), taken when ra(?) == at(?) and falls through when ra(?) != at(?).
  At `beq` at 0xd83ac78 (target 0xd83ac84), the branch is always taken.
  At `bne` at 0xd83ac84 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83ac8c (target 0xd83aca8), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xd83ac9c (target 0xd83aca8), taken when v1(?) == a0(?) and falls through when v1(?) != a0(?).
  At `bne` at 0xd83aca8 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83acb0 (target 0xd83acd0), taken when a1(?) == s4(=-0x1) and falls through when a1(?) != s4(=-0x1).
  At `beq` at 0xd83acc0 (target 0xd83acd4), taken when a4(?) == a5(?) and falls through when a4(?) != a5(?).
  At `beq` at 0xd83acc8 (target 0xd83acd4), the branch is always taken.
  At `bne` at 0xd83acd4 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83acdc (target 0xd83acfc), taken when a6(?) == s4(=-0x1) and falls through when a6(?) != s4(=-0x1).
  At `beq` at 0xd83acec (target 0xd83ad00), taken when t0(?) == t9(?) and falls through when t0(?) != t9(?).
  At `beq` at 0xd83acf4 (target 0xd83ad00), the branch is always taken.
  At `bne` at 0xd83ad00 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83ad08 (target 0xd83ad1c), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0xd83ad14 (target 0xd83ad70), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd83ad1c (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83ad24 (target 0xd83ad44), taken when s4(=-0x1) == v0(?) and falls through when s4(=-0x1) != v0(?).
  At `beq` at 0xd83ad34 (target 0xd83ad48), taken when v1(?) >= a0(?) (unsigned) and falls through when v1(?) < a0(?) (unsigned).
  At `beq` at 0xd83ad3c (target 0xd83ad48), the branch is always taken.
  At `bne` at 0xd83ad48 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83ad50 (target 0xd83ad78), taken when s4(=-0x1) == a1(?) and falls through when s4(=-0x1) != a1(?).
  At `beq` at 0xd83ad60 (target 0xd83ad7c), taken when a4(?) >= a5(?) (unsigned) and falls through when a4(?) < a5(?) (unsigned).
  At `beq` at 0xd83ad68 (target 0xd83ad7c), the branch is always taken.
  At `beq` at 0xd83ad70 (target 0xd83ad1c), the branch is always taken.
  At `bne` at 0xd83ad7c (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83ad84 (target 0xd83ae08), taken when s4(=-0x1) == a6(?) and falls through when s4(=-0x1) != a6(?).
  At `bne` at 0xd83ad90 (target 0xd83a888), taken when t0(?) != t9(?) and falls through when t0(?) == t9(?).
  At `beq` at 0xd83ad98 (target 0xd83adb8), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `bc1f` at 0xd83adac (target 0xd83adb8), taken when not (f12 < f13 (c.lt.d at 0xd83ada8)) and falls through when f12 < f13 (c.lt.d at 0xd83ada8).
  At `bne` at 0xd83adb8 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83adc0 (target 0xd83af10), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bc1f` at 0xd83add0 (target 0xd83af14), taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  At `beq` at 0xd83add8 (target 0xd83af14), the branch is always taken.
  At `bne` at 0xd83ae00 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83ae20 (target 0xd83af48), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0xd83aebc (target 0xd83ae40), taken when a6(?) != a4(?) and falls through when a6(?) == a4(?).
  At `beq` at 0xd83aecc (target 0xd83af40), taken when a6(?) >= ra(?) (signed) and falls through when a6(?) < ra(?) (signed).
  At `beq` at 0xd83aef0 (target 0xd83af08), taken when a1(?) == ra(?) and falls through when a1(?) != ra(?).
  At `bne` at 0xd83af00 (target 0xd83aee8), taken when a1(?) != ra(?) and falls through when a1(?) == ra(?).
  At `beq` at 0xd83af08 (target 0xd83a888), the branch is always taken.
  At `bne` at 0xd83af14 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83af1c (target 0xd83af50), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bc1f` at 0xd83af30 (target 0xd83af50), taken when FP condition code 2 is false and falls through when FP condition code 2 is true.
  At `beq` at 0xd83af38 (target 0xd83af50), the branch is always taken.
  At `beq` at 0xd83af40 (target 0xd83af08), the branch is always taken.
  At `beq` at 0xd83af48 (target 0xd83af08), the branch is always taken.
  At `bne` at 0xd83af50 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83af58 (target 0xd83af78), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bc1f` at 0xd83af68 (target 0xd83af7c), taken when FP condition code 3 is false and falls through when FP condition code 3 is true.
  At `beq` at 0xd83af70 (target 0xd83af7c), the branch is always taken.
  At `bne` at 0xd83af7c (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83af84 (target 0xd83afa4), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bc1f` at 0xd83af98 (target 0xd83afa4), taken when FP condition code 4 is false and falls through when FP condition code 4 is true.
  At `bne` at 0xd83afa4 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83afac (target 0xd83afcc), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `bc1f` at 0xd83afbc (target 0xd83afd0), taken when FP condition code 5 is false and falls through when FP condition code 5 is true.
  At `beq` at 0xd83afc4 (target 0xd83afd0), the branch is always taken.
  At `bne` at 0xd83afd0 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83afd8 (target 0xd83aff8), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `bc1f` at 0xd83afec (target 0xd83aff8), taken when FP condition code 6 is false and falls through when FP condition code 6 is true.
  At `bne` at 0xd83aff8 (target 0xd83a888), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd83b00c (target 0xd83ade0), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `bc1f` at 0xd83b020 (target 0xd83ade4), taken when FP condition code 7 is false and falls through when FP condition code 7 is true.
  At `beq` at 0xd83b028 (target 0xd83ade4), the branch is always taken.
  At `beq` at 0xd83b034 (target 0xd83a710), the branch is always taken.
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd839aa4).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd839c7c).
  Returns v0 = ? (`jr` at 0xd839ca4).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd839d00).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd839e78).
  Returns v0 = ret(malloc), f0 = ret(malloc) (`jr` at 0xd839eac).
  The instructions from 0xd83a6cc to 0xd83a6cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd83a874 to 0xd83a87c are not reached by any path from the entry, and their branches are not listed.

- `glXGetFBConfigs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83b03c (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83b03c-0xd83b1bc (384 bytes).
  Loads 4 bytes at abs 0xd846588 (`lw` at 0xd83b054).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd83b07c).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd83b0a4).
  Loads 4 bytes at abs 0xd846304 (`lw` at 0xd83b0ac).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd83b0b4).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd83b0b8).
  9 4-byte sw stores at ?, including `sw` at 0xd83b120, `sw` at 0xd83b144, `sw` at 0xd83b14c.
  2 4-byte sw stores at a2, including `sw` at 0xd83b18c, `sw` at 0xd83b1b0.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83b064).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12], a2=(a1 << 0x5), a3=unknown, a6=ret(__glXInitialize) (`jalr` at 0xd83b0c4).
  At `beq` at 0xd83b06c (target 0xd83b198), taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  At `bltz` at 0xd83b074 (target 0xd83b08c), taken when s0(=a1) < 0 (signed) and falls through when s0(=a1) >= 0 (signed).
  At `bne` at 0xd83b084 (target 0xd83b0a4), taken when s0(=a1) < v0(=[a0+136]) (signed) and falls through when s0(=a1) >= v0(=[a0+136]) (signed).
  At `beq` at 0xd83b0dc (target 0xd83b1b0), taken when v0(=ret(malloc)) == 0 and falls through when v0(=ret(malloc)) != 0.
  At `blez` at 0xd83b0e8 (target 0xd83b188), taken when a7(?) <= 0 (signed) and falls through when a7(?) > 0 (signed).
  At `beq` at 0xd83b114 (target 0xd83b130), taken when (a7(?) & 0x7) == 0 and falls through when (a7(?) & 0x7) != 0.
  At `bne` at 0xd83b128 (target 0xd83b11c), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0xd83b134 (target 0xd83b184), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `bne` at 0xd83b17c (target 0xd83b13c), taken when a1(?) != a5(?) and falls through when a1(?) == a5(?).
  At `beq` at 0xd83b1b4 (target 0xd83b094), the branch is always taken.
  Returns v0 = 0x0 (`jr` at 0xd83b09c).
  Returns v0 = ret(malloc), f0 = ret(malloc) (`jr` at 0xd83b190).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd83b1a8).

- `glXCreateNewContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83b400 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83b400-0xd83b454 (84 bytes).
  Loads 4 bytes at abs 0xd846178 (`lw` at 0xd83b420).
  Calls `(unknown callee) [0xd83269c]` via register-constant with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=0x0, a7=0x0 (`jalr` at 0xd83b43c).
  Returns v0 = ret(0xd83269c), f0 = ret(0xd83269c) (`jr` at 0xd83b44c).

- `glXQueryContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83b7d8 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83b7d8-0xd83b8b4 (220 bytes).
  Loads 4 bytes at a1 +0xc4 (`lw` at 0xd83b7f8).
  Loads 4 bytes at a1 +0x20 (`lw` at 0xd83b84c).
  3 4-byte sw stores at a3, including `sw` at 0xd83b854, `sw` at 0xd83b85c, `sw` at 0xd83b8b0.
  Loads 4 bytes at a1 +0x30 (`lw` at 0xd83b858).
  Loads 4 bytes at a1 +0x2c (`lw` at 0xd83b86c).
  Loads 4 bytes at abs 0xd84617c (`lw` at 0xd83b874).
  Loads 4 bytes at a1 +0x34 (`lw` at 0xd83b8a8).
  Calls `(unknown callee) [0xd83b454]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a1+44] (`bgezall` at 0xd83b888).
  At `beq` at 0xd83b7f0 (target 0xd83b838), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0xd83b7fc (target 0xd83b86c), taken when v0(=[a1+196]) == 0 and falls through when v0(=[a1+196]) != 0.
  At `beq` at 0xd83b810 (target 0xd83b858), taken when s0(=a2) == v1(=0x8013) and falls through when s0(=a2) != v1(=0x8013).
  At `beq` at 0xd83b818 (target 0xd83b8a8), taken when s0(=a2) == a0(=0x8011) and falls through when s0(=a2) != a0(=0x8011).
  At `beq` at 0xd83b820 (target 0xd83b84c), taken when s0(=a2) == a2(=0x800c) and falls through when s0(=a2) != a2(=0x800c).
  At `beq` at 0xd83b850 (target 0xd83b860), the branch is always taken.
  At `bne` at 0xd83b870 (target 0xd83b800), taken when a6(=[a1+44]) != 0 -> outside and falls through when a6(=[a1+44]) == 0.
  At `beq` at 0xd83b898 (target 0xd83b800), taken when v0(=ret(0xd83b454)) == 0 -> outside and falls through when v0(=ret(0xd83b454)) != 0.
  At `beq` at 0xd83b8a0 (target 0xd83b82c), the branch is always taken.
  At `beq` at 0xd83b8ac (target 0xd83b860), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd83b830).
  Returns v0 = 0x5 (`jr` at 0xd83b844).
  Returns v0 = 0x0 (`jr` at 0xd83b864).

- `__glXGetReadDrawableSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83bd98 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83bd98-0xd83bea4 (268 bytes).
  Loads 4 bytes at a0 +0x4c (`lw` at 0xd83bda0).
  Loads 4 bytes at [a0+76] +0xe8 (`lw` at 0xd83bda4).
  Loads 4 bytes at [[a0+76]+232] +0x2c (`lw` at 0xd83bdb0).
  3 4-byte lw loads at abs 0xd8465b0, including `lw` at 0xd83bddc, `lw` at 0xd83be6c, `lw` at 0xd83be84.
  3 4-byte lw loads at [a0+76] +0xd8, including `lw` at 0xd83bde4, `lw` at 0xd83be80, `lw` at 0xd83be98.
  2 4-byte lw loads at abs 0xd846368, including `lw` at 0xd83bdec, `lw` at 0xd83be40.
  3 4-byte lw loads at [a0+76] +0xdc, including `lw` at 0xd83bdfc, `lw` at 0xd83be74, `lw` at 0xd83be8c.
  Stores 4 bytes from a3 at a1 (`sw` at 0xd83be28).
  Stores 4 bytes from a1 at a2 (`sw` at 0xd83be38).
  Loads 4 bytes at [[a0+76]+232] +0x24 (`lw` at 0xd83be50).
  Calls `XGetGeometry` via got with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=sp-80, a3=sp-76, a4=sp-72, a5=sp-68, a6=sp-64, a7=sp-60 (`jalr` at 0xd83be08).
  Calls `XGetGeometry` via got with a0=[[a0+76]+216], a1=[[[a0+76]+232]+36], a2=sp-56, a3=sp-52, a4=sp-48, a5=sp-68, a6=sp-64, a7=sp-44 (`jalr` at 0xd83be5c).
  Calls `glXQueryGLXPbufferSGIX` via got with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801d, a3=sp-68, a4=[[[a0+76]+232]+44] (`jalr` at 0xd83be7c).
  Calls `glXQueryGLXPbufferSGIX` via got with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801e, a3=sp-64 (`jalr` at 0xd83be94).
  At `beq` at 0xd83bdd0 (target 0xd83be6c), taken when a4(=[[[a0+76]+232]+44]) == at(=0x4) and falls through when a4(=[[[a0+76]+232]+44]) != at(=0x4).
  At `beq` at 0xd83bdd8 (target 0xd83be70), taken when a4(=[[[a0+76]+232]+44]) == v1(=0x5) and falls through when a4(=[[[a0+76]+232]+44]) != v1(=0x5).
  At `beq` at 0xd83bde0 (target 0xd83be3c), taken when a4(=[[[a0+76]+232]+44]) == a0(=0x6) and falls through when a4(=[[[a0+76]+232]+44]) != a0(=0x6).
  At `beq` at 0xd83be64 (target 0xd83be14), the branch is always taken.
  At `beq` at 0xd83be9c (target 0xd83be14), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd83be34).

- `__glx_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83fc6c (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83fc6c-0xd83fcd8 (108 bytes).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd83fc6c).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd83fc70).
  Loads 4 bytes at [[0x1014]+276] +0x4 (`lw` at 0xd83fc74).
  Stores 4 bytes from a0 at [[[0x1014]+276]+4] +0x4 (`sw` at 0xd83fc78).
  Stores 2 bytes from a2 at [[[0x1014]+276]+4] +0x2 (`sh` at 0xd83fc80).
  Stores 2 bytes from a4 at [[[0x1014]+276]+4] (`sh` at 0xd83fc88).
  Loads 4 bytes at [[0x1014]+276] +0x8 (`lw` at 0xd83fc8c).
  Stores 4 bytes from a1 at [[0x1014]+276] +0x4 (`sw` at 0xd83fcb0).
  Loads 4 bytes at abs 0xd846590 (`lw` at 0xd83fcc0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=0x81d, a3=[[0x1014]+276], a4=0x8 (`jalr` at 0xd83fcc8).
  At `bne` at 0xd83fcac (target 0xd83fcc0), taken when at(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when at(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned).
  At `beq` at 0xd83fcd0 (target 0xd83fcb4), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd83fcb8).

- `__glReadPixelSpans` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda0b9f0 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda0b9f0-0xda0bb98 (424 bytes).
  Loads 4 bytes at a1 +0xa8 (`lw` at 0xda0ba0c).
  Loads 4 bytes at a1 +0x160 (`lw` at 0xda0ba14).
  Loads 4 bytes at a0 +0x77f0 (`lw` at 0xda0ba38).
  Loads 4 bytes at a0 +0x12f4 (`lw` at 0xda0ba50).
  Loads 4 bytes at a1 +0xac (`lw` at 0xda0ba58).
  Loads 4 bytes at a1 +0x164 (`lw` at 0xda0ba5c).
  2 4-byte lw loads at ?, including `lw` at 0xda0bab0, `lw` at 0xda0bae4.
  2 4-byte lw loads at a1 +0x5c, including `lw` at 0xda0baf4, `lw` at 0xda0bafc.
  Loads 4 bytes at a1 +0xc0 (`lwc1` at 0xda0bb00).
  Loads 4 bytes at a1 +0x60 (`lw` at 0xda0bb04).
  Stores 4 bytes from v0 at a1 +0x5c (`sw` at 0xda0bb14).
  Stores 4 bytes from f21 at a1 +0xc0 (`swc1` at 0xda0bb1c).
  Stores 4 bytes from ra at a0 +0x77f0 (`sw` at 0xda0bb24).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown (`jalr` at 0xda0bac0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=[a1+92] (`jalr` at 0xda0baf0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown (`jalr` at 0xda0bb34).
  At `blez` at 0xda0ba6c (target 0xda0bb78), taken when at(=[a1+172]) <= 0 (signed) and falls through when at(=[a1+172]) > 0 (signed).
  At `beq` at 0xda0baa8 (target 0xda0bb28), the branch is always taken.
  At `bne` at 0xda0bad0 (target 0xda0bab0), taken when s1(?) != s5(=(([a1+352]-1 << 0x2) + a1)) and falls through when s1(?) == s5(=(([a1+352]-1 << 0x2) + a1)).
  At `beq` at 0xda0bb20 (target 0xda0bb5c), taken when at(?) == s7(?) and falls through when at(?) != s7(?).
  At `bgtz` at 0xda0bb4c (target 0xda0bab0), taken when a0(?) > 0 (signed) and falls through when a0(?) <= 0 (signed).
  At `beq` at 0xda0bb54 (target 0xda0badc), the branch is always taken.
  Returns v0 = ? (`jr` at 0xda0bb90).

- `__glim_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda47190 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda47190-0xda47230 (160 bytes).
  Loads 4 bytes at abs 0x1018 (`lw` at 0xda47194).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xda47198).
  2 4-byte lw loads at abs 0xdaf1ce8, including `lw` at 0xda471c4, `lw` at 0xda4721c.
  Loads 4 bytes at abs 0xdaf1798 (`lw` at 0xda471e0).
  Loads 4 bytes at [0x1010] +0x4fc (`lw` at 0xda471ec).
  2 4-byte lw loads at ?, including `lw` at 0xda471f4, `lw` at 0xda47204.
  Loads 4 bytes at abs 0xdaf4360 (`lw` at 0xda471fc).
  Calls `__glSetError [0xda34dc0]` via register-constant with a0=0x500, a1=0x8024, a2=[0x1010], a3=a3 at entry (arg3) (`jalr` at 0xda471c8).
  Calls `__glElementsPerGroup [0xda11c10]` via register-constant with a0=[[0x1010]+1276], a1=0x8024, a2=[0x1010], a3=a3 at entry (arg3) (`jalr` at 0xda471e8).
  Calls `memset` via got with a0=unknown, a1=0x0, a2=unknown, a3=unknown (`jalr` at 0xda4720c).
  Calls `__glSetError [0xda34dc0]` via register-constant with a0=0x502, a1=0x8024, a2=[0x1010], a3=a3 at entry (arg3) (`jalr` at 0xda47220).
  At `beq` at 0xda471b4 (target 0xda4721c), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  At `beq` at 0xda471bc (target 0xda471e0), taken when a0 == a1(=0x8024) and falls through when a0 != a1(=0x8024).
  At `beq` at 0xda47214 (target 0xda471d4), the branch is always taken.
  At `beq` at 0xda47228 (target 0xda471d4), the branch is always taken.
  Returns v0 = ? (`jr` at 0xda471d8).

- `__glResetArray` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda47770 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda47770-0xda47b3c (972 bytes).
  8 4-byte lw loads at abs 0xdaf1f08, including `lw` at 0xda478b0, `lw` at 0xda478c4, `lw` at 0xda478d8.
  2 4-byte lw loads at abs 0xdaf0640, including `lw` at 0xda478fc, `lw` at 0xda47b20.
  Loads 4 bytes at table(0xdaea098) (`lw` at 0xda47920).
  Calls `__glSetValue [0xda47730]` via direct with a0=unknown, a1=entry(0xdaea098), a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0xda478a8).
  Calls `__glSetValue [0xda47730]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0xda478bc).
  Calls `__glSetValue [0xda47730]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0xda478d0).
  Calls `__glSetValue [0xda47730]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0xda478e4).
  Calls `__glSetValue [0xda47730]` via direct with a0=unknown, a1=entry(0xdaea098), a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0xda47938).
  Calls `__glSetValue [0xda47730]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0xda4794c).
  Calls `__glSetValue [0xda47730]` via direct with a0=unknown, a1=entry(0xdaea098), a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0xda47968).
  Calls `__glSetValue [0xda47730]` via direct with a0=unknown, a1=entry(0xdaea098), a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0xda47984).
  At `beq` at 0xda477bc (target 0xda47a1c), taken when a5 == at(=0x1405) and falls through when a5 != at(=0x1405).
  At `beq` at 0xda477c8 (target 0xda47a9c), taken when a5 == v1(=0x1406) and falls through when a5 != v1(=0x1406).
  At `beq` at 0xda477d0 (target 0xda47a28), taken when a5(=0x1909) == a0 and falls through when a5(=0x1909) != a0.
  At `beq` at 0xda477d8 (target 0xda47aa8), taken when a0 == a4(=0x1906) and falls through when a0 != a4(=0x1906).
  At `beq` at 0xda477e0 (target 0xda47ab8), taken when a0 == a6(=0x190a) and falls through when a0 != a6(=0x190a).
  At `beq` at 0xda477e8 (target 0xda47ac8), taken when a0 == a7(=0x1907) and falls through when a0 != a7(=0x1907).
  At `beq` at 0xda477f0 (target 0xda47ad8), taken when a0 == t0(=0x1908) and falls through when a0 != t0(=0x1908).
  At `bne` at 0xda477fc (target 0xda479cc), taken when a1 < 0x1908 (unsigned) and falls through when a1 >= 0x1908 (unsigned).
  At `bne` at 0xda47804 (target 0xda47844), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `bne` at 0xda47814 (target 0xda47a34), taken when a1 < a4(=0x8000) (unsigned) and falls through when a1 >= a4(=0x8000) (unsigned).
  At `beq` at 0xda47828 (target 0xda47840), taken when a4(=0x8000) >= a1 (unsigned) and falls through when a4(=0x8000) < a1 (unsigned).
  At `bne` at 0xda47830 (target 0xda47b10), taken when t8(?) != 0 and falls through when t8(?) == 0.
  At `bne` at 0xda47838 (target 0xda47998), taken when t9(?) != 0 and falls through when t9(?) == 0.
  At `beq` at 0xda47844 (target 0xda47998), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0xda47878 (target 0xda47994), taken when a3 >= s6(=a4) (signed) and falls through when a3 < s6(=a4) (signed).
  At `beq` at 0xda47898 (target 0xda47b20), the branch is always taken.
  At `beq` at 0xda47910 (target 0xda47994), taken when s6(=a4) == s4(?) and falls through when s6(=a4) != s4(?).
  At `beq` at 0xda47918 (target 0xda478ec), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0xda47954 (target 0xda478f0), the branch is always taken.
  At `beq` at 0xda47970 (target 0xda478f0), the branch is always taken.
  At `beq` at 0xda4798c (target 0xda478f0), the branch is always taken.
  At `bne` at 0xda479d0 (target 0xda479f8), taken when a1 < 0x1905 (unsigned) and falls through when a1 >= 0x1905 (unsigned).
  At `beq` at 0xda479dc (target 0xda47a58), taken when a1 >= 0x1906 (unsigned) and falls through when a1 < 0x1906 (unsigned).
  At `beq` at 0xda479e8 (target 0xda47994), taken when (a0(?) & 0x4) == 0 and falls through when (a0(?) & 0x4) != 0.
  At `beq` at 0xda479f0 (target 0xda47854), the branch is always taken.
  At `bne` at 0xda479f8 (target 0xda47a7c), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0xda47a00 (target 0xda47998), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xda47a08 (target 0xda47998), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0xda47a14 (target 0xda47854), the branch is always taken.
  At `beq` at 0xda47a20 (target 0xda477cc), the branch is always taken.
  At `beq` at 0xda47a2c (target 0xda477f8), the branch is always taken.
  At `bne` at 0xda47a38 (target 0xda47ae8), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `beq` at 0xda47a40 (target 0xda47994), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `beq` at 0xda47a48 (target 0xda47998), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `beq` at 0xda47a50 (target 0xda47854), the branch is always taken.
  At `bne` at 0xda47a5c (target 0xda47af8), taken when t9(?) != 0 and falls through when t9(?) == 0.
  At `beq` at 0xda47a64 (target 0xda47994), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xda47a6c (target 0xda47994), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0xda47a74 (target 0xda47854), the branch is always taken.
  At `bne` at 0xda47a80 (target 0xda47998), taken when a1 != at(=0x1903) and falls through when a1 == at(=0x1903).
  At `beq` at 0xda47a8c (target 0xda47994), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xda47a94 (target 0xda47854), the branch is always taken.
  At `beq` at 0xda47aa0 (target 0xda477cc), the branch is always taken.
  At `beq` at 0xda47ab0 (target 0xda477f8), the branch is always taken.
  At `beq` at 0xda47ac0 (target 0xda477f8), the branch is always taken.
  At `beq` at 0xda47ad0 (target 0xda477f8), the branch is always taken.
  At `beq` at 0xda47ae0 (target 0xda477f8), the branch is always taken.
  At `bne` at 0xda47ae8 (target 0xda47998), taken when a5(=0x1909) != a1 and falls through when a5(=0x1909) == a1.
  At `beq` at 0xda47af0 (target 0xda47a8c), the branch is always taken.
  At `bne` at 0xda47af8 (target 0xda47998), taken when a1 != t1(=0x1906) and falls through when a1 == t1(=0x1906).
  At `beq` at 0xda47b00 (target 0xda47998), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `beq` at 0xda47b08 (target 0xda47850), the branch is always taken.
  At `bne` at 0xda47b10 (target 0xda47998), taken when a1 != t3(=0x80e0) and falls through when a1 == t3(=0x80e0).
  At `beq` at 0xda47b18 (target 0xda47a6c), the branch is always taken.
  At `beq` at 0xda47b34 (target 0xda47918), the branch is always taken.
  Returns v0 = ? (`jr` at 0xda479c4).

- `__glResetMinmax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda484f0 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda484f0-0xda4863c (332 bytes).
  Loads 4 bytes at a0 +0x55c (`lw` at 0xda484f8).
  Loads 4 bytes at abs 0xdaf4ba4 (`lwc1` at 0xda48554).
  10 4-byte swc1 stores at ?, including `swc1` at 0xda48564, `swc1` at 0xda48570, `swc1` at 0xda4857c.
  Loads 4 bytes at abs 0xdaf4ba8 (`lwc1` at 0xda485ac).
  At `beq` at 0xda4850c (target 0xda48610), taken when a3(=[a0+1372]) == v1(=0x1906) and falls through when a3(=[a0+1372]) != v1(=0x1906).
  At `beq` at 0xda48518 (target 0xda48610), taken when a3(=[a0+1372]) == v1(=0x1909) and falls through when a3(=[a0+1372]) != v1(=0x1909).
  At `beq` at 0xda48524 (target 0xda4861c), taken when a3(=[a0+1372]) == a0(=0x190a) and falls through when a3(=[a0+1372]) != a0(=0x190a).
  At `beq` at 0xda48530 (target 0xda48624), taken when a3(=[a0+1372]) == a1(=0x1907) and falls through when a3(=[a0+1372]) != a1(=0x1907).
  At `beq` at 0xda48538 (target 0xda4862c), taken when a3(=[a0+1372]) == a2(=0x1908) and falls through when a3(=[a0+1372]) != a2(=0x1908).
  At `blez` at 0xda48544 (target 0xda48634), taken when a4(?) <= 0 (signed) and falls through when a4(?) > 0 (signed).
  At `beq` at 0xda48568 (target 0xda4859c), taken when a0(?) == a3(?) and falls through when a0(?) != a3(?).
  At `beq` at 0xda48574 (target 0xda4859c), taken when a0(?) == a3(?) and falls through when a0(?) != a3(?).
  At `beq` at 0xda48580 (target 0xda4859c), taken when a0(?) == a3(?) and falls through when a0(?) != a3(?).
  At `beq` at 0xda4858c (target 0xda4859c), taken when a0(?) == a3(?) and falls through when a0(?) != a3(?).
  At `bne` at 0xda48594 (target 0xda48560), taken when a0(?) != a3(?) and falls through when a0(?) == a3(?).
  At `beq` at 0xda485b0 (target 0xda48608), taken when a4(?) >= a6(?) (signed) and falls through when a4(?) < a6(?) (signed).
  At `beq` at 0xda485c4 (target 0xda485e0), taken when (a5(?) & 0x3) == 0 and falls through when (a5(?) & 0x3) != 0.
  At `bne` at 0xda485d4 (target 0xda485cc), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xda485e0 (target 0xda48608), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0xda48600 (target 0xda485f0), taken when a0(?) != a3(?) and falls through when a0(?) == a3(?).
  At `beq` at 0xda48614 (target 0xda48550), the branch is always taken.
  At `beq` at 0xda4861c (target 0xda48550), the branch is always taken.
  At `beq` at 0xda48624 (target 0xda48550), the branch is always taken.
  At `beq` at 0xda4862c (target 0xda48550), the branch is always taken.
  At `beq` at 0xda48634 (target 0xda485a0), the branch is always taken.
  Returns v0 = 0xb00a0 (`jr` at 0xda48608).

- `__glim_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda48720 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda48720-0xda48790 (112 bytes).
  Loads 4 bytes at abs 0x1018 (`lw` at 0xda48724).
  Loads 4 bytes at abs 0xdaf1f20 (`lw` at 0xda4874c).
  2 4-byte lw loads at abs 0xdaf1ce8, including `lw` at 0xda48750, `lw` at 0xda4877c.
  Loads 4 bytes at abs 0x1010 (`lw` at 0xda48770).
  Calls `__glSetError [0xda34dc0]` via register-constant with a0=0x500, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda48754).
  Calls `__glResetMinmax [0xda484f0]` via direct with a0=[0x1010], a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xda4876c).
  Calls `__glSetError [0xda34dc0]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda48780).
  At `beq` at 0xda4873c (target 0xda4877c), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  At `beq` at 0xda48748 (target 0xda4876c), taken when a0 == a1(=0x802e) and falls through when a0 != a1(=0x802e).
  At `beq` at 0xda48774 (target 0xda48760), the branch is always taken.
  At `beq` at 0xda48788 (target 0xda48760), the branch is always taken.
  Returns v0 = ? (`jr` at 0xda48764).

- `__glReadSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6c180 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda6c180-0xda6c224 (164 bytes).
  Loads 4 bytes at a0 +0xac (`lw` at 0xda6c1d0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=a2 at entry (arg2), a3=unknown (`jalr` at 0xda6c1e0).
  At `bltz` at 0xda6c1b8 (target 0xda6c200), taken when s2(=a4-1) < 0 (signed) and falls through when s2(=a4-1) >= 0 (signed).
  At `bne` at 0xda6c1f0 (target 0xda6c1d0), taken when s2(?) != s5(=-0x1) and falls through when s2(?) == s5(=-0x1).
  Returns v0 = 0x0 (`jr` at 0xda6c21c).

- `__glReadTexImage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda7b0b0 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda7b0b0-0xda7b0e4 (52 bytes).
  Loads 4 bytes at a0 +0x3158 (`lw` at 0xda7b0c4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda7b0cc).
  Returns v0 = ret(?), f0 = ret(?) (`jr` at 0xda7b0dc).

- `DestroySoftContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda9ec10 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda9ec10-0xda9ec7c (108 bytes).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xda9ec1c).
  Loads 4 bytes at abs 0xdaf1af0 (`lw` at 0xda9ec2c).
  2 4-byte sw stores at abs 0x1010, including `sw` at 0xda9ec44, `sw` at 0xda9ec6c.
  Loads 4 bytes at abs 0xdaf1d04 (`lw` at 0xda9ec48).
  Loads 4 bytes at abs 0xdaf1cdc (`lw` at 0xda9ec54).
  Calls `__glFreeAttributeState [0xda2ae10]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda9ec40).
  Calls `__glFreeBufData [0xda354b0]` via register-constant with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xda9ec4c).
  Calls `__glDestroyContext [0xda34a60]` via register-constant with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xda9ec58).
  Returns v0 = ret(__glDestroyContext), f0 = ret(__glDestroyContext) (`jr` at 0xda9ec74).

- `__gllc_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaab990 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaab990-0xdaaba04 (116 bytes).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdaab994).
  Loads 4 bytes at abs 0xdaf13cc (`lw` at 0xdaab9a8).
  Loads 4 bytes at abs 0xdaf3078 (`lw` at 0xdaab9d8).
  Loads 4 bytes at abs 0xdaf13d4 (`lw` at 0xdaab9e0).
  Stores 2 bytes from v1 at ret(__glDlistAllocOp2) +0xc (`sh` at 0xdaab9e8).
  Stores 4 bytes from a3 at ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdaab9f8).
  Calls `__glDlistAllocOp2 [0xd9f6b60]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdaab9bc).
  Calls `__glDlistAppendOp [0xd9f6bf0]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xdab1660, a3=a0 at entry (arg0) (`jalr` at 0xdaab9f4).
  At `bne` at 0xdaab9c4 (target 0xdaab9d8), taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  At `beq` at 0xdaab9fc (target 0xdaab9cc), the branch is always taken.
  Returns v0 = ? (`jr` at 0xdaab9d0).

- `__gllc_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaba10 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaaba10-0xdaaba84 (116 bytes).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdaaba14).
  Loads 4 bytes at abs 0xdaf13cc (`lw` at 0xdaaba28).
  Loads 4 bytes at abs 0xdaf307c (`lw` at 0xdaaba58).
  Loads 4 bytes at abs 0xdaf13d4 (`lw` at 0xdaaba60).
  Stores 2 bytes from v1 at ret(__glDlistAllocOp2) +0xc (`sh` at 0xdaaba68).
  Stores 4 bytes from a3 at ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdaaba78).
  Calls `__glDlistAllocOp2 [0xd9f6b60]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdaaba3c).
  Calls `__glDlistAppendOp [0xd9f6bf0]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xdab16b0, a3=a0 at entry (arg0) (`jalr` at 0xdaaba74).
  At `bne` at 0xdaaba44 (target 0xdaaba58), taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  At `beq` at 0xdaaba7c (target 0xdaaba4c), the branch is always taken.
  Returns v0 = ? (`jr` at 0xdaaba50).

- `__gllc_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaacd00 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaacd00-0xdaacd74 (116 bytes).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdaacd04).
  Loads 4 bytes at abs 0xdaf13cc (`lw` at 0xdaacd18).
  Loads 4 bytes at abs 0xdaf30e8 (`lw` at 0xdaacd48).
  Loads 4 bytes at abs 0xdaf13d4 (`lw` at 0xdaacd50).
  Stores 2 bytes from v1 at ret(__glDlistAllocOp2) +0xc (`sh` at 0xdaacd58).
  Stores 4 bytes from a3 at ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdaacd68).
  Calls `__glDlistAllocOp2 [0xd9f6b60]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdaacd2c).
  Calls `__glDlistAppendOp [0xd9f6bf0]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xdab2030, a3=a0 at entry (arg0) (`jalr` at 0xdaacd64).
  At `bne` at 0xdaacd34 (target 0xdaacd48), taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  At `beq` at 0xdaacd6c (target 0xdaacd3c), the branch is always taken.
  Returns v0 = ? (`jr` at 0xdaacd40).

- `__glle_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab1660 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab1660-0xdab16a4 (68 bytes).
  Loads 4 bytes at abs 0x1358 (`lw` at 0xdab1674).
  Loads 4 bytes at a0 (`lw` at 0xdab1688).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab1684).
  Returns v0 = a0+4, f0 = ret(?) (`jr` at 0xdab169c).

- `__glle_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab16b0 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab16b0-0xdab16f4 (68 bytes).
  Loads 4 bytes at abs 0x135c (`lw` at 0xdab16c4).
  Loads 4 bytes at a0 (`lw` at 0xdab16d8).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab16d4).
  Returns v0 = a0+4, f0 = ret(?) (`jr` at 0xdab16ec).

- `__glle_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab2030 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab2030-0xdab2074 (68 bytes).
  Loads 4 bytes at abs 0x1460 (`lw` at 0xdab2044).
  Loads 4 bytes at a0 (`lw` at 0xdab2058).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab2054).
  Returns v0 = a0+4, f0 = ret(?) (`jr` at 0xdab206c).

- `__glsplc_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab9ce0 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab9ce0-0xdab9d34 (84 bytes).
  Loads 4 bytes at abs 0xdaf0884 (`lw` at 0xdab9cf4).
  Stores 4 bytes from v1 at ret(__glSPDlalloc) (`sw` at 0xdab9d24).
  Calls `__glSPDlalloc [0xd974de0]` via register-constant with a0=0x4, a1=0xce, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab9d04).
  At `beq` at 0xdab9d0c (target 0xdab9d28), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdab9d20).
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdab9d2c).

- `__glsplc_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab9d40 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab9d40-0xdab9d94 (84 bytes).
  Loads 4 bytes at abs 0xdaf0884 (`lw` at 0xdab9d54).
  Stores 4 bytes from v1 at ret(__glSPDlalloc) (`sw` at 0xdab9d84).
  Calls `__glSPDlalloc [0xd974de0]` via register-constant with a0=0x4, a1=0xcf, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab9d64).
  At `beq` at 0xdab9d6c (target 0xdab9d88), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdab9d80).
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdab9d8c).

- `__glsplc_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdababd0 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdababd0-0xdabac24 (84 bytes).
  Loads 4 bytes at abs 0xdaf0884 (`lw` at 0xdababe4).
  Stores 4 bytes from v1 at ret(__glSPDlalloc) (`sw` at 0xdabac14).
  Calls `__glSPDlalloc [0xd974de0]` via register-constant with a0=0x4, a1=0xf2, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdababf4).
  At `beq` at 0xdababfc (target 0xdabac18), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdabac10).
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdabac1c).

- `__glce_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac5e10 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac5e10-0xdac5e84 (116 bytes).
  Loads 4 bytes at abs 0x1358 (`lw` at 0xdac5e10).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdac5e28).
  2 4-byte lw loads at abs 0xdaf4720, including `lw` at 0xdac5e38, `lw` at 0xdac5e50.
  Loads 4 bytes at [0x1010] +0x1b00 (`lw` at 0xdac5e40).
  3 4-byte sw stores at abs 0x1358, including `sw` at 0xdac5e4c, `sw` at 0xdac5e64, `sw` at 0xdac5e80.
  Loads 4 bytes at ? (`lw` at 0xdac5e58).
  Calls `glResetHistogramEXT` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac5e48).
  Calls `glResetHistogramEXT` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdac5e60).
  Returns v0 = ret(glResetHistogramEXT), f0 = ret(glResetHistogramEXT) (`jr` at 0xdac5e7c).

- `__glce_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac5e90 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac5e90-0xdac5f04 (116 bytes).
  Loads 4 bytes at abs 0x135c (`lw` at 0xdac5e90).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdac5ea8).
  2 4-byte lw loads at abs 0xdaf4724, including `lw` at 0xdac5eb8, `lw` at 0xdac5ed0.
  Loads 4 bytes at [0x1010] +0x1b04 (`lw` at 0xdac5ec0).
  3 4-byte sw stores at abs 0x135c, including `sw` at 0xdac5ecc, `sw` at 0xdac5ee4, `sw` at 0xdac5f00.
  Loads 4 bytes at ? (`lw` at 0xdac5ed8).
  Calls `glResetMinmaxEXT` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac5ec8).
  Calls `glResetMinmaxEXT` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdac5ee0).
  Returns v0 = ret(glResetMinmaxEXT), f0 = ret(glResetMinmaxEXT) (`jr` at 0xdac5efc).

- `__glce_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac7c10 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac7c10-0xdac7c84 (116 bytes).
  Loads 4 bytes at abs 0x1460 (`lw` at 0xdac7c10).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdac7c28).
  2 4-byte lw loads at abs 0xdaf482c, including `lw` at 0xdac7c38, `lw` at 0xdac7c50.
  Loads 4 bytes at [0x1010] +0x1c08 (`lw` at 0xdac7c40).
  3 4-byte sw stores at abs 0x1460, including `sw` at 0xdac7c4c, `sw` at 0xdac7c64, `sw` at 0xdac7c80.
  Loads 4 bytes at ? (`lw` at 0xdac7c58).
  Calls `glReadInstrumentsSGIX` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac7c48).
  Calls `glReadInstrumentsSGIX` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdac7c60).
  Returns v0 = ret(glReadInstrumentsSGIX), f0 = ret(glReadInstrumentsSGIX) (`jr` at 0xdac7c7c).

- `glResetHistogram` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf38 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf38-0xdacdf44 (12 bytes).
  Loads 4 bytes at abs 0x1358 (`lw` at 0xdacdf38).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf3c).

- `glResetMinmax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf44 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf44-0xdacdf50 (12 bytes).
  Loads 4 bytes at abs 0x135c (`lw` at 0xdacdf44).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf48).

- `glReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace250 (n32).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace250-0xdace25c (12 bytes).
  Loads 4 bytes at abs 0x1460 (`lw` at 0xdace250).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace254).

- `__glXMakeContextCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21531c4 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x21531c4-0x2154198 (4052 bytes).
  2 8-byte ld loads at abs 0x217c2e8, including `ld` at 0x21531e4, `ld` at 0x2153244.
  Loads 8 bytes at abs 0x217c2f8 (`ld` at 0x2153208).
  8 8-byte ld loads at abs 0x1028, including `ld` at 0x2153248, `ld` at 0x215361c, `ld` at 0x215369c.
  Loads 8 bytes at [0x1028]:8 +0x118 (`ld` at 0x215324c).
  6 4-byte lw loads at [[0x1028]:8+280]:8 +0x118, including `lw` at 0x2153250, `lw` at 0x215330c, `lw` at 0x2153338.
  Loads 8 bytes at [[0x1028]:8+280]:8 +0x120 (`ld` at 0x2153260).
  2 8-byte ld loads at [[0x1028]:8+280]:8 +0x148, including `ld` at 0x2153264, `ld` at 0x2153618.
  2 8-byte ld loads at [[0x1028]:8+280]:8 +0x140, including `ld` at 0x2153270, `ld` at 0x2153620.
  Loads 8 bytes at [[[0x1028]:8+280]:8+288]:8 +0xb8 (`ld` at 0x215327c).
  9 8-byte ld loads at abs 0x217c258, including `ld` at 0x215328c, `ld` at 0x21535e0, `ld` at 0x21537a8.
  Loads 8 bytes at abs 0x217c238 (`ld` at 0x2153294).
  2 8-byte ld loads at [[0x1028]:8+280]:8 +0x150, including `ld` at 0x2153298, `ld` at 0x21537d8.
  Loads 8 bytes at [[0x1028]:8+280]:8 +0x158 (`ld` at 0x215329c).
  3 4-byte lw loads at a3 +0x118, including `lw` at 0x21532ac, `lw` at 0x21534b0, `lw` at 0x2153630.
  3 8-byte ld loads at abs 0x217c1b0, including `ld` at 0x21532c4, `ld` at 0x2153308, `ld` at 0x21537e4.
  7 4-byte lw loads at a3 +0x3c, including `lw` at 0x21532d8, `lw` at 0x21534f0, `lw` at 0x2153548.
  2 4-byte lw loads at ret(__glXAddDrawableInterest) +0xc, including `lw` at 0x21532dc, `lw` at 0x21537fc.
  3 8-byte ld loads at a3 +0x58, including `ld` at 0x21532e8, `ld` at 0x2153534, `ld` at 0x2153594.
  Loads 8 bytes at ret(__glXAddDrawableInterest) +0x10 (`ld` at 0x21532ec).
  Loads 4 bytes at ret(__glXAddDrawableInterest) +0x40 (`lw` at 0x21532f8).
  6 8-byte ld loads at abs 0x217bb40, including `ld` at 0x2153314, `ld` at 0x215334c, `ld` at 0x21534c0.
  4 1-byte lbu loads at ?, including `lbu` at 0x215335c, `lbu` at 0x2153368, `lbu` at 0x2153bec.
  2 8-byte ld loads at abs 0x217bfe8, including `ld` at 0x2153364, `ld` at 0x2153370.
  2 1-byte lbu loads at a3 +0x39, including `lbu` at 0x215337c, `lbu` at 0x21534fc.
  13 8-byte ld loads at abs 0x217bac8, including `ld` at 0x215338c, `ld` at 0x2153430, `ld` at 0x21534a4.
  3 4-byte lw loads at [[0x1028]:8+280]:8 +0x68, including `lw` at 0x21533a4, `lw` at 0x2153754, `lw` at 0x2153854.
  4 8-byte ld loads at abs 0x217bc70, including `ld` at 0x21533b4, `ld` at 0x21533f0, `ld` at 0x2153bf4.
  4 8-byte ld loads at a0 +0x958, including `ld` at 0x21533e0, `ld` at 0x215341c, `ld` at 0x2153c28.
  4 8-byte sd stores at a0 +0x958, including `sd` at 0x21533ec, `sd` at 0x215342c, `sd` at 0x2153c44.
  2 8-byte ld loads at abs 0x217bff0, including `ld` at 0x2153488, `ld` at 0x2153a38.
  2 4-byte sw stores at [[0x1028]:8+280]:8 +0x68, including `sw` at 0x21534d4, `sw` at 0x215386c.
  38 8-byte ld loads at ?, including `ld` at 0x21534e0, `ld` at 0x215357c, `ld` at 0x2153590.
  36 8-byte sd stores at ?, including `sd` at 0x21534ec, `sd` at 0x2153514, `sd` at 0x2153530.
  4 4-byte sw stores at ?, including `sw` at 0x21534f8, `sw` at 0x215350c, `sw` at 0x2153b30.
  2 8-byte ld loads at abs 0x217c2a0, including `ld` at 0x2153504, `ld` at 0x2153584.
  2 4-byte lw loads at a3 +0x5c, including `lw` at 0x2153518, `lw` at 0x2153b44.
  2 8-byte ld loads at abs 0x217c048, including `ld` at 0x215353c, `ld` at 0x2153b50.
  2 4-byte lw loads at a3 +0x1b0, including `lw` at 0x2153550, `lw` at 0x2153b70.
  2 4-byte lw loads at a3 +0x1b4, including `lw` at 0x2153554, `lw` at 0x2153b74.
  11 4-byte lw loads at ?, including `lw` at 0x2153560, `lw` at 0x21535ac, `lw` at 0x21535c8.
  2 8-byte ld loads at abs 0x217c348, including `ld` at 0x2153578, `ld` at 0x2153b98.
  2 8-byte ld loads at a3 +0x120, including `ld` at 0x21535b8, `ld` at 0x2153644.
  Loads 8 bytes at [a3+288]:8 +0xd0 (`ld` at 0x21535bc).
  3 8-byte ld loads at [[0x1028]:8+280]:8 +0x138, including `ld` at 0x2153614, `ld` at 0x21536a0, `ld` at 0x2153838.
  2 8-byte sd stores at [0x1028]:8 +0x118, including `sd` at 0x2153624, `sd` at 0x2153894.
  Stores 8 bytes from s3 at a3 +0x158 (`sd` at 0x2153628).
  Stores 8 bytes from s6 at a3 +0x140 (`sd` at 0x215362c).
  Stores 8 bytes from s1 at a3 +0x150 (`sd` at 0x2153634).
  Stores 8 bytes from s5 at a3 +0x148 (`sd` at 0x2153638).
  Stores 8 bytes from s4 at a3 +0x138 (`sd` at 0x2153640).
  Loads 8 bytes at [a3+288]:8 +0xc8 (`ld` at 0x2153648).
  2 1-byte lbu loads at a3 +0x170, including `lbu` at 0x2153670, `lbu` at 0x21539cc.
  Stores 8 bytes from t0 at [0x1028]:8 +0x120 (`sd` at 0x21536a4).
  Loads 4 bytes at [[0x1028]:8+280]:8 +0x1a4 (`lw` at 0x21536ac).
  Stores 4 bytes from a6 at [0x1028]:8 +0x128 (`sw` at 0x21536b0).
  2 4-byte lw loads at [[0x1028]:8+280]:8 +0x1ac, including `lw` at 0x21536b8, `lw` at 0x2153e5c.
  Stores 4 bytes from a4 at [0x1028]:8 +0x12c (`sw` at 0x21536bc).
  2 8-byte ld loads at [[0x1028]:8+280]:8 +0x28, including `ld` at 0x21536c0, `ld` at 0x2153e6c.
  Loads 8 bytes at abs 0x217c038 (`ld` at 0x21536c8).
  Stores 4 bytes from zero at [[0x1028]:8+280]:8 +0x12c (`sw` at 0x21536cc).
  Stores 4 bytes from zero at [[0x1028]:8+280]:8 +0x130 (`sw` at 0x21536d0).
  4 8-byte sd stores at [[0x1028]:8+280]:8 +0x150, including `sd` at 0x21536d4, `sd` at 0x21539d0, `sd` at 0x2153adc.
  4 8-byte sd stores at [[0x1028]:8+280]:8 +0x158, including `sd` at 0x21536d8, `sd` at 0x21539e0, `sd` at 0x2153af8.
  4 8-byte sd stores at [[0x1028]:8+280]:8 +0x148, including `sd` at 0x21536dc, `sd` at 0x21539e8, `sd` at 0x2153b10.
  4 8-byte sd stores at [[0x1028]:8+280]:8 +0x140, including `sd` at 0x21536e0, `sd` at 0x21539f0, `sd` at 0x2153b00.
  4 8-byte sd stores at [[0x1028]:8+280]:8 +0x138, including `sd` at 0x21536e4, `sd` at 0x21539fc, `sd` at 0x2153b14.
  2 8-byte ld loads at abs 0x217c1c8, including `ld` at 0x21536f0, `ld` at 0x2153704.
  7 8-byte ld loads at a3 +0x28, including `ld` at 0x2153784, `ld` at 0x2153a08, `ld` at 0x2153aa4.
  Loads 4 bytes at a3 +0x12c (`lw` at 0x2153790).
  Loads 4 bytes at a3 +0x130 (`lw` at 0x2153798).
  Loads 4 bytes at [0x1028]:8 +0x10c (`lw` at 0x21537a0).
  2 4-byte lw loads at [0x1028]:8 +0x110, including `lw` at 0x21537ac, `lw` at 0x21537c0.
  2 4-byte sw stores at a3 +0x12c, including `sw` at 0x21537b8, `sw` at 0x2153e88.
  2 4-byte sw stores at a3 +0x130, including `sw` at 0x21537c8, `sw` at 0x2153e8c.
  Loads 8 bytes at ret(__glXAddDrawableInterest) +0x18 (`ld` at 0x2153808).
  2 8-byte ld loads at abs 0x1088, including `ld` at 0x2153898, `ld` at 0x2153d48.
  Loads 8 bytes at abs 0x217d100 (`ld` at 0x21538b0).
  Loads 8 bytes at [a3+288]:8 +0xc0 (`ld` at 0x21539bc).
  2 8-byte ld loads at a0 +0x98, including `ld` at 0x2153c04, `ld` at 0x2153f68.
  2 8-byte ld loads at abs 0x217bff8, including `ld` at 0x2153c38, `ld` at 0x2153f9c.
  4 1-byte sb stores at ?, including `sb` at 0x2153c5c, `sb` at 0x2153c7c, `sb` at 0x2153c84.
  Stores 4 bytes from v1 at a3 +0x68 (`sw` at 0x2153c64).
  Loads 8 bytes at abs 0x217c060 (`ld` at 0x2153d1c).
  Loads 8 bytes at abs 0x217bfa8 (`ld` at 0x2153d30).
  Stores 1 byte from a1 at a3 +0x1b8 (`sb` at 0x2153d44).
  Loads 8 bytes at abs 0x217d0f0 (`ld` at 0x2153d6c).
  Loads 8 bytes at abs 0x217d0f8 (`ld` at 0x2153fd0).
  Calls `__glXInitThread` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2153200).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x215320c).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+288]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x2153280).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x21532c8).
  Calls `(unknown callee) [0x2152d94]` via direct with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1028]:8+280]:8+104], a3=sp-192, a4=a1 at entry (arg1), a7=0x2152d94 (`bgezall` at 0x21533a8).
  Calls `(unknown callee) [0x2152f38]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=unknown, a3=unknown, a7=0x2152f38 (`bgezall` at 0x2153448).
  Calls `_XDeqAsyncHandler` via got with a0=a0 at entry (arg0), a1=sp-216, a2=0x3, a3=unknown, a4=[a0+2392]:8, a5=sp-216 (`jalr` at 0x2153494).
  Calls `__glXOverrideVisualsBogusChoose` via got with a0=unknown, a1=[a3+92], a2=unknown, a3=unknown (`jalr` at 0x215351c).
  Calls `__glXGetModes` via got with a0=a0 at entry (arg0), a1=[a3+60], a2=unknown, a3=unknown (`jalr` at 0x2153544).
  Calls `(unknown callee)` via register with a0=[a3+288]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x21535d4).
  Calls `(unknown callee)` via register with a0=[a3+288]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x2153660).
  Calls `__glXRemoveDrawableInterest` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x21536f4).
  Calls `(unknown callee) [0x2152a58]` via direct with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1028]:8+280]:8+104], a3=sp-192, a4=a1 at entry (arg1), a5=a2 at entry (arg2) (`bgezall` at 0x215376c).
  Calls `__glXInitThread` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x215377c).
  Calls `__glXUnbindHWContextFromThread` via got with a0=[[[0x1028]:8+280]:8+288]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x21537cc).
  Calls `__glXAddDrawableInterest` via got with a0=a2 at entry (arg2), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x21537e8).
  Calls `(unknown callee) [0x2152d94]` via direct with a0=[[[0x1028]:8+280]:8+312]:8, a1=0x0, a2=[[[0x1028]:8+280]:8+104], a3=sp-192, a4=0x0, a5=0x2152d94 (`bgezall` at 0x2153858).
  Calls `__glXRemoveDrawableInterest` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x2153878).
  Calls `(unknown callee)` via register with a0=[a3+288]:8, a1=[[[0x1028]:8+280]:8+328]:8, a2=[[[0x1028]:8+280]:8+312]:8, a3=unknown (`jalr` at 0x21539c0).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8 (`jalr` at 0x2153a04).
  Calls `(unknown callee) [0x2152f38]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=unknown, a3=unknown (`bgezall` at 0x2153a24).
  Calls `_XDeqAsyncHandler` via got with a0=a0 at entry (arg0), a1=sp-272, a2=unknown, a3=unknown (`jalr` at 0x2153a44).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8 (`jalr` at 0x2153aa8).
  Calls `(unknown callee) [0x2152f38]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=unknown, a3=unknown, a4=0x2152f38 (`bgezall` at 0x2153ac8).
  Calls `(unknown callee) [0x2152f38]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=unknown, a3=unknown, a5=0x2152f38 (`bgezall` at 0x2153b18).
  Calls `__glXOverrideVisualsBogusChoose` via got with a0=unknown, a1=[a3+92], a2=[a3+60], a3=unknown (`jalr` at 0x2153b48).
  Calls `__glXGetModes` via got with a0=a0 at entry (arg0), a1=[a3+60], a2=unknown, a3=unknown (`jalr` at 0x2153b64).
  Calls `glXQueryDrawable` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x8025, a3=unknown, a6=0x6 (`jalr` at 0x2153ba8).
  Calls `XSGIMiscQueryExtension` via got with a0=a0 at entry (arg0), a1=sp-160, a2=sp-156, a3=unknown (`jalr` at 0x2153bdc).
  Calls `_XSGISetSpecialDestroyInterest` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x2153c4c).
  Calls `__glXFreeContext` via got with a0=[[0x1028]:8+280]:8, a1=0x1, a2=0x217d3b8, a3=[[[0x1028]:8+280]:8+40]:8, a4=[[[0x1028]:8+280]:8+428], a5=[0x1028]:8, a6=[[[0x1028]:8+280]:8+420], a7=[0x1028]:8 (`jalr` at 0x2153cb0).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xa, a2=0x5, a3=[a3+40]:8 (`jalr` at 0x2153ccc).
  Calls `glXQueryServerString` via got with a0=a0 at entry (arg0), a1=[a3+60], a2=0x2, a3=unknown (`jalr` at 0x2153d28).
  Calls `strstr` via got with a0=ret(glXQueryServerString), a1=0x217d150, a2=unknown, a3=unknown (`jalr` at 0x2153d38).
  Calls `glXQueryDrawable` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x8025, a3=unknown, a6=0x6 (`jalr` at 0x2153e4c).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x5, a3=[[[0x1028]:8+280]:8+40]:8 (`jalr` at 0x2153e70).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8 (`jalr` at 0x2153f34).
  Calls `(unknown callee) [0x2152f38]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=unknown, a3=unknown, a6=0x2152f38 (`bgezall` at 0x2153f54).
  Calls `_XSGISetSpecialDestroyInterest` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a7=sp-272 (`jalr` at 0x2153fb0).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0x8, a2=0x5, a3=[a3+40]:8 (`jalr` at 0x21540b0).
  Calls `(unknown callee) [0x2152f38]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=unknown, a3=unknown (`bgezall` at 0x21540d0).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8 (`jalr` at 0x21540f4).
  Calls `(unknown callee) [0x2152f38]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=0x0, a3=0x0 (`bgezall` at 0x2154114).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8 (`jalr` at 0x2154138).
  Calls `(unknown callee) [0x2152f38]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=ret(__glXAddDrawableInterest), a3=0x0, a4=0x2152f38 (`bgezall` at 0x2154158).
  Calls `(unknown callee) [0x2152f38]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=unknown, a3=0x0, a5=0x2152f38 (`bgezall` at 0x2154184).
  At `beq` at 0x2153218 (target 0x2153c88), taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  At `bne` at 0x2153240 (target 0x215377c), taken when s0(=a3) != 0 and falls through when s0(=a3) == 0.
  At `beq` at 0x2153254 (target 0x2153870), taken when v1(=[[[0x1028]:8+280]:8+280]) == 0 and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  At `bne` at 0x215325c (target 0x215327c), taken when s0(=a3) != s2(=[[0x1028]:8+280]:8) and falls through when s0(=a3) == s2(=[[0x1028]:8+280]:8).
  At `bne` at 0x2153268 (target 0x215327c), taken when t8(=[[[0x1028]:8+280]:8+328]:8) != s5(=a1) and falls through when t8(=[[[0x1028]:8+280]:8+328]:8) == s5(=a1).
  At `beq` at 0x2153274 (target 0x2153984), taken when t9(=[[[0x1028]:8+280]:8+320]:8) == s6(=a2) and falls through when t9(=[[[0x1028]:8+280]:8+320]:8) != s6(=a2).
  At `beq` at 0x2153288 (target 0x2153e5c), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `bne` at 0x2153290 (target 0x21537cc), taken when s0(=a3) != s2(=[[0x1028]:8+280]:8) and falls through when s0(=a3) == s2(=[[0x1028]:8+280]:8).
  At `beq` at 0x21532a4 (target 0x2153330), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0x21532b0 (target 0x2153338), taken when at(=[a3+280]) == 0 and falls through when at(=[a3+280]) != 0.
  At `beq` at 0x21532b8 (target 0x2153338), taken when s5(=a1) == 0 and falls through when s5(=a1) != 0.
  At `beq` at 0x21532c0 (target 0x2153338), taken when s6(=a2) == 0 and falls through when s6(=a2) != 0.
  At `beq` at 0x21532d0 (target 0x21540e4), taken when v0(=ret(__glXAddDrawableInterest)) == 0 and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  At `bne` at 0x21532e0 (target 0x21537dc), taken when v0(=[ret(__glXAddDrawableInterest)+12]) != v1(=[a3+60]) and falls through when v0(=[ret(__glXAddDrawableInterest)+12]) == v1(=[a3+60]).
  At `bne` at 0x21532f0 (target 0x21537dc), taken when a0(=[ret(__glXAddDrawableInterest)+16]:8) != a1(=[a3+88]:8) and falls through when a0(=[ret(__glXAddDrawableInterest)+16]:8) == a1(=[a3+88]:8).
  At `beq` at 0x21532fc (target 0x21537dc), taken when a2(=[ret(__glXAddDrawableInterest)+64]) == a3(=0x3) and falls through when a2(=[ret(__glXAddDrawableInterest)+64]) != a3(=0x3).
  At `bne` at 0x2153304 (target 0x21537e8), taken when s5(=a1) != s6(=a2) and falls through when s5(=a1) == s6(=a2).
  At `beq` at 0x2153310 (target 0x2153a58), taken when a1(=[[[0x1028]:8+280]:8+280]) == 0 and falls through when a1(=[[[0x1028]:8+280]:8+280]) != 0.
  At `bne` at 0x2153318 (target 0x2153348), taken when s8(=one of 0x0, 0x1) != 0 and falls through when s8(=one of 0x0, 0x1) == 0.
  At `bne` at 0x2153320 (target 0x2153590), taken when s1(?) != 0 and falls through when s1(?) == 0.
  At `beq` at 0x2153328 (target 0x215360c), the branch is always taken.
  At `beq` at 0x2153330 (target 0x2153c68), taken when s5(=a1) == 0 and falls through when s5(=a1) != 0.
  At `beq` at 0x215333c (target 0x2153a54), taken when a1(=[[[0x1028]:8+280]:8+280]) == 0 and falls through when a1(=[[[0x1028]:8+280]:8+280]) != 0.
  At `beq` at 0x2153348 (target 0x2153828), taken when a1(=[[[0x1028]:8+280]:8+280]) == 0 and falls through when a1(=[[[0x1028]:8+280]:8+280]) != 0.
  At `beq` at 0x2153354 (target 0x2153374), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0x2153360 (target 0x2153bd4), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x215336c (target 0x2153bd4), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x2153374 (target 0x2153388), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `bne` at 0x2153380 (target 0x2153740), taken when a6(=[a3+57]:1) != 0 and falls through when a6(=[a3+57]:1) == 0.
  At `bne` at 0x2153388 (target 0x215373c), taken when s5(=a1) != s6(=a2) and falls through when s5(=a1) == s6(=a2).
  At `bne` at 0x21533c8 (target 0x21533f0), taken when t0(?) != t1(=sym(_XAsyncErrorHandler)) and falls through when t0(?) == t1(=sym(_XAsyncErrorHandler)).
  At `beq` at 0x21533d0 (target 0x21533e0), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `beq` at 0x21533d8 (target 0x2153c78), taken when t3(=0x3) == t8(?) and falls through when t3(=0x3) != t8(?).
  At `bne` at 0x21533e4 (target 0x2153a38), taken when t9(=[a0+2392]:8) != ra(=sp-272) and falls through when t9(=[a0+2392]:8) == ra(=sp-272).
  At `bne` at 0x2153404 (target 0x21534a0), taken when v0(?) != v1(=sym(_XAsyncErrorHandler)) and falls through when v0(?) == v1(=sym(_XAsyncErrorHandler)).
  At `beq` at 0x215340c (target 0x215341c), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x2153414 (target 0x2153c80), taken when a2(=0x3) == a3(?) and falls through when a2(=0x3) != a3(?).
  At `bne` at 0x2153420 (target 0x2153488), taken when a4(=[a0+2392]:8) != a5(=sp-216) and falls through when a4(=[a0+2392]:8) == a5(=sp-216).
  At `bne` at 0x2153428 (target 0x21534a8), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0x21534a0 (target 0x2153434), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x21534a8 (target 0x21534bc), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0x21534b4 (target 0x2153c60), taken when t0(=[a3+280]) == 0 and falls through when t0(=[a3+280]) != 0.
  At `beq` at 0x21534bc (target 0x21534d8), taken when s0(=a3) == s2(=[[0x1028]:8+280]:8) and falls through when s0(=a3) != s2(=[[0x1028]:8+280]:8).
  At `beq` at 0x21534cc (target 0x21534d8), taken when s2(=[[0x1028]:8+280]:8) == t1(=0x217d3b8) and falls through when s2(=[[0x1028]:8+280]:8) != t1(=0x217d3b8).
  At `beq` at 0x21534d8 (target 0x21535e4), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `bne` at 0x21534e4 (target 0x215357c), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `beq` at 0x21534f4 (target 0x2153534), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0x2153500 (target 0x2153534), taken when t8(=[a3+57]:1) == 0 and falls through when t8(=[a3+57]:1) != 0.
  At `beq` at 0x215352c (target 0x215353c), the branch is always taken.
  At `beq` at 0x2153564 (target 0x2153574), taken when a3(=[a3+432]) >= 0x2 (signed) and falls through when a3(=[a3+432]) < 0x2 (signed).
  At `bne` at 0x215356c (target 0x215357c), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0x2153574 (target 0x2153e40), taken when a5(?) == a6(=0x6) and falls through when a5(?) != a6(=0x6).
  At `beq` at 0x2153580 (target 0x2153b28), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x2153588 (target 0x21535e4), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `bne` at 0x2153598 (target 0x21535b8), taken when t0(=[a3+88]:8) != a2(?) and falls through when t0(=[a3+88]:8) == a2(?).
  At `beq` at 0x21535a4 (target 0x21535e4), taken when t1(?) == a2(?) and falls through when t1(?) != a2(?).
  At `beq` at 0x21535b0 (target 0x21535e4), taken when t2(?) == t3(=0x3) and falls through when t2(?) != t3(=0x3).
  At `beq` at 0x21535c0 (target 0x21535e4), taken when t9(=[[a3+288]:8+208]:8) == 0 and falls through when t9(=[[a3+288]:8+208]:8) != 0.
  At `beq` at 0x21535dc (target 0x21540a4), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `beq` at 0x21535e4 (target 0x215360c), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0x21535ec (target 0x215360c), taken when s1(?) == s3(?) and falls through when s1(?) != s3(?).
  At `beq` at 0x21535f8 (target 0x2153a70), taken when t8(?) == t9(=0x4) and falls through when t8(?) != t9(=0x4).
  At `beq` at 0x2153604 (target 0x2153a70), taken when ra(?) == at(=0x4) and falls through when ra(?) != at(=0x4).
  At `beq` at 0x215360c (target 0x2153888), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0x215363c (target 0x2153d1c), taken when v1(=[a3+280]) == 0 and falls through when v1(=[a3+280]) != 0.
  At `beq` at 0x2153654 (target 0x21539bc), taken when t9(=[[a3+288]:8+200]:8) == 0 and falls through when t9(=[[a3+288]:8+200]:8) != 0.
  At `beq` at 0x2153668 (target 0x2153f00), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `beq` at 0x2153674 (target 0x2153684), taken when a1(=[a3+368]:1) == 0 and falls through when a1(=[a3+368]:1) != 0.
  At `beq` at 0x215367c (target 0x2153adc), taken when s8(=one of 0x0, 0x1) == 0 and falls through when s8(=one of 0x0, 0x1) != 0.
  At `beq` at 0x2153684 (target 0x21536e8), taken when s0(=a3) == s2(=[[0x1028]:8+280]:8) and falls through when s0(=a3) != s2(=[[0x1028]:8+280]:8).
  At `beq` at 0x2153694 (target 0x21536e8), taken when s2(=[[0x1028]:8+280]:8) == a2(=0x217d3b8) and falls through when s2(=[[0x1028]:8+280]:8) != a2(=0x217d3b8).
  At `beq` at 0x21536c4 (target 0x2153cac), taken when a3(=[[[0x1028]:8+280]:8+40]:8) == 0 and falls through when a3(=[[[0x1028]:8+280]:8+40]:8) != 0.
  At `beq` at 0x21536e8 (target 0x2153708), taken when s7(?) == 0 and falls through when s7(?) != 0.
  At `bne` at 0x2153700 (target 0x2153878), taken when s7(?) != t2(?) and falls through when s7(?) == t2(?).
  At `beq` at 0x2153774 (target 0x21533b4), the branch is always taken.
  At `beq` at 0x2153788 (target 0x2153ec8), taken when a3(=[a3+40]:8) == 0 and falls through when a3(=[a3+40]:8) != 0.
  At `beq` at 0x215379c (target 0x21537b8), taken when a0(=[a3+300]) == 0 and falls through when a0(=[a3+300]) != 0.
  At `bne` at 0x21537a4 (target 0x2153cc4), taken when a0(=[a3+300]) != v0(=[[0x1028]:8+268]) and falls through when a0(=[a3+300]) == v0(=[[0x1028]:8+268]).
  At `bne` at 0x21537b0 (target 0x2153cc4), taken when t9(=[[0x1028]:8+272]) != ra(=[a3+304]) and falls through when t9(=[[0x1028]:8+272]) == ra(=[a3+304]).
  At `beq` at 0x21537c4 (target 0x2153248), the branch is always taken.
  At `beq` at 0x21537d4 (target 0x215329c), the branch is always taken.
  At `beq` at 0x21537dc (target 0x2153bb8), taken when s5(=a1) == s6(=a2) and falls through when s5(=a1) != s6(=a2).
  At `beq` at 0x21537f0 (target 0x2154128), taken when v0(=ret(__glXAddDrawableInterest)) == 0 and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  At `bne` at 0x2153800 (target 0x2153814), taken when v0(=[ret(__glXAddDrawableInterest)+12]) != v1(=[a3+60]) and falls through when v0(=[ret(__glXAddDrawableInterest)+12]) == v1(=[a3+60]).
  At `bne` at 0x215380c (target 0x215330c), taken when a0(=[ret(__glXAddDrawableInterest)+24]:8) != 0 and falls through when a0(=[ret(__glXAddDrawableInterest)+24]:8) == 0.
  At `bne` at 0x2153818 (target 0x2153348), taken when a1(=[[[0x1028]:8+280]:8+280]) != 0 and falls through when a1(=[[[0x1028]:8+280]:8+280]) == 0.
  At `beq` at 0x2153820 (target 0x2153d14), the branch is always taken.
  At `beq` at 0x2153830 (target 0x2153350), taken when s2(=[[0x1028]:8+280]:8) == a1(=0x217d3b8) and falls through when s2(=[[0x1028]:8+280]:8) != a1(=0x217d3b8).
  At `beq` at 0x215383c (target 0x2153350), taken when a0(=[[[0x1028]:8+280]:8+312]:8) == s4(=a0) and falls through when a0(=[[[0x1028]:8+280]:8+312]:8) != s4(=a0).
  At `beq` at 0x2153860 (target 0x215416c), taken when v0(=ret(0x2152d94)) == 0 and falls through when v0(=ret(0x2152d94)) != 0.
  At `beq` at 0x2153868 (target 0x2153350), the branch is always taken.
  At `beq` at 0x2153870 (target 0x21532a4), the branch is always taken.
  At `beq` at 0x2153880 (target 0x215370c), the branch is always taken.
  At `bne` at 0x215389c (target 0x2153684), taken when a7(=[0x1088]:8) != 0 and falls through when a7(=[0x1088]:8) == 0.
  At `bne` at 0x21538cc (target 0x21538b4), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bgtz` at 0x2153974 (target 0x21538d4), taken when a1(?) > 0 (signed) and falls through when a1(?) <= 0 (signed).
  At `beq` at 0x215397c (target 0x2153684), the branch is always taken.
  At `bnel` at 0x21539c8 (target 0x2153674), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0; its branch-likely delay slot `lbu a1,368(s0)` at 0x21539cc runs only when taken and is annulled on fall-through.
  At `beq` at 0x2153a30 (target 0x215370c), the branch is always taken.
  At `beq` at 0x2153a4c (target 0x21533f0), the branch is always taken.
  At `beq` at 0x2153a60 (target 0x2153318), taken when s2(=[[0x1028]:8+280]:8) == v0(=0x217d3b8) and falls through when s2(=[[0x1028]:8+280]:8) != v0(=0x217d3b8).
  At `beq` at 0x2153a68 (target 0x2153348), the branch is always taken.
  At `bne` at 0x2153a80 (target 0x215360c), taken when v1(?) < a0(?) (signed) and falls through when v1(?) >= a0(?) (signed).
  At `bne` at 0x2153a8c (target 0x215360c), taken when a1(?) < a2(?) (signed) and falls through when a1(?) >= a2(?) (signed).
  At `beq` at 0x2153ad4 (target 0x215370c), the branch is always taken.
  At `beq` at 0x2153b20 (target 0x2153240), the branch is always taken.
  At `beq` at 0x2153b84 (target 0x2153b94), taken when a3(=[a3+432]) >= 0x2 (signed) and falls through when a3(=[a3+432]) < 0x2 (signed).
  At `bne` at 0x2153b8c (target 0x2153588), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bne` at 0x2153b94 (target 0x2153588), taken when a5(?) != a6(=0x6) and falls through when a5(?) == a6(=0x6).
  At `beq` at 0x2153bb0 (target 0x2153588), the branch is always taken.
  At `bne` at 0x2153bc0 (target 0x2153348), taken when a1(=[[[0x1028]:8+280]:8+280]) != 0 and falls through when a1(=[[[0x1028]:8+280]:8+280]) == 0.
  At `beq` at 0x2153bc8 (target 0x2153d0c), the branch is always taken.
  At `beq` at 0x2153be4 (target 0x2153374), taken when v0(=ret(XSGIMiscQueryExtension)) == 0 and falls through when v0(=ret(XSGIMiscQueryExtension)) != 0.
  At `beq` at 0x2153bf0 (target 0x2153f68), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `bne` at 0x2153bfc (target 0x2153374), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0x2153c58 (target 0x2153374), the branch is always taken.
  At `beq` at 0x2153c60 (target 0x21534bc), the branch is always taken.
  At `bne` at 0x2153c68 (target 0x2153338), taken when s6(=a2) != 0 and falls through when s6(=a2) == 0.
  At `beq` at 0x2153c70 (target 0x2153310), the branch is always taken.
  At `beq` at 0x2153c78 (target 0x21533e0), the branch is always taken.
  At `beq` at 0x2153c80 (target 0x215341c), the branch is always taken.
  At `beq` at 0x2153cb8 (target 0x21536e8), the branch is always taken.
  At `beq` at 0x2153d0c (target 0x2153a54), the branch is always taken.
  At `beq` at 0x2153d14 (target 0x2153a54), the branch is always taken.
  At `bne` at 0x2153d4c (target 0x2153684), taken when a0(=[0x1088]:8) != 0 and falls through when a0(=[0x1088]:8) == 0.
  At `beq` at 0x2153d54 (target 0x2153fc4), taken when v0(=ret(strstr)) == 0 and falls through when v0(=ret(strstr)) != 0.
  At `bne` at 0x2153d88 (target 0x2153d70), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bgtz` at 0x2153e30 (target 0x2153d90), taken when a1(?) > 0 (signed) and falls through when a1(?) <= 0 (signed).
  At `beq` at 0x2153e38 (target 0x2153684), the branch is always taken.
  At `beq` at 0x2153e54 (target 0x2153580), the branch is always taken.
  At `beq` at 0x2153e78 (target 0x2153e94), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0x2153e80 (target 0x2153e94), taken when s0(=a3) == s2(=[[0x1028]:8+280]:8) and falls through when s0(=a3) != s2(=[[0x1028]:8+280]:8).
  At `beq` at 0x2153f60 (target 0x215370c), the branch is always taken.
  At `beq` at 0x2153fbc (target 0x2153bf8), the branch is always taken.
  At `bne` at 0x2153fec (target 0x2153fd4), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bgtz` at 0x2154094 (target 0x2153ff4), taken when v0(?) > 0 (signed) and falls through when v0(?) <= 0 (signed).
  At `beq` at 0x215409c (target 0x2153684), the branch is always taken.
  At `beq` at 0x21540dc (target 0x215370c), the branch is always taken.
  At `beq` at 0x2154120 (target 0x215370c), the branch is always taken.
  At `beq` at 0x2154164 (target 0x215370c), the branch is always taken.
  At `beq` at 0x2154190 (target 0x215370c), the branch is always taken.
  Returns v0 = 0x0, f0 = ret(0x2152f38) (`jr` at 0x2153480).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x2153734).
  Returns v0 = 0x1 (`jr` at 0x21539b4).
  Returns v0 = 0x0, f0 = ret(__glXSetupForCommand) (`jr` at 0x2153ca4).
  Returns v0 = 0x0, f0 = ret(__glXPostError) (`jr` at 0x2153d04).
  Returns v0 = 0x0, f0 = ret(__glXPostError) (`jr` at 0x2153ec0).
  Returns v0 = 0x0, f0 = ret(__glXInitThread) (`jr` at 0x2153ef8).
  The instructions from 0x2153bd0 to 0x2153bd0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2153cc0 to 0x2153cc0 are not reached by any path from the entry, and their branches are not listed.

- `glXMakeContextCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2154208 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2154208-0x215423c (52 bytes).
  Loads 8 bytes at abs 0x217c310 (`ld` at 0x215421c).
  Calls `__glXMakeContextCurrent` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0 (`jalr` at 0x2154224).
  Returns v0 = ret(__glXMakeContextCurrent), f0 = ret(__glXMakeContextCurrent) (`jr` at 0x2154234).

- `glXGetCurrentReadDrawable` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x215427c (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x215427c-0x21542bc (64 bytes).
  Loads 8 bytes at abs 0x217c2e8 (`ld` at 0x2154290).
  Loads 8 bytes at abs 0x1028 (`ld` at 0x21542a0).
  Loads 8 bytes at [0x1028]:8 +0x118 (`ld` at 0x21542a8).
  Loads 8 bytes at [[0x1028]:8+280]:8 +0x140 (`ld` at 0x21542b0).
  Calls `__glXInitThread` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2154298).
  Returns v0 = [[[0x1028]:8+280]:8+320]:8, f0 = ret(__glXInitThread) (`jr` at 0x21542b4).

- `__glx_ReadPixels` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2166718 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2166718-0x2166954 (572 bytes).
  Loads 8 bytes at abs 0x1028 (`ld` at 0x2166734).
  Loads 8 bytes at [0x1028]:8 +0x118 (`ld` at 0x216673c).
  Loads 8 bytes at [[0x1028]:8+280]:8 +0x138 (`ld` at 0x2166744).
  Loads 8 bytes at abs 0x217c300 (`ld` at 0x2166764).
  Loads 8 bytes at [[0x1028]:8+280]:8 +0x8 (`ld` at 0x2166770).
  2 8-byte ld loads at [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0x2166774, `ld` at 0x21668fc.
  Loads 8 bytes at [[[[0x1028]:8+280]:8+312]:8+2408]:8 (`ld` at 0x2166780).
  3 8-byte ld loads at [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0x216678c, `ld` at 0x21667d0, `ld` at 0x2166950.
  Loads 8 bytes at [[[0x1028]:8+280]:8+312]:8 +0xb8 (`ld` at 0x2166790).
  Loads 8 bytes at abs 0x217be20 (`ld` at 0x21667b8).
  Stores 8 bytes from v0 at [[[0x1028]:8+280]:8+312]:8 +0xa0 (`sd` at 0x21667bc).
  Stores 2 bytes from t2 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2 (`sh` at 0x21667c4).
  2 1-byte sb stores at [[[[0x1028]:8+280]:8+312]:8+176]:8, including `sb` at 0x21667c8, `sb` at 0x21667f0.
  Loads 8 bytes at [[[0x1028]:8+280]:8+312]:8 +0x98 (`ld` at 0x21667cc).
  Stores 8 bytes from t0 at [[[0x1028]:8+280]:8+312]:8 +0x98 (`sd` at 0x21667d8).
  Stores 8 bytes from t1 at [[[0x1028]:8+280]:8+312]:8 +0xb0 (`sd` at 0x21667e0).
  Loads 4 bytes at [[0x1028]:8+280]:8 +0x1a4 (`lw` at 0x21667e4).
  Stores 1 byte from a6 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1 (`sb` at 0x21667ec).
  Loads 4 bytes at [[0x1028]:8+280]:8 +0x68 (`lw` at 0x21667f4).
  Stores 4 bytes from v1 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1c (`sw` at 0x21667f8).
  Stores 4 bytes from a0 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x18 (`sw` at 0x21667fc).
  Stores 4 bytes from a1 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x14 (`sw` at 0x2166800).
  Stores 4 bytes from a2 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x10 (`sw` at 0x2166804).
  Stores 4 bytes from a4 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8 (`sw` at 0x2166808).
  Stores 4 bytes from a3 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0xc (`sw` at 0x216680c).
  Stores 4 bytes from a5 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4 (`sw` at 0x2166810).
  Loads 1 byte at [[0x1028]:8+280]:8 +0x80 (`lbu` at 0x2166818).
  Stores 1 byte from zero at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x21 (`sb` at 0x2166824).
  Stores 1 byte from at at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x20 (`sb` at 0x2166830).
  Loads 8 bytes at abs 0x217bde8 (`ld` at 0x2166848).
  2 8-byte ld loads at abs 0x217bf90, including `ld` at 0x2166864, `ld` at 0x21668b8.
  Loads 4 bytes at [[0x1028]:8+280]:8 +0xf0 (`lw` at 0x2166874).
  Stores 4 bytes from a3 at [[0x1028]:8+280]:8 +0xf0 (`sw` at 0x2166884).
  Loads 8 bytes at abs 0x217be70 (`ld` at 0x216688c).
  Loads 8 bytes at abs 0x217c368 (`ld` at 0x21668d8).
  Loads 8 bytes at abs 0x217bde0 (`ld` at 0x21668f0).
  Loads 8 bytes at [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8 (`ld` at 0x2166908).
  Loads 8 bytes at [[[0x1028]:8+280]:8+312]:8 +0xd0 (`ld` at 0x2166914).
  Loads 8 bytes at abs 0x217bdf8 (`ld` at 0x2166940).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x216676c).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x2166784).
  Calls `_XReply` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-160, a2=0x0, a3=0x0, a4=a0 at entry (arg0), a5=[[[0x1028]:8+280]:8+104], a6=0x6f, a7=[[[0x1028]:8+280]:8+420] (`jalr` at 0x216682c).
  Calls `malloc` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x2166854).
  Calls `_XEatData` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x216686c).
  Calls `_XRead` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=ret(malloc), a2=unknown, a3=unknown (`jalr` at 0x21668a0).
  Calls `_XEatData` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x21668c4).
  Calls `__glXEmptyImage` via got with a0=[[0x1028]:8+280]:8, a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5) (`jalr` at 0x21668e8).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x21668f4).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x216690c).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x2166920).
  Calls `_XFlush` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=unknown, a2=unknown, a3=a1 at entry (arg1) (`jalr` at 0x2166944).
  At `beq` at 0x216675c (target 0x2166928), taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0 and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  At `beq` at 0x2166778 (target 0x216678c), taken when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `bne` at 0x216679c (target 0x2166940), taken when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+36) (unsigned) and falls through when t8(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= t9(=[[[[0x1028]:8+280]:8+312]:8+176]:8+36) (unsigned).
  At `beq` at 0x216683c (target 0x21668fc), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `bne` at 0x216685c (target 0x2166888), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `bne` at 0x2166878 (target 0x21668fc), taken when a2(=[[[0x1028]:8+280]:8+240]) != 0 and falls through when a2(=[[[0x1028]:8+280]:8+240]) == 0.
  At `beq` at 0x2166880 (target 0x21668fc), the branch is always taken.
  At `beq` at 0x21668b0 (target 0x21668d0), taken when (t1(?) & 0x3) == 0 and falls through when (t1(?) & 0x3) != 0.
  At `beq` at 0x2166900 (target 0x2166914), taken when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `beq` at 0x2166918 (target 0x216692c), taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0 and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  At `beq` at 0x216694c (target 0x21667a0), the branch is always taken.
  Returns v0 = ? (`jr` at 0x2166938).

- `glXGetCurrentDisplay` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216b288 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216b288-0x216b2e0 (88 bytes).
  Loads 8 bytes at abs 0x217c2e8 (`ld` at 0x216b29c).
  Loads 8 bytes at abs 0x1028 (`ld` at 0x216b2ac).
  Loads 8 bytes at [0x1028]:8 +0x118 (`ld` at 0x216b2b0).
  Loads 8 bytes at [[0x1028]:8+280]:8 +0x138 (`ld` at 0x216b2d0).
  Calls `__glXInitThread` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x216b2a4).
  At `bne` at 0x216b2bc (target 0x216b2cc), taken when a2(=[[0x1028]:8+280]:8) != 0 and falls through when a2(=[[0x1028]:8+280]:8) == 0.
  Returns v0 = 0x0, f0 = ret(__glXInitThread) (`jr` at 0x216b2c4).
  Returns v0 = [[[0x1028]:8+280]:8+312]:8, f0 = ret(__glXInitThread) (`jr` at 0x216b2d8).

- `glXGetFBConfigAttrib` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216b904 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216b904-0x216beec (1512 bytes).
  Loads 1 byte at a1 +0xa0 (`lbu` at 0x216b930).
  37 4-byte sw stores at a3, including `sw` at 0x216b934, `sw` at 0x216b99c, `sw` at 0x216b9e0.
  2 8-byte ldc1 loads at a1 +0xa8, including `ldc1` at 0x216b938, `ldc1` at 0x216be18.
  8 4-byte swc1 stores at a3, including `swc1` at 0x216b948, `swc1` at 0x216bbbc, `swc1` at 0x216bcac.
  Loads 4 bytes at a1 +0x10 (`lw` at 0x216b990).
  Loads 4 bytes at a1 +0x68 (`lw` at 0x216b9d4).
  Loads 4 bytes at a1 +0x40 (`lw` at 0x216ba28).
  Loads 4 bytes at a1 +0x98 (`lw` at 0x216ba6c).
  Loads 4 bytes at a1 +0x14 (`lw` at 0x216ba7c).
  Loads 4 bytes at a1 +0x94 (`lw` at 0x216bac0).
  2 4-byte lw loads at a1 +0x20, including `lw` at 0x216bafc, `lw` at 0x216bcb8.
  Loads 4 bytes at a1 (`lw` at 0x216bb34).
  Loads 4 bytes at a1 +0x9c (`lw` at 0x216bb5c).
  Loads 4 bytes at a1 +0x54 (`lw` at 0x216bb6c).
  Loads 8 bytes at a1 +0xc8 (`ldc1` at 0x216bbac).
  Loads 4 bytes at a1 +0x24 (`lw` at 0x216bbdc).
  Loads 4 bytes at a1 +0x5c (`lw` at 0x216bbfc).
  Loads 4 bytes at a1 +0x78 (`lw` at 0x216bc1c).
  Loads 4 bytes at a1 +0x34 (`lw` at 0x216bc44).
  Loads 4 bytes at a1 +0x8 (`lw` at 0x216bc64).
  Loads 4 bytes at a1 +0x70 (`lw` at 0x216bc74).
  Loads 8 bytes at a1 +0xb0 (`ldc1` at 0x216bc9c).
  Loads 4 bytes at a1 +0x58 (`lw` at 0x216bcd0).
  Loads 4 bytes at a1 +0x74 (`lw` at 0x216bce8).
  Loads 1 byte at a1 +0x4f (`lbu` at 0x216bd00).
  Loads 4 bytes at a1 +0x48 (`lw` at 0x216bd10).
  Loads 4 bytes at a1 +0x4 (`lw` at 0x216bd20).
  Loads 8 bytes at a1 +0xe0 (`ldc1` at 0x216bd4c).
  Loads 4 bytes at a1 +0x30 (`lw` at 0x216bd6c).
  Loads 4 bytes at a1 +0x2c (`lw` at 0x216bd88).
  Loads 4 bytes at a1 +0x18 (`lw` at 0x216bda0).
  Loads 4 bytes at a1 +0x1c (`lw` at 0x216bdb8).
  Loads 4 bytes at a1 +0x64 (`lw` at 0x216bdd0).
  Loads 1 byte at a1 +0x4e (`lbu` at 0x216bde0).
  Loads 4 bytes at a1 +0x3c (`lw` at 0x216bdf8).
  Loads 8 bytes at a1 +0xd0 (`ldc1` at 0x216be1c).
  Loads 4 bytes at a1 +0x28 (`lw` at 0x216be30).
  Loads 4 bytes at a1 +0x60 (`lw` at 0x216be40).
  Loads 4 bytes at a1 +0x7c (`lw` at 0x216be50).
  Loads 8 bytes at a1 +0xd8 (`ldc1` at 0x216be68).
  Loads 8 bytes at a1 +0xc0 (`ldc1` at 0x216be84).
  Loads 4 bytes at a1 +0x38 (`lw` at 0x216be98).
  Loads 4 bytes at a1 +0xc (`lw` at 0x216bea8).
  Loads 8 bytes at a1 +0xb8 (`ldc1` at 0x216beb8).
  Loads 4 bytes at a1 +0x90 (`lw` at 0x216becc).
  Loads 4 bytes at a1 +0x6c (`lw` at 0x216bedc).
  At `bne` at 0x216b908 (target 0x216b94c), taken when a2 < 0x28 (signed) and falls through when a2 >= 0x28 (signed).
  At `bne` at 0x216b914 (target 0x216ba7c), taken when a2 < 0x29 (signed) and falls through when a2 >= 0x29 (signed).
  At `bne` at 0x216b920 (target 0x216b9e4), taken when a2 < v0(=0x8028) (signed) and falls through when a2 >= v0(=0x8028) (signed).
  At `bne` at 0x216b928 (target 0x216ba8c), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0x216b94c (target 0x216b9a0), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0x216b958 (target 0x216bb6c), taken when a2 < 0xf (signed) and falls through when a2 >= 0xf (signed).
  At `bne` at 0x216b960 (target 0x216bb10), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0x216b96c (target 0x216bd20), taken when a2 < 0x24 (signed) and falls through when a2 >= 0x24 (signed).
  At `bne` at 0x216b974 (target 0x216bc54), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0x216b980 (target 0x216bea8), taken when a2 < 0x27 (signed) and falls through when a2 >= 0x27 (signed).
  At `bne` at 0x216b988 (target 0x216ba40), taken when a2 != a7(=0x27) and falls through when a2 == a7(=0x27).
  At `bne` at 0x216b9a0 (target 0x216ba48), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0x216b9a8 (target 0x216bc74), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `bne` at 0x216b9b0 (target 0x216bc0c), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0x216b9bc (target 0x216be50), taken when a2 < 0xc (signed) and falls through when a2 >= 0xc (signed).
  At `bne` at 0x216b9c4 (target 0x216bdc8), taken when t3(?) != 0 and falls through when t3(?) == 0.
  At `beq` at 0x216b9cc (target 0x216ba40), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x216b9ec (target 0x216bad0), taken when a2 < v0(=0x8013) (signed) and falls through when a2 >= v0(=0x8013) (signed).
  At `beq` at 0x216b9f4 (target 0x216bd10), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0x216ba00 (target 0x216bc2c), taken when a2 < v0(=0x8018) (signed) and falls through when a2 >= v0(=0x8018) (signed).
  At `beq` at 0x216ba08 (target 0x216be98), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0x216ba14 (target 0x216bdf0), taken when a2 < v0(=0x801a) (signed) and falls through when a2 >= v0(=0x801a) (signed).
  At `bne` at 0x216ba20 (target 0x216ba40), taken when v0(=0x801a) < a2 (signed) and falls through when v0(=0x801a) >= a2 (signed).
  At `beq` at 0x216ba38 (target 0x216bedc), taken when a2 == a7(=0x2) and falls through when a2 != a7(=0x2).
  At `bne` at 0x216ba4c (target 0x216bb44), taken when a2 < 0x5 (signed) and falls through when a2 >= 0x5 (signed).
  At `bne` at 0x216ba54 (target 0x216bde0), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `bne` at 0x216ba5c (target 0x216bcf8), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `beq` at 0x216ba64 (target 0x216ba40), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x216ba90 (target 0x216bb7c), taken when a2 < v0(=0x802e) (signed) and falls through when a2 >= v0(=0x802e) (signed).
  At `beq` at 0x216ba98 (target 0x216be1c), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0x216baa8 (target 0x216bd30), taken when a2 < a5(=0x186a0) (signed) and falls through when a2 >= a5(=0x186a0) (signed).
  At `beq` at 0x216bab0 (target 0x216becc), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0x216bab8 (target 0x216ba40), taken when a2 != a4(=0x186a1) and falls through when a2 == a4(=0x186a1).
  At `bne` at 0x216bad8 (target 0x216bbc0), taken when a2 < v0(=0x8010) (signed) and falls through when a2 >= v0(=0x8010) (signed).
  At `beq` at 0x216bae0 (target 0x216be30), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `bne` at 0x216baec (target 0x216bd7c), taken when a2 < v0(=0x8012) (signed) and falls through when a2 >= v0(=0x8012) (signed).
  At `bne` at 0x216baf4 (target 0x216ba40), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `bne` at 0x216bb10 (target 0x216bbec), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0x216bb1c (target 0x216be40), taken when a2 < 0x12 (signed) and falls through when a2 >= 0x12 (signed).
  At `bne` at 0x216bb24 (target 0x216bdb0), taken when t8(?) != 0 and falls through when t8(?) == 0.
  At `beq` at 0x216bb2c (target 0x216ba40), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x216bb48 (target 0x216ba38), taken when a2 < 0x3 (signed) and falls through when a2 >= 0x3 (signed).
  At `beq` at 0x216bb54 (target 0x216ba40), taken when a2 >= 0x4 (signed) and falls through when a2 < 0x4 (signed).
  At `bne` at 0x216bb84 (target 0x216bc84), taken when a2 < v0(=0x802b) (signed) and falls through when a2 >= v0(=0x802b) (signed).
  At `beq` at 0x216bb8c (target 0x216beb8), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x216bb98 (target 0x216be7c), taken when a2 < v0(=0x802d) (signed) and falls through when a2 >= v0(=0x802d) (signed).
  At `bne` at 0x216bba4 (target 0x216ba40), taken when v0(=0x802d) < a2 (signed) and falls through when v0(=0x802d) >= a2 (signed).
  At `bne` at 0x216bbc8 (target 0x216bcb0), taken when a2 < v0(=0x800c) (signed) and falls through when a2 >= v0(=0x800c) (signed).
  At `bne` at 0x216bbd4 (target 0x216ba40), taken when v0(=0x800c) < a2 (signed) and falls through when v0(=0x800c) >= a2 (signed).
  At `bne` at 0x216bbec (target 0x216bcc8), taken when t3(?) != 0 and falls through when t3(?) == 0.
  At `beq` at 0x216bbf4 (target 0x216ba40), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x216bc0c (target 0x216bce0), taken when t9(?) != 0 and falls through when t9(?) == 0.
  At `beq` at 0x216bc14 (target 0x216ba40), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x216bc34 (target 0x216bd60), taken when a2 < v0(=0x8017) (signed) and falls through when a2 >= v0(=0x8017) (signed).
  At `bne` at 0x216bc3c (target 0x216ba40), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0x216bc54 (target 0x216bd98), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0x216bc5c (target 0x216ba40), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x216bc8c (target 0x216be08), taken when a2 < v0(=0x802a) (signed) and falls through when a2 >= v0(=0x802a) (signed).
  At `bne` at 0x216bc94 (target 0x216ba40), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `bne` at 0x216bcb0 (target 0x216ba40), taken when a2 != t1(=0x800b) and falls through when a2 == t1(=0x800b).
  At `bne` at 0x216bcc8 (target 0x216ba40), taken when a2 != t3(=0xf) and falls through when a2 == t3(=0xf).
  At `bne` at 0x216bce0 (target 0x216ba40), taken when a2 != t9(=0x9) and falls through when a2 == t9(=0x9).
  At `bne` at 0x216bcf8 (target 0x216ba40), taken when a2 != v0(=0x6) and falls through when a2 == v0(=0x6).
  At `bne` at 0x216bd38 (target 0x216be60), taken when a2 < v0(=0x8030) (signed) and falls through when a2 >= v0(=0x8030) (signed).
  At `bne` at 0x216bd44 (target 0x216ba40), taken when v0(=0x8030) < a2 (signed) and falls through when v0(=0x8030) >= a2 (signed).
  At `bne` at 0x216bd64 (target 0x216ba40), taken when a2 != a6(=0x8016) and falls through when a2 == a6(=0x8016).
  At `bne` at 0x216bd80 (target 0x216ba40), taken when a2 != t0(=0x8011) and falls through when a2 == t0(=0x8011).
  At `bne` at 0x216bd98 (target 0x216ba40), taken when a2 != t2(=0x24) and falls through when a2 == t2(=0x24).
  At `bne` at 0x216bdb0 (target 0x216ba40), taken when a2 != t8(=0x20) and falls through when a2 == t8(=0x20).
  At `bne` at 0x216bdc8 (target 0x216ba40), taken when a2 != at(=0xc) and falls through when a2 == at(=0xc).
  At `bne` at 0x216bdf0 (target 0x216ba40), taken when a2 != a0(=0x8019) and falls through when a2 == a0(=0x8019).
  At `bne` at 0x216be0c (target 0x216ba40), taken when a2 != a4(=0x8029) and falls through when a2 == a4(=0x8029).
  At `beq` at 0x216be14 (target 0x216b93c), the branch is always taken.
  At `bne` at 0x216be60 (target 0x216ba40), taken when a2 != t0(=0x802f) and falls through when a2 == t0(=0x802f).
  At `bne` at 0x216be7c (target 0x216ba40), taken when a2 != t1(=0x802c) and falls through when a2 == t1(=0x802c).
  Returns v0 = 0x0 (`jr` at 0x216b944).
  Returns v0 = 0x0 (`jr` at 0x216b998).
  Returns v0 = 0x0 (`jr` at 0x216b9dc).
  Returns v0 = 0x0 (`jr` at 0x216ba30).
  Returns v0 = 0x2 (`jr` at 0x216ba40).
  Returns v0 = 0x0 (`jr` at 0x216ba74).
  Returns v0 = 0x0 (`jr` at 0x216ba84).
  Returns v0 = 0x0 (`jr` at 0x216bac8).
  Returns v0 = 0x0 (`jr` at 0x216bb08).
  Returns v0 = 0x0 (`jr` at 0x216bb3c).
  Returns v0 = 0x0 (`jr` at 0x216bb64).
  Returns v0 = 0x0 (`jr` at 0x216bb74).
  Returns v0 = 0x0 (`jr` at 0x216bbb8).
  Returns v0 = 0x0 (`jr` at 0x216bbe4).
  Returns v0 = 0x0 (`jr` at 0x216bc04).
  Returns v0 = 0x0 (`jr` at 0x216bc24).
  Returns v0 = 0x0 (`jr` at 0x216bc4c).
  Returns v0 = 0x0 (`jr` at 0x216bc6c).
  Returns v0 = 0x0 (`jr` at 0x216bc7c).
  Returns v0 = 0x0 (`jr` at 0x216bca8).
  Returns v0 = 0x0 (`jr` at 0x216bcc0).
  Returns v0 = 0x0 (`jr` at 0x216bcd8).
  Returns v0 = 0x0 (`jr` at 0x216bcf0).
  Returns v0 = 0x0 (`jr` at 0x216bd08).
  Returns v0 = 0x0 (`jr` at 0x216bd18).
  Returns v0 = 0x0 (`jr` at 0x216bd28).
  Returns v0 = 0x0 (`jr` at 0x216bd58).
  Returns v0 = 0x0 (`jr` at 0x216bd74).
  Returns v0 = 0x0 (`jr` at 0x216bd90).
  Returns v0 = 0x0 (`jr` at 0x216bda8).
  Returns v0 = 0x0 (`jr` at 0x216bdc0).
  Returns v0 = 0x0 (`jr` at 0x216bdd8).
  Returns v0 = 0x0 (`jr` at 0x216bde8).
  Returns v0 = 0x0 (`jr` at 0x216be00).
  Returns v0 = 0x0 (`jr` at 0x216be28).
  Returns v0 = 0x0 (`jr` at 0x216be38).
  Returns v0 = 0x0 (`jr` at 0x216be48).
  Returns v0 = 0x0 (`jr` at 0x216be58).
  Returns v0 = 0x0 (`jr` at 0x216be74).
  Returns v0 = 0x0 (`jr` at 0x216be90).
  Returns v0 = 0x0 (`jr` at 0x216bea0).
  Returns v0 = 0x0 (`jr` at 0x216beb0).
  Returns v0 = 0x0 (`jr` at 0x216bec4).
  Returns v0 = 0x0 (`jr` at 0x216bed4).
  Returns v0 = 0x0 (`jr` at 0x216bee4).

- `glXGetFBConfigFltAttribSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216bf38 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216bf38-0x216c04c (276 bytes).
  Loads 8 bytes at abs 0x217bb40 (`ld` at 0x216bf58).
  Loads 8 bytes at table(0x21785f0) (`ld` at 0x216bf70).
  Loads 8 bytes at a1 +0xa8 (`ldc1` at 0x216bf7c).
  9 8-byte sdc1 stores at a3, including `sdc1` at 0x216bf88, `sdc1` at 0x216bfb8, `sdc1` at 0x216bfd8.
  Loads 8 bytes at abs 0x217c080 (`ld` at 0x216bf8c).
  Loads 8 bytes at a1 +0xe0 (`ldc1` at 0x216bfcc).
  Loads 8 bytes at a1 +0xd8 (`ldc1` at 0x216bfdc).
  Loads 8 bytes at a1 +0xd0 (`ldc1` at 0x216bfec).
  Loads 8 bytes at a1 +0xc8 (`ldc1` at 0x216bffc).
  Loads 8 bytes at a1 +0xc0 (`ldc1` at 0x216c00c).
  Loads 8 bytes at a1 +0xb8 (`ldc1` at 0x216c01c).
  Loads 8 bytes at a1 +0xb0 (`ldc1` at 0x216c034).
  Calls `glXGetFBConfigAttribSGIX` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-32 (`jalr` at 0x216bf98).
  At `beq` at 0x216bf68 (target 0x216bf8c), taken when v1(=a2-32809) >= 0x8 (unsigned) and falls through when v1(=a2-32809) < 0x8 (unsigned).
  At `beq` at 0x216bf84 (target 0x216bfbc), the branch is always taken.
  At `beq` at 0x216bfd4 (target 0x216bfbc), the branch is always taken.
  At `beq` at 0x216bfe4 (target 0x216bfbc), the branch is always taken.
  At `beq` at 0x216bff4 (target 0x216bfbc), the branch is always taken.
  At `beq` at 0x216c004 (target 0x216bfbc), the branch is always taken.
  At `beq` at 0x216c014 (target 0x216bfbc), the branch is always taken.
  Returns v0 = ? (`jr` at 0x216bfc4).
  Returns v0 = 0x0 (`jr` at 0x216c02c).
  Returns v0 = 0x0 (`jr` at 0x216c044).

- `glXChooseFBConfigWithFltSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216c498 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216c498-0x216d8b8 (5152 bytes).
  2 8-byte ldc1 loads at abs 0x217d170, including `ldc1` at 0x216c610, `ldc1` at 0x216c614.
  Loads 4 bytes at a2 (`lw` at 0x216c654).
  76 4-byte lw loads at ?, including `lw` at 0x216c6c4, `lw` at 0x216c6e0, `lw` at 0x216c6ec.
  4 8-byte ld loads at abs 0x217c2f0, including `ld` at 0x216c7a4, `ld` at 0x216c7dc, `ld` at 0x216c7f0.
  Loads 8 bytes at a3 (`ldc1` at 0x216c7a8).
  18 8-byte ldc1 loads at ?, including `ldc1` at 0x216c7c4, `ldc1` at 0x216c7e0, `ldc1` at 0x216c7f4.
  Loads 8 bytes at abs 0x217bb40 (`ld` at 0x216c800).
  Loads 8 bytes at table(0x2178630) (`ld` at 0x216c820).
  Loads 4 bytes at a0 +0xe4 (`lw` at 0x216c87c).
  Loads 8 bytes at ret(__glXInitialize) +0x30 (`ld` at 0x216c88c).
  Loads 8 bytes at ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x18 (`ld` at 0x216c898).
  Loads 4 bytes at ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x20 (`lw` at 0x216c8a0).
  Loads 4 bytes at [([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8 +0x48 (`lw` at 0x216c8d4).
  3 8-byte ld loads at abs 0x217bde8, including `ld` at 0x216c8dc, `ld` at 0x216d0f8, `ld` at 0x216d2c8.
  13 4-byte sw stores at a4, including `sw` at 0x216c920, `sw` at 0x216c9d4, `sw` at 0x216cb94.
  7 1-byte lbu loads at ?, including `lbu` at 0x216ca78, `lbu` at 0x216ce74, `lbu` at 0x216cf5c.
  Stores 8 bytes from s0 at ret(malloc) (`sd` at 0x216cd9c).
  16 8-byte sd stores at ?, including `sd` at 0x216d160, `sd` at 0x216d184, `sd` at 0x216d18c.
  7 8-byte ld loads at ?, including `ld` at 0x216d340, `ld` at 0x216d358, `ld` at 0x216d370.
  4 8-byte ld loads at abs 0x217bde0, including `ld` at 0x216d3a0, `ld` at 0x216d528, `ld` at 0x216d574.
  Loads 8 bytes at abs 0x217bad8 (`ld` at 0x216d7d0).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x216c85c).
  Calls `malloc` via got with a0=0x8, a1=unknown, a2=ret(__glXInitialize), a3=unknown, a7=a1 at entry (arg1) (`jalr` at 0x216cba0).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a1=unknown, a2=ret(__glXInitialize), a3=unknown, a7=a1 at entry (arg1) (`jalr` at 0x216d108).
  Calls `malloc` via got with a0=unknown, a1=unknown, a2=ret(malloc), a3=unknown (`jalr` at 0x216d2d4).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x216d52c).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x216d578).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x216d594).
  Calls `(unknown callee) [0x216c080]` via direct with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0x216d7f8).
  At `beq` at 0x216c64c (target 0x216c778), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0x216c658 (target 0x216cf74), taken when t0(=[a2]) == 0 and falls through when t0(=[a2]) != 0.
  At `beq` at 0x216c6b8 (target 0x216c6ec), the branch is always taken.
  At `beq` at 0x216c6d8 (target 0x216c7a0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x216c6e4 (target 0x216c7a0), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x216c6f4 (target 0x216c748), taken when v0(?) < 0x26 (signed) and falls through when v0(?) >= 0x26 (signed).
  At `bne` at 0x216c700 (target 0x216c6c0), taken when v0(?) < 0x27 (signed) and falls through when v0(?) >= 0x27 (signed).
  At `bne` at 0x216c70c (target 0x216ca04), taken when v0(?) < a2(=0x8029) (signed) and falls through when v0(?) >= a2(=0x8029) (signed).
  At `bne` at 0x216c718 (target 0x216ca8c), taken when a2(=0x8029) < v0(?) (signed) and falls through when a2(=0x8029) >= v0(?) (signed).
  At `beq` at 0x216c738 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216c74c (target 0x216c82c), taken when v0(?) < 0xd (signed) and falls through when v0(?) >= 0xd (signed).
  At `beq` at 0x216c758 (target 0x216ca34), taken when v0(?) >= 0xe (signed) and falls through when v0(?) < 0xe (signed).
  At `beq` at 0x216c770 (target 0x216c6d8), the branch is always taken.
  At `beq` at 0x216c7a0 (target 0x216c85c), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0x216c7b4 (target 0x216c858), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x216c7bc (target 0x216c7f4), the branch is always taken.
  At `beq` at 0x216c7d8 (target 0x216c85c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x216c7ec (target 0x216c85c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x216c818 (target 0x216c9cc), taken when v1(=table(-0x8029)) >= 0x8 (unsigned) and falls through when v1(=table(-0x8029)) < 0x8 (unsigned).
  At `bne` at 0x216c82c (target 0x216ca64), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0x216c838 (target 0x216cb18), taken when v0(?) >= 0x9 (signed) and falls through when v0(?) < 0x9 (signed).
  At `beq` at 0x216c850 (target 0x216c6d8), the branch is always taken.
  At `beq` at 0x216c864 (target 0x216cbc0), taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  At `bltz` at 0x216c870 (target 0x216cb68), taken when a7(=a1) < 0 (signed) and falls through when a7(=a1) >= 0 (signed).
  At `beq` at 0x216c884 (target 0x216cb68), taken when t0(=a1) >= t1(=[a0+228]) (signed) and falls through when t0(=a1) < t1(=[a0+228]) (signed).
  At `beq` at 0x216c89c (target 0x216cd54), taken when a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) == 0 and falls through when a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) != 0.
  At `beq` at 0x216c8a4 (target 0x216cd54), taken when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) == 0 and falls through when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) != 0.
  At `beq` at 0x216c8ac (target 0x216d0f4), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `blez` at 0x216c8b4 (target 0x216c8ec), taken when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed) and falls through when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  At `beq` at 0x216c8d8 (target 0x216cba0), taken when t8(?) == s2(?) and falls through when t8(?) != s2(?).
  At `bnel` at 0x216c8e4 (target 0x216c8d8), taken when s0(?) != s1(?) and falls through when s0(?) == s1(?); its branch-likely delay slot `lw t8,72(s0)` at 0x216c8e8 runs only when taken and is annulled on fall-through.
  At `beq` at 0x216c934 (target 0x216c7d8), the branch is always taken.
  At `beq` at 0x216c94c (target 0x216c7d8), the branch is always taken.
  At `beq` at 0x216c964 (target 0x216c7d8), the branch is always taken.
  At `beq` at 0x216c97c (target 0x216c7d8), the branch is always taken.
  At `beq` at 0x216c994 (target 0x216c7d8), the branch is always taken.
  At `beq` at 0x216c9ac (target 0x216c7d8), the branch is always taken.
  At `beq` at 0x216c9c4 (target 0x216c7d8), the branch is always taken.
  At `bne` at 0x216ca04 (target 0x216cabc), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0x216ca10 (target 0x216cc30), taken when a3(=0x8013) < v0(?) (signed) and falls through when a3(=0x8013) >= v0(?) (signed).
  At `beq` at 0x216ca2c (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216ca34 (target 0x216cae8), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `beq` at 0x216ca3c (target 0x216cc58), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x216ca5c (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216ca64 (target 0x216cb40), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0x216ca6c (target 0x216cd10), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x216ca84 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216ca8c (target 0x216cbf8), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `bne` at 0x216ca94 (target 0x216cda0), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x216cab4 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cabc (target 0x216cc8c), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0x216cac8 (target 0x216ce64), taken when t1(=0x8010) < v0(?) (signed) and falls through when t1(=0x8010) >= v0(?) (signed).
  At `beq` at 0x216cae0 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216caec (target 0x216ccbc), taken when v0(?) < 0x10 (signed) and falls through when v0(?) >= 0x10 (signed).
  At `beq` at 0x216caf8 (target 0x216ceac), taken when v0(?) >= 0x11 (signed) and falls through when v0(?) < 0x11 (signed).
  At `beq` at 0x216cb10 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cb18 (target 0x216cce4), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0x216cb20 (target 0x216cecc), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x216cb38 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cb44 (target 0x216cd38), taken when v0(?) < 0x3 (signed) and falls through when v0(?) >= 0x3 (signed).
  At `beq` at 0x216cb4c (target 0x216cdcc), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x216cb60 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cba8 (target 0x216cd8c), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beq` at 0x216cbb8 (target 0x216c9d8), the branch is always taken.
  At `bne` at 0x216cbfc (target 0x216ce04), taken when v0(?) < t3(=0x802c) (signed) and falls through when v0(?) >= t3(=0x802c) (signed).
  At `bne` at 0x216cc08 (target 0x216cfd0), taken when t3(=0x802c) < v0(?) (signed) and falls through when t3(=0x802c) >= v0(?) (signed).
  At `beq` at 0x216cc28 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cc30 (target 0x216ce34), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0x216cc38 (target 0x216cff8), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0x216cc50 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cc58 (target 0x216ce84), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0x216cc64 (target 0x216d018), taken when v0(?) >= 0x25 (signed) and falls through when v0(?) < 0x25 (signed).
  At `beq` at 0x216cc84 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cc8c (target 0x216ceec), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x216cc98 (target 0x216cdcc), taken when v0(?) >= 0x29 (signed) and falls through when v0(?) < 0x29 (signed).
  At `beq` at 0x216ccb4 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216ccbc (target 0x216cf10), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x216ccc4 (target 0x216cdcc), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x216ccdc (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cce8 (target 0x216cf34), taken when v0(?) < 0xa (signed) and falls through when v0(?) >= 0xa (signed).
  At `beq` at 0x216ccf0 (target 0x216cdcc), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x216cd08 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cd10 (target 0x216cf54), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x216cd18 (target 0x216cdcc), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x216cd30 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cd38 (target 0x216cdcc), taken when v0(?) != a0(=0x2) and falls through when v0(?) == a0(=0x2).
  At `beq` at 0x216cd4c (target 0x216c6d8), the branch is always taken.
  At `beq` at 0x216cd98 (target 0x216c9d8), the branch is always taken.
  At `bne` at 0x216cda0 (target 0x216cfa0), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0x216cdac (target 0x216d0d0), taken when t8(=0x186a0) < v0(?) (signed) and falls through when t8(=0x186a0) >= v0(?) (signed).
  At `beq` at 0x216cdc4 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216ce04 (target 0x216d03c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0x216ce0c (target 0x216cdcc), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0x216ce2c (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216ce38 (target 0x216d068), taken when v0(?) < ra(=0x8017) (signed) and falls through when v0(?) >= ra(=0x8017) (signed).
  At `bne` at 0x216ce44 (target 0x216cdcc), taken when ra(=0x8017) < v0(?) (signed) and falls through when ra(=0x8017) >= v0(?) (signed).
  At `beq` at 0x216ce5c (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216ce64 (target 0x216d088), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0x216ce6c (target 0x216cdcc), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0x216ce7c (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216ce84 (target 0x216d0ac), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x216ce8c (target 0x216cdcc), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x216cea4 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216ceac (target 0x216cdcc), taken when v0(?) != a5(=0x11) and falls through when v0(?) == a5(=0x11).
  At `beq` at 0x216cec4 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cecc (target 0x216cdcc), taken when v0(?) != a7(=0xc) and falls through when v0(?) == a7(=0xc).
  At `beq` at 0x216cee4 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216ceec (target 0x216cdcc), taken when v0(?) != v1(=0x27) and falls through when v0(?) == v1(=0x27).
  At `beq` at 0x216cf08 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cf14 (target 0x216cdcc), taken when v0(?) != a7(=0xe) and falls through when v0(?) == a7(=0xe).
  At `beq` at 0x216cf2c (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cf34 (target 0x216cdcc), taken when v0(?) != v1(=0x9) and falls through when v0(?) == v1(=0x9).
  At `beq` at 0x216cf4c (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cf54 (target 0x216cdcc), taken when v0(?) != a6(=0x6) and falls through when v0(?) == a6(=0x6).
  At `beq` at 0x216cf6c (target 0x216c6d8), the branch is always taken.
  At `beq` at 0x216cf98 (target 0x216c7a0), the branch is always taken.
  At `bne` at 0x216cfa0 (target 0x216d1d4), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0x216cfa8 (target 0x216cdcc), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0x216cfc8 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cfd0 (target 0x216cdcc), taken when v0(?) != a6(=0x802d) and falls through when v0(?) == a6(=0x802d).
  At `beq` at 0x216cff0 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216cff8 (target 0x216cdcc), taken when v0(?) != at(=0x8028) and falls through when v0(?) == at(=0x8028).
  At `beq` at 0x216d010 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216d018 (target 0x216cdcc), taken when v0(?) != a5(=0x25) and falls through when v0(?) == a5(=0x25).
  At `beq` at 0x216d034 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216d040 (target 0x216cdcc), taken when v0(?) != at(=0x802a) and falls through when v0(?) == at(=0x802a).
  At `beq` at 0x216d060 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216d068 (target 0x216cdcc), taken when v0(?) != a5(=0x8016) and falls through when v0(?) == a5(=0x8016).
  At `beq` at 0x216d080 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216d08c (target 0x216cdcc), taken when v0(?) != a7(=0x8011) and falls through when v0(?) == a7(=0x8011).
  At `beq` at 0x216d0a4 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216d0ac (target 0x216cdcc), taken when v0(?) != v1(=0x22) and falls through when v0(?) == v1(=0x22).
  At `beq` at 0x216d0c8 (target 0x216c6d8), the branch is always taken.
  At `bne` at 0x216d0d4 (target 0x216cdcc), taken when v0(?) != a7(=0x186a1) and falls through when v0(?) == a7(=0x186a1).
  At `beq` at 0x216d0ec (target 0x216c6d8), the branch is always taken.
  At `beq` at 0x216d110 (target 0x216d554), taken when v0(=ret(malloc)) == 0 and falls through when v0(=ret(malloc)) != 0.
  At `bne` at 0x216d118 (target 0x216d200), taken when s1(?) != 0 and falls through when s1(?) == 0.
  At `bne` at 0x216d120 (target 0x216d200), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `blez` at 0x216d128 (target 0x216d1c4), taken when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed) and falls through when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  At `beq` at 0x216d154 (target 0x216d170), taken when (s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) & 0x7) == 0 and falls through when (s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) & 0x7) != 0.
  At `bne` at 0x216d168 (target 0x216d15c), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0x216d174 (target 0x216d1c4), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bne` at 0x216d1bc (target 0x216d17c), taken when s0(?) != s1(?) and falls through when s0(?) == s1(?).
  At `beq` at 0x216d1cc (target 0x216c9d8), the branch is always taken.
  At `bne` at 0x216d1d8 (target 0x216cdcc), taken when v0(?) != a5(=0x802f) and falls through when v0(?) == a5(=0x802f).
  At `beq` at 0x216d1f8 (target 0x216c6d8), the branch is always taken.
  At `blez` at 0x216d200 (target 0x216d564), taken when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed) and falls through when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  At `beq` at 0x216d22c (target 0x216d24c), taken when (s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) & 0x3) == 0 and falls through when (s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) & 0x3) != 0.
  At `bne` at 0x216d244 (target 0x216d234), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0x216d250 (target 0x216d2c4), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `bne` at 0x216d298 (target 0x216d268), taken when s0(?) != s1(?) and falls through when s0(?) == s1(?).
  At `beq` at 0x216d2ec (target 0x216d574), taken when v0(=ret(malloc)) == 0 and falls through when v0(=ret(malloc)) != 0.
  At `blez` at 0x216d2f4 (target 0x216d520), taken when t2(?) <= 0 (signed) and falls through when t2(?) > 0 (signed).
  At `beq` at 0x216d320 (target 0x216d3a4), the branch is always taken.
  At `blez` at 0x216d328 (target 0x216d398), taken when v0(?) <= 0 (signed) and falls through when v0(?) > 0 (signed).
  At `beq` at 0x216d34c (target 0x216d398), taken when a1(?) == a2(?) and falls through when a1(?) != a2(?).
  At `beq` at 0x216d364 (target 0x216d398), taken when a1(?) == a2(?) and falls through when a1(?) != a2(?).
  At `beq` at 0x216d37c (target 0x216d398), taken when a1(?) == a2(?) and falls through when a1(?) != a2(?).
  At `bne` at 0x216d390 (target 0x216d338), taken when a1(?) != a2(?) and falls through when a1(?) == a2(?).
  At `beq` at 0x216d39c (target 0x216d52c), taken when s2(?) == t2(?) and falls through when s2(?) != t2(?).
  At `blez` at 0x216d3a4 (target 0x216d398), taken when a7(?) <= 0 (signed) and falls through when a7(?) > 0 (signed).
  At `beq` at 0x216d3b0 (target 0x216d8ac), the branch is always taken.
  At `beq` at 0x216d3b8 (target 0x216d41c), taken when a1(=one of 0x0, 0x1) == 0 and falls through when a1(=one of 0x0, 0x1) != 0.
  At `beq` at 0x216d3cc (target 0x216d328), taken when s0(?) == s1(?) and falls through when s0(?) != s1(?).
  At `bne` at 0x216d3d8 (target 0x216d3c8), taken when t9(?) != s2(?) and falls through when t9(?) == s2(?).
  At `bne` at 0x216d3e8 (target 0x216d3c8), taken when ra(?) < s3(?) (signed) and falls through when ra(?) >= s3(?) (signed).
  At `bne` at 0x216d3f4 (target 0x216d3c8), taken when at(?) != s4(?) and falls through when at(?) == s4(?).
  At `beq` at 0x216d3fc (target 0x216d3b8), taken when s5(=one of 0x0, 0x1) == 0 and falls through when s5(=one of 0x0, 0x1) != 0.
  At `beq` at 0x216d408 (target 0x216d3b8), taken when v1(?) == s8(?) and falls through when v1(?) != s8(?).
  At `beq` at 0x216d414 (target 0x216d3b8), the branch is always taken.
  At `bne` at 0x216d428 (target 0x216d3c8), taken when a1(?) != a3(?) and falls through when a1(?) == a3(?).
  At `bne` at 0x216d438 (target 0x216d3c8), taken when a2(?) < a4(?) (signed) and falls through when a2(?) >= a4(?) (signed).
  At `bne` at 0x216d450 (target 0x216d3c8), taken when a5(?) < a6(?) (signed) and falls through when a5(?) >= a6(?) (signed).
  At `bne` at 0x216d460 (target 0x216d3c8), taken when t3(?) < t9(?) (signed) and falls through when t3(?) >= t9(?) (signed).
  At `bne` at 0x216d470 (target 0x216d3c8), taken when ra(?) < at(?) (signed) and falls through when ra(?) >= at(?) (signed).
  At `bne` at 0x216d478 (target 0x216d3c8), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0x216d488 (target 0x216d3c8), taken when a2(?) < a4(?) (signed) and falls through when a2(?) >= a4(?) (signed).
  At `bne` at 0x216d498 (target 0x216d3c8), taken when a5(?) < a6(?) (signed) and falls through when a5(?) >= a6(?) (signed).
  At `bne` at 0x216d4a8 (target 0x216d3c8), taken when t3(?) < t9(?) (signed) and falls through when t3(?) >= t9(?) (signed).
  At `bne` at 0x216d4b8 (target 0x216d3c8), taken when ra(?) < at(?) (signed) and falls through when ra(?) >= at(?) (signed).
  At `bne` at 0x216d4c8 (target 0x216d3c8), taken when v1(?) < a1(?) (signed) and falls through when v1(?) >= a1(?) (signed).
  At `bne` at 0x216d4d8 (target 0x216d3c8), taken when a2(?) < a4(?) (signed) and falls through when a2(?) >= a4(?) (signed).
  At `bne` at 0x216d4e8 (target 0x216d3c8), taken when a5(?) < a6(?) (unsigned) and falls through when a5(?) >= a6(?) (unsigned).
  At `bne` at 0x216d4f8 (target 0x216d3c8), taken when t3(?) < t9(?) (unsigned) and falls through when t3(?) >= t9(?) (unsigned).
  At `beq` at 0x216d500 (target 0x216d5b0), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0x216d510 (target 0x216d5b0), taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  At `beq` at 0x216d518 (target 0x216d5b0), the branch is always taken.
  At `blez` at 0x216d538 (target 0x216d590), taken when s6(?) <= 0 (signed) and falls through when s6(?) > 0 (signed).
  At `beq` at 0x216d54c (target 0x216c9d8), the branch is always taken.
  At `beq` at 0x216d55c (target 0x216c9d8), the branch is always taken.
  At `beq` at 0x216d56c (target 0x216d2c8), the branch is always taken.
  At `beq` at 0x216d588 (target 0x216c9d8), the branch is always taken.
  At `beq` at 0x216d5a8 (target 0x216c9d8), the branch is always taken.
  At `bne` at 0x216d5b0 (target 0x216d3c8), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `bne` at 0x216d5bc (target 0x216d3c8), taken when a5(?) != a6(?) and falls through when a5(?) == a6(?).
  At `beq` at 0x216d5c4 (target 0x216d5e0), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `beq` at 0x216d5d0 (target 0x216d5e4), taken when t9(?) == ra(?) and falls through when t9(?) != ra(?).
  At `beq` at 0x216d5d8 (target 0x216d5e4), the branch is always taken.
  At `bne` at 0x216d5e4 (target 0x216d3c8), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216d5ec (target 0x216d608), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x216d5fc (target 0x216d608), taken when v1(?) == a1(?) and falls through when v1(?) != a1(?).
  At `bne` at 0x216d608 (target 0x216d3c8), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216d610 (target 0x216d628), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x216d620 (target 0x216d3c8), taken when a4(?) != a5(?) and falls through when a4(?) == a5(?).
  At `beq` at 0x216d628 (target 0x216d644), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x216d638 (target 0x216d644), taken when t3(?) == t9(?) and falls through when t3(?) != t9(?).
  At `bne` at 0x216d644 (target 0x216d3c8), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216d64c (target 0x216d668), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0x216d658 (target 0x216d66c), taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  At `beq` at 0x216d660 (target 0x216d66c), the branch is always taken.
  At `bne` at 0x216d66c (target 0x216d3c8), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216d674 (target 0x216d690), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x216d680 (target 0x216d694), taken when a2(?) == a4(?) and falls through when a2(?) != a4(?).
  At `beq` at 0x216d688 (target 0x216d694), the branch is always taken.
  At `bne` at 0x216d694 (target 0x216d3c8), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `bne` at 0x216d6a4 (target 0x216d3c8), taken when a5(?) != a6(?) and falls through when a5(?) == a6(?).
  At `bne` at 0x216d6b4 (target 0x216d3c8), taken when t3(?) != t9(?) and falls through when t3(?) == t9(?).
  At `beq` at 0x216d6bc (target 0x216d6d0), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0x216d6c8 (target 0x216d890), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0x216d6d0 (target 0x216d3c8), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `bne` at 0x216d6e0 (target 0x216d3c8), taken when v1(?) < a1(?) (signed) and falls through when v1(?) >= a1(?) (signed).
  At `bne` at 0x216d6f0 (target 0x216d3c8), taken when a2(?) < a4(?) (signed) and falls through when a2(?) >= a4(?) (signed).
  At `bne` at 0x216d700 (target 0x216d3c8), taken when a5(?) < a6(?) (signed) and falls through when a5(?) >= a6(?) (signed).
  At `bne` at 0x216d70c (target 0x216d3c8), taken when t3(?) != t9(?) and falls through when t3(?) == t9(?).
  At `bc1t` at 0x216d720 (target 0x216d3c8), taken when f5 < f6 (c.lt.d at 0x216d71c) and falls through when not (f5 < f6 (c.lt.d at 0x216d71c)).
  At `bc1t` at 0x216d730 (target 0x216d3c8), taken when FP condition code 1 is true and falls through when FP condition code 1 is false.
  At `bc1t` at 0x216d744 (target 0x216d3c8), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1t` at 0x216d754 (target 0x216d3c8), taken when FP condition code 3 is true and falls through when FP condition code 3 is false.
  At `bc1t` at 0x216d768 (target 0x216d3c8), taken when f13 < f14 (c.lt.d at 0x216d764) and falls through when not (f13 < f14 (c.lt.d at 0x216d764)).
  At `bc1t` at 0x216d778 (target 0x216d3c8), taken when FP condition code 1 is true and falls through when FP condition code 1 is false.
  At `bc1t` at 0x216d78c (target 0x216d3c8), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1t` at 0x216d79c (target 0x216d3c8), taken when FP condition code 3 is true and falls through when FP condition code 3 is false.
  At `beq` at 0x216d7b4 (target 0x216d8a4), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x216d824 (target 0x216d7c8), taken when a7(?) != a4(?) and falls through when a7(?) == a4(?).
  At `beq` at 0x216d834 (target 0x216d898), taken when a7(?) >= t1(?) (signed) and falls through when a7(?) < t1(?) (signed).
  At `beq` at 0x216d858 (target 0x216d870), taken when a1(?) == t8(?) and falls through when a1(?) != t8(?).
  At `bne` at 0x216d868 (target 0x216d850), taken when a1(?) != t8(?) and falls through when a1(?) == t8(?).
  At `beq` at 0x216d888 (target 0x216d3c8), the branch is always taken.
  At `beq` at 0x216d890 (target 0x216d6d0), the branch is always taken.
  At `beq` at 0x216d89c (target 0x216d870), the branch is always taken.
  At `beq` at 0x216d8a4 (target 0x216d870), the branch is always taken.
  At `beq` at 0x216d8b0 (target 0x216d3d8), the branch is always taken.
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0x216c91c).
  Returns v0 = ? (`jr` at 0x216c9fc).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0x216cb98).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0x216cbf0).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0x216cd84).
  Returns v0 = 0x0 (`jr` at 0x216cdfc).
  The instructions from 0x216c740 to 0x216c744 are not reached by any path from the entry, and their branches are not listed.

- `glXGetVisualFromFBConfig` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216da94 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216da94-0x216daf8 (100 bytes).
  Loads 4 bytes at a1 +0x20 (`lw` at 0x216da98).
  Loads 8 bytes at abs 0x217c2b0 (`ld` at 0x216dabc).
  Loads 4 bytes at a1 +0x24 (`lw` at 0x216dacc).
  Calls `__glXOverrideVisualGetVisualInfo` via got with a0=a0 at entry (arg0), a1=0x3, a2=sp-96, a3=sp-32, a5=[a1+32], a6=a1 at entry (arg1) (`jalr` at 0x216dad4).
  At `beq` at 0x216dab0 (target 0x216daec), taken when a5(=[a1+32]) == 0 and falls through when a5(=[a1+32]) != 0.
  Returns v0 = ret(__glXOverrideVisualGetVisualInfo), f0 = ret(__glXOverrideVisualGetVisualInfo) (`jr` at 0x216dae4).
  Returns v0 = 0x0 (`jr` at 0x216daf0).

- `glXChooseFBConfig` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216e25c (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216e25c-0x216fcf0 (6804 bytes).
  2 8-byte ldc1 loads at abs 0x217d170, including `ldc1` at 0x216e380, `ldc1` at 0x216e388.
  Loads 4 bytes at a2 (`lw` at 0x216e3d8).
  2 8-byte ldc1 loads at abs 0x217d178, including `ldc1` at 0x216e42c, `ldc1` at 0x216f180.
  78 4-byte lw loads at ?, including `lw` at 0x216e430, `lw` at 0x216e450, `lw` at 0x216e45c.
  Loads 8 bytes at abs 0x217c2f0 (`ld` at 0x216e64c).
  Loads 4 bytes at a0 +0xe4 (`lw` at 0x216e678).
  Loads 8 bytes at ret(__glXInitialize) +0x30 (`ld` at 0x216e688).
  Loads 8 bytes at ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x18 (`ld` at 0x216e698).
  Loads 4 bytes at ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x20 (`lw` at 0x216e69c).
  3 8-byte ld loads at abs 0x217bde8, including `ld` at 0x216e704, `ld` at 0x216f02c, `ld` at 0x216f130.
  12 4-byte sw stores at a3, including `sw` at 0x216e744, `sw` at 0x216e928, `sw` at 0x216e934.
  Stores 8 bytes from s0 at ret(malloc) (`sd` at 0x216eb70).
  5 1-byte lbu loads at ?, including `lbu` at 0x216ee28, `lbu` at 0x216eed4, `lbu` at 0x216f590.
  2 8-byte ld loads at abs 0x217bad8, including `ld` at 0x216f214, `ld` at 0x216f2e8.
  13 8-byte ld loads at ?, including `ld` at 0x216f338, `ld` at 0x216f34c, `ld` at 0x216f360.
  14 8-byte sd stores at ?, including `sd` at 0x216f33c, `sd` at 0x216f350, `sd` at 0x216f368.
  5 8-byte ld loads at abs 0x217bde0, including `ld` at 0x216f378, `ld` at 0x216f468, `ld` at 0x216f668.
  8 8-byte ldc1 loads at ?, including `ldc1` at 0x216fa54, `ldc1` at 0x216fa7c, `ldc1` at 0x216fbd8.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=a3 at entry (arg3), a7=a0 at entry (arg0) (`jalr` at 0x216e65c).
  Calls `malloc` via got with a0=0x8, a1=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32], a2=(a1 << 0x6), a3=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32], a5=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] (`jalr` at 0x216e95c).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a1=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32], a2=(a1 << 0x6), a3=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32], a5=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] (`jalr` at 0x216f034).
  Calls `malloc` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x216f140).
  Calls `(unknown callee) [0x216dcc4]` via direct with a0=unknown, a1=unknown, a2=0x0, a3=unknown (`bgezall` at 0x216f428).
  Calls `free` via got with a0=ret(malloc), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x216f46c).
  Calls `free` via got with a0=ret(malloc), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x216f66c).
  Calls `free` via got with a0=ret(malloc), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x216f6ec).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x216f70c).
  Calls `(unknown callee) [0x216dcc4]` via direct with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0x216fb2c).
  At `beq` at 0x216e3d0 (target 0x216e5b8), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0x216e3e4 (target 0x216ef2c), taken when a0(=[a2]) == 0 and falls through when a0(=[a2]) != 0.
  At `beq` at 0x216e428 (target 0x216e45c), the branch is always taken.
  At `beq` at 0x216e454 (target 0x216e788), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0x216e464 (target 0x216e4bc), taken when v0(?) < 0x27 (signed) and falls through when v0(?) >= 0x27 (signed).
  At `bne` at 0x216e470 (target 0x216e430), taken when v0(?) < 0x28 (signed) and falls through when v0(?) >= 0x28 (signed).
  At `bne` at 0x216e478 (target 0x216e530), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0x216e480 (target 0x216e798), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x216e4ac (target 0x216e450), the branch is always taken.
  At `bne` at 0x216e4c0 (target 0x216e4f8), taken when v0(?) < 0xd (signed) and falls through when v0(?) >= 0xd (signed).
  At `beq` at 0x216e4cc (target 0x216e578), taken when v0(?) >= 0xe (signed) and falls through when v0(?) < 0xe (signed).
  At `beq` at 0x216e4f0 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216e4f8 (target 0x216e748), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0x216e504 (target 0x216e89c), taken when v0(?) >= 0x9 (signed) and falls through when v0(?) < 0x9 (signed).
  At `beq` at 0x216e528 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216e538 (target 0x216e838), taken when v0(?) < a5(=0x8013) (signed) and falls through when v0(?) >= a5(=0x8013) (signed).
  At `bne` at 0x216e548 (target 0x216ea0c), taken when at(=0x8013) < v0(?) (signed) and falls through when at(=0x8013) >= v0(?) (signed).
  At `beq` at 0x216e570 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216e578 (target 0x216e864), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x216e584 (target 0x216ea3c), taken when v0(?) >= 0x23 (signed) and falls through when v0(?) < 0x23 (signed).
  At `beq` at 0x216e5b0 (target 0x216e450), the branch is always taken.
  At `beq` at 0x216e5f8 (target 0x216e7dc), taken when a6(?) == v0(=0x8000) and falls through when a6(?) != v0(=0x8000).
  At `beq` at 0x216e608 (target 0x216e7dc), taken when a6(?) == at(=-0x1) and falls through when a6(?) != at(=-0x1).
  At `beq` at 0x216e668 (target 0x216e98c), taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  At `bltz` at 0x216e670 (target 0x216e900), taken when a0(=a1) < 0 (signed) and falls through when a0(=a1) >= 0 (signed).
  At `beq` at 0x216e680 (target 0x216e900), taken when a0(=a1) >= v0(=[a0+228]) (signed) and falls through when a0(=a1) < v0(=[a0+228]) (signed).
  At `beq` at 0x216e6a4 (target 0x216eb18), taken when v1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) == 0 and falls through when v1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) != 0.
  At `beq` at 0x216e6b0 (target 0x216eb18), taken when a3(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) == 0 and falls through when a3(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) != 0.
  At `beq` at 0x216e6bc (target 0x216f028), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `blez` at 0x216e6c8 (target 0x216e710), taken when a5(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed) -> outside and falls through when a5(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  At `beq` at 0x216e700 (target 0x216e95c), taken when t8(?) == s2(?) and falls through when t8(?) != s2(?).
  At `bne` at 0x216e70c (target 0x216e6fc), taken when s0(?) != s1(?) and falls through when s0(?) == s1(?).
  At `bne` at 0x216e74c (target 0x216e8d4), taken when v0(?) < 0x5 (signed) and falls through when v0(?) >= 0x5 (signed).
  At `beq` at 0x216e758 (target 0x216eb80), taken when v0(?) >= 0x6 (signed) and falls through when v0(?) < 0x6 (signed).
  At `beq` at 0x216e764 (target 0x216f258), taken when v0(?) == t2(=-0x1) and falls through when v0(?) != t2(=-0x1).
  At `beq` at 0x216e780 (target 0x216e450), the branch is always taken.
  At `beq` at 0x216e790 (target 0x216e5ec), the branch is always taken.
  At `bne` at 0x216e79c (target 0x216e9c0), taken when v0(?) < at(=0x802e) (signed) and falls through when v0(?) >= at(=0x802e) (signed).
  At `bne` at 0x216e7a8 (target 0x216ebdc), taken when v1(=0x802e) < v0(?) (signed) and falls through when v1(=0x802e) >= v0(?) (signed).
  At `beq` at 0x216e7d4 (target 0x216e450), the branch is always taken.
  At `beq` at 0x216e830 (target 0x216e610), the branch is always taken.
  At `bne` at 0x216e83c (target 0x216ea84), taken when v0(?) < at(=0x8010) (signed) and falls through when v0(?) >= at(=0x8010) (signed).
  At `bne` at 0x216e848 (target 0x216ec90), taken when v1(=0x8010) < v0(?) (signed) and falls through when v1(=0x8010) >= v0(?) (signed).
  At `beq` at 0x216e85c (target 0x216e450), the branch is always taken.
  At `bne` at 0x216e864 (target 0x216eab0), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0x216e870 (target 0x216ed1c), taken when v0(?) >= 0x11 (signed) and falls through when v0(?) < 0x11 (signed).
  At `beq` at 0x216e894 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216e89c (target 0x216eae4), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x216e8a8 (target 0x216ed64), taken when v0(?) >= 0xc (signed) and falls through when v0(?) < 0xc (signed).
  At `beq` at 0x216e8cc (target 0x216e450), the branch is always taken.
  At `bne` at 0x216e8d4 (target 0x216ebb4), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0x216e8e0 (target 0x216e934), taken when v0(?) >= 0x4 (signed) and falls through when v0(?) < 0x4 (signed).
  At `beq` at 0x216e8f8 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216e96c (target 0x216eb48), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beq` at 0x216e984 (target 0x216e93c), the branch is always taken.
  At `bne` at 0x216e9c8 (target 0x216ec24), taken when v0(?) < a4(=0x802c) (signed) and falls through when v0(?) >= a4(=0x802c) (signed).
  At `bne` at 0x216e9d8 (target 0x216ee94), taken when a5(=0x802c) < v0(?) (signed) and falls through when a5(=0x802c) >= v0(?) (signed).
  At `beq` at 0x216ea04 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ea10 (target 0x216ec68), taken when v0(?) < a4(=0x8018) (signed) and falls through when v0(?) >= a4(=0x8018) (signed).
  At `bne` at 0x216ea20 (target 0x216eec8), taken when a5(=0x8018) < v0(?) (signed) and falls through when a5(=0x8018) >= v0(?) (signed).
  At `beq` at 0x216ea34 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ea3c (target 0x216ecd8), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0x216ea48 (target 0x216eef4), taken when v0(?) >= 0x26 (signed) and falls through when v0(?) < 0x26 (signed).
  At `beq` at 0x216ea7c (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ea8c (target 0x216ed8c), taken when v0(?) < at(=0x800b) (signed) and falls through when v0(?) >= at(=0x800b) (signed).
  At `bne` at 0x216ea98 (target 0x216e934), taken when v1(=0x800b) < v0(?) (signed) and falls through when v1(=0x800b) >= v0(?) (signed).
  At `beq` at 0x216eaa8 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216eab4 (target 0x216edc0), taken when v0(?) < 0xf (signed) and falls through when v0(?) >= 0xf (signed).
  At `beq` at 0x216eabc (target 0x216e934), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x216eadc (target 0x216e450), the branch is always taken.
  At `bne` at 0x216eae8 (target 0x216edec), taken when v0(?) < 0xa (signed) and falls through when v0(?) >= 0xa (signed).
  At `beq` at 0x216eaf0 (target 0x216e934), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x216eb10 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216eb80 (target 0x216ee18), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x216eb8c (target 0x216e934), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x216ebac (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ebb4 (target 0x216e934), taken when v0(?) != a4(=0x2) and falls through when v0(?) == a4(=0x2).
  At `beq` at 0x216ebd4 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ebe4 (target 0x216ee4c), taken when v0(?) < a4(=0x186a0) (signed) and falls through when v0(?) >= a4(=0x186a0) (signed).
  At `bne` at 0x216ebf4 (target 0x216f260), taken when a5(=0x186a0) < v0(?) (signed) and falls through when a5(=0x186a0) >= v0(?) (signed).
  At `beq` at 0x216ec1c (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ec28 (target 0x216ef6c), taken when v0(?) < at(=0x802b) (signed) and falls through when v0(?) >= at(=0x802b) (signed).
  At `bne` at 0x216ec34 (target 0x216e934), taken when v1(=0x802b) < v0(?) (signed) and falls through when v1(=0x802b) >= v0(?) (signed).
  At `beq` at 0x216ec60 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ec6c (target 0x216efa4), taken when v0(?) < at(=0x8017) (signed) and falls through when v0(?) >= at(=0x8017) (signed).
  At `bne` at 0x216ec78 (target 0x216e934), taken when v1(=0x8017) < v0(?) (signed) and falls through when v1(=0x8017) >= v0(?) (signed).
  At `beq` at 0x216ec88 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ec94 (target 0x216efc0), taken when v0(?) < a5(=0x8012) (signed) and falls through when v0(?) >= a5(=0x8012) (signed).
  At `bne` at 0x216eca4 (target 0x216e934), taken when at(=0x8012) < v0(?) (signed) and falls through when at(=0x8012) >= v0(?) (signed).
  At `beq` at 0x216ecd0 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ecdc (target 0x216efe0), taken when v0(?) < 0x24 (signed) and falls through when v0(?) >= 0x24 (signed).
  At `beq` at 0x216ece4 (target 0x216e934), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x216ed14 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ed1c (target 0x216f000), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0x216ed28 (target 0x216e934), taken when v0(?) >= 0x21 (signed) and falls through when v0(?) < 0x21 (signed).
  At `beq` at 0x216ed5c (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ed64 (target 0x216e934), taken when v0(?) != at(=0xc) and falls through when v0(?) == at(=0xc).
  At `beq` at 0x216ed84 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ed90 (target 0x216e934), taken when v0(?) != v1(=0x28) and falls through when v0(?) == v1(=0x28).
  At `beq` at 0x216edb8 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216edc4 (target 0x216e934), taken when v0(?) != a4(=0xe) and falls through when v0(?) == a4(=0xe).
  At `beq` at 0x216ede4 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216edf0 (target 0x216e934), taken when v0(?) != a5(=0x9) and falls through when v0(?) == a5(=0x9).
  At `beq` at 0x216ee10 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ee18 (target 0x216e934), taken when v0(?) != at(=0x6) and falls through when v0(?) == at(=0x6).
  At `beq` at 0x216ee44 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ee54 (target 0x216f28c), taken when v0(?) < at(=0x8030) (signed) and falls through when v0(?) >= at(=0x8030) (signed).
  At `bne` at 0x216ee60 (target 0x216e934), taken when v1(=0x8030) < v0(?) (signed) and falls through when v1(=0x8030) >= v0(?) (signed).
  At `beq` at 0x216ee8c (target 0x216e450), the branch is always taken.
  At `bne` at 0x216ee94 (target 0x216e934), taken when v0(?) != at(=0x802d) and falls through when v0(?) == at(=0x802d).
  At `beq` at 0x216eec0 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216eec8 (target 0x216e934), taken when v0(?) != a5(=0x8028) and falls through when v0(?) == a5(=0x8028).
  At `beq` at 0x216eeec (target 0x216e450), the branch is always taken.
  At `bne` at 0x216eef4 (target 0x216e934), taken when v0(?) != at(=0x26) and falls through when v0(?) == at(=0x26).
  At `beq` at 0x216ef24 (target 0x216e450), the branch is always taken.
  At `beq` at 0x216ef64 (target 0x216e5ec), the branch is always taken.
  At `bne` at 0x216ef70 (target 0x216e934), taken when v0(?) != v1(=0x802a) and falls through when v0(?) == v1(=0x802a).
  At `beq` at 0x216ef9c (target 0x216e450), the branch is always taken.
  At `bne` at 0x216efa8 (target 0x216e934), taken when v0(?) != at(=0x8016) and falls through when v0(?) == at(=0x8016).
  At `beq` at 0x216efb8 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216efc0 (target 0x216e934), taken when v0(?) != a4(=0x8011) and falls through when v0(?) == a4(=0x8011).
  At `beq` at 0x216efd8 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216efe4 (target 0x216e934), taken when v0(?) != a6(=0x23) and falls through when v0(?) == a6(=0x23).
  At `beq` at 0x216eff8 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216f000 (target 0x216e934), taken when v0(?) != at(=0x11) and falls through when v0(?) == at(=0x11).
  At `beq` at 0x216f020 (target 0x216e450), the branch is always taken.
  At `beq` at 0x216f040 (target 0x216f6cc), taken when v0(=ret(malloc)) == 0 and falls through when v0(=ret(malloc)) != 0.
  At `blez` at 0x216f04c (target 0x216f6dc), taken when a1(?) <= 0 (signed) and falls through when a1(?) > 0 (signed).
  At `beq` at 0x216f084 (target 0x216f0ac), taken when (t8(?) & 0x3) == 0 and falls through when (t8(?) & 0x3) != 0.
  At `bne` at 0x216f0a4 (target 0x216f08c), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0x216f0b0 (target 0x216f128), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x216f0fc (target 0x216f0cc), taken when a0(?) != s1(?) and falls through when a0(?) == s1(?).
  At `beq` at 0x216f154 (target 0x216f6e4), taken when v0(=ret(malloc)) == 0 and falls through when v0(=ret(malloc)) != 0.
  At `beq` at 0x216f15c (target 0x216f2c4), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `beq` at 0x216f164 (target 0x216f2c4), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `blez` at 0x216f174 (target 0x216f658), taken when a5(?) <= 0 (signed) and falls through when a5(?) > 0 (signed).
  At `beq` at 0x216f250 (target 0x216f51c), the branch is always taken.
  At `beq` at 0x216f258 (target 0x216e77c), the branch is always taken.
  At `bne` at 0x216f264 (target 0x216e934), taken when v0(?) != at(=0x186a1) and falls through when v0(?) == at(=0x186a1).
  At `beq` at 0x216f284 (target 0x216e450), the branch is always taken.
  At `bne` at 0x216f290 (target 0x216e934), taken when v0(?) != v1(=0x802f) and falls through when v0(?) == v1(=0x802f).
  At `beq` at 0x216f2bc (target 0x216e450), the branch is always taken.
  At `blez` at 0x216f2d4 (target 0x216f468), taken when a6(?) <= 0 (signed) and falls through when a6(?) > 0 (signed).
  At `beq` at 0x216f30c (target 0x216f37c), the branch is always taken.
  At `blez` at 0x216f318 (target 0x216f370), taken when t9(?) <= 0 (signed) and falls through when t9(?) > 0 (signed).
  At `beq` at 0x216f340 (target 0x216f36c), taken when a1(?) == a6(?) and falls through when a1(?) != a6(?).
  At `beq` at 0x216f354 (target 0x216f36c), taken when a1(?) == a6(?) and falls through when a1(?) != a6(?).
  At `bne` at 0x216f364 (target 0x216f330), taken when a1(?) != a6(?) and falls through when a1(?) == a6(?).
  At `beq` at 0x216f374 (target 0x216f46c), taken when s2(?) == t2(?) and falls through when s2(?) != t2(?).
  At `blez` at 0x216f380 (target 0x216f36c), taken when t3(?) <= 0 (signed) and falls through when t3(?) > 0 (signed).
  At `beq` at 0x216f390 (target 0x216fce4), the branch is always taken.
  At `beq` at 0x216f3b4 (target 0x216f3c8), taken when a1(?) == a2(?) and falls through when a1(?) != a2(?).
  At `bne` at 0x216f3c0 (target 0x216f3a8), taken when a1(?) != a2(?) and falls through when a1(?) == a2(?).
  At `beq` at 0x216f3d0 (target 0x216f314), taken when s0(?) == s1(?) and falls through when s0(?) != s1(?).
  At `bne` at 0x216f3dc (target 0x216f3cc), taken when a5(?) != s2(?) and falls through when a5(?) == s2(?).
  At `beq` at 0x216f3fc (target 0x216f3c8), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x216f440 (target 0x216f40c), taken when s3(?) != s4(?) and falls through when s3(?) == s4(?).
  At `bne` at 0x216f458 (target 0x216f39c), taken when s3(?) < ra(?) (signed) and falls through when s3(?) >= ra(?) (signed).
  At `beq` at 0x216f460 (target 0x216f3cc), the branch is always taken.
  At `beq` at 0x216f494 (target 0x216e93c), the branch is always taken.
  At `blez` at 0x216f49c (target 0x216f510), taken when a5(?) <= 0 (signed) and falls through when a5(?) > 0 (signed).
  At `beq` at 0x216f4c4 (target 0x216f510), taken when a1(?) == a6(?) and falls through when a1(?) != a6(?).
  At `beq` at 0x216f4dc (target 0x216f510), taken when a1(?) == a6(?) and falls through when a1(?) != a6(?).
  At `beq` at 0x216f4f4 (target 0x216f510), taken when a1(?) == a6(?) and falls through when a1(?) != a6(?).
  At `bne` at 0x216f508 (target 0x216f4b0), taken when a1(?) != a6(?) and falls through when a1(?) == a6(?).
  At `beq` at 0x216f518 (target 0x216f668), taken when s2(?) == v0(?) and falls through when s2(?) != v0(?).
  At `blez` at 0x216f520 (target 0x216f510), taken when v1(?) <= 0 (signed) and falls through when v1(?) > 0 (signed).
  At `beq` at 0x216f530 (target 0x216f550), the branch is always taken.
  At `beq` at 0x216f53c (target 0x216f57c), taken when a1(=one of 0x0, 0x1) == 0 and falls through when a1(=one of 0x0, 0x1) != 0.
  At `beq` at 0x216f548 (target 0x216f49c), taken when s0(?) == s1(?) and falls through when s0(?) != s1(?).
  At `bne` at 0x216f554 (target 0x216f544), taken when a1(?) != s2(?) and falls through when a1(?) == s2(?).
  At `beq` at 0x216f55c (target 0x216f53c), taken when s3(?) == s4(=-0x1) and falls through when s3(?) != s4(=-0x1).
  At `beq` at 0x216f56c (target 0x216f53c), taken when a4(?) >= s3(?) (signed) and falls through when a4(?) < s3(?) (signed).
  At `beq` at 0x216f574 (target 0x216f53c), the branch is always taken.
  At `bne` at 0x216f580 (target 0x216f544), taken when a5(?) != a2(?) and falls through when a5(?) == a2(?).
  At `beq` at 0x216f588 (target 0x216f5a0), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x216f594 (target 0x216f5a0), taken when a6(?) == a7(?) and falls through when a6(?) != a7(?).
  At `bne` at 0x216f5a0 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f5a8 (target 0x216f5c4), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0x216f5b8 (target 0x216f5c4), taken when t9(?) == ra(?) and falls through when t9(?) != ra(?).
  At `bne` at 0x216f5c4 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f5cc (target 0x216f5ec), taken when at(?) == s4(=-0x1) and falls through when at(?) != s4(=-0x1).
  At `beq` at 0x216f5e0 (target 0x216f5ec), taken when v0(?) >= v1(?) (signed) and falls through when v0(?) < v1(?) (signed).
  At `bne` at 0x216f5ec (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f5f4 (target 0x216f614), taken when a0(?) == s4(=-0x1) and falls through when a0(?) != s4(=-0x1).
  At `beq` at 0x216f608 (target 0x216f614), taken when a1(?) >= a4(?) (signed) and falls through when a1(?) < a4(?) (signed).
  At `bne` at 0x216f614 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f61c (target 0x216f638), taken when a5(?) == s4(=-0x1) and falls through when a5(?) != s4(=-0x1).
  At `bne` at 0x216f630 (target 0x216f544), taken when a6(?) < t0(?) (signed) and falls through when a6(?) >= t0(?) (signed).
  At `beq` at 0x216f638 (target 0x216f69c), taken when t9(?) == s4(=-0x1) and falls through when t9(?) != s4(=-0x1).
  At `beq` at 0x216f648 (target 0x216f6a0), taken when ra(?) >= at(?) (signed) and falls through when ra(?) < at(?) (signed).
  At `beq` at 0x216f650 (target 0x216f6a0), the branch is always taken.
  At `blez` at 0x216f684 (target 0x216f708), taken when s5(?) <= 0 (signed) and falls through when s5(?) > 0 (signed).
  At `beq` at 0x216f694 (target 0x216e93c), the branch is always taken.
  At `bne` at 0x216f6a0 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f6a8 (target 0x216f728), taken when v1(?) == s4(=-0x1) and falls through when v1(?) != s4(=-0x1).
  At `beq` at 0x216f6bc (target 0x216f728), taken when a0(?) >= a1(?) (signed) and falls through when a0(?) < a1(?) (signed).
  At `beq` at 0x216f6c4 (target 0x216f728), the branch is always taken.
  At `beq` at 0x216f6d4 (target 0x216e93c), the branch is always taken.
  At `beq` at 0x216f6dc (target 0x216f130), the branch is always taken.
  At `beq` at 0x216f700 (target 0x216e93c), the branch is always taken.
  At `beq` at 0x216f720 (target 0x216e93c), the branch is always taken.
  At `bne` at 0x216f728 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f730 (target 0x216f750), taken when a5(?) == s4(=-0x1) and falls through when a5(?) != s4(=-0x1).
  At `beq` at 0x216f744 (target 0x216f750), taken when a6(?) >= t0(?) (signed) and falls through when a6(?) < t0(?) (signed).
  At `bne` at 0x216f750 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f758 (target 0x216f778), taken when t9(?) == s4(=-0x1) and falls through when t9(?) != s4(=-0x1).
  At `beq` at 0x216f76c (target 0x216f778), taken when ra(?) >= at(?) (signed) and falls through when ra(?) < at(?) (signed).
  At `bne` at 0x216f778 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f780 (target 0x216f7a0), taken when v0(?) == s4(=-0x1) and falls through when v0(?) != s4(=-0x1).
  At `beq` at 0x216f794 (target 0x216f7a0), taken when v1(?) >= a0(?) (signed) and falls through when v1(?) < a0(?) (signed).
  At `bne` at 0x216f7a0 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f7a8 (target 0x216f7c8), taken when a1(?) == s4(=-0x1) and falls through when a1(?) != s4(=-0x1).
  At `beq` at 0x216f7b8 (target 0x216f7cc), taken when a4(?) >= a5(?) (signed) and falls through when a4(?) < a5(?) (signed).
  At `beq` at 0x216f7c0 (target 0x216f7cc), the branch is always taken.
  At `bne` at 0x216f7cc (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f7d4 (target 0x216f7f4), taken when a6(?) == s4(=-0x1) and falls through when a6(?) != s4(=-0x1).
  At `beq` at 0x216f7e4 (target 0x216f7f8), taken when t0(?) >= t9(?) (signed) and falls through when t0(?) < t9(?) (signed).
  At `beq` at 0x216f7ec (target 0x216f7f8), the branch is always taken.
  At `bne` at 0x216f7f8 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f800 (target 0x216f820), taken when ra(?) == s4(=-0x1) and falls through when ra(?) != s4(=-0x1).
  At `beq` at 0x216f810 (target 0x216f824), taken when at(?) >= v0(?) (signed) and falls through when at(?) < v0(?) (signed).
  At `beq` at 0x216f818 (target 0x216f824), the branch is always taken.
  At `bne` at 0x216f824 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f82c (target 0x216f848), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x216f838 (target 0x216f84c), taken when a0(?) == a1(?) and falls through when a0(?) != a1(?).
  At `beq` at 0x216f840 (target 0x216f84c), the branch is always taken.
  At `bne` at 0x216f84c (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f854 (target 0x216f870), taken when a4(?) == s4(=-0x1) and falls through when a4(?) != s4(=-0x1).
  At `beq` at 0x216f860 (target 0x216f874), taken when a5(?) == a6(?) and falls through when a5(?) != a6(?).
  At `beq` at 0x216f868 (target 0x216f874), the branch is always taken.
  At `bne` at 0x216f874 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f87c (target 0x216f898), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0x216f888 (target 0x216f89c), taken when t9(?) == ra(?) and falls through when t9(?) != ra(?).
  At `beq` at 0x216f890 (target 0x216f89c), the branch is always taken.
  At `bne` at 0x216f89c (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f8a4 (target 0x216f8c0), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x216f8b0 (target 0x216f8c4), taken when v0(?) == v1(?) and falls through when v0(?) != v1(?).
  At `beq` at 0x216f8b8 (target 0x216f8c4), the branch is always taken.
  At `bne` at 0x216f8c4 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f8cc (target 0x216f8e8), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x216f8dc (target 0x216f8e8), taken when a1(?) == a4(?) and falls through when a1(?) != a4(?).
  At `bne` at 0x216f8e8 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f8f0 (target 0x216f90c), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x216f8fc (target 0x216f910), taken when a6(?) == t0(?) and falls through when a6(?) != t0(?).
  At `beq` at 0x216f904 (target 0x216f910), the branch is always taken.
  At `bne` at 0x216f910 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f918 (target 0x216f934), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `beq` at 0x216f924 (target 0x216f938), taken when ra(?) == at(?) and falls through when ra(?) != at(?).
  At `beq` at 0x216f92c (target 0x216f938), the branch is always taken.
  At `bne` at 0x216f938 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f940 (target 0x216f95c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x216f950 (target 0x216f95c), taken when v1(?) == a0(?) and falls through when v1(?) != a0(?).
  At `bne` at 0x216f95c (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f964 (target 0x216f984), taken when a1(?) == s4(=-0x1) and falls through when a1(?) != s4(=-0x1).
  At `beq` at 0x216f974 (target 0x216f988), taken when a4(?) == a5(?) and falls through when a4(?) != a5(?).
  At `beq` at 0x216f97c (target 0x216f988), the branch is always taken.
  At `bne` at 0x216f988 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f990 (target 0x216f9b0), taken when a6(?) == s4(=-0x1) and falls through when a6(?) != s4(=-0x1).
  At `beq` at 0x216f9a0 (target 0x216f9b4), taken when t0(?) == t9(?) and falls through when t0(?) != t9(?).
  At `beq` at 0x216f9a8 (target 0x216f9b4), the branch is always taken.
  At `bne` at 0x216f9b4 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f9bc (target 0x216f9d0), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0x216f9c8 (target 0x216fa24), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0x216f9d0 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216f9d8 (target 0x216f9f8), taken when s4(=-0x1) == v0(?) and falls through when s4(=-0x1) != v0(?).
  At `beq` at 0x216f9e8 (target 0x216f9fc), taken when v1(?) >= a0(?) (unsigned) and falls through when v1(?) < a0(?) (unsigned).
  At `beq` at 0x216f9f0 (target 0x216f9fc), the branch is always taken.
  At `bne` at 0x216f9fc (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216fa04 (target 0x216fa2c), taken when s4(=-0x1) == a1(?) and falls through when s4(=-0x1) != a1(?).
  At `beq` at 0x216fa14 (target 0x216fa30), taken when a4(?) >= a5(?) (unsigned) and falls through when a4(?) < a5(?) (unsigned).
  At `beq` at 0x216fa1c (target 0x216fa30), the branch is always taken.
  At `beq` at 0x216fa24 (target 0x216f9d0), the branch is always taken.
  At `bne` at 0x216fa30 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216fa38 (target 0x216fabc), taken when s4(=-0x1) == a6(?) and falls through when s4(=-0x1) != a6(?).
  At `bne` at 0x216fa44 (target 0x216f544), taken when t0(?) != t9(?) and falls through when t0(?) == t9(?).
  At `beq` at 0x216fa4c (target 0x216fa6c), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `bc1f` at 0x216fa60 (target 0x216fa6c), taken when not (f12 < f13 (c.lt.d at 0x216fa5c)) and falls through when f12 < f13 (c.lt.d at 0x216fa5c).
  At `bne` at 0x216fa6c (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216fa74 (target 0x216fbc4), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bc1f` at 0x216fa84 (target 0x216fbc8), taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  At `beq` at 0x216fa8c (target 0x216fbc8), the branch is always taken.
  At `bne` at 0x216fab4 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216fad4 (target 0x216fbfc), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x216fb70 (target 0x216faf4), taken when a6(?) != a4(?) and falls through when a6(?) == a4(?).
  At `beq` at 0x216fb80 (target 0x216fbf4), taken when a6(?) >= ra(?) (signed) and falls through when a6(?) < ra(?) (signed).
  At `beq` at 0x216fba4 (target 0x216fbbc), taken when a1(?) == ra(?) and falls through when a1(?) != ra(?).
  At `bne` at 0x216fbb4 (target 0x216fb9c), taken when a1(?) != ra(?) and falls through when a1(?) == ra(?).
  At `beq` at 0x216fbbc (target 0x216f544), the branch is always taken.
  At `bne` at 0x216fbc8 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216fbd0 (target 0x216fc04), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bc1f` at 0x216fbe4 (target 0x216fc04), taken when FP condition code 2 is false and falls through when FP condition code 2 is true.
  At `beq` at 0x216fbec (target 0x216fc04), the branch is always taken.
  At `beq` at 0x216fbf4 (target 0x216fbbc), the branch is always taken.
  At `beq` at 0x216fbfc (target 0x216fbbc), the branch is always taken.
  At `bne` at 0x216fc04 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216fc0c (target 0x216fc2c), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bc1f` at 0x216fc1c (target 0x216fc30), taken when FP condition code 3 is false and falls through when FP condition code 3 is true.
  At `beq` at 0x216fc24 (target 0x216fc30), the branch is always taken.
  At `bne` at 0x216fc30 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216fc38 (target 0x216fc58), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bc1f` at 0x216fc4c (target 0x216fc58), taken when not (f20 < f21 (c.lt.d at 0x216fc48)) and falls through when f20 < f21 (c.lt.d at 0x216fc48).
  At `bne` at 0x216fc58 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216fc60 (target 0x216fc80), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `bc1f` at 0x216fc70 (target 0x216fc84), taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  At `beq` at 0x216fc78 (target 0x216fc84), the branch is always taken.
  At `bne` at 0x216fc84 (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216fc8c (target 0x216fcac), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `bc1f` at 0x216fca0 (target 0x216fcac), taken when FP condition code 2 is false and falls through when FP condition code 2 is true.
  At `bne` at 0x216fcac (target 0x216f544), taken when a1(=one of 0x0, 0x1) != 0 and falls through when a1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x216fcc0 (target 0x216fa94), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `bc1f` at 0x216fcd4 (target 0x216fa98), taken when FP condition code 3 is false and falls through when FP condition code 3 is true.
  At `beq` at 0x216fcdc (target 0x216fa98), the branch is always taken.
  At `beq` at 0x216fce8 (target 0x216f3dc), the branch is always taken.
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0x216e740).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0x216e92c).
  Returns v0 = ? (`jr` at 0x216e954).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0x216e9b8).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0x216eb40).
  Returns v0 = ret(malloc), f0 = ret(malloc) (`jr` at 0x216eb78).
  The instructions from 0x216e4b4 to 0x216e4b8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x216f398 to 0x216f398 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x216f538 to 0x216f538 are not reached by any path from the entry, and their branches are not listed.

- `glXGetFBConfigs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x216fcf0 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x216fcf0-0x216fe68 (376 bytes).
  Loads 8 bytes at abs 0x217c2f0 (`ld` at 0x216fd08).
  Loads 4 bytes at a0 +0xe4 (`lw` at 0x216fd30).
  Loads 8 bytes at ret(__glXInitialize) +0x30 (`ld` at 0x216fd58).
  Loads 8 bytes at abs 0x217bde8 (`ld` at 0x216fd60).
  Loads 4 bytes at ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x20 (`lw` at 0x216fd68).
  Loads 8 bytes at ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x18 (`ld` at 0x216fd6c).
  9 8-byte sd stores at ?, including `sd` at 0x216fdd0, `sd` at 0x216fdf8, `sd` at 0x216fe00.
  2 4-byte sw stores at a2, including `sw` at 0x216fe3c, `sw` at 0x216fe5c.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x216fd18).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a1=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8, a2=(a1 << 0x6), a3=unknown (`jalr` at 0x216fd78).
  At `beq` at 0x216fd20 (target 0x216fe48), taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  At `bltz` at 0x216fd28 (target 0x216fd40), taken when s0(=a1) < 0 (signed) and falls through when s0(=a1) >= 0 (signed).
  At `bne` at 0x216fd38 (target 0x216fd58), taken when s0(=a1) < v1(=[a0+228]) (signed) and falls through when s0(=a1) >= v1(=[a0+228]) (signed).
  At `beq` at 0x216fd8c (target 0x216fe5c), taken when v0(=ret(malloc)) == 0 and falls through when v0(=ret(malloc)) != 0.
  At `blez` at 0x216fd98 (target 0x216fe3c), taken when a7(?) <= 0 (signed) and falls through when a7(?) > 0 (signed).
  At `beq` at 0x216fdc4 (target 0x216fde0), taken when (a7(?) & 0x7) == 0 and falls through when (a7(?) & 0x7) != 0.
  At `bne` at 0x216fdd8 (target 0x216fdcc), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `beq` at 0x216fde4 (target 0x216fe38), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0x216fe30 (target 0x216fdf0), taken when a1(?) != a5(?) and falls through when a1(?) == a5(?).
  At `beq` at 0x216fe60 (target 0x216fd48), the branch is always taken.
  Returns v0 = 0x0 (`jr` at 0x216fd50).
  Returns v0 = ret(malloc), f0 = ret(malloc) (`jr` at 0x216fe40).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0x216fe54).

- `glXCreateNewContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21700ac (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x21700ac-0x2170100 (84 bytes).
  Loads 8 bytes at abs 0x217bad0 (`ld` at 0x21700cc).
  Calls `(unknown callee) [0x2167248]` via register-constant with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=0x0, a7=0x0 (`jalr` at 0x21700e8).
  Returns v0 = ret(0x2167248), f0 = ret(0x2167248) (`jr` at 0x21700f8).

- `glXQueryContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2170484 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2170484-0x2170560 (220 bytes).
  Loads 4 bytes at a1 +0x118 (`lw` at 0x21704a4).
  Loads 4 bytes at a1 +0x3c (`lw` at 0x21704f8).
  3 4-byte sw stores at a3, including `sw` at 0x2170500, `sw` at 0x2170508, `sw` at 0x217055c.
  Loads 8 bytes at a1 +0x58 (`ld` at 0x2170504).
  Loads 8 bytes at a1 +0x50 (`ld` at 0x2170518).
  Loads 8 bytes at abs 0x217bad8 (`ld` at 0x2170524).
  Loads 4 bytes at a1 +0x60 (`lw` at 0x2170554).
  Calls `(unknown callee) [0x2170100]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a1+80]:8 (`bgezall` at 0x2170534).
  At `beq` at 0x217049c (target 0x21704e4), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0x21704a8 (target 0x2170518), taken when v0(=[a1+280]) == 0 and falls through when v0(=[a1+280]) != 0.
  At `beq` at 0x21704bc (target 0x2170504), taken when s0(=a2) == v1(=0x8013) and falls through when s0(=a2) != v1(=0x8013).
  At `beq` at 0x21704c4 (target 0x2170554), taken when s0(=a2) == a0(=0x8011) and falls through when s0(=a2) != a0(=0x8011).
  At `beq` at 0x21704cc (target 0x21704f8), taken when s0(=a2) == a2(=0x800c) and falls through when s0(=a2) != a2(=0x800c).
  At `beq` at 0x21704fc (target 0x217050c), the branch is always taken.
  At `bne` at 0x217051c (target 0x21704b0), taken when a6(=[a1+80]:8) != 0 and falls through when a6(=[a1+80]:8) == 0.
  At `beq` at 0x2170544 (target 0x21704ac), taken when v0(=ret(0x2170100)) == 0 -> outside and falls through when v0(=ret(0x2170100)) != 0.
  At `beq` at 0x217054c (target 0x21704d8), the branch is always taken.
  At `beq` at 0x2170558 (target 0x217050c), the branch is always taken.
  Returns v0 = ? (`jr` at 0x21704dc).
  Returns v0 = 0x5 (`jr` at 0x21704f0).
  Returns v0 = 0x0 (`jr` at 0x2170510).

- `__glXGetReadDrawableSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2170a44 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2170a44-0x2170b50 (268 bytes).
  Loads 8 bytes at a0 +0x98 (`ld` at 0x2170a4c).
  Loads 8 bytes at [a0+152]:8 +0x158 (`ld` at 0x2170a50).
  Loads 4 bytes at [[a0+152]:8+344]:8 +0x40 (`lw` at 0x2170a5c).
  3 8-byte ld loads at abs 0x217c340, including `ld` at 0x2170a88, `ld` at 0x2170b18, `ld` at 0x2170b30.
  3 8-byte ld loads at [a0+152]:8 +0x138, including `ld` at 0x2170a90, `ld` at 0x2170b2c, `ld` at 0x2170b44.
  2 8-byte ld loads at abs 0x217beb0, including `ld` at 0x2170a98, `ld` at 0x2170aec.
  3 8-byte ld loads at [a0+152]:8 +0x140, including `ld` at 0x2170aa8, `ld` at 0x2170b20, `ld` at 0x2170b38.
  Stores 4 bytes from a3 at a1 (`sw` at 0x2170ad4).
  Stores 4 bytes from a1 at a2 (`sw` at 0x2170ae4).
  Loads 8 bytes at [[a0+152]:8+344]:8 +0x30 (`ld` at 0x2170afc).
  Calls `XGetGeometry` via got with a0=[[a0+152]:8+312]:8, a1=[[a0+152]:8+320]:8, a2=sp-96, a3=sp-88, a4=sp-84, a5=sp-80, a6=sp-76, a7=sp-72 (`jalr` at 0x2170ab4).
  Calls `XGetGeometry` via got with a0=[[a0+152]:8+312]:8, a1=[[[a0+152]:8+344]:8+48]:8, a2=sp-64, a3=sp-56, a4=sp-52, a5=sp-80, a6=sp-76, a7=sp-48 (`jalr` at 0x2170b08).
  Calls `glXQueryGLXPbufferSGIX` via got with a0=[[a0+152]:8+312]:8, a1=[[a0+152]:8+320]:8, a2=0x801d, a3=sp-80, a4=[[[a0+152]:8+344]:8+64] (`jalr` at 0x2170b28).
  Calls `glXQueryGLXPbufferSGIX` via got with a0=[[a0+152]:8+312]:8, a1=[[a0+152]:8+320]:8, a2=0x801e, a3=sp-76 (`jalr` at 0x2170b40).
  At `beq` at 0x2170a7c (target 0x2170b18), taken when a4(=[[[a0+152]:8+344]:8+64]) == at(=0x4) and falls through when a4(=[[[a0+152]:8+344]:8+64]) != at(=0x4).
  At `beq` at 0x2170a84 (target 0x2170b1c), taken when a4(=[[[a0+152]:8+344]:8+64]) == v1(=0x5) and falls through when a4(=[[[a0+152]:8+344]:8+64]) != v1(=0x5).
  At `beq` at 0x2170a8c (target 0x2170ae8), taken when a4(=[[[a0+152]:8+344]:8+64]) == a0(=0x6) and falls through when a4(=[[[a0+152]:8+344]:8+64]) != a0(=0x6).
  At `beq` at 0x2170b10 (target 0x2170ac0), the branch is always taken.
  At `beq` at 0x2170b48 (target 0x2170ac0), the branch is always taken.
  Returns v0 = ? (`jr` at 0x2170ae0).

- `__glx_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21747dc (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x21747dc-0x2174848 (108 bytes).
  Loads 8 bytes at abs 0x1028 (`ld` at 0x21747dc).
  Loads 8 bytes at [0x1028]:8 +0x118 (`ld` at 0x21747e0).
  Loads 8 bytes at [[0x1028]:8+280]:8 +0x8 (`ld` at 0x21747e4).
  Stores 4 bytes from a0 at [[[0x1028]:8+280]:8+8]:8 +0x4 (`sw` at 0x21747e8).
  Stores 2 bytes from a2 at [[[0x1028]:8+280]:8+8]:8 +0x2 (`sh` at 0x21747f0).
  Stores 2 bytes from a4 at [[[0x1028]:8+280]:8+8]:8 (`sh` at 0x21747f8).
  Loads 8 bytes at [[0x1028]:8+280]:8 +0x10 (`ld` at 0x21747fc).
  Stores 8 bytes from a1 at [[0x1028]:8+280]:8 +0x8 (`sd` at 0x2174820).
  Loads 8 bytes at abs 0x217c300 (`ld` at 0x2174830).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+8, a2=0x81d, a3=[[0x1028]:8+280]:8, a4=0x8 (`jalr` at 0x2174838).
  At `bne` at 0x217481c (target 0x2174830), taken when at(=[[[0x1028]:8+280]:8+16]:8) < a1(=[[[0x1028]:8+280]:8+8]:8+8) (unsigned) and falls through when at(=[[[0x1028]:8+280]:8+16]:8) >= a1(=[[[0x1028]:8+280]:8+8]:8+8) (unsigned).
  At `beq` at 0x2174840 (target 0x2174824), the branch is always taken.
  Returns v0 = ? (`jr` at 0x2174828).

- `__glim_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x228c720 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x228c720-0x228c7bc (156 bytes).
  Loads 4 bytes at abs 0x1030 (`lw` at 0x228c724).
  Loads 8 bytes at abs 0x1020 (`ld` at 0x228c728).
  2 8-byte ld loads at abs 0x2341d88, including `ld` at 0x228c754, `ld` at 0x228c7a8.
  Loads 8 bytes at abs 0x23412c8 (`ld` at 0x228c770).
  Loads 4 bytes at [0x1020]:8 +0x5f4 (`lw` at 0x228c778).
  Loads 4 bytes at ? (`lw` at 0x228c780).
  Loads 8 bytes at abs 0x2346860 (`ld` at 0x228c788).
  Loads 8 bytes at ? (`ld` at 0x228c790).
  Calls `__glSetError [0x227a070]` via register-constant with a0=0x500, a1=0x8024, a2=[0x1020]:8, a3=a3 at entry (arg3) (`jalr` at 0x228c758).
  Calls `__glElementsPerGroup [0x2256a60]` via register-constant with a0=[[0x1020]:8+1524], a1=0x8024, a2=[0x1020]:8, a3=a3 at entry (arg3) (`jalr` at 0x228c774).
  Calls `memset` via got with a0=unknown, a1=0x0, a2=unknown, a3=unknown (`jalr` at 0x228c798).
  Calls `__glSetError [0x227a070]` via register-constant with a0=0x502, a1=0x8024, a2=[0x1020]:8, a3=a3 at entry (arg3) (`jalr` at 0x228c7ac).
  At `beq` at 0x228c744 (target 0x228c7a8), taken when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  At `beq` at 0x228c74c (target 0x228c770), taken when a0 == a1(=0x8024) and falls through when a0 != a1(=0x8024).
  At `beq` at 0x228c7a0 (target 0x228c764), the branch is always taken.
  At `beq` at 0x228c7b4 (target 0x228c764), the branch is always taken.
  Returns v0 = ? (`jr` at 0x228c768).

- `__glResetArray` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x228cd00 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x228cd00-0x228d0c8 (968 bytes).
  8 8-byte ld loads at abs 0x23421c8, including `ld` at 0x228ce40, `ld` at 0x228ce54, `ld` at 0x228ce68.
  2 8-byte ld loads at abs 0x233f000, including `ld` at 0x228ce8c, `ld` at 0x228d0b0.
  Loads 8 bytes at table(0x2333350) (`ld` at 0x228ceb0).
  Calls `__glSetValue [0x228ccc0]` via direct with a0=unknown, a1=entry(0x2333350), a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0x228ce38).
  Calls `__glSetValue [0x228ccc0]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0x228ce4c).
  Calls `__glSetValue [0x228ccc0]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0x228ce60).
  Calls `__glSetValue [0x228ccc0]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0x228ce74).
  Calls `__glSetValue [0x228ccc0]` via direct with a0=unknown, a1=entry(0x2333350), a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0x228cec8).
  Calls `__glSetValue [0x228ccc0]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0x228cedc).
  Calls `__glSetValue [0x228ccc0]` via direct with a0=unknown, a1=entry(0x2333350), a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0x228cef8).
  Calls `__glSetValue [0x228ccc0]` via direct with a0=unknown, a1=entry(0x2333350), a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0x228cf14).
  At `beq` at 0x228cd4c (target 0x228cfac), taken when a5 == at(=0x1405) and falls through when a5 != at(=0x1405).
  At `beq` at 0x228cd58 (target 0x228d02c), taken when a5 == v1(=0x1406) and falls through when a5 != v1(=0x1406).
  At `beq` at 0x228cd60 (target 0x228cfb8), taken when a5(=0x1909) == a0 and falls through when a5(=0x1909) != a0.
  At `beq` at 0x228cd68 (target 0x228d038), taken when a0 == a4(=0x1906) and falls through when a0 != a4(=0x1906).
  At `beq` at 0x228cd70 (target 0x228d048), taken when a0 == a6(=0x190a) and falls through when a0 != a6(=0x190a).
  At `beq` at 0x228cd78 (target 0x228d058), taken when a0 == a7(=0x1907) and falls through when a0 != a7(=0x1907).
  At `beq` at 0x228cd80 (target 0x228d068), taken when a0 == t0(=0x1908) and falls through when a0 != t0(=0x1908).
  At `bne` at 0x228cd8c (target 0x228cf5c), taken when a1 < 0x1908 (unsigned) and falls through when a1 >= 0x1908 (unsigned).
  At `bne` at 0x228cd94 (target 0x228cdd4), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `bne` at 0x228cda4 (target 0x228cfc4), taken when a1 < a4(=0x8000) (unsigned) and falls through when a1 >= a4(=0x8000) (unsigned).
  At `beq` at 0x228cdb8 (target 0x228cdd0), taken when a4(=0x8000) >= a1 (unsigned) and falls through when a4(=0x8000) < a1 (unsigned).
  At `bne` at 0x228cdc0 (target 0x228d0a0), taken when t8(?) != 0 and falls through when t8(?) == 0.
  At `bne` at 0x228cdc8 (target 0x228cf28), taken when t9(?) != 0 and falls through when t9(?) == 0.
  At `beq` at 0x228cdd4 (target 0x228cf28), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0x228ce08 (target 0x228cf24), taken when a3 >= s6(=a4) (signed) and falls through when a3 < s6(=a4) (signed).
  At `beq` at 0x228ce28 (target 0x228d0b0), the branch is always taken.
  At `beq` at 0x228ce9c (target 0x228cf24), taken when s6(=a4) == s4(?) and falls through when s6(=a4) != s4(?).
  At `beq` at 0x228cea8 (target 0x228ce7c), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x228cee4 (target 0x228ce80), the branch is always taken.
  At `beq` at 0x228cf00 (target 0x228ce80), the branch is always taken.
  At `beq` at 0x228cf1c (target 0x228ce80), the branch is always taken.
  At `bne` at 0x228cf60 (target 0x228cf88), taken when a1 < 0x1905 (unsigned) and falls through when a1 >= 0x1905 (unsigned).
  At `beq` at 0x228cf6c (target 0x228cfe8), taken when a1 >= 0x1906 (unsigned) and falls through when a1 < 0x1906 (unsigned).
  At `beq` at 0x228cf78 (target 0x228cf24), taken when (a0(?) & 0x4) == 0 and falls through when (a0(?) & 0x4) != 0.
  At `beq` at 0x228cf80 (target 0x228cde4), the branch is always taken.
  At `bne` at 0x228cf88 (target 0x228d00c), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0x228cf90 (target 0x228cf28), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x228cf98 (target 0x228cf28), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0x228cfa4 (target 0x228cde4), the branch is always taken.
  At `beq` at 0x228cfb0 (target 0x228cd5c), the branch is always taken.
  At `beq` at 0x228cfbc (target 0x228cd88), the branch is always taken.
  At `bne` at 0x228cfc8 (target 0x228d078), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `beq` at 0x228cfd0 (target 0x228cf24), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `beq` at 0x228cfd8 (target 0x228cf28), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `beq` at 0x228cfe0 (target 0x228cde4), the branch is always taken.
  At `bne` at 0x228cfec (target 0x228d088), taken when t9(?) != 0 and falls through when t9(?) == 0.
  At `beq` at 0x228cff4 (target 0x228cf24), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x228cffc (target 0x228cf24), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0x228d004 (target 0x228cde4), the branch is always taken.
  At `bne` at 0x228d010 (target 0x228cf28), taken when a1 != at(=0x1903) and falls through when a1 == at(=0x1903).
  At `beq` at 0x228d01c (target 0x228cf24), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x228d024 (target 0x228cde4), the branch is always taken.
  At `beq` at 0x228d030 (target 0x228cd5c), the branch is always taken.
  At `beq` at 0x228d040 (target 0x228cd88), the branch is always taken.
  At `beq` at 0x228d050 (target 0x228cd88), the branch is always taken.
  At `beq` at 0x228d060 (target 0x228cd88), the branch is always taken.
  At `beq` at 0x228d070 (target 0x228cd88), the branch is always taken.
  At `bne` at 0x228d078 (target 0x228cf28), taken when a5(=0x1909) != a1 and falls through when a5(=0x1909) == a1.
  At `beq` at 0x228d080 (target 0x228d01c), the branch is always taken.
  At `bne` at 0x228d088 (target 0x228cf28), taken when a1 != t1(=0x1906) and falls through when a1 == t1(=0x1906).
  At `beq` at 0x228d090 (target 0x228cf28), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `beq` at 0x228d098 (target 0x228cde0), the branch is always taken.
  At `bne` at 0x228d0a0 (target 0x228cf28), taken when a1 != t3(=0x80e0) and falls through when a1 == t3(=0x80e0).
  At `beq` at 0x228d0a8 (target 0x228cffc), the branch is always taken.
  At `beq` at 0x228d0c0 (target 0x228cea8), the branch is always taken.
  Returns v0 = ? (`jr` at 0x228cf54).

- `__glResetMinmax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x228da90 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x228da90-0x228dbdc (332 bytes).
  Loads 4 bytes at a0 +0x658 (`lw` at 0x228da98).
  Loads 4 bytes at abs 0x2347844 (`lwc1` at 0x228daf4).
  10 4-byte swc1 stores at ?, including `swc1` at 0x228db04, `swc1` at 0x228db10, `swc1` at 0x228db1c.
  Loads 4 bytes at abs 0x2347848 (`lwc1` at 0x228db4c).
  At `beq` at 0x228daac (target 0x228dbb0), taken when a3(=[a0+1624]) == v1(=0x1906) and falls through when a3(=[a0+1624]) != v1(=0x1906).
  At `beq` at 0x228dab8 (target 0x228dbb0), taken when a3(=[a0+1624]) == v1(=0x1909) and falls through when a3(=[a0+1624]) != v1(=0x1909).
  At `beq` at 0x228dac4 (target 0x228dbbc), taken when a3(=[a0+1624]) == a0(=0x190a) and falls through when a3(=[a0+1624]) != a0(=0x190a).
  At `beq` at 0x228dad0 (target 0x228dbc4), taken when a3(=[a0+1624]) == a1(=0x1907) and falls through when a3(=[a0+1624]) != a1(=0x1907).
  At `beq` at 0x228dad8 (target 0x228dbcc), taken when a3(=[a0+1624]) == a2(=0x1908) and falls through when a3(=[a0+1624]) != a2(=0x1908).
  At `blez` at 0x228dae4 (target 0x228dbd4), taken when a4(?) <= 0 (signed) and falls through when a4(?) > 0 (signed).
  At `beq` at 0x228db08 (target 0x228db3c), taken when a0(?) == a3(?) and falls through when a0(?) != a3(?).
  At `beq` at 0x228db14 (target 0x228db3c), taken when a0(?) == a3(?) and falls through when a0(?) != a3(?).
  At `beq` at 0x228db20 (target 0x228db3c), taken when a0(?) == a3(?) and falls through when a0(?) != a3(?).
  At `beq` at 0x228db2c (target 0x228db3c), taken when a0(?) == a3(?) and falls through when a0(?) != a3(?).
  At `bne` at 0x228db34 (target 0x228db00), taken when a0(?) != a3(?) and falls through when a0(?) == a3(?).
  At `beq` at 0x228db50 (target 0x228dba8), taken when a4(?) >= a6(?) (signed) and falls through when a4(?) < a6(?) (signed).
  At `beq` at 0x228db64 (target 0x228db80), taken when (a5(?) & 0x3) == 0 and falls through when (a5(?) & 0x3) != 0.
  At `bne` at 0x228db74 (target 0x228db6c), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0x228db80 (target 0x228dba8), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0x228dba0 (target 0x228db90), taken when a0(?) != a3(?) and falls through when a0(?) == a3(?).
  At `beq` at 0x228dbb4 (target 0x228daf0), the branch is always taken.
  At `beq` at 0x228dbbc (target 0x228daf0), the branch is always taken.
  At `beq` at 0x228dbc4 (target 0x228daf0), the branch is always taken.
  At `beq` at 0x228dbcc (target 0x228daf0), the branch is always taken.
  At `beq` at 0x228dbd4 (target 0x228db40), the branch is always taken.
  Returns v0 = 0xb9428 (`jr` at 0x228dba8).

- `__glim_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x228dcc0 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x228dcc0-0x228dd30 (112 bytes).
  Loads 4 bytes at abs 0x1030 (`lw` at 0x228dcc4).
  2 8-byte ld loads at abs 0x2341d88, including `ld` at 0x228dcec, `ld` at 0x228dd1c.
  Loads 8 bytes at abs 0x23421f8 (`ld` at 0x228dd08).
  Loads 8 bytes at abs 0x1020 (`ld` at 0x228dd10).
  Calls `__glSetError [0x227a070]` via register-constant with a0=0x500, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x228dcf0).
  Calls `__glResetMinmax [0x228da90]` via direct with a0=[0x1020]:8, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0x228dd0c).
  Calls `__glSetError [0x227a070]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x228dd20).
  At `beq` at 0x228dcdc (target 0x228dd1c), taken when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  At `beq` at 0x228dce8 (target 0x228dd08), taken when a0 == a1(=0x802e) and falls through when a0 != a1(=0x802e).
  At `beq` at 0x228dd14 (target 0x228dcfc), the branch is always taken.
  At `beq` at 0x228dd28 (target 0x228dcfc), the branch is always taken.
  Returns v0 = ? (`jr` at 0x228dd00).

- `__glReadSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22b46a0 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22b46a0-0x22b4744 (164 bytes).
  Loads 8 bytes at a0 +0xf0 (`ld` at 0x22b46f0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=a2 at entry (arg2), a3=unknown (`jalr` at 0x22b4700).
  At `bltz` at 0x22b46d8 (target 0x22b4720), taken when s2(=a4-1) < 0 (signed) and falls through when s2(=a4-1) >= 0 (signed).
  At `bne` at 0x22b4710 (target 0x22b46f0), taken when s2(?) != s5(=-0x1) and falls through when s2(?) == s5(=-0x1).
  Returns v0 = 0x0 (`jr` at 0x22b473c).

- `DestroySoftContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e96c0 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e96c0-0x22e972c (108 bytes).
  Loads 8 bytes at abs 0x1020 (`ld` at 0x22e96cc).
  Loads 8 bytes at abs 0x2341978 (`ld` at 0x22e96dc).
  2 8-byte sd stores at abs 0x1020, including `sd` at 0x22e96f4, `sd` at 0x22e971c.
  Loads 8 bytes at abs 0x2341dc0 (`ld` at 0x22e96f8).
  Loads 8 bytes at abs 0x2341d70 (`ld` at 0x22e9704).
  Calls `__glFreeAttributeState [0x226fee0]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x22e96f0).
  Calls `__glFreeBufData [0x227a7b0]` via register-constant with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x22e96fc).
  Calls `__glDestroyContext [0x2279d00]` via register-constant with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x22e9708).
  Returns v0 = ret(__glDestroyContext), f0 = ret(__glDestroyContext) (`jr` at 0x22e9724).

- `__gllc_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22f63b0 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22f63b0-0x22f6424 (116 bytes).
  Loads 8 bytes at abs 0x1020 (`ld` at 0x22f63b4).
  Loads 8 bytes at abs 0x2340b28 (`ld` at 0x22f63c8).
  Loads 8 bytes at abs 0x2344710 (`ld` at 0x22f63f8).
  Loads 8 bytes at abs 0x2340b38 (`ld` at 0x22f6400).
  Stores 2 bytes from v1 at ret(__glDlistAllocOp2) +0x14 (`sh` at 0x22f6408).
  Stores 4 bytes from a3 at ret(__glDlistAllocOp2) +0x18 (`sw` at 0x22f6418).
  Calls `__glDlistAllocOp2 [0x223b310]` via register-constant with a0=[0x1020]:8, a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x22f63dc).
  Calls `__glDlistAppendOp [0x223b3a0]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0x22fc2b0, a3=a0 at entry (arg0) (`jalr` at 0x22f6414).
  At `bne` at 0x22f63e4 (target 0x22f63f8), taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  At `beq` at 0x22f641c (target 0x22f63ec), the branch is always taken.
  Returns v0 = ? (`jr` at 0x22f63f0).

- `__gllc_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22f6430 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22f6430-0x22f64a4 (116 bytes).
  Loads 8 bytes at abs 0x1020 (`ld` at 0x22f6434).
  Loads 8 bytes at abs 0x2340b28 (`ld` at 0x22f6448).
  Loads 8 bytes at abs 0x2344718 (`ld` at 0x22f6478).
  Loads 8 bytes at abs 0x2340b38 (`ld` at 0x22f6480).
  Stores 2 bytes from v1 at ret(__glDlistAllocOp2) +0x14 (`sh` at 0x22f6488).
  Stores 4 bytes from a3 at ret(__glDlistAllocOp2) +0x18 (`sw` at 0x22f6498).
  Calls `__glDlistAllocOp2 [0x223b310]` via register-constant with a0=[0x1020]:8, a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x22f645c).
  Calls `__glDlistAppendOp [0x223b3a0]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0x22fc300, a3=a0 at entry (arg0) (`jalr` at 0x22f6494).
  At `bne` at 0x22f6464 (target 0x22f6478), taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  At `beq` at 0x22f649c (target 0x22f646c), the branch is always taken.
  Returns v0 = ? (`jr` at 0x22f6470).

- `__gllc_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22f7740 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22f7740-0x22f77b4 (116 bytes).
  Loads 8 bytes at abs 0x1020 (`ld` at 0x22f7744).
  Loads 8 bytes at abs 0x2340b28 (`ld` at 0x22f7758).
  Loads 8 bytes at abs 0x23447f0 (`ld` at 0x22f7788).
  Loads 8 bytes at abs 0x2340b38 (`ld` at 0x22f7790).
  Stores 2 bytes from v1 at ret(__glDlistAllocOp2) +0x14 (`sh` at 0x22f7798).
  Stores 4 bytes from a3 at ret(__glDlistAllocOp2) +0x18 (`sw` at 0x22f77a8).
  Calls `__glDlistAllocOp2 [0x223b310]` via register-constant with a0=[0x1020]:8, a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x22f776c).
  Calls `__glDlistAppendOp [0x223b3a0]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0x22fcd50, a3=a0 at entry (arg0) (`jalr` at 0x22f77a4).
  At `bne` at 0x22f7774 (target 0x22f7788), taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  At `beq` at 0x22f77ac (target 0x22f777c), the branch is always taken.
  Returns v0 = ? (`jr` at 0x22f7780).

- `__glle_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22fc2b0 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22fc2b0-0x22fc2f4 (68 bytes).
  Loads 8 bytes at abs 0x16a0 (`ld` at 0x22fc2c4).
  Loads 4 bytes at a0 (`lw` at 0x22fc2d8).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x22fc2d4).
  Returns v0 = a0+8, f0 = ret(?) (`jr` at 0x22fc2ec).

- `__glle_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22fc300 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22fc300-0x22fc344 (68 bytes).
  Loads 8 bytes at abs 0x16a8 (`ld` at 0x22fc314).
  Loads 4 bytes at a0 (`lw` at 0x22fc328).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x22fc324).
  Returns v0 = a0+8, f0 = ret(?) (`jr` at 0x22fc33c).

- `__glle_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22fcd50 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22fcd50-0x22fcd94 (68 bytes).
  Loads 8 bytes at abs 0x18b0 (`ld` at 0x22fcd64).
  Loads 4 bytes at a0 (`lw` at 0x22fcd78).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x22fcd74).
  Returns v0 = a0+8, f0 = ret(?) (`jr` at 0x22fcd8c).

- `__glsplc_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2304af0 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2304af0-0x2304b44 (84 bytes).
  Loads 8 bytes at abs 0x233f498 (`ld` at 0x2304b04).
  Stores 4 bytes from v1 at ret(__glSPDlalloc) (`sw` at 0x2304b34).
  Calls `__glSPDlalloc [0x21b87b0]` via register-constant with a0=0x8, a1=0xce, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2304b14).
  At `beq` at 0x2304b1c (target 0x2304b38), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0x2304b30).
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0x2304b3c).

- `__glsplc_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2304b50 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2304b50-0x2304ba4 (84 bytes).
  Loads 8 bytes at abs 0x233f498 (`ld` at 0x2304b64).
  Stores 4 bytes from v1 at ret(__glSPDlalloc) (`sw` at 0x2304b94).
  Calls `__glSPDlalloc [0x21b87b0]` via register-constant with a0=0x8, a1=0xcf, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2304b74).
  At `beq` at 0x2304b7c (target 0x2304b98), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0x2304b90).
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0x2304b9c).

- `__glsplc_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2305a20 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2305a20-0x2305a74 (84 bytes).
  Loads 8 bytes at abs 0x233f498 (`ld` at 0x2305a34).
  Stores 4 bytes from v1 at ret(__glSPDlalloc) (`sw` at 0x2305a64).
  Calls `__glSPDlalloc [0x21b87b0]` via register-constant with a0=0x8, a1=0xf2, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2305a44).
  At `beq` at 0x2305a4c (target 0x2305a68), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0x2305a60).
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0x2305a6c).

- `__glce_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2310c80 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2310c80-0x2310cf4 (116 bytes).
  Loads 8 bytes at abs 0x16a0 (`ld` at 0x2310c80).
  Loads 8 bytes at abs 0x1020 (`ld` at 0x2310c98).
  2 8-byte ld loads at abs 0x2346fe0, including `ld` at 0x2310ca8, `ld` at 0x2310cc0.
  Loads 8 bytes at [0x1020]:8 +0x20f0 (`ld` at 0x2310cb0).
  3 8-byte sd stores at abs 0x16a0, including `sd` at 0x2310cbc, `sd` at 0x2310cd4, `sd` at 0x2310cf0.
  Loads 8 bytes at ? (`ld` at 0x2310cc8).
  Calls `glResetHistogramEXT` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2310cb8).
  Calls `glResetHistogramEXT` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x2310cd0).
  Returns v0 = ret(glResetHistogramEXT), f0 = ret(glResetHistogramEXT) (`jr` at 0x2310cec).

- `__glce_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2310d00 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2310d00-0x2310d74 (116 bytes).
  Loads 8 bytes at abs 0x16a8 (`ld` at 0x2310d00).
  Loads 8 bytes at abs 0x1020 (`ld` at 0x2310d18).
  2 8-byte ld loads at abs 0x2346fe8, including `ld` at 0x2310d28, `ld` at 0x2310d40.
  Loads 8 bytes at [0x1020]:8 +0x20f8 (`ld` at 0x2310d30).
  3 8-byte sd stores at abs 0x16a8, including `sd` at 0x2310d3c, `sd` at 0x2310d54, `sd` at 0x2310d70.
  Loads 8 bytes at ? (`ld` at 0x2310d48).
  Calls `glResetMinmaxEXT` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2310d38).
  Calls `glResetMinmaxEXT` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x2310d50).
  Returns v0 = ret(glResetMinmaxEXT), f0 = ret(glResetMinmaxEXT) (`jr` at 0x2310d6c).

- `__glce_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2312a80 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2312a80-0x2312af4 (116 bytes).
  Loads 8 bytes at abs 0x18b0 (`ld` at 0x2312a80).
  Loads 8 bytes at abs 0x1020 (`ld` at 0x2312a98).
  2 8-byte ld loads at abs 0x23471f8, including `ld` at 0x2312aa8, `ld` at 0x2312ac0.
  Loads 8 bytes at [0x1020]:8 +0x2300 (`ld` at 0x2312ab0).
  3 8-byte sd stores at abs 0x18b0, including `sd` at 0x2312abc, `sd` at 0x2312ad4, `sd` at 0x2312af0.
  Loads 8 bytes at ? (`ld` at 0x2312ac8).
  Calls `glReadInstrumentsSGIX` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2312ab8).
  Calls `glReadInstrumentsSGIX` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x2312ad0).
  Returns v0 = ret(glReadInstrumentsSGIX), f0 = ret(glReadInstrumentsSGIX) (`jr` at 0x2312aec).

- `glResetHistogram` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318cf8 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318cf8-0x2318d04 (12 bytes).
  Loads 8 bytes at abs 0x16a0 (`ld` at 0x2318cf8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318cfc).

- `glResetMinmax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318d04 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318d04-0x2318d10 (12 bytes).
  Loads 8 bytes at abs 0x16a8 (`ld` at 0x2318d04).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318d08).

- `glReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319010 (n64).
  Evidence grade: established.
  Exact build: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2319010-0x231901c (12 bytes).
  Loads 8 bytes at abs 0x18b0 (`ld` at 0x2319010).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2319014).

- `__glx_ReadPixels` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d25dc (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d25dc-0xd8d2868 (652 bytes).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd8d25ec).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd8d2610).
  Loads 4 bytes at [[0x1014]+276] +0xd8 (`lw` at 0xd8d2614).
  Loads 4 bytes at [[0x1014]+276] +0x4 (`lw` at 0xd8d2624).
  Loads 4 bytes at abs 0xd8f0304 (`lw` at 0xd8d2628).
  4 4-byte lw loads at [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8d2638, `lw` at 0xd8d2734, `lw` at 0xd8d2780.
  4 4-byte lw loads at [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8d2644, `lw` at 0xd8d265c, `lw` at 0xd8d2688.
  Loads 4 bytes at [[[[0x1014]+276]+216]+1232] (`lw` at 0xd8d2648).
  Loads 4 bytes at [[[0x1014]+276]+216] +0x70 (`lw` at 0xd8d2660).
  2 4-byte sw stores at [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8d2670, `sw` at 0xd8d268c.
  Loads 4 bytes at abs 0xd8f0088 (`lw` at 0xd8d2674).
  Stores 2 bytes from t0 at [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8d2694).
  2 1-byte sb stores at [[[[0x1014]+276]+216]+108], including `sb` at 0xd8d2698, `sb` at 0xd8d26c4.
  Loads 4 bytes at [[[0x1014]+276]+216] +0x60 (`lw` at 0xd8d269c).
  Stores 4 bytes from t2 at [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8d26b0).
  Stores 4 bytes from t4 at [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8d26b4).
  Loads 4 bytes at [[0x1014]+276] +0x110 (`lw` at 0xd8d26b8).
  Stores 1 byte from t6 at [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8d26bc).
  Loads 4 bytes at [[0x1014]+276] +0x3c (`lw` at 0xd8d26c8).
  Stores 4 bytes from t9 at [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8d26d4).
  Stores 4 bytes from t7 at [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8d26e0).
  Stores 4 bytes from t8 at [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd8d26e8).
  Stores 4 bytes from t0 at [[[[0x1014]+276]+216]+108] +0x10 (`sw` at 0xd8d26f0).
  Stores 4 bytes from t1 at [[[[0x1014]+276]+216]+108] +0x14 (`sw` at 0xd8d26f8).
  Stores 4 bytes from t2 at [[[[0x1014]+276]+216]+108] +0x18 (`sw` at 0xd8d2700).
  Stores 4 bytes from t3 at [[[[0x1014]+276]+216]+108] +0x1c (`sw` at 0xd8d2708).
  Loads 1 byte at [[0x1014]+276] +0x4c (`lbu` at 0xd8d270c).
  Stores 1 byte from zero at [[[[0x1014]+276]+216]+108] +0x21 (`sb` at 0xd8d2710).
  Stores 1 byte from t4 at [[[[0x1014]+276]+216]+108] +0x20 (`sb` at 0xd8d2714).
  Loads 4 bytes at abs 0xd8f009c (`lw` at 0xd8d2718).
  Loads 4 bytes at abs 0xd8f0084 (`lw` at 0xd8d2738).
  2 4-byte lw loads at abs 0xd8f0150, including `lw` at 0xd8d275c, `lw` at 0xd8d27bc.
  Loads 4 bytes at [[0x1014]+276] +0xb0 (`lw` at 0xd8d2770).
  Stores 4 bytes from t6 at [[0x1014]+276] +0xb0 (`sw` at 0xd8d2788).
  Loads 4 bytes at abs 0xd8f00c8 (`lw` at 0xd8d278c).
  Loads 4 bytes at abs 0xd8f0338 (`lw` at 0xd8d27d0).
  Loads 4 bytes at abs 0xd8f0078 (`lw` at 0xd8d2808).
  2 4-byte lw loads at [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8d2820, `lw` at 0xd8d2838.
  Loads 4 bytes at [[[[0x1014]+276]+216]+1232] +0x4 (`lw` at 0xd8d2824).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d2630).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d2650).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d267c).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0 (`jalr` at 0xd8d271c).
  Calls `malloc` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d2744).
  Calls `_XEatData` via got with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d2768).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=unknown, a3=unknown (`jalr` at 0xd8d279c).
  Calls `_XEatData` via got with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d27c4).
  Calls `__glXEmptyImage` via got with a0=[[0x1014]+276], a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=unknown (`jalr` at 0xd8d27f8).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d280c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d282c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d2848).
  At `beql` at 0xd8d2618 (target 0xd8d2858), taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd8d261c runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d2620 (target 0xd8d2854), taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  At `beql` at 0xd8d2640 (target 0xd8d2660), taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8d2644 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d266c (target 0xd8d2690), taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+36) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+36) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8d2670 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d2730 (target 0xd8d281c), taken when v1(?) == 0 and falls through when v1(?) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd8d2734 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d2754 (target 0xd8d278c), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `bnel` at 0xd8d277c (target 0xd8d281c), taken when t5(=[[[0x1014]+276]+176]) != 0 and falls through when t5(=[[[0x1014]+276]+176]) == 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd8d2780 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d2784 (target 0xd8d2818), the branch is always taken.
  At `beq` at 0xd8d27b4 (target 0xd8d27d0), taken when (a2(?) & 0x3) == 0 and falls through when (a2(?) & 0x3) != 0.
  At `beql` at 0xd8d281c (target 0xd8d283c), taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d2820 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d2840 (target 0xd8d2858), taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,52(sp)` at 0xd8d2844 runs only when taken and is annulled on fall-through.
  Returns v0 = ? (`jr` at 0xd8d2860).

- `__glXFindFBConfigFromVid` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d320c (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d320c-0xd8d32d4 (200 bytes).
  Loads 4 bytes at abs 0xd8f02fc (`lw` at 0xd8d321c).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd8d3258).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd8d3264).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd8d327c).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd8d3284).
  Loads 4 bytes at ? (`lw` at 0xd8d32a0).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d3230).
  At `bne` at 0xd8d3240 (target 0xd8d3250), taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  At `beq` at 0xd8d3248 (target 0xd8d32c4), the branch is always taken.
  At `bltz` at 0xd8d3250 (target 0xd8d3268), taken when a1 < 0 (signed) and falls through when a1 >= 0 (signed).
  At `bnel` at 0xd8d3260 (target 0xd8d3274), taken when a1 < t7(=[a0+136]) (signed) and falls through when a1 >= t7(=[a0+136]) (signed); its branch-likely delay slot `lw t8,32(v0)` at 0xd8d3264 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d3268 (target 0xd8d32c4), the branch is always taken.
  At `bnel` at 0xd8d3280 (target 0xd8d3294), taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0 and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0; its branch-likely delay slot `lw v0,16(a0)` at 0xd8d3284 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d3288 (target 0xd8d32c4), the branch is always taken.
  At `bltzl` at 0xd8d3298 (target 0xd8d32c4), taken when v0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]-1) < 0 (signed) and falls through when v0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]-1) >= 0 (signed); its branch-likely delay slot `or v0,zero,zero` at 0xd8d329c runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d32a8 (target 0xd8d32b8), taken when a2 != t0(?) and falls through when a2 == t0(?).
  At `beq` at 0xd8d32b0 (target 0xd8d32c4), the branch is always taken.
  At `bgez` at 0xd8d32b8 (target 0xd8d32a0), taken when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  Returns v0 = ?, f0 = ret(__glXInitialize) (`jr` at 0xd8d32cc).
  The instructions from 0xd8d3270 to 0xd8d3270 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d3290 to 0xd8d3290 are not reached by any path from the entry, and their branches are not listed.

- `__glXFindFBConfig` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d32d4 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d32d4-0xd8d339c (200 bytes).
  Loads 4 bytes at abs 0xd8f02fc (`lw` at 0xd8d32e4).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd8d3320).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd8d332c).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd8d3344).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd8d334c).
  Loads 4 bytes at ? (`lw` at 0xd8d3368).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d32f8).
  At `bne` at 0xd8d3308 (target 0xd8d3318), taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  At `beq` at 0xd8d3310 (target 0xd8d338c), the branch is always taken.
  At `bltz` at 0xd8d3318 (target 0xd8d3330), taken when a1 < 0 (signed) and falls through when a1 >= 0 (signed).
  At `bnel` at 0xd8d3328 (target 0xd8d333c), taken when a1 < t7(=[a0+136]) (signed) and falls through when a1 >= t7(=[a0+136]) (signed); its branch-likely delay slot `lw t8,32(v0)` at 0xd8d332c runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d3330 (target 0xd8d338c), the branch is always taken.
  At `bnel` at 0xd8d3348 (target 0xd8d335c), taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0 and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0; its branch-likely delay slot `lw v0,16(a0)` at 0xd8d334c runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d3350 (target 0xd8d338c), the branch is always taken.
  At `bltzl` at 0xd8d3360 (target 0xd8d338c), taken when v0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]-1) < 0 (signed) and falls through when v0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]-1) >= 0 (signed); its branch-likely delay slot `or v0,zero,zero` at 0xd8d3364 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d3370 (target 0xd8d3380), taken when a2 != t0(?) and falls through when a2 == t0(?).
  At `beq` at 0xd8d3378 (target 0xd8d338c), the branch is always taken.
  At `bgez` at 0xd8d3380 (target 0xd8d3368), taken when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  Returns v0 = ?, f0 = ret(__glXInitialize) (`jr` at 0xd8d3394).
  The instructions from 0xd8d3338 to 0xd8d3338 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d3358 to 0xd8d3358 are not reached by any path from the entry, and their branches are not listed.

- `glXGetCurrentDisplay` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d34b0 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d34b0-0xd8d34d4 (36 bytes).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd8d34b0).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd8d34b4).
  Loads 4 bytes at [[0x1014]+276] +0xd8 (`lw` at 0xd8d34bc).
  At `bnel` at 0xd8d34b8 (target 0xd8d34cc), taken when v1(=[[0x1014]+276]) != 0 and falls through when v1(=[[0x1014]+276]) == 0; its branch-likely delay slot `lw v0,216(v1)` at 0xd8d34bc runs only when taken and is annulled on fall-through.
  Returns v0 = 0x0 (`jr` at 0xd8d34c0).
  Returns v0 = [[[0x1014]+276]+216] (`jr` at 0xd8d34cc).
  The instructions from 0xd8d34c8 to 0xd8d34c8 are not reached by any path from the entry, and their branches are not listed.

- `glXGetFBConfigAttrib` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d34d4 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d34d4-0xd8d3888 (948 bytes).
  Loads 4 bytes at a1 +0x94 (`lw` at 0xd8d3508).
  2 4-byte lw loads at abs 0xd8eff24, including `lw` at 0xd8d3538, `lw` at 0xd8d3560.
  Loads 4 bytes at table(0xd8dd678) (`lw` at 0xd8d3544).
  Loads 4 bytes at table(0xd8dd710) (`lw` at 0xd8d356c).
  Loads 4 bytes at a1 +0x48 (`lw` at 0xd8d357c).
  38 4-byte sw stores at a3, including `sw` at 0xd8d3588, `sw` at 0xd8d3598, `sw` at 0xd8d35a8.
  Loads 4 bytes at a1 +0x6c (`lw` at 0xd8d358c).
  Loads 4 bytes at a1 +0x9c (`lw` at 0xd8d359c).
  Loads 1 byte at a1 +0x4e (`lbu` at 0xd8d35ac).
  Loads 1 byte at a1 +0x4f (`lbu` at 0xd8d35bc).
  Loads 4 bytes at a1 +0x98 (`lw` at 0xd8d35cc).
  Loads 4 bytes at a1 +0x70 (`lw` at 0xd8d35dc).
  Loads 4 bytes at a1 +0x74 (`lw` at 0xd8d35ec).
  Loads 4 bytes at a1 +0x78 (`lw` at 0xd8d35fc).
  Loads 4 bytes at a1 +0x7c (`lw` at 0xd8d360c).
  Loads 4 bytes at a1 +0x64 (`lw` at 0xd8d361c).
  Loads 4 bytes at a1 +0x68 (`lw` at 0xd8d362c).
  Loads 4 bytes at a1 +0x54 (`lw` at 0xd8d363c).
  Loads 4 bytes at a1 +0x58 (`lw` at 0xd8d364c).
  Loads 4 bytes at a1 +0x5c (`lw` at 0xd8d365c).
  Loads 4 bytes at a1 +0x60 (`lw` at 0xd8d366c).
  Loads 4 bytes at a1 +0x2c (`lw` at 0xd8d367c).
  Loads 4 bytes at a1 +0x28 (`lw` at 0xd8d368c).
  2 4-byte lw loads at a1 +0x20, including `lw` at 0xd8d369c, `lw` at 0xd8d3774.
  Loads 4 bytes at a1 (`lw` at 0xd8d36c4).
  Loads 4 bytes at a1 +0x1c (`lw` at 0xd8d36d4).
  Loads 4 bytes at a1 +0x4 (`lw` at 0xd8d36e4).
  Loads 4 bytes at a1 +0x18 (`lw` at 0xd8d36f4).
  Loads 4 bytes at a1 +0x8 (`lw` at 0xd8d3704).
  Loads 4 bytes at a1 +0xc (`lw` at 0xd8d3714).
  Loads 4 bytes at a1 +0x10 (`lw` at 0xd8d3724).
  Loads 4 bytes at a1 +0x14 (`lw` at 0xd8d3734).
  Loads 4 bytes at a1 +0x30 (`lw` at 0xd8d3744).
  Loads 4 bytes at a1 +0x34 (`lw` at 0xd8d3754).
  Loads 4 bytes at a1 +0x38 (`lw` at 0xd8d3764).
  Loads 4 bytes at a1 +0x90 (`lw` at 0xd8d3784).
  Loads 4 bytes at a1 +0x24 (`lw` at 0xd8d37a4).
  Loads 4 bytes at a1 +0x3c (`lw` at 0xd8d37b4).
  Loads 4 bytes at a1 +0x40 (`lw` at 0xd8d37c4).
  Loads 1 byte at a1 +0xa0 (`lbu` at 0xd8d37d4).
  Loads 8 bytes at a1 +0xa8 (`ldc1` at 0xd8d37dc).
  8 4-byte swc1 stores at a3, including `swc1` at 0xd8d37ec, `swc1` at 0xd8d3800, `swc1` at 0xd8d3814.
  Loads 8 bytes at a1 +0xb0 (`ldc1` at 0xd8d37f0).
  Loads 8 bytes at a1 +0xb8 (`ldc1` at 0xd8d3804).
  Loads 8 bytes at a1 +0xc0 (`ldc1` at 0xd8d3818).
  Loads 8 bytes at a1 +0xc8 (`ldc1` at 0xd8d382c).
  Loads 8 bytes at a1 +0xd0 (`ldc1` at 0xd8d3840).
  Loads 8 bytes at a1 +0xd8 (`ldc1` at 0xd8d3854).
  Loads 8 bytes at a1 +0xe0 (`ldc1` at 0xd8d3868).
  At `bne` at 0xd8d34e8 (target 0xd8d3514), taken when a2 < at(=0x8031) (signed) and falls through when a2 >= at(=0x8031) (signed).
  At `beq` at 0xd8d34f8 (target 0xd8d3784), taken when a2 == at(=0x186a0) and falls through when a2 != at(=0x186a0).
  At `beql` at 0xd8d3504 (target 0xd8d3798), taken when a2 == at(=0x186a1) and falls through when a2 != at(=0x186a1); its branch-likely delay slot `lw t1,148(a1)` at 0xd8d3508 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d350c (target 0xd8d3880), the branch is always taken.
  At `bne` at 0xd8d3518 (target 0xd8d3554), taken when a2 < 0x29 (signed) and falls through when a2 >= 0x29 (signed).
  At `beql` at 0xd8d3530 (target 0xd8d3880), taken when t6(=a2-32779) >= 0x26 (unsigned) and falls through when t6(=a2-32779) < 0x26 (unsigned); its branch-likely delay slot `addiu v0,zero,2` at 0xd8d3534 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d3558 (target 0xd8d3880), taken when t7(=a2-2) >= 0x27 (unsigned) and falls through when t7(=a2-2) < 0x27 (unsigned); its branch-likely delay slot `addiu v0,zero,2` at 0xd8d355c runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d36a8 (target 0xd8d36bc), taken when t6(=[a1+32]) == 0 and falls through when t6(=[a1+32]) != 0; its branch-likely delay slot `sw zero,0(a3)` at 0xd8d36ac runs only when taken and is annulled on fall-through.
  Returns v0 = 0x0 (`jr` at 0xd8d3584).
  Returns v0 = 0x0 (`jr` at 0xd8d3594).
  Returns v0 = 0x0 (`jr` at 0xd8d35a4).
  Returns v0 = 0x0 (`jr` at 0xd8d35b4).
  Returns v0 = 0x0 (`jr` at 0xd8d35c4).
  Returns v0 = 0x0 (`jr` at 0xd8d35d4).
  Returns v0 = 0x0 (`jr` at 0xd8d35e4).
  Returns v0 = 0x0 (`jr` at 0xd8d35f4).
  Returns v0 = 0x0 (`jr` at 0xd8d3604).
  Returns v0 = 0x0 (`jr` at 0xd8d3614).
  Returns v0 = 0x0 (`jr` at 0xd8d3624).
  Returns v0 = 0x0 (`jr` at 0xd8d3634).
  Returns v0 = 0x0 (`jr` at 0xd8d3644).
  Returns v0 = 0x0 (`jr` at 0xd8d3654).
  Returns v0 = 0x0 (`jr` at 0xd8d3664).
  Returns v0 = 0x0 (`jr` at 0xd8d3674).
  Returns v0 = 0x0 (`jr` at 0xd8d3684).
  Returns v0 = 0x0 (`jr` at 0xd8d3694).
  Returns v0 = 0x0 (`jr` at 0xd8d36b0).
  Returns v0 = 0x0 (`jr` at 0xd8d36bc).
  Returns v0 = 0x0 (`jr` at 0xd8d36cc).
  Returns v0 = 0x0 (`jr` at 0xd8d36dc).
  Returns v0 = 0x0 (`jr` at 0xd8d36ec).
  Returns v0 = 0x0 (`jr` at 0xd8d36fc).
  Returns v0 = 0x0 (`jr` at 0xd8d370c).
  Returns v0 = 0x0 (`jr` at 0xd8d371c).
  Returns v0 = 0x0 (`jr` at 0xd8d372c).
  Returns v0 = 0x0 (`jr` at 0xd8d373c).
  Returns v0 = 0x0 (`jr` at 0xd8d374c).
  Returns v0 = 0x0 (`jr` at 0xd8d375c).
  Returns v0 = 0x0 (`jr` at 0xd8d376c).
  Returns v0 = 0x0 (`jr` at 0xd8d377c).
  Returns v0 = 0x0 (`jr` at 0xd8d378c).
  Returns v0 = 0x0 (`jr` at 0xd8d379c).
  Returns v0 = 0x0 (`jr` at 0xd8d37ac).
  Returns v0 = 0x0 (`jr` at 0xd8d37bc).
  Returns v0 = 0x0 (`jr` at 0xd8d37cc).
  Returns v0 = 0x0 (`jr` at 0xd8d37e8).
  Returns v0 = 0x0 (`jr` at 0xd8d37fc).
  Returns v0 = 0x0 (`jr` at 0xd8d3810).
  Returns v0 = 0x0 (`jr` at 0xd8d3824).
  Returns v0 = 0x0 (`jr` at 0xd8d3838).
  Returns v0 = 0x0 (`jr` at 0xd8d384c).
  Returns v0 = 0x0 (`jr` at 0xd8d3860).
  Returns v0 = 0x0 (`jr` at 0xd8d3874).
  Returns v0 = 0x2 (`jr` at 0xd8d3880).
  The instructions from 0xd8d36b8 to 0xd8d36b8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d3794 to 0xd8d3794 are not reached by any path from the entry, and their branches are not listed.

- `glXGetFBConfigFltAttribSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d3888 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d3888-0xd8d3994 (268 bytes).
  Loads 4 bytes at abs 0xd8eff24 (`lw` at 0xd8d38bc).
  Loads 4 bytes at table(0xd8dd7ac) (`lw` at 0xd8d38c8).
  Loads 8 bytes at a1 +0xa8 (`ldc1` at 0xd8d38d8).
  9 8-byte sdc1 stores at a3, including `sdc1` at 0xd8d38e4, `sdc1` at 0xd8d38f4, `sdc1` at 0xd8d3904.
  Loads 8 bytes at a1 +0xb0 (`ldc1` at 0xd8d38e8).
  Loads 8 bytes at a1 +0xb8 (`ldc1` at 0xd8d38f8).
  Loads 8 bytes at a1 +0xc0 (`ldc1` at 0xd8d3908).
  Loads 8 bytes at a1 +0xc8 (`ldc1` at 0xd8d3918).
  Loads 8 bytes at a1 +0xd0 (`ldc1` at 0xd8d3928).
  Loads 8 bytes at a1 +0xd8 (`ldc1` at 0xd8d3938).
  Loads 8 bytes at a1 +0xe0 (`ldc1` at 0xd8d3948).
  Loads 4 bytes at abs 0xd8f01d0 (`lw` at 0xd8d3958).
  Calls `glXGetFBConfigAttribSGIX` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-4 (`jalr` at 0xd8d3960).
  At `beq` at 0xd8d38b4 (target 0xd8d3958), taken when t6(=a2-32809) >= 0x8 (unsigned) and falls through when t6(=a2-32809) < 0x8 (unsigned).
  At `beq` at 0xd8d38e0 (target 0xd8d3980), the branch is always taken.
  At `beq` at 0xd8d38f0 (target 0xd8d3980), the branch is always taken.
  At `beq` at 0xd8d3900 (target 0xd8d3980), the branch is always taken.
  At `beq` at 0xd8d3910 (target 0xd8d3980), the branch is always taken.
  At `beq` at 0xd8d3920 (target 0xd8d3980), the branch is always taken.
  At `beq` at 0xd8d3930 (target 0xd8d3980), the branch is always taken.
  At `beq` at 0xd8d3940 (target 0xd8d3980), the branch is always taken.
  At `beq` at 0xd8d3950 (target 0xd8d3980), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd8d398c).

- `orderFBConfigSGIXs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d3994 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d3994-0xd8d4d4c (5048 bytes).
  17 4-byte lw loads at abs 0xd8eff1c, including `lw` at 0xd8d39a4, `lw` at 0xd8d39e0, `lw` at 0xd8d3a04.
  Loads 4 bytes at a1 +0x1c (`lw` at 0xd8d39c4).
  Loads 4 bytes at a0 +0x1c (`lw` at 0xd8d39cc).
  Loads 4 bytes at a0 +0x78 (`lw` at 0xd8d39e4).
  Loads 4 bytes at a1 +0x78 (`lw` at 0xd8d39e8).
  Loads 4 bytes at a1 +0x74 (`lw` at 0xd8d3a00).
  Loads 4 bytes at a0 +0x74 (`lw` at 0xd8d3a08).
  Loads 4 bytes at a1 +0x70 (`lw` at 0xd8d3a20).
  Loads 4 bytes at a0 +0x70 (`lw` at 0xd8d3a28).
  Loads 4 bytes at a1 +0x7c (`lw` at 0xd8d3a40).
  Loads 4 bytes at a0 +0x7c (`lw` at 0xd8d3a48).
  Loads 4 bytes at a0 +0x6c (`lw` at 0xd8d3a84).
  Loads 4 bytes at a1 +0x6c (`lw` at 0xd8d3a88).
  Loads 1 byte at a0 +0x4e (`lbu` at 0xd8d3aac).
  Loads 1 byte at a1 +0x4e (`lbu` at 0xd8d3ab0).
  Loads 4 bytes at a0 +0x98 (`lw` at 0xd8d3ad4).
  Loads 4 bytes at a1 +0x98 (`lw` at 0xd8d3ad8).
  Loads 4 bytes at a0 +0x94 (`lw` at 0xd8d3afc).
  Loads 4 bytes at a1 +0x94 (`lw` at 0xd8d3b00).
  Loads 4 bytes at a0 +0x90 (`lw` at 0xd8d3b24).
  Loads 4 bytes at a1 +0x90 (`lw` at 0xd8d3b28).
  Loads 1 byte at a0 +0xa0 (`lbu` at 0xd8d3b48).
  Loads 1 byte at a1 +0xa0 (`lbu` at 0xd8d3b58).
  Loads 8 bytes at a1 +0xa8 (`ldc1` at 0xd8d3b64).
  Loads 8 bytes at a0 +0xa8 (`ldc1` at 0xd8d3b68).
  Loads 8 bytes at a0 +0xb0 (`ldc1` at 0xd8d3b6c).
  Loads 8 bytes at a1 +0xb0 (`ldc1` at 0xd8d3b70).
  Loads 8 bytes at a1 +0xb8 (`ldc1` at 0xd8d3b78).
  Loads 8 bytes at a0 +0xb8 (`ldc1` at 0xd8d3b84).
  Loads 8 bytes at a0 +0xc0 (`ldc1` at 0xd8d3b90).
  Loads 8 bytes at a1 +0xc0 (`ldc1` at 0xd8d3b98).
  Loads 8 bytes at a1 +0xc8 (`ldc1` at 0xd8d3ba0).
  Loads 8 bytes at a0 +0xc8 (`ldc1` at 0xd8d3ba8).
  Loads 8 bytes at a0 +0xd0 (`ldc1` at 0xd8d3bb0).
  Loads 8 bytes at a1 +0xd0 (`ldc1` at 0xd8d3bb8).
  Loads 8 bytes at a1 +0xd8 (`ldc1` at 0xd8d3bc0).
  Loads 8 bytes at a0 +0xd8 (`ldc1` at 0xd8d3bc8).
  Loads 8 bytes at a0 +0xe0 (`ldc1` at 0xd8d3bd0).
  Loads 8 bytes at a1 +0xe0 (`ldc1` at 0xd8d3bd8).
  Loads 4 bytes at a0 +0x64 (`lw` at 0xd8d3c1c).
  Loads 4 bytes at a1 +0x64 (`lw` at 0xd8d3c20).
  Loads 4 bytes at a0 +0x68 (`lw` at 0xd8d3c44).
  Loads 4 bytes at a1 +0x68 (`lw` at 0xd8d3c48).
  Loads 4 bytes at a0 +0x5c (`lw` at 0xd8d3c6c).
  Loads 4 bytes at a1 +0x5c (`lw` at 0xd8d3c70).
  Loads 4 bytes at a1 +0x58 (`lw` at 0xd8d3c88).
  Loads 4 bytes at a0 +0x58 (`lw` at 0xd8d3c90).
  Loads 4 bytes at a1 +0x54 (`lw` at 0xd8d3ca8).
  Loads 4 bytes at a0 +0x54 (`lw` at 0xd8d3cb0).
  Loads 4 bytes at a1 +0x60 (`lw` at 0xd8d3cc8).
  Loads 4 bytes at a0 +0x60 (`lw` at 0xd8d3cd0).
  Loads 4 bytes at a0 (`lw` at 0xd8d3d0c).
  Loads 4 bytes at a1 (`lw` at 0xd8d3d10).
  Calls `orderSmaller [0xd8c495c]` via register-constant with a0=[a0+28], a1=[a1+28], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d39c8).
  Calls `orderLarger [0xd8c4924]` via register-constant with a0=[a0+120], a1=[a1+120], a2=unknown, a3=unknown (`jalr` at 0xd8d39f0).
  Calls `orderLarger [0xd8c4924]` via register-constant with a0=[a0+116], a1=[a1+116], a2=unknown, a3=unknown (`jalr` at 0xd8d3a10).
  Calls `orderLarger [0xd8c4924]` via register-constant with a0=[a0+112], a1=[a1+112], a2=unknown, a3=unknown (`jalr` at 0xd8d3a30).
  Calls `orderLarger [0xd8c4924]` via register-constant with a0=[a0+124], a1=[a1+124], a2=unknown, a3=unknown (`jalr` at 0xd8d3a50).
  Calls `orderSmaller [0xd8c495c]` via register-constant with a0=[a0+108], a1=[a1+108], a2=unknown, a3=unknown (`jalr` at 0xd8d3a90).
  Calls `orderSmaller [0xd8c495c]` via register-constant with a0=[a0+78]:1, a1=[a1+78]:1, a2=unknown, a3=unknown (`jalr` at 0xd8d3ab8).
  Calls `orderSmaller [0xd8c495c]` via register-constant with a0=[a0+152], a1=[a1+152], a2=unknown, a3=unknown (`jalr` at 0xd8d3ae0).
  Calls `orderSmaller [0xd8c495c]` via register-constant with a0=[a0+148], a1=[a1+148], a2=unknown, a3=unknown (`jalr` at 0xd8d3b08).
  Calls `orderSmaller [0xd8c495c]` via register-constant with a0=[a0+144], a1=[a1+144], a2=unknown, a3=unknown (`jalr` at 0xd8d3b30).
  Calls `orderLarger [0xd8c4924]` via register-constant with a0=[a0+100], a1=[a1+100], a2=unknown, a3=unknown (`jalr` at 0xd8d3c28).
  Calls `orderSmaller [0xd8c495c]` via register-constant with a0=[a0+104], a1=[a1+104], a2=unknown, a3=unknown (`jalr` at 0xd8d3c50).
  Calls `orderLarger [0xd8c4924]` via register-constant with a0=[a0+92], a1=[a1+92], a2=unknown, a3=unknown (`jalr` at 0xd8d3c78).
  Calls `orderLarger [0xd8c4924]` via register-constant with a0=[a0+88], a1=[a1+88], a2=unknown, a3=unknown (`jalr` at 0xd8d3c98).
  Calls `orderLarger [0xd8c4924]` via register-constant with a0=[a0+84], a1=[a1+84], a2=unknown, a3=unknown (`jalr` at 0xd8d3cb8).
  Calls `orderLarger [0xd8c4924]` via register-constant with a0=[a0+96], a1=[a1+96], a2=unknown, a3=unknown (`jalr` at 0xd8d3cd8).
  Calls `orderSmaller [0xd8c495c]` via register-constant with a0=[a0], a1=[a1], a2=unknown, a3=unknown (`jalr` at 0xd8d3d18).
  At `beq` at 0xd8d39d0 (target 0xd8d39e0), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd8d39d8 (target 0xd8d3d38), the branch is always taken.
  At `beq` at 0xd8d3a70 (target 0xd8d3a80), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xd8d3a78 (target 0xd8d3d34), the branch is always taken.
  At `beq` at 0xd8d3a98 (target 0xd8d3aa8), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd8d3aa0 (target 0xd8d3d38), the branch is always taken.
  At `beq` at 0xd8d3ac0 (target 0xd8d3ad0), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd8d3ac8 (target 0xd8d3d38), the branch is always taken.
  At `beq` at 0xd8d3ae8 (target 0xd8d3af8), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd8d3af0 (target 0xd8d3d38), the branch is always taken.
  At `beq` at 0xd8d3b10 (target 0xd8d3b20), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd8d3b18 (target 0xd8d3d38), the branch is always taken.
  At `beq` at 0xd8d3b38 (target 0xd8d3b48), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd8d3b40 (target 0xd8d3d38), the branch is always taken.
  At `bne` at 0xd8d3b50 (target 0xd8d3c18), taken when v0(=0x1) != t1(=[a0+160]:1) and falls through when v0(=0x1) == t1(=[a0+160]:1).
  At `bne` at 0xd8d3b5c (target 0xd8d3c18), taken when v0(=0x1) != t2(=[a1+160]:1) and falls through when v0(=0x1) == t2(=[a1+160]:1).
  At `bc1t` at 0xd8d3bf0 (target 0xd8d3c18), taken when f0 == f2 (c.eq.d at 0xd8d3be8) and falls through when not (f0 == f2 (c.eq.d at 0xd8d3be8)).
  At `bc1f` at 0xd8d3c00 (target 0xd8d3c10), taken when not (f0 < f2 (c.lt.d at 0xd8d3bf8)) and falls through when f0 < f2 (c.lt.d at 0xd8d3bf8).
  At `beq` at 0xd8d3c08 (target 0xd8d3d34), the branch is always taken.
  At `beq` at 0xd8d3c10 (target 0xd8d3d34), the branch is always taken.
  At `beq` at 0xd8d3c30 (target 0xd8d3c40), taken when v0(=ret(orderLarger)) == 0 and falls through when v0(=ret(orderLarger)) != 0.
  At `beq` at 0xd8d3c38 (target 0xd8d3d38), the branch is always taken.
  At `beq` at 0xd8d3c58 (target 0xd8d3c68), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd8d3c60 (target 0xd8d3d38), the branch is always taken.
  At `beq` at 0xd8d3cf8 (target 0xd8d3d08), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xd8d3d00 (target 0xd8d3d34), the branch is always taken.
  At `beq` at 0xd8d3d20 (target 0xd8d3d30), taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  At `beq` at 0xd8d3d28 (target 0xd8d3d38), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd8d3d40).
  The instructions from 0xd8d3d48 to 0xd8d4d48 are not reached by any path from the entry, and their branches are not listed.

- `glXGetVisualFromFBConfig` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d3d48 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d3d48-0xd8d3dac (100 bytes).
  Loads 4 bytes at a1 +0x20 (`lw` at 0xd8d3d64).
  Loads 4 bytes at abs 0xd8f02e4 (`lw` at 0xd8d3d78).
  Loads 4 bytes at a1 +0x24 (`lw` at 0xd8d3d80).
  Calls `__glXOverrideVisualGetVisualInfo` via got with a0=a0 at entry (arg0), a1=0x3, a2=sp-44, a3=sp-48 (`jalr` at 0xd8d3d88).
  At `beq` at 0xd8d3d70 (target 0xd8d3d98), taken when v0(=[a1+32]) == 0 and falls through when v0(=[a1+32]) != 0.
  Returns v0 = ? (`jr` at 0xd8d3da4).

- `glXChooseFBConfigWithFltSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d3dac (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d3dac-0xd8d4d4c (4000 bytes).
  Loads 4 bytes at abs 0xd8eff40 (`lw` at 0xd8d3dbc).
  Loads 4 bytes at abs 0xd8ef000 (`lw` at 0xd8d3df4).
  Loads 4 bytes at abs 0xd8ef004 (`lw` at 0xd8d3df8).
  Loads 4 bytes at abs 0xd8ef00c (`lw` at 0xd8d3e08).
  Loads 4 bytes at abs 0xd8ef008 (`lw` at 0xd8d3e0c).
  Loads 4 bytes at a2 (`lw` at 0xd8d3f14).
  96 4-byte lw loads at ?, including `lw` at 0xd8d3f48, `lw` at 0xd8d3f50, `lw` at 0xd8d3fc4.
  4 4-byte lw loads at abs 0xd8eff24, including `lw` at 0xd8d3f7c, `lw` at 0xd8d3fa8, `lw` at 0xd8d433c.
  Loads 4 bytes at table(0xd8dd7cc) (`lw` at 0xd8d3f88).
  Loads 4 bytes at table(0xd8dd850) (`lw` at 0xd8d3fb4).
  45 4-byte sw stores at ?, including `sw` at 0xd8d42f0, `sw` at 0xd8d43e4, `sw` at 0xd8d4440.
  Loads 8 bytes at a3 (`ldc1` at 0xd8d4310).
  Loads 4 bytes at table(0xd8dd8ec) (`lw` at 0xd8d4348).
  17 8-byte ldc1 loads at ?, including `ldc1` at 0xd8d4358, `ldc1` at 0xd8d4368, `ldc1` at 0xd8d4378.
  Loads 4 bytes at abs 0xd8f02fc (`lw` at 0xd8d4408).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd8d444c).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd8d4458).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd8d4474).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd8d4478).
  2 4-byte lw loads at abs 0xd8f0084, including `lw` at 0xd8d44c4, `lw` at 0xd8d4520.
  Stores 4 bytes from s4 at ret(malloc) (`sw` at 0xd8d4504).
  2 4-byte lw loads at abs 0xd8eff20, including `lw` at 0xd8d4550, `lw` at 0xd8d4a94.
  Loads 4 bytes at abs 0xd8f00ac (`lw` at 0xd8d4574).
  3 1-byte lbu loads at ?, including `lbu` at 0xd8d46ec, `lbu` at 0xd8d46fc, `lbu` at 0xd8d494c.
  Loads 4 bytes at abs 0xd8f0078 (`lw` at 0xd8d4d00).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=a3 at entry (arg3) (`jalr` at 0xd8d4420).
  Calls `malloc` via got with a0=0x4, a1=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a2=unknown, a3=unknown (`jalr` at 0xd8d44cc).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a2=unknown, a3=unknown (`jalr` at 0xd8d452c).
  Calls `GetBoardName [0xd8d339c]` via register-constant with a0=ret(__glXInitialize), a1=a1 at entry (arg1), a2=sp-284, a3=unknown (`jalr` at 0xd8d4564).
  Calls `strncmp` via got with a0=sp-284, a1=0xd8dd4e0, a2=0x7, a3=unknown (`jalr` at 0xd8d4584).
  Calls `orderFBConfigSGIXs [0xd8d3994]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d4ab4).
  Calls `free` via got with a0=ret(malloc), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d4d08).
  At `beq` at 0xd8d3f0c (target 0xd8d4308), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0xd8d3f18 (target 0xd8d4308), taken when v1(=[a2]) == 0 and falls through when v1(=[a2]) != 0.
  At `bne` at 0xd8d3f3c (target 0xd8d3f5c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beql` at 0xd8d3f44 (target 0xd8d40bc), taken when v1(?) == a1(=0x186a0) and falls through when v1(?) != a1(=0x186a0); its branch-likely delay slot `lw t5,0(s0)` at 0xd8d3f48 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d3f4c (target 0xd8d40cc), taken when v1(?) == a2(=0x186a1) and falls through when v1(?) != a2(=0x186a1); its branch-likely delay slot `lw t6,0(s0)` at 0xd8d3f50 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d3f54 (target 0xd8d42e8), the branch is always taken.
  At `bne` at 0xd8d3f60 (target 0xd8d3f98), taken when v0(?) < 0x29 (signed) and falls through when v0(?) >= 0x29 (signed).
  At `beql` at 0xd8d3f74 (target 0xd8d42e8), taken when t8(=table(-0x8010)) >= 0x21 (unsigned) and falls through when t8(=table(-0x8010)) < 0x21 (unsigned); its branch-likely delay slot `lw t9,472(sp)` at 0xd8d3f78 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d3fa0 (target 0xd8d42e8), taken when t9(?) >= 0x27 (unsigned) and falls through when t9(?) < 0x27 (unsigned); its branch-likely delay slot `lw t9,472(sp)` at 0xd8d3fa4 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d3fcc (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d3fdc (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d3ff0 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4000 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4010 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4020 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4030 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4040 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4050 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4060 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4070 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4080 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4090 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d40a0 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d40b0 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d40c0 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d40d0 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d40e4 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d40f4 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4108 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d411c (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4134 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d414c (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4160 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4178 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4188 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4198 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d41a8 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d41bc (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d41cc (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d41dc (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d41ec (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d41fc (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4218 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4234 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4250 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d426c (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d4288 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d42a4 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d42c0 (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d42dc (target 0xd8d42f4), the branch is always taken.
  At `beq` at 0xd8d42ec (target 0xd8d4d20), the branch is always taken.
  At `beq` at 0xd8d42f4 (target 0xd8d4308), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bnel` at 0xd8d4300 (target 0xd8d3f38), taken when v1(?) != 0 and falls through when v1(?) == 0; its branch-likely delay slot `slt at,v1,a0` at 0xd8d4304 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d4308 (target 0xd8d4408), taken when s1(=a3) == 0 and falls through when s1(=a3) != 0.
  At `beq` at 0xd8d4320 (target 0xd8d4408), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8d4334 (target 0xd8d43d8), taken when t6(=table(-0x8029)) >= 0x8 (unsigned) and falls through when t6(=table(-0x8029)) < 0x8 (unsigned).
  At `beq` at 0xd8d4360 (target 0xd8d43e8), the branch is always taken.
  At `beq` at 0xd8d4370 (target 0xd8d43e8), the branch is always taken.
  At `beq` at 0xd8d4380 (target 0xd8d43e8), the branch is always taken.
  At `beq` at 0xd8d4390 (target 0xd8d43e8), the branch is always taken.
  At `beq` at 0xd8d43a0 (target 0xd8d43e8), the branch is always taken.
  At `beq` at 0xd8d43b0 (target 0xd8d43e8), the branch is always taken.
  At `beq` at 0xd8d43c0 (target 0xd8d43e8), the branch is always taken.
  At `beq` at 0xd8d43d0 (target 0xd8d43e8), the branch is always taken.
  At `beq` at 0xd8d43e0 (target 0xd8d4d20), the branch is always taken.
  At `beq` at 0xd8d43e8 (target 0xd8d4408), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `bnel` at 0xd8d4400 (target 0xd8d4328), taken when v1(?) != 0 and falls through when v1(?) == 0; its branch-likely delay slot `lui at,0xffff` at 0xd8d4404 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d442c (target 0xd8d4444), taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  At `beq` at 0xd8d443c (target 0xd8d4d20), the branch is always taken.
  At `bltz` at 0xd8d4444 (target 0xd8d445c), taken when s5(=a1) < 0 (signed) and falls through when s5(=a1) >= 0 (signed).
  At `bnel` at 0xd8d4454 (target 0xd8d446c), taken when s5(=a1) < t5(=[a0+136]) (signed) and falls through when s5(=a1) >= t5(=[a0+136]) (signed); its branch-likely delay slot `lw t7,32(v0)` at 0xd8d4458 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d4460 (target 0xd8d4d20), the branch is always taken.
  At `beql` at 0xd8d447c (target 0xd8d4490), taken when s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0 and falls through when s2(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0; its branch-likely delay slot `lw t9,472(sp)` at 0xd8d4480 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d4484 (target 0xd8d449c), taken when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) != 0 and falls through when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) == 0.
  At `beq` at 0xd8d4494 (target 0xd8d4d20), the branch is always taken.
  At `beq` at 0xd8d449c (target 0xd8d4520), taken when s4(=one of 0x0, 0x1) == 0 and falls through when s4(=one of 0x0, 0x1) != 0.
  At `blez` at 0xd8d44a4 (target 0xd8d4510), taken when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed) and falls through when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  At `bne` at 0xd8d44bc (target 0xd8d4508), taken when t5(?) != t6(?) and falls through when t5(?) == t6(?).
  At `bne` at 0xd8d44d8 (target 0xd8d44f0), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beq` at 0xd8d44e8 (target 0xd8d4d20), the branch is always taken.
  At `beq` at 0xd8d4500 (target 0xd8d4d20), the branch is always taken.
  At `bne` at 0xd8d4508 (target 0xd8d44b0), taken when v1(?) != a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) and falls through when v1(?) == a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]).
  At `beq` at 0xd8d4518 (target 0xd8d4d20), the branch is always taken.
  At `bne` at 0xd8d4538 (target 0xd8d4550), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beq` at 0xd8d4548 (target 0xd8d4d20), the branch is always taken.
  At `beq` at 0xd8d456c (target 0xd8d45cc), taken when v0(=ret(GetBoardName)) == 0 and falls through when v0(=ret(GetBoardName)) != 0.
  At `bne` at 0xd8d458c (target 0xd8d45cc), taken when v0(=ret(strncmp)) != 0 and falls through when v0(=ret(strncmp)) == 0.
  At `bne` at 0xd8d45a0 (target 0xd8d45cc), taken when s5(=0xc) != t8(?) and falls through when s5(=0xc) == t8(?).
  At `bne` at 0xd8d45b0 (target 0xd8d45cc), taken when s5(=0xc) != t9(?) and falls through when s5(=0xc) == t9(?).
  At `bne` at 0xd8d45b8 (target 0xd8d45cc), taken when s5(=0xc) != t5(?) and falls through when s5(=0xc) == t5(?).
  At `blez` at 0xd8d45c0 (target 0xd8d45cc), taken when t6(?) <= 0 (signed) and falls through when t6(?) > 0 (signed).
  At `bne` at 0xd8d45cc (target 0xd8d468c), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `bne` at 0xd8d45d4 (target 0xd8d468c), taken when s1(?) != 0 and falls through when s1(?) == 0.
  At `blez` at 0xd8d45dc (target 0xd8d467c), taken when a3(?) <= 0 (signed) and falls through when a3(?) > 0 (signed).
  At `beq` at 0xd8d45e8 (target 0xd8d4624), taken when (a3(?) & 0x3) == 0 -> outside and falls through when (a3(?) & 0x3) != 0.
  At `bne` at 0xd8d4618 (target 0xd8d460c), taken when a0(?) != v1(?) and falls through when a0(?) == v1(?).
  At `beq` at 0xd8d4620 (target 0xd8d467c), taken when v1(?) == a3(?) and falls through when v1(?) != a3(?).
  At `bne` at 0xd8d4674 (target 0xd8d4650), taken when v1(?) != a3(?) and falls through when v1(?) == a3(?).
  At `beq` at 0xd8d4684 (target 0xd8d4d20), the branch is always taken.
  At `blez` at 0xd8d4698 (target 0xd8d4c18), taken when a3(?) <= 0 (signed) and falls through when a3(?) > 0 (signed).
  At `bnel` at 0xd8d46cc (target 0xd8d4c04), taken when t9(?) < t5(?) (signed) and falls through when t9(?) >= t5(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d46d0 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d46dc (target 0xd8d4c04), taken when t6(?) != t7(?) and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d46e0 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d46e4 (target 0xd8d46f8), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bnel` at 0xd8d46f0 (target 0xd8d4c04), taken when t9(?) != t5(?) and falls through when t9(?) == t5(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d46f4 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d4704 (target 0xd8d4c04), taken when t6(?) != t7(?) and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4708 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d4718 (target 0xd8d4c04), taken when t8(?) < t9(?) (signed) and falls through when t8(?) >= t9(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d471c runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d472c (target 0xd8d4c04), taken when a2(?) < t5(?) (signed) and falls through when a2(?) >= t5(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4730 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d4740 (target 0xd8d4c04), taken when a1(?) < t6(?) (signed) and falls through when a1(?) >= t6(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4744 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d4754 (target 0xd8d4c04), taken when a0(?) < t7(?) (signed) and falls through when a0(?) >= t7(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4758 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d4768 (target 0xd8d4c04), taken when v1(?) < t8(?) (signed) and falls through when v1(?) >= t8(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d476c runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d477c (target 0xd8d4c04), taken when v0(?) < t9(?) (signed) and falls through when v0(?) >= t9(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4780 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d4790 (target 0xd8d4c04), taken when t5(?) < t6(?) (signed) and falls through when t5(?) >= t6(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4794 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d47a4 (target 0xd8d4c04), taken when t7(?) < t8(?) (signed) and falls through when t7(?) >= t8(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d47a8 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d47b8 (target 0xd8d4c04), taken when t9(?) < t5(?) (signed) and falls through when t9(?) >= t5(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d47bc runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d47cc (target 0xd8d4c04), taken when t6(?) < t7(?) (signed) and falls through when t6(?) >= t7(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d47d0 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d47e0 (target 0xd8d4c04), taken when t8(?) < t9(?) (signed) and falls through when t8(?) >= t9(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d47e4 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d47f4 (target 0xd8d4c04), taken when t5(?) < t6(?) (unsigned) and falls through when t5(?) >= t6(?) (unsigned); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d47f8 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d4808 (target 0xd8d4c04), taken when t7(?) < t8(?) (unsigned) and falls through when t7(?) >= t8(?) (unsigned); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d480c runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d4810 (target 0xd8d4824), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `bnel` at 0xd8d481c (target 0xd8d4c04), taken when t5(?) != t6(?) and falls through when t5(?) == t6(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4820 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d4830 (target 0xd8d4c04), taken when t7(?) != t8(?) and falls through when t7(?) == t8(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4834 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d4838 (target 0xd8d484c), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `bnel` at 0xd8d4844 (target 0xd8d4c04), taken when t5(?) != t6(?) and falls through when t5(?) == t6(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4848 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d4858 (target 0xd8d486c), taken when t7(?) == 0 and falls through when t7(?) != 0.
  At `bnel` at 0xd8d4864 (target 0xd8d4c04), taken when t8(?) != t9(?) and falls through when t8(?) == t9(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4868 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d486c (target 0xd8d4880), taken when t5(?) == 0 and falls through when t5(?) != 0.
  At `bnel` at 0xd8d4878 (target 0xd8d4c04), taken when t6(?) != t7(?) and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d487c runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d488c (target 0xd8d48a0), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bnel` at 0xd8d4898 (target 0xd8d4c04), taken when t9(?) != t5(?) and falls through when t9(?) == t5(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d489c runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d48a0 (target 0xd8d48b4), taken when t6(?) == 0 and falls through when t6(?) != 0.
  At `bnel` at 0xd8d48ac (target 0xd8d4c04), taken when t7(?) != t8(?) and falls through when t7(?) == t8(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d48b0 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d48c0 (target 0xd8d48d8), taken when t9(?) == 0 and falls through when t9(?) != 0; its branch-likely delay slot `lw t8,40(s4)` at 0xd8d48c4 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d48cc (target 0xd8d4c04), taken when t5(?) != t6(?) and falls through when t5(?) == t6(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d48d0 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d48e0 (target 0xd8d4c04), taken when t7(?) != t9(?) and falls through when t7(?) == t9(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d48e4 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d48f4 (target 0xd8d4c04), taken when t5(?) != t8(?) and falls through when t5(?) == t8(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d48f8 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d48fc (target 0xd8d4910), taken when t7(?) == 0 and falls through when t7(?) != 0.
  At `beql` at 0xd8d4908 (target 0xd8d4c04), taken when t9(?) == 0 and falls through when t9(?) != 0; its branch-likely delay slot `lw t9,96(sp)` at 0xd8d490c runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d491c (target 0xd8d4c04), taken when t6(?) < t5(?) (signed) and falls through when t6(?) >= t5(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4920 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d4930 (target 0xd8d4c04), taken when t8(?) < t7(?) (signed) and falls through when t8(?) >= t7(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4934 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d4944 (target 0xd8d4c04), taken when t9(?) < t6(?) (signed) and falls through when t9(?) >= t6(?) (signed); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4948 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d4954 (target 0xd8d4c04), taken when t5(?) != t8(?) and falls through when t5(?) == t8(?); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4958 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d496c (target 0xd8d4c04), taken when f16 < f18 (c.lt.d at 0xd8d4964) and falls through when not (f16 < f18 (c.lt.d at 0xd8d4964)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4970 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d4984 (target 0xd8d4c04), taken when f4 < f6 (c.lt.d at 0xd8d497c) and falls through when not (f4 < f6 (c.lt.d at 0xd8d497c)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4988 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d499c (target 0xd8d4c04), taken when f8 < f10 (c.lt.d at 0xd8d4994) and falls through when not (f8 < f10 (c.lt.d at 0xd8d4994)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d49a0 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d49b4 (target 0xd8d4c04), taken when f16 < f18 (c.lt.d at 0xd8d49ac) and falls through when not (f16 < f18 (c.lt.d at 0xd8d49ac)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d49b8 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d49cc (target 0xd8d4c04), taken when f4 < f6 (c.lt.d at 0xd8d49c4) and falls through when not (f4 < f6 (c.lt.d at 0xd8d49c4)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d49d0 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d49e4 (target 0xd8d4c04), taken when f8 < f10 (c.lt.d at 0xd8d49dc) and falls through when not (f8 < f10 (c.lt.d at 0xd8d49dc)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d49e8 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d49fc (target 0xd8d4c04), taken when f16 < f18 (c.lt.d at 0xd8d49f4) and falls through when not (f16 < f18 (c.lt.d at 0xd8d49f4)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4a00 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d4a1c (target 0xd8d4c04), taken when f4 < f6 (c.lt.d at 0xd8d4a10) and falls through when not (f4 < f6 (c.lt.d at 0xd8d4a10)); its branch-likely delay slot `lw t9,96(sp)` at 0xd8d4a20 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d4a30 (target 0xd8d4a8c), taken when t6(?) == 0 and falls through when t6(?) != 0.
  At `bne` at 0xd8d4a38 (target 0xd8d4a8c), taken when s5(=0xc) != a1(?) and falls through when s5(=0xc) == a1(?).
  At `bne` at 0xd8d4a40 (target 0xd8d4a8c), taken when s5(=0xc) != a0(?) and falls through when s5(=0xc) == a0(?).
  At `bne` at 0xd8d4a48 (target 0xd8d4a8c), taken when s5(=0xc) != a2(?) and falls through when s5(=0xc) == a2(?).
  At `bne` at 0xd8d4a50 (target 0xd8d4a8c), taken when s5(=0xc) != v1(?) and falls through when s5(=0xc) == v1(?).
  At `bne` at 0xd8d4a58 (target 0xd8d4a8c), taken when v0(?) != at(=0x10) and falls through when v0(?) == at(=0x10).
  At `bne` at 0xd8d4a60 (target 0xd8d4a8c), taken when t5(?) != 0 and falls through when t5(?) == 0.
  At `beql` at 0xd8d4a8c (target 0xd8d4adc), taken when s3(?) == 0 and falls through when s3(?) != 0; its branch-likely delay slot `slt at,s1,s3` at 0xd8d4a90 runs only when taken and is annulled on fall-through.
  At `bgez` at 0xd8d4abc (target 0xd8d4acc), taken when v0(=ret(orderFBConfigSGIXs)) >= 0 (signed) and falls through when v0(=ret(orderFBConfigSGIXs)) < 0 (signed).
  At `beq` at 0xd8d4ac4 (target 0xd8d4ad0), the branch is always taken.
  At `bne` at 0xd8d4ad0 (target 0xd8d4a94), taken when s1(?) != s2(?) and falls through when s1(?) == s2(?).
  At `beq` at 0xd8d4adc (target 0xd8d4b4c), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd8d4af0 (target 0xd8d4b18), taken when a1(?) == 0 -> outside and falls through when a1(?) != 0.
  At `bne` at 0xd8d4b0c (target 0xd8d4b00), taken when a0(?) != v1(?) and falls through when a0(?) == v1(?).
  At `beq` at 0xd8d4b14 (target 0xd8d4b4c), taken when s1(?) == v1(?) and falls through when s1(?) != v1(?).
  At `bne` at 0xd8d4b44 (target 0xd8d4b20), taken when s1(?) != v1(?) and falls through when s1(?) == v1(?).
  At `beq` at 0xd8d4b58 (target 0xd8d4bc8), taken when t5(?) == 0 and falls through when t5(?) != 0.
  At `bne` at 0xd8d4b60 (target 0xd8d4b74), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd8d4b68 (target 0xd8d4b74), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8d4b7c (target 0xd8d4b90), taken when t9(?) < s1(?) (signed) and falls through when t9(?) >= s1(?) (signed).
  At `beq` at 0xd8d4b84 (target 0xd8d4b90), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8d4b98 (target 0xd8d4bac), taken when t5(?) < s1(?) (signed) and falls through when t5(?) >= s1(?) (signed).
  At `beq` at 0xd8d4ba0 (target 0xd8d4bac), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8d4bb4 (target 0xd8d4bc8), taken when t7(?) < s1(?) (signed) and falls through when t7(?) >= s1(?) (signed).
  At `beq` at 0xd8d4bbc (target 0xd8d4bc8), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beql` at 0xd8d4bd4 (target 0xd8d4c00), taken when t6(?) == 0 and falls through when t6(?) != 0; its branch-likely delay slot `sw s4,0(t7)` at 0xd8d4bd8 runs only when taken and is annulled on fall-through.
  At `bgezl` at 0xd8d4be0 (target 0xd8d4bf4), taken when t5(?) >= 0 (signed) and falls through when t5(?) < 0 (signed); its branch-likely delay slot `addiu v0,v0,4` at 0xd8d4be4 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d4be8 (target 0xd8d4bfc), the branch is always taken.
  At `bnel` at 0xd8d4bf4 (target 0xd8d4be0), taken when v0(?) != s7(=sp-292) and falls through when v0(?) == s7(=sp-292); its branch-likely delay slot `lw t5,0(v0)` at 0xd8d4bf8 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d4c10 (target 0xd8d46bc), taken when t6(?) != t5(?) and falls through when t6(?) == t5(?).
  At `blez` at 0xd8d4c20 (target 0xd8d4d00), taken when t8(?) <= 0 (signed) and falls through when t8(?) > 0 (signed).
  At `beq` at 0xd8d4c28 (target 0xd8d4cec), taken when t7(?) == 0 and falls through when t7(?) != 0.
  At `bltz` at 0xd8d4c30 (target 0xd8d4c5c), taken when v1(?) < 0 (signed) and falls through when v1(?) >= 0 (signed).
  At `bltz` at 0xd8d4c60 (target 0xd8d4c8c), taken when v1(?) < 0 (signed) and falls through when v1(?) >= 0 (signed).
  At `bltz` at 0xd8d4c90 (target 0xd8d4cbc), taken when v1(?) < 0 (signed) and falls through when v1(?) >= 0 (signed).
  At `bltz` at 0xd8d4cc0 (target 0xd8d4cec), taken when v1(?) < 0 (signed) and falls through when v1(?) >= 0 (signed).
  At `beq` at 0xd8d4cf8 (target 0xd8d4d20), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd8d4d44).
  The instructions from 0xd8d40b8 to 0xd8d40b8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d40c8 to 0xd8d40c8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d4468 to 0xd8d4468 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d4bf0 to 0xd8d4bf0 are not reached by any path from the entry, and their branches are not listed.

- `glXChooseFBConfig` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d4d54 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d4d54-0xd8d5fe4 (4752 bytes).
  Loads 4 bytes at abs 0xd8eff40 (`lw` at 0xd8d4d64).
  Loads 4 bytes at abs 0xd8ef010 (`lw` at 0xd8d4da8).
  Loads 4 bytes at abs 0xd8ef014 (`lw` at 0xd8d4dac).
  Loads 4 bytes at abs 0xd8ef01c (`lw` at 0xd8d4dbc).
  Loads 4 bytes at abs 0xd8ef018 (`lw` at 0xd8d4dc0).
  2 4-byte lw loads at a2, including `lw` at 0xd8d4ed0, `lw` at 0xd8d4f20.
  5 4-byte lw loads at abs 0xd8eff24, including `lw` at 0xd8d4edc, `lw` at 0xd8d4f70, `lw` at 0xd8d4f98.
  Loads 8 bytes at abs 0xd8dd910 (`ldc1` at 0xd8d4f1c).
  114 4-byte lw loads at ?, including `lw` at 0xd8d4f38, `lw` at 0xd8d4f40, `lw` at 0xd8d4fb4.
  Loads 4 bytes at table(0xd8dd918) (`lw` at 0xd8d4f7c).
  Loads 4 bytes at table(0xd8dd9b0) (`lw` at 0xd8d4fa4).
  11 4-byte sw stores at a3, including `sw` at 0xd8d5464, `sw` at 0xd8d54e8, `sw` at 0xd8d5504.
  Loads 8 bytes at abs 0xd8dda50 (`ldc1` at 0xd8d548c).
  Loads 4 bytes at abs 0xd8f02fc (`lw` at 0xd8d54c0).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd8d54f4).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd8d5500).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd8d551c).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd8d5520).
  2 4-byte lw loads at abs 0xd8f0084, including `lw` at 0xd8d556c, `lw` at 0xd8d55c8.
  Stores 4 bytes from s4 at ret(malloc) (`sw` at 0xd8d55ac).
  Loads 4 bytes at abs 0xd8eff20 (`lw` at 0xd8d55f8).
  Loads 4 bytes at abs 0xd8f00ac (`lw` at 0xd8d561c).
  37 4-byte sw stores at ?, including `sw` at 0xd8d56e0, `sw` at 0xd8d56e8, `sw` at 0xd8d56f4.
  2 4-byte lw loads at abs 0xd8eff1c, including `lw` at 0xd8d5794, `lw` at 0xd8d5d30.
  3 1-byte lbu loads at ?, including `lbu` at 0xd8d58e0, `lbu` at 0xd8d5900, `lbu` at 0xd8d5b5c.
  8 8-byte ldc1 loads at ?, including `ldc1` at 0xd8d5b7c, `ldc1` at 0xd8d5ba0, `ldc1` at 0xd8d5bc4.
  Loads 4 bytes at abs 0xd8f0078 (`lw` at 0xd8d5f90).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d54c8).
  Calls `malloc` via got with a0=0x4, a1=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a2=unknown, a3=unknown (`jalr` at 0xd8d5574).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16], a2=unknown, a3=unknown (`jalr` at 0xd8d55d4).
  Calls `GetBoardName [0xd8d339c]` via register-constant with a0=ret(__glXInitialize), a1=a1 at entry (arg1), a2=sp-292, a3=unknown (`jalr` at 0xd8d560c).
  Calls `strncmp` via got with a0=sp-292, a1=0xd8dd4e8, a2=0x7, a3=unknown (`jalr` at 0xd8d562c).
  Calls `orderFBConfigs [0xd8c4368]` via register-constant with a0=sp-576, a1=unknown, a2=0x0, a3=unknown (`jalr` at 0xd8d57a8).
  Calls `orderFBConfigs [0xd8c4368]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d5d44).
  Calls `free` via got with a0=ret(malloc), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d5f98).
  At `beq` at 0xd8d4ecc (target 0xd8d5478), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0xd8d4ed4 (target 0xd8d5478), taken when s4(=[a2]) == 0 and falls through when s4(=[a2]) != 0.
  At `bnel` at 0xd8d4f2c (target 0xd8d4f50), taken when v0(?) < v1(=0x8031) (signed) and falls through when v0(?) >= v1(=0x8031) (signed); its branch-likely delay slot `slti at,v0,41` at 0xd8d4f30 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d4f34 (target 0xd8d52b0), taken when v0(?) == a0(=0x186a0) and falls through when v0(?) != a0(=0x186a0); its branch-likely delay slot `lw t6,0(s0)` at 0xd8d4f38 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d4f3c (target 0xd8d52c8), taken when v0(?) == a1(=0x186a1) and falls through when v0(?) != a1(=0x186a1); its branch-likely delay slot `lw t9,0(s0)` at 0xd8d4f40 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d4f44 (target 0xd8d545c), the branch is always taken.
  At `bne` at 0xd8d4f50 (target 0xd8d4f8c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beql` at 0xd8d4f68 (target 0xd8d545c), taken when t6(=table(-0x800b)) >= 0x26 (unsigned) and falls through when t6(=table(-0x800b)) < 0x26 (unsigned); its branch-likely delay slot `lw t8,724(sp)` at 0xd8d4f6c runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d4f90 (target 0xd8d545c), taken when t7(?) >= 0x27 (unsigned) and falls through when t7(?) < 0x27 (unsigned); its branch-likely delay slot `lw t8,724(sp)` at 0xd8d4f94 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d4fbc (target 0xd8d5468), taken when s6(=-0x1) == t9(?) and falls through when s6(=-0x1) != t9(?).
  At `beq` at 0xd8d4fc4 (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d4fd4 (target 0xd8d5468), taken when s6(=-0x1) != t6(?) and falls through when s6(=-0x1) == t6(?).
  At `beq` at 0xd8d4fdc (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d4fec (target 0xd8d5468), the branch is always taken.
  At `beql` at 0xd8d4ff8 (target 0xd8d5018), taken when s6(=-0x1) == v0(?) and falls through when s6(=-0x1) != v0(?); its branch-likely delay slot `ori s5,s5,0x400` at 0xd8d4ffc runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d500c (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d5018 (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d5028 (target 0xd8d5034), taken when s6(=-0x1) != v0(?) and falls through when s6(=-0x1) == v0(?).
  At `beq` at 0xd8d5034 (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d5044 (target 0xd8d5468), taken when s6(=-0x1) != t6(?) and falls through when s6(=-0x1) == t6(?).
  At `beq` at 0xd8d504c (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d505c (target 0xd8d5468), taken when s6(=-0x1) != t9(?) and falls through when s6(=-0x1) == t9(?).
  At `beq` at 0xd8d5064 (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d5074 (target 0xd8d5468), taken when s6(=-0x1) != t6(?) and falls through when s6(=-0x1) == t6(?).
  At `beq` at 0xd8d507c (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d508c (target 0xd8d5468), taken when s6(=-0x1) != t9(?) and falls through when s6(=-0x1) == t9(?).
  At `beq` at 0xd8d5094 (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d50a4 (target 0xd8d5468), taken when s6(=-0x1) != t6(?) and falls through when s6(=-0x1) == t6(?).
  At `beq` at 0xd8d50ac (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d50bc (target 0xd8d5468), taken when s6(=-0x1) != t9(?) and falls through when s6(=-0x1) == t9(?).
  At `beq` at 0xd8d50c4 (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d50d4 (target 0xd8d5468), taken when s6(=-0x1) != t6(?) and falls through when s6(=-0x1) == t6(?).
  At `beq` at 0xd8d50dc (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d50ec (target 0xd8d5468), taken when s6(=-0x1) != t9(?) and falls through when s6(=-0x1) == t9(?).
  At `beq` at 0xd8d50f4 (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d5104 (target 0xd8d5468), taken when s6(=-0x1) != t6(?) and falls through when s6(=-0x1) == t6(?).
  At `beq` at 0xd8d510c (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d511c (target 0xd8d5468), taken when s6(=-0x1) != t9(?) and falls through when s6(=-0x1) == t9(?).
  At `beq` at 0xd8d5124 (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d5134 (target 0xd8d5468), taken when s6(=-0x1) != t6(?) and falls through when s6(=-0x1) == t6(?).
  At `beq` at 0xd8d513c (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d514c (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d515c (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d5178 (target 0xd8d5468), taken when 0 >= v0(?) (unsigned) and falls through when 0 < v0(?) (unsigned).
  At `beq` at 0xd8d5180 (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d5194 (target 0xd8d51a4), taken when s6(=-0x1) == t9(?) and falls through when s6(=-0x1) != t9(?).
  At `beq` at 0xd8d519c (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d51a4 (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d51b4 (target 0xd8d51c8), taken when s6(=-0x1) == t7(?) and falls through when s6(=-0x1) != t7(?).
  At `beq` at 0xd8d51c0 (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d51c8 (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d51d8 (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d51e8 (target 0xd8d5468), taken when s6(=-0x1) == t7(?) and falls through when s6(=-0x1) != t7(?).
  At `beq` at 0xd8d51f4 (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d5208 (target 0xd8d5468), taken when s6(=-0x1) == t6(?) and falls through when s6(=-0x1) != t6(?).
  At `beq` at 0xd8d5210 (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d5224 (target 0xd8d5468), taken when s6(=-0x1) == t9(?) and falls through when s6(=-0x1) != t9(?).
  At `beq` at 0xd8d522c (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d5240 (target 0xd8d5468), taken when s6(=-0x1) == t9(?) and falls through when s6(=-0x1) != t9(?).
  At `beq` at 0xd8d5248 (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d5258 (target 0xd8d5468), taken when s6(=-0x1) == t7(?) and falls through when s6(=-0x1) != t7(?).
  At `beq` at 0xd8d5264 (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d5274 (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d5284 (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d5294 (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d52a4 (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d52b4 (target 0xd8d5468), taken when s6(=-0x1) != t6(?) and falls through when s6(=-0x1) == t6(?).
  At `beq` at 0xd8d52bc (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d52cc (target 0xd8d5468), taken when s6(=-0x1) != t9(?) and falls through when s6(=-0x1) == t9(?).
  At `beq` at 0xd8d52d4 (target 0xd8d5468), the branch is always taken.
  At `bne` at 0xd8d52e8 (target 0xd8d5468), taken when s6(=-0x1) != t7(?) and falls through when s6(=-0x1) == t7(?).
  At `beq` at 0xd8d52f0 (target 0xd8d5468), the branch is always taken.
  At `bc1f` at 0xd8d5314 (target 0xd8d5468), taken when not (f20 == f6 (c.eq.d at 0xd8d530c)) and falls through when f20 == f6 (c.eq.d at 0xd8d530c).
  At `beq` at 0xd8d531c (target 0xd8d5468), the branch is always taken.
  At `bc1f` at 0xd8d5340 (target 0xd8d5468), taken when not (f20 == f16 (c.eq.d at 0xd8d5338)) and falls through when f20 == f16 (c.eq.d at 0xd8d5338).
  At `beq` at 0xd8d5348 (target 0xd8d5468), the branch is always taken.
  At `bc1f` at 0xd8d536c (target 0xd8d5468), taken when not (f20 == f6 (c.eq.d at 0xd8d5364)) and falls through when f20 == f6 (c.eq.d at 0xd8d5364).
  At `beq` at 0xd8d5374 (target 0xd8d5468), the branch is always taken.
  At `bc1f` at 0xd8d5398 (target 0xd8d5468), taken when not (f20 == f16 (c.eq.d at 0xd8d5390)) and falls through when f20 == f16 (c.eq.d at 0xd8d5390).
  At `beq` at 0xd8d53a0 (target 0xd8d5468), the branch is always taken.
  At `bc1f` at 0xd8d53c4 (target 0xd8d5468), taken when not (f20 == f6 (c.eq.d at 0xd8d53bc)) and falls through when f20 == f6 (c.eq.d at 0xd8d53bc).
  At `beq` at 0xd8d53cc (target 0xd8d5468), the branch is always taken.
  At `bc1f` at 0xd8d53f0 (target 0xd8d5468), taken when not (f20 == f16 (c.eq.d at 0xd8d53e8)) and falls through when f20 == f16 (c.eq.d at 0xd8d53e8).
  At `beq` at 0xd8d53f8 (target 0xd8d5468), the branch is always taken.
  At `bc1f` at 0xd8d541c (target 0xd8d5468), taken when not (f20 == f6 (c.eq.d at 0xd8d5414)) and falls through when f20 == f6 (c.eq.d at 0xd8d5414).
  At `beq` at 0xd8d5424 (target 0xd8d5468), the branch is always taken.
  At `bc1f` at 0xd8d5448 (target 0xd8d5468), taken when not (f20 == f16 (c.eq.d at 0xd8d5440)) and falls through when f20 == f16 (c.eq.d at 0xd8d5440).
  At `beq` at 0xd8d5450 (target 0xd8d5468), the branch is always taken.
  At `beq` at 0xd8d5460 (target 0xd8d5fb0), the branch is always taken.
  At `beql` at 0xd8d5468 (target 0xd8d547c), taken when s0(?) == 0 and falls through when s0(?) != 0; its branch-likely delay slot `lw t9,512(sp)` at 0xd8d546c runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d5470 (target 0xd8d4f24), taken when s4(=[a2]) != 0 and falls through when s4(=[a2]) == 0; its branch-likely delay slot `lw v0,0(s0)` at 0xd8d5474 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d5488 (target 0xd8d5494), taken when (t9(?) & 0x1) != 0 and falls through when (t9(?) & 0x1) == 0.
  At `beql` at 0xd8d549c (target 0xd8d54b0), taken when t7(?) == at(=0x8000) and falls through when t7(?) != at(=0x8000); its branch-likely delay slot `sb zero,393(sp)` at 0xd8d54a0 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d54a4 (target 0xd8d54c0), taken when s6(=-0x1) != t7(?) and falls through when s6(=-0x1) == t7(?).
  At `bne` at 0xd8d54d4 (target 0xd8d54ec), taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  At `beq` at 0xd8d54e4 (target 0xd8d5fb0), the branch is always taken.
  At `bltz` at 0xd8d54ec (target 0xd8d5504), taken when s8(=a1) < 0 (signed) and falls through when s8(=a1) >= 0 (signed).
  At `bnel` at 0xd8d54fc (target 0xd8d5514), taken when s8(=a1) < t9(=[a0+136]) (signed) and falls through when s8(=a1) >= t9(=[a0+136]) (signed); its branch-likely delay slot `lw t7,32(v0)` at 0xd8d5500 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5508 (target 0xd8d5fb0), the branch is always taken.
  At `beql` at 0xd8d5524 (target 0xd8d5538), taken when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0 and falls through when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0; its branch-likely delay slot `lw t9,724(sp)` at 0xd8d5528 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d552c (target 0xd8d5544), taken when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) != 0 and falls through when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) == 0.
  At `beq` at 0xd8d553c (target 0xd8d5fb0), the branch is always taken.
  At `beq` at 0xd8d5544 (target 0xd8d55c8), taken when s3(=one of 0x0, 0x1) == 0 and falls through when s3(=one of 0x0, 0x1) != 0.
  At `blez` at 0xd8d554c (target 0xd8d55b8), taken when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed) and falls through when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  At `bne` at 0xd8d5564 (target 0xd8d55b0), taken when t6(?) != t7(?) and falls through when t6(?) == t7(?).
  At `bne` at 0xd8d5580 (target 0xd8d5598), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beq` at 0xd8d5590 (target 0xd8d5fb0), the branch is always taken.
  At `beq` at 0xd8d55a8 (target 0xd8d5fb0), the branch is always taken.
  At `bne` at 0xd8d55b0 (target 0xd8d5558), taken when v0(?) != a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) and falls through when v0(?) == a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]).
  At `beq` at 0xd8d55c0 (target 0xd8d5fb0), the branch is always taken.
  At `bne` at 0xd8d55e0 (target 0xd8d55f8), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beq` at 0xd8d55f0 (target 0xd8d5fb0), the branch is always taken.
  At `beq` at 0xd8d5614 (target 0xd8d5674), taken when v0(=ret(GetBoardName)) == 0 and falls through when v0(=ret(GetBoardName)) != 0.
  At `bne` at 0xd8d5634 (target 0xd8d5674), taken when v0(=ret(strncmp)) != 0 and falls through when v0(=ret(strncmp)) == 0.
  At `bne` at 0xd8d5648 (target 0xd8d5674), taken when s8(=0xc) != t6(?) and falls through when s8(=0xc) == t6(?).
  At `bne` at 0xd8d5658 (target 0xd8d5674), taken when s8(=0xc) != t7(?) and falls through when s8(=0xc) == t7(?).
  At `bne` at 0xd8d5660 (target 0xd8d5674), taken when s8(=0xc) != t8(?) and falls through when s8(=0xc) == t8(?).
  At `blez` at 0xd8d5668 (target 0xd8d5674), taken when t9(?) <= 0 (signed) and falls through when t9(?) > 0 (signed).
  At `beq` at 0xd8d5674 (target 0xd8d5684), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bnel` at 0xd8d567c (target 0xd8d5880), taken when s4(=[a2]) != 0 and falls through when s4(=[a2]) == 0; its branch-likely delay slot `lw t6,448(sp)` at 0xd8d5680 runs only when taken and is annulled on fall-through.
  At `blez` at 0xd8d5690 (target 0xd8d586c), taken when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  At `bne` at 0xd8d56f0 (target 0xd8d56d4), taken when t6(?) != at(?) and falls through when t6(?) == at(?).
  At `beq` at 0xd8d5704 (target 0xd8d5774), taken when t6(?) == 0 and falls through when t6(?) != 0.
  At `bne` at 0xd8d5710 (target 0xd8d5774), taken when s8(=0xc) != t7(?) and falls through when s8(=0xc) == t7(?).
  At `bne` at 0xd8d571c (target 0xd8d5774), taken when s8(=0xc) != t8(?) and falls through when s8(=0xc) == t8(?).
  At `bne` at 0xd8d5728 (target 0xd8d5774), taken when s8(=0xc) != t9(?) and falls through when s8(=0xc) == t9(?).
  At `bne` at 0xd8d5734 (target 0xd8d5774), taken when s8(=0xc) != t6(?) and falls through when s8(=0xc) == t6(?).
  At `bne` at 0xd8d5748 (target 0xd8d5774), taken when t7(?) != at(=0x10) and falls through when t7(?) == at(=0x10).
  At `bne` at 0xd8d5750 (target 0xd8d5774), taken when t8(?) != 0 and falls through when t8(?) == 0.
  At `beql` at 0xd8d5774 (target 0xd8d57dc), taken when s3(?) == 0 and falls through when s3(?) != 0; its branch-likely delay slot `slt at,s2,s3` at 0xd8d5778 runs only when taken and is annulled on fall-through.
  At `bgez` at 0xd8d57b0 (target 0xd8d57c0), taken when v0(=ret(orderFBConfigs)) >= 0 (signed) and falls through when v0(=ret(orderFBConfigs)) < 0 (signed).
  At `beq` at 0xd8d57b8 (target 0xd8d57c4), the branch is always taken.
  At `bnel` at 0xd8d57c4 (target 0xd8d5788), taken when s2(?) != s1(?) and falls through when s2(?) == s1(?); its branch-likely delay slot `addu v0,s2,s1` at 0xd8d57c8 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d57dc (target 0xd8d584c), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd8d57f0 (target 0xd8d5818), taken when a1(?) == 0 -> outside and falls through when a1(?) != 0.
  At `bne` at 0xd8d580c (target 0xd8d5800), taken when a0(?) != v1(?) and falls through when a0(?) == v1(?).
  At `beq` at 0xd8d5814 (target 0xd8d584c), taken when s2(?) == v1(?) and falls through when s2(?) != v1(?).
  At `bne` at 0xd8d5844 (target 0xd8d5820), taken when s2(?) != v1(?) and falls through when s2(?) == v1(?).
  At `bnel` at 0xd8d5864 (target 0xd8d56b8), taken when a3(?) != t8(?) and falls through when a3(?) == t8(?); its branch-likely delay slot `addiu t0,t0,1` at 0xd8d5868 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5874 (target 0xd8d5fb0), the branch is always taken.
  At `blez` at 0xd8d5888 (target 0xd8d5ea8), taken when t6(?) <= 0 (signed) and falls through when t6(?) > 0 (signed).
  At `beql` at 0xd8d58b0 (target 0xd8d58cc), taken when s6(=-0x1) == t8(?) and falls through when s6(=-0x1) != t8(?); its branch-likely delay slot `lw t7,156(s4)` at 0xd8d58b4 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d58c0 (target 0xd8d5e94), taken when t9(?) < t8(?) (signed) and falls through when t9(?) >= t8(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d58c4 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d58d0 (target 0xd8d5e94), taken when t6(?) != t7(?) and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d58d4 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d58d8 (target 0xd8d58ec), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `bnel` at 0xd8d58e4 (target 0xd8d5e94), taken when t8(?) != t6(?) and falls through when t8(?) == t6(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d58e8 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d58f8 (target 0xd8d590c), taken when t7(?) == 0 and falls through when t7(?) != 0.
  At `bnel` at 0xd8d5904 (target 0xd8d5e94), taken when t9(?) != t8(?) and falls through when t9(?) == t8(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5908 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d590c (target 0xd8d5924), taken when s6(=-0x1) == t6(?) and falls through when s6(=-0x1) != t6(?).
  At `bnel` at 0xd8d591c (target 0xd8d5e94), taken when t7(?) < t6(?) (signed) and falls through when t7(?) >= t6(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5920 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5924 (target 0xd8d593c), taken when s6(=-0x1) == t9(?) and falls through when s6(=-0x1) != t9(?).
  At `bnel` at 0xd8d5934 (target 0xd8d5e94), taken when t8(?) < t9(?) (signed) and falls through when t8(?) >= t9(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5938 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d593c (target 0xd8d5954), taken when s6(=-0x1) == t7(?) and falls through when s6(=-0x1) != t7(?).
  At `bnel` at 0xd8d594c (target 0xd8d5e94), taken when t6(?) < t7(?) (signed) and falls through when t6(?) >= t7(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5950 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5954 (target 0xd8d596c), taken when s6(=-0x1) == t8(?) and falls through when s6(=-0x1) != t8(?).
  At `bnel` at 0xd8d5964 (target 0xd8d5e94), taken when t9(?) < t8(?) (signed) and falls through when t9(?) >= t8(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5968 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d596c (target 0xd8d5984), taken when s6(=-0x1) == t6(?) and falls through when s6(=-0x1) != t6(?).
  At `bnel` at 0xd8d597c (target 0xd8d5e94), taken when t7(?) < t6(?) (signed) and falls through when t7(?) >= t6(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5980 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5984 (target 0xd8d599c), taken when s6(=-0x1) == t9(?) and falls through when s6(=-0x1) != t9(?).
  At `bnel` at 0xd8d5994 (target 0xd8d5e94), taken when t8(?) < t9(?) (signed) and falls through when t8(?) >= t9(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5998 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d599c (target 0xd8d59b4), taken when s6(=-0x1) == t7(?) and falls through when s6(=-0x1) != t7(?).
  At `bnel` at 0xd8d59ac (target 0xd8d5e94), taken when t6(?) < t7(?) (signed) and falls through when t6(?) >= t7(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d59b0 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d59b4 (target 0xd8d59cc), taken when s6(=-0x1) == t8(?) and falls through when s6(=-0x1) != t8(?).
  At `bnel` at 0xd8d59c4 (target 0xd8d5e94), taken when t9(?) < t8(?) (signed) and falls through when t9(?) >= t8(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d59c8 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d59cc (target 0xd8d59e4), taken when s6(=-0x1) == t6(?) and falls through when s6(=-0x1) != t6(?).
  At `bnel` at 0xd8d59dc (target 0xd8d5e94), taken when t7(?) < t6(?) (signed) and falls through when t7(?) >= t6(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d59e0 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d59e4 (target 0xd8d59fc), taken when s6(=-0x1) == t9(?) and falls through when s6(=-0x1) != t9(?).
  At `bnel` at 0xd8d59f4 (target 0xd8d5e94), taken when t8(?) < t9(?) (signed) and falls through when t8(?) >= t9(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d59f8 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d59fc (target 0xd8d5a14), taken when s6(=-0x1) == t7(?) and falls through when s6(=-0x1) != t7(?).
  At `bnel` at 0xd8d5a0c (target 0xd8d5e94), taken when t6(?) < t7(?) (signed) and falls through when t6(?) >= t7(?) (signed); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5a10 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5a14 (target 0xd8d5a28), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bnel` at 0xd8d5a20 (target 0xd8d5e94), taken when t9(?) != t6(?) and falls through when t9(?) == t6(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5a24 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5a30 (target 0xd8d5a44), taken when s6(=-0x1) == t7(?) and falls through when s6(=-0x1) != t7(?).
  At `bnel` at 0xd8d5a3c (target 0xd8d5e94), taken when t7(?) != t8(?) and falls through when t7(?) == t8(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5a40 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5a44 (target 0xd8d5a58), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `bnel` at 0xd8d5a50 (target 0xd8d5e94), taken when t6(?) != t7(?) and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5a54 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5a64 (target 0xd8d5a78), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bnel` at 0xd8d5a70 (target 0xd8d5e94), taken when t9(?) != t6(?) and falls through when t9(?) == t6(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5a74 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5a78 (target 0xd8d5a8c), taken when t7(?) == 0 and falls through when t7(?) != 0.
  At `bnel` at 0xd8d5a84 (target 0xd8d5e94), taken when t8(?) != t9(?) and falls through when t8(?) == t9(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5a88 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5a98 (target 0xd8d5aac), taken when t6(?) == 0 and falls through when t6(?) != 0.
  At `bnel` at 0xd8d5aa4 (target 0xd8d5e94), taken when t7(?) != t8(?) and falls through when t7(?) == t8(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5aa8 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5aac (target 0xd8d5ac0), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `bnel` at 0xd8d5ab8 (target 0xd8d5e94), taken when t6(?) != t7(?) and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5abc runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5acc (target 0xd8d5ae0), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bnel` at 0xd8d5ad8 (target 0xd8d5e94), taken when t9(?) != t6(?) and falls through when t9(?) == t6(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5adc runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5ae0 (target 0xd8d5af8), taken when s6(=-0x1) == t7(?) and falls through when s6(=-0x1) != t7(?).
  At `bnel` at 0xd8d5af0 (target 0xd8d5e94), taken when t7(?) != t9(?) and falls through when t7(?) == t9(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5af4 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5af8 (target 0xd8d5b10), taken when s6(=-0x1) == t6(?) and falls through when s6(=-0x1) != t6(?).
  At `bnel` at 0xd8d5b08 (target 0xd8d5e94), taken when t6(?) != t7(?) and falls through when t6(?) == t7(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5b0c runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5b10 (target 0xd8d5b24), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `beql` at 0xd8d5b1c (target 0xd8d5e94), taken when t8(?) == 0 and falls through when t8(?) != 0; its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5b20 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5b24 (target 0xd8d5b3c), taken when s6(=-0x1) == t6(?) and falls through when s6(=-0x1) != t6(?).
  At `bnel` at 0xd8d5b34 (target 0xd8d5e94), taken when t7(?) < t6(?) (unsigned) and falls through when t7(?) >= t6(?) (unsigned); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5b38 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5b3c (target 0xd8d5b54), taken when s6(=-0x1) == t9(?) and falls through when s6(=-0x1) != t9(?).
  At `bnel` at 0xd8d5b4c (target 0xd8d5e94), taken when t8(?) < t9(?) (unsigned) and falls through when t8(?) >= t9(?) (unsigned); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5b50 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5b54 (target 0xd8d5c8c), taken when s6(=-0x1) == v0(?) and falls through when s6(=-0x1) != v0(?).
  At `bnel` at 0xd8d5b64 (target 0xd8d5e94), taken when v0(?) != t7(?) and falls through when v0(?) == t7(?); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5b68 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5b74 (target 0xd8d5b94), taken when f20 == f4 (c.eq.d at 0xd8d5b6c) and falls through when not (f20 == f4 (c.eq.d at 0xd8d5b6c)); its branch-likely delay slot `c.eq.d $f20,$f8` at 0xd8d5b78 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5b88 (target 0xd8d5e94), taken when f4 < f6 (c.lt.d at 0xd8d5b80) and falls through when not (f4 < f6 (c.lt.d at 0xd8d5b80)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5b8c runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5b98 (target 0xd8d5bb8), taken when f20 == f8 (c.eq.d at 0xd8d5b90) and falls through when not (f20 == f8 (c.eq.d at 0xd8d5b90)); its branch-likely delay slot `c.eq.d $f20,$f16` at 0xd8d5b9c runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5bac (target 0xd8d5e94), taken when f10 < f8 (c.lt.d at 0xd8d5ba4) and falls through when not (f10 < f8 (c.lt.d at 0xd8d5ba4)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5bb0 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5bbc (target 0xd8d5bdc), taken when f20 == f16 (c.eq.d at 0xd8d5bb4) and falls through when not (f20 == f16 (c.eq.d at 0xd8d5bb4)); its branch-likely delay slot `c.eq.d $f20,$f4` at 0xd8d5bc0 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5bd0 (target 0xd8d5e94), taken when f16 < f18 (c.lt.d at 0xd8d5bc8) and falls through when not (f16 < f18 (c.lt.d at 0xd8d5bc8)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5bd4 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5be0 (target 0xd8d5c00), taken when f20 == f4 (c.eq.d at 0xd8d5bd8) and falls through when not (f20 == f4 (c.eq.d at 0xd8d5bd8)); its branch-likely delay slot `c.eq.d $f20,$f10` at 0xd8d5be4 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5bf4 (target 0xd8d5e94), taken when f6 < f4 (c.lt.d at 0xd8d5bec) and falls through when not (f6 < f4 (c.lt.d at 0xd8d5bec)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5bf8 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5c04 (target 0xd8d5c24), taken when f20 == f10 (c.eq.d at 0xd8d5bfc) and falls through when not (f20 == f10 (c.eq.d at 0xd8d5bfc)); its branch-likely delay slot `c.eq.d $f20,$f16` at 0xd8d5c08 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5c18 (target 0xd8d5e94), taken when f10 < f8 (c.lt.d at 0xd8d5c10) and falls through when not (f10 < f8 (c.lt.d at 0xd8d5c10)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5c1c runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5c28 (target 0xd8d5c48), taken when f20 == f16 (c.eq.d at 0xd8d5c20) and falls through when not (f20 == f16 (c.eq.d at 0xd8d5c20)); its branch-likely delay slot `c.eq.d $f20,$f6` at 0xd8d5c2c runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5c3c (target 0xd8d5e94), taken when f18 < f16 (c.lt.d at 0xd8d5c34) and falls through when not (f18 < f16 (c.lt.d at 0xd8d5c34)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5c40 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5c4c (target 0xd8d5c6c), taken when f20 == f6 (c.eq.d at 0xd8d5c44) and falls through when not (f20 == f6 (c.eq.d at 0xd8d5c44)); its branch-likely delay slot `c.eq.d $f20,$f10` at 0xd8d5c50 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5c60 (target 0xd8d5e94), taken when f6 < f4 (c.lt.d at 0xd8d5c58) and falls through when not (f6 < f4 (c.lt.d at 0xd8d5c58)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5c64 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5c70 (target 0xd8d5c90), taken when f20 == f10 (c.eq.d at 0xd8d5c68) and falls through when not (f20 == f10 (c.eq.d at 0xd8d5c68)); its branch-likely delay slot `lw t9,416(sp)` at 0xd8d5c74 runs only when taken and is annulled on fall-through.
  At `bc1tl` at 0xd8d5c84 (target 0xd8d5e94), taken when f8 < f10 (c.lt.d at 0xd8d5c7c) and falls through when not (f8 < f10 (c.lt.d at 0xd8d5c7c)); its branch-likely delay slot `lw t6,92(sp)` at 0xd8d5c88 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5ca4 (target 0xd8d5d1c), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `bne` at 0xd8d5cb0 (target 0xd8d5d1c), taken when s8(=0xc) != t7(?) and falls through when s8(=0xc) == t7(?).
  At `bne` at 0xd8d5cbc (target 0xd8d5d1c), taken when s8(=0xc) != t6(?) and falls through when s8(=0xc) == t6(?).
  At `bne` at 0xd8d5cc8 (target 0xd8d5d1c), taken when s8(=0xc) != t8(?) and falls through when s8(=0xc) == t8(?).
  At `bne` at 0xd8d5cd4 (target 0xd8d5d1c), taken when s8(=0xc) != t9(?) and falls through when s8(=0xc) == t9(?).
  At `bne` at 0xd8d5ce8 (target 0xd8d5d1c), taken when t7(?) != at(=0x10) and falls through when t7(?) == at(=0x10).
  At `bne` at 0xd8d5cf0 (target 0xd8d5d1c), taken when t6(?) != 0 and falls through when t6(?) == 0.
  At `beq` at 0xd8d5d1c (target 0xd8d5d68), taken when s3(?) == 0 and falls through when s3(?) != 0.
  At `bgez` at 0xd8d5d4c (target 0xd8d5d5c), taken when v0(=ret(orderFBConfigs)) >= 0 (signed) and falls through when v0(=ret(orderFBConfigs)) < 0 (signed).
  At `beq` at 0xd8d5d54 (target 0xd8d5d60), the branch is always taken.
  At `bnel` at 0xd8d5d60 (target 0xd8d5d24), taken when s1(?) != s2(?) and falls through when s1(?) == s2(?); its branch-likely delay slot `addu v0,s1,s2` at 0xd8d5d64 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5d6c (target 0xd8d5ddc), taken when s1(?) >= s3(?) (signed) and falls through when s1(?) < s3(?) (signed).
  At `beq` at 0xd8d5d80 (target 0xd8d5da8), taken when a1(?) == 0 -> outside and falls through when a1(?) != 0.
  At `bne` at 0xd8d5d9c (target 0xd8d5d90), taken when a0(?) != v1(?) and falls through when a0(?) == v1(?).
  At `beq` at 0xd8d5da4 (target 0xd8d5ddc), taken when s1(?) == v1(?) and falls through when s1(?) != v1(?).
  At `bne` at 0xd8d5dd4 (target 0xd8d5db0), taken when s1(?) != v1(?) and falls through when s1(?) == v1(?).
  At `beq` at 0xd8d5de8 (target 0xd8d5e58), taken when t7(?) == 0 and falls through when t7(?) != 0.
  At `bne` at 0xd8d5df0 (target 0xd8d5e04), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd8d5df8 (target 0xd8d5e04), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8d5e0c (target 0xd8d5e20), taken when t9(?) < s1(?) (signed) and falls through when t9(?) >= s1(?) (signed).
  At `beq` at 0xd8d5e14 (target 0xd8d5e20), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8d5e28 (target 0xd8d5e3c), taken when t6(?) < s1(?) (signed) and falls through when t6(?) >= s1(?) (signed).
  At `beq` at 0xd8d5e30 (target 0xd8d5e3c), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8d5e44 (target 0xd8d5e58), taken when t9(?) < s1(?) (signed) and falls through when t9(?) >= s1(?) (signed).
  At `beq` at 0xd8d5e4c (target 0xd8d5e58), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd8d5e64 (target 0xd8d5e8c), taken when t6(?) == 0 and falls through when t6(?) != 0.
  At `bgezl` at 0xd8d5e70 (target 0xd8d5e84), taken when t8(?) >= 0 (signed) and falls through when t8(?) < 0 (signed); its branch-likely delay slot `addiu v0,v0,4` at 0xd8d5e74 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d5e78 (target 0xd8d5e8c), the branch is always taken.
  At `bnel` at 0xd8d5e84 (target 0xd8d5e70), taken when v0(?) != v1(=sp-300) and falls through when v0(?) == v1(=sp-300); its branch-likely delay slot `lw t8,0(v0)` at 0xd8d5e88 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d5ea0 (target 0xd8d58a8), taken when t8(?) != t9(?) and falls through when t8(?) == t9(?).
  At `blez` at 0xd8d5eb0 (target 0xd8d5f90), taken when t7(?) <= 0 (signed) and falls through when t7(?) > 0 (signed).
  At `beq` at 0xd8d5eb8 (target 0xd8d5f7c), taken when t6(?) == 0 and falls through when t6(?) != 0.
  At `bltz` at 0xd8d5ec0 (target 0xd8d5eec), taken when v1(?) < 0 (signed) and falls through when v1(?) >= 0 (signed).
  At `bltz` at 0xd8d5ef0 (target 0xd8d5f1c), taken when v1(?) < 0 (signed) and falls through when v1(?) >= 0 (signed).
  At `bltz` at 0xd8d5f20 (target 0xd8d5f4c), taken when v1(?) < 0 (signed) and falls through when v1(?) >= 0 (signed).
  At `bltz` at 0xd8d5f50 (target 0xd8d5f7c), taken when v1(?) < 0 (signed) and falls through when v1(?) >= 0 (signed).
  At `beq` at 0xd8d5f88 (target 0xd8d5fb0), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd8d5fdc).
  The instructions from 0xd8d4f4c to 0xd8d4f4c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d5014 to 0xd8d5014 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d52ac to 0xd8d52ac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d52c4 to 0xd8d52c4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d5510 to 0xd8d5510 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d587c to 0xd8d587c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d5e80 to 0xd8d5e80 are not reached by any path from the entry, and their branches are not listed.

- `glXGetFBConfigs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d5fe4 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d5fe4-0xd8d6150 (364 bytes).
  Loads 4 bytes at abs 0xd8f02fc (`lw` at 0xd8d5ff4).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd8d6030).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd8d603c).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd8d6054).
  Loads 4 bytes at abs 0xd8f0084 (`lw` at 0xd8d6058).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd8d605c).
  2 4-byte sw stores at a2, including `sw` at 0xd8d6090, `sw` at 0xd8d613c.
  5 4-byte sw stores at ?, including `sw` at 0xd8d60c4, `sw` at 0xd8d6108, `sw` at 0xd8d610c.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d6008).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=a1 at entry (arg1), a2=unknown, a3=unknown (`jalr` at 0xd8d6068).
  At `bne` at 0xd8d6018 (target 0xd8d6028), taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  At `beq` at 0xd8d6020 (target 0xd8d6140), the branch is always taken.
  At `bltz` at 0xd8d6028 (target 0xd8d6040), taken when a1 < 0 (signed) and falls through when a1 >= 0 (signed).
  At `bnel` at 0xd8d6038 (target 0xd8d604c), taken when a1 < t7(=[a0+136]) (signed) and falls through when a1 >= t7(=[a0+136]) (signed); its branch-likely delay slot `lw t8,32(v1)` at 0xd8d603c runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d6040 (target 0xd8d6140), the branch is always taken.
  At `bne` at 0xd8d607c (target 0xd8d6094), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beq` at 0xd8d608c (target 0xd8d6140), the branch is always taken.
  At `blez` at 0xd8d6094 (target 0xd8d6134), taken when t1(?) <= 0 (signed) and falls through when t1(?) > 0 (signed).
  At `beq` at 0xd8d60a0 (target 0xd8d60dc), taken when (t1(?) & 0x3) == 0 -> outside and falls through when (t1(?) & 0x3) != 0.
  At `bne` at 0xd8d60d0 (target 0xd8d60c4), taken when a2(?) != a1(?) and falls through when a2(?) == a1(?).
  At `beq` at 0xd8d60d8 (target 0xd8d6134), taken when a1(?) == t1(?) and falls through when a1(?) != t1(?).
  At `bne` at 0xd8d612c (target 0xd8d6108), taken when a1(?) != t1(?) and falls through when a1(?) == t1(?).
  Returns v0 = ? (`jr` at 0xd8d6148).
  The instructions from 0xd8d6048 to 0xd8d6048 are not reached by any path from the entry, and their branches are not listed.

- `glXCreateNewContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d6400 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d6400-0xd8d6468 (104 bytes).
  Loads 4 bytes at abs 0xd8eff18 (`lw` at 0xd8d6410).
  Calls `CreateContext [0xd8ae040]` via register-constant with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a2 at entry (arg2) (`jalr` at 0xd8d644c).
  Returns v0 = ret(CreateContext), f0 = ret(CreateContext) (`jr` at 0xd8d6460).

- `__glXQueryContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d6468 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d6468-0xd8d701c (2996 bytes).
  Loads 4 bytes at abs 0xd8f0300 (`lw` at 0xd8d649c).
  5 4-byte lw loads at a0 +0x4d0, including `lw` at 0xd8d64c0, `lw` at 0xd8d657c, `lw` at 0xd8d65cc.
  4 4-byte lw loads at a0 +0x6c, including `lw` at 0xd8d64c8, `lw` at 0xd8d64e0, `lw` at 0xd8d650c.
  Loads 4 bytes at [a0+1232] (`lw` at 0xd8d64cc).
  Loads 4 bytes at a0 +0x70 (`lw` at 0xd8d64e4).
  2 4-byte sw stores at a0 +0x64, including `sw` at 0xd8d64f4, `sw` at 0xd8d6510.
  Loads 4 bytes at abs 0xd8f0088 (`lw` at 0xd8d64f8).
  Stores 2 bytes from t8 at [a0+108] +0x2 (`sh` at 0xd8d651c).
  2 1-byte sb stores at [a0+108], including `sb` at 0xd8d6520, `sb` at 0xd8d654c.
  Loads 4 bytes at a0 +0x60 (`lw` at 0xd8d6524).
  Stores 4 bytes from t3 at a0 +0x6c (`sw` at 0xd8d6538).
  Stores 4 bytes from t5 at a0 +0x60 (`sw` at 0xd8d653c).
  Stores 1 byte from t0 at [a0+108] +0x1 (`sb` at 0xd8d6544).
  Loads 4 bytes at a1 +0x14 (`lw` at 0xd8d6550).
  Stores 4 bytes from t6 at [a0+108] +0x4 (`sw` at 0xd8d655c).
  Loads 4 bytes at abs 0xd8f009c (`lw` at 0xd8d6560).
  8 4-byte lw loads at a0 +0x7c, including `lw` at 0xd8d6584, `lw` at 0xd8d659c, `lw` at 0xd8d65d4.
  4 4-byte lw loads at [a0+1232] +0x4, including `lw` at 0xd8d6588, `lw` at 0xd8d65d8, `lw` at 0xd8d6644.
  Loads 4 bytes at abs 0xd8f0084 (`lw` at 0xd8d6610).
  Loads 4 bytes at abs 0xd8f00c8 (`lw` at 0xd8d667c).
  22 4-byte lw loads at ?, including `lw` at 0xd8d66bc, `lw` at 0xd8d66cc, `lw` at 0xd8d66d4.
  5 4-byte sw stores at a1 +0x30, including `sw` at 0xd8d66f4, `sw` at 0xd8d6764, `sw` at 0xd8d67b8.
  5 4-byte sw stores at a1 +0x34, including `sw` at 0xd8d6704, `sw` at 0xd8d6774, `sw` at 0xd8d67c8.
  5 4-byte sw stores at a1 +0x20, including `sw` at 0xd8d6710, `sw` at 0xd8d6780, `sw` at 0xd8d67d4.
  Loads 4 bytes at abs 0xd8f0078 (`lw` at 0xd8d6888).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d64a4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d64d4).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d6500).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-36, a2=0x0, a3=0x0 (`jalr` at 0xd8d6564).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d6590).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d65ac).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d65e0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d65fc).
  Calls `malloc` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d661c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=ret(malloc), a2=unknown, a3=unknown (`jalr` at 0xd8d664c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d6668).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=unknown, a3=unknown (`jalr` at 0xd8d6688).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d6890).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d68b0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d68cc).
  At `bne` at 0xd8d648c (target 0xd8d649c), taken when a1 != 0 and falls through when a1 == 0.
  At `beq` at 0xd8d6494 (target 0xd8d68dc), the branch is always taken.
  At `bne` at 0xd8d64b0 (target 0xd8d64c0), taken when v0(=ret(__glXSetupForCommand)) != 0 and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  At `beq` at 0xd8d64b8 (target 0xd8d68dc), the branch is always taken.
  At `beql` at 0xd8d64c4 (target 0xd8d64e4), taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v1,108(s1)` at 0xd8d64c8 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d64f0 (target 0xd8d6514), taken when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned) and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw v1,100(s1)` at 0xd8d64f4 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d6574 (target 0xd8d65c0), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beql` at 0xd8d6580 (target 0xd8d65a0), taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8d6584 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d65a4 (target 0xd8d65b8), taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  At `beq` at 0xd8d65b8 (target 0xd8d68dc), the branch is always taken.
  At `bne` at 0xd8d65c4 (target 0xd8d6610), taken when v1(?) < 0x4 (signed) and falls through when v1(?) >= 0x4 (signed).
  At `beql` at 0xd8d65d0 (target 0xd8d65f0), taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8d65d4 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d65f4 (target 0xd8d6608), taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  At `beq` at 0xd8d6608 (target 0xd8d68dc), the branch is always taken.
  At `bne` at 0xd8d6630 (target 0xd8d667c), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beql` at 0xd8d663c (target 0xd8d665c), taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8d6640 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d6660 (target 0xd8d6674), taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  At `beq` at 0xd8d6674 (target 0xd8d68dc), the branch is always taken.
  At `blez` at 0xd8d669c (target 0xd8d6888), taken when t1(?) <= 0 (signed) and falls through when t1(?) > 0 (signed).
  At `beq` at 0xd8d66a8 (target 0xd8d6720), taken when (t1(?) & 0x3) == 0 -> outside and falls through when (t1(?) & 0x3) != 0.
  At `beql` at 0xd8d66c8 (target 0xd8d670c), taken when v0(?) == a1(=0x800c) and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t2,0(v1)` at 0xd8d66cc runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d66d0 (target 0xd8d66fc), taken when v0(?) == a2(=0x8011) and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t8,0(v1)` at 0xd8d66d4 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d66d8 (target 0xd8d66ec), taken when v0(?) == a3(=0x8013) and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t7,0(v1)` at 0xd8d66dc runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d66e0 (target 0xd8d6714), the branch is always taken.
  At `beq` at 0xd8d66f0 (target 0xd8d6714), the branch is always taken.
  At `beq` at 0xd8d6700 (target 0xd8d6714), the branch is always taken.
  At `bnel` at 0xd8d6714 (target 0xd8d66c0), taken when t0(?) != a0(?) and falls through when t0(?) == a0(?); its branch-likely delay slot `lw v0,0(v1)` at 0xd8d6718 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d671c (target 0xd8d6888), taken when a0(?) == t1(?) and falls through when a0(?) != t1(?).
  At `beql` at 0xd8d6738 (target 0xd8d677c), taken when v0(?) == a1(=0x800c) and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t5,0(v1)` at 0xd8d673c runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d6740 (target 0xd8d676c), taken when v0(?) == a2(=0x8011) and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t4,0(v1)` at 0xd8d6744 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d6748 (target 0xd8d675c), taken when v0(?) == a3(=0x8013) and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t3,0(v1)` at 0xd8d674c runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d6750 (target 0xd8d6784), the branch is always taken.
  At `beq` at 0xd8d6760 (target 0xd8d6784), the branch is always taken.
  At `beq` at 0xd8d6770 (target 0xd8d6784), the branch is always taken.
  At `beql` at 0xd8d678c (target 0xd8d67d0), taken when v0(?) == a1(=0x800c) and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t7,0(v1)` at 0xd8d6790 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d6794 (target 0xd8d67c0), taken when v0(?) == a2(=0x8011) and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t9,0(v1)` at 0xd8d6798 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d679c (target 0xd8d67b0), taken when v0(?) == a3(=0x8013) and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t6,0(v1)` at 0xd8d67a0 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d67a4 (target 0xd8d67d8), the branch is always taken.
  At `beq` at 0xd8d67b4 (target 0xd8d67d8), the branch is always taken.
  At `beq` at 0xd8d67c4 (target 0xd8d67d8), the branch is always taken.
  At `beql` at 0xd8d67e0 (target 0xd8d6824), taken when v0(?) == a1(=0x800c) and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t3,0(v1)` at 0xd8d67e4 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d67e8 (target 0xd8d6814), taken when v0(?) == a2(=0x8011) and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t2,0(v1)` at 0xd8d67ec runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d67f0 (target 0xd8d6804), taken when v0(?) == a3(=0x8013) and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t8,0(v1)` at 0xd8d67f4 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d67f8 (target 0xd8d682c), the branch is always taken.
  At `beq` at 0xd8d6808 (target 0xd8d682c), the branch is always taken.
  At `beq` at 0xd8d6818 (target 0xd8d682c), the branch is always taken.
  At `beql` at 0xd8d6834 (target 0xd8d6878), taken when v0(?) == a1(=0x800c) and falls through when v0(?) != a1(=0x800c); its branch-likely delay slot `lw t6,0(v1)` at 0xd8d6838 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d683c (target 0xd8d6868), taken when v0(?) == a2(=0x8011) and falls through when v0(?) != a2(=0x8011); its branch-likely delay slot `lw t5,0(v1)` at 0xd8d6840 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d6844 (target 0xd8d6858), taken when v0(?) == a3(=0x8013) and falls through when v0(?) != a3(=0x8013); its branch-likely delay slot `lw t4,0(v1)` at 0xd8d6848 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d684c (target 0xd8d6880), the branch is always taken.
  At `beq` at 0xd8d685c (target 0xd8d6880), the branch is always taken.
  At `beq` at 0xd8d686c (target 0xd8d6880), the branch is always taken.
  At `bnel` at 0xd8d6880 (target 0xd8d6730), taken when a0(?) != t1(?) and falls through when a0(?) == t1(?); its branch-likely delay slot `lw v0,0(v1)` at 0xd8d6884 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d68a0 (target 0xd8d68c0), taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s1)` at 0xd8d68a4 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d68c4 (target 0xd8d68dc), taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `or v0,zero,zero` at 0xd8d68c8 runs only when taken and is annulled on fall-through.
  Returns v0 = one of 0x0, 0x5 (`jr` at 0xd8d68e8).
  The instructions from 0xd8d66e8 to 0xd8d66e8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d66f8 to 0xd8d66f8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6708 to 0xd8d6708 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6758 to 0xd8d6758 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6768 to 0xd8d6768 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6778 to 0xd8d6778 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d67ac to 0xd8d67ac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d67bc to 0xd8d67bc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d67cc to 0xd8d67cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6800 to 0xd8d6800 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6810 to 0xd8d6810 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6820 to 0xd8d6820 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6854 to 0xd8d6854 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6864 to 0xd8d6864 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d6874 to 0xd8d6874 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d68f0 to 0xd8d7018 are not reached by any path from the entry, and their branches are not listed.

- `glXQueryContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d68f0 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d68f0-0xd8d69b0 (192 bytes).
  Loads 4 bytes at a1 +0xc4 (`lw` at 0xd8d6908).
  Loads 4 bytes at a1 +0x2c (`lw` at 0xd8d6914).
  Loads 4 bytes at abs 0xd8eff20 (`lw` at 0xd8d6920).
  Loads 4 bytes at a1 +0x30 (`lw` at 0xd8d6974).
  3 4-byte sw stores at a3, including `sw` at 0xd8d697c, `sw` at 0xd8d6988, `sw` at 0xd8d6994.
  Loads 4 bytes at a1 +0x34 (`lw` at 0xd8d6980).
  Loads 4 bytes at a1 +0x20 (`lw` at 0xd8d698c).
  Calls `__glXQueryContext [0xd8d6468]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d6930).
  At `bnel` at 0xd8d690c (target 0xd8d6958), taken when t6(=[a1+196]) != 0 and falls through when t6(=[a1+196]) == 0; its branch-likely delay slot `ori at,zero,0x800c` at 0xd8d6910 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d6918 (target 0xd8d6958), taken when t7(=[a1+44]) != 0 and falls through when t7(=[a1+44]) == 0; its branch-likely delay slot `ori at,zero,0x800c` at 0xd8d691c runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d6944 (target 0xd8d6954), taken when v0(=ret(__glXQueryContext)) == 0 and falls through when v0(=ret(__glXQueryContext)) != 0.
  At `beq` at 0xd8d694c (target 0xd8d69a4), the branch is always taken.
  At `beq` at 0xd8d6958 (target 0xd8d698c), taken when a2 == at(=0x800c) and falls through when a2 != at(=0x800c).
  At `beq` at 0xd8d6964 (target 0xd8d6980), taken when a2 == at(=0x8011) and falls through when a2 != at(=0x8011).
  At `bne` at 0xd8d696c (target 0xd8d6998), taken when a2 != at(=0x8013) and falls through when a2 == at(=0x8013).
  At `beq` at 0xd8d6978 (target 0xd8d69a0), the branch is always taken.
  At `beq` at 0xd8d6984 (target 0xd8d69a0), the branch is always taken.
  At `beq` at 0xd8d6990 (target 0xd8d69a0), the branch is always taken.
  At `beq` at 0xd8d6998 (target 0xd8d69a0), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd8d69a8).

- `__glXGetReadDrawableSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d6df0 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d6df0-0xd8d6ee0 (240 bytes).
  Loads 4 bytes at a0 +0x4c (`lw` at 0xd8d6e10).
  Loads 4 bytes at [a0+76] +0x11c (`lw` at 0xd8d6e1c).
  Loads 4 bytes at [a0+76] +0x120 (`lw` at 0xd8d6e2c).
  2 4-byte lw loads at abs 0xd8f0324, including `lw` at 0xd8d6e3c, `lw` at 0xd8d6e64.
  2 4-byte lw loads at [a0+76] +0xd8, including `lw` at 0xd8d6e40, `lw` at 0xd8d6e84.
  2 4-byte lw loads at [a0+76] +0xdc, including `lw` at 0xd8d6e44, `lw` at 0xd8d6e88.
  4 4-byte lw loads at ?, including `lw` at 0xd8d6e6c, `lw` at 0xd8d6e74, `lw` at 0xd8d6ea8.
  2 4-byte lw loads at abs 0xd8f0328, including `lw` at 0xd8d6e80, `lw` at 0xd8d6ea0.
  Stores 4 bytes from t8 at a1 (`sw` at 0xd8d6ec0).
  Stores 4 bytes from t0 at a2 (`sw` at 0xd8d6ecc).
  Calls `glXQueryGLXPbufferSGIX` via got with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801d, a3=sp-8 (`jalr` at 0xd8d6e50).
  Calls `glXQueryGLXPbufferSGIX` via got with a0=unknown, a1=unknown, a2=0x801e, a3=sp-12 (`jalr` at 0xd8d6e70).
  Calls `glXQueryDrawable` via got with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801d, a3=sp-8 (`jalr` at 0xd8d6e8c).
  Calls `glXQueryDrawable` via got with a0=unknown, a1=unknown, a2=0x801e, a3=sp-12 (`jalr` at 0xd8d6eac).
  At `bne` at 0xd8d6e24 (target 0xd8d6e80), taken when t6(=[[a0+76]+284]) != at(=0x1) and falls through when t6(=[[a0+76]+284]) == at(=0x1).
  At `beq` at 0xd8d6e34 (target 0xd8d6e80), taken when t7(=[[a0+76]+288]) >= 0x3 (signed) and falls through when t7(=[[a0+76]+288]) < 0x3 (signed).
  At `beq` at 0xd8d6e78 (target 0xd8d6eb8), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd8d6ed8).

- `__glXMakeContextCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d789c (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d789c-0xd8d8578 (3292 bytes).
  Loads 4 bytes at abs 0xd8f0300 (`lw` at 0xd8d78ac).
  9 4-byte lw loads at abs 0x1014, including `lw` at 0xd8d790c, `lw` at 0xd8d7948, `lw` at 0xd8d798c.
  3 4-byte lw loads at abs 0xd8eff18, including `lw` at 0xd8d7910, `lw` at 0xd8d7c30, `lw` at 0xd8d7e14.
  7 4-byte lw loads at a3 +0x14, including `lw` at 0xd8d7920, `lw` at 0xd8d7ac4, `lw` at 0xd8d7b68.
  Loads 4 bytes at a3 +0xd0 (`lw` at 0xd8d7930).
  2 4-byte lw loads at [0x1014] +0x10c, including `lw` at 0xd8d794c, `lw` at 0xd8d7990.
  2 4-byte lw loads at [0x1014] +0x110, including `lw` at 0xd8d7958, `lw` at 0xd8d799c.
  Loads 4 bytes at a3 +0xd4 (`lw` at 0xd8d795c).
  8 4-byte lw loads at abs 0xd8f02b8, including `lw` at 0xd8d7968, `lw` at 0xd8d7a00, `lw` at 0xd8d7ab0.
  2 4-byte sw stores at a3 +0xd0, including `sw` at 0xd8d7994, `sw` at 0xd8d7a30.
  2 4-byte sw stores at a3 +0xd4, including `sw` at 0xd8d79a0, `sw` at 0xd8d7a2c.
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd8d79a8).
  3 4-byte lw loads at [[0x1014]+276] +0xc4, including `lw` at 0xd8d79ac, `lw` at 0xd8d7bc4, `lw` at 0xd8d7bcc.
  Loads 4 bytes at [[0x1014]+276] +0xc8 (`lw` at 0xd8d79bc).
  2 4-byte lw loads at [[0x1014]+276] +0xe0, including `lw` at 0xd8d79c0, `lw` at 0xd8d823c.
  2 4-byte lw loads at [[0x1014]+276] +0xdc, including `lw` at 0xd8d79cc, `lw` at 0xd8d8240.
  Loads 4 bytes at [[[0x1014]+276]+200] +0x5c (`lw` at 0xd8d79e4).
  2 4-byte lw loads at [[0x1014]+276] +0x118, including `lw` at 0xd8d79fc, `lw` at 0xd8d84b8.
  2 4-byte lw loads at [[0x1014]+276] +0x14, including `lw` at 0xd8d7a18, `lw` at 0xd8d84c0.
  2 4-byte lw loads at [[0x1014]+276] +0xe4, including `lw` at 0xd8d7a40, `lw` at 0xd8d7a54.
  Loads 4 bytes at abs 0xd8f02a8 (`lw` at 0xd8d7a44).
  Loads 4 bytes at [[0x1014]+276] +0xe8 (`lw` at 0xd8d7a5c).
  3 4-byte lw loads at a3 +0xc4, including `lw` at 0xd8d7a78, `lw` at 0xd8d7f38, `lw` at 0xd8d8248.
  2 4-byte lw loads at abs 0xd8f0264, including `lw` at 0xd8d7a94, `lw` at 0xd8d7b38.
  10 4-byte lw loads at abs 0xd8eff1c, including `lw` at 0xd8d7ad4, `lw` at 0xd8d7b78, `lw` at 0xd8d7c50.
  6 4-byte lw loads at a3 +0x20, including `lw` at 0xd8d7af8, `lw` at 0xd8d7b9c, `lw` at 0xd8d7f80.
  2 4-byte lw loads at ret(__glXAddDrawableInterest) +0x8, including `lw` at 0xd8d7afc, `lw` at 0xd8d7ba0.
  6 4-byte lw loads at a3 +0x30, including `lw` at 0xd8d7b0c, `lw` at 0xd8d7f98, `lw` at 0xd8d7fac.
  Loads 4 bytes at ret(__glXAddDrawableInterest) +0xc (`lw` at 0xd8d7b10).
  Loads 4 bytes at ret(__glXAddDrawableInterest) +0x2c (`lw` at 0xd8d7b1c).
  Loads 4 bytes at ret(__glXAddDrawableInterest) +0x10 (`lw` at 0xd8d7bac).
  5 4-byte lw loads at abs 0xd8eff40, including `lw` at 0xd8d7bec, `lw` at 0xd8d7c10, `lw` at 0xd8d7f54.
  3 4-byte lw loads at [[0x1014]+276] +0xd8, including `lw` at 0xd8d7c20, `lw` at 0xd8d8238, `lw` at 0xd8d849c.
  3 4-byte lw loads at [[0x1014]+276] +0x3c, including `lw` at 0xd8d7c34, `lw` at 0xd8d7dd8, `lw` at 0xd8d7e18.
  2 4-byte sw stores at [[0x1014]+276] +0x3c, including `sw` at 0xd8d7c7c, `sw` at 0xd8d7f64.
  Loads 4 bytes at abs 0xd8f002c (`lw` at 0xd8d7c80).
  4 1-byte lbu loads at ?, including `lbu` at 0xd8d7c94, `lbu` at 0xd8d7ca0, `lbu` at 0xd8d7ccc.
  Loads 4 bytes at abs 0xd8f0180 (`lw` at 0xd8d7cac).
  2 4-byte lw loads at a0 +0x60, including `lw` at 0xd8d7ce0, `lw` at 0xd8d7d5c.
  6 4-byte lw loads at a0 +0x4c8, including `lw` at 0xd8d7d00, `lw` at 0xd8d7d7c, `lw` at 0xd8d7e5c.
  4 4-byte sw stores at a0 +0x4c8, including `sw` at 0xd8d7d18, `sw` at 0xd8d7d94, `sw` at 0xd8d7e7c.
  2 4-byte lw loads at abs 0xd8f0184, including `lw` at 0xd8d7d1c, `lw` at 0xd8d7d98.
  36 4-byte lw loads at ?, including `lw` at 0xd8d7d20, `lw` at 0xd8d7d9c, `lw` at 0xd8d7f70.
  4 1-byte sb stores at ?, including `sb` at 0xd8d7d3c, `sb` at 0xd8d7db4, `sb` at 0xd8d7e60.
  2 1-byte lbu loads at a3 +0x1d, including `lbu` at 0xd8d7dc0, `lbu` at 0xd8d7f8c.
  2 4-byte lw loads at abs 0xd8f0188, including `lw` at 0xd8d7e80, `lw` at 0xd8d7ee4.
  Stores 4 bytes from t8 at a3 +0x3c (`sw` at 0xd8d7f48).
  21 4-byte sw stores at ?, including `sw` at 0xd8d7f7c, `sw` at 0xd8d7f88, `sw` at 0xd8d7f9c.
  2 4-byte lw loads at abs 0xd8f02dc, including `lw` at 0xd8d7fa8, `lw` at 0xd8d805c.
  2 4-byte lw loads at abs 0xd8f01b4, including `lw` at 0xd8d7fcc, `lw` at 0xd8d8078.
  2 4-byte lw loads at a3 +0x11c, including `lw` at 0xd8d7fe8, `lw` at 0xd8d8094.
  2 4-byte lw loads at a3 +0x120, including `lw` at 0xd8d7ff8, `lw` at 0xd8d80a4.
  2 4-byte lw loads at abs 0xd8f0328, including `lw` at 0xd8d801c, `lw` at 0xd8d80c8.
  3 4-byte lw loads at a3 +0xc8, including `lw` at 0xd8d80f4, `lw` at 0xd8d8114, `lw` at 0xd8d8264.
  Loads 4 bytes at [a3+200] +0x68 (`lw` at 0xd8d8118).
  2 4-byte sw stores at [0x1014] +0x114, including `sw` at 0xd8d8244, `sw` at 0xd8d843c.
  Stores 4 bytes from s4 at a3 +0xd8 (`sw` at 0xd8d824c).
  Stores 4 bytes from s5 at a3 +0xe0 (`sw` at 0xd8d8250).
  Stores 4 bytes from s1 at a3 +0xe4 (`sw` at 0xd8d8254).
  Stores 4 bytes from s6 at a3 +0xdc (`sw` at 0xd8d8258).
  Stores 4 bytes from s2 at a3 +0xe8 (`sw` at 0xd8d8260).
  Loads 4 bytes at [a3+200] +0x64 (`lw` at 0xd8d8270).
  4 4-byte sw stores at [[0x1014]+276] +0xd8, including `sw` at 0xd8d82a0, `sw` at 0xd8d8334, `sw` at 0xd8d83b8.
  4 4-byte sw stores at [[0x1014]+276] +0xe0, including `sw` at 0xd8d82a4, `sw` at 0xd8d8338, `sw` at 0xd8d83bc.
  4 4-byte sw stores at [[0x1014]+276] +0xdc, including `sw` at 0xd8d82ac, `sw` at 0xd8d8340, `sw` at 0xd8d83c8.
  4 4-byte sw stores at [[0x1014]+276] +0xe4, including `sw` at 0xd8d82b4, `sw` at 0xd8d8348, `sw` at 0xd8d83cc.
  4 4-byte sw stores at [[0x1014]+276] +0xe8, including `sw` at 0xd8d82c4, `sw` at 0xd8d8358, `sw` at 0xd8d83e0.
  Loads 4 bytes at [a3+200] +0x60 (`lw` at 0xd8d8314).
  Loads 1 byte at a3 +0xf4 (`lbu` at 0xd8d839c).
  2 4-byte lw loads at abs 0x1048, including `lw` at 0xd8d83ec, `lw` at 0xd8d8440.
  Loads 4 bytes at abs 0xd8f09b4 (`lw` at 0xd8d83f8).
  Loads 4 bytes at abs 0xd8f09b8 (`lw` at 0xd8d844c).
  Stores 4 bytes from t3 at [0x1014] +0x118 (`sw` at 0xd8d84a4).
  Loads 4 bytes at [[0x1014]+276] +0x110 (`lw` at 0xd8d84ac).
  Stores 4 bytes from t7 at [0x1014] +0x11c (`sw` at 0xd8d84b0).
  Stores 4 bytes from t5 at [0x1014] +0x120 (`sw` at 0xd8d84bc).
  Loads 4 bytes at abs 0xd8f01ac (`lw` at 0xd8d84cc).
  Stores 4 bytes from zero at [[0x1014]+276] +0xd4 (`sw` at 0xd8d84fc).
  Stores 4 bytes from zero at [[0x1014]+276] +0xd0 (`sw` at 0xd8d8500).
  2 4-byte lw loads at abs 0xd8f0270, including `lw` at 0xd8d8510, `lw` at 0xd8d8534.
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d78f0).
  Calls `__glXInitThread [0xd8ae988]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d7918).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xa, a2=0x5, a3=[a3+20] (`jalr` at 0xd8d7974).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+200], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d79e8).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x5, a3=[[[0x1014]+276]+20] (`jalr` at 0xd8d7a14).
  Calls `__glXUnbindHWContextFromThread` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d7a48).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d7a9c).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd8d7ac0).
  Calls `__glXRestoreCurrent [0xd8c2a98]` via register-constant with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=0x0, a3=0x0 (`jalr` at 0xd8d7ae4).
  Calls `__glXAddDrawableInterest` via got with a0=a2 at entry (arg2), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d7b40).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd8d7b64).
  Calls `__glXRestoreCurrent [0xd8c2a98]` via register-constant with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=ret(__glXAddDrawableInterest), a3=0x0 (`jalr` at 0xd8d7b88).
  Calls `__glXSendMakeCurrent [0xd8af4fc]` via register-constant with a0=[[[0x1014]+276]+216], a1=0x0, a2=[[[0x1014]+276]+60], a3=sp-64 (`jalr` at 0xd8d7c40).
  Calls `__glXRestoreCurrent [0xd8c2a98]` via register-constant with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=0x0 (`jalr` at 0xd8d7c64).
  Calls `XSGIMiscQueryExtension` via got with a0=a0 at entry (arg0), a1=sp-136, a2=sp-140, a3=unknown (`jalr` at 0xd8d7cb8).
  Calls `_XSGISetSpecialDestroyInterest` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d7d28).
  Calls `_XSGISetSpecialDestroyInterest` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d7da4).
  Calls `__glXSendMakeCurrentRead [0xd8c2d34]` via register-constant with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1014]+276]+60], a3=sp-64 (`jalr` at 0xd8d7e00).
  Calls `__glXSendMakeCurrent [0xd8af4fc]` via register-constant with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1014]+276]+60], a3=sp-64 (`jalr` at 0xd8d7e28).
  Calls `_XDeqAsyncHandler` via got with a0=a0 at entry (arg0), a1=sp-76, a2=unknown, a3=unknown (`jalr` at 0xd8d7e8c).
  Calls `_XDeqAsyncHandler` via got with a0=a0 at entry (arg0), a1=sp-88, a2=unknown, a3=unknown (`jalr` at 0xd8d7ef0).
  Calls `__glXRestoreCurrent [0xd8c2a98]` via register-constant with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`jalr` at 0xd8d7f1c).
  Calls `__glXOverrideVisualsBogusChoose` via got with a0=unknown, a1=[a3+48], a2=unknown, a3=unknown (`jalr` at 0xd8d7fb0).
  Calls `__glXGetModes` via got with a0=a0 at entry (arg0), a1=[a3+32], a2=unknown, a3=unknown (`jalr` at 0xd8d7fd8).
  Calls `glXQueryDrawable` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x8025, a3=unknown (`jalr` at 0xd8d8028).
  Calls `__glXOverrideVisualsBogusChoose` via got with a0=unknown, a1=[a3+48], a2=unknown, a3=unknown (`jalr` at 0xd8d8064).
  Calls `__glXGetModes` via got with a0=a0 at entry (arg0), a1=[a3+32], a2=ret(__glXOverrideVisualsBogusChoose), a3=unknown (`jalr` at 0xd8d8084).
  Calls `glXQueryDrawable` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x8025, a3=unknown (`jalr` at 0xd8d80d4).
  Calls `(unknown callee)` via register with a0=[a3+200], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d8138).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0x8, a2=0x5, a3=[a3+20] (`jalr` at 0xd8d8158).
  Calls `__glXRestoreCurrent [0xd8c2a98]` via register-constant with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`jalr` at 0xd8d817c).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd8d81f8).
  Calls `__glXRestoreCurrent [0xd8c2a98]` via register-constant with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`jalr` at 0xd8d821c).
  Calls `(unknown callee)` via register with a0=[a3+200], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d8284).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd8d82d0).
  Calls `__glXRestoreCurrent [0xd8c2a98]` via register-constant with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`jalr` at 0xd8d82f4).
  Calls `(unknown callee)` via register with a0=[a3+200], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d8318).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd8d8364).
  Calls `__glXRestoreCurrent [0xd8c2a98]` via register-constant with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`jalr` at 0xd8d8388).
  Calls `__glXRestoreCurrent [0xd8c2a98]` via register-constant with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`jalr` at 0xd8d83dc).
  Calls `__glXFreeContext` via got with a0=[[0x1014]+276], a1=0x1, a2=unknown, a3=unknown (`jalr` at 0xd8d84d8).
  Calls `__glXRemoveDrawableInterest` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d8518).
  Calls `__glXRemoveDrawableInterest` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8d853c).
  At `bne` at 0xd8d78f8 (target 0xd8d7908), taken when v0(=ret(__glXSetupForCommand)) != 0 and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  At `beq` at 0xd8d7900 (target 0xd8d854c), the branch is always taken.
  At `beql` at 0xd8d7908 (target 0xd8d79a8), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0; its branch-likely delay slot `lw t5,4116(zero)` at 0xd8d790c runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d792c (target 0xd8d7940), taken when a3(=[a3+20]) != 0 and falls through when a3(=[a3+20]) == 0; its branch-likely delay slot `lw v1,208(s0)` at 0xd8d7930 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d7934 (target 0xd8d854c), the branch is always taken.
  At `beql` at 0xd8d7940 (target 0xd8d798c), taken when v1(=[a3+208]) == 0 and falls through when v1(=[a3+208]) != 0; its branch-likely delay slot `addiu a0,zero,4096` at 0xd8d7944 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d7950 (target 0xd8d7968), taken when t6(=[[0x1014]+268]) != v1(=[a3+208]) and falls through when t6(=[[0x1014]+268]) == v1(=[a3+208]).
  At `beql` at 0xd8d7960 (target 0xd8d798c), taken when t7(=[[0x1014]+272]) == t8(=[a3+212]) and falls through when t7(=[[0x1014]+272]) != t8(=[a3+212]); its branch-likely delay slot `addiu a0,zero,4096` at 0xd8d7964 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d7980 (target 0xd8d854c), the branch is always taken.
  At `beql` at 0xd8d79b0 (target 0xd8d7a6c), taken when t6(=[[[0x1014]+276]+196]) == 0 and falls through when t6(=[[[0x1014]+276]+196]) != 0; its branch-likely delay slot `sw zero,240(sp)` at 0xd8d79b4 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d79b8 (target 0xd8d79e0), taken when s0(=a3) != s3(=[[0x1014]+276]) and falls through when s0(=a3) == s3(=[[0x1014]+276]).
  At `bnel` at 0xd8d79c4 (target 0xd8d79e4), taken when s5(=a1) != t7(=[[[0x1014]+276]+224]) and falls through when s5(=a1) == t7(=[[[0x1014]+276]+224]); its branch-likely delay slot `sw a0,232(sp)` at 0xd8d79c8 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d79d0 (target 0xd8d79e4), taken when s6(=a2) != t8(=[[[0x1014]+276]+220]) and falls through when s6(=a2) == t8(=[[[0x1014]+276]+220]); its branch-likely delay slot `sw a0,232(sp)` at 0xd8d79d4 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d79d8 (target 0xd8d854c), the branch is always taken.
  At `bne` at 0xd8d79f4 (target 0xd8d7a3c), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  At `beq` at 0xd8d7a1c (target 0xd8d7a34), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd8d7a24 (target 0xd8d7a34), taken when s0(=a3) == s3(=[[0x1014]+276]) and falls through when s0(=a3) != s3(=[[0x1014]+276]).
  At `beq` at 0xd8d7a34 (target 0xd8d854c), the branch is always taken.
  At `beql` at 0xd8d7a3c (target 0xd8d7a58), taken when s0(=a3) == s3(=[[0x1014]+276]) and falls through when s0(=a3) != s3(=[[0x1014]+276]); its branch-likely delay slot `lw t2,228(s3)` at 0xd8d7a40 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d7a60 (target 0xd8d7a70), the branch is always taken.
  At `beq` at 0xd8d7a70 (target 0xd8d7bc8), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd8d7a7c (target 0xd8d7bc8), taken when t4(=[a3+196]) == 0 and falls through when t4(=[a3+196]) != 0.
  At `beq` at 0xd8d7a84 (target 0xd8d7bc8), taken when s5(=a1) == 0 and falls through when s5(=a1) != 0.
  At `beq` at 0xd8d7a8c (target 0xd8d7bc8), taken when s6(=a2) == 0 and falls through when s6(=a2) != 0.
  At `bne` at 0xd8d7aa8 (target 0xd8d7af8), taken when v0(=ret(__glXAddDrawableInterest)) != 0 and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  At `beq` at 0xd8d7af0 (target 0xd8d854c), the branch is always taken.
  At `bnel` at 0xd8d7b04 (target 0xd8d7b30), taken when t5(=[a3+32]) != t6(=[ret(__glXAddDrawableInterest)+8]) and falls through when t5(=[a3+32]) == t6(=[ret(__glXAddDrawableInterest)+8]); its branch-likely delay slot `addiu s7,zero,1` at 0xd8d7b08 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d7b14 (target 0xd8d7b30), taken when t7(=[a3+48]) != t8(=[ret(__glXAddDrawableInterest)+12]) and falls through when t7(=[a3+48]) == t8(=[ret(__glXAddDrawableInterest)+12]); its branch-likely delay slot `addiu s7,zero,1` at 0xd8d7b18 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d7b24 (target 0xd8d7b30), taken when t9(=[ret(__glXAddDrawableInterest)+44]) != at(=0x3) and falls through when t9(=[ret(__glXAddDrawableInterest)+44]) == at(=0x3).
  At `beq` at 0xd8d7b30 (target 0xd8d7bc0), taken when s5(=a1) == s6(=a2) and falls through when s5(=a1) != s6(=a2).
  At `bne` at 0xd8d7b4c (target 0xd8d7b9c), taken when v0(=ret(__glXAddDrawableInterest)) != 0 and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  At `beq` at 0xd8d7b94 (target 0xd8d854c), the branch is always taken.
  At `bne` at 0xd8d7ba4 (target 0xd8d7bb8), taken when t2(=[a3+32]) != t3(=[ret(__glXAddDrawableInterest)+8]) and falls through when t2(=[a3+32]) == t3(=[ret(__glXAddDrawableInterest)+8]).
  At `bne` at 0xd8d7bb0 (target 0xd8d7bc0), taken when t4(=[ret(__glXAddDrawableInterest)+16]) != 0 and falls through when t4(=[ret(__glXAddDrawableInterest)+16]) == 0.
  At `beq` at 0xd8d7bb8 (target 0xd8d7bc0), the branch is always taken.
  At `beq` at 0xd8d7bc0 (target 0xd8d7be4), the branch is always taken.
  At `bne` at 0xd8d7bc8 (target 0xd8d7be0), taken when s0(=a3) != 0 and falls through when s0(=a3) == 0.
  At `bnel` at 0xd8d7bd0 (target 0xd8d7be4), taken when s5(=a1) != 0 and falls through when s5(=a1) == 0; its branch-likely delay slot `addiu s7,zero,1` at 0xd8d7bd4 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d7bd8 (target 0xd8d7be4), taken when s6(=a2) == 0 and falls through when s6(=a2) != 0.
  At `bne` at 0xd8d7be4 (target 0xd8d7c00), taken when v0(=[[[0x1014]+276]+196]) != 0 and falls through when v0(=[[[0x1014]+276]+196]) == 0.
  At `beq` at 0xd8d7bf4 (target 0xd8d7c00), taken when s3(=[[0x1014]+276]) == t5(=0xd8f0be0) and falls through when s3(=[[0x1014]+276]) != t5(=0xd8f0be0).
  At `beq` at 0xd8d7c00 (target 0xd8d80e0), taken when s7(=one of 0x0, 0x1) == 0 and falls through when s7(=one of 0x0, 0x1) != 0.
  At `bne` at 0xd8d7c08 (target 0xd8d7c80), taken when v0(=[[[0x1014]+276]+196]) != 0 and falls through when v0(=[[[0x1014]+276]+196]) == 0.
  At `beq` at 0xd8d7c18 (target 0xd8d7c80), taken when s3(=[[0x1014]+276]) == t6(=0xd8f0be0) and falls through when s3(=[[0x1014]+276]) != t6(=0xd8f0be0).
  At `beq` at 0xd8d7c28 (target 0xd8d7c80), taken when s4(=a0) == a0(=[[[0x1014]+276]+216]) and falls through when s4(=a0) != a0(=[[[0x1014]+276]+216]).
  At `bne` at 0xd8d7c48 (target 0xd8d7c78), taken when v0(=ret(__glXSendMakeCurrent)) != 0 and falls through when v0(=ret(__glXSendMakeCurrent)) == 0.
  At `beq` at 0xd8d7c70 (target 0xd8d854c), the branch is always taken.
  At `beq` at 0xd8d7c8c (target 0xd8d7db8), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0xd8d7c98 (target 0xd8d7cac), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `bne` at 0xd8d7ca4 (target 0xd8d7db8), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `beq` at 0xd8d7cc4 (target 0xd8d7d40), taken when v0(=ret(XSGIMiscQueryExtension)) == 0 and falls through when v0(=ret(XSGIMiscQueryExtension)) != 0.
  At `bne` at 0xd8d7cd8 (target 0xd8d7d40), taken when t3(?) != 0 and falls through when t3(?) == 0.
  At `beq` at 0xd8d7d40 (target 0xd8d7db8), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0xd8d7d54 (target 0xd8d7db8), taken when t5(?) != 0 and falls through when t5(?) == 0.
  At `beq` at 0xd8d7db8 (target 0xd8d7dcc), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `bne` at 0xd8d7dc4 (target 0xd8d7dd4), taken when t7(=[a3+29]:1) != 0 and falls through when t7(=[a3+29]:1) == 0.
  At `beq` at 0xd8d7dcc (target 0xd8d7e14), taken when s5(=a1) == s6(=a2) and falls through when s5(=a1) != s6(=a2).
  At `beq` at 0xd8d7e0c (target 0xd8d7e38), the branch is always taken.
  At `bnel` at 0xd8d7e44 (target 0xd8d7ea0), taken when t9(?) != t2(?) and falls through when t9(?) == t2(?); its branch-likely delay slot `lw t8,180(sp)` at 0xd8d7e48 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d7e4c (target 0xd8d7e64), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `bnel` at 0xd8d7e58 (target 0xd8d7e68), taken when t4(?) != at(=0x3) and falls through when t4(?) == at(=0x3); its branch-likely delay slot `lw t6,1224(s4)` at 0xd8d7e5c runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d7e70 (target 0xd8d7e80), taken when t5(=sp-76) != t6(=[a0+1224]) and falls through when t5(=sp-76) == t6(=[a0+1224]).
  At `beq` at 0xd8d7e78 (target 0xd8d7e9c), the branch is always taken.
  At `bne` at 0xd8d7ea8 (target 0xd8d7f00), taken when t8(?) != t9(?) and falls through when t8(?) == t9(?).
  At `beq` at 0xd8d7eb0 (target 0xd8d7ec8), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `bnel` at 0xd8d7ebc (target 0xd8d7ecc), taken when t3(?) != at(=0x3) and falls through when t3(?) == at(=0x3); its branch-likely delay slot `lw t5,1224(s4)` at 0xd8d7ec0 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d7ed4 (target 0xd8d7ee4), taken when t4(=sp-88) != t5(=[a0+1224]) and falls through when t4(=sp-88) == t5(=[a0+1224]).
  At `beq` at 0xd8d7edc (target 0xd8d7f00), the branch is always taken.
  At `bne` at 0xd8d7f00 (target 0xd8d7f30), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd8d7f28 (target 0xd8d854c), the branch is always taken.
  At `beq` at 0xd8d7f30 (target 0xd8d7f4c), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `bne` at 0xd8d7f40 (target 0xd8d7f4c), taken when t7(=[a3+196]) != 0 and falls through when t7(=[a3+196]) == 0.
  At `beq` at 0xd8d7f4c (target 0xd8d7f68), taken when s0(=a3) == s3(=[[0x1014]+276]) and falls through when s0(=a3) != s3(=[[0x1014]+276]).
  At `beq` at 0xd8d7f5c (target 0xd8d7f68), taken when s3(=[[0x1014]+276]) == t9(=0xd8f0be0) and falls through when s3(=[[0x1014]+276]) != t9(=0xd8f0be0).
  At `beq` at 0xd8d7f68 (target 0xd8d80e0), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `bnel` at 0xd8d7f74 (target 0xd8d8038), taken when t2(?) != 0 and falls through when t2(?) == 0; its branch-likely delay slot `lw t3,16(s2)` at 0xd8d7f78 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d7f84 (target 0xd8d7fc4), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beql` at 0xd8d7f94 (target 0xd8d7fc8), taken when t4(=[a3+29]:1) == 0 and falls through when t4(=[a3+29]:1) != 0; its branch-likely delay slot `lw t7,48(s0)` at 0xd8d7f98 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d7fbc (target 0xd8d7fcc), the branch is always taken.
  At `beql` at 0xd8d7ff0 (target 0xd8d800c), taken when t8(=[a3+284]) >= 0x2 (signed) and falls through when t8(=[a3+284]) < 0x2 (signed); its branch-likely delay slot `lw t2,44(s1)` at 0xd8d7ff4 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d8000 (target 0xd8d8038), taken when t9(=[a3+288]) < 0x3 (signed) and falls through when t9(=[a3+288]) >= 0x3 (signed); its branch-likely delay slot `lw t3,16(s2)` at 0xd8d8004 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d8014 (target 0xd8d8038), taken when t2(?) != at(=0x6) and falls through when t2(?) == at(=0x6); its branch-likely delay slot `lw t3,16(s2)` at 0xd8d8018 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d8038 (target 0xd8d80e0), taken when t3(?) != 0 and falls through when t3(?) == 0.
  At `beql` at 0xd8d809c (target 0xd8d80b8), taken when t7(=[a3+284]) >= 0x2 (signed) and falls through when t7(=[a3+284]) < 0x2 (signed); its branch-likely delay slot `lw t9,44(s2)` at 0xd8d80a0 runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d80ac (target 0xd8d80e0), taken when t8(=[a3+288]) < 0x3 (signed) and falls through when t8(=[a3+288]) >= 0x3 (signed).
  At `bne` at 0xd8d80c0 (target 0xd8d80e0), taken when t9(?) != at(=0x6) and falls through when t9(?) == at(=0x6).
  At `beq` at 0xd8d80e0 (target 0xd8d8190), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `bnel` at 0xd8d80f0 (target 0xd8d8118), taken when t2(=[a3+48]) != v0(?) and falls through when t2(=[a3+48]) == v0(?); its branch-likely delay slot `lw a0,200(s0)` at 0xd8d80f4 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d80fc (target 0xd8d8190), taken when t3(?) == v0(?) and falls through when t3(?) != v0(?).
  At `beq` at 0xd8d810c (target 0xd8d8190), taken when t4(?) == at(=0x3) and falls through when t4(?) != at(=0x3).
  At `beq` at 0xd8d811c (target 0xd8d8190), taken when v0(=[[a3+200]+104]) == 0 and falls through when v0(=[[a3+200]+104]) != 0.
  At `bne` at 0xd8d8140 (target 0xd8d8190), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  At `beq` at 0xd8d8188 (target 0xd8d854c), the branch is always taken.
  At `beq` at 0xd8d8190 (target 0xd8d8230), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0xd8d8198 (target 0xd8d8230), taken when s1(?) == s2(?) and falls through when s1(?) != s2(?).
  At `beql` at 0xd8d81a8 (target 0xd8d81c4), taken when t6(?) == at(=0x4) and falls through when t6(?) != at(=0x4); its branch-likely delay slot `lw t8,28(s1)` at 0xd8d81ac runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8d81b8 (target 0xd8d8230), taken when t7(?) != at(=0x4) and falls through when t7(?) == at(=0x4).
  At `bne` at 0xd8d81cc (target 0xd8d8230), taken when t8(?) < t9(?) (signed) and falls through when t8(?) >= t9(?) (signed).
  At `bne` at 0xd8d81e0 (target 0xd8d8230), taken when t2(?) < t3(?) (signed) and falls through when t2(?) >= t3(?) (signed).
  At `beq` at 0xd8d8228 (target 0xd8d854c), the branch is always taken.
  At `beq` at 0xd8d8230 (target 0xd8d8434), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd8d825c (target 0xd8d83ec), taken when t4(=[a3+196]) == 0 and falls through when t4(=[a3+196]) != 0.
  At `beq` at 0xd8d8274 (target 0xd8d8308), taken when v0(=[[a3+200]+100]) == 0 and falls through when v0(=[[a3+200]+100]) != 0.
  At `bne` at 0xd8d8298 (target 0xd8d839c), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  At `beq` at 0xd8d8300 (target 0xd8d854c), the branch is always taken.
  At `bne` at 0xd8d832c (target 0xd8d839c), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  At `beq` at 0xd8d8394 (target 0xd8d854c), the branch is always taken.
  At `beq` at 0xd8d83a8 (target 0xd8d8484), taken when t2(=[a3+244]:1) == 0 and falls through when t2(=[a3+244]:1) != 0.
  At `bne` at 0xd8d83b0 (target 0xd8d8484), taken when s7(=one of 0x0, 0x1) != 0 and falls through when s7(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8d83e4 (target 0xd8d7908), the branch is always taken.
  At `bne` at 0xd8d83f0 (target 0xd8d8484), taken when t5(=[0x1048]) != 0 and falls through when t5(=[0x1048]) == 0.
  At `bne` at 0xd8d8420 (target 0xd8d8404), taken when t9(?) != t2(=sym(__glx_dispatch)+1812) and falls through when t9(?) == t2(=sym(__glx_dispatch)+1812).
  At `beq` at 0xd8d842c (target 0xd8d8484), the branch is always taken.
  At `bne` at 0xd8d8444 (target 0xd8d8484), taken when t4(=[0x1048]) != 0 and falls through when t4(=[0x1048]) == 0.
  At `bne` at 0xd8d8474 (target 0xd8d8458), taken when t2(?) != t7(=sym(__glx_nopDispatch)+1812) and falls through when t2(?) == t7(=sym(__glx_nopDispatch)+1812).
  At `beql` at 0xd8d8484 (target 0xd8d8508), taken when s0(=a3) == s3(=[[0x1014]+276]) and falls through when s0(=a3) != s3(=[[0x1014]+276]); its branch-likely delay slot `lw t8,244(sp)` at 0xd8d8488 runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d8494 (target 0xd8d8508), taken when s3(=[[0x1014]+276]) == t8(=0xd8f0be0) and falls through when s3(=[[0x1014]+276]) != t8(=0xd8f0be0); its branch-likely delay slot `lw t8,244(sp)` at 0xd8d8498 runs only when taken and is annulled on fall-through.
  At `bnel` at 0xd8d84c4 (target 0xd8d84ec), taken when t6(=[[[0x1014]+276]+20]) != 0 and falls through when t6(=[[[0x1014]+276]+20]) == 0; its branch-likely delay slot `sw zero,216(s3)` at 0xd8d84c8 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8d84e0 (target 0xd8d8504), the branch is always taken.
  At `beql` at 0xd8d8508 (target 0xd8d854c), taken when t8(?) == 0 and falls through when t8(?) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xd8d850c runs only when taken and is annulled on fall-through.
  At `beql` at 0xd8d852c (target 0xd8d854c), taken when t3(?) == t4(?) and falls through when t3(?) != t4(?); its branch-likely delay slot `addiu v0,zero,1` at 0xd8d8530 runs only when taken and is annulled on fall-through.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xd8d8570).
  The instructions from 0xd8d793c to 0xd8d793c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d7988 to 0xd8d7988 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d7a68 to 0xd8d7a68 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8d84e8 to 0xd8d84e8 are not reached by any path from the entry, and their branches are not listed.

- `glXMakeContextCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d8578 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d8578-0xd8d85b0 (56 bytes).
  Loads 4 bytes at abs 0xd8f030c (`lw` at 0xd8d8584).
  Calls `__glXMakeContextCurrent` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d8594).
  Returns v0 = ret(__glXMakeContextCurrent), f0 = ret(__glXMakeContextCurrent) (`jr` at 0xd8d85a8).

- `glXGetCurrentReadDrawable` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d85b0 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d85b0-0xd8d85c0 (16 bytes).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd8d85b0).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd8d85b4).
  Loads 4 bytes at [[0x1014]+276] +0xdc (`lw` at 0xd8d85bc).
  Returns v0 = [[[0x1014]+276]+220] (`jr` at 0xd8d85b8).

- `__glx_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8dc370 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8dc370-0xd8dc3e4 (116 bytes).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd8dc37c).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd8dc38c).
  Loads 4 bytes at [[0x1014]+276] +0x4 (`lw` at 0xd8dc398).
  Stores 2 bytes from t7 at [[[0x1014]+276]+4] (`sh` at 0xd8dc39c).
  Stores 2 bytes from t8 at [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8dc3a0).
  Stores 4 bytes from a0 at [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8dc3a4).
  Loads 4 bytes at [[0x1014]+276] +0x8 (`lw` at 0xd8dc3a8).
  Stores 4 bytes from a1 at [[0x1014]+276] +0x4 (`sw` at 0xd8dc3b0).
  Loads 4 bytes at abs 0xd8f0304 (`lw` at 0xd8dc3c0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd8dc3c8).
  At `beql` at 0xd8dc3b8 (target 0xd8dc3d8), taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,28(sp)` at 0xd8dc3bc runs only when taken and is annulled on fall-through.
  Returns v0 = ? (`jr` at 0xd8dc3dc).

- `__glReadPixelSpans` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdaf1df4 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdaf1df4-0xdaf1f9c (424 bytes).
  Loads 4 bytes at a0 +0x7710 (`lw` at 0xdaf1e34).
  Loads 4 bytes at a1 +0x160 (`lw` at 0xdaf1e38).
  Loads 4 bytes at a1 +0xa8 (`lw` at 0xdaf1e44).
  Loads 4 bytes at a1 +0xac (`lw` at 0xdaf1e4c).
  Loads 4 bytes at a1 +0x164 (`lw` at 0xdaf1e74).
  Loads 4 bytes at a0 +0x12ec (`lw` at 0xdaf1e78).
  2 4-byte lw loads at ?, including `lw` at 0xdaf1ed4, `lw` at 0xdaf1f18.
  2 4-byte lw loads at a1 +0x5c, including `lw` at 0xdaf1f28, `lw` at 0xdaf1f30.
  Loads 4 bytes at a1 +0xc0 (`lwc1` at 0xdaf1f2c).
  Loads 4 bytes at a1 +0x60 (`lw` at 0xdaf1f34).
  Stores 4 bytes from t8 at a1 +0x5c (`sw` at 0xdaf1f44).
  Stores 4 bytes from f8 at a1 +0xc0 (`swc1` at 0xdaf1f48).
  Stores 4 bytes from t4 at a0 +0x7710 (`sw` at 0xdaf1f54).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown (`jalr` at 0xdaf1ec0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown (`jalr` at 0xdaf1ee4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=[a1+92] (`jalr` at 0xdaf1f24).
  At `blez` at 0xdaf1e7c (target 0xdaf1f64), taken when t3(=[a1+172]) <= 0 (signed) and falls through when t3(=[a1+172]) > 0 (signed).
  At `blez` at 0xdaf1ec8 (target 0xdaf1f08), taken when s5(=[a1+352]-1) <= 0 (signed) and falls through when s5(=[a1+352]-1) > 0 (signed).
  At `bne` at 0xdaf1f00 (target 0xdaf1ed4), taken when s3(?) != s5(=[a1+352]-1) and falls through when s3(?) == s5(=[a1+352]-1).
  At `bnel` at 0xdaf1f5c (target 0xdaf1eac), taken when s7(?) != t5(?) and falls through when s7(?) == t5(?); its branch-likely delay slot `lw t9,116(s8)` at 0xdaf1f60 runs only when taken and is annulled on fall-through.
  Returns v0 = ? (`jr` at 0xdaf1f94).

- `__glim_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb2ba5c (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb2ba5c-0xdb2bb20 (196 bytes).
  Loads 4 bytes at abs 0x1018 (`lw` at 0xdb2ba78).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdb2ba80).
  2 4-byte lw loads at abs 0xdbd850c, including `lw` at 0xdb2ba8c, `lw` at 0xdb2bab0.
  Loads 4 bytes at abs 0xdbd7fb8 (`lw` at 0xdb2bac8).
  Loads 4 bytes at [0x1010] +0x4fc (`lw` at 0xdb2bacc).
  2 4-byte lw loads at ?, including `lw` at 0xdb2baec, `lw` at 0xdb2baf4.
  Loads 4 bytes at abs 0xdbdaad8 (`lw` at 0xdb2baf0).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010] (`jalr` at 0xdb2ba94).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010] (`jalr` at 0xdb2bab8).
  Calls `__glElementsPerGroup [0xdaf8120]` via register-constant with a0=[[0x1010]+1276], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1010] (`jalr` at 0xdb2bad4).
  Calls `memset` via got with a0=unknown, a1=0x0, a2=unknown, a3=unknown (`jalr` at 0xdb2bb04).
  At `bnel` at 0xdb2ba84 (target 0xdb2baa8), taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x8024` at 0xdb2ba88 runs only when taken and is annulled on fall-through.
  At `beq` at 0xdb2ba9c (target 0xdb2bb10), the branch is always taken.
  At `beq` at 0xdb2baa8 (target 0xdb2bac8), taken when a0 == at(=0x8024) and falls through when a0 != at(=0x8024).
  At `beq` at 0xdb2bac0 (target 0xdb2bb10), the branch is always taken.
  Returns v0 = ? (`jr` at 0xdb2bb18).
  The instructions from 0xdb2baa4 to 0xdb2baa4 are not reached by any path from the entry, and their branches are not listed.

- `__glResetArray` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb2bf98 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb2bf98-0xdb2c2b0 (792 bytes).
  3 4-byte lw loads at abs 0xdbd6ebc, including `lw` at 0xdb2c008, `lw` at 0xdb2c0c4, `lw` at 0xdb2c170.
  Loads 4 bytes at table(0xdbbeec8) (`lw` at 0xdb2c014).
  Loads 4 bytes at table(0xdbbeedc) (`lw` at 0xdb2c0d0).
  Loads 4 bytes at table(0xdbbeefc) (`lw` at 0xdb2c17c).
  8 4-byte lw loads at abs 0xdbd872c, including `lw` at 0xdb2c18c, `lw` at 0xdb2c1a8, `lw` at 0xdb2c1c8.
  Calls `__glSetValue [0xdb2bed8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdb2c198).
  Calls `__glSetValue [0xdb2bed8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdb2c1b8).
  Calls `__glSetValue [0xdb2bed8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdb2c1d4).
  Calls `__glSetValue [0xdb2bed8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdb2c1f8).
  Calls `__glSetValue [0xdb2bed8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdb2c220).
  Calls `__glSetValue [0xdb2bed8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdb2c23c).
  Calls `__glSetValue [0xdb2bed8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdb2c254).
  Calls `__glSetValue [0xdb2bed8]` via register-constant with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdb2c26c).
  At `beq` at 0xdb2bfd4 (target 0xdb2bff0), taken when s1(?) == at(=0x1405) and falls through when s1(?) != at(=0x1405).
  At `beq` at 0xdb2bfe0 (target 0xdb2bff8), taken when s1(?) == at(=0x1406) and falls through when s1(?) != at(=0x1406).
  At `beq` at 0xdb2bfe8 (target 0xdb2bff8), the branch is always taken.
  At `beq` at 0xdb2bff0 (target 0xdb2bff8), the branch is always taken.
  At `beql` at 0xdb2c000 (target 0xdb2c074), taken when t6(=a0-6406) >= 0x5 (unsigned) and falls through when t6(=a0-6406) < 0x5 (unsigned); its branch-likely delay slot `ori at,zero,0x8001` at 0xdb2c004 runs only when taken and is annulled on fall-through.
  At `beq` at 0xdb2c02c (target 0xdb2c070), the branch is always taken.
  At `beq` at 0xdb2c03c (target 0xdb2c070), the branch is always taken.
  At `beq` at 0xdb2c04c (target 0xdb2c070), the branch is always taken.
  At `beq` at 0xdb2c05c (target 0xdb2c070), the branch is always taken.
  At `bne` at 0xdb2c078 (target 0xdb2c098), taken when a1 < at(=0x8001) (unsigned) and falls through when a1 >= at(=0x8001) (unsigned).
  At `beq` at 0xdb2c080 (target 0xdb2c100), taken when a1 == at(=0x80e0) and falls through when a1 != at(=0x80e0).
  At `beq` at 0xdb2c088 (target 0xdb2c108), taken when a1 == at(=0x80e1) and falls through when a1 != at(=0x80e1).
  At `beq` at 0xdb2c090 (target 0xdb2c118), the branch is always taken.
  At `bne` at 0xdb2c09c (target 0xdb2c0b8), taken when a1 < 0x190b (unsigned) and falls through when a1 >= 0x190b (unsigned).
  At `beq` at 0xdb2c0a8 (target 0xdb2c108), taken when a1 == at(=0x8000) and falls through when a1 != at(=0x8000).
  At `beq` at 0xdb2c0b0 (target 0xdb2c118), the branch is always taken.
  At `beql` at 0xdb2c0bc (target 0xdb2c118), taken when t2(=a1-6403) >= 0x8 (unsigned) and falls through when t2(=a1-6403) < 0x8 (unsigned); its branch-likely delay slot `and t3,v1,v0` at 0xdb2c0c0 runs only when taken and is annulled on fall-through.
  At `beq` at 0xdb2c0e0 (target 0xdb2c114), the branch is always taken.
  At `beq` at 0xdb2c0e8 (target 0xdb2c114), the branch is always taken.
  At `beq` at 0xdb2c0f0 (target 0xdb2c114), the branch is always taken.
  At `beq` at 0xdb2c0f8 (target 0xdb2c114), the branch is always taken.
  At `beq` at 0xdb2c100 (target 0xdb2c114), the branch is always taken.
  At `beq` at 0xdb2c108 (target 0xdb2c114), the branch is always taken.
  At `beq` at 0xdb2c118 (target 0xdb2c28c), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `beql` at 0xdb2c154 (target 0xdb2c290), taken when a3 >= t8(?) (signed) and falls through when a3 < t8(?) (signed); its branch-likely delay slot `lw ra,52(sp)` at 0xdb2c158 runs only when taken and is annulled on fall-through.
  At `beql` at 0xdb2c168 (target 0xdb2c27c), taken when t0(?) >= 0x27 (unsigned) and falls through when t0(?) < 0x27 (unsigned); its branch-likely delay slot `lw t6,112(sp)` at 0xdb2c16c runs only when taken and is annulled on fall-through.
  At `beq` at 0xdb2c1a0 (target 0xdb2c278), the branch is always taken.
  At `beq` at 0xdb2c1c0 (target 0xdb2c278), the branch is always taken.
  At `beq` at 0xdb2c200 (target 0xdb2c278), the branch is always taken.
  At `bne` at 0xdb2c284 (target 0xdb2c15c), taken when s2(?) != t6(?) and falls through when s2(?) == t6(?).
  Returns v0 = ? (`jr` at 0xdb2c2a8).

- `__glResetMinmax` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb2c930 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb2c930-0xdb2ca90 (352 bytes).
  Loads 4 bytes at a0 +0x55c (`lw` at 0xdb2c93c).
  5 4-byte lw loads at abs 0xdbd6ebc, including `lw` at 0xdb2c958, `lw` at 0xdb2c9b8, `lw` at 0xdb2c9e4.
  Loads 4 bytes at table(0xdbbf0bc) (`lw` at 0xdb2c964).
  Loads 4 bytes at abs 0xdbbf0d0 (`lwc1` at 0xdb2c9c8).
  10 4-byte swc1 stores at ?, including `swc1` at 0xdb2c9d0, `swc1` at 0xdb2c9fc, `swc1` at 0xdb2ca00.
  Loads 4 bytes at abs 0xdbbf0d4 (`lwc1` at 0xdb2c9f4).
  Loads 4 bytes at abs 0xdbbf0d8 (`lwc1` at 0xdb2ca40).
  Loads 4 bytes at abs 0xdbbf0dc (`lwc1` at 0xdb2ca68).
  At `beq` at 0xdb2c950 (target 0xdb2c9a4), taken when t7(=[a0+1372]-6406) >= 0x5 (unsigned) and falls through when t7(=[a0+1372]-6406) < 0x5 (unsigned).
  At `beq` at 0xdb2c978 (target 0xdb2c9a4), the branch is always taken.
  At `beq` at 0xdb2c984 (target 0xdb2c9a4), the branch is always taken.
  At `beq` at 0xdb2c990 (target 0xdb2c9a4), the branch is always taken.
  At `beq` at 0xdb2c99c (target 0xdb2c9a4), the branch is always taken.
  At `blez` at 0xdb2c9a4 (target 0xdb2ca14), taken when v1(?) <= 0 (signed) and falls through when v1(?) > 0 (signed).
  At `beq` at 0xdb2c9b0 (target 0xdb2c9e4), taken when (v1(?) & 0x3) == 0 and falls through when (v1(?) & 0x3) != 0.
  At `bne` at 0xdb2c9d4 (target 0xdb2c9cc), taken when v0(?) != a2(?) and falls through when v0(?) == a2(?).
  At `beql` at 0xdb2c9dc (target 0xdb2ca18), taken when a2(?) == v1(?) and falls through when a2(?) != v1(?); its branch-likely delay slot `slt at,v1,a1` at 0xdb2c9e0 runs only when taken and is annulled on fall-through.
  At `bne` at 0xdb2ca0c (target 0xdb2c9f8), taken when a2(?) != v1(?) and falls through when a2(?) == v1(?).
  At `beq` at 0xdb2ca18 (target 0xdb2ca88), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xdb2ca28 (target 0xdb2ca5c), taken when (t0(?) & 0x3) == 0 and falls through when (t0(?) & 0x3) != 0.
  At `bne` at 0xdb2ca4c (target 0xdb2ca44), taken when a0(?) != a2(?) and falls through when a0(?) == a2(?).
  At `beq` at 0xdb2ca54 (target 0xdb2ca88), taken when a2(?) == a1(?) and falls through when a2(?) != a1(?).
  At `bne` at 0xdb2ca80 (target 0xdb2ca6c), taken when a2(?) != a1(?) and falls through when a2(?) == a1(?).
  Returns v0 = ? (`jr` at 0xdb2ca88).

- `__glim_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb2cb84 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb2cb84-0xdb2cc14 (144 bytes).
  Loads 4 bytes at abs 0x1018 (`lw` at 0xdb2cba0).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdb2cba8).
  2 4-byte lw loads at abs 0xdbd850c, including `lw` at 0xdb2cbb4, `lw` at 0xdb2cbd8.
  Loads 4 bytes at abs 0xdbd8744 (`lw` at 0xdb2cbf0).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb2cbbc).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x500, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb2cbe0).
  Calls `__glResetMinmax [0xdb2c930]` via register-constant with a0=[0x1010], a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb2cbf8).
  At `bnel` at 0xdb2cbac (target 0xdb2cbd0), taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x802e` at 0xdb2cbb0 runs only when taken and is annulled on fall-through.
  At `beq` at 0xdb2cbc4 (target 0xdb2cc04), the branch is always taken.
  At `beq` at 0xdb2cbd0 (target 0xdb2cbf0), taken when a0 == at(=0x802e) and falls through when a0 != at(=0x802e).
  At `beq` at 0xdb2cbe8 (target 0xdb2cc04), the branch is always taken.
  Returns v0 = ? (`jr` at 0xdb2cc0c).
  The instructions from 0xdb2cbcc to 0xdb2cbcc are not reached by any path from the entry, and their branches are not listed.

- `__glReadSpan` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb50f60 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb50f60-0xdb50ff8 (152 bytes).
  Loads 4 bytes at a0 +0xac (`lw` at 0xdb50fa8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=a2 at entry (arg2), a3=unknown (`jalr` at 0xdb50fb8).
  At `bltz` at 0xdb50fa0 (target 0xdb50fd4), taken when s0(?) < 0 (signed) and falls through when s0(?) >= 0 (signed).
  At `bgez` at 0xdb50fcc (target 0xdb50fa8), taken when s0(?) >= 0 (signed) and falls through when s0(?) < 0 (signed).
  Returns v0 = 0x0 (`jr` at 0xdb50ff0).

- `__glReadTexImage` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb60b6c (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb60b6c-0xdb60bac (64 bytes).
  Loads 4 bytes at a0 +0x3078 (`lw` at 0xdb60b8c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb60b90).
  Returns v0 = ret(?), f0 = ret(?) (`jr` at 0xdb60ba4).

- `__glReadjustZCounts` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb84b40 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb84b40-0xdb84be0 (160 bytes).
  Loads 1 byte at a0 +0x664 (`lbu` at 0xdb84b58).
  Loads 1 byte at a0 +0xc91 (`lbu` at 0xdb84b64).
  3 4-byte lw loads at a0 +0x79a8, including `lw` at 0xdb84b70, `lw` at 0xdb84ba0, `lw` at 0xdb84bc0.
  2 4-byte lw loads at a0 +0x79a4, including `lw` at 0xdb84b74, `lw` at 0xdb84ba4.
  Loads 4 bytes at a0 +0x79c0 (`lw` at 0xdb84b84).
  2 4-byte sw stores at a0 +0x79a4, including `sw` at 0xdb84bb4, `sw` at 0xdb84bcc.
  Stores 4 bytes from t3 at abs 0x1018 (`sw` at 0xdb84bb8).
  Loads 4 bytes at a0 +0x2d44 (`lw` at 0xdb84bbc).
  Stores 4 bytes from t5 at a0 +0x2d44 (`sw` at 0xdb84bc8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a0+31060, a2=[a0+31144], a3=a3 at entry (arg3) (`jalr` at 0xdb84b8c).
  At `beql` at 0xdb84b5c (target 0xdb84bd4), taken when t6(=[a0+1636]:1) == 0 and falls through when t6(=[a0+1636]:1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xdb84b60 runs only when taken and is annulled on fall-through.
  At `beql` at 0xdb84b68 (target 0xdb84bd4), taken when t7(=[a0+3217]:1) == 0 and falls through when t7(=[a0+3217]:1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xdb84b6c runs only when taken and is annulled on fall-through.
  At `beql` at 0xdb84b78 (target 0xdb84bd4), taken when a2(=[a0+31144]) == t8(=[a0+31140]) and falls through when a2(=[a0+31144]) != t8(=[a0+31140]); its branch-likely delay slot `lw ra,28(sp)` at 0xdb84b7c runs only when taken and is annulled on fall-through.
  At `bgezl` at 0xdb84bb0 (target 0xdb84bd0), taken when t2(?) >= 0 (signed) and falls through when t2(?) < 0 (signed); its branch-likely delay slot `sw a2,31140(a0)` at 0xdb84bb4 runs only when taken and is annulled on fall-through.
  Returns v0 = ? (`jr` at 0xdb84bd8).

- `DestroySoftContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb862cc (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb862cc-0xdb8633c (112 bytes).
  Loads 4 bytes at abs 0xdbd8310 (`lw` at 0xdb862d8).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdb862e0).
  2 4-byte sw stores at abs 0x1010, including `sw` at 0xdb862ec, `sw` at 0xdb86338.
  Loads 4 bytes at abs 0xdbd8528 (`lw` at 0xdb86304).
  Loads 4 bytes at abs 0xdbd8500 (`lw` at 0xdb86318).
  Calls `__glFreeAttributeState [0xdb111d0]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb862f4).
  Calls `__glFreeBufData [0xdb1b384]` via register-constant with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdb86308).
  Calls `__glDestroyContext [0xdb1a814]` via register-constant with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdb8631c).
  Returns v0 = ret(__glDestroyContext), f0 = ret(__glDestroyContext) (`jr` at 0xdb86334).

- `__gllc_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb92dc4 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb92dc4-0xdb92e38 (116 bytes).
  Loads 4 bytes at abs 0xdbd7bec (`lw` at 0xdb92dd4).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdb92ddc).
  Stores 2 bytes from t6 at ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb92e08).
  Loads 4 bytes at abs 0xdbd9894 (`lw` at 0xdb92e10).
  Stores 4 bytes from t7 at ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdb92e14).
  Loads 4 bytes at abs 0xdbd7bf4 (`lw` at 0xdb92e18).
  Calls `__glDlistAllocOp2 [0xdadacf0]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb92dec).
  Calls `__glDlistAppendOp [0xdadad88]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xdb981a0, a3=unknown (`jalr` at 0xdb92e1c).
  At `beq` at 0xdb92dfc (target 0xdb92e28), taken when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  Returns v0 = ? (`jr` at 0xdb92e30).

- `__gllc_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb92e38 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb92e38-0xdb92eac (116 bytes).
  Loads 4 bytes at abs 0xdbd7bec (`lw` at 0xdb92e48).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdb92e50).
  Stores 2 bytes from t6 at ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb92e7c).
  Loads 4 bytes at abs 0xdbd9898 (`lw` at 0xdb92e84).
  Stores 4 bytes from t7 at ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdb92e88).
  Loads 4 bytes at abs 0xdbd7bf4 (`lw` at 0xdb92e8c).
  Calls `__glDlistAllocOp2 [0xdadacf0]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb92e60).
  Calls `__glDlistAppendOp [0xdadad88]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xdb981e0, a3=unknown (`jalr` at 0xdb92e90).
  At `beq` at 0xdb92e70 (target 0xdb92e9c), taken when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  Returns v0 = ? (`jr` at 0xdb92ea4).

- `__gllc_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb94074 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb94074-0xdb940e8 (116 bytes).
  Loads 4 bytes at abs 0xdbd7bec (`lw` at 0xdb94084).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdb9408c).
  Stores 2 bytes from t6 at ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb940b8).
  Loads 4 bytes at abs 0xdbd9904 (`lw` at 0xdb940c0).
  Stores 4 bytes from t7 at ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdb940c4).
  Loads 4 bytes at abs 0xdbd7bf4 (`lw` at 0xdb940c8).
  Calls `__glDlistAllocOp2 [0xdadacf0]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb9409c).
  Calls `__glDlistAppendOp [0xdadad88]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xdb98b10, a3=unknown (`jalr` at 0xdb940cc).
  At `beq` at 0xdb940ac (target 0xdb940d8), taken when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  Returns v0 = ? (`jr` at 0xdb940e0).

- `__glle_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb981a0 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb981a0-0xdb981e0 (64 bytes).
  Loads 4 bytes at abs 0x1358 (`lw` at 0xdb981b0).
  Loads 4 bytes at a0 (`lw` at 0xdb981c4).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb981c0).
  Returns v0 = a0+4, f0 = ret(?) (`jr` at 0xdb981d8).

- `__glle_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb981e0 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb981e0-0xdb98220 (64 bytes).
  Loads 4 bytes at abs 0x135c (`lw` at 0xdb981f0).
  Loads 4 bytes at a0 (`lw` at 0xdb98204).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb98200).
  Returns v0 = a0+4, f0 = ret(?) (`jr` at 0xdb98218).

- `__glle_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb98b10 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb98b10-0xdb98b50 (64 bytes).
  Loads 4 bytes at abs 0x1460 (`lw` at 0xdb98b20).
  Loads 4 bytes at a0 (`lw` at 0xdb98b34).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb98b30).
  Returns v0 = a0+4, f0 = ret(?) (`jr` at 0xdb98b48).

- `__glsplc_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9fbec (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9fbec-0xdb9fc38 (76 bytes).
  Loads 4 bytes at abs 0xdbd7108 (`lw` at 0xdb9fbf8).
  Stores 4 bytes from t6 at ret(__glSPDlalloc) (`sw` at 0xdb9fc24).
  Calls `__glSPDlalloc [0xda5278c]` via register-constant with a0=0x4, a1=0xce, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb9fc10).
  At `beq` at 0xdb9fc18 (target 0xdb9fc28), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdb9fc30).

- `__glsplc_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9fc38 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9fc38-0xdb9fc84 (76 bytes).
  Loads 4 bytes at abs 0xdbd7108 (`lw` at 0xdb9fc44).
  Stores 4 bytes from t6 at ret(__glSPDlalloc) (`sw` at 0xdb9fc70).
  Calls `__glSPDlalloc [0xda5278c]` via register-constant with a0=0x4, a1=0xcf, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb9fc5c).
  At `beq` at 0xdb9fc64 (target 0xdb9fc74), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdb9fc7c).

- `__glsplc_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba0968 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba0968-0xdba09b4 (76 bytes).
  Loads 4 bytes at abs 0xdbd7108 (`lw` at 0xdba0974).
  Stores 4 bytes from t6 at ret(__glSPDlalloc) (`sw` at 0xdba09a0).
  Calls `__glSPDlalloc [0xda5278c]` via register-constant with a0=0x4, a1=0xf2, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdba098c).
  At `beq` at 0xdba0994 (target 0xdba09a4), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdba09ac).

- `__glce_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5a38 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5a38-0xdba5a40 (8 bytes).
  At `beq` at 0xdba5a38 (target 0xdba5ed8), the branch is always taken.

- `__glce_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5a40 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5a40-0xdba5a48 (8 bytes).
  At `beq` at 0xdba5a40 (target 0xdba5ed8), the branch is always taken.

- `__glce_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5c40 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5c40-0xdba5c48 (8 bytes).
  At `beq` at 0xdba5c40 (target 0xdba5ed8), the branch is always taken.

- `glResetHistogram` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b28 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b28-0xdba6b34 (12 bytes).
  Loads 4 bytes at abs 0x1358 (`lw` at 0xdba6b28).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b2c).

- `glResetMinmax` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b34 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b34-0xdba6b40 (12 bytes).
  Loads 4 bytes at abs 0x135c (`lw` at 0xdba6b34).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b38).

- `glReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6e40 (o32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6e40-0xdba6e4c (12 bytes).
  Loads 4 bytes at abs 0x1460 (`lw` at 0xdba6e40).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6e44).

- `__glXMakeContextCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ad500 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ad500-0xd8ae344 (3652 bytes).
  Loads 4 bytes at abs 0xd8e1d48 (`lw` at 0xd8ad53c).
  Loads 4 bytes at abs 0xd8e1988 (`lw` at 0xd8ad570).
  5 4-byte lw loads at a3 +0x30, including `lw` at 0xd8ad584, `lw` at 0xd8ad5e8, `lw` at 0xd8ad7a4.
  13 4-byte sw stores at ?, including `sw` at 0xd8ad588, `sw` at 0xd8ad59c, `sw` at 0xd8ad98c.
  2 4-byte lw loads at abs 0xd8e1bfc, including `lw` at 0xd8ad58c, `lw` at 0xd8add28.
  6 4-byte lw loads at a3 +0x20, including `lw` at 0xd8ad598, `lw` at 0xd8ad794, `lw` at 0xd8ad990.
  2 4-byte lw loads at a3 +0x11c, including `lw` at 0xd8ad5a0, `lw` at 0xd8add44.
  2 4-byte lw loads at a3 +0x120, including `lw` at 0xd8ad5b0, `lw` at 0xd8add54.
  22 4-byte lw loads at ?, including `lw` at 0xd8ad5c0, `lw` at 0xd8ad5d0, `lw` at 0xd8ad5e4.
  2 4-byte lw loads at abs 0xd8e1d70, including `lw` at 0xd8ad5cc, `lw` at 0xd8add70.
  2 4-byte lw loads at a3 +0xc8, including `lw` at 0xd8ad610, `lw` at 0xd8ad6a8.
  Loads 4 bytes at [a3+200] +0x68 (`lw` at 0xd8ad614).
  9 4-byte lw loads at abs 0xd8e1d00, including `lw` at 0xd8ad638, `lw` at 0xd8ad744, `lw` at 0xd8ada74.
  7 4-byte lw loads at abs 0x1014, including `lw` at 0xd8ad670, `lw` at 0xd8ad6f8, `lw` at 0xd8ada64.
  3 4-byte lw loads at [[0x1014]+276] +0xd8, including `lw` at 0xd8ad674, `lw` at 0xd8adacc, `lw` at 0xd8adb4c.
  2 4-byte lw loads at [[0x1014]+276] +0xe0, including `lw` at 0xd8ad678, `lw` at 0xd8ad718.
  2 4-byte lw loads at [[0x1014]+276] +0xdc, including `lw` at 0xd8ad67c, `lw` at 0xd8ad724.
  2 4-byte sw stores at [0x1014] +0x114, including `sw` at 0xd8ad680, `sw` at 0xd8ada0c.
  Stores 4 bytes from s4 at a3 +0xe8 (`sw` at 0xd8ad684).
  Stores 4 bytes from s6 at a3 +0xdc (`sw` at 0xd8ad688).
  3 4-byte lw loads at a3 +0xc4, including `lw` at 0xd8ad68c, `lw` at 0xd8ad768, `lw` at 0xd8ad958.
  Stores 4 bytes from s2 at a3 +0xe4 (`sw` at 0xd8ad690).
  Stores 4 bytes from s3 at a3 +0xe0 (`sw` at 0xd8ad698).
  Stores 4 bytes from s5 at a3 +0xd8 (`sw` at 0xd8ad6a4).
  Loads 4 bytes at [a3+200] +0x64 (`lw` at 0xd8ad6ac).
  2 1-byte lbu loads at a3 +0xf4, including `lbu` at 0xd8ad6d0, `lbu` at 0xd8adc64.
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd8ad6fc).
  3 4-byte lw loads at [[0x1014]+276] +0xc4, including `lw` at 0xd8ad700, `lw` at 0xd8ad7d0, `lw` at 0xd8ad7e8.
  Loads 4 bytes at [[0x1014]+276] +0xc8 (`lw` at 0xd8ad70c).
  Loads 4 bytes at [[[0x1014]+276]+200] +0x5c (`lw` at 0xd8ad734).
  Loads 4 bytes at abs 0xd8e1cf0 (`lw` at 0xd8ad74c).
  2 4-byte lw loads at [[0x1014]+276] +0xe4, including `lw` at 0xd8ad750, `lw` at 0xd8adaa8.
  Loads 4 bytes at [[0x1014]+276] +0xe8 (`lw` at 0xd8ad754).
  2 4-byte lw loads at abs 0xd8e1cac, including `lw` at 0xd8ad780, `lw` at 0xd8add90.
  2 4-byte lw loads at ret(__glXAddDrawableInterest) +0x8, including `lw` at 0xd8ad798, `lw` at 0xd8adda8.
  Loads 4 bytes at ret(__glXAddDrawableInterest) +0xc (`lw` at 0xd8ad7a8).
  Loads 4 bytes at ret(__glXAddDrawableInterest) +0x2c (`lw` at 0xd8ad7b4).
  4 1-byte lbu loads at ?, including `lbu` at 0xd8ad814, `lbu` at 0xd8ad820, `lbu` at 0xd8adde4.
  2 4-byte lw loads at abs 0xd8e1bc8, including `lw` at 0xd8ad81c, `lw` at 0xd8ad828.
  2 1-byte lbu loads at a3 +0x1d, including `lbu` at 0xd8ad834, `lbu` at 0xd8ad99c.
  14 4-byte lw loads at abs 0xd8e1964, including `lw` at 0xd8ad844, `lw` at 0xd8ad8dc, `lw` at 0xd8ad94c.
  3 4-byte lw loads at [[0x1014]+276] +0x3c, including `lw` at 0xd8ad858, `lw` at 0xd8ad9e0, `lw` at 0xd8adae4.
  6 4-byte lw loads at abs 0xd8e1a50, including `lw` at 0xd8ad864, `lw` at 0xd8ad870, `lw` at 0xd8ad8a0.
  4 4-byte lw loads at a0 +0x4c8, including `lw` at 0xd8ad88c, `lw` at 0xd8ad8c4, `lw` at 0xd8ade30.
  4 4-byte sw stores at a0 +0x4c8, including `sw` at 0xd8ad89c, `sw` at 0xd8ad8d8, `sw` at 0xd8ade48.
  2 4-byte lw loads at abs 0xd8e1bcc, including `lw` at 0xd8ad930, `lw` at 0xd8adbf0.
  2 4-byte sw stores at [[0x1014]+276] +0x3c, including `sw` at 0xd8ad974, `sw` at 0xd8adafc.
  2 4-byte lw loads at abs 0xd8e1d24, including `lw` at 0xd8ad9ac, `lw` at 0xd8add14.
  2 4-byte lw loads at abs 0x1048, including `lw` at 0xd8ada10, `lw` at 0xd8adc0c.
  Loads 4 bytes at abs 0xd8e2400 (`lw` at 0xd8ada1c).
  2 8-byte ld loads at ?, including `ld` at 0xd8ada2c, `ld` at 0xd8adc2c.
  2 8-byte sd stores at ?, including `sd` at 0xd8ada38, `sd` at 0xd8adc38.
  7 4-byte lw loads at a3 +0x14, including `lw` at 0xd8ada54, `lw` at 0xd8adca0, `lw` at 0xd8ade98.
  Loads 4 bytes at a3 +0xd0 (`lw` at 0xd8ada60).
  Loads 4 bytes at [0x1014] +0x10c (`lw` at 0xd8ada6c).
  2 4-byte lw loads at [0x1014] +0x110, including `lw` at 0xd8ada78, `lw` at 0xd8ada90.
  Loads 4 bytes at a3 +0xd4 (`lw` at 0xd8ada7c).
  2 4-byte sw stores at a3 +0xd0, including `sw` at 0xd8ada88, `sw` at 0xd8adfe0.
  2 4-byte sw stores at a3 +0xd4, including `sw` at 0xd8ada98, `sw` at 0xd8adfe4.
  Stores 4 bytes from t1 at [0x1014] +0x118 (`sw` at 0xd8adb50).
  Loads 4 bytes at [[0x1014]+276] +0x110 (`lw` at 0xd8adb58).
  Stores 4 bytes from v1 at [0x1014] +0x11c (`sw` at 0xd8adb5c).
  2 4-byte lw loads at [[0x1014]+276] +0x118, including `lw` at 0xd8adb64, `lw` at 0xd8adfb4.
  Stores 4 bytes from t1 at [0x1014] +0x120 (`sw` at 0xd8adb68).
  2 4-byte lw loads at [[0x1014]+276] +0x14, including `lw` at 0xd8adb6c, `lw` at 0xd8adfc4.
  Loads 4 bytes at abs 0xd8e1bf4 (`lw` at 0xd8adb74).
  Stores 4 bytes from zero at [[0x1014]+276] +0xd0 (`sw` at 0xd8adb78).
  Stores 4 bytes from zero at [[0x1014]+276] +0xd4 (`sw` at 0xd8adb7c).
  4 4-byte sw stores at [[0x1014]+276] +0xe4, including `sw` at 0xd8adb80, `sw` at 0xd8adc88, `sw` at 0xd8adf30.
  4 4-byte sw stores at [[0x1014]+276] +0xe8, including `sw` at 0xd8adb84, `sw` at 0xd8adc84, `sw` at 0xd8adf28.
  4 4-byte sw stores at [[0x1014]+276] +0xe0, including `sw` at 0xd8adb88, `sw` at 0xd8adc8c, `sw` at 0xd8adf54.
  4 4-byte sw stores at [[0x1014]+276] +0xdc, including `sw` at 0xd8adb8c, `sw` at 0xd8adc68, `sw` at 0xd8adf18.
  4 4-byte sw stores at [[0x1014]+276] +0xd8, including `sw` at 0xd8adb90, `sw` at 0xd8adc80, `sw` at 0xd8adf48.
  2 4-byte lw loads at abs 0xd8e1cb8, including `lw` at 0xd8adb9c, `lw` at 0xd8adbb4.
  Loads 4 bytes at abs 0xd8e23fc (`lw` at 0xd8adc18).
  Loads 4 bytes at [a3+200] +0x60 (`lw` at 0xd8adc54).
  Stores 4 bytes from at at a3 +0x3c (`sw` at 0xd8adcfc).
  Loads 4 bytes at ret(__glXAddDrawableInterest) +0x10 (`lw` at 0xd8addb4).
  2 4-byte lw loads at abs 0xd8e1bd0, including `lw` at 0xd8addec, `lw` at 0xd8ade10.
  2 4-byte lw loads at a0 +0x60, including `lw` at 0xd8ade04, `lw` at 0xd8ae1bc.
  4 1-byte sb stores at ?, including `sb` at 0xd8ade60, `sb` at 0xd8adefc, `sb` at 0xd8adf04.
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8ad558).
  Calls `__glXGetModes` via got with a0=a0 at entry (arg0), a1=[a3+32], a2=unknown, a3=unknown (`jalr` at 0xd8ad594).
  Calls `(unknown callee)` via register with a0=[a3+200], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8ad62c).
  Calls `(unknown callee)` via register with a0=[a3+200], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8ad6c0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+200], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8ad738).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8ad784).
  Calls `(unknown callee) [0xd8ad114]` via direct with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1014]+276]+60], a3=sp-256, a4=a1 at entry (arg1) (`bgezall` at 0xd8ad85c).
  Calls `(unknown callee) [0xd8ad2c8]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`bgezall` at 0xd8ad8f0).
  Calls `_XDeqAsyncHandler` via got with a0=a0 at entry (arg0), a1=sp-320, a2=unknown, a3=unknown (`jalr` at 0xd8ad93c).
  Calls `__glXOverrideVisualsBogusChoose` via got with a0=unknown, a1=[a3+48], a2=unknown, a3=unknown (`jalr` at 0xd8ad9b8).
  Calls `(unknown callee) [0xd8acdc0]` via direct with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1014]+276]+60], a3=sp-256, a4=a1 at entry (arg1), a5=a2 at entry (arg2) (`bgezall` at 0xd8ad9f8).
  Calls `(unknown callee) [0xd8ac360]` via direct with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xd8ada4c).
  Calls `__glXUnbindHWContextFromThread` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8ada9c).
  Calls `(unknown callee) [0xd8ad114]` via direct with a0=[[[0x1014]+276]+216], a1=0x0, a2=[[[0x1014]+276]+60], a3=sp-256, a4=0x0 (`bgezall` at 0xd8adae8).
  Calls `__glXRemoveDrawableInterest` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8adba0).
  Calls `_XDeqAsyncHandler` via got with a0=a0 at entry (arg0), a1=sp-336, a2=unknown, a3=unknown (`jalr` at 0xd8adbfc).
  Calls `(unknown callee)` via register with a0=[a3+200], a1=[[[0x1014]+276]+224], a2=[[[0x1014]+276]+216], a3=unknown (`jalr` at 0xd8adc58).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd8adc9c).
  Calls `(unknown callee) [0xd8ad2c8]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`bgezall` at 0xd8adcb8).
  Calls `__glXOverrideVisualsBogusChoose` via got with a0=unknown, a1=[a3+48], a2=unknown, a3=unknown (`jalr` at 0xd8add20).
  Calls `__glXGetModes` via got with a0=a0 at entry (arg0), a1=[a3+32], a2=ret(__glXOverrideVisualsBogusChoose), a3=unknown (`jalr` at 0xd8add38).
  Calls `glXQueryDrawable` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x8025, a3=unknown (`jalr` at 0xd8add80).
  Calls `__glXAddDrawableInterest` via got with a0=a2 at entry (arg2), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8add94).
  Calls `XSGIMiscQueryExtension` via got with a0=a0 at entry (arg0), a1=sp-224, a2=sp-220, a3=unknown (`jalr` at 0xd8addd4).
  Calls `_XSGISetSpecialDestroyInterest` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8ade50).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd8ade9c).
  Calls `(unknown callee) [0xd8ad2c8]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`bgezall` at 0xd8adeb8).
  Calls `__glXRemoveDrawableInterest` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8adf08).
  Calls `(unknown callee) [0xd8ad2c8]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`bgezall` at 0xd8adf50).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xa, a2=0x5, a3=[a3+20] (`jalr` at 0xd8adf74).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x5, a3=[[[0x1014]+276]+20] (`jalr` at 0xd8adfc8).
  Calls `glXQueryDrawable` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x8025, a3=unknown (`jalr` at 0xd8ae060).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd8ae0b8).
  Calls `(unknown callee) [0xd8ad2c8]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=0x0, a3=0x0 (`bgezall` at 0xd8ae0d4).
  Calls `__glXFreeContext` via got with a0=[[0x1014]+276], a1=0x1, a2=unknown, a3=unknown (`jalr` at 0xd8ae118).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd8ae15c).
  Calls `(unknown callee) [0xd8ad2c8]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`bgezall` at 0xd8ae178).
  Calls `_XSGISetSpecialDestroyInterest` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8ae204).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+20] (`jalr` at 0xd8ae22c).
  Calls `(unknown callee) [0xd8ad2c8]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=ret(__glXAddDrawableInterest), a3=0x0 (`bgezall` at 0xd8ae248).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0x8, a2=0x5, a3=[a3+20] (`jalr` at 0xd8ae294).
  Calls `(unknown callee) [0xd8ad2c8]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=unknown (`bgezall` at 0xd8ae2b0).
  Calls `(unknown callee) [0xd8ad2c8]` via direct with a0=a3 at entry (arg3), a1=[[0x1014]+276], a2=unknown, a3=0x0 (`bgezall` at 0xd8ae304).
  At `beq` at 0xd8ad564 (target 0xd8ae020), taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  At `beq` at 0xd8ad57c (target 0xd8ad6ec), the branch is always taken.
  At `beq` at 0xd8ad5a8 (target 0xd8ad5c0), taken when t0(=[a3+284]) >= 0x2 (signed) and falls through when t0(=[a3+284]) < 0x2 (signed).
  At `bne` at 0xd8ad5b8 (target 0xd8ad5d0), taken when t1(=[a3+288]) < 0x3 (signed) and falls through when t1(=[a3+288]) >= 0x3 (signed).
  At `beq` at 0xd8ad5c8 (target 0xd8ae054), taken when at(?) == v1(=0x6) and falls through when at(?) != v1(=0x6).
  At `beq` at 0xd8ad5d4 (target 0xd8add00), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0xd8ad5dc (target 0xd8ad668), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `bne` at 0xd8ad5ec (target 0xd8ad610), taken when t1(=[a3+48]) != a2(?) and falls through when t1(=[a3+48]) == a2(?).
  At `beq` at 0xd8ad5f8 (target 0xd8ad63c), taken when at(?) == a2(?) and falls through when at(?) != a2(?).
  At `beq` at 0xd8ad608 (target 0xd8ad63c), taken when v1(?) == t0(=0x3) and falls through when v1(?) != t0(=0x3).
  At `beq` at 0xd8ad618 (target 0xd8ad63c), taken when t9(=[[a3+200]+104]) == 0 and falls through when t9(=[[a3+200]+104]) != 0.
  At `beq` at 0xd8ad634 (target 0xd8ae288), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `beq` at 0xd8ad63c (target 0xd8ad664), taken when s2(?) == 0 -> outside and falls through when s2(?) != 0.
  At `beq` at 0xd8ad644 (target 0xd8ad668), taken when s2(?) == s4(?) and falls through when s2(?) != s4(?).
  At `beq` at 0xd8ad654 (target 0xd8ade64), taken when t1(?) == at(=0x4) and falls through when t1(?) != at(=0x4).
  At `beq` at 0xd8ad660 (target 0xd8ade64), taken when v1(?) == t0(=0x4) and falls through when v1(?) != t0(=0x4).
  At `beq` at 0xd8ad66c (target 0xd8ada08), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd8ad6a0 (target 0xd8adc0c), taken when t1(=[a3+196]) == 0 and falls through when t1(=[a3+196]) != 0.
  At `beq` at 0xd8ad6b4 (target 0xd8adc54), taken when t9(=[[a3+200]+100]) == 0 and falls through when t9(=[[a3+200]+100]) != 0.
  At `beq` at 0xd8ad6c8 (target 0xd8ae128), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `beq` at 0xd8ad6d4 (target 0xd8ad6e4), taken when at(=[a3+244]:1) == 0 and falls through when at(=[a3+244]:1) != 0.
  At `beq` at 0xd8ad6dc (target 0xd8adf18), taken when s7(=one of 0x0, 0x1) == 0 and falls through when s7(=one of 0x0, 0x1) != 0.
  At `beq` at 0xd8ad6e8 (target 0xd8adb38), taken when s8(?) == 0 and falls through when s8(?) != 0.
  At `bne` at 0xd8ad6f0 (target 0xd8ada44), taken when s0(=a3) != 0 and falls through when s0(=a3) == 0.
  At `beq` at 0xd8ad704 (target 0xd8adaac), taken when v1(=[[[0x1014]+276]+196]) == 0 and falls through when v1(=[[[0x1014]+276]+196]) != 0.
  At `bne` at 0xd8ad710 (target 0xd8ad72c), taken when s0(=a3) != s1(=[[0x1014]+276]) -> outside and falls through when s0(=a3) == s1(=[[0x1014]+276]).
  At `bne` at 0xd8ad71c (target 0xd8ad730), taken when v1(=[[[0x1014]+276]+224]) != s3(=a1) and falls through when v1(=[[[0x1014]+276]+224]) == s3(=a1).
  At `beq` at 0xd8ad728 (target 0xd8adb00), taken when t0(=[[[0x1014]+276]+220]) == s6(=a2) and falls through when t0(=[[[0x1014]+276]+220]) != s6(=a2).
  At `beq` at 0xd8ad740 (target 0xd8adfb4), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `bne` at 0xd8ad748 (target 0xd8ada9c), taken when s0(=a3) != s1(=[[0x1014]+276]) and falls through when s0(=a3) == s1(=[[0x1014]+276]).
  At `beq` at 0xd8ad760 (target 0xd8ad7dc), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd8ad76c (target 0xd8ad7d4), taken when t0(=[a3+196]) == 0 and falls through when t0(=[a3+196]) != 0.
  At `beq` at 0xd8ad774 (target 0xd8ad7d4), taken when s3(=a1) == 0 and falls through when s3(=a1) != 0.
  At `beq` at 0xd8ad77c (target 0xd8ad7d4), taken when s6(=a2) == 0 and falls through when s6(=a2) != 0.
  At `beq` at 0xd8ad78c (target 0xd8ae0a8), taken when v0(=ret(__glXAddDrawableInterest)) == 0 and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  At `bne` at 0xd8ad79c (target 0xd8ad7c0), taken when t1(=[ret(__glXAddDrawableInterest)+8]) != at(=[a3+32]) and falls through when t1(=[ret(__glXAddDrawableInterest)+8]) == at(=[a3+32]).
  At `bne` at 0xd8ad7ac (target 0xd8ad7c0), taken when v1(=[ret(__glXAddDrawableInterest)+12]) != t0(=[a3+48]) and falls through when v1(=[ret(__glXAddDrawableInterest)+12]) == t0(=[a3+48]).
  At `bne` at 0xd8ad7b8 (target 0xd8ad7c4), taken when t1(=[ret(__glXAddDrawableInterest)+44]) != at(=0x3) and falls through when t1(=[ret(__glXAddDrawableInterest)+44]) == at(=0x3).
  At `bne` at 0xd8ad7c4 (target 0xd8add90), taken when s3(=a1) != s6(=a2) and falls through when s3(=a1) == s6(=a2).
  At `beq` at 0xd8ad7cc (target 0xd8ad7ec), the branch is always taken.
  At `bne` at 0xd8ad7d4 (target 0xd8ad7e4), taken when s0(=a3) != 0 and falls through when s0(=a3) == 0.
  At `beq` at 0xd8ad7dc (target 0xd8adc44), taken when s3(=a1) == 0 and falls through when s3(=a1) != 0.
  At `beq` at 0xd8ad7f0 (target 0xd8adab8), taken when v0(=[[[0x1014]+276]+196]) == 0 and falls through when v0(=[[[0x1014]+276]+196]) != 0.
  At `beq` at 0xd8ad7f8 (target 0xd8ad5dc), taken when s7(=one of 0x0, 0x1) == 0 and falls through when s7(=one of 0x0, 0x1) != 0.
  At `beq` at 0xd8ad800 (target 0xd8adac4), taken when v0(=[[[0x1014]+276]+196]) == 0 and falls through when v0(=[[[0x1014]+276]+196]) != 0.
  At `beq` at 0xd8ad80c (target 0xd8ad82c), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `beq` at 0xd8ad818 (target 0xd8addcc), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8ad824 (target 0xd8addcc), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0xd8ad82c (target 0xd8ad840), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `bne` at 0xd8ad838 (target 0xd8ad9d0), taken when t1(=[a3+29]:1) != 0 and falls through when t1(=[a3+29]:1) == 0.
  At `bne` at 0xd8ad840 (target 0xd8ad9cc), taken when s3(=a1) != s6(=a2) and falls through when s3(=a1) == s6(=a2).
  At `bne` at 0xd8ad86c (target 0xd8ad8a4), taken when at(?) != v1(=sym(_XAsyncErrorHandler)) and falls through when at(?) == v1(=sym(_XAsyncErrorHandler)).
  At `beq` at 0xd8ad87c (target 0xd8ad88c), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0xd8ad884 (target 0xd8adef8), taken when t1(=0x3) == at(?) and falls through when t1(=0x3) != at(?).
  At `bne` at 0xd8ad894 (target 0xd8adbf0), taken when v1(=[a0+1224]) != t0(=sp-336) and falls through when v1(=[a0+1224]) == t0(=sp-336).
  At `bne` at 0xd8ad8ac (target 0xd8ad948), taken when at(?) != v1(=sym(_XAsyncErrorHandler)) and falls through when at(?) == v1(=sym(_XAsyncErrorHandler)).
  At `beq` at 0xd8ad8b4 (target 0xd8ad8c4), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0xd8ad8bc (target 0xd8adf00), taken when t1(=0x3) == at(?) and falls through when t1(=0x3) != at(?).
  At `bne` at 0xd8ad8cc (target 0xd8ad930), taken when v1(=[a0+1224]) != t0(=sp-320) and falls through when v1(=[a0+1224]) == t0(=sp-320).
  At `bne` at 0xd8ad8d4 (target 0xd8ad950), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0xd8ad948 (target 0xd8ad8e0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xd8ad950 (target 0xd8ad964), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd8ad95c (target 0xd8adcf8), taken when at(=[a3+196]) == 0 and falls through when at(=[a3+196]) != 0.
  At `beq` at 0xd8ad964 (target 0xd8ad978), taken when s0(=a3) == s1(=[[0x1014]+276]) and falls through when s0(=a3) != s1(=[[0x1014]+276]).
  At `beq` at 0xd8ad96c (target 0xd8ad978), taken when v1(?) == s1(=[[0x1014]+276]) and falls through when v1(?) != s1(=[[0x1014]+276]).
  At `beq` at 0xd8ad978 (target 0xd8ad668), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `bne` at 0xd8ad984 (target 0xd8ad5d0), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0xd8ad994 (target 0xd8ad584), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd8ad9a0 (target 0xd8ad584), taken when at(=[a3+29]:1) == 0 and falls through when at(=[a3+29]:1) != 0.
  At `beq` at 0xd8ad9c4 (target 0xd8ad58c), the branch is always taken.
  At `beq` at 0xd8ada00 (target 0xd8ad868), the branch is always taken.
  At `bne` at 0xd8ada14 (target 0xd8ad6e8), taken when at(=[0x1048]) != 0 and falls through when at(=[0x1048]) == 0.
  At `bgtz` at 0xd8ada34 (target 0xd8ada20), taken when a0(?) > 0 (signed) and falls through when a0(?) <= 0 (signed).
  At `beq` at 0xd8ada3c (target 0xd8ad6e8), the branch is always taken.
  At `beq` at 0xd8ada58 (target 0xd8ae070), taken when a3(=[a3+20]) == 0 and falls through when a3(=[a3+20]) != 0.
  At `beq` at 0xd8ada68 (target 0xd8ada88), taken when a1(=[a3+208]) == 0 and falls through when a1(=[a3+208]) != 0.
  At `bne` at 0xd8ada70 (target 0xd8adf6c), taken when a1(=[a3+208]) != a0(=[[0x1014]+268]) and falls through when a1(=[a3+208]) == a0(=[[0x1014]+268]).
  At `bne` at 0xd8ada80 (target 0xd8adf6c), taken when at(=[a3+212]) != v1(=[[0x1014]+272]) and falls through when at(=[a3+212]) == v1(=[[0x1014]+272]).
  At `beq` at 0xd8ada94 (target 0xd8ad6f8), the branch is always taken.
  At `beq` at 0xd8adaa4 (target 0xd8ad754), the branch is always taken.
  At `beq` at 0xd8adab0 (target 0xd8ad760), the branch is always taken.
  At `beq` at 0xd8adabc (target 0xd8ad7f8), the branch is always taken.
  At `beq` at 0xd8adac4 (target 0xd8ad808), taken when at(?) == s1(=[[0x1014]+276]) and falls through when at(?) != s1(=[[0x1014]+276]).
  At `beq` at 0xd8adad0 (target 0xd8ad808), taken when a0(=[[[0x1014]+276]+216]) == s5(=a0) and falls through when a0(=[[[0x1014]+276]+216]) != s5(=a0).
  At `beq` at 0xd8adaf0 (target 0xd8ae2f0), taken when v0(=ret(0xd8ad114)) == 0 and falls through when v0(=ret(0xd8ad114)) != 0.
  At `beq` at 0xd8adaf8 (target 0xd8ad808), the branch is always taken.
  At `beq` at 0xd8adb38 (target 0xd8adb94), taken when s0(=a3) == s1(=[[0x1014]+276]) and falls through when s0(=a3) != s1(=[[0x1014]+276]).
  At `beq` at 0xd8adb40 (target 0xd8adb98), taken when v1(?) == s1(=[[0x1014]+276]) and falls through when v1(?) != s1(=[[0x1014]+276]).
  At `beq` at 0xd8adb70 (target 0xd8ae114), taken when t0(=[[[0x1014]+276]+20]) == 0 and falls through when t0(=[[[0x1014]+276]+20]) != 0.
  At `beq` at 0xd8adb98 (target 0xd8adbb8), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0xd8adbb0 (target 0xd8adf08), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `beq` at 0xd8adc04 (target 0xd8ad8a0), the branch is always taken.
  At `bne` at 0xd8adc14 (target 0xd8ad6e4), taken when at(=[0x1048]) != 0 and falls through when at(=[0x1048]) == 0.
  At `bgtz` at 0xd8adc34 (target 0xd8adc20), taken when a0(?) > 0 (signed) and falls through when a0(?) <= 0 (signed).
  At `beq` at 0xd8adc3c (target 0xd8ad6e8), the branch is always taken.
  At `beq` at 0xd8adc44 (target 0xd8ad7e8), taken when s6(=a2) == 0 and falls through when s6(=a2) != 0.
  At `beq` at 0xd8adc4c (target 0xd8ad7e8), the branch is always taken.
  At `bnel` at 0xd8adc60 (target 0xd8ad6d4), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0; its branch-likely delay slot `lbu at,244(s0)` at 0xd8adc64 runs only when taken and is annulled on fall-through.
  At `beq` at 0xd8adcf8 (target 0xd8ad964), the branch is always taken.
  At `beq` at 0xd8add4c (target 0xd8add64), taken when t0(=[a3+284]) >= 0x2 (signed) and falls through when t0(=[a3+284]) < 0x2 (signed).
  At `bne` at 0xd8add5c (target 0xd8ad5dc), taken when t1(=[a3+288]) < 0x3 (signed) and falls through when t1(=[a3+288]) >= 0x3 (signed).
  At `bne` at 0xd8add6c (target 0xd8ad5dc), taken when at(?) != v1(=0x6) and falls through when at(?) == v1(=0x6).
  At `beq` at 0xd8add88 (target 0xd8ad5dc), the branch is always taken.
  At `beq` at 0xd8add9c (target 0xd8ae21c), taken when v0(=ret(__glXAddDrawableInterest)) == 0 and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  At `bne` at 0xd8addac (target 0xd8addc0), taken when t0(=[ret(__glXAddDrawableInterest)+8]) != t1(=[a3+32]) and falls through when t0(=[ret(__glXAddDrawableInterest)+8]) == t1(=[a3+32]).
  At `bne` at 0xd8addb8 (target 0xd8ad7e8), taken when at(=[ret(__glXAddDrawableInterest)+16]) != 0 and falls through when at(=[ret(__glXAddDrawableInterest)+16]) == 0.
  At `beq` at 0xd8addc0 (target 0xd8ad7e8), the branch is always taken.
  At `beq` at 0xd8adddc (target 0xd8ad82c), taken when v0(=ret(XSGIMiscQueryExtension)) == 0 and falls through when v0(=ret(XSGIMiscQueryExtension)) != 0.
  At `beq` at 0xd8adde8 (target 0xd8ae1b8), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8addf0 (target 0xd8ad82c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xd8addfc (target 0xd8ad82c), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0xd8ade5c (target 0xd8ad82c), the branch is always taken.
  At `bne` at 0xd8ade70 (target 0xd8ad668), taken when v1(?) < t0(?) (signed) and falls through when v1(?) >= t0(?) (signed).
  At `bne` at 0xd8ade84 (target 0xd8ad668), taken when t1(?) < at(?) (signed) and falls through when t1(?) >= at(?) (signed).
  At `beq` at 0xd8adef8 (target 0xd8ad88c), the branch is always taken.
  At `beq` at 0xd8adf00 (target 0xd8ad8c4), the branch is always taken.
  At `beq` at 0xd8adf10 (target 0xd8adbbc), the branch is always taken.
  At `beq` at 0xd8adf60 (target 0xd8ad6e4), the branch is always taken.
  At `beq` at 0xd8adfd0 (target 0xd8adfec), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd8adfd8 (target 0xd8adfec), taken when s0(=a3) == s1(=[[0x1014]+276]) and falls through when s0(=a3) != s1(=[[0x1014]+276]).
  At `beq` at 0xd8ae068 (target 0xd8ad5d4), the branch is always taken.
  At `beq` at 0xd8ae120 (target 0xd8adb98), the branch is always taken.
  At `beq` at 0xd8ae214 (target 0xd8addf0), the branch is always taken.
  Returns v0 = 0x0, f0 = ret(0xd8ad2c8) (`jr` at 0xd8ad928).
  Returns v0 = 0x1 (`jr` at 0xd8adb30).
  Returns v0 = 0x1 (`jr` at 0xd8adbe8).
  Returns v0 = 0x0, f0 = ret(0xd8ad2c8) (`jr` at 0xd8adcf0).
  Returns v0 = 0x0, f0 = ret(0xd8ad2c8) (`jr` at 0xd8adef0).
  Returns v0 = 0x0, f0 = ret(__glXPostError) (`jr` at 0xd8adfac).
  Returns v0 = 0x0, f0 = ret(__glXPostError) (`jr` at 0xd8ae018).
  Returns v0 = 0x0, f0 = ret(__glXSetupForCommand) (`jr` at 0xd8ae04c).
  Returns v0 = 0x0, f0 = ret(0xd8ac360) (`jr` at 0xd8ae0a0).
  Returns v0 = 0x0, f0 = ret(0xd8ad2c8) (`jr` at 0xd8ae10c).
  Returns v0 = 0x0, f0 = ret(0xd8ad2c8) (`jr` at 0xd8ae1b0).
  Returns v0 = 0x0, f0 = ret(0xd8ad2c8) (`jr` at 0xd8ae280).
  Returns v0 = 0x0, f0 = ret(0xd8ad2c8) (`jr` at 0xd8ae2e8).
  Returns v0 = 0x0, f0 = ret(0xd8ad2c8) (`jr` at 0xd8ae33c).
  The instructions from 0xd8addc8 to 0xd8addc8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8adf68 to 0xd8adf68 are not reached by any path from the entry, and their branches are not listed.

- `glXMakeContextCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ae3b4 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ae3b4-0xd8ae3e8 (52 bytes).
  Loads 4 bytes at abs 0xd8e1d54 (`lw` at 0xd8ae3c8).
  Calls `__glXMakeContextCurrent` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0 (`jalr` at 0xd8ae3d0).
  Returns v0 = ret(__glXMakeContextCurrent), f0 = ret(__glXMakeContextCurrent) (`jr` at 0xd8ae3e0).

- `glXGetCurrentReadDrawable` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ae3f8 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ae3f8-0xd8ae408 (16 bytes).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd8ae3f8).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd8ae3fc).
  Loads 4 bytes at [[0x1014]+276] +0xdc (`lw` at 0xd8ae404).
  Returns v0 = [[[0x1014]+276]+220] (`jr` at 0xd8ae400).

- `__glx_ReadPixels` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c0d3c (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c0d3c-0xd8c0f8c (592 bytes).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd8c0d44).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd8c0d48).
  Loads 4 bytes at [[0x1014]+276] +0xd8 (`lw` at 0xd8c0d4c).
  Loads 4 bytes at abs 0xd8e1d4c (`lw` at 0xd8c0d90).
  Loads 4 bytes at [[0x1014]+276] +0x4 (`lw` at 0xd8c0da0).
  2 4-byte lw loads at [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8c0da4, `lw` at 0xd8c0f20.
  Loads 4 bytes at [[[[0x1014]+276]+216]+1232] (`lw` at 0xd8c0db0).
  3 4-byte lw loads at [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8c0dbc, `lw` at 0xd8c0df4, `lw` at 0xd8c0f78.
  Loads 4 bytes at [[[0x1014]+276]+216] +0x70 (`lw` at 0xd8c0dc0).
  Stores 4 bytes from v0 at [[[0x1014]+276]+216] +0x64 (`sw` at 0xd8c0ddc).
  Stores 2 bytes from v1 at [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8c0de4).
  2 1-byte sb stores at [[[[0x1014]+276]+216]+108], including `sb` at 0xd8c0de8, `sb` at 0xd8c0e18.
  Loads 4 bytes at [[[0x1014]+276]+216] +0x60 (`lw` at 0xd8c0df0).
  Stores 4 bytes from ra at [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8c0dfc).
  Stores 4 bytes from at at [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8c0e04).
  Loads 4 bytes at [[0x1014]+276] +0x110 (`lw` at 0xd8c0e0c).
  Stores 1 byte from t8 at [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8c0e14).
  Loads 4 bytes at [[0x1014]+276] +0x3c (`lw` at 0xd8c0e20).
  Stores 4 bytes from a5 at [[[[0x1014]+276]+216]+108] +0x1c (`sw` at 0xd8c0e24).
  Stores 4 bytes from a6 at [[[[0x1014]+276]+216]+108] +0x18 (`sw` at 0xd8c0e28).
  Stores 4 bytes from a7 at [[[[0x1014]+276]+216]+108] +0x14 (`sw` at 0xd8c0e2c).
  Stores 4 bytes from t0 at [[[[0x1014]+276]+216]+108] +0x10 (`sw` at 0xd8c0e30).
  Stores 4 bytes from t1 at [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd8c0e34).
  Stores 4 bytes from t2 at [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8c0e38).
  Stores 4 bytes from t3 at [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8c0e3c).
  Loads 4 bytes at abs 0xd8e1ae4 (`lw` at 0xd8c0e40).
  Loads 1 byte at [[0x1014]+276] +0x4c (`lbu` at 0xd8c0e48).
  Stores 1 byte from zero at [[[[0x1014]+276]+216]+108] +0x21 (`sb` at 0xd8c0e54).
  Stores 1 byte from a4 at [[[[0x1014]+276]+216]+108] +0x20 (`sb` at 0xd8c0e60).
  Loads 4 bytes at abs 0xd8e1ac8 (`lw` at 0xd8c0e7c).
  2 4-byte lw loads at abs 0xd8e1b98, including `lw` at 0xd8c0e90, `lw` at 0xd8c0ed8.
  Loads 4 bytes at [[0x1014]+276] +0xb0 (`lw` at 0xd8c0ea0).
  Stores 4 bytes from t0 at [[0x1014]+276] +0xb0 (`sw` at 0xd8c0eb4).
  Loads 4 bytes at abs 0xd8e1b10 (`lw` at 0xd8c0eb8).
  Loads 4 bytes at abs 0xd8e1d80 (`lw` at 0xd8c0ef8).
  Loads 4 bytes at abs 0xd8e1ac0 (`lw` at 0xd8c0f10).
  Loads 4 bytes at [[[[0x1014]+276]+216]+1232] +0x4 (`lw` at 0xd8c0f2c).
  Loads 4 bytes at [[[0x1014]+276]+216] +0x7c (`lw` at 0xd8c0f3c).
  Loads 4 bytes at abs 0xd8e1ad0 (`lw` at 0xd8c0f68).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8c0d9c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8c0db4).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-208, a2=0x0, a3=0x0, a4=[[[0x1014]+276]+76]:1, a6=a4 at entry (arg4), a7=a3 at entry (arg3) (`jalr` at 0xd8c0e5c).
  Calls `malloc` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8c0e80).
  Calls `_XEatData` via got with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8c0e98).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=ret(malloc), a2=unknown, a3=unknown (`jalr` at 0xd8c0ec4).
  Calls `_XEatData` via got with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8c0ee4).
  Calls `__glXEmptyImage` via got with a0=[[0x1014]+276], a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5) (`jalr` at 0xd8c0f08).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8c0f14).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8c0f30).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8c0f48).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8c0f6c).
  At `beq` at 0xd8c0d60 (target 0xd8c0f7c), taken when t1(=[[[0x1014]+276]+216]) == 0 and falls through when t1(=[[[0x1014]+276]+216]) != 0.
  At `beq` at 0xd8c0d88 (target 0xd8c0f54), taken when t1(=[[[0x1014]+276]+216]) == 0 and falls through when t1(=[[[0x1014]+276]+216]) != 0.
  At `beq` at 0xd8c0da8 (target 0xd8c0dbc), taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `bne` at 0xd8c0dcc (target 0xd8c0f68), taken when at(=[[[[0x1014]+276]+216]+112]) < v1(=[[[[0x1014]+276]+216]+108]+36) (unsigned) and falls through when at(=[[[[0x1014]+276]+216]+112]) >= v1(=[[[[0x1014]+276]+216]+108]+36) (unsigned).
  At `beq` at 0xd8c0e74 (target 0xd8c0f20), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0xd8c0e88 (target 0xd8c0eb8), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `bne` at 0xd8c0ea4 (target 0xd8c0f20), taken when a7(=[[[0x1014]+276]+176]) != 0 and falls through when a7(=[[[0x1014]+276]+176]) == 0.
  At `beq` at 0xd8c0eb0 (target 0xd8c0f20), the branch is always taken.
  At `beq` at 0xd8c0ed4 (target 0xd8c0eec), taken when (t1(?) & 0x3) == 0 and falls through when (t1(?) & 0x3) != 0.
  At `beq` at 0xd8c0f24 (target 0xd8c0f3c), taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beq` at 0xd8c0f40 (target 0xd8c0f54), taken when t9(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  At `beq` at 0xd8c0f74 (target 0xd8c0dd0), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd8c0f60).
  Returns v0 = a5 (`jr` at 0xd8c0f84).

- `glXGetCurrentDisplay` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c554c (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c554c-0xd8c556c (32 bytes).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd8c554c).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd8c5550).
  Loads 4 bytes at [[0x1014]+276] +0xd8 (`lw` at 0xd8c5568).
  At `bne` at 0xd8c5554 (target 0xd8c5564), taken when a2(=[[0x1014]+276]) != 0 and falls through when a2(=[[0x1014]+276]) == 0.
  Returns v0 = 0x0 (`jr` at 0xd8c555c).
  Returns v0 = [[[0x1014]+276]+216] (`jr` at 0xd8c5564).

- `glXGetFBConfigAttrib` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c5be4 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c5be4-0xd8c6210 (1580 bytes).
  Loads 4 bytes at a1 +0x94 (`lw` at 0xd8c5c4c).
  45 4-byte sw stores at a3, including `sw` at 0xd8c5c58, `sw` at 0xd8c5ca8, `sw` at 0xd8c5ce8.
  Loads 4 bytes at a1 +0x10 (`lw` at 0xd8c5c9c).
  Loads 4 bytes at a1 +0x68 (`lw` at 0xd8c5ce4).
  Loads 4 bytes at a1 +0x40 (`lw` at 0xd8c5d34).
  Loads 4 bytes at a1 +0x98 (`lw` at 0xd8c5d68).
  Loads 4 bytes at a1 +0x14 (`lw` at 0xd8c5d78).
  Loads 4 bytes at a1 (`lw` at 0xd8c5da8).
  2 4-byte lw loads at a1 +0x20, including `lw` at 0xd8c5de4, `lw` at 0xd8c5ffc.
  Loads 1 byte at a1 +0xa0 (`lbu` at 0xd8c5df8).
  2 8-byte ldc1 loads at a1 +0xa8, including `ldc1` at 0xd8c5e00, `ldc1` at 0xd8c6124.
  Loads 4 bytes at a1 +0x9c (`lw` at 0xd8c5e3c).
  Loads 4 bytes at a1 +0x54 (`lw` at 0xd8c5e4c).
  Loads 8 bytes at a1 +0xc8 (`ldc1` at 0xd8c5e88).
  Loads 4 bytes at a1 +0x78 (`lw` at 0xd8c5eb4).
  Loads 4 bytes at a1 +0x5c (`lw` at 0xd8c5ed8).
  Loads 4 bytes at a1 +0x24 (`lw` at 0xd8c5f00).
  Loads 4 bytes at a1 +0x8 (`lw` at 0xd8c5f24).
  Loads 4 bytes at a1 +0x34 (`lw` at 0xd8c5f4c).
  Loads 4 bytes at a1 +0x70 (`lw` at 0xd8c5f5c).
  Loads 8 bytes at a1 +0xb0 (`ldc1` at 0xd8c5f84).
  Loads 1 byte at a1 +0x4f (`lbu` at 0xd8c5fa8).
  Loads 4 bytes at a1 +0x74 (`lw` at 0xd8c5fc4).
  Loads 4 bytes at a1 +0x58 (`lw` at 0xd8c5fe0).
  Loads 4 bytes at a1 +0x48 (`lw` at 0xd8c600c).
  Loads 4 bytes at a1 +0x4 (`lw` at 0xd8c601c).
  Loads 8 bytes at a1 +0xe0 (`ldc1` at 0xd8c6044).
  Loads 4 bytes at a1 +0x64 (`lw` at 0xd8c6068).
  Loads 4 bytes at a1 +0x1c (`lw` at 0xd8c6084).
  Loads 4 bytes at a1 +0x18 (`lw` at 0xd8c60a0).
  Loads 4 bytes at a1 +0x2c (`lw` at 0xd8c60bc).
  Loads 4 bytes at a1 +0x30 (`lw` at 0xd8c60d8).
  Loads 1 byte at a1 +0x4e (`lbu` at 0xd8c60e8).
  Loads 4 bytes at a1 +0x3c (`lw` at 0xd8c6104).
  Loads 8 bytes at a1 +0xd0 (`ldc1` at 0xd8c6128).
  Loads 4 bytes at a1 +0x7c (`lw` at 0xd8c6140).
  Loads 4 bytes at a1 +0x60 (`lw` at 0xd8c6150).
  Loads 4 bytes at a1 +0x28 (`lw` at 0xd8c6160).
  Loads 8 bytes at a1 +0xc0 (`ldc1` at 0xd8c617c).
  Loads 8 bytes at a1 +0xd8 (`ldc1` at 0xd8c61a0).
  Loads 4 bytes at a1 +0xc (`lw` at 0xd8c61b8).
  Loads 4 bytes at a1 +0x38 (`lw` at 0xd8c61c8).
  Loads 8 bytes at a1 +0xb8 (`ldc1` at 0xd8c61d8).
  Loads 4 bytes at a1 +0x90 (`lw` at 0xd8c61f0).
  Loads 4 bytes at a1 +0x6c (`lw` at 0xd8c6200).
  At `bne` at 0xd8c5bf4 (target 0xd8c5c5c), taken when a2 < 0x28 (signed) and falls through when a2 >= 0x28 (signed).
  At `bne` at 0xd8c5bfc (target 0xd8c5d78), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0xd8c5c04 (target 0xd8c5cf4), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd8c5c0c (target 0xd8c5df8), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0xd8c5c18 (target 0xd8c5e5c), taken when a2 < a4(=0x802e) (signed) and falls through when a2 >= a4(=0x802e) (signed).
  At `beq` at 0xd8c5c20 (target 0xd8c6128), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xd8c5c30 (target 0xd8c602c), taken when a2 < a4(=0x186a0) (signed) and falls through when a2 >= a4(=0x186a0) (signed).
  At `beq` at 0xd8c5c38 (target 0xd8c61f0), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8c5c44 (target 0xd8c5e24), taken when a2 != v0(=0x186a1) and falls through when a2 == v0(=0x186a1).
  At `bne` at 0xd8c5c5c (target 0xd8c5cac), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0xd8c5c64 (target 0xd8c5e4c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xd8c5c70 (target 0xd8c5d88), taken when a2 < 0x23 (signed) and falls through when a2 >= 0x23 (signed).
  At `bne` at 0xd8c5c7c (target 0xd8c601c), taken when a2 < 0x24 (signed) and falls through when a2 >= 0x24 (signed).
  At `bne` at 0xd8c5c84 (target 0xd8c5f10), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0xd8c5c8c (target 0xd8c61b8), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xd8c5c94 (target 0xd8c5e24), taken when a2 != v0(=0x27) and falls through when a2 == v0(=0x27).
  At `bne` at 0xd8c5cb0 (target 0xd8c5d44), taken when a2 < 0x8 (signed) and falls through when a2 >= 0x8 (signed).
  At `bne` at 0xd8c5cbc (target 0xd8c5f5c), taken when a2 < 0x9 (signed) and falls through when a2 >= 0x9 (signed).
  At `bne` at 0xd8c5cc4 (target 0xd8c5ea0), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0xd8c5ccc (target 0xd8c6140), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xd8c5cd4 (target 0xd8c605c), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0xd8c5cdc (target 0xd8c5e24), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8c5d00 (target 0xd8c5db8), taken when a2 < a4(=0x8013) (signed) and falls through when a2 >= a4(=0x8013) (signed).
  At `beq` at 0xd8c5d08 (target 0xd8c600c), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0xd8c5d10 (target 0xd8c5f34), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd8c5d18 (target 0xd8c61c8), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xd8c5d24 (target 0xd8c60f8), taken when a2 < a4(=0x801a) (signed) and falls through when a2 >= a4(=0x801a) (signed).
  At `bne` at 0xd8c5d2c (target 0xd8c5e24), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0xd8c5d44 (target 0xd8c5e2c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xd8c5d50 (target 0xd8c60e8), taken when a2 < 0x6 (signed) and falls through when a2 >= 0x6 (signed).
  At `bne` at 0xd8c5d58 (target 0xd8c5f9c), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd8c5d60 (target 0xd8c5e24), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0xd8c5d88 (target 0xd8c5ec4), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xd8c5d90 (target 0xd8c6150), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0xd8c5d98 (target 0xd8c6078), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd8c5da0 (target 0xd8c5e24), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0xd8c5dc0 (target 0xd8c5ee8), taken when a2 < a4(=0x8010) (signed) and falls through when a2 >= a4(=0x8010) (signed).
  At `beq` at 0xd8c5dc8 (target 0xd8c6160), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xd8c5dd4 (target 0xd8c60b0), taken when a2 < a4(=0x8012) (signed) and falls through when a2 >= a4(=0x8012) (signed).
  At `bne` at 0xd8c5ddc (target 0xd8c5e24), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0xd8c5e1c (target 0xd8c6200), taken when a2 == v1(=0x2) and falls through when a2 != v1(=0x2).
  At `bne` at 0xd8c5e2c (target 0xd8c5e18), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0xd8c5e34 (target 0xd8c5e24), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8c5e64 (target 0xd8c5f6c), taken when a2 < a4(=0x802b) (signed) and falls through when a2 >= a4(=0x802b) (signed).
  At `beq` at 0xd8c5e6c (target 0xd8c61d8), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8c5e78 (target 0xd8c6170), taken when a2 < a4(=0x802d) (signed) and falls through when a2 >= a4(=0x802d) (signed).
  At `bne` at 0xd8c5e80 (target 0xd8c5e24), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xd8c5ea4 (target 0xd8c5fb8), taken when a2 < 0xa (signed) and falls through when a2 >= 0xa (signed).
  At `beq` at 0xd8c5eac (target 0xd8c5e24), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xd8c5ec8 (target 0xd8c5fd4), taken when a2 < 0x10 (signed) and falls through when a2 >= 0x10 (signed).
  At `beq` at 0xd8c5ed0 (target 0xd8c5e24), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8c5ef0 (target 0xd8c5ff0), taken when a2 < a4(=0x800c) (signed) and falls through when a2 >= a4(=0x800c) (signed).
  At `bne` at 0xd8c5ef8 (target 0xd8c5e24), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0xd8c5f14 (target 0xd8c6094), taken when a2 < 0x25 (signed) and falls through when a2 >= 0x25 (signed).
  At `beq` at 0xd8c5f1c (target 0xd8c5e24), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xd8c5f3c (target 0xd8c60cc), taken when a2 < a4(=0x8017) (signed) and falls through when a2 >= a4(=0x8017) (signed).
  At `bne` at 0xd8c5f44 (target 0xd8c5e24), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xd8c5f74 (target 0xd8c6114), taken when a2 < a4(=0x802a) (signed) and falls through when a2 >= a4(=0x802a) (signed).
  At `bne` at 0xd8c5f7c (target 0xd8c5e24), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xd8c5fa0 (target 0xd8c5e24), taken when a2 != v1(=0x6) and falls through when a2 == v1(=0x6).
  At `bne` at 0xd8c5fbc (target 0xd8c5e24), taken when a2 != at(=0x9) and falls through when a2 == at(=0x9).
  At `bne` at 0xd8c5fd8 (target 0xd8c5e24), taken when a2 != v1(=0xf) and falls through when a2 == v1(=0xf).
  At `bne` at 0xd8c5ff4 (target 0xd8c5e24), taken when a2 != at(=0x800b) and falls through when a2 == at(=0x800b).
  At `bne` at 0xd8c6034 (target 0xd8c6194), taken when a2 < a4(=0x8030) (signed) and falls through when a2 >= a4(=0x8030) (signed).
  At `bne` at 0xd8c603c (target 0xd8c5e24), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0xd8c6060 (target 0xd8c5e24), taken when a2 != a0(=0xc) and falls through when a2 == a0(=0xc).
  At `bne` at 0xd8c607c (target 0xd8c5e24), taken when a2 != at(=0x20) and falls through when a2 == at(=0x20).
  At `bne` at 0xd8c6098 (target 0xd8c5e24), taken when a2 != v1(=0x24) and falls through when a2 == v1(=0x24).
  At `bne` at 0xd8c60b4 (target 0xd8c5e24), taken when a2 != at(=0x8011) and falls through when a2 == at(=0x8011).
  At `bne` at 0xd8c60d0 (target 0xd8c5e24), taken when a2 != v1(=0x8016) and falls through when a2 == v1(=0x8016).
  At `bne` at 0xd8c60fc (target 0xd8c5e24), taken when a2 != at(=0x8019) and falls through when a2 == at(=0x8019).
  At `bne` at 0xd8c6118 (target 0xd8c5e24), taken when a2 != v1(=0x8029) and falls through when a2 == v1(=0x8029).
  At `beq` at 0xd8c6120 (target 0xd8c5e04), the branch is always taken.
  At `bne` at 0xd8c6174 (target 0xd8c5e24), taken when a2 != v0(=0x802c) and falls through when a2 == v0(=0x802c).
  At `bne` at 0xd8c6198 (target 0xd8c5e24), taken when a2 != a0(=0x802f) and falls through when a2 == a0(=0x802f).
  Returns v0 = 0x0 (`jr` at 0xd8c5c54).
  Returns v0 = 0x0 (`jr` at 0xd8c5ca4).
  Returns v0 = 0x0 (`jr` at 0xd8c5cec).
  Returns v0 = 0x0 (`jr` at 0xd8c5d3c).
  Returns v0 = 0x0 (`jr` at 0xd8c5d70).
  Returns v0 = 0x0 (`jr` at 0xd8c5d80).
  Returns v0 = 0x0 (`jr` at 0xd8c5db0).
  Returns v0 = 0x0 (`jr` at 0xd8c5df0).
  Returns v0 = 0x0 (`jr` at 0xd8c5e10).
  Returns v0 = 0x2 (`jr` at 0xd8c5e24).
  Returns v0 = 0x0 (`jr` at 0xd8c5e44).
  Returns v0 = 0x0 (`jr` at 0xd8c5e54).
  Returns v0 = 0x0 (`jr` at 0xd8c5e98).
  Returns v0 = 0x0 (`jr` at 0xd8c5ebc).
  Returns v0 = 0x0 (`jr` at 0xd8c5ee0).
  Returns v0 = 0x0 (`jr` at 0xd8c5f08).
  Returns v0 = 0x0 (`jr` at 0xd8c5f2c).
  Returns v0 = 0x0 (`jr` at 0xd8c5f54).
  Returns v0 = 0x0 (`jr` at 0xd8c5f64).
  Returns v0 = 0x0 (`jr` at 0xd8c5f94).
  Returns v0 = 0x0 (`jr` at 0xd8c5fb0).
  Returns v0 = 0x0 (`jr` at 0xd8c5fcc).
  Returns v0 = 0x0 (`jr` at 0xd8c5fe8).
  Returns v0 = 0x0 (`jr` at 0xd8c6004).
  Returns v0 = 0x0 (`jr` at 0xd8c6014).
  Returns v0 = 0x0 (`jr` at 0xd8c6024).
  Returns v0 = 0x0 (`jr` at 0xd8c6054).
  Returns v0 = 0x0 (`jr` at 0xd8c6070).
  Returns v0 = 0x0 (`jr` at 0xd8c608c).
  Returns v0 = 0x0 (`jr` at 0xd8c60a8).
  Returns v0 = 0x0 (`jr` at 0xd8c60c4).
  Returns v0 = 0x0 (`jr` at 0xd8c60e0).
  Returns v0 = 0x0 (`jr` at 0xd8c60f0).
  Returns v0 = 0x0 (`jr` at 0xd8c610c).
  Returns v0 = 0x0 (`jr` at 0xd8c6138).
  Returns v0 = 0x0 (`jr` at 0xd8c6148).
  Returns v0 = 0x0 (`jr` at 0xd8c6158).
  Returns v0 = 0x0 (`jr` at 0xd8c6168).
  Returns v0 = 0x0 (`jr` at 0xd8c618c).
  Returns v0 = 0x0 (`jr` at 0xd8c61b0).
  Returns v0 = 0x0 (`jr` at 0xd8c61c0).
  Returns v0 = 0x0 (`jr` at 0xd8c61d0).
  Returns v0 = 0x0 (`jr` at 0xd8c61e8).
  Returns v0 = 0x0 (`jr` at 0xd8c61f8).
  Returns v0 = 0x0 (`jr` at 0xd8c6208).

- `glXGetFBConfigFltAttribSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c625c (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c625c-0xd8c63b8 (348 bytes).
  Loads 4 bytes at abs 0xd8e1988 (`lw` at 0xd8c6280).
  Loads 4 bytes at table(0xd8e05c8) (`lw` at 0xd8c629c).
  Loads 8 bytes at a1 +0xa8 (`ldc1` at 0xd8c62a8).
  9 8-byte sdc1 stores at a3, including `sdc1` at 0xd8c62b4, `sdc1` at 0xd8c62d0, `sdc1` at 0xd8c62ec.
  Loads 8 bytes at a1 +0xb0 (`ldc1` at 0xd8c62c4).
  Loads 8 bytes at a1 +0xb8 (`ldc1` at 0xd8c62e0).
  Loads 8 bytes at a1 +0xc0 (`ldc1` at 0xd8c62fc).
  Loads 8 bytes at a1 +0xc8 (`ldc1` at 0xd8c6318).
  Loads 8 bytes at a1 +0xd0 (`ldc1` at 0xd8c6334).
  Loads 8 bytes at a1 +0xd8 (`ldc1` at 0xd8c6350).
  Loads 8 bytes at a1 +0xe0 (`ldc1` at 0xd8c636c).
  Loads 4 bytes at abs 0xd8e1c18 (`lw` at 0xd8c6384).
  Calls `glXGetFBConfigAttribSGIX` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-64, a5=table(0xd8e05c8) (`jalr` at 0xd8c638c).
  At `beq` at 0xd8c6294 (target 0xd8c6384), taken when a5(=a2-32809) >= 0x8 (unsigned) and falls through when a5(=a2-32809) < 0x8 (unsigned).
  Returns v0 = 0x0, f0 = [a1+168]:8 (`jr` at 0xd8c62bc).
  Returns v0 = 0x0 (`jr` at 0xd8c62d8).
  Returns v0 = 0x0 (`jr` at 0xd8c62f4).
  Returns v0 = 0x0 (`jr` at 0xd8c6310).
  Returns v0 = 0x0 (`jr` at 0xd8c632c).
  Returns v0 = 0x0, f0 = [a1+208]:8 (`jr` at 0xd8c6348).
  Returns v0 = 0x0 (`jr` at 0xd8c6364).
  Returns v0 = 0x0 (`jr` at 0xd8c637c).
  Returns v0 = ret(glXGetFBConfigAttribSGIX), f0 = ret(glXGetFBConfigAttribSGIX) (`jr` at 0xd8c63b0).

- `glXChooseFBConfigWithFltSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c684c (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c684c-0xd8c7b80 (4916 bytes).
  Loads 8 bytes at abs 0xd8e2468 (`ldc1` at 0xd8c6958).
  Loads 8 bytes at abs 0xd8e2460 (`ldc1` at 0xd8c695c).
  Loads 4 bytes at a2 (`lw` at 0xd8c699c).
  91 4-byte lw loads at ?, including `lw` at 0xd8c69fc, `lw` at 0xd8c6a10, `lw` at 0xd8c6a5c.
  3 4-byte lw loads at abs 0xd8e1d44, including `lw` at 0xd8c6a20, `lw` at 0xd8c6a80, `lw` at 0xd8c6abc.
  Loads 8 bytes at a3 (`ldc1` at 0xd8c6a24).
  17 8-byte ldc1 loads at ?, including `ldc1` at 0xd8c6a6c, `ldc1` at 0xd8c6a84, `ldc1` at 0xd8c6bd0.
  2 4-byte lw loads at abs 0xd8e1988, including `lw` at 0xd8c6a94, `lw` at 0xd8c6a94.
  Loads 4 bytes at table(0xd8e05e8) (`lw` at 0xd8c6ab0).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd8c6ae0).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd8c6af0).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd8c6afc).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd8c6b04).
  Loads 4 bytes at [([ret(__glXInitialize)+32] + (a1 << 0x5))+12] +0x48 (`lw` at 0xd8c6b38).
  12 4-byte sw stores at a4, including `sw` at 0xd8c6b6c, `sw` at 0xd8c6cac, `sw` at 0xd8c6cfc.
  7 1-byte lbu loads at ?, including `lbu` at 0xd8c6cd0, `lbu` at 0xd8c7054, `lbu` at 0xd8c70d8.
  2 4-byte lw loads at abs 0xd8e1ac8, including `lw` at 0xd8c6d38, `lw` at 0xd8c7240.
  Stores 4 bytes from s0 at ret(malloc) (`sw` at 0xd8c6e84).
  2 4-byte lw loads at abs 0xd8e1968, including `lw` at 0xd8c72cc, `lw` at 0xd8c799c.
  Loads 4 bytes at abs 0xd8e1af4 (`lw` at 0xd8c72ec).
  36 4-byte sw stores at ?, including `sw` at 0xd8c7354, `sw` at 0xd8c7384, `sw` at 0xd8c738c.
  Loads 4 bytes at abs 0xd8e1ac0 (`lw` at 0xd8c7708).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8c6ac4).
  Calls `malloc` via got with a0=0x4, a1=ret(__glXInitialize), a2=unknown, a3=unknown (`jalr` at 0xd8c6d3c).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=ret(__glXInitialize), a2=unknown, a3=unknown, a5=(a1 << 0x5) (`jalr` at 0xd8c724c).
  Calls `(unknown callee) [0xd8c3ef0]` via direct with a0=unknown, a1=a1 at entry (arg1), a2=sp-328, a3=unknown (`bgezall` at 0xd8c72dc).
  Calls `strncmp` via got with a0=sp-328, a1=0xd8e2428, a2=0x7, a3=unknown (`jalr` at 0xd8c72f8).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8c770c).
  Calls `(unknown callee) [0xd8c63fc]` via direct with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xd8c79c4).
  At `beq` at 0xd8c6994 (target 0xd8c6a1c), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0xd8c69a0 (target 0xd8c6a1c), taken when a0(=[a2]) == 0 and falls through when a0(=[a2]) != 0.
  At `bne` at 0xd8c69d8 (target 0xd8c6a40), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd8c69ec (target 0xd8c6b7c), taken when v0(?) >= 0x27 (signed) and falls through when v0(?) < 0x27 (signed).
  At `beq` at 0xd8c6a08 (target 0xd8c6a1c), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `bne` at 0xd8c6a14 (target 0xd8c69d8), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0xd8c6a1c (target 0xd8c6ac0), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xd8c6a30 (target 0xd8c6abc), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xd8c6a38 (target 0xd8c6a94), the branch is always taken.
  At `bne` at 0xd8c6a4c (target 0xd8c6ba4), taken when v0(?) < 0xd (signed) and falls through when v0(?) >= 0xd (signed).
  At `beq` at 0xd8c6a54 (target 0xd8c6c40), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xd8c6a64 (target 0xd8c6a08), the branch is always taken.
  At `beq` at 0xd8c6a7c (target 0xd8c6ac0), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0xd8c6a90 (target 0xd8c6abc), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xd8c6aa8 (target 0xd8c6c90), taken when a0(=table(-0x8029)) >= 0x8 (unsigned) and falls through when a0(=table(-0x8029)) < 0x8 (unsigned).
  At `beq` at 0xd8c6ad0 (target 0xd8c6e0c), taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  At `bltz` at 0xd8c6ad8 (target 0xd8c6ce0), taken when s3(=a1) < 0 (signed) and falls through when s3(=a1) >= 0 (signed).
  At `beq` at 0xd8c6ae8 (target 0xd8c6ce0), taken when s3(=a1) >= a6(=[a0+136]) (signed) and falls through when s3(=a1) < a6(=[a0+136]) (signed).
  At `beq` at 0xd8c6b00 (target 0xd8c6e38), taken when s4(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0 and falls through when s4(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0.
  At `beq` at 0xd8c6b08 (target 0xd8c6e38), taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) == 0 and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) != 0.
  At `beq` at 0xd8c6b10 (target 0xd8c7240), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `blez` at 0xd8c6b18 (target 0xd8c6b50), taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed) and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  At `beq` at 0xd8c6b3c (target 0xd8c6d38), taken when v1(?) == s1(?) and falls through when v1(?) != s1(?).
  At `bnel` at 0xd8c6b48 (target 0xd8c6b3c), taken when a5(?) != s0(?) and falls through when a5(?) == s0(?); its branch-likely delay slot `lw v1,72(s0)` at 0xd8c6b4c runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8c6b7c (target 0xd8c6c6c), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `bne` at 0xd8c6b84 (target 0xd8c6d0c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd8c6b9c (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6bac (target 0xd8c6cbc), taken when v0(?) < 0x8 (signed) and falls through when v0(?) >= 0x8 (signed).
  At `beq` at 0xd8c6bb4 (target 0xd8c6d78), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xd8c6bc8 (target 0xd8c6a08), the branch is always taken.
  At `beq` at 0xd8c6bd8 (target 0xd8c6a7c), the branch is always taken.
  At `beq` at 0xd8c6be8 (target 0xd8c6a7c), the branch is always taken.
  At `beq` at 0xd8c6bf8 (target 0xd8c6a7c), the branch is always taken.
  At `beq` at 0xd8c6c08 (target 0xd8c6a7c), the branch is always taken.
  At `beq` at 0xd8c6c18 (target 0xd8c6a7c), the branch is always taken.
  At `beq` at 0xd8c6c28 (target 0xd8c6a7c), the branch is always taken.
  At `beq` at 0xd8c6c38 (target 0xd8c6a7c), the branch is always taken.
  At `bne` at 0xd8c6c40 (target 0xd8c6d9c), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd8c6c50 (target 0xd8c6e94), taken when v0(?) >= 0x21 (signed) and falls through when v0(?) < 0x21 (signed).
  At `beq` at 0xd8c6c64 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6c6c (target 0xd8c6dbc), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xd8c6c74 (target 0xd8c6ec0), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xd8c6c88 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6cbc (target 0xd8c6de8), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd8c6cc4 (target 0xd8c6f0c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c6cd8 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6d10 (target 0xd8c6ee0), taken when v0(?) < a3(=0x802e) (signed) and falls through when v0(?) >= a3(=0x802e) (signed).
  At `bne` at 0xd8c6d18 (target 0xd8c6fc4), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd8c6d30 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6d44 (target 0xd8c6e64), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `bne` at 0xd8c6d7c (target 0xd8c6f30), taken when v0(?) < 0xb (signed) and falls through when v0(?) >= 0xb (signed).
  At `beq` at 0xd8c6d84 (target 0xd8c7010), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd8c6d94 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6d9c (target 0xd8c6f54), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xd8c6da4 (target 0xd8c702c), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xd8c6db4 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6dc8 (target 0xd8c6f7c), taken when v0(?) < a4(=0x8010) (signed) and falls through when v0(?) >= a4(=0x8010) (signed).
  At `bne` at 0xd8c6dd0 (target 0xd8c7044), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xd8c6de0 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6dec (target 0xd8c6fa8), taken when v0(?) < 0x3 (signed) and falls through when v0(?) >= 0x3 (signed).
  At `beq` at 0xd8c6df4 (target 0xd8c6fe4), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c6e04 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6e98 (target 0xd8c7064), taken when v0(?) < 0x24 (signed) and falls through when v0(?) >= 0x24 (signed).
  At `beq` at 0xd8c6ea0 (target 0xd8c713c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c6eb8 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6ec0 (target 0xd8c7084), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xd8c6ec8 (target 0xd8c7158), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd8c6ed8 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6ee0 (target 0xd8c70a8), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `bne` at 0xd8c6eec (target 0xd8c7170), taken when t0(=0x802c) < v0(?) (signed) and falls through when t0(=0x802c) >= v0(?) (signed).
  At `beq` at 0xd8c6f04 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6f0c (target 0xd8c70d0), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xd8c6f18 (target 0xd8c6fe4), taken when v0(?) >= 0x8 (signed) and falls through when v0(?) < 0x8 (signed).
  At `beq` at 0xd8c6f28 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6f30 (target 0xd8c70e8), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd8c6f38 (target 0xd8c6fe4), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xd8c6f4c (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6f5c (target 0xd8c7108), taken when v0(?) < 0xf (signed) and falls through when v0(?) >= 0xf (signed).
  At `beq` at 0xd8c6f64 (target 0xd8c6fe4), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c6f74 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6f84 (target 0xd8c7120), taken when v0(?) < 0x28 (signed) and falls through when v0(?) >= 0x28 (signed).
  At `beq` at 0xd8c6f8c (target 0xd8c6fe4), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd8c6fa0 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6fac (target 0xd8c6fe4), taken when v0(?) != a6(=0x2) and falls through when v0(?) == a6(=0x2).
  At `beq` at 0xd8c6fbc (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c6fc4 (target 0xd8c7190), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xd8c6fcc (target 0xd8c728c), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xd8c6fdc (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c7010 (target 0xd8c6fe4), taken when v0(?) != t9(=0xc) and falls through when v0(?) == t9(=0xc).
  At `beq` at 0xd8c7024 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c702c (target 0xd8c6fe4), taken when v0(?) != v1(=0x11) and falls through when v0(?) == v1(=0x11).
  At `beq` at 0xd8c703c (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c7044 (target 0xd8c71e4), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `bne` at 0xd8c704c (target 0xd8c6fe4), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd8c705c (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c7064 (target 0xd8c71c4), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xd8c706c (target 0xd8c6fe4), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xd8c707c (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c7088 (target 0xd8c7200), taken when v0(?) < t2(=0x8017) (signed) and falls through when v0(?) >= t2(=0x8017) (signed).
  At `bne` at 0xd8c7090 (target 0xd8c6fe4), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xd8c70a0 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c70a8 (target 0xd8c721c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xd8c70b0 (target 0xd8c6fe4), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd8c70c8 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c70d0 (target 0xd8c6fe4), taken when v0(?) != a6(=0x6) and falls through when v0(?) == a6(=0x6).
  At `beq` at 0xd8c70e0 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c70ec (target 0xd8c6fe4), taken when v0(?) != v1(=0x9) and falls through when v0(?) == v1(=0x9).
  At `beq` at 0xd8c7100 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c7108 (target 0xd8c6fe4), taken when v0(?) != a6(=0xe) and falls through when v0(?) == a6(=0xe).
  At `beq` at 0xd8c7118 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c7120 (target 0xd8c6fe4), taken when v0(?) != v1(=0x27) and falls through when v0(?) == v1(=0x27).
  At `beq` at 0xd8c7134 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c713c (target 0xd8c6fe4), taken when v0(?) != at(=0x25) and falls through when v0(?) == at(=0x25).
  At `beq` at 0xd8c7150 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c7158 (target 0xd8c6fe4), taken when v0(?) != a6(=0x8028) and falls through when v0(?) == a6(=0x8028).
  At `beq` at 0xd8c7168 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c7170 (target 0xd8c6fe4), taken when v0(?) != v1(=0x802d) and falls through when v0(?) == v1(=0x802d).
  At `beq` at 0xd8c7188 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c7198 (target 0xd8c72a8), taken when v0(?) < a6(=0x8030) (signed) and falls through when v0(?) >= a6(=0x8030) (signed).
  At `bne` at 0xd8c71a4 (target 0xd8c6fe4), taken when at(=0x8030) < v0(?) (signed) and falls through when at(=0x8030) >= v0(?) (signed).
  At `beq` at 0xd8c71bc (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c71c8 (target 0xd8c6fe4), taken when v0(?) != a5(=0x22) and falls through when v0(?) == a5(=0x22).
  At `beq` at 0xd8c71dc (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c71e8 (target 0xd8c6fe4), taken when v0(?) != v1(=0x8011) and falls through when v0(?) == v1(=0x8011).
  At `beq` at 0xd8c71f8 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c7204 (target 0xd8c6fe4), taken when v0(?) != a6(=0x8016) and falls through when v0(?) == a6(=0x8016).
  At `beq` at 0xd8c7214 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c7220 (target 0xd8c6fe4), taken when v0(?) != v1(=0x802a) and falls through when v0(?) == v1(=0x802a).
  At `beq` at 0xd8c7238 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c7258 (target 0xd8c72cc), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `bne` at 0xd8c7290 (target 0xd8c6fe4), taken when v0(?) != a6(=0x186a1) and falls through when v0(?) == a6(=0x186a1).
  At `beq` at 0xd8c72a0 (target 0xd8c6a08), the branch is always taken.
  At `bne` at 0xd8c72ac (target 0xd8c6fe4), taken when v0(?) != v1(=0x802f) and falls through when v0(?) == v1(=0x802f).
  At `beq` at 0xd8c72c4 (target 0xd8c6a08), the branch is always taken.
  At `beq` at 0xd8c72e4 (target 0xd8c7308), taken when v0(=ret(0xd8c3ef0)) == 0 and falls through when v0(=ret(0xd8c3ef0)) != 0.
  At `beq` at 0xd8c7300 (target 0xd8c76c8), taken when v0(=ret(strncmp)) == 0 and falls through when v0(=ret(strncmp)) != 0.
  At `bne` at 0xd8c7308 (target 0xd8c73f0), taken when s2(?) != 0 and falls through when s2(?) == 0.
  At `bne` at 0xd8c7310 (target 0xd8c73f0), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `blez` at 0xd8c7318 (target 0xd8c73c4), taken when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed) and falls through when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  At `beq` at 0xd8c7344 (target 0xd8c7360), taken when (at(?) & 0x7) == 0 and falls through when (at(?) & 0x7) != 0.
  At `bne` at 0xd8c7358 (target 0xd8c734c), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `beq` at 0xd8c7368 (target 0xd8c73c0), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8c73b8 (target 0xd8c7378), taken when a1(?) != s1(?) and falls through when a1(?) == s1(?).
  At `blez` at 0xd8c73f0 (target 0xd8c75b4), taken when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed) and falls through when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  At `beq` at 0xd8c7428 (target 0xd8c7440), the branch is always taken.
  At `beq` at 0xd8c7430 (target 0xd8c7480), the branch is always taken.
  At `beq` at 0xd8c743c (target 0xd8c75b4), taken when s0(?) == s1(?) and falls through when s0(?) != s1(?).
  At `bne` at 0xd8c7450 (target 0xd8c7438), taken when at(?) < v1(?) (signed) and falls through when at(?) >= v1(?) (signed).
  At `bne` at 0xd8c745c (target 0xd8c7438), taken when a5(?) != a6(?) and falls through when a5(?) == a6(?).
  At `beq` at 0xd8c7464 (target 0xd8c7430), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd8c7470 (target 0xd8c7430), taken when v1(?) == a5(?) and falls through when v1(?) != a5(?).
  At `beq` at 0xd8c7478 (target 0xd8c7438), the branch is always taken.
  At `bne` at 0xd8c7488 (target 0xd8c7438), taken when a6(?) != at(?) and falls through when a6(?) == at(?).
  At `bne` at 0xd8c749c (target 0xd8c7438), taken when v1(?) < a5(?) (signed) and falls through when v1(?) >= a5(?) (signed).
  At `bne` at 0xd8c74b0 (target 0xd8c7438), taken when a1(?) < a6(?) (signed) and falls through when a1(?) >= a6(?) (signed).
  At `bne` at 0xd8c74c4 (target 0xd8c7438), taken when a7(?) < at(?) (signed) and falls through when a7(?) >= at(?) (signed).
  At `bne` at 0xd8c74d8 (target 0xd8c7438), taken when t0(?) < v1(?) (signed) and falls through when t0(?) >= v1(?) (signed).
  At `bne` at 0xd8c74ec (target 0xd8c7438), taken when t1(?) < a5(?) (signed) and falls through when t1(?) >= a5(?) (signed).
  At `bne` at 0xd8c7500 (target 0xd8c7438), taken when t2(?) < a6(?) (signed) and falls through when t2(?) >= a6(?) (signed).
  At `bne` at 0xd8c7514 (target 0xd8c7438), taken when at(?) < v1(?) (signed) and falls through when at(?) >= v1(?) (signed).
  At `bne` at 0xd8c7528 (target 0xd8c7438), taken when a5(?) < a6(?) (signed) and falls through when a5(?) >= a6(?) (signed).
  At `bne` at 0xd8c753c (target 0xd8c7438), taken when at(?) < v1(?) (signed) and falls through when at(?) >= v1(?) (signed).
  At `bne` at 0xd8c7550 (target 0xd8c7438), taken when a5(?) < a6(?) (signed) and falls through when a5(?) >= a6(?) (signed).
  At `bne` at 0xd8c7564 (target 0xd8c7438), taken when at(?) < v1(?) (signed) and falls through when at(?) >= v1(?) (signed).
  At `bne` at 0xd8c7578 (target 0xd8c7438), taken when a5(?) < a6(?) (unsigned) and falls through when a5(?) >= a6(?) (unsigned).
  At `bne` at 0xd8c758c (target 0xd8c7438), taken when at(?) < v1(?) (unsigned) and falls through when at(?) >= v1(?) (unsigned).
  At `beq` at 0xd8c7594 (target 0xd8c7744), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xd8c75a4 (target 0xd8c7744), taken when a6(?) == at(?) and falls through when a6(?) != at(?).
  At `beq` at 0xd8c75ac (target 0xd8c7744), the branch is always taken.
  At `blez` at 0xd8c75b4 (target 0xd8c7708), taken when s2(?) <= 0 (signed) and falls through when s2(?) > 0 (signed).
  At `beq` at 0xd8c75bc (target 0xd8c769c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bltz` at 0xd8c75d0 (target 0xd8c7600), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `bltz` at 0xd8c7604 (target 0xd8c7634), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `bltz` at 0xd8c7638 (target 0xd8c7668), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `bltz` at 0xd8c766c (target 0xd8c769c), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `bne` at 0xd8c76d4 (target 0xd8c7308), taken when a5(?) != s3(=0xc) and falls through when a5(?) == s3(=0xc).
  At `bne` at 0xd8c76e0 (target 0xd8c7308), taken when at(?) != s3(=0xc) and falls through when at(?) == s3(=0xc).
  At `bne` at 0xd8c76e8 (target 0xd8c7308), taken when v1(?) != s3(=0xc) and falls through when v1(?) == s3(=0xc).
  At `beq` at 0xd8c7700 (target 0xd8c7308), the branch is always taken.
  At `bne` at 0xd8c7744 (target 0xd8c7438), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `bne` at 0xd8c7754 (target 0xd8c7438), taken when at(?) != v1(?) and falls through when at(?) == v1(?).
  At `beq` at 0xd8c775c (target 0xd8c7778), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xd8c776c (target 0xd8c7778), taken when a6(?) == at(?) and falls through when a6(?) != at(?).
  At `bne` at 0xd8c7778 (target 0xd8c7438), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c7780 (target 0xd8c779c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c7790 (target 0xd8c779c), taken when a5(?) == a6(?) and falls through when a5(?) != a6(?).
  At `bne` at 0xd8c779c (target 0xd8c7438), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c77a4 (target 0xd8c77c0), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd8c77b4 (target 0xd8c77c0), taken when v1(?) == a5(?) and falls through when v1(?) != a5(?).
  At `bne` at 0xd8c77c0 (target 0xd8c7438), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c77c8 (target 0xd8c77e4), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xd8c77d8 (target 0xd8c77e4), taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  At `bne` at 0xd8c77e4 (target 0xd8c7438), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c77ec (target 0xd8c7808), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xd8c77fc (target 0xd8c7808), taken when a6(?) == at(?) and falls through when a6(?) != at(?).
  At `bne` at 0xd8c7808 (target 0xd8c7438), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c7810 (target 0xd8c782c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c7820 (target 0xd8c782c), taken when a5(?) == a6(?) and falls through when a5(?) != a6(?).
  At `bne` at 0xd8c782c (target 0xd8c7438), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `bne` at 0xd8c7840 (target 0xd8c7438), taken when at(?) != v1(?) and falls through when at(?) == v1(?).
  At `bne` at 0xd8c7854 (target 0xd8c7438), taken when v1(?) != a5(?) and falls through when v1(?) == a5(?).
  At `beq` at 0xd8c785c (target 0xd8c7870), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xd8c7868 (target 0xd8c7b14), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0xd8c7870 (target 0xd8c7438), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `bne` at 0xd8c7884 (target 0xd8c7438), taken when at(?) < v1(?) (signed) and falls through when at(?) >= v1(?) (signed).
  At `bne` at 0xd8c7898 (target 0xd8c7438), taken when a5(?) < a6(?) (signed) and falls through when a5(?) >= a6(?) (signed).
  At `bne` at 0xd8c78ac (target 0xd8c7438), taken when at(?) < v1(?) (signed) and falls through when at(?) >= v1(?) (signed).
  At `bne` at 0xd8c78bc (target 0xd8c7438), taken when a5(?) != a6(?) and falls through when a5(?) == a6(?).
  At `bc1t` at 0xd8c78cc (target 0xd8c7438), taken when f0 < f1 (c.lt.d at 0xd8c78c8) and falls through when not (f0 < f1 (c.lt.d at 0xd8c78c8)).
  At `bc1t` at 0xd8c78e0 (target 0xd8c7438), taken when FP condition code 1 is true and falls through when FP condition code 1 is false.
  At `bc1t` at 0xd8c78f0 (target 0xd8c7438), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1t` at 0xd8c7904 (target 0xd8c7438), taken when FP condition code 3 is true and falls through when FP condition code 3 is false.
  At `bc1t` at 0xd8c7914 (target 0xd8c7438), taken when f0 < f1 (c.lt.d at 0xd8c7910) and falls through when not (f0 < f1 (c.lt.d at 0xd8c7910)).
  At `bc1t` at 0xd8c7928 (target 0xd8c7438), taken when FP condition code 1 is true and falls through when FP condition code 1 is false.
  At `bc1t` at 0xd8c7938 (target 0xd8c7438), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1t` at 0xd8c794c (target 0xd8c7438), taken when FP condition code 3 is true and falls through when FP condition code 3 is false.
  At `beq` at 0xd8c796c (target 0xd8c797c), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd8c7974 (target 0xd8c7b38), taken when a7(?) == s3(=0xc) and falls through when a7(?) != s3(=0xc).
  At `beq` at 0xd8c797c (target 0xd8c79fc), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0xd8c79f0 (target 0xd8c7990), taken when s4(?) != at(?) and falls through when s4(?) == at(?).
  At `beq` at 0xd8c79fc (target 0xd8c7b28), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xd8c7a18 (target 0xd8c7a34), taken when (t1(?) & 0x3) == 0 and falls through when (t1(?) & 0x3) != 0.
  At `bne` at 0xd8c7a2c (target 0xd8c7a20), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0xd8c7a38 (target 0xd8c7a6c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0xd8c7a64 (target 0xd8c7a44), taken when a1(?) != a7(?) and falls through when a1(?) == a7(?).
  At `beq` at 0xd8c7a70 (target 0xd8c7ae8), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0xd8c7a80 (target 0xd8c7a94), taken when t0(?) < s4(?) (signed) and falls through when t0(?) >= s4(?) (signed).
  At `beq` at 0xd8c7a88 (target 0xd8c7a94), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8c7a9c (target 0xd8c7ab0), taken when t0(?) < s4(?) (signed) and falls through when t0(?) >= s4(?) (signed).
  At `beq` at 0xd8c7aa4 (target 0xd8c7ab0), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0xd8c7ab8 (target 0xd8c7acc), taken when t0(?) < s4(?) (signed) and falls through when t0(?) >= s4(?) (signed).
  At `beq` at 0xd8c7ac0 (target 0xd8c7acc), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0xd8c7ad4 (target 0xd8c7ae8), taken when t0(?) < s4(?) (signed) and falls through when t0(?) >= s4(?) (signed).
  At `beq` at 0xd8c7adc (target 0xd8c7ae8), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c7aec (target 0xd8c7b20), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bltz` at 0xd8c7af8 (target 0xd8c7b1c), taken when at(?) < 0 (signed) and falls through when at(?) >= 0 (signed).
  At `bne` at 0xd8c7b04 (target 0xd8c7af4), taken when a1(?) != a2(?) and falls through when a1(?) == a2(?).
  At `beq` at 0xd8c7b0c (target 0xd8c7b20), the branch is always taken.
  At `beq` at 0xd8c7b14 (target 0xd8c7870), the branch is always taken.
  At `beq` at 0xd8c7b20 (target 0xd8c7438), the branch is always taken.
  At `beq` at 0xd8c7b30 (target 0xd8c7a6c), the branch is always taken.
  At `bne` at 0xd8c7b38 (target 0xd8c797c), taken when t0(?) != s3(=0xc) and falls through when t0(?) == s3(=0xc).
  At `bne` at 0xd8c7b40 (target 0xd8c797c), taken when a1(?) != s3(=0xc) and falls through when a1(?) == s3(=0xc).
  At `bne` at 0xd8c7b48 (target 0xd8c797c), taken when t1(?) != s3(=0xc) and falls through when t1(?) == s3(=0xc).
  At `bne` at 0xd8c7b50 (target 0xd8c797c), taken when t2(?) != v1(=0x10) and falls through when t2(?) == v1(=0x10).
  At `bne` at 0xd8c7b58 (target 0xd8c797c), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xd8c7b78 (target 0xd8c797c), the branch is always taken.
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd8c6b74).
  Returns v0 = 0x0 (`jr` at 0xd8c6cb4).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd8c6d04).
  Returns v0 = 0x0, f0 = ret(malloc) (`jr` at 0xd8c6d70).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd8c6e30).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd8c6e5c).
  Returns v0 = ret(malloc), f0 = ret(malloc) (`jr` at 0xd8c6e8c).
  Returns v0 = 0x0 (`jr` at 0xd8c7008).
  Returns v0 = 0x0, f0 = ret(malloc) (`jr` at 0xd8c7284).
  Returns v0 = ? (`jr` at 0xd8c73e8).
  Returns v0 = ? (`jr` at 0xd8c76c0).
  Returns v0 = 0x0, f0 = ret(free) (`jr` at 0xd8c773c).

- `glXGetVisualFromFBConfig` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c7d60 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c7d60-0xd8c7db8 (88 bytes).
  Loads 4 bytes at a1 +0x20 (`lw` at 0xd8c7d64).
  Loads 4 bytes at abs 0xd8e1d2c (`lw` at 0xd8c7d84).
  Loads 4 bytes at a1 +0x24 (`lw` at 0xd8c7d98).
  Calls `__glXOverrideVisualGetVisualInfo` via got with a0=a0 at entry (arg0), a1=0x3, a2=sp-80, a3=sp-40, a6=[a1+32], a7=a1 at entry (arg1) (`jalr` at 0xd8c7da0).
  At `beq` at 0xd8c7d7c (target 0xd8c7dac), taken when a6(=[a1+32]) == 0 and falls through when a6(=[a1+32]) != 0.
  Returns v0 = ? (`jr` at 0xd8c7db0).

- `glXChooseFBConfig` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c84ac (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c84ac-0xd8c9e18 (6508 bytes).
  Loads 4 bytes at a2 (`lw` at 0xd8c8570).
  Loads 8 bytes at abs 0xd8e2468 (`ldc1` at 0xd8c85bc).
  Loads 8 bytes at abs 0xd8e2460 (`ldc1` at 0xd8c85c0).
  3 8-byte ldc1 loads at abs 0xd8e2470, including `ldc1` at 0xd8c8634, `ldc1` at 0xd8c914c, `ldc1` at 0xd8c9b0c.
  108 4-byte lw loads at ?, including `lw` at 0xd8c8654, `lw` at 0xd8c8674, `lw` at 0xd8c8698.
  Loads 4 bytes at abs 0xd8e1d44 (`lw` at 0xd8c86d4).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd8c8700).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd8c8710).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd8c871c).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd8c8724).
  Loads 4 bytes at [([ret(__glXInitialize)+32] + (a1 << 0x5))+12] +0x48 (`lw` at 0xd8c8758).
  11 4-byte sw stores at a3, including `sw` at 0xd8c8784, `sw` at 0xd8c8920, `sw` at 0xd8c89f0.
  2 4-byte lw loads at abs 0xd8e1ac8, including `lw` at 0xd8c89c8, `lw` at 0xd8c901c.
  Stores 4 bytes from s0 at ret(malloc) (`sw` at 0xd8c8ad8).
  5 1-byte lbu loads at ?, including `lbu` at 0xd8c8e98, `lbu` at 0xd8c8eec, `lbu` at 0xd8c9414.
  3 4-byte lw loads at abs 0xd8e1968, including `lw` at 0xd8c90d4, `lw` at 0xd8c913c, `lw` at 0xd8c918c.
  Loads 4 bytes at abs 0xd8e1af4 (`lw` at 0xd8c90f0).
  33 4-byte sw stores at ?, including `sw` at 0xd8c91c0, `sw` at 0xd8c91e4, `sw` at 0xd8c91ec.
  Loads 8 bytes at ? (`ld` at 0xd8c9248).
  Stores 8 bytes from a5 at ? (`sd` at 0xd8c9254).
  Loads 4 bytes at abs 0xd8e1ac0 (`lw` at 0xd8c9640).
  8 8-byte ldc1 loads at ?, including `ldc1` at 0xd8c9a14, `ldc1` at 0xd8c9c74, `ldc1` at 0xd8c9ca0.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8c86e4).
  Calls `malloc` via got with a0=0x4, a1=ret(__glXInitialize), a2=unknown, a3=unknown, a4=(a1 << 0x5) (`jalr` at 0xd8c89cc).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=ret(__glXInitialize), a2=unknown, a3=unknown, a4=(a1 << 0x5) (`jalr` at 0xd8c9024).
  Calls `(unknown callee) [0xd8c3ef0]` via direct with a0=unknown, a1=a1 at entry (arg1), a2=sp-600, a3=unknown (`bgezall` at 0xd8c90e4).
  Calls `strncmp` via got with a0=sp-600, a1=0xd8e2428, a2=0x7, a3=unknown (`jalr` at 0xd8c90fc).
  Calls `(unknown callee) [0xd8c7ef4]` via direct with a0=sp-584, a1=unknown, a2=0x0, a3=unknown (`bgezall` at 0xd8c92a4).
  Calls `free` via got with a0=ret(malloc), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xd8c9644).
  Calls `(unknown callee) [0xd8c7ef4]` via direct with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xd8c9b04).
  At `beq` at 0xd8c8610 (target 0xd8c86b4), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0xd8c8618 (target 0xd8c86b4), taken when t1(=[a2]) == 0 and falls through when t1(=[a2]) != 0.
  At `beq` at 0xd8c8630 (target 0xd8c8678), the branch is always taken.
  At `bne` at 0xd8c8644 (target 0xd8c87e0), taken when v0(?) < 0xd (signed) and falls through when v0(?) >= 0xd (signed).
  At `beq` at 0xd8c864c (target 0xd8c8818), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xd8c866c (target 0xd8c86b8), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0xd8c867c (target 0xd8c8638), taken when a7(?) < 0x27 (signed) and falls through when a7(?) >= 0x27 (signed).
  At `beq` at 0xd8c8690 (target 0xd8c87a8), taken when v0(?) >= 0x28 (signed) and falls through when v0(?) < 0x28 (signed).
  At `bne` at 0xd8c86ac (target 0xd8c8674), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `beq` at 0xd8c86c0 (target 0xd8c88b0), taken when a6(?) == at(=0x8000) and falls through when a6(?) != at(=0x8000).
  At `beq` at 0xd8c86c8 (target 0xd8c88b0), taken when a6(?) == s8(=-0x1) and falls through when a6(?) != s8(=-0x1).
  At `beq` at 0xd8c86f0 (target 0xd8c8a3c), taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  At `bltz` at 0xd8c86f8 (target 0xd8c890c), taken when s3(=a1) < 0 (signed) and falls through when s3(=a1) >= 0 (signed).
  At `beq` at 0xd8c8708 (target 0xd8c890c), taken when s3(=a1) >= at(=[a0+136]) (signed) and falls through when s3(=a1) < at(=[a0+136]) (signed).
  At `beq` at 0xd8c8720 (target 0xd8c8a74), taken when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) == 0 and falls through when s1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12]) != 0.
  At `beq` at 0xd8c8728 (target 0xd8c8a74), taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) == 0 and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) != 0.
  At `beq` at 0xd8c8730 (target 0xd8c901c), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `blez` at 0xd8c8738 (target 0xd8c8770), taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) <= 0 (signed) and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+16]) > 0 (signed).
  At `beq` at 0xd8c875c (target 0xd8c89c8), taken when at(?) == s2(?) and falls through when at(?) != s2(?).
  At `bnel` at 0xd8c8768 (target 0xd8c875c), taken when v1(?) != s0(?) and falls through when v1(?) == s0(?); its branch-likely delay slot `lw at,72(s0)` at 0xd8c876c runs only when taken and is annulled on fall-through.
  At `bne` at 0xd8c87a8 (target 0xd8c884c), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bne` at 0xd8c87b0 (target 0xd8c88d8), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xd8c87d8 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c87e8 (target 0xd8c8880), taken when v0(?) < 0x8 (signed) and falls through when v0(?) >= 0x8 (signed).
  At `beq` at 0xd8c87f0 (target 0xd8c8944), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xd8c8810 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c881c (target 0xd8c896c), taken when v0(?) < 0x22 (signed) and falls through when v0(?) >= 0x22 (signed).
  At `beq` at 0xd8c8824 (target 0xd8c8ae8), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd8c8844 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c884c (target 0xd8c8998), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xd8c885c (target 0xd8c8b20), taken when a1(=0x8013) < v0(?) (signed) and falls through when a1(=0x8013) >= v0(?) (signed).
  At `beq` at 0xd8c8878 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8880 (target 0xd8c8a14), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd8c8888 (target 0xd8c8c44), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c8898 (target 0xd8c9070), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xd8c88a8 (target 0xd8c866c), the branch is always taken.
  At `beq` at 0xd8c88d0 (target 0xd8c86d0), the branch is always taken.
  At `bne` at 0xd8c88d8 (target 0xd8c8b48), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xd8c88e0 (target 0xd8c8c70), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd8c8904 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8944 (target 0xd8c8b9c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd8c894c (target 0xd8c8ce8), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c8964 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c896c (target 0xd8c8bcc), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xd8c8978 (target 0xd8c8d0c), taken when v0(?) >= 0x11 (signed) and falls through when v0(?) < 0x11 (signed).
  At `beq` at 0xd8c8990 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c899c (target 0xd8c8bf8), taken when v0(?) < a4(=0x8010) (signed) and falls through when v0(?) >= a4(=0x8010) (signed).
  At `bne` at 0xd8c89b0 (target 0xd8c8d80), taken when a5(=0x8010) < v0(?) (signed) and falls through when a5(=0x8010) >= v0(?) (signed).
  At `beq` at 0xd8c89c0 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c89d4 (target 0xd8c8aac), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `bne` at 0xd8c8a18 (target 0xd8c8c24), taken when v0(?) < 0x3 (signed) and falls through when v0(?) >= 0x3 (signed).
  At `beq` at 0xd8c8a24 (target 0xd8c8cb0), taken when v0(?) >= 0x4 (signed) and falls through when v0(?) < 0x4 (signed).
  At `beq` at 0xd8c8a34 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8aec (target 0xd8c8d48), taken when v0(?) < 0x25 (signed) and falls through when v0(?) >= 0x25 (signed).
  At `beq` at 0xd8c8af8 (target 0xd8c8eb4), taken when v0(?) >= 0x26 (signed) and falls through when v0(?) < 0x26 (signed).
  At `beq` at 0xd8c8b18 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8b20 (target 0xd8c8db8), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xd8c8b30 (target 0xd8c8ee4), taken when a4(=0x8018) < v0(?) (signed) and falls through when a4(=0x8018) >= v0(?) (signed).
  At `beq` at 0xd8c8b40 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8b60 (target 0xd8c8de4), taken when v0(?) < at(=0x802c) (signed) and falls through when v0(?) >= at(=0x802c) (signed).
  At `bne` at 0xd8c8b70 (target 0xd8c8f08), taken when v1(=0x802c) < v0(?) (signed) and falls through when v1(=0x802c) >= v0(?) (signed).
  At `beq` at 0xd8c8b94 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8ba0 (target 0xd8c8e18), taken when v0(?) < 0xa (signed) and falls through when v0(?) >= 0xa (signed).
  At `beq` at 0xd8c8ba8 (target 0xd8c8cb0), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c8bc4 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8bd0 (target 0xd8c8e40), taken when v0(?) < 0xf (signed) and falls through when v0(?) >= 0xf (signed).
  At `beq` at 0xd8c8bd8 (target 0xd8c8cb0), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xd8c8bf0 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8c00 (target 0xd8c8e64), taken when v0(?) < a4(=0x800b) (signed) and falls through when v0(?) >= a4(=0x800b) (signed).
  At `bne` at 0xd8c8c0c (target 0xd8c8cb0), taken when a5(=0x800b) < v0(?) (signed) and falls through when a5(=0x800b) >= v0(?) (signed).
  At `beq` at 0xd8c8c1c (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8c24 (target 0xd8c8cb0), taken when v0(?) != v1(=0x2) and falls through when v0(?) == v1(=0x2).
  At `beq` at 0xd8c8c3c (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8c48 (target 0xd8c8e88), taken when v0(?) < 0x7 (signed) and falls through when v0(?) >= 0x7 (signed).
  At `beq` at 0xd8c8c50 (target 0xd8c8cb0), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xd8c8c68 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8c7c (target 0xd8c8f38), taken when v0(?) < a4(=0x186a0) (signed) and falls through when v0(?) >= a4(=0x186a0) (signed).
  At `bne` at 0xd8c8c88 (target 0xd8c9078), taken when a5(=0x186a0) < v0(?) (signed) and falls through when a5(=0x186a0) >= v0(?) (signed).
  At `beq` at 0xd8c8ca8 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8ce8 (target 0xd8c8cb0), taken when v0(?) != t9(=0xc) and falls through when v0(?) == t9(=0xc).
  At `beq` at 0xd8c8d04 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8d10 (target 0xd8c8f7c), taken when v0(?) < 0x20 (signed) and falls through when v0(?) >= 0x20 (signed).
  At `beq` at 0xd8c8d1c (target 0xd8c8cb0), taken when v0(?) >= 0x21 (signed) and falls through when v0(?) < 0x21 (signed).
  At `beq` at 0xd8c8d40 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8d4c (target 0xd8c8fa4), taken when v0(?) < 0x24 (signed) and falls through when v0(?) >= 0x24 (signed).
  At `beq` at 0xd8c8d58 (target 0xd8c8cb0), taken when v0(?) >= 0x25 (signed) and falls through when v0(?) < 0x25 (signed).
  At `beq` at 0xd8c8d78 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8d84 (target 0xd8c8fbc), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bne` at 0xd8c8d94 (target 0xd8c8cb0), taken when a5(=0x8012) < v0(?) (signed) and falls through when a5(=0x8012) >= v0(?) (signed).
  At `beq` at 0xd8c8db0 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8dbc (target 0xd8c8fd4), taken when v0(?) < a4(=0x8017) (signed) and falls through when v0(?) >= a4(=0x8017) (signed).
  At `bne` at 0xd8c8dcc (target 0xd8c8cb0), taken when a5(=0x8017) < v0(?) (signed) and falls through when a5(=0x8017) >= v0(?) (signed).
  At `beq` at 0xd8c8ddc (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8de4 (target 0xd8c8fec), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xd8c8df0 (target 0xd8c8cb0), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0xd8c8e10 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8e1c (target 0xd8c8cb0), taken when v0(?) != v1(=0x9) and falls through when v0(?) == v1(=0x9).
  At `beq` at 0xd8c8e38 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8e44 (target 0xd8c8cb0), taken when v0(?) != v1(=0xe) and falls through when v0(?) == v1(=0xe).
  At `beq` at 0xd8c8e5c (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8e64 (target 0xd8c8cb0), taken when v0(?) != v1(=0x28) and falls through when v0(?) == v1(=0x28).
  At `beq` at 0xd8c8e80 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8e88 (target 0xd8c8cb0), taken when v0(?) != at(=0x6) and falls through when v0(?) == at(=0x6).
  At `beq` at 0xd8c8eac (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8eb8 (target 0xd8c8cb0), taken when v0(?) != a5(=0x26) and falls through when v0(?) == a5(=0x26).
  At `beq` at 0xd8c8edc (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8ee4 (target 0xd8c8cb0), taken when v0(?) != a5(=0x8028) and falls through when v0(?) == a5(=0x8028).
  At `beq` at 0xd8c8f00 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8f08 (target 0xd8c8cb0), taken when v0(?) != a5(=0x802d) and falls through when v0(?) == a5(=0x802d).
  At `beq` at 0xd8c8f30 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8f40 (target 0xd8c90a0), taken when v0(?) < a4(=0x8030) (signed) and falls through when v0(?) >= a4(=0x8030) (signed).
  At `bne` at 0xd8c8f4c (target 0xd8c8cb0), taken when a5(=0x8030) < v0(?) (signed) and falls through when a5(=0x8030) >= v0(?) (signed).
  At `beq` at 0xd8c8f74 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8f80 (target 0xd8c8cb0), taken when v0(?) != a4(=0x11) and falls through when v0(?) == a4(=0x11).
  At `beq` at 0xd8c8f9c (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8fa4 (target 0xd8c8cb0), taken when v0(?) != a4(=0x23) and falls through when v0(?) == a4(=0x23).
  At `beq` at 0xd8c8fb4 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8fbc (target 0xd8c8cb0), taken when v0(?) != a5(=0x8011) and falls through when v0(?) == a5(=0x8011).
  At `beq` at 0xd8c8fcc (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8fd4 (target 0xd8c8cb0), taken when v0(?) != v1(=0x8016) and falls through when v0(?) == v1(=0x8016).
  At `beq` at 0xd8c8fe4 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c8fec (target 0xd8c8cb0), taken when v0(?) != a5(=0x802a) and falls through when v0(?) == a5(=0x802a).
  At `beq` at 0xd8c9014 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c9030 (target 0xd8c90d4), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beq` at 0xd8c9070 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c907c (target 0xd8c8cb0), taken when v0(?) != a4(=0x186a1) and falls through when v0(?) == a4(=0x186a1).
  At `beq` at 0xd8c9098 (target 0xd8c866c), the branch is always taken.
  At `bne` at 0xd8c90a4 (target 0xd8c8cb0), taken when v0(?) != a4(=0x802f) and falls through when v0(?) == a4(=0x802f).
  At `beq` at 0xd8c90cc (target 0xd8c866c), the branch is always taken.
  At `beq` at 0xd8c90ec (target 0xd8c910c), taken when v0(=ret(0xd8c3ef0)) == 0 and falls through when v0(=ret(0xd8c3ef0)) != 0.
  At `beq` at 0xd8c9104 (target 0xd8c95cc), taken when v0(=ret(strncmp)) == 0 and falls through when v0(=ret(strncmp)) != 0.
  At `beq` at 0xd8c910c (target 0xd8c9168), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0xd8c9114 (target 0xd8c9168), taken when at(?) == 0 and falls through when at(?) != 0.
  At `blez` at 0xd8c911c (target 0xd8c9470), taken when v1(?) <= 0 (signed) and falls through when v1(?) > 0 (signed).
  At `beq` at 0xd8c9160 (target 0xd8c93b4), the branch is always taken.
  At `blez` at 0xd8c9170 (target 0xd8c935c), taken when a4(?) <= 0 (signed) and falls through when a4(?) > 0 (signed).
  At `beq` at 0xd8c91a8 (target 0xd8c9214), the branch is always taken.
  At `bne` at 0xd8c91bc (target 0xd8c91b0), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0xd8c91c4 (target 0xd8c9204), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0xd8c91fc (target 0xd8c91dc), taken when v0(?) != a0(?) and falls through when v0(?) == a0(?).
  At `beq` at 0xd8c9210 (target 0xd8c935c), taken when s0(?) == a4(?) and falls through when s0(?) != a4(?).
  At `bgtz` at 0xd8c9250 (target 0xd8c923c), taken when a0(?) > 0 (signed) and falls through when a0(?) <= 0 (signed).
  At `beq` at 0xd8c9260 (target 0xd8c9274), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd8c926c (target 0xd8c9300), taken when v1(?) == a4(=0xc) and falls through when v1(?) != a4(=0xc).
  At `beq` at 0xd8c9274 (target 0xd8c92c8), taken when s6(?) == 0 and falls through when s6(?) != 0.
  At `bne` at 0xd8c92bc (target 0xd8c928c), taken when s1(?) != s3(?) and falls through when s1(?) == s3(?).
  At `beq` at 0xd8c92d4 (target 0xd8c92f4), taken when s1(?) >= s7(?) (signed) and falls through when s1(?) < s7(?) (signed).
  At `beq` at 0xd8c92e4 (target 0xd8c91c4), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0xd8c92ec (target 0xd8c91b4), the branch is always taken.
  At `beq` at 0xd8c92f8 (target 0xd8c9204), the branch is always taken.
  At `bne` at 0xd8c9304 (target 0xd8c9274), taken when a4(?) != a5(=0xc) and falls through when a4(?) == a5(=0xc).
  At `bne` at 0xd8c9314 (target 0xd8c9274), taken when at(?) != v1(=0xc) and falls through when at(?) == v1(=0xc).
  At `bne` at 0xd8c9324 (target 0xd8c9274), taken when a4(?) != a5(=0xc) and falls through when a4(?) == a5(=0xc).
  At `bne` at 0xd8c9334 (target 0xd8c9274), taken when at(?) != v1(=0x10) and falls through when at(?) == v1(=0x10).
  At `bne` at 0xd8c933c (target 0xd8c9274), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0xd8c9354 (target 0xd8c9274), the branch is always taken.
  At `beq` at 0xd8c93a4 (target 0xd8c9400), the branch is always taken.
  At `beq` at 0xd8c93b0 (target 0xd8c9474), taken when a0(?) == s3(?) and falls through when a0(?) != s3(?).
  At `beq` at 0xd8c93e0 (target 0xd8c93a0), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xd8c93f0 (target 0xd8c93a0), taken when a4(?) >= v0(?) (signed) and falls through when a4(?) < v0(?) (signed).
  At `beq` at 0xd8c93f8 (target 0xd8c93b0), the branch is always taken.
  At `bne` at 0xd8c9404 (target 0xd8c93ac), taken when a5(?) != at(?) and falls through when a5(?) == at(?).
  At `beq` at 0xd8c940c (target 0xd8c9424), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c9418 (target 0xd8c9424), taken when a4(?) == a5(?) and falls through when a4(?) != a5(?).
  At `bne` at 0xd8c9424 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c942c (target 0xd8c9448), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd8c943c (target 0xd8c9448), taken when v1(?) == a4(?) and falls through when v1(?) != a4(?).
  At `bne` at 0xd8c9448 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c9450 (target 0xd8c959c), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xd8c9460 (target 0xd8c95a0), taken when a5(?) >= v0(?) (signed) and falls through when a5(?) < v0(?) (signed).
  At `beq` at 0xd8c9468 (target 0xd8c95a0), the branch is always taken.
  At `blez` at 0xd8c9478 (target 0xd8c9640), taken when at(?) <= 0 (signed) and falls through when at(?) > 0 (signed).
  At `beq` at 0xd8c9480 (target 0xd8c9558), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bltz` at 0xd8c948c (target 0xd8c94bc), taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  At `bltz` at 0xd8c94c0 (target 0xd8c94f0), taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  At `bltz` at 0xd8c94f4 (target 0xd8c9524), taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  At `bltz` at 0xd8c9528 (target 0xd8c9558), taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  At `bne` at 0xd8c95a0 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c95a8 (target 0xd8c9610), taken when at(?) == s8(=-0x1) and falls through when at(?) != s8(=-0x1).
  At `beq` at 0xd8c95bc (target 0xd8c9614), taken when v1(?) >= a4(?) (signed) and falls through when v1(?) < a4(?) (signed).
  At `beq` at 0xd8c95c4 (target 0xd8c9614), the branch is always taken.
  At `bne` at 0xd8c95d4 (target 0xd8c910c), taken when a5(?) != at(=0xc) and falls through when a5(?) == at(=0xc).
  At `bne` at 0xd8c95e4 (target 0xd8c910c), taken when a4(?) != a5(=0xc) and falls through when a4(?) == a5(=0xc).
  At `bne` at 0xd8c95f0 (target 0xd8c910c), taken when at(?) != v1(=0xc) and falls through when at(?) == v1(=0xc).
  At `beq` at 0xd8c9608 (target 0xd8c910c), the branch is always taken.
  At `bne` at 0xd8c9614 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c961c (target 0xd8c968c), taken when at(?) == s8(=-0x1) and falls through when at(?) != s8(=-0x1).
  At `beq` at 0xd8c9630 (target 0xd8c9690), taken when v1(?) >= a4(?) (signed) and falls through when v1(?) < a4(?) (signed).
  At `beq` at 0xd8c9638 (target 0xd8c9690), the branch is always taken.
  At `bne` at 0xd8c9690 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c9698 (target 0xd8c96bc), taken when at(?) == s8(=-0x1) and falls through when at(?) != s8(=-0x1).
  At `beq` at 0xd8c96ac (target 0xd8c96c0), taken when v1(?) >= a4(?) (signed) and falls through when v1(?) < a4(?) (signed).
  At `beq` at 0xd8c96b4 (target 0xd8c96c0), the branch is always taken.
  At `bne` at 0xd8c96c0 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c96c8 (target 0xd8c96e8), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xd8c96d8 (target 0xd8c96ec), taken when a5(?) >= v0(?) (signed) and falls through when a5(?) < v0(?) (signed).
  At `beq` at 0xd8c96e0 (target 0xd8c96ec), the branch is always taken.
  At `bne` at 0xd8c96ec (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c96f4 (target 0xd8c9718), taken when at(?) == s8(=-0x1) and falls through when at(?) != s8(=-0x1).
  At `beq` at 0xd8c9708 (target 0xd8c971c), taken when v1(?) >= a4(?) (signed) and falls through when v1(?) < a4(?) (signed).
  At `beq` at 0xd8c9710 (target 0xd8c971c), the branch is always taken.
  At `bne` at 0xd8c971c (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c9724 (target 0xd8c9744), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xd8c9734 (target 0xd8c9748), taken when a5(?) >= v0(?) (signed) and falls through when a5(?) < v0(?) (signed).
  At `beq` at 0xd8c973c (target 0xd8c9748), the branch is always taken.
  At `bne` at 0xd8c9748 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c9750 (target 0xd8c9770), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xd8c9760 (target 0xd8c9774), taken when at(?) >= v0(?) (signed) and falls through when at(?) < v0(?) (signed).
  At `beq` at 0xd8c9768 (target 0xd8c9774), the branch is always taken.
  At `bne` at 0xd8c9774 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c977c (target 0xd8c979c), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xd8c978c (target 0xd8c97a0), taken when v1(?) >= v0(?) (signed) and falls through when v1(?) < v0(?) (signed).
  At `beq` at 0xd8c9794 (target 0xd8c97a0), the branch is always taken.
  At `bne` at 0xd8c97a0 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c97a8 (target 0xd8c97c8), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xd8c97b8 (target 0xd8c97cc), taken when a4(?) >= v0(?) (signed) and falls through when a4(?) < v0(?) (signed).
  At `beq` at 0xd8c97c0 (target 0xd8c97cc), the branch is always taken.
  At `bne` at 0xd8c97cc (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c97d4 (target 0xd8c97f4), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xd8c97e4 (target 0xd8c97f8), taken when a5(?) >= v0(?) (signed) and falls through when a5(?) < v0(?) (signed).
  At `beq` at 0xd8c97ec (target 0xd8c97f8), the branch is always taken.
  At `bne` at 0xd8c97f8 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c9800 (target 0xd8c981c), taken when s6(=one of 0x0, 0x1) == 0 and falls through when s6(=one of 0x0, 0x1) != 0.
  At `beq` at 0xd8c9810 (target 0xd8c981c), taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  At `bne` at 0xd8c981c (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c9824 (target 0xd8c983c), taken when a6(?) == s8(=-0x1) and falls through when a6(?) != s8(=-0x1).
  At `beq` at 0xd8c9830 (target 0xd8c983c), taken when a4(?) == a6(?) and falls through when a4(?) != a6(?).
  At `bne` at 0xd8c983c (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c9844 (target 0xd8c9860), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xd8c9854 (target 0xd8c9860), taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  At `bne` at 0xd8c9860 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c9868 (target 0xd8c9884), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xd8c9878 (target 0xd8c9884), taken when a5(?) == at(?) and falls through when a5(?) != at(?).
  At `bne` at 0xd8c9884 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c988c (target 0xd8c98a8), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c989c (target 0xd8c98a8), taken when a4(?) == a5(?) and falls through when a4(?) != a5(?).
  At `bne` at 0xd8c98a8 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c98b0 (target 0xd8c98cc), taken when s7(=one of 0x0, 0x1) == 0 and falls through when s7(=one of 0x0, 0x1) != 0.
  At `beq` at 0xd8c98c0 (target 0xd8c98cc), taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  At `bne` at 0xd8c98cc (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c98d4 (target 0xd8c98f0), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xd8c98e4 (target 0xd8c98f0), taken when a5(?) == at(?) and falls through when a5(?) != at(?).
  At `bne` at 0xd8c98f0 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c98f8 (target 0xd8c9914), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c9908 (target 0xd8c9914), taken when a4(?) == a5(?) and falls through when a4(?) != a5(?).
  At `bne` at 0xd8c9914 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c991c (target 0xd8c9938), taken when t0(?) == s8(=-0x1) and falls through when t0(?) != s8(=-0x1).
  At `beq` at 0xd8c992c (target 0xd8c9938), taken when at(?) == t0(?) and falls through when at(?) != t0(?).
  At `bne` at 0xd8c9938 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c9940 (target 0xd8c9960), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xd8c9950 (target 0xd8c9964), taken when v1(?) == v0(?) and falls through when v1(?) != v0(?).
  At `beq` at 0xd8c9958 (target 0xd8c9964), the branch is always taken.
  At `bne` at 0xd8c9964 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c996c (target 0xd8c9980), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xd8c9978 (target 0xd8c99d4), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0xd8c9980 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c9988 (target 0xd8c99a8), taken when s8(=-0x1) == v0(?) and falls through when s8(=-0x1) != v0(?).
  At `beq` at 0xd8c9998 (target 0xd8c99ac), taken when at(?) >= v0(?) (unsigned) and falls through when at(?) < v0(?) (unsigned).
  At `beq` at 0xd8c99a0 (target 0xd8c99ac), the branch is always taken.
  At `bne` at 0xd8c99ac (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c99b4 (target 0xd8c99dc), taken when s8(=-0x1) == v0(?) and falls through when s8(=-0x1) != v0(?).
  At `beq` at 0xd8c99c4 (target 0xd8c99e0), taken when v1(?) >= v0(?) (unsigned) and falls through when v1(?) < v0(?) (unsigned).
  At `beq` at 0xd8c99cc (target 0xd8c99e0), the branch is always taken.
  At `beq` at 0xd8c99d4 (target 0xd8c9980), the branch is always taken.
  At `bne` at 0xd8c99e0 (target 0xd8c93ac), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c99e8 (target 0xd8c9c5c), taken when s8(=-0x1) == a6(?) and falls through when s8(=-0x1) != a6(?).
  At `beq` at 0xd8c9a00 (target 0xd8c9a30), taken when v0(?) >= 0x1 (unsigned) and falls through when v0(?) < 0x1 (unsigned).
  At `bc1t` at 0xd8c9a0c (target 0xd8c9a28), taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9a08) and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9a08)).
  At `bc1f` at 0xd8c9a1c (target 0xd8c9a28), taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  At `beq` at 0xd8c9a28 (target 0xd8c9c64), taken when a6(=one of 0x0, 0x1) == 0 and falls through when a6(=one of 0x0, 0x1) != 0.
  At `beq` at 0xd8c9a30 (target 0xd8c93ac), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xd8c9a38 (target 0xd8c93ac), taken when t2(=one of 0x0, 0x1) != 0 and falls through when t2(=one of 0x0, 0x1) == 0.
  At `bne` at 0xd8c9a40 (target 0xd8c93ac), taken when ra(=one of 0x0, 0x1) != 0 and falls through when ra(=one of 0x0, 0x1) == 0.
  At `bne` at 0xd8c9a48 (target 0xd8c93ac), taken when t1(=one of 0x0, 0x1) != 0 and falls through when t1(=one of 0x0, 0x1) == 0.
  At `bne` at 0xd8c9a50 (target 0xd8c93ac), taken when t9(=one of 0x0, 0x1) != 0 and falls through when t9(=one of 0x0, 0x1) == 0.
  At `bne` at 0xd8c9a58 (target 0xd8c93ac), taken when a7(=one of 0x0, 0x1) != 0 and falls through when a7(=one of 0x0, 0x1) == 0.
  At `bne` at 0xd8c9a60 (target 0xd8c93ac), taken when t8(=one of 0x0, 0x1) != 0 and falls through when t8(=one of 0x0, 0x1) == 0.
  At `bne` at 0xd8c9a68 (target 0xd8c93ac), taken when a3(=one of 0x0, 0x1) != 0 and falls through when a3(=one of 0x0, 0x1) == 0.
  At `bne` at 0xd8c9a70 (target 0xd8c93ac), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `beq` at 0xd8c9a9c (target 0xd8c9ab4), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c9aac (target 0xd8c9db0), taken when at(?) == v1(=0xc) and falls through when at(?) != v1(=0xc).
  At `beq` at 0xd8c9ab4 (target 0xd8c9b44), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0xd8c9b38 (target 0xd8c9acc), taken when a6(?) != a4(?) and falls through when a6(?) == a4(?).
  At `beq` at 0xd8c9b44 (target 0xd8c9da4), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xd8c9b60 (target 0xd8c9b7c), taken when (t1(?) & 0x3) == 0 and falls through when (t1(?) & 0x3) != 0.
  At `bne` at 0xd8c9b74 (target 0xd8c9b68), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0xd8c9b80 (target 0xd8c9bb4), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0xd8c9bac (target 0xd8c9b8c), taken when v0(?) != a7(?) and falls through when v0(?) == a7(?).
  At `beq` at 0xd8c9bb8 (target 0xd8c9c30), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bne` at 0xd8c9bc8 (target 0xd8c9bdc), taken when t0(?) < a6(?) (signed) and falls through when t0(?) >= a6(?) (signed).
  At `beq` at 0xd8c9bd0 (target 0xd8c9bdc), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8c9be4 (target 0xd8c9bf8), taken when t0(?) < a6(?) (signed) and falls through when t0(?) >= a6(?) (signed).
  At `beq` at 0xd8c9bec (target 0xd8c9bf8), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0xd8c9c00 (target 0xd8c9c14), taken when t0(?) < a6(?) (signed) and falls through when t0(?) >= a6(?) (signed).
  At `beq` at 0xd8c9c08 (target 0xd8c9c14), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bne` at 0xd8c9c1c (target 0xd8c9c30), taken when t0(?) < a6(?) (signed) and falls through when t0(?) >= a6(?) (signed).
  At `beq` at 0xd8c9c24 (target 0xd8c9c30), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8c9c34 (target 0xd8c9d9c), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bltz` at 0xd8c9c40 (target 0xd8c9d98), taken when at(?) < 0 (signed) and falls through when at(?) >= 0 (signed).
  At `bne` at 0xd8c9c4c (target 0xd8c9c3c), taken when v0(?) != v1(?) and falls through when v0(?) == v1(?).
  At `beq` at 0xd8c9c54 (target 0xd8c9d9c), the branch is always taken.
  At `beq` at 0xd8c9c5c (target 0xd8c9a30), the branch is always taken.
  At `bc1t` at 0xd8c9c6c (target 0xd8c9c88), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1f` at 0xd8c9c7c (target 0xd8c9c88), taken when FP condition code 3 is false and falls through when FP condition code 3 is true.
  At `bne` at 0xd8c9c88 (target 0xd8c9a30), taken when a6(=one of 0x0, 0x1) != 0 and falls through when a6(=one of 0x0, 0x1) == 0.
  At `bc1t` at 0xd8c9c98 (target 0xd8c9cb4), taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9c94) and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9c94)).
  At `bc1f` at 0xd8c9ca8 (target 0xd8c9cb4), taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  At `bne` at 0xd8c9cb4 (target 0xd8c9a30), taken when a6(=one of 0x0, 0x1) != 0 and falls through when a6(=one of 0x0, 0x1) == 0.
  At `bc1t` at 0xd8c9cc4 (target 0xd8c9ce0), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1f` at 0xd8c9cd4 (target 0xd8c9ce0), taken when FP condition code 3 is false and falls through when FP condition code 3 is true.
  At `bne` at 0xd8c9ce0 (target 0xd8c9a30), taken when a6(=one of 0x0, 0x1) != 0 and falls through when a6(=one of 0x0, 0x1) == 0.
  At `bc1t` at 0xd8c9cf0 (target 0xd8c9d0c), taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9cec) and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9cec)).
  At `bc1f` at 0xd8c9d00 (target 0xd8c9d0c), taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  At `bne` at 0xd8c9d0c (target 0xd8c9a30), taken when a6(=one of 0x0, 0x1) != 0 and falls through when a6(=one of 0x0, 0x1) == 0.
  At `bc1t` at 0xd8c9d1c (target 0xd8c9d38), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1f` at 0xd8c9d2c (target 0xd8c9d38), taken when FP condition code 3 is false and falls through when FP condition code 3 is true.
  At `bne` at 0xd8c9d38 (target 0xd8c9a30), taken when a6(=one of 0x0, 0x1) != 0 and falls through when a6(=one of 0x0, 0x1) == 0.
  At `bc1t` at 0xd8c9d48 (target 0xd8c9d64), taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9d44) and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xd8c9d44)).
  At `bc1f` at 0xd8c9d58 (target 0xd8c9d64), taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  At `bne` at 0xd8c9d64 (target 0xd8c9a30), taken when a6(=one of 0x0, 0x1) != 0 and falls through when a6(=one of 0x0, 0x1) == 0.
  At `bc1t` at 0xd8c9d74 (target 0xd8c9d90), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1f` at 0xd8c9d84 (target 0xd8c9d90), taken when FP condition code 3 is false and falls through when FP condition code 3 is true.
  At `beq` at 0xd8c9d90 (target 0xd8c9a30), the branch is always taken.
  At `beq` at 0xd8c9d9c (target 0xd8c93ac), the branch is always taken.
  At `beq` at 0xd8c9da8 (target 0xd8c9bb4), the branch is always taken.
  At `bne` at 0xd8c9db8 (target 0xd8c9ab4), taken when at(?) != v1(=0xc) and falls through when at(?) == v1(=0xc).
  At `bne` at 0xd8c9dc8 (target 0xd8c9ab4), taken when a4(?) != a5(=0xc) and falls through when a4(?) == a5(=0xc).
  At `bne` at 0xd8c9dd8 (target 0xd8c9ab4), taken when at(?) != v1(=0xc) and falls through when at(?) == v1(=0xc).
  At `bne` at 0xd8c9de8 (target 0xd8c9ab4), taken when a4(?) != a5(=0x10) and falls through when a4(?) == a5(=0x10).
  At `bne` at 0xd8c9df0 (target 0xd8c9ab4), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd8c9e10 (target 0xd8c9ab4), the branch is always taken.
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd8c87a0).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd8c893c).
  Returns v0 = 0x0, f0 = ret(malloc) (`jr` at 0xd8c8a0c).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd8c8a6c).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd8c8aa4).
  Returns v0 = ret(malloc), f0 = ret(malloc) (`jr` at 0xd8c8ae0).
  Returns v0 = 0x0 (`jr` at 0xd8c8ce0).
  Returns v0 = 0x0, f0 = ret(malloc) (`jr` at 0xd8c9068).
  Returns v0 = ret(malloc) (`jr` at 0xd8c9398).
  Returns v0 = ret(malloc) (`jr` at 0xd8c9594).
  Returns v0 = 0x0, f0 = ret(free) (`jr` at 0xd8c9684).

- `glXGetFBConfigs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c9e18 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8c9e18-0xd8c9fa8 (400 bytes).
  Loads 4 bytes at abs 0xd8e1d44 (`lw` at 0xd8c9e30).
  Loads 4 bytes at a0 +0x88 (`lw` at 0xd8c9e58).
  Loads 4 bytes at ret(__glXInitialize) +0x20 (`lw` at 0xd8c9e7c).
  Loads 4 bytes at abs 0xd8e1ac8 (`lw` at 0xd8c9e84).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x10 (`lw` at 0xd8c9e8c).
  Loads 4 bytes at ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0xc (`lw` at 0xd8c9e90).
  9 4-byte sw stores at ?, including `sw` at 0xd8c9ef4, `sw` at 0xd8c9f24, `sw` at 0xd8c9f2c.
  2 4-byte sw stores at a2, including `sw` at 0xd8c9f60, `sw` at 0xd8c9f8c.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8c9e40).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+32] + (a1 << 0x5))+16] << 0x2), a1=[([ret(__glXInitialize)+32] + (a1 << 0x5))+12], a2=(a1 << 0x5), a3=unknown (`jalr` at 0xd8c9e9c).
  At `beq` at 0xd8c9e48 (target 0xd8c9f70), taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  At `bltz` at 0xd8c9e50 (target 0xd8c9e68), taken when s0(=a1) < 0 (signed) and falls through when s0(=a1) >= 0 (signed).
  At `bne` at 0xd8c9e60 (target 0xd8c9e7c), taken when s0(=a1) < v1(=[a0+136]) (signed) and falls through when s0(=a1) >= v1(=[a0+136]) (signed).
  At `beq` at 0xd8c9eac (target 0xd8c9f88), taken when v0(=ret(malloc)) == 0 and falls through when v0(=ret(malloc)) != 0.
  At `blez` at 0xd8c9ec4 (target 0xd8c9f60), taken when a0(?) <= 0 (signed) and falls through when a0(?) > 0 (signed).
  At `beq` at 0xd8c9ee4 (target 0xd8c9f00), taken when (a0(?) & 0x7) == 0 and falls through when (a0(?) & 0x7) != 0.
  At `bne` at 0xd8c9ef8 (target 0xd8c9eec), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `beq` at 0xd8c9f0c (target 0xd8c9f60), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xd8c9f58 (target 0xd8c9f18), taken when a1(?) != a5(?) and falls through when a1(?) == a5(?).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd8c9e74).
  Returns v0 = ret(malloc), f0 = ret(malloc) (`jr` at 0xd8c9f68).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xd8c9f80).
  Returns v0 = 0x0, f0 = ret(malloc) (`jr` at 0xd8c9fa0).

- `glXCreateNewContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ca204 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ca204-0xd8ca258 (84 bytes).
  Loads 4 bytes at abs 0xd8e1968 (`lw` at 0xd8ca224).
  Calls `(unknown callee) [0xd8c18f8]` via register-constant with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=0x0, a7=0x0 (`jalr` at 0xd8ca240).
  Returns v0 = ret(0xd8c18f8), f0 = ret(0xd8c18f8) (`jr` at 0xd8ca250).

- `glXQueryContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ca610 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ca610-0xd8ca6dc (204 bytes).
  Loads 4 bytes at a1 +0xc4 (`lw` at 0xd8ca614).
  Loads 4 bytes at a1 +0x2c (`lw` at 0xd8ca664).
  Loads 4 bytes at abs 0xd8e196c (`lw` at 0xd8ca670).
  Loads 4 bytes at a1 +0x20 (`lw` at 0xd8ca6a8).
  3 4-byte sw stores at a3, including `sw` at 0xd8ca6ac, `sw` at 0xd8ca6cc, `sw` at 0xd8ca6d8.
  Loads 4 bytes at a1 +0x30 (`lw` at 0xd8ca6c4).
  Loads 4 bytes at a1 +0x34 (`lw` at 0xd8ca6d0).
  Calls `(unknown callee) [0xd8ca258]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xd8ca680).
  At `beq` at 0xd8ca62c (target 0xd8ca664), taken when at(=[a1+196]) == 0 and falls through when at(=[a1+196]) != 0.
  At `beq` at 0xd8ca644 (target 0xd8ca6c4), taken when s0(=a2) == v1(=0x8013) and falls through when s0(=a2) != v1(=0x8013).
  At `beq` at 0xd8ca64c (target 0xd8ca6d0), taken when s0(=a2) == a4(=0x8011) and falls through when s0(=a2) != a4(=0x8011).
  At `beq` at 0xd8ca654 (target 0xd8ca6a8), taken when s0(=a2) == a5(=0x800c) and falls through when s0(=a2) != a5(=0x800c).
  At `bne` at 0xd8ca668 (target 0xd8ca638), taken when at(=[a1+44]) != 0 and falls through when at(=[a1+44]) == 0.
  At `beq` at 0xd8ca690 (target 0xd8ca634), taken when v0(=ret(0xd8ca258)) == 0 and falls through when v0(=ret(0xd8ca258)) != 0.
  At `beq` at 0xd8ca6c8 (target 0xd8ca6b0), the branch is always taken.
  At `beq` at 0xd8ca6d4 (target 0xd8ca6b0), the branch is always taken.
  Returns v0 = 0x2 (`jr` at 0xd8ca65c).
  Returns v0 = ret(0xd8ca258), f0 = ret(0xd8ca258) (`jr` at 0xd8ca6a0).
  Returns v0 = 0x0 (`jr` at 0xd8ca6bc).

- `__glXGetReadDrawableSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cab24 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cab24-0xd8cac08 (228 bytes).
  Loads 4 bytes at a0 +0x4c (`lw` at 0xd8cab2c).
  Loads 4 bytes at [a0+76] +0x11c (`lw` at 0xd8cab30).
  Loads 4 bytes at [a0+76] +0x120 (`lw` at 0xd8cab4c).
  2 4-byte lw loads at abs 0xd8e1d6c, including `lw` at 0xd8cab64, `lw` at 0xd8cab7c.
  4 4-byte lw loads at [a0+76] +0xdc, including `lw` at 0xd8cab6c, `lw` at 0xd8cab84, `lw` at 0xd8caba4.
  4 4-byte lw loads at [a0+76] +0xd8, including `lw` at 0xd8cab78, `lw` at 0xd8cab90, `lw` at 0xd8cabb8.
  2 4-byte lw loads at abs 0xd8e1d70, including `lw` at 0xd8caba8, `lw` at 0xd8cabc4.
  Stores 4 bytes from v0 at a1 (`sw` at 0xd8cabf0).
  Stores 4 bytes from a1 at a2 (`sw` at 0xd8cac04).
  Calls `glXQueryGLXPbufferSGIX` via got with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801d, a3=sp-80 (`jalr` at 0xd8cab74).
  Calls `glXQueryGLXPbufferSGIX` via got with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801e, a3=sp-76 (`jalr` at 0xd8cab8c).
  Calls `glXQueryDrawable` via got with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801d, a3=sp-80 (`jalr` at 0xd8cabbc).
  Calls `glXQueryDrawable` via got with a0=[[a0+76]+216], a1=[[a0+76]+220], a2=0x801e, a3=sp-76 (`jalr` at 0xd8cabd4).
  At `bne` at 0xd8cab44 (target 0xd8caba0), taken when at(=[[a0+76]+284]) != v0(=0x1) and falls through when at(=[[a0+76]+284]) == v0(=0x1).
  At `beq` at 0xd8cab5c (target 0xd8caba0), taken when a0(=[[a0+76]+288]) >= 0x3 (signed) and falls through when a0(=[[a0+76]+288]) < 0x3 (signed).
  At `beq` at 0xd8cab98 (target 0xd8cabe4), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd8cac00).

- `__glx_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cdd50 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cdd50-0xd8cddbc (108 bytes).
  Loads 4 bytes at abs 0x1014 (`lw` at 0xd8cdd50).
  Loads 4 bytes at [0x1014] +0x114 (`lw` at 0xd8cdd54).
  Loads 4 bytes at [[0x1014]+276] +0x4 (`lw` at 0xd8cdd58).
  Stores 4 bytes from a0 at [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8cdd5c).
  Stores 2 bytes from a2 at [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8cdd64).
  Stores 2 bytes from at at [[[0x1014]+276]+4] (`sh` at 0xd8cdd6c).
  Loads 4 bytes at [[0x1014]+276] +0x8 (`lw` at 0xd8cdd70).
  Stores 4 bytes from a1 at [[0x1014]+276] +0x4 (`sw` at 0xd8cdd94).
  Loads 4 bytes at abs 0xd8e1d4c (`lw` at 0xd8cdda4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=0x81d, a3=[[0x1014]+276] (`jalr` at 0xd8cddac).
  At `bne` at 0xd8cdd90 (target 0xd8cdda4), taken when at(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when at(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned).
  At `beq` at 0xd8cddb4 (target 0xd8cdd98), the branch is always taken.
  Returns v0 = ? (`jr` at 0xd8cdd9c).

- `__glReadPixelSpans` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaeb170 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaeb170-0xdaeb340 (464 bytes).
  Loads 4 bytes at a0 +0x12ec (`lw` at 0xdaeb198).
  Loads 4 bytes at a1 +0xa8 (`lw` at 0xdaeb1a4).
  Loads 4 bytes at a1 +0x160 (`lw` at 0xdaeb1a8).
  Loads 4 bytes at a1 +0xac (`lw` at 0xdaeb1b0).
  Loads 4 bytes at a1 +0x164 (`lw` at 0xdaeb1cc).
  Loads 4 bytes at a0 +0x7710 (`lw` at 0xdaeb1dc).
  2 4-byte lw loads at ?, including `lw` at 0xdaeb248, `lw` at 0xdaeb2d0.
  2 4-byte lw loads at a1 +0x5c, including `lw` at 0xdaeb25c, `lw` at 0xdaeb264.
  Loads 4 bytes at a1 +0xc0 (`lwc1` at 0xdaeb268).
  Loads 4 bytes at a1 +0x60 (`lw` at 0xdaeb26c).
  Stores 4 bytes from v1 at a1 +0x5c (`sw` at 0xdaeb278).
  Stores 4 bytes from f0 at a1 +0xc0 (`swc1` at 0xdaeb280).
  Stores 4 bytes from v0 at a0 +0x7710 (`sw` at 0xdaeb288).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=[a1+92] (`jalr` at 0xdaeb258).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown (`jalr` at 0xdaeb29c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown (`jalr` at 0xdaeb2e4).
  At `blez` at 0xdaeb1f4 (target 0xdaeb31c), taken when at(=[a1+172]) <= 0 (signed) and falls through when at(=[a1+172]) > 0 (signed).
  At `beq` at 0xdaeb230 (target 0xdaeb28c), the branch is always taken.
  At `beq` at 0xdaeb284 (target 0xdaeb304), taken when at(?) == s7(?) and falls through when at(?) != s7(?).
  At `beq` at 0xdaeb2b8 (target 0xdaeb240), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xdaeb2f4 (target 0xdaeb2d0), taken when s3(?) != s5(?) and falls through when s3(?) == s5(?).
  At `beq` at 0xdaeb2fc (target 0xdaeb240), the branch is always taken.
  Returns v0 = s8 (`jr` at 0xdaeb338).
  The instructions from 0xdaeb238 to 0xdaeb23c are not reached by any path from the entry, and their branches are not listed.

- `__glEarlyInitContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb10ac0 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb10ac0-0xdb10c44 (388 bytes).
  Loads 4 bytes at a0 +0xdfc (`lw` at 0xdb10acc).
  5 4-byte lw loads at a0 +0x4, including `lw` at 0xdb10ae0, `lw` at 0xdb10b80, `lw` at 0xdb10b9c.
  Loads 4 bytes at abs 0xdbde49c (`lwc1` at 0xdb10ae4).
  Loads 4 bytes at abs 0xdbde444 (`lwc1` at 0xdb10ae8).
  3 4-byte lw loads at abs 0xdbda054, including `lw` at 0xdb10aec, `lw` at 0xdb10b38, `lw` at 0xdb10b44.
  Loads 4 bytes at abs 0xdbdbca0 (`lw` at 0xdb10af4).
  Loads 4 bytes at abs 0xdbdb6c4 (`lw` at 0xdb10af8).
  Loads 4 bytes at abs 0xdbdb4b0 (`lw` at 0xdb10afc).
  Stores 4 bytes from a2 at a0 +0x78 (`sw` at 0xdb10b00).
  Stores 4 bytes from a3 at a0 +0x58 (`sw` at 0xdb10b04).
  Stores 4 bytes from a4 at a0 +0x2d68 (`sw` at 0xdb10b08).
  Stores 4 bytes from a4 at a0 +0x2e38 (`sw` at 0xdb10b0c).
  Stores 4 bytes from a4 at a0 +0x2dac (`sw` at 0xdb10b14).
  Stores 4 bytes from v1 at a0 +0x8c (`sw` at 0xdb10b1c).
  Stores 4 bytes from f2 at a0 +0xe68 (`swc1` at 0xdb10b20).
  Stores 4 bytes from f2 at a0 +0xe60 (`swc1` at 0xdb10b24).
  Stores 4 bytes from f2 at a0 +0xe64 (`swc1` at 0xdb10b28).
  Stores 4 bytes from f2 at a0 +0xe5c (`swc1` at 0xdb10b2c).
  Stores 4 bytes from f3 at a0 +0xdcc (`swc1` at 0xdb10b30).
  Stores 4 bytes from f2 at a0 +0xdd0 (`swc1` at 0xdb10b34).
  Loads 4 bytes at a0 +0xe48 (`lw` at 0xdb10b3c).
  Loads 4 bytes at a0 +0xe44 (`lw` at 0xdb10b40).
  Stores 4 bytes from a1 at a0 +0x94 (`sw` at 0xdb10b50).
  Stores 4 bytes from a0 at a0 +0x90 (`sw` at 0xdb10b5c).
  Stores 4 bytes from f1 at a0 +0xe50 (`swc1` at 0xdb10b70).
  Stores 4 bytes from f0 at a0 +0xe4c (`swc1` at 0xdb10b7c).
  Stores 4 bytes from zero at a0 +0x6d78 (`sw` at 0xdb10b8c).
  Stores 4 bytes from v0 at a0 +0x630 (`sw` at 0xdb10b98).
  Loads 4 bytes at a0 +0xeb8 (`lw` at 0xdb10ba0).
  Stores 4 bytes from v0 at a0 +0x6d18 (`sw` at 0xdb10ba8).
  Loads 4 bytes at a0 +0xebc (`lw` at 0xdb10bc0).
  Stores 4 bytes from v0 at a0 +0x30d8 (`sw` at 0xdb10bcc).
  Loads 4 bytes at a0 +0xec0 (`lw` at 0xdb10bd8).
  Stores 4 bytes from v0 at a0 +0x30e0 (`sw` at 0xdb10be4).
  Loads 4 bytes at abs 0xdbdbea0 (`lw` at 0xdb10be8).
  Stores 4 bytes from v0 at a0 +0x1314 (`sw` at 0xdb10bf4).
  Loads 4 bytes at abs 0xdbdc26c (`lw` at 0xdb10bf8).
  Loads 4 bytes at abs 0xdbdbaf0 (`lw` at 0xdb10c04).
  Loads 4 bytes at abs 0xdbdbaf4 (`lw` at 0xdb10c08).
  Loads 4 bytes at abs 0xdbdbaf8 (`lw` at 0xdb10c0c).
  Loads 4 bytes at abs 0xdbdbafc (`lw` at 0xdb10c10).
  Stores 4 bytes from t1 at a0 +0x30b8 (`sw` at 0xdb10c14).
  Loads 4 bytes at abs 0xdbdad6c (`lw` at 0xdb10c18).
  Stores 4 bytes from t0 at a0 +0x30b4 (`sw` at 0xdb10c1c).
  Stores 4 bytes from a7 at a0 +0x30b0 (`sw` at 0xdb10c20).
  Stores 4 bytes from a6 at a0 +0x30ac (`sw` at 0xdb10c2c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+3580], a2=0x74, a3=0xdb11b80, a4=0xdb47880, a5=0xd1548 (`jalr` at 0xdb10b78).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+3580], a2=0xe0, a3=unknown (`jalr` at 0xdb10b94).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+3768], a2=0x4, a3=unknown (`jalr` at 0xdb10bb0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+3772], a2=0x4, a3=unknown (`jalr` at 0xdb10bc8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+3776], a2=0x4, a3=unknown (`jalr` at 0xdb10be0).
  Calls `__glEarlyInitTextureState [0xdb59860]` via register-constant with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdb10bf0).
  Calls `__glEarlyInitTransformState [0xdb7adc0]` via register-constant with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdb10bfc).
  Calls `__glInitDlistState [0xdad4d70]` via register-constant with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a6=0xdb35bb0, a7=0xdb35c60 (`jalr` at 0xdb10c28).
  Returns v0 = ret(__glInitDlistState), f0 = ret(__glInitDlistState) (`jr` at 0xdb10c3c).

- `__glim_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb244e0 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb244e0-0xdb24594 (180 bytes).
  Loads 4 bytes at abs 0x1018 (`lw` at 0xdb244e4).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdb244fc).
  2 4-byte lw loads at abs 0xdbdb6d0, including `lw` at 0xdb24514, `lw` at 0xdb24574.
  Loads 4 bytes at abs 0xdbdb17c (`lw` at 0xdb24530).
  Loads 4 bytes at [0x1010] +0x4fc (`lw` at 0xdb2453c).
  2 4-byte lw loads at ?, including `lw` at 0xdb24544, `lw` at 0xdb24554.
  Loads 4 bytes at abs 0xdbddc98 (`lw` at 0xdb2454c).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x500, a1=0x8024, a2=[0x1010], a3=a3 at entry (arg3) (`jalr` at 0xdb24518).
  Calls `__glElementsPerGroup [0xdaf1160]` via register-constant with a0=[[0x1010]+1276], a1=0x8024, a2=[0x1010], a3=a3 at entry (arg3) (`jalr` at 0xdb24538).
  Calls `memset` via got with a0=unknown, a1=0x0, a2=unknown, a3=unknown (`jalr` at 0xdb2455c).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=0x8024, a2=[0x1010], a3=a3 at entry (arg3) (`jalr` at 0xdb2457c).
  At `beq` at 0xdb24500 (target 0xdb24574), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  At `beq` at 0xdb2450c (target 0xdb24530), taken when a0 == a1(=0x8024) and falls through when a0 != a1(=0x8024).
  Returns v0 = ret(__glSetError), f0 = ret(__glSetError) (`jr` at 0xdb24528).
  Returns v0 = ret(memset), f0 = ret(memset) (`jr` at 0xdb2456c).
  Returns v0 = ret(__glSetError), f0 = ret(__glSetError) (`jr` at 0xdb2458c).

- `__glResetArray` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb24b30 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb24b30-0xdb24ed0 (928 bytes).
  8 4-byte lw loads at abs 0xdbdb8f0, including `lw` at 0xdb24c60, `lw` at 0xdb24c74, `lw` at 0xdb24c88.
  Loads 4 bytes at abs 0xdbda09c (`lw` at 0xdb24ca4).
  Loads 4 bytes at table(0xdbd3fc0) (`lw` at 0xdb24cc0).
  Calls `__glSetValue [0xdb24af0]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown, a6=0xdbd3fc0; fp f13=f18 (`bgezall` at 0xdb24c58).
  Calls `__glSetValue [0xdb24af0]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0xdb24c6c).
  Calls `__glSetValue [0xdb24af0]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0xdb24c80).
  Calls `__glSetValue [0xdb24af0]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0xdb24c94).
  Calls `__glSetValue [0xdb24af0]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown, a6=0xdbd3fc0; fp f13=f18 (`bgezall` at 0xdb24cd8).
  Calls `__glSetValue [0xdb24af0]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown; fp f13=f18 (`bgezall` at 0xdb24cec).
  Calls `__glSetValue [0xdb24af0]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown, a6=0xdbd3fc0; fp f13=f18 (`bgezall` at 0xdb24d08).
  Calls `__glSetValue [0xdb24af0]` via direct with a0=unknown, a1=unknown, a2=a5 at entry (arg5), a3=unknown, a6=0xdbd3fc0; fp f13=f18 (`bgezall` at 0xdb24d24).
  At `beq` at 0xdb24b64 (target 0xdb24da4), taken when a5 == at(=0x1405) and falls through when a5 != at(=0x1405).
  At `beq` at 0xdb24b70 (target 0xdb24e14), taken when s5(=a5) == v1(=0x1406) and falls through when s5(=a5) != v1(=0x1406).
  At `beq` at 0xdb24b80 (target 0xdb24db0), taken when a4(=0x1909) == a0 and falls through when a4(=0x1909) != a0.
  At `beq` at 0xdb24b8c (target 0xdb24e20), taken when a0 == a6(=0x1906) and falls through when a0 != a6(=0x1906).
  At `beq` at 0xdb24b94 (target 0xdb24e30), taken when a0 == at(=0x190a) and falls through when a0 != at(=0x190a).
  At `beq` at 0xdb24b9c (target 0xdb24e40), taken when a0 == v0(=0x1907) and falls through when a0 != v0(=0x1907).
  At `beq` at 0xdb24ba4 (target 0xdb24e4c), taken when a0 == v1(=0x1908) and falls through when a0 != v1(=0x1908).
  At `bne` at 0xdb24bb8 (target 0xdb24d6c), taken when a1 < 0x1908 (unsigned) and falls through when a1 >= 0x1908 (unsigned).
  At `bne` at 0xdb24bc0 (target 0xdb24bd8), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xdb24bc8 (target 0xdb24df4), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0xdb24bd0 (target 0xdb24ea0), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xdb24be8 (target 0xdb24e5c), taken when (t0(?) & a7(?)) == 0 and falls through when (t0(?) & a7(?)) != 0.
  At `beq` at 0xdb24c2c (target 0xdb24d40), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xdb24c40 (target 0xdb24ca4), the branch is always taken.
  At `beq` at 0xdb24c9c (target 0xdb24d34), taken when s3(=a4) == s1(?) and falls through when s3(=a4) != s1(?).
  At `beq` at 0xdb24cb8 (target 0xdb24c9c), taken when s2(?) >= 0x28 (unsigned) and falls through when s2(?) < 0x28 (unsigned).
  At `beq` at 0xdb24cf4 (target 0xdb24c9c), the branch is always taken.
  At `beq` at 0xdb24d10 (target 0xdb24c9c), the branch is always taken.
  At `beq` at 0xdb24d2c (target 0xdb24c9c), the branch is always taken.
  At `bne` at 0xdb24d6c (target 0xdb24d88), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0xdb24d74 (target 0xdb24dd8), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xdb24d80 (target 0xdb24be0), the branch is always taken.
  At `bne` at 0xdb24d88 (target 0xdb24dc0), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `beq` at 0xdb24d90 (target 0xdb24be0), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xdb24d9c (target 0xdb24be0), the branch is always taken.
  At `beq` at 0xdb24da8 (target 0xdb24b74), the branch is always taken.
  At `beq` at 0xdb24db8 (target 0xdb24ba8), the branch is always taken.
  At `bne` at 0xdb24dc4 (target 0xdb24be0), taken when a1 != a6(=0x1903) and falls through when a1 == a6(=0x1903).
  At `beq` at 0xdb24dd0 (target 0xdb24be0), the branch is always taken.
  At `bne` at 0xdb24dd8 (target 0xdb24e78), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xdb24de0 (target 0xdb24be0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xdb24dec (target 0xdb24be0), the branch is always taken.
  At `bne` at 0xdb24df8 (target 0xdb24e90), taken when a1 < 0x190a (unsigned) and falls through when a1 >= 0x190a (unsigned).
  At `beq` at 0xdb24e00 (target 0xdb24be0), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xdb24e0c (target 0xdb24be0), the branch is always taken.
  At `beq` at 0xdb24e18 (target 0xdb24b74), the branch is always taken.
  At `beq` at 0xdb24e28 (target 0xdb24ba8), the branch is always taken.
  At `beq` at 0xdb24e38 (target 0xdb24ba8), the branch is always taken.
  At `beq` at 0xdb24e44 (target 0xdb24ba8), the branch is always taken.
  At `beq` at 0xdb24e54 (target 0xdb24ba8), the branch is always taken.
  At `bne` at 0xdb24e7c (target 0xdb24be0), taken when a1 != at(=0x1906) and falls through when a1 == at(=0x1906).
  At `beq` at 0xdb24e88 (target 0xdb24be0), the branch is always taken.
  At `bne` at 0xdb24e90 (target 0xdb24be0), taken when a4(=0x1909) != a1 and falls through when a4(=0x1909) == a1.
  At `beq` at 0xdb24e98 (target 0xdb24dd0), the branch is always taken.
  At `bne` at 0xdb24ea4 (target 0xdb24ebc), taken when a1 < a0(=0x80e1) (unsigned) and falls through when a1 >= a0(=0x80e1) (unsigned).
  At `bne` at 0xdb24eac (target 0xdb24be0), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xdb24eb4 (target 0xdb24bdc), the branch is always taken.
  At `bne` at 0xdb24ec0 (target 0xdb24be0), taken when a1 != a6(=0x80e0) and falls through when a1 == a6(=0x80e0).
  At `beq` at 0xdb24ec8 (target 0xdb24dec), the branch is always taken.
  Returns v0 = ? (`jr` at 0xdb24d64).
  Returns v0 = ? (`jr` at 0xdb24e70).
  The instructions from 0xdb24c48 to 0xdb24c4c are not reached by any path from the entry, and their branches are not listed.

- `__glResetMinmax` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb25930 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb25930-0xdb25a94 (356 bytes).
  Loads 4 bytes at a0 +0x55c (`lw` at 0xdb25938).
  Loads 4 bytes at abs 0xdbde490 (`lwc1` at 0xdb2598c).
  18 4-byte swc1 stores at ?, including `swc1` at 0xdb259b8, `swc1` at 0xdb259d0, `swc1` at 0xdb259d4.
  Loads 4 bytes at abs 0xdbde494 (`lwc1` at 0xdb259fc).
  At `beq` at 0xdb25954 (target 0xdb25a70), taken when a3(=[a0+1372]) == v0(=0x1906) and falls through when a3(=[a0+1372]) != v0(=0x1906).
  At `beq` at 0xdb2595c (target 0xdb25a70), taken when a3(=[a0+1372]) == a1(=0x1909) and falls through when a3(=[a0+1372]) != a1(=0x1909).
  At `beq` at 0xdb25964 (target 0xdb25a7c), taken when a3(=[a0+1372]) == a2(=0x190a) and falls through when a3(=[a0+1372]) != a2(=0x190a).
  At `beq` at 0xdb2596c (target 0xdb25a88), taken when a3(=[a0+1372]) == v0(=0x1907) and falls through when a3(=[a0+1372]) != v0(=0x1907).
  At `blez` at 0xdb25990 (target 0xdb259f8), taken when a6(?) <= 0 (signed) and falls through when a6(?) > 0 (signed).
  At `beq` at 0xdb259a4 (target 0xdb259bc), taken when (a6(?) & 0x7) == 0 and falls through when (a6(?) & 0x7) != 0.
  At `bne` at 0xdb259b4 (target 0xdb259ac), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `beq` at 0xdb259bc (target 0xdb259f8), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xdb259f0 (target 0xdb259d0), taken when a3(?) != a4(?) and falls through when a3(?) == a4(?).
  At `beq` at 0xdb25a00 (target 0xdb25a68), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xdb25a1c (target 0xdb25a34), taken when (t1(?) & 0x7) == 0 and falls through when (t1(?) & 0x7) != 0.
  At `bne` at 0xdb25a2c (target 0xdb25a24), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0xdb25a34 (target 0xdb25a68), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xdb25a60 (target 0xdb25a40), taken when a0(?) != a3(?) and falls through when a0(?) == a3(?).
  At `beq` at 0xdb25a74 (target 0xdb25984), the branch is always taken.
  At `beq` at 0xdb25a80 (target 0xdb25984), the branch is always taken.
  At `beq` at 0xdb25a8c (target 0xdb25984), the branch is always taken.
  Returns v0 = ? (`jr` at 0xdb25a68).

- `__glim_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb25ba0 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb25ba0-0xdb25c24 (132 bytes).
  Loads 4 bytes at abs 0x1018 (`lw` at 0xdb25ba4).
  2 4-byte lw loads at abs 0xdbdb6d0, including `lw` at 0xdb25bcc, `lw` at 0xdb25c04.
  Loads 4 bytes at abs 0xdbdb908 (`lw` at 0xdb25be8).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdb25bf0).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x500, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb25bd0).
  Calls `__glResetMinmax [0xdb25930]` via direct with a0=[0x1010], a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xdb25bec).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb25c0c).
  At `beq` at 0xdb25bbc (target 0xdb25c04), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  At `beq` at 0xdb25bc4 (target 0xdb25be8), taken when a0 == a1(=0x802e) and falls through when a0 != a1(=0x802e).
  Returns v0 = ret(__glSetError), f0 = ret(__glSetError) (`jr` at 0xdb25be0).
  Returns v0 = ret(__glResetMinmax), f0 = ret(__glResetMinmax) (`jr` at 0xdb25bfc).
  Returns v0 = ret(__glSetError), f0 = ret(__glSetError) (`jr` at 0xdb25c1c).

- `__glReadSpan` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb4a680 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb4a680-0xdb4a724 (164 bytes).
  Loads 4 bytes at a0 +0xac (`lw` at 0xdb4a6d4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=unknown, a2=a2 at entry (arg2), a3=unknown (`jalr` at 0xdb4a6e8).
  At `bltz` at 0xdb4a6bc (target 0xdb4a700), taken when s2(=a4-1) < 0 (signed) and falls through when s2(=a4-1) >= 0 (signed).
  At `bne` at 0xdb4a6f0 (target 0xdb4a6d0), taken when s2(?) != s5(=-0x1) and falls through when s2(?) == s5(=-0x1).
  Returns v0 = 0x0 (`jr` at 0xdb4a71c).

- `__glReadTexImage` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb597c0 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb597c0-0xdb597f4 (52 bytes).
  Loads 4 bytes at a0 +0x3078 (`lw` at 0xdb597d4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb597dc).
  Returns v0 = ret(?), f0 = ret(?) (`jr` at 0xdb597ec).

- `__glReadjustZCounts` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7c2d0 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7c2d0-0xdb7c36c (156 bytes).
  Loads 1 byte at a0 +0x664 (`lbu` at 0xdb7c2d4).
  Loads 1 byte at a0 +0xc91 (`lbu` at 0xdb7c2f4).
  3 4-byte lw loads at a0 +0x79a8, including `lw` at 0xdb7c300, `lw` at 0xdb7c324, `lw` at 0xdb7c34c.
  2 4-byte lw loads at a0 +0x79a4, including `lw` at 0xdb7c304, `lw` at 0xdb7c328.
  Loads 4 bytes at a0 +0x79c0 (`lw` at 0xdb7c310).
  Stores 4 bytes from v1 at abs 0x1018 (`sw` at 0xdb7c344).
  Loads 4 bytes at a0 +0x2d44 (`lw` at 0xdb7c348).
  Stores 4 bytes from v0 at a0 +0x2d44 (`sw` at 0xdb7c354).
  Stores 4 bytes from a2 at a0 +0x79a4 (`sw` at 0xdb7c358).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a0+31060, a2=[a0+31144], a3=a3 at entry (arg3) (`jalr` at 0xdb7c31c).
  At `beq` at 0xdb7c2ec (target 0xdb7c35c), taken when at(=[a0+1636]:1) == 0 and falls through when at(=[a0+1636]:1) != 0.
  At `beq` at 0xdb7c2f8 (target 0xdb7c35c), taken when v1(=[a0+3217]:1) == 0 and falls through when v1(=[a0+3217]:1) != 0.
  At `beq` at 0xdb7c308 (target 0xdb7c35c), taken when a1(=[a0+31140]) == a2(=[a0+31144]) and falls through when a1(=[a0+31140]) != a2(=[a0+31144]).
  At `beq` at 0xdb7c33c (target 0xdb7c358), taken when (at(?) & v0(=0xffffffff80000000)) == 0 and falls through when (at(?) & v0(=0xffffffff80000000)) != 0.
  Returns v0 = ? (`jr` at 0xdb7c364).

- `__gllc_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8abe0 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8abe0-0xdb8ac5c (124 bytes).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdb8abf0).
  Loads 4 bytes at abs 0xdbdadb0 (`lw` at 0xdb8abf8).
  Loads 4 bytes at abs 0xdbdca58 (`lw` at 0xdb8ac28).
  Loads 4 bytes at abs 0xdbdadb8 (`lw` at 0xdb8ac30).
  Stores 2 bytes from v1 at ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb8ac38).
  Stores 4 bytes from a3 at ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdb8ac48).
  Calls `__glDlistAllocOp2 [0xdad5f00]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb8ac0c).
  Calls `__glDlistAppendOp [0xdad5f90]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xdb90720, a3=a0 at entry (arg0) (`jalr` at 0xdb8ac44).
  At `bne` at 0xdb8ac14 (target 0xdb8ac28), taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  Returns v0 = ret(__glDlistAllocOp2), f0 = ret(__glDlistAllocOp2) (`jr` at 0xdb8ac20).
  Returns v0 = ret(__glDlistAppendOp), f0 = ret(__glDlistAppendOp) (`jr` at 0xdb8ac54).

- `__gllc_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8ac60 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8ac60-0xdb8acdc (124 bytes).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdb8ac70).
  Loads 4 bytes at abs 0xdbdadb0 (`lw` at 0xdb8ac78).
  Loads 4 bytes at abs 0xdbdca5c (`lw` at 0xdb8aca8).
  Loads 4 bytes at abs 0xdbdadb8 (`lw` at 0xdb8acb0).
  Stores 2 bytes from v1 at ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb8acb8).
  Stores 4 bytes from a3 at ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdb8acc8).
  Calls `__glDlistAllocOp2 [0xdad5f00]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb8ac8c).
  Calls `__glDlistAppendOp [0xdad5f90]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xdb90770, a3=a0 at entry (arg0) (`jalr` at 0xdb8acc4).
  At `bne` at 0xdb8ac94 (target 0xdb8aca8), taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  Returns v0 = ret(__glDlistAllocOp2), f0 = ret(__glDlistAllocOp2) (`jr` at 0xdb8aca0).
  Returns v0 = ret(__glDlistAppendOp), f0 = ret(__glDlistAppendOp) (`jr` at 0xdb8acd4).

- `__gllc_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8c0e0 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8c0e0-0xdb8c15c (124 bytes).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdb8c0f0).
  Loads 4 bytes at abs 0xdbdadb0 (`lw` at 0xdb8c0f8).
  Loads 4 bytes at abs 0xdbdcac8 (`lw` at 0xdb8c128).
  Loads 4 bytes at abs 0xdbdadb8 (`lw` at 0xdb8c130).
  Stores 2 bytes from v1 at ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb8c138).
  Stores 4 bytes from a3 at ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdb8c148).
  Calls `__glDlistAllocOp2 [0xdad5f00]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb8c10c).
  Calls `__glDlistAppendOp [0xdad5f90]` via register-constant with a0=unknown, a1=ret(__glDlistAllocOp2), a2=0xdb910e0, a3=a0 at entry (arg0) (`jalr` at 0xdb8c144).
  At `bne` at 0xdb8c114 (target 0xdb8c128), taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  Returns v0 = ret(__glDlistAllocOp2), f0 = ret(__glDlistAllocOp2) (`jr` at 0xdb8c120).
  Returns v0 = ret(__glDlistAppendOp), f0 = ret(__glDlistAppendOp) (`jr` at 0xdb8c154).

- `__glle_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb90720 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb90720-0xdb90764 (68 bytes).
  Loads 4 bytes at abs 0x1358 (`lw` at 0xdb90734).
  Loads 4 bytes at a0 (`lw` at 0xdb90748).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb90744).
  Returns v0 = a0+4, f0 = ret(?) (`jr` at 0xdb9075c).

- `__glle_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb90770 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb90770-0xdb907b4 (68 bytes).
  Loads 4 bytes at abs 0x135c (`lw` at 0xdb90784).
  Loads 4 bytes at a0 (`lw` at 0xdb90798).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb90794).
  Returns v0 = a0+4, f0 = ret(?) (`jr` at 0xdb907ac).

- `__glle_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb910e0 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb910e0-0xdb91124 (68 bytes).
  Loads 4 bytes at abs 0x1460 (`lw` at 0xdb910f4).
  Loads 4 bytes at a0 (`lw` at 0xdb91108).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb91104).
  Returns v0 = a0+4, f0 = ret(?) (`jr` at 0xdb9111c).

- `__glsplc_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb99410 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb99410-0xdb99468 (88 bytes).
  Loads 4 bytes at abs 0xdbda2cc (`lw` at 0xdb99424).
  Stores 4 bytes from v1 at ret(__glSPDlalloc) (`sw` at 0xdb99464).
  Calls `__glSPDlalloc [0xda60f00]` via register-constant with a0=0x4, a1=0xce, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb99434).
  At `bne` at 0xdb9943c (target 0xdb99454), taken when v0(=ret(__glSPDlalloc)) != 0 and falls through when v0(=ret(__glSPDlalloc)) == 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdb9944c).
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdb99460).

- `__glsplc_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb99470 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb99470-0xdb994c8 (88 bytes).
  Loads 4 bytes at abs 0xdbda2cc (`lw` at 0xdb99484).
  Stores 4 bytes from v1 at ret(__glSPDlalloc) (`sw` at 0xdb994c4).
  Calls `__glSPDlalloc [0xda60f00]` via register-constant with a0=0x4, a1=0xcf, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb99494).
  At `bne` at 0xdb9949c (target 0xdb994b4), taken when v0(=ret(__glSPDlalloc)) != 0 and falls through when v0(=ret(__glSPDlalloc)) == 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdb994ac).
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdb994c0).

- `__glsplc_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb9a430 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb9a430-0xdb9a488 (88 bytes).
  Loads 4 bytes at abs 0xdbda2cc (`lw` at 0xdb9a444).
  Stores 4 bytes from v1 at ret(__glSPDlalloc) (`sw` at 0xdb9a484).
  Calls `__glSPDlalloc [0xda60f00]` via register-constant with a0=0x4, a1=0xf2, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb9a454).
  At `bne` at 0xdb9a45c (target 0xdb9a474), taken when v0(=ret(__glSPDlalloc)) != 0 and falls through when v0(=ret(__glSPDlalloc)) == 0.
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdb9a46c).
  Returns v0 = ret(__glSPDlalloc), f0 = ret(__glSPDlalloc) (`jr` at 0xdb9a480).

- `__glce_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5780 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5780-0xdba57f4 (116 bytes).
  Loads 4 bytes at abs 0x1358 (`lw` at 0xdba5780).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdba57a0).
  2 4-byte lw loads at abs 0xdbde0b4, including `lw` at 0xdba57a8, `lw` at 0xdba57c0.
  Loads 4 bytes at [0x1010] +0x1af8 (`lw` at 0xdba57b0).
  3 4-byte sw stores at abs 0x1358, including `sw` at 0xdba57bc, `sw` at 0xdba57d4, `sw` at 0xdba57e4.
  Loads 4 bytes at ? (`lw` at 0xdba57c8).
  Calls `glResetHistogramEXT` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdba57b8).
  Calls `glResetHistogramEXT` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdba57d0).
  Returns v0 = ret(glResetHistogramEXT), f0 = ret(glResetHistogramEXT) (`jr` at 0xdba57ec).

- `__glce_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5800 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5800-0xdba5874 (116 bytes).
  Loads 4 bytes at abs 0x135c (`lw` at 0xdba5800).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdba5820).
  2 4-byte lw loads at abs 0xdbde0b8, including `lw` at 0xdba5828, `lw` at 0xdba5840.
  Loads 4 bytes at [0x1010] +0x1afc (`lw` at 0xdba5830).
  3 4-byte sw stores at abs 0x135c, including `sw` at 0xdba583c, `sw` at 0xdba5854, `sw` at 0xdba5864.
  Loads 4 bytes at ? (`lw` at 0xdba5848).
  Calls `glResetMinmaxEXT` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdba5838).
  Calls `glResetMinmaxEXT` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdba5850).
  Returns v0 = ret(glResetMinmaxEXT), f0 = ret(glResetMinmaxEXT) (`jr` at 0xdba586c).

- `__glce_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba75b0 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba75b0-0xdba7624 (116 bytes).
  Loads 4 bytes at abs 0x1460 (`lw` at 0xdba75b0).
  Loads 4 bytes at abs 0x1010 (`lw` at 0xdba75d0).
  2 4-byte lw loads at abs 0xdbde1c0, including `lw` at 0xdba75d8, `lw` at 0xdba75f0.
  Loads 4 bytes at [0x1010] +0x1c00 (`lw` at 0xdba75e0).
  3 4-byte sw stores at abs 0x1460, including `sw` at 0xdba75ec, `sw` at 0xdba7604, `sw` at 0xdba7614.
  Loads 4 bytes at ? (`lw` at 0xdba75f8).
  Calls `glReadInstrumentsSGIX` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdba75e8).
  Calls `glReadInstrumentsSGIX` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xdba7600).
  Returns v0 = ret(glReadInstrumentsSGIX), f0 = ret(glReadInstrumentsSGIX) (`jr` at 0xdba761c).

- `glResetHistogram` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad2c8 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad2c8-0xdbad2d4 (12 bytes).
  Loads 4 bytes at abs 0x1358 (`lw` at 0xdbad2c8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad2cc).

- `glResetMinmax` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad2d4 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad2d4-0xdbad2e0 (12 bytes).
  Loads 4 bytes at abs 0x135c (`lw` at 0xdbad2d4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad2d8).

- `glReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad5e0 (n32).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad5e0-0xdbad5ec (12 bytes).
  Loads 4 bytes at abs 0x1460 (`lw` at 0xdbad5e0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad5e4).

- `__glXMakeContextCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf710d0 (n64).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf710d0-0xcf71f2c (3676 bytes).
  Loads 8 bytes at abs 0xcfa7280 (`ld` at 0xcf7110c).
  Loads 8 bytes at abs 0xcfa6b08 (`ld` at 0xcf71140).
  3 8-byte ld loads at a3 +0x58, including `ld` at 0xcf71154, `ld` at 0xcf711b8, `ld` at 0xcf71374.
  11 8-byte sd stores at ?, including `sd` at 0xcf71158, `sd` at 0xcf7116c, `sd` at 0xcf7155c.
  2 8-byte ld loads at abs 0xcfa6fe8, including `ld` at 0xcf7115c, `ld` at 0xcf7190c.
  6 4-byte lw loads at a3 +0x3c, including `lw` at 0xcf71168, `lw` at 0xcf71364, `lw` at 0xcf71560.
  2 4-byte lw loads at a3 +0x1b0, including `lw` at 0xcf71170, `lw` at 0xcf7192c.
  2 4-byte lw loads at a3 +0x1b4, including `lw` at 0xcf71180, `lw` at 0xcf7193c.
  11 4-byte lw loads at ?, including `lw` at 0xcf71190, `lw` at 0xcf711d0, `lw` at 0xcf711f0.
  2 8-byte ld loads at abs 0xcfa72d0, including `ld` at 0xcf7119c, `ld` at 0xcf71958.
  13 8-byte ld loads at ?, including `ld` at 0xcf711a0, `ld` at 0xcf711b4, `ld` at 0xcf711c4.
  2 8-byte ld loads at a3 +0x120, including `ld` at 0xcf711e0, `ld` at 0xcf71278.
  Loads 8 bytes at [a3+288]:8 +0xd0 (`ld` at 0xcf711e4).
  9 8-byte ld loads at abs 0xcfa71f0, including `ld` at 0xcf71208, `ld` at 0xcf71314, `ld` at 0xcf71654.
  7 8-byte ld loads at abs 0x1028, including `ld` at 0xcf71240, `ld` at 0xcf712c8, `ld` at 0xcf71644.
  3 8-byte ld loads at [[0x1028]:8+280]:8 +0x138, including `ld` at 0xcf71244, `ld` at 0xcf716ac, `ld` at 0xcf7172c.
  2 8-byte ld loads at [[0x1028]:8+280]:8 +0x148, including `ld` at 0xcf71248, `ld` at 0xcf712e8.
  2 8-byte ld loads at [[0x1028]:8+280]:8 +0x140, including `ld` at 0xcf7124c, `ld` at 0xcf712f4.
  2 8-byte sd stores at [0x1028]:8 +0x118, including `sd` at 0xcf71250, `sd` at 0xcf715e4.
  Stores 8 bytes from s4 at a3 +0x158 (`sd` at 0xcf71254).
  Stores 8 bytes from s6 at a3 +0x140 (`sd` at 0xcf71258).
  3 4-byte lw loads at a3 +0x118, including `lw` at 0xcf7125c, `lw` at 0xcf71338, `lw` at 0xcf71528.
  Stores 8 bytes from s2 at a3 +0x150 (`sd` at 0xcf71260).
  Stores 8 bytes from s3 at a3 +0x148 (`sd` at 0xcf71268).
  Stores 8 bytes from s5 at a3 +0x138 (`sd` at 0xcf71274).
  Loads 8 bytes at [a3+288]:8 +0xc8 (`ld` at 0xcf7127c).
  2 1-byte lbu loads at a3 +0x170, including `lbu` at 0xcf712a0, `lbu` at 0xcf71844.
  Loads 8 bytes at [0x1028]:8 +0x118 (`ld` at 0xcf712cc).
  3 4-byte lw loads at [[0x1028]:8+280]:8 +0x118, including `lw` at 0xcf712d0, `lw` at 0xcf713a0, `lw` at 0xcf713b8.
  Loads 8 bytes at [[0x1028]:8+280]:8 +0x120 (`ld` at 0xcf712dc).
  Loads 8 bytes at [[[0x1028]:8+280]:8+288]:8 +0xb8 (`ld` at 0xcf71304).
  Loads 8 bytes at abs 0xcfa71d0 (`ld` at 0xcf7131c).
  2 8-byte ld loads at [[0x1028]:8+280]:8 +0x150, including `ld` at 0xcf71320, `ld` at 0xcf71688.
  Loads 8 bytes at [[0x1028]:8+280]:8 +0x158 (`ld` at 0xcf71324).
  2 8-byte ld loads at abs 0xcfa7148, including `ld` at 0xcf71350, `ld` at 0xcf71978.
  2 4-byte lw loads at ret(__glXAddDrawableInterest) +0xc, including `lw` at 0xcf71368, `lw` at 0xcf71990.
  Loads 8 bytes at ret(__glXAddDrawableInterest) +0x10 (`ld` at 0xcf71378).
  Loads 4 bytes at ret(__glXAddDrawableInterest) +0x40 (`lw` at 0xcf71384).
  4 1-byte lbu loads at ?, including `lbu` at 0xcf713e4, `lbu` at 0xcf713f0, `lbu` at 0xcf719cc.
  2 8-byte ld loads at abs 0xcfa6f80, including `ld` at 0xcf713ec, `ld` at 0xcf713f8.
  2 1-byte lbu loads at a3 +0x39, including `lbu` at 0xcf71404, `lbu` at 0xcf7156c.
  14 8-byte ld loads at abs 0xcfa6ab8, including `ld` at 0xcf71414, `ld` at 0xcf714ac, `ld` at 0xcf7151c.
  3 4-byte lw loads at [[0x1028]:8+280]:8 +0x68, including `lw` at 0xcf71428, `lw` at 0xcf715b4, `lw` at 0xcf716c4.
  6 8-byte ld loads at abs 0xcfa6c90, including `ld` at 0xcf71434, `ld` at 0xcf71440, `ld` at 0xcf71470.
  4 8-byte ld loads at a0 +0x958, including `ld` at 0xcf7145c, `ld` at 0xcf71494, `ld` at 0xcf71a18.
  4 8-byte sd stores at a0 +0x958, including `sd` at 0xcf7146c, `sd` at 0xcf714a8, `sd` at 0xcf71a30.
  2 8-byte ld loads at abs 0xcfa6f88, including `ld` at 0xcf71500, `ld` at 0xcf717d0.
  2 4-byte sw stores at [[0x1028]:8+280]:8 +0x68, including `sw` at 0xcf71544, `sw` at 0xcf716dc.
  4 4-byte sw stores at ?, including `sw` at 0xcf71568, `sw` at 0xcf71578, `sw` at 0xcf718e8.
  2 8-byte ld loads at abs 0xcfa7238, including `ld` at 0xcf7157c, `ld` at 0xcf718f4.
  2 4-byte lw loads at a3 +0x5c, including `lw` at 0xcf71590, `lw` at 0xcf71908.
  2 8-byte ld loads at abs 0x1088, including `ld` at 0xcf715e8, `ld` at 0xcf717ec.
  Loads 8 bytes at abs 0xcfa7ff0 (`ld` at 0xcf715f4).
  7 8-byte ld loads at a3 +0x28, including `ld` at 0xcf71634, `ld` at 0xcf71880, `ld` at 0xcf71a80.
  Loads 4 bytes at a3 +0x12c (`lw` at 0xcf71640).
  Loads 4 bytes at [0x1028]:8 +0x10c (`lw` at 0xcf7164c).
  Loads 4 bytes at a3 +0x130 (`lw` at 0xcf71658).
  2 4-byte lw loads at [0x1028]:8 +0x110, including `lw` at 0xcf7165c, `lw` at 0xcf71670.
  2 4-byte sw stores at a3 +0x12c, including `sw` at 0xcf71668, `sw` at 0xcf71bc8.
  2 4-byte sw stores at a3 +0x130, including `sw` at 0xcf71678, `sw` at 0xcf71bcc.
  Stores 8 bytes from t1 at [0x1028]:8 +0x120 (`sd` at 0xcf71730).
  Loads 4 bytes at [[0x1028]:8+280]:8 +0x1a4 (`lw` at 0xcf71738).
  Stores 4 bytes from v1 at [0x1028]:8 +0x128 (`sw` at 0xcf7173c).
  2 4-byte lw loads at [[0x1028]:8+280]:8 +0x1ac, including `lw` at 0xcf71744, `lw` at 0xcf71b9c.
  Stores 4 bytes from t1 at [0x1028]:8 +0x12c (`sw` at 0xcf71748).
  2 8-byte ld loads at [[0x1028]:8+280]:8 +0x28, including `ld` at 0xcf7174c, `ld` at 0xcf71bac.
  Loads 8 bytes at abs 0xcfa6fd8 (`ld` at 0xcf71754).
  Stores 4 bytes from zero at [[0x1028]:8+280]:8 +0x12c (`sw` at 0xcf71758).
  Stores 4 bytes from zero at [[0x1028]:8+280]:8 +0x130 (`sw` at 0xcf7175c).
  4 8-byte sd stores at [[0x1028]:8+280]:8 +0x150, including `sd` at 0xcf71760, `sd` at 0xcf71868, `sd` at 0xcf71b18.
  4 8-byte sd stores at [[0x1028]:8+280]:8 +0x158, including `sd` at 0xcf71764, `sd` at 0xcf71864, `sd` at 0xcf71b10.
  4 8-byte sd stores at [[0x1028]:8+280]:8 +0x148, including `sd` at 0xcf71768, `sd` at 0xcf7186c, `sd` at 0xcf71b3c.
  4 8-byte sd stores at [[0x1028]:8+280]:8 +0x140, including `sd` at 0xcf7176c, `sd` at 0xcf71848, `sd` at 0xcf71b00.
  4 8-byte sd stores at [[0x1028]:8+280]:8 +0x138, including `sd` at 0xcf71770, `sd` at 0xcf71860, `sd` at 0xcf71b30.
  2 8-byte ld loads at abs 0xcfa7160, including `ld` at 0xcf7177c, `ld` at 0xcf71794.
  Loads 8 bytes at abs 0xcfa7fe8 (`ld` at 0xcf717f8).
  Loads 8 bytes at [a3+288]:8 +0xc0 (`ld` at 0xcf71834).
  Stores 4 bytes from at at a3 +0x68 (`sw` at 0xcf718dc).
  Loads 8 bytes at ret(__glXAddDrawableInterest) +0x18 (`ld` at 0xcf7199c).
  2 8-byte ld loads at abs 0xcfa6f90, including `ld` at 0xcf719d4, `ld` at 0xcf719f8.
  2 8-byte ld loads at a0 +0x98, including `ld` at 0xcf719ec, `ld` at 0xcf71da4.
  4 1-byte sb stores at ?, including `sb` at 0xcf71a48, `sb` at 0xcf71ae4, `sb` at 0xcf71aec.
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf71128).
  Calls `__glXGetModes` via got with a0=a0 at entry (arg0), a1=[a3+60], a2=unknown, a3=unknown (`jalr` at 0xcf71164).
  Calls `(unknown callee)` via register with a0=[a3+288]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf711fc).
  Calls `(unknown callee)` via register with a0=[a3+288]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf71290).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+288]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf71308).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf71354).
  Calls `(unknown callee) [0xcf70ce0]` via direct with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1028]:8+280]:8+104], a3=sp-256, a4=a1 at entry (arg1) (`bgezall` at 0xcf7142c).
  Calls `(unknown callee) [0xcf70e98]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=unknown, a3=unknown (`bgezall` at 0xcf714c0).
  Calls `_XDeqAsyncHandler` via got with a0=a0 at entry (arg0), a1=sp-344, a2=unknown, a3=unknown (`jalr` at 0xcf7150c).
  Calls `__glXOverrideVisualsBogusChoose` via got with a0=unknown, a1=[a3+92], a2=unknown, a3=unknown (`jalr` at 0xcf7158c).
  Calls `(unknown callee) [0xcf7098c]` via direct with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=[[[0x1028]:8+280]:8+104], a3=sp-256, a4=a1 at entry (arg1), a5=a2 at entry (arg2) (`bgezall` at 0xcf715d0).
  Calls `(unknown callee) [0xcf6ff2c]` via direct with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xcf7162c).
  Calls `__glXUnbindHWContextFromThread` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf7167c).
  Calls `(unknown callee) [0xcf70ce0]` via direct with a0=[[[0x1028]:8+280]:8+312]:8, a1=0x0, a2=[[[0x1028]:8+280]:8+104], a3=sp-256, a4=0x0 (`bgezall` at 0xcf716c8).
  Calls `__glXRemoveDrawableInterest` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf71780).
  Calls `_XDeqAsyncHandler` via got with a0=a0 at entry (arg0), a1=sp-368, a2=unknown, a3=unknown (`jalr` at 0xcf717dc).
  Calls `(unknown callee)` via register with a0=[a3+288]:8, a1=[[[0x1028]:8+280]:8+328]:8, a2=[[[0x1028]:8+280]:8+312]:8, a3=unknown (`jalr` at 0xcf71838).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8 (`jalr` at 0xcf7187c).
  Calls `(unknown callee) [0xcf70e98]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=unknown, a3=unknown (`bgezall` at 0xcf71898).
  Calls `__glXOverrideVisualsBogusChoose` via got with a0=unknown, a1=[a3+92], a2=[a3+60], a3=unknown (`jalr` at 0xcf71904).
  Calls `__glXGetModes` via got with a0=a0 at entry (arg0), a1=[a3+60], a2=unknown, a3=unknown (`jalr` at 0xcf71920).
  Calls `glXQueryDrawable` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x8025, a3=unknown (`jalr` at 0xcf71968).
  Calls `__glXAddDrawableInterest` via got with a0=a2 at entry (arg2), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf7197c).
  Calls `XSGIMiscQueryExtension` via got with a0=a0 at entry (arg0), a1=sp-224, a2=sp-220, a3=unknown (`jalr` at 0xcf719bc).
  Calls `_XSGISetSpecialDestroyInterest` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf71a38).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8 (`jalr` at 0xcf71a84).
  Calls `(unknown callee) [0xcf70e98]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=unknown, a3=unknown (`bgezall` at 0xcf71aa0).
  Calls `__glXRemoveDrawableInterest` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf71af0).
  Calls `(unknown callee) [0xcf70e98]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=unknown, a3=unknown (`bgezall` at 0xcf71b38).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xa, a2=0x5, a3=[a3+40]:8 (`jalr` at 0xcf71b5c).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x5, a3=[[[0x1028]:8+280]:8+40]:8 (`jalr` at 0xcf71bb0).
  Calls `glXQueryDrawable` via got with a0=a0 at entry (arg0), a1=unknown, a2=0x8025, a3=unknown (`jalr` at 0xcf71c48).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8 (`jalr` at 0xcf71ca0).
  Calls `(unknown callee) [0xcf70e98]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=0x0, a3=0x0 (`bgezall` at 0xcf71cbc).
  Calls `__glXFreeContext` via got with a0=[[0x1028]:8+280]:8, a1=0x1, a2=unknown, a3=unknown (`jalr` at 0xcf71d00).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8 (`jalr` at 0xcf71d44).
  Calls `(unknown callee) [0xcf70e98]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=unknown, a3=unknown (`bgezall` at 0xcf71d60).
  Calls `_XSGISetSpecialDestroyInterest` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf71dec).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x5, a3=[a3+40]:8 (`jalr` at 0xcf71e14).
  Calls `(unknown callee) [0xcf70e98]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=ret(__glXAddDrawableInterest), a3=0x0 (`bgezall` at 0xcf71e30).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0x8, a2=0x5, a3=[a3+40]:8 (`jalr` at 0xcf71e7c).
  Calls `(unknown callee) [0xcf70e98]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=unknown, a3=unknown (`bgezall` at 0xcf71e98).
  Calls `(unknown callee) [0xcf70e98]` via direct with a0=a3 at entry (arg3), a1=[[0x1028]:8+280]:8, a2=unknown, a3=0x0 (`bgezall` at 0xcf71eec).
  At `beq` at 0xcf71134 (target 0xcf71c08), taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  At `beq` at 0xcf7114c (target 0xcf712bc), the branch is always taken.
  At `beq` at 0xcf71178 (target 0xcf71190), taken when t0(=[a3+432]) >= 0x2 (signed) and falls through when t0(=[a3+432]) < 0x2 (signed).
  At `bne` at 0xcf71188 (target 0xcf711a0), taken when t1(=[a3+436]) < 0x3 (signed) and falls through when t1(=[a3+436]) >= 0x3 (signed).
  At `beq` at 0xcf71198 (target 0xcf71c3c), taken when at(?) == v1(=0x6) and falls through when at(?) != v1(=0x6).
  At `beq` at 0xcf711a4 (target 0xcf718e0), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0xcf711ac (target 0xcf71238), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `bne` at 0xcf711bc (target 0xcf711e0), taken when t1(=[a3+88]:8) != a2(?) and falls through when t1(=[a3+88]:8) == a2(?).
  At `beq` at 0xcf711c8 (target 0xcf7120c), taken when at(?) == a2(?) and falls through when at(?) != a2(?).
  At `beq` at 0xcf711d8 (target 0xcf7120c), taken when v1(?) == t0(=0x3) and falls through when v1(?) != t0(=0x3).
  At `beq` at 0xcf711e8 (target 0xcf7120c), taken when t9(=[[a3+288]:8+208]:8) == 0 and falls through when t9(=[[a3+288]:8+208]:8) != 0.
  At `beq` at 0xcf71204 (target 0xcf71e70), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `beq` at 0xcf7120c (target 0xcf71234), taken when s2(?) == 0 -> outside and falls through when s2(?) != 0.
  At `beq` at 0xcf71214 (target 0xcf71238), taken when s2(?) == s4(?) and falls through when s2(?) != s4(?).
  At `beq` at 0xcf71224 (target 0xcf71a4c), taken when t1(?) == at(=0x4) and falls through when t1(?) != at(=0x4).
  At `beq` at 0xcf71230 (target 0xcf71a4c), taken when v1(?) == t0(=0x4) and falls through when v1(?) != t0(=0x4).
  At `beq` at 0xcf7123c (target 0xcf715e0), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xcf71270 (target 0xcf717ec), taken when t1(=[a3+280]) == 0 and falls through when t1(=[a3+280]) != 0.
  At `beq` at 0xcf71284 (target 0xcf71834), taken when t9(=[[a3+288]:8+200]:8) == 0 and falls through when t9(=[[a3+288]:8+200]:8) != 0.
  At `beq` at 0xcf71298 (target 0xcf71d10), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `beq` at 0xcf712a4 (target 0xcf712b4), taken when at(=[a3+368]:1) == 0 and falls through when at(=[a3+368]:1) != 0.
  At `beq` at 0xcf712ac (target 0xcf71b00), taken when s7(=one of 0x0, 0x1) == 0 and falls through when s7(=one of 0x0, 0x1) != 0.
  At `beq` at 0xcf712b8 (target 0xcf71718), taken when s8(?) == 0 and falls through when s8(?) != 0.
  At `bne` at 0xcf712c0 (target 0xcf71624), taken when s0(=a3) != 0 and falls through when s0(=a3) == 0.
  At `beq` at 0xcf712d4 (target 0xcf7168c), taken when v1(=[[[0x1028]:8+280]:8+280]) == 0 and falls through when v1(=[[[0x1028]:8+280]:8+280]) != 0.
  At `bne` at 0xcf712e0 (target 0xcf712fc), taken when s0(=a3) != s1(=[[0x1028]:8+280]:8) -> outside and falls through when s0(=a3) == s1(=[[0x1028]:8+280]:8).
  At `bne` at 0xcf712ec (target 0xcf71300), taken when v1(=[[[0x1028]:8+280]:8+328]:8) != s3(=a1) and falls through when v1(=[[[0x1028]:8+280]:8+328]:8) == s3(=a1).
  At `beq` at 0xcf712f8 (target 0xcf716e0), taken when t0(=[[[0x1028]:8+280]:8+320]:8) == s6(=a2) and falls through when t0(=[[[0x1028]:8+280]:8+320]:8) != s6(=a2).
  At `beq` at 0xcf71310 (target 0xcf71b9c), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `bne` at 0xcf71318 (target 0xcf7167c), taken when s0(=a3) != s1(=[[0x1028]:8+280]:8) and falls through when s0(=a3) == s1(=[[0x1028]:8+280]:8).
  At `beq` at 0xcf71330 (target 0xcf713ac), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xcf7133c (target 0xcf713a4), taken when t0(=[a3+280]) == 0 and falls through when t0(=[a3+280]) != 0.
  At `beq` at 0xcf71344 (target 0xcf713a4), taken when s3(=a1) == 0 and falls through when s3(=a1) != 0.
  At `beq` at 0xcf7134c (target 0xcf713a4), taken when s6(=a2) == 0 and falls through when s6(=a2) != 0.
  At `beq` at 0xcf7135c (target 0xcf71c90), taken when v0(=ret(__glXAddDrawableInterest)) == 0 and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  At `bne` at 0xcf7136c (target 0xcf71390), taken when t1(=[ret(__glXAddDrawableInterest)+12]) != at(=[a3+60]) and falls through when t1(=[ret(__glXAddDrawableInterest)+12]) == at(=[a3+60]).
  At `bne` at 0xcf7137c (target 0xcf71390), taken when v1(=[ret(__glXAddDrawableInterest)+16]:8) != t0(=[a3+88]:8) and falls through when v1(=[ret(__glXAddDrawableInterest)+16]:8) == t0(=[a3+88]:8).
  At `bne` at 0xcf71388 (target 0xcf71394), taken when t1(=[ret(__glXAddDrawableInterest)+64]) != at(=0x3) and falls through when t1(=[ret(__glXAddDrawableInterest)+64]) == at(=0x3).
  At `bne` at 0xcf71394 (target 0xcf71978), taken when s3(=a1) != s6(=a2) and falls through when s3(=a1) == s6(=a2).
  At `beq` at 0xcf7139c (target 0xcf713bc), the branch is always taken.
  At `bne` at 0xcf713a4 (target 0xcf713b4), taken when s0(=a3) != 0 and falls through when s0(=a3) == 0.
  At `beq` at 0xcf713ac (target 0xcf71824), taken when s3(=a1) == 0 and falls through when s3(=a1) != 0.
  At `beq` at 0xcf713c0 (target 0xcf71698), taken when v0(=[[[0x1028]:8+280]:8+280]) == 0 and falls through when v0(=[[[0x1028]:8+280]:8+280]) != 0.
  At `beq` at 0xcf713c8 (target 0xcf711ac), taken when s7(=one of 0x0, 0x1) == 0 and falls through when s7(=one of 0x0, 0x1) != 0.
  At `beq` at 0xcf713d0 (target 0xcf716a4), taken when v0(=[[[0x1028]:8+280]:8+280]) == 0 and falls through when v0(=[[[0x1028]:8+280]:8+280]) != 0.
  At `beq` at 0xcf713dc (target 0xcf713fc), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `beq` at 0xcf713e8 (target 0xcf719b4), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf713f4 (target 0xcf719b4), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0xcf713fc (target 0xcf71410), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `bne` at 0xcf71408 (target 0xcf715a8), taken when t1(=[a3+57]:1) != 0 and falls through when t1(=[a3+57]:1) == 0.
  At `bne` at 0xcf71410 (target 0xcf715a4), taken when s3(=a1) != s6(=a2) and falls through when s3(=a1) == s6(=a2).
  At `bne` at 0xcf7143c (target 0xcf71474), taken when at(?) != v1(=sym(_XAsyncErrorHandler)) and falls through when at(?) == v1(=sym(_XAsyncErrorHandler)).
  At `beq` at 0xcf7144c (target 0xcf7145c), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0xcf71454 (target 0xcf71ae0), taken when t1(=0x3) == at(?) and falls through when t1(=0x3) != at(?).
  At `bne` at 0xcf71464 (target 0xcf717d0), taken when v1(=[a0+2392]:8) != t0(=sp-368) and falls through when v1(=[a0+2392]:8) == t0(=sp-368).
  At `bne` at 0xcf7147c (target 0xcf71518), taken when at(?) != v1(=sym(_XAsyncErrorHandler)) and falls through when at(?) == v1(=sym(_XAsyncErrorHandler)).
  At `beq` at 0xcf71484 (target 0xcf71494), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0xcf7148c (target 0xcf71ae8), taken when t1(=0x3) == at(?) and falls through when t1(=0x3) != at(?).
  At `bne` at 0xcf7149c (target 0xcf71500), taken when v1(=[a0+2392]:8) != t0(=sp-344) and falls through when v1(=[a0+2392]:8) == t0(=sp-344).
  At `bne` at 0xcf714a4 (target 0xcf71520), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0xcf71518 (target 0xcf714b0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xcf71520 (target 0xcf71534), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xcf7152c (target 0xcf718d8), taken when at(=[a3+280]) == 0 and falls through when at(=[a3+280]) != 0.
  At `beq` at 0xcf71534 (target 0xcf71548), taken when s0(=a3) == s1(=[[0x1028]:8+280]:8) and falls through when s0(=a3) != s1(=[[0x1028]:8+280]:8).
  At `beq` at 0xcf7153c (target 0xcf71548), taken when v1(?) == s1(=[[0x1028]:8+280]:8) and falls through when v1(?) != s1(=[[0x1028]:8+280]:8).
  At `beq` at 0xcf71548 (target 0xcf71238), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `bne` at 0xcf71554 (target 0xcf711a0), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0xcf71564 (target 0xcf71154), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xcf71570 (target 0xcf71154), taken when at(=[a3+57]:1) == 0 and falls through when at(=[a3+57]:1) != 0.
  At `beq` at 0xcf7159c (target 0xcf7115c), the branch is always taken.
  At `beq` at 0xcf715d8 (target 0xcf71438), the branch is always taken.
  At `bne` at 0xcf715ec (target 0xcf712b8), taken when at(=[0x1088]:8) != 0 and falls through when at(=[0x1088]:8) == 0.
  At `bgtz` at 0xcf71614 (target 0xcf71600), taken when a0(?) > 0 (signed) and falls through when a0(?) <= 0 (signed).
  At `beq` at 0xcf7161c (target 0xcf712b8), the branch is always taken.
  At `beq` at 0xcf71638 (target 0xcf71c58), taken when a3(=[a3+40]:8) == 0 and falls through when a3(=[a3+40]:8) != 0.
  At `beq` at 0xcf71648 (target 0xcf71668), taken when a1(=[a3+300]) == 0 and falls through when a1(=[a3+300]) != 0.
  At `bne` at 0xcf71650 (target 0xcf71b54), taken when a1(=[a3+300]) != a0(=[[0x1028]:8+268]) and falls through when a1(=[a3+300]) == a0(=[[0x1028]:8+268]).
  At `bne` at 0xcf71660 (target 0xcf71b54), taken when at(=[[0x1028]:8+272]) != v1(=[a3+304]) and falls through when at(=[[0x1028]:8+272]) == v1(=[a3+304]).
  At `beq` at 0xcf71674 (target 0xcf712c8), the branch is always taken.
  At `beq` at 0xcf71684 (target 0xcf71324), the branch is always taken.
  At `beq` at 0xcf71690 (target 0xcf71330), the branch is always taken.
  At `beq` at 0xcf7169c (target 0xcf713c8), the branch is always taken.
  At `beq` at 0xcf716a4 (target 0xcf713d8), taken when at(?) == s1(=[[0x1028]:8+280]:8) and falls through when at(?) != s1(=[[0x1028]:8+280]:8).
  At `beq` at 0xcf716b0 (target 0xcf713d8), taken when a0(=[[[0x1028]:8+280]:8+312]:8) == s5(=a0) and falls through when a0(=[[[0x1028]:8+280]:8+312]:8) != s5(=a0).
  At `beq` at 0xcf716d0 (target 0xcf71ed8), taken when v0(=ret(0xcf70ce0)) == 0 and falls through when v0(=ret(0xcf70ce0)) != 0.
  At `beq` at 0xcf716d8 (target 0xcf713d8), the branch is always taken.
  At `beq` at 0xcf71718 (target 0xcf71774), taken when s0(=a3) == s1(=[[0x1028]:8+280]:8) and falls through when s0(=a3) != s1(=[[0x1028]:8+280]:8).
  At `beq` at 0xcf71720 (target 0xcf71778), taken when v1(?) == s1(=[[0x1028]:8+280]:8) and falls through when v1(?) != s1(=[[0x1028]:8+280]:8).
  At `beq` at 0xcf71750 (target 0xcf71cfc), taken when t0(=[[[0x1028]:8+280]:8+40]:8) == 0 and falls through when t0(=[[[0x1028]:8+280]:8+40]:8) != 0.
  At `beq` at 0xcf71778 (target 0xcf71798), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0xcf71790 (target 0xcf71af0), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `beq` at 0xcf717e4 (target 0xcf71470), the branch is always taken.
  At `bne` at 0xcf717f4 (target 0xcf712b4), taken when at(=[0x1088]:8) != 0 and falls through when at(=[0x1088]:8) == 0.
  At `bgtz` at 0xcf71814 (target 0xcf71800), taken when a0(?) > 0 (signed) and falls through when a0(?) <= 0 (signed).
  At `beq` at 0xcf7181c (target 0xcf712b8), the branch is always taken.
  At `beq` at 0xcf71824 (target 0xcf713b8), taken when s6(=a2) == 0 and falls through when s6(=a2) != 0.
  At `beq` at 0xcf7182c (target 0xcf713b8), the branch is always taken.
  At `bnel` at 0xcf71840 (target 0xcf712a4), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0; its branch-likely delay slot `lbu at,368(s0)` at 0xcf71844 runs only when taken and is annulled on fall-through.
  At `beq` at 0xcf718d8 (target 0xcf71534), the branch is always taken.
  At `beq` at 0xcf71934 (target 0xcf7194c), taken when t0(=[a3+432]) >= 0x2 (signed) and falls through when t0(=[a3+432]) < 0x2 (signed).
  At `bne` at 0xcf71944 (target 0xcf711ac), taken when t1(=[a3+436]) < 0x3 (signed) and falls through when t1(=[a3+436]) >= 0x3 (signed).
  At `bne` at 0xcf71954 (target 0xcf711ac), taken when at(?) != v1(=0x6) and falls through when at(?) == v1(=0x6).
  At `beq` at 0xcf71970 (target 0xcf711ac), the branch is always taken.
  At `beq` at 0xcf71984 (target 0xcf71e04), taken when v0(=ret(__glXAddDrawableInterest)) == 0 and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  At `bne` at 0xcf71994 (target 0xcf719a8), taken when t0(=[ret(__glXAddDrawableInterest)+12]) != t1(=[a3+60]) and falls through when t0(=[ret(__glXAddDrawableInterest)+12]) == t1(=[a3+60]).
  At `bne` at 0xcf719a0 (target 0xcf713b8), taken when at(=[ret(__glXAddDrawableInterest)+24]:8) != 0 and falls through when at(=[ret(__glXAddDrawableInterest)+24]:8) == 0.
  At `beq` at 0xcf719a8 (target 0xcf713b8), the branch is always taken.
  At `beq` at 0xcf719c4 (target 0xcf713fc), taken when v0(=ret(XSGIMiscQueryExtension)) == 0 and falls through when v0(=ret(XSGIMiscQueryExtension)) != 0.
  At `beq` at 0xcf719d0 (target 0xcf71da0), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf719d8 (target 0xcf713fc), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xcf719e4 (target 0xcf713fc), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0xcf71a44 (target 0xcf713fc), the branch is always taken.
  At `bne` at 0xcf71a58 (target 0xcf71238), taken when v1(?) < t0(?) (signed) and falls through when v1(?) >= t0(?) (signed).
  At `bne` at 0xcf71a6c (target 0xcf71238), taken when t1(?) < at(?) (signed) and falls through when t1(?) >= at(?) (signed).
  At `beq` at 0xcf71ae0 (target 0xcf7145c), the branch is always taken.
  At `beq` at 0xcf71ae8 (target 0xcf71494), the branch is always taken.
  At `beq` at 0xcf71af8 (target 0xcf7179c), the branch is always taken.
  At `beq` at 0xcf71b48 (target 0xcf712b4), the branch is always taken.
  At `beq` at 0xcf71bb8 (target 0xcf71bd4), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xcf71bc0 (target 0xcf71bd4), taken when s0(=a3) == s1(=[[0x1028]:8+280]:8) and falls through when s0(=a3) != s1(=[[0x1028]:8+280]:8).
  At `beq` at 0xcf71c50 (target 0xcf711a4), the branch is always taken.
  At `beq` at 0xcf71d08 (target 0xcf71778), the branch is always taken.
  At `beq` at 0xcf71dfc (target 0xcf719d8), the branch is always taken.
  Returns v0 = 0x0, f0 = ret(0xcf70e98) (`jr` at 0xcf714f8).
  Returns v0 = 0x1 (`jr` at 0xcf71710).
  Returns v0 = 0x1 (`jr` at 0xcf717c8).
  Returns v0 = 0x0, f0 = ret(0xcf70e98) (`jr` at 0xcf718d0).
  Returns v0 = 0x0, f0 = ret(0xcf70e98) (`jr` at 0xcf71ad8).
  Returns v0 = 0x0, f0 = ret(__glXPostError) (`jr` at 0xcf71b94).
  Returns v0 = 0x0, f0 = ret(__glXPostError) (`jr` at 0xcf71c00).
  Returns v0 = 0x0, f0 = ret(__glXSetupForCommand) (`jr` at 0xcf71c34).
  Returns v0 = 0x0, f0 = ret(0xcf6ff2c) (`jr` at 0xcf71c88).
  Returns v0 = 0x0, f0 = ret(0xcf70e98) (`jr` at 0xcf71cf4).
  Returns v0 = 0x0, f0 = ret(0xcf70e98) (`jr` at 0xcf71d98).
  Returns v0 = 0x0, f0 = ret(0xcf70e98) (`jr` at 0xcf71e68).
  Returns v0 = 0x0, f0 = ret(0xcf70e98) (`jr` at 0xcf71ed0).
  Returns v0 = 0x0, f0 = ret(0xcf70e98) (`jr` at 0xcf71f24).
  The instructions from 0xcf719b0 to 0xcf719b0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xcf71b50 to 0xcf71b50 are not reached by any path from the entry, and their branches are not listed.

- `glXMakeContextCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf71f9c (n64).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf71f9c-0xcf71fd0 (52 bytes).
  Loads 8 bytes at abs 0xcfa7298 (`ld` at 0xcf71fb0).
  Calls `__glXMakeContextCurrent` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0 (`jalr` at 0xcf71fb8).
  Returns v0 = ret(__glXMakeContextCurrent), f0 = ret(__glXMakeContextCurrent) (`jr` at 0xcf71fc8).

- `glXGetCurrentReadDrawable` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf71fe0 (n64).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf71fe0-0xcf71ff0 (16 bytes).
  Loads 8 bytes at abs 0x1028 (`ld` at 0xcf71fe0).
  Loads 8 bytes at [0x1028]:8 +0x118 (`ld` at 0xcf71fe4).
  Loads 8 bytes at [[0x1028]:8+280]:8 +0x140 (`ld` at 0xcf71fec).
  Returns v0 = [[[0x1028]:8+280]:8+320]:8 (`jr` at 0xcf71fe8).

- `__glx_ReadPixels` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf84acc (n64).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf84acc-0xcf84d34 (616 bytes).
  Loads 8 bytes at abs 0x1028 (`ld` at 0xcf84ad4).
  Loads 8 bytes at [0x1028]:8 +0x118 (`ld` at 0xcf84ad8).
  Loads 8 bytes at [[0x1028]:8+280]:8 +0x138 (`ld` at 0xcf84adc).
  Loads 8 bytes at abs 0xcfa7288 (`ld` at 0xcf84b20).
  Loads 8 bytes at [[0x1028]:8+280]:8 +0x8 (`ld` at 0xcf84b30).
  2 8-byte ld loads at [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0xcf84b34, `ld` at 0xcf84cc8.
  Loads 8 bytes at [[[[0x1028]:8+280]:8+312]:8+2408]:8 (`ld` at 0xcf84b40).
  3 8-byte ld loads at [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0xcf84b4c, `ld` at 0xcf84b84, `ld` at 0xcf84d20.
  Loads 8 bytes at [[[0x1028]:8+280]:8+312]:8 +0xb8 (`ld` at 0xcf84b50).
  Stores 8 bytes from v0 at [[[0x1028]:8+280]:8+312]:8 +0xa0 (`sd` at 0xcf84b6c).
  Stores 2 bytes from v1 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2 (`sh` at 0xcf84b74).
  2 1-byte sb stores at [[[[0x1028]:8+280]:8+312]:8+176]:8, including `sb` at 0xcf84b78, `sb` at 0xcf84ba8.
  Loads 8 bytes at [[[0x1028]:8+280]:8+312]:8 +0x98 (`ld` at 0xcf84b80).
  Stores 8 bytes from ra at [[[0x1028]:8+280]:8+312]:8 +0x98 (`sd` at 0xcf84b8c).
  Stores 8 bytes from at at [[[0x1028]:8+280]:8+312]:8 +0xb0 (`sd` at 0xcf84b94).
  Loads 4 bytes at [[0x1028]:8+280]:8 +0x1a4 (`lw` at 0xcf84b9c).
  Stores 1 byte from t8 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1 (`sb` at 0xcf84ba4).
  Loads 4 bytes at [[0x1028]:8+280]:8 +0x68 (`lw` at 0xcf84bb0).
  Stores 4 bytes from a5 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1c (`sw` at 0xcf84bb4).
  Stores 4 bytes from a6 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x18 (`sw` at 0xcf84bb8).
  Stores 4 bytes from a7 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x14 (`sw` at 0xcf84bbc).
  Stores 4 bytes from t0 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x10 (`sw` at 0xcf84bc0).
  Stores 4 bytes from t1 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0xc (`sw` at 0xcf84bc4).
  Stores 4 bytes from t2 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8 (`sw` at 0xcf84bc8).
  Stores 4 bytes from t3 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4 (`sw` at 0xcf84bcc).
  Loads 8 bytes at abs 0xcfa6db8 (`ld` at 0xcf84bd0).
  Loads 1 byte at [[0x1028]:8+280]:8 +0x80 (`lbu` at 0xcf84bd8).
  Stores 1 byte from zero at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x21 (`sb` at 0xcf84be4).
  Stores 1 byte from a4 at [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x20 (`sb` at 0xcf84bf0).
  Loads 8 bytes at abs 0xcfa6d80 (`ld` at 0xcf84c0c).
  2 8-byte ld loads at abs 0xcfa6f20, including `ld` at 0xcf84c24, `ld` at 0xcf84c80.
  Loads 4 bytes at [[0x1028]:8+280]:8 +0xf0 (`lw` at 0xcf84c3c).
  Stores 4 bytes from t0 at [[0x1028]:8+280]:8 +0xf0 (`sw` at 0xcf84c50).
  Loads 8 bytes at abs 0xcfa6e10 (`ld` at 0xcf84c58).
  Loads 8 bytes at abs 0xcfa72f0 (`ld` at 0xcf84ca0).
  Loads 8 bytes at abs 0xcfa6d70 (`ld` at 0xcf84cb8).
  Loads 8 bytes at [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8 (`ld` at 0xcf84cd4).
  Loads 8 bytes at [[[0x1028]:8+280]:8+312]:8 +0xd0 (`ld` at 0xcf84ce4).
  Loads 8 bytes at abs 0xcfa6d90 (`ld` at 0xcf84d10).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf84b2c).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf84b44).
  Calls `_XReply` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-208, a2=0x0, a3=0x0, a4=[[[0x1028]:8+280]:8+128]:1, a6=a4 at entry (arg4), a7=a3 at entry (arg3) (`jalr` at 0xcf84bec).
  Calls `malloc` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf84c14).
  Calls `_XEatData` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf84c34).
  Calls `_XRead` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=ret(malloc), a2=unknown, a3=unknown (`jalr` at 0xcf84c6c).
  Calls `_XEatData` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf84c8c).
  Calls `__glXEmptyImage` via got with a0=[[0x1028]:8+280]:8, a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a4 at entry (arg4), a4=a5 at entry (arg5) (`jalr` at 0xcf84cb0).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf84cbc).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf84cd8).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf84cf0).
  Calls `_XFlush` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf84d14).
  At `beq` at 0xcf84af0 (target 0xcf84d24), taken when t1(=[[[0x1028]:8+280]:8+312]:8) == 0 and falls through when t1(=[[[0x1028]:8+280]:8+312]:8) != 0.
  At `beq` at 0xcf84b18 (target 0xcf84cfc), taken when t1(=[[[0x1028]:8+280]:8+312]:8) == 0 and falls through when t1(=[[[0x1028]:8+280]:8+312]:8) != 0.
  At `beq` at 0xcf84b38 (target 0xcf84b4c), taken when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `bne` at 0xcf84b5c (target 0xcf84d10), taken when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < v1(=[[[[0x1028]:8+280]:8+312]:8+176]:8+36) (unsigned) and falls through when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= v1(=[[[[0x1028]:8+280]:8+312]:8+176]:8+36) (unsigned).
  At `beq` at 0xcf84c04 (target 0xcf84cc8), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xcf84c1c (target 0xcf84c54), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `bne` at 0xcf84c40 (target 0xcf84cc8), taken when a7(=[[[0x1028]:8+280]:8+240]) != 0 and falls through when a7(=[[[0x1028]:8+280]:8+240]) == 0.
  At `beq` at 0xcf84c4c (target 0xcf84cc8), the branch is always taken.
  At `beq` at 0xcf84c7c (target 0xcf84c94), taken when (t1(?) & 0x3) == 0 and falls through when (t1(?) & 0x3) != 0.
  At `beq` at 0xcf84ccc (target 0xcf84ce4), taken when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when v0(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `beq` at 0xcf84ce8 (target 0xcf84cfc), taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0 and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  At `beq` at 0xcf84d1c (target 0xcf84b60), the branch is always taken.
  Returns v0 = ? (`jr` at 0xcf84d08).
  Returns v0 = a5 (`jr` at 0xcf84d2c).

- `glXGetCurrentDisplay` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf89364 (n64).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf89364-0xcf89384 (32 bytes).
  Loads 8 bytes at abs 0x1028 (`ld` at 0xcf89364).
  Loads 8 bytes at [0x1028]:8 +0x118 (`ld` at 0xcf89368).
  Loads 8 bytes at [[0x1028]:8+280]:8 +0x138 (`ld` at 0xcf89380).
  At `bne` at 0xcf8936c (target 0xcf8937c), taken when a2(=[[0x1028]:8+280]:8) != 0 and falls through when a2(=[[0x1028]:8+280]:8) == 0.
  Returns v0 = 0x0 (`jr` at 0xcf89374).
  Returns v0 = [[[0x1028]:8+280]:8+312]:8 (`jr` at 0xcf8937c).

- `glXGetFBConfigAttrib` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf899f8 (n64).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf899f8-0xcf8a024 (1580 bytes).
  Loads 4 bytes at a1 +0x94 (`lw` at 0xcf89a60).
  45 4-byte sw stores at a3, including `sw` at 0xcf89a6c, `sw` at 0xcf89abc, `sw` at 0xcf89afc.
  Loads 4 bytes at a1 +0x10 (`lw` at 0xcf89ab0).
  Loads 4 bytes at a1 +0x68 (`lw` at 0xcf89af8).
  Loads 4 bytes at a1 +0x40 (`lw` at 0xcf89b48).
  Loads 4 bytes at a1 +0x98 (`lw` at 0xcf89b7c).
  Loads 4 bytes at a1 +0x14 (`lw` at 0xcf89b8c).
  Loads 4 bytes at a1 (`lw` at 0xcf89bbc).
  2 4-byte lw loads at a1 +0x20, including `lw` at 0xcf89bf8, `lw` at 0xcf89e10.
  Loads 1 byte at a1 +0xa0 (`lbu` at 0xcf89c0c).
  2 8-byte ldc1 loads at a1 +0xa8, including `ldc1` at 0xcf89c14, `ldc1` at 0xcf89f38.
  Loads 4 bytes at a1 +0x9c (`lw` at 0xcf89c50).
  Loads 4 bytes at a1 +0x54 (`lw` at 0xcf89c60).
  Loads 8 bytes at a1 +0xc8 (`ldc1` at 0xcf89c9c).
  Loads 4 bytes at a1 +0x78 (`lw` at 0xcf89cc8).
  Loads 4 bytes at a1 +0x5c (`lw` at 0xcf89cec).
  Loads 4 bytes at a1 +0x24 (`lw` at 0xcf89d14).
  Loads 4 bytes at a1 +0x8 (`lw` at 0xcf89d38).
  Loads 4 bytes at a1 +0x34 (`lw` at 0xcf89d60).
  Loads 4 bytes at a1 +0x70 (`lw` at 0xcf89d70).
  Loads 8 bytes at a1 +0xb0 (`ldc1` at 0xcf89d98).
  Loads 1 byte at a1 +0x4f (`lbu` at 0xcf89dbc).
  Loads 4 bytes at a1 +0x74 (`lw` at 0xcf89dd8).
  Loads 4 bytes at a1 +0x58 (`lw` at 0xcf89df4).
  Loads 4 bytes at a1 +0x48 (`lw` at 0xcf89e20).
  Loads 4 bytes at a1 +0x4 (`lw` at 0xcf89e30).
  Loads 8 bytes at a1 +0xe0 (`ldc1` at 0xcf89e58).
  Loads 4 bytes at a1 +0x64 (`lw` at 0xcf89e7c).
  Loads 4 bytes at a1 +0x1c (`lw` at 0xcf89e98).
  Loads 4 bytes at a1 +0x18 (`lw` at 0xcf89eb4).
  Loads 4 bytes at a1 +0x2c (`lw` at 0xcf89ed0).
  Loads 4 bytes at a1 +0x30 (`lw` at 0xcf89eec).
  Loads 1 byte at a1 +0x4e (`lbu` at 0xcf89efc).
  Loads 4 bytes at a1 +0x3c (`lw` at 0xcf89f18).
  Loads 8 bytes at a1 +0xd0 (`ldc1` at 0xcf89f3c).
  Loads 4 bytes at a1 +0x7c (`lw` at 0xcf89f54).
  Loads 4 bytes at a1 +0x60 (`lw` at 0xcf89f64).
  Loads 4 bytes at a1 +0x28 (`lw` at 0xcf89f74).
  Loads 8 bytes at a1 +0xc0 (`ldc1` at 0xcf89f90).
  Loads 8 bytes at a1 +0xd8 (`ldc1` at 0xcf89fb4).
  Loads 4 bytes at a1 +0xc (`lw` at 0xcf89fcc).
  Loads 4 bytes at a1 +0x38 (`lw` at 0xcf89fdc).
  Loads 8 bytes at a1 +0xb8 (`ldc1` at 0xcf89fec).
  Loads 4 bytes at a1 +0x90 (`lw` at 0xcf8a004).
  Loads 4 bytes at a1 +0x6c (`lw` at 0xcf8a014).
  At `bne` at 0xcf89a08 (target 0xcf89a70), taken when a2 < 0x28 (signed) and falls through when a2 >= 0x28 (signed).
  At `bne` at 0xcf89a10 (target 0xcf89b8c), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0xcf89a18 (target 0xcf89b08), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xcf89a20 (target 0xcf89c0c), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0xcf89a2c (target 0xcf89c70), taken when a2 < a4(=0x802e) (signed) and falls through when a2 >= a4(=0x802e) (signed).
  At `beq` at 0xcf89a34 (target 0xcf89f3c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xcf89a44 (target 0xcf89e40), taken when a2 < a4(=0x186a0) (signed) and falls through when a2 >= a4(=0x186a0) (signed).
  At `beq` at 0xcf89a4c (target 0xcf8a004), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xcf89a58 (target 0xcf89c38), taken when a2 != v0(=0x186a1) and falls through when a2 == v0(=0x186a1).
  At `bne` at 0xcf89a70 (target 0xcf89ac0), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0xcf89a78 (target 0xcf89c60), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xcf89a84 (target 0xcf89b9c), taken when a2 < 0x23 (signed) and falls through when a2 >= 0x23 (signed).
  At `bne` at 0xcf89a90 (target 0xcf89e30), taken when a2 < 0x24 (signed) and falls through when a2 >= 0x24 (signed).
  At `bne` at 0xcf89a98 (target 0xcf89d24), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0xcf89aa0 (target 0xcf89fcc), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xcf89aa8 (target 0xcf89c38), taken when a2 != v0(=0x27) and falls through when a2 == v0(=0x27).
  At `bne` at 0xcf89ac4 (target 0xcf89b58), taken when a2 < 0x8 (signed) and falls through when a2 >= 0x8 (signed).
  At `bne` at 0xcf89ad0 (target 0xcf89d70), taken when a2 < 0x9 (signed) and falls through when a2 >= 0x9 (signed).
  At `bne` at 0xcf89ad8 (target 0xcf89cb4), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0xcf89ae0 (target 0xcf89f54), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xcf89ae8 (target 0xcf89e70), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0xcf89af0 (target 0xcf89c38), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xcf89b14 (target 0xcf89bcc), taken when a2 < a4(=0x8013) (signed) and falls through when a2 >= a4(=0x8013) (signed).
  At `beq` at 0xcf89b1c (target 0xcf89e20), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0xcf89b24 (target 0xcf89d48), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xcf89b2c (target 0xcf89fdc), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xcf89b38 (target 0xcf89f0c), taken when a2 < a4(=0x801a) (signed) and falls through when a2 >= a4(=0x801a) (signed).
  At `bne` at 0xcf89b40 (target 0xcf89c38), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0xcf89b58 (target 0xcf89c40), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xcf89b64 (target 0xcf89efc), taken when a2 < 0x6 (signed) and falls through when a2 >= 0x6 (signed).
  At `bne` at 0xcf89b6c (target 0xcf89db0), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xcf89b74 (target 0xcf89c38), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0xcf89b9c (target 0xcf89cd8), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xcf89ba4 (target 0xcf89f64), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0xcf89bac (target 0xcf89e8c), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xcf89bb4 (target 0xcf89c38), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0xcf89bd4 (target 0xcf89cfc), taken when a2 < a4(=0x8010) (signed) and falls through when a2 >= a4(=0x8010) (signed).
  At `beq` at 0xcf89bdc (target 0xcf89f74), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xcf89be8 (target 0xcf89ec4), taken when a2 < a4(=0x8012) (signed) and falls through when a2 >= a4(=0x8012) (signed).
  At `bne` at 0xcf89bf0 (target 0xcf89c38), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0xcf89c30 (target 0xcf8a014), taken when a2 == v1(=0x2) and falls through when a2 != v1(=0x2).
  At `bne` at 0xcf89c40 (target 0xcf89c2c), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0xcf89c48 (target 0xcf89c38), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xcf89c78 (target 0xcf89d80), taken when a2 < a4(=0x802b) (signed) and falls through when a2 >= a4(=0x802b) (signed).
  At `beq` at 0xcf89c80 (target 0xcf89fec), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xcf89c8c (target 0xcf89f84), taken when a2 < a4(=0x802d) (signed) and falls through when a2 >= a4(=0x802d) (signed).
  At `bne` at 0xcf89c94 (target 0xcf89c38), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xcf89cb8 (target 0xcf89dcc), taken when a2 < 0xa (signed) and falls through when a2 >= 0xa (signed).
  At `beq` at 0xcf89cc0 (target 0xcf89c38), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xcf89cdc (target 0xcf89de8), taken when a2 < 0x10 (signed) and falls through when a2 >= 0x10 (signed).
  At `beq` at 0xcf89ce4 (target 0xcf89c38), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xcf89d04 (target 0xcf89e04), taken when a2 < a4(=0x800c) (signed) and falls through when a2 >= a4(=0x800c) (signed).
  At `bne` at 0xcf89d0c (target 0xcf89c38), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0xcf89d28 (target 0xcf89ea8), taken when a2 < 0x25 (signed) and falls through when a2 >= 0x25 (signed).
  At `beq` at 0xcf89d30 (target 0xcf89c38), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xcf89d50 (target 0xcf89ee0), taken when a2 < a4(=0x8017) (signed) and falls through when a2 >= a4(=0x8017) (signed).
  At `bne` at 0xcf89d58 (target 0xcf89c38), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xcf89d88 (target 0xcf89f28), taken when a2 < a4(=0x802a) (signed) and falls through when a2 >= a4(=0x802a) (signed).
  At `bne` at 0xcf89d90 (target 0xcf89c38), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xcf89db4 (target 0xcf89c38), taken when a2 != v1(=0x6) and falls through when a2 == v1(=0x6).
  At `bne` at 0xcf89dd0 (target 0xcf89c38), taken when a2 != at(=0x9) and falls through when a2 == at(=0x9).
  At `bne` at 0xcf89dec (target 0xcf89c38), taken when a2 != v1(=0xf) and falls through when a2 == v1(=0xf).
  At `bne` at 0xcf89e08 (target 0xcf89c38), taken when a2 != at(=0x800b) and falls through when a2 == at(=0x800b).
  At `bne` at 0xcf89e48 (target 0xcf89fa8), taken when a2 < a4(=0x8030) (signed) and falls through when a2 >= a4(=0x8030) (signed).
  At `bne` at 0xcf89e50 (target 0xcf89c38), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0xcf89e74 (target 0xcf89c38), taken when a2 != a0(=0xc) and falls through when a2 == a0(=0xc).
  At `bne` at 0xcf89e90 (target 0xcf89c38), taken when a2 != at(=0x20) and falls through when a2 == at(=0x20).
  At `bne` at 0xcf89eac (target 0xcf89c38), taken when a2 != v1(=0x24) and falls through when a2 == v1(=0x24).
  At `bne` at 0xcf89ec8 (target 0xcf89c38), taken when a2 != at(=0x8011) and falls through when a2 == at(=0x8011).
  At `bne` at 0xcf89ee4 (target 0xcf89c38), taken when a2 != v1(=0x8016) and falls through when a2 == v1(=0x8016).
  At `bne` at 0xcf89f10 (target 0xcf89c38), taken when a2 != at(=0x8019) and falls through when a2 == at(=0x8019).
  At `bne` at 0xcf89f2c (target 0xcf89c38), taken when a2 != v1(=0x8029) and falls through when a2 == v1(=0x8029).
  At `beq` at 0xcf89f34 (target 0xcf89c18), the branch is always taken.
  At `bne` at 0xcf89f88 (target 0xcf89c38), taken when a2 != v0(=0x802c) and falls through when a2 == v0(=0x802c).
  At `bne` at 0xcf89fac (target 0xcf89c38), taken when a2 != a0(=0x802f) and falls through when a2 == a0(=0x802f).
  Returns v0 = 0x0 (`jr` at 0xcf89a68).
  Returns v0 = 0x0 (`jr` at 0xcf89ab8).
  Returns v0 = 0x0 (`jr` at 0xcf89b00).
  Returns v0 = 0x0 (`jr` at 0xcf89b50).
  Returns v0 = 0x0 (`jr` at 0xcf89b84).
  Returns v0 = 0x0 (`jr` at 0xcf89b94).
  Returns v0 = 0x0 (`jr` at 0xcf89bc4).
  Returns v0 = 0x0 (`jr` at 0xcf89c04).
  Returns v0 = 0x0 (`jr` at 0xcf89c24).
  Returns v0 = 0x2 (`jr` at 0xcf89c38).
  Returns v0 = 0x0 (`jr` at 0xcf89c58).
  Returns v0 = 0x0 (`jr` at 0xcf89c68).
  Returns v0 = 0x0 (`jr` at 0xcf89cac).
  Returns v0 = 0x0 (`jr` at 0xcf89cd0).
  Returns v0 = 0x0 (`jr` at 0xcf89cf4).
  Returns v0 = 0x0 (`jr` at 0xcf89d1c).
  Returns v0 = 0x0 (`jr` at 0xcf89d40).
  Returns v0 = 0x0 (`jr` at 0xcf89d68).
  Returns v0 = 0x0 (`jr` at 0xcf89d78).
  Returns v0 = 0x0 (`jr` at 0xcf89da8).
  Returns v0 = 0x0 (`jr` at 0xcf89dc4).
  Returns v0 = 0x0 (`jr` at 0xcf89de0).
  Returns v0 = 0x0 (`jr` at 0xcf89dfc).
  Returns v0 = 0x0 (`jr` at 0xcf89e18).
  Returns v0 = 0x0 (`jr` at 0xcf89e28).
  Returns v0 = 0x0 (`jr` at 0xcf89e38).
  Returns v0 = 0x0 (`jr` at 0xcf89e68).
  Returns v0 = 0x0 (`jr` at 0xcf89e84).
  Returns v0 = 0x0 (`jr` at 0xcf89ea0).
  Returns v0 = 0x0 (`jr` at 0xcf89ebc).
  Returns v0 = 0x0 (`jr` at 0xcf89ed8).
  Returns v0 = 0x0 (`jr` at 0xcf89ef4).
  Returns v0 = 0x0 (`jr` at 0xcf89f04).
  Returns v0 = 0x0 (`jr` at 0xcf89f20).
  Returns v0 = 0x0 (`jr` at 0xcf89f4c).
  Returns v0 = 0x0 (`jr` at 0xcf89f5c).
  Returns v0 = 0x0 (`jr` at 0xcf89f6c).
  Returns v0 = 0x0 (`jr` at 0xcf89f7c).
  Returns v0 = 0x0 (`jr` at 0xcf89fa0).
  Returns v0 = 0x0 (`jr` at 0xcf89fc4).
  Returns v0 = 0x0 (`jr` at 0xcf89fd4).
  Returns v0 = 0x0 (`jr` at 0xcf89fe4).
  Returns v0 = 0x0 (`jr` at 0xcf89ffc).
  Returns v0 = 0x0 (`jr` at 0xcf8a00c).
  Returns v0 = 0x0 (`jr` at 0xcf8a01c).

- `glXGetFBConfigFltAttribSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8a070 (n64).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8a070-0xcf8a1cc (348 bytes).
  Loads 8 bytes at abs 0xcfa6b00 (`ld` at 0xcf8a094).
  Loads 8 bytes at table(0xcfa45c8) (`ld` at 0xcf8a0b0).
  Loads 8 bytes at a1 +0xa8 (`ldc1` at 0xcf8a0bc).
  9 8-byte sdc1 stores at a3, including `sdc1` at 0xcf8a0c8, `sdc1` at 0xcf8a0e4, `sdc1` at 0xcf8a100.
  Loads 8 bytes at a1 +0xb0 (`ldc1` at 0xcf8a0d8).
  Loads 8 bytes at a1 +0xb8 (`ldc1` at 0xcf8a0f4).
  Loads 8 bytes at a1 +0xc0 (`ldc1` at 0xcf8a110).
  Loads 8 bytes at a1 +0xc8 (`ldc1` at 0xcf8a12c).
  Loads 8 bytes at a1 +0xd0 (`ldc1` at 0xcf8a148).
  Loads 8 bytes at a1 +0xd8 (`ldc1` at 0xcf8a164).
  Loads 8 bytes at a1 +0xe0 (`ldc1` at 0xcf8a180).
  Loads 8 bytes at abs 0xcfa7020 (`ld` at 0xcf8a198).
  Calls `glXGetFBConfigAttribSGIX` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-64, a5=table(0xcfa45c8) (`jalr` at 0xcf8a1a0).
  At `beq` at 0xcf8a0a8 (target 0xcf8a198), taken when a5(=a2-32809) >= 0x8 (unsigned) and falls through when a5(=a2-32809) < 0x8 (unsigned).
  Returns v0 = 0x0, f0 = [a1+168]:8 (`jr` at 0xcf8a0d0).
  Returns v0 = 0x0 (`jr` at 0xcf8a0ec).
  Returns v0 = 0x0 (`jr` at 0xcf8a108).
  Returns v0 = 0x0 (`jr` at 0xcf8a124).
  Returns v0 = 0x0 (`jr` at 0xcf8a140).
  Returns v0 = 0x0, f0 = [a1+208]:8 (`jr` at 0xcf8a15c).
  Returns v0 = 0x0 (`jr` at 0xcf8a178).
  Returns v0 = 0x0 (`jr` at 0xcf8a190).
  Returns v0 = ret(glXGetFBConfigAttribSGIX), f0 = ret(glXGetFBConfigAttribSGIX) (`jr` at 0xcf8a1c4).

- `glXChooseFBConfigWithFltSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8a660 (n64).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8a660-0xcf8b9a4 (4932 bytes).
  Loads 8 bytes at abs 0xcfa8068 (`ldc1` at 0xcf8a76c).
  Loads 8 bytes at abs 0xcfa8060 (`ldc1` at 0xcf8a770).
  Loads 4 bytes at a2 (`lw` at 0xcf8a7b0).
  69 4-byte lw loads at ?, including `lw` at 0xcf8a810, `lw` at 0xcf8a824, `lw` at 0xcf8a870.
  3 8-byte ld loads at abs 0xcfa7278, including `ld` at 0xcf8a834, `ld` at 0xcf8a894, `ld` at 0xcf8a8d0.
  Loads 8 bytes at a3 (`ldc1` at 0xcf8a838).
  17 8-byte ldc1 loads at ?, including `ldc1` at 0xcf8a880, `ldc1` at 0xcf8a898, `ldc1` at 0xcf8a9e4.
  2 8-byte ld loads at abs 0xcfa6b00, including `ld` at 0xcf8a8a8, `ld` at 0xcf8a8a8.
  Loads 8 bytes at table(0xcfa4608) (`ld` at 0xcf8a8c4).
  Loads 4 bytes at a0 +0xe4 (`lw` at 0xcf8a8f4).
  Loads 8 bytes at ret(__glXInitialize) +0x30 (`ld` at 0xcf8a904).
  Loads 8 bytes at ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x18 (`ld` at 0xcf8a910).
  Loads 4 bytes at ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x20 (`lw` at 0xcf8a918).
  Loads 4 bytes at [([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8 +0x48 (`lw` at 0xcf8a94c).
  12 4-byte sw stores at a4, including `sw` at 0xcf8a980, `sw` at 0xcf8aac0, `sw` at 0xcf8ab10.
  7 1-byte lbu loads at ?, including `lbu` at 0xcf8aae4, `lbu` at 0xcf8ae68, `lbu` at 0xcf8aeec.
  2 8-byte ld loads at abs 0xcfa6d80, including `ld` at 0xcf8ab4c, `ld` at 0xcf8b054.
  Stores 8 bytes from s0 at ret(malloc) (`sd` at 0xcf8ac98).
  Loads 8 bytes at abs 0xcfa6ac0 (`ld` at 0xcf8b0e0).
  Loads 8 bytes at abs 0xcfa6dd8 (`ld` at 0xcf8b100).
  15 8-byte sd stores at ?, including `sd` at 0xcf8b168, `sd` at 0xcf8b198, `sd` at 0xcf8b1a0.
  22 8-byte ld loads at ?, including `ld` at 0xcf8b3f8, `ld` at 0xcf8b400, `ld` at 0xcf8b408.
  21 4-byte sw stores at ?, including `sw` at 0xcf8b3fc, `sw` at 0xcf8b404, `sw` at 0xcf8b40c.
  Loads 8 bytes at abs 0xcfa6d70 (`ld` at 0xcf8b520).
  Loads 8 bytes at abs 0xcfa6ac8 (`ld` at 0xcf8b7b4).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf8a8d8).
  Calls `malloc` via got with a0=0x8, a1=ret(__glXInitialize), a2=unknown, a3=unknown (`jalr` at 0xcf8ab50).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a1=ret(__glXInitialize), a2=unknown, a3=unknown, a5=(a1 << 0x6) (`jalr` at 0xcf8b060).
  Calls `(unknown callee) [0xcf87cec]` via direct with a0=unknown, a1=a1 at entry (arg1), a2=sp-328, a3=unknown (`bgezall` at 0xcf8b0f0).
  Calls `strncmp` via got with a0=sp-328, a1=0xcfa8028, a2=0x7, a3=unknown (`jalr` at 0xcf8b10c).
  Calls `free` via got with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf8b524).
  Calls `(unknown callee) [0xcf8a210]` via direct with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xcf8b7dc).
  At `beq` at 0xcf8a7a8 (target 0xcf8a830), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0xcf8a7b4 (target 0xcf8a830), taken when a0(=[a2]) == 0 and falls through when a0(=[a2]) != 0.
  At `bne` at 0xcf8a7ec (target 0xcf8a854), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xcf8a800 (target 0xcf8a990), taken when v0(?) >= 0x27 (signed) and falls through when v0(?) < 0x27 (signed).
  At `beq` at 0xcf8a81c (target 0xcf8a830), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `bne` at 0xcf8a828 (target 0xcf8a7ec), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0xcf8a830 (target 0xcf8a8d4), taken when s0(=a3) == 0 and falls through when s0(=a3) != 0.
  At `beq` at 0xcf8a844 (target 0xcf8a8d0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xcf8a84c (target 0xcf8a8a8), the branch is always taken.
  At `bne` at 0xcf8a860 (target 0xcf8a9b8), taken when v0(?) < 0xd (signed) and falls through when v0(?) >= 0xd (signed).
  At `beq` at 0xcf8a868 (target 0xcf8aa54), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xcf8a878 (target 0xcf8a81c), the branch is always taken.
  At `beq` at 0xcf8a890 (target 0xcf8a8d4), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0xcf8a8a4 (target 0xcf8a8d0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xcf8a8bc (target 0xcf8aaa4), taken when a0(=table(-0x8029)) >= 0x8 (unsigned) and falls through when a0(=table(-0x8029)) < 0x8 (unsigned).
  At `beq` at 0xcf8a8e4 (target 0xcf8ac20), taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  At `bltz` at 0xcf8a8ec (target 0xcf8aaf4), taken when s3(=a1) < 0 (signed) and falls through when s3(=a1) >= 0 (signed).
  At `beq` at 0xcf8a8fc (target 0xcf8aaf4), taken when s3(=a1) >= a6(=[a0+228]) (signed) and falls through when s3(=a1) < a6(=[a0+228]) (signed).
  At `beq` at 0xcf8a914 (target 0xcf8ac4c), taken when s4(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) == 0 and falls through when s4(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) != 0.
  At `beq` at 0xcf8a91c (target 0xcf8ac4c), taken when a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) == 0 and falls through when a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) != 0.
  At `beq` at 0xcf8a924 (target 0xcf8b054), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `blez` at 0xcf8a92c (target 0xcf8a964), taken when a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed) and falls through when a0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  At `beq` at 0xcf8a950 (target 0xcf8ab4c), taken when v1(?) == s1(?) and falls through when v1(?) != s1(?).
  At `bnel` at 0xcf8a95c (target 0xcf8a950), taken when a5(?) != s0(?) and falls through when a5(?) == s0(?); its branch-likely delay slot `lw v1,72(s0)` at 0xcf8a960 runs only when taken and is annulled on fall-through.
  At `bne` at 0xcf8a990 (target 0xcf8aa80), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `bne` at 0xcf8a998 (target 0xcf8ab20), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xcf8a9b0 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8a9c0 (target 0xcf8aad0), taken when v0(?) < 0x8 (signed) and falls through when v0(?) >= 0x8 (signed).
  At `beq` at 0xcf8a9c8 (target 0xcf8ab8c), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xcf8a9dc (target 0xcf8a81c), the branch is always taken.
  At `beq` at 0xcf8a9ec (target 0xcf8a890), the branch is always taken.
  At `beq` at 0xcf8a9fc (target 0xcf8a890), the branch is always taken.
  At `beq` at 0xcf8aa0c (target 0xcf8a890), the branch is always taken.
  At `beq` at 0xcf8aa1c (target 0xcf8a890), the branch is always taken.
  At `beq` at 0xcf8aa2c (target 0xcf8a890), the branch is always taken.
  At `beq` at 0xcf8aa3c (target 0xcf8a890), the branch is always taken.
  At `beq` at 0xcf8aa4c (target 0xcf8a890), the branch is always taken.
  At `bne` at 0xcf8aa54 (target 0xcf8abb0), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xcf8aa64 (target 0xcf8aca8), taken when v0(?) >= 0x21 (signed) and falls through when v0(?) < 0x21 (signed).
  At `beq` at 0xcf8aa78 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8aa80 (target 0xcf8abd0), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xcf8aa88 (target 0xcf8acd4), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xcf8aa9c (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8aad0 (target 0xcf8abfc), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xcf8aad8 (target 0xcf8ad20), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf8aaec (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8ab24 (target 0xcf8acf4), taken when v0(?) < a3(=0x802e) (signed) and falls through when v0(?) >= a3(=0x802e) (signed).
  At `bne` at 0xcf8ab2c (target 0xcf8add8), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xcf8ab44 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8ab58 (target 0xcf8ac78), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `bne` at 0xcf8ab90 (target 0xcf8ad44), taken when v0(?) < 0xb (signed) and falls through when v0(?) >= 0xb (signed).
  At `beq` at 0xcf8ab98 (target 0xcf8ae24), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xcf8aba8 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8abb0 (target 0xcf8ad68), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xcf8abb8 (target 0xcf8ae40), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xcf8abc8 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8abdc (target 0xcf8ad90), taken when v0(?) < a4(=0x8010) (signed) and falls through when v0(?) >= a4(=0x8010) (signed).
  At `bne` at 0xcf8abe4 (target 0xcf8ae58), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xcf8abf4 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8ac00 (target 0xcf8adbc), taken when v0(?) < 0x3 (signed) and falls through when v0(?) >= 0x3 (signed).
  At `beq` at 0xcf8ac08 (target 0xcf8adf8), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf8ac18 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8acac (target 0xcf8ae78), taken when v0(?) < 0x24 (signed) and falls through when v0(?) >= 0x24 (signed).
  At `beq` at 0xcf8acb4 (target 0xcf8af50), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf8accc (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8acd4 (target 0xcf8ae98), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xcf8acdc (target 0xcf8af6c), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xcf8acec (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8acf4 (target 0xcf8aebc), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `bne` at 0xcf8ad00 (target 0xcf8af84), taken when t0(=0x802c) < v0(?) (signed) and falls through when t0(=0x802c) >= v0(?) (signed).
  At `beq` at 0xcf8ad18 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8ad20 (target 0xcf8aee4), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xcf8ad2c (target 0xcf8adf8), taken when v0(?) >= 0x8 (signed) and falls through when v0(?) < 0x8 (signed).
  At `beq` at 0xcf8ad3c (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8ad44 (target 0xcf8aefc), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xcf8ad4c (target 0xcf8adf8), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xcf8ad60 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8ad70 (target 0xcf8af1c), taken when v0(?) < 0xf (signed) and falls through when v0(?) >= 0xf (signed).
  At `beq` at 0xcf8ad78 (target 0xcf8adf8), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf8ad88 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8ad98 (target 0xcf8af34), taken when v0(?) < 0x28 (signed) and falls through when v0(?) >= 0x28 (signed).
  At `beq` at 0xcf8ada0 (target 0xcf8adf8), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xcf8adb4 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8adc0 (target 0xcf8adf8), taken when v0(?) != a6(=0x2) and falls through when v0(?) == a6(=0x2).
  At `beq` at 0xcf8add0 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8add8 (target 0xcf8afa4), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xcf8ade0 (target 0xcf8b0a0), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xcf8adf0 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8ae24 (target 0xcf8adf8), taken when v0(?) != t9(=0xc) and falls through when v0(?) == t9(=0xc).
  At `beq` at 0xcf8ae38 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8ae40 (target 0xcf8adf8), taken when v0(?) != v1(=0x11) and falls through when v0(?) == v1(=0x11).
  At `beq` at 0xcf8ae50 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8ae58 (target 0xcf8aff8), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `bne` at 0xcf8ae60 (target 0xcf8adf8), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xcf8ae70 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8ae78 (target 0xcf8afd8), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xcf8ae80 (target 0xcf8adf8), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xcf8ae90 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8ae9c (target 0xcf8b014), taken when v0(?) < t2(=0x8017) (signed) and falls through when v0(?) >= t2(=0x8017) (signed).
  At `bne` at 0xcf8aea4 (target 0xcf8adf8), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xcf8aeb4 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8aebc (target 0xcf8b030), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xcf8aec4 (target 0xcf8adf8), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xcf8aedc (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8aee4 (target 0xcf8adf8), taken when v0(?) != a6(=0x6) and falls through when v0(?) == a6(=0x6).
  At `beq` at 0xcf8aef4 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8af00 (target 0xcf8adf8), taken when v0(?) != v1(=0x9) and falls through when v0(?) == v1(=0x9).
  At `beq` at 0xcf8af14 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8af1c (target 0xcf8adf8), taken when v0(?) != a6(=0xe) and falls through when v0(?) == a6(=0xe).
  At `beq` at 0xcf8af2c (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8af34 (target 0xcf8adf8), taken when v0(?) != v1(=0x27) and falls through when v0(?) == v1(=0x27).
  At `beq` at 0xcf8af48 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8af50 (target 0xcf8adf8), taken when v0(?) != at(=0x25) and falls through when v0(?) == at(=0x25).
  At `beq` at 0xcf8af64 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8af6c (target 0xcf8adf8), taken when v0(?) != a6(=0x8028) and falls through when v0(?) == a6(=0x8028).
  At `beq` at 0xcf8af7c (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8af84 (target 0xcf8adf8), taken when v0(?) != v1(=0x802d) and falls through when v0(?) == v1(=0x802d).
  At `beq` at 0xcf8af9c (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8afac (target 0xcf8b0bc), taken when v0(?) < a6(=0x8030) (signed) and falls through when v0(?) >= a6(=0x8030) (signed).
  At `bne` at 0xcf8afb8 (target 0xcf8adf8), taken when at(=0x8030) < v0(?) (signed) and falls through when at(=0x8030) >= v0(?) (signed).
  At `beq` at 0xcf8afd0 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8afdc (target 0xcf8adf8), taken when v0(?) != a5(=0x22) and falls through when v0(?) == a5(=0x22).
  At `beq` at 0xcf8aff0 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8affc (target 0xcf8adf8), taken when v0(?) != v1(=0x8011) and falls through when v0(?) == v1(=0x8011).
  At `beq` at 0xcf8b00c (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8b018 (target 0xcf8adf8), taken when v0(?) != a6(=0x8016) and falls through when v0(?) == a6(=0x8016).
  At `beq` at 0xcf8b028 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8b034 (target 0xcf8adf8), taken when v0(?) != v1(=0x802a) and falls through when v0(?) == v1(=0x802a).
  At `beq` at 0xcf8b04c (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8b06c (target 0xcf8b0e0), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `bne` at 0xcf8b0a4 (target 0xcf8adf8), taken when v0(?) != a6(=0x186a1) and falls through when v0(?) == a6(=0x186a1).
  At `beq` at 0xcf8b0b4 (target 0xcf8a81c), the branch is always taken.
  At `bne` at 0xcf8b0c0 (target 0xcf8adf8), taken when v0(?) != v1(=0x802f) and falls through when v0(?) == v1(=0x802f).
  At `beq` at 0xcf8b0d8 (target 0xcf8a81c), the branch is always taken.
  At `beq` at 0xcf8b0f8 (target 0xcf8b11c), taken when v0(=ret(0xcf87cec)) == 0 and falls through when v0(=ret(0xcf87cec)) != 0.
  At `beq` at 0xcf8b114 (target 0xcf8b4e0), taken when v0(=ret(strncmp)) == 0 and falls through when v0(=ret(strncmp)) != 0.
  At `bne` at 0xcf8b11c (target 0xcf8b204), taken when s2(?) != 0 and falls through when s2(?) == 0.
  At `bne` at 0xcf8b124 (target 0xcf8b204), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `blez` at 0xcf8b12c (target 0xcf8b1d8), taken when s1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed) and falls through when s1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  At `beq` at 0xcf8b158 (target 0xcf8b174), taken when (at(?) & 0x7) == 0 and falls through when (at(?) & 0x7) != 0.
  At `bne` at 0xcf8b16c (target 0xcf8b160), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `beq` at 0xcf8b17c (target 0xcf8b1d4), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xcf8b1cc (target 0xcf8b18c), taken when a1(?) != s1(?) and falls through when a1(?) == s1(?).
  At `blez` at 0xcf8b204 (target 0xcf8b3cc), taken when s1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed) and falls through when s1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  At `beq` at 0xcf8b240 (target 0xcf8b258), the branch is always taken.
  At `beq` at 0xcf8b248 (target 0xcf8b298), the branch is always taken.
  At `beq` at 0xcf8b254 (target 0xcf8b3cc), taken when s0(?) == s1(?) and falls through when s0(?) != s1(?).
  At `bne` at 0xcf8b268 (target 0xcf8b250), taken when a5(?) < a6(?) (signed) and falls through when a5(?) >= a6(?) (signed).
  At `bne` at 0xcf8b274 (target 0xcf8b250), taken when at(?) != v1(?) and falls through when at(?) == v1(?).
  At `beq` at 0xcf8b27c (target 0xcf8b248), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xcf8b288 (target 0xcf8b248), taken when a6(?) == at(?) and falls through when a6(?) != at(?).
  At `beq` at 0xcf8b290 (target 0xcf8b250), the branch is always taken.
  At `bne` at 0xcf8b2a0 (target 0xcf8b250), taken when v1(?) != a5(?) and falls through when v1(?) == a5(?).
  At `bne` at 0xcf8b2b4 (target 0xcf8b250), taken when a6(?) < at(?) (signed) and falls through when a6(?) >= at(?) (signed).
  At `bne` at 0xcf8b2c8 (target 0xcf8b250), taken when a1(?) < v1(?) (signed) and falls through when a1(?) >= v1(?) (signed).
  At `bne` at 0xcf8b2dc (target 0xcf8b250), taken when a7(?) < a5(?) (signed) and falls through when a7(?) >= a5(?) (signed).
  At `bne` at 0xcf8b2f0 (target 0xcf8b250), taken when t0(?) < a6(?) (signed) and falls through when t0(?) >= a6(?) (signed).
  At `bne` at 0xcf8b304 (target 0xcf8b250), taken when t1(?) < at(?) (signed) and falls through when t1(?) >= at(?) (signed).
  At `bne` at 0xcf8b318 (target 0xcf8b250), taken when t2(?) < v1(?) (signed) and falls through when t2(?) >= v1(?) (signed).
  At `bne` at 0xcf8b32c (target 0xcf8b250), taken when a5(?) < a6(?) (signed) and falls through when a5(?) >= a6(?) (signed).
  At `bne` at 0xcf8b340 (target 0xcf8b250), taken when at(?) < v1(?) (signed) and falls through when at(?) >= v1(?) (signed).
  At `bne` at 0xcf8b354 (target 0xcf8b250), taken when a5(?) < a6(?) (signed) and falls through when a5(?) >= a6(?) (signed).
  At `bne` at 0xcf8b368 (target 0xcf8b250), taken when at(?) < v1(?) (signed) and falls through when at(?) >= v1(?) (signed).
  At `bne` at 0xcf8b37c (target 0xcf8b250), taken when a5(?) < a6(?) (signed) and falls through when a5(?) >= a6(?) (signed).
  At `bne` at 0xcf8b390 (target 0xcf8b250), taken when at(?) < v1(?) (unsigned) and falls through when at(?) >= v1(?) (unsigned).
  At `bne` at 0xcf8b3a4 (target 0xcf8b250), taken when a5(?) < a6(?) (unsigned) and falls through when a5(?) >= a6(?) (unsigned).
  At `beq` at 0xcf8b3ac (target 0xcf8b55c), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xcf8b3bc (target 0xcf8b55c), taken when v1(?) == a5(?) and falls through when v1(?) != a5(?).
  At `beq` at 0xcf8b3c4 (target 0xcf8b55c), the branch is always taken.
  At `blez` at 0xcf8b3cc (target 0xcf8b520), taken when s2(?) <= 0 (signed) and falls through when s2(?) > 0 (signed).
  At `beq` at 0xcf8b3d4 (target 0xcf8b4b4), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bltz` at 0xcf8b3e8 (target 0xcf8b418), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `bltz` at 0xcf8b41c (target 0xcf8b44c), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `bltz` at 0xcf8b450 (target 0xcf8b480), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `bltz` at 0xcf8b484 (target 0xcf8b4b4), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `bne` at 0xcf8b4ec (target 0xcf8b11c), taken when at(?) != s3(=0xc) and falls through when at(?) == s3(=0xc).
  At `bne` at 0xcf8b4f8 (target 0xcf8b11c), taken when a5(?) != s3(=0xc) and falls through when a5(?) == s3(=0xc).
  At `bne` at 0xcf8b500 (target 0xcf8b11c), taken when a6(?) != s3(=0xc) and falls through when a6(?) == s3(=0xc).
  At `beq` at 0xcf8b518 (target 0xcf8b11c), the branch is always taken.
  At `bne` at 0xcf8b55c (target 0xcf8b250), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `bne` at 0xcf8b56c (target 0xcf8b250), taken when a5(?) != a6(?) and falls through when a5(?) == a6(?).
  At `beq` at 0xcf8b574 (target 0xcf8b590), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xcf8b584 (target 0xcf8b590), taken when v1(?) == a5(?) and falls through when v1(?) != a5(?).
  At `bne` at 0xcf8b590 (target 0xcf8b250), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8b598 (target 0xcf8b5b4), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xcf8b5a8 (target 0xcf8b5b4), taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  At `bne` at 0xcf8b5b4 (target 0xcf8b250), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8b5bc (target 0xcf8b5d8), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xcf8b5cc (target 0xcf8b5d8), taken when a6(?) == at(?) and falls through when a6(?) != at(?).
  At `bne` at 0xcf8b5d8 (target 0xcf8b250), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8b5e0 (target 0xcf8b5fc), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf8b5f0 (target 0xcf8b5fc), taken when a5(?) == a6(?) and falls through when a5(?) != a6(?).
  At `bne` at 0xcf8b5fc (target 0xcf8b250), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8b604 (target 0xcf8b620), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xcf8b614 (target 0xcf8b620), taken when v1(?) == a5(?) and falls through when v1(?) != a5(?).
  At `bne` at 0xcf8b620 (target 0xcf8b250), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8b628 (target 0xcf8b644), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xcf8b638 (target 0xcf8b644), taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  At `bne` at 0xcf8b644 (target 0xcf8b250), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `bne` at 0xcf8b658 (target 0xcf8b250), taken when a5(?) != a6(?) and falls through when a5(?) == a6(?).
  At `bne` at 0xcf8b66c (target 0xcf8b250), taken when a6(?) != at(?) and falls through when a6(?) == at(?).
  At `beq` at 0xcf8b674 (target 0xcf8b688), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xcf8b680 (target 0xcf8b92c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0xcf8b688 (target 0xcf8b250), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `bne` at 0xcf8b69c (target 0xcf8b250), taken when a5(?) < a6(?) (signed) and falls through when a5(?) >= a6(?) (signed).
  At `bne` at 0xcf8b6b0 (target 0xcf8b250), taken when at(?) < v1(?) (signed) and falls through when at(?) >= v1(?) (signed).
  At `bne` at 0xcf8b6c4 (target 0xcf8b250), taken when a5(?) < a6(?) (signed) and falls through when a5(?) >= a6(?) (signed).
  At `bne` at 0xcf8b6d4 (target 0xcf8b250), taken when at(?) != v1(?) and falls through when at(?) == v1(?).
  At `bc1t` at 0xcf8b6e4 (target 0xcf8b250), taken when f0 < f1 (c.lt.d at 0xcf8b6e0) and falls through when not (f0 < f1 (c.lt.d at 0xcf8b6e0)).
  At `bc1t` at 0xcf8b6f8 (target 0xcf8b250), taken when FP condition code 1 is true and falls through when FP condition code 1 is false.
  At `bc1t` at 0xcf8b708 (target 0xcf8b250), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1t` at 0xcf8b71c (target 0xcf8b250), taken when FP condition code 3 is true and falls through when FP condition code 3 is false.
  At `bc1t` at 0xcf8b72c (target 0xcf8b250), taken when f0 < f1 (c.lt.d at 0xcf8b728) and falls through when not (f0 < f1 (c.lt.d at 0xcf8b728)).
  At `bc1t` at 0xcf8b740 (target 0xcf8b250), taken when FP condition code 1 is true and falls through when FP condition code 1 is false.
  At `bc1t` at 0xcf8b750 (target 0xcf8b250), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1t` at 0xcf8b764 (target 0xcf8b250), taken when FP condition code 3 is true and falls through when FP condition code 3 is false.
  At `beq` at 0xcf8b784 (target 0xcf8b790), taken when a5(?) == 0 -> outside and falls through when a5(?) != 0.
  At `beq` at 0xcf8b78c (target 0xcf8b950), taken when a7(?) == s3(=0xc) and falls through when a7(?) != s3(=0xc).
  At `beq` at 0xcf8b794 (target 0xcf8b814), taken when at(?) == a3(?) and falls through when at(?) != a3(?).
  At `bne` at 0xcf8b808 (target 0xcf8b7a8), taken when s4(?) != at(?) and falls through when s4(?) == at(?).
  At `beq` at 0xcf8b814 (target 0xcf8b940), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xcf8b830 (target 0xcf8b84c), taken when (t1(?) & 0x3) == 0 and falls through when (t1(?) & 0x3) != 0.
  At `bne` at 0xcf8b844 (target 0xcf8b838), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0xcf8b850 (target 0xcf8b884), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0xcf8b87c (target 0xcf8b85c), taken when a1(?) != a7(?) and falls through when a1(?) == a7(?).
  At `beq` at 0xcf8b888 (target 0xcf8b900), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0xcf8b898 (target 0xcf8b8ac), taken when t0(?) < s4(?) (signed) and falls through when t0(?) >= s4(?) (signed).
  At `beq` at 0xcf8b8a0 (target 0xcf8b8ac), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xcf8b8b4 (target 0xcf8b8c8), taken when t0(?) < s4(?) (signed) and falls through when t0(?) >= s4(?) (signed).
  At `beq` at 0xcf8b8bc (target 0xcf8b8c8), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0xcf8b8d0 (target 0xcf8b8e4), taken when t0(?) < s4(?) (signed) and falls through when t0(?) >= s4(?) (signed).
  At `beq` at 0xcf8b8d8 (target 0xcf8b8e4), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0xcf8b8ec (target 0xcf8b900), taken when t0(?) < s4(?) (signed) and falls through when t0(?) >= s4(?) (signed).
  At `beq` at 0xcf8b8f4 (target 0xcf8b900), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf8b904 (target 0xcf8b938), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bltz` at 0xcf8b910 (target 0xcf8b934), taken when at(?) < 0 (signed) and falls through when at(?) >= 0 (signed).
  At `bne` at 0xcf8b91c (target 0xcf8b90c), taken when a1(?) != a2(?) and falls through when a1(?) == a2(?).
  At `beq` at 0xcf8b924 (target 0xcf8b938), the branch is always taken.
  At `beq` at 0xcf8b92c (target 0xcf8b688), the branch is always taken.
  At `beq` at 0xcf8b938 (target 0xcf8b250), the branch is always taken.
  At `beq` at 0xcf8b948 (target 0xcf8b884), the branch is always taken.
  At `bne` at 0xcf8b950 (target 0xcf8b794), taken when t0(?) != s3(=0xc) and falls through when t0(?) == s3(=0xc).
  At `bne` at 0xcf8b958 (target 0xcf8b794), taken when a1(?) != s3(=0xc) and falls through when a1(?) == s3(=0xc).
  At `bne` at 0xcf8b960 (target 0xcf8b794), taken when t1(?) != s3(=0xc) and falls through when t1(?) == s3(=0xc).
  At `bne` at 0xcf8b96c (target 0xcf8b794), taken when t2(?) != v1(=0x10) and falls through when t2(?) == v1(=0x10).
  At `bne` at 0xcf8b978 (target 0xcf8b794), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `beq` at 0xcf8b99c (target 0xcf8b790), the branch is always taken.
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xcf8a988).
  Returns v0 = 0x0 (`jr` at 0xcf8aac8).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xcf8ab18).
  Returns v0 = 0x0, f0 = ret(malloc) (`jr` at 0xcf8ab84).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xcf8ac44).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xcf8ac70).
  Returns v0 = ret(malloc), f0 = ret(malloc) (`jr` at 0xcf8aca0).
  Returns v0 = 0x0 (`jr` at 0xcf8ae1c).
  Returns v0 = 0x0, f0 = ret(malloc) (`jr` at 0xcf8b098).
  Returns v0 = ? (`jr` at 0xcf8b1fc).
  Returns v0 = ? (`jr` at 0xcf8b4d8).
  Returns v0 = 0x0, f0 = ret(free) (`jr` at 0xcf8b554).

- `glXGetVisualFromFBConfig` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8bb80 (n64).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8bb80-0xcf8bbd8 (88 bytes).
  Loads 4 bytes at a1 +0x20 (`lw` at 0xcf8bb84).
  Loads 8 bytes at abs 0xcfa7248 (`ld` at 0xcf8bba4).
  Loads 4 bytes at a1 +0x24 (`lw` at 0xcf8bbb8).
  Calls `__glXOverrideVisualGetVisualInfo` via got with a0=a0 at entry (arg0), a1=0x3, a2=sp-112, a3=sp-48, a6=[a1+32], a7=a1 at entry (arg1) (`jalr` at 0xcf8bbc0).
  At `beq` at 0xcf8bb9c (target 0xcf8bbcc), taken when a6(=[a1+32]) == 0 and falls through when a6(=[a1+32]) != 0.
  Returns v0 = ? (`jr` at 0xcf8bbd0).

- `glXChooseFBConfig` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8c2cc (n64).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8c2cc-0xcf8dc3c (6512 bytes).
  Loads 4 bytes at a2 (`lw` at 0xcf8c38c).
  Loads 8 bytes at abs 0xcfa8068 (`ldc1` at 0xcf8c3d4).
  Loads 8 bytes at abs 0xcfa8060 (`ldc1` at 0xcf8c3d8).
  3 8-byte ldc1 loads at abs 0xcfa8070, including `ldc1` at 0xcf8c444, `ldc1` at 0xcf8cf98, `ldc1` at 0xcf8d930.
  80 4-byte lw loads at ?, including `lw` at 0xcf8c464, `lw` at 0xcf8c484, `lw` at 0xcf8c4a8.
  Loads 8 bytes at abs 0xcfa7278 (`ld` at 0xcf8c4f0).
  Loads 4 bytes at a0 +0xe4 (`lw` at 0xcf8c520).
  Loads 8 bytes at ret(__glXInitialize) +0x30 (`ld` at 0xcf8c530).
  Loads 8 bytes at ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x18 (`ld` at 0xcf8c53c).
  Loads 4 bytes at ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x20 (`lw` at 0xcf8c548).
  Loads 4 bytes at [([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8 +0x48 (`lw` at 0xcf8c588).
  11 4-byte sw stores at a3, including `sw` at 0xcf8c5d4, `sw` at 0xcf8c780, `sw` at 0xcf8c868.
  2 8-byte ld loads at abs 0xcfa6d80, including `ld` at 0xcf8c820, `ld` at 0xcf8ce64.
  Stores 8 bytes from s0 at ret(malloc) (`sd` at 0xcf8c938).
  5 1-byte lbu loads at ?, including `lbu` at 0xcf8ccdc, `lbu` at 0xcf8cd30, `lbu` at 0xcf8d240.
  Loads 8 bytes at abs 0xcfa6ac0 (`ld` at 0xcf8cf24).
  Loads 8 bytes at abs 0xcfa6dd8 (`ld` at 0xcf8cf40).
  2 8-byte ld loads at abs 0xcfa6ac8, including `ld` at 0xcf8cf88, `ld` at 0xcf8cfd0.
  29 8-byte ld loads at ?, including `ld` at 0xcf8d024, `ld` at 0xcf8d03c, `ld` at 0xcf8d040.
  13 8-byte sd stores at ?, including `sd` at 0xcf8d02c, `sd` at 0xcf8d044, `sd` at 0xcf8d04c.
  21 4-byte sw stores at ?, including `sw` at 0xcf8d2c4, `sw` at 0xcf8d2cc, `sw` at 0xcf8d2d4.
  Loads 8 bytes at abs 0xcfa6d70 (`ld` at 0xcf8d460).
  8 8-byte ldc1 loads at ?, including `ldc1` at 0xcf8d83c, `ldc1` at 0xcf8da98, `ldc1` at 0xcf8dac4.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=a3 at entry (arg3) (`jalr` at 0xcf8c500).
  Calls `malloc` via got with a0=0x8, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf8c824).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf8ce70).
  Calls `(unknown callee) [0xcf87cec]` via direct with a0=unknown, a1=a1 at entry (arg1), a2=sp-600, a3=unknown (`bgezall` at 0xcf8cf34).
  Calls `strncmp` via got with a0=sp-600, a1=0xcfa8028, a2=0x7, a3=unknown (`jalr` at 0xcf8cf4c).
  Calls `(unknown callee) [0xcf8bd14]` via direct with a0=sp-584, a1=unknown, a2=0x0, a3=unknown (`bgezall` at 0xcf8d0f4).
  Calls `free` via got with a0=ret(malloc), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0xcf8d464).
  Calls `(unknown callee) [0xcf8bd14]` via direct with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`bgezall` at 0xcf8d928).
  At `beq` at 0xcf8c428 (target 0xcf8c4c4), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0xcf8c430 (target 0xcf8c4c4), taken when t0(=[a2]) == 0 and falls through when t0(=[a2]) != 0.
  At `beq` at 0xcf8c440 (target 0xcf8c488), the branch is always taken.
  At `bne` at 0xcf8c454 (target 0xcf8c610), taken when a0(?) < 0xd (signed) and falls through when a0(?) >= 0xd (signed).
  At `beq` at 0xcf8c45c (target 0xcf8c648), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xcf8c47c (target 0xcf8c4c8), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0xcf8c48c (target 0xcf8c448), taken when a7(?) < 0x27 (signed) and falls through when a7(?) >= 0x27 (signed).
  At `beq` at 0xcf8c4a0 (target 0xcf8c5d8), taken when a0(?) >= 0x28 (signed) and falls through when a0(?) < 0x28 (signed).
  At `bne` at 0xcf8c4bc (target 0xcf8c484), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `beq` at 0xcf8c4d0 (target 0xcf8c6e4), taken when v0(?) == v1(=0x8000) and falls through when v0(?) != v1(=0x8000).
  At `beq` at 0xcf8c4dc (target 0xcf8c6e4), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xcf8c510 (target 0xcf8c898), taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  At `bltz` at 0xcf8c518 (target 0xcf8c750), taken when s4(=a1) < 0 (signed) and falls through when s4(=a1) >= 0 (signed).
  At `beq` at 0xcf8c528 (target 0xcf8c750), taken when s4(=a1) >= v1(=[a0+228]) (signed) and falls through when s4(=a1) < v1(=[a0+228]) (signed).
  At `beq` at 0xcf8c544 (target 0xcf8c8d4), taken when s1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) == 0 and falls through when s1(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8) != 0.
  At `beq` at 0xcf8c54c (target 0xcf8c8d4), taken when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) == 0 and falls through when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) != 0.
  At `beq` at 0xcf8c558 (target 0xcf8ce64), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `blez` at 0xcf8c560 (target 0xcf8c5a0), taken when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed) and falls through when v0(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  At `beq` at 0xcf8c58c (target 0xcf8c820), taken when at(?) == s2(?) and falls through when at(?) != s2(?).
  At `bnel` at 0xcf8c598 (target 0xcf8c58c), taken when v1(?) != s0(?) and falls through when v1(?) == s0(?); its branch-likely delay slot `lw at,72(s0)` at 0xcf8c59c runs only when taken and is annulled on fall-through.
  At `bne` at 0xcf8c5d8 (target 0xcf8c680), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0xcf8c5e0 (target 0xcf8c70c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xcf8c608 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8c618 (target 0xcf8c6b4), taken when a0(?) < 0x8 (signed) and falls through when a0(?) >= 0x8 (signed).
  At `beq` at 0xcf8c620 (target 0xcf8c78c), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xcf8c640 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8c64c (target 0xcf8c7b8), taken when a0(?) < 0x22 (signed) and falls through when a0(?) >= 0x22 (signed).
  At `beq` at 0xcf8c654 (target 0xcf8c950), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf8c678 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8c680 (target 0xcf8c7e8), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bne` at 0xcf8c690 (target 0xcf8c980), taken when a2(=0x8013) < a0(?) (signed) and falls through when a2(=0x8013) >= a0(?) (signed).
  At `beq` at 0xcf8c6ac (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8c6b4 (target 0xcf8c874), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xcf8c6bc (target 0xcf8ca90), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xcf8c6cc (target 0xcf8cec0), taken when a0(?) == s8(=-0x1) and falls through when a0(?) != s8(=-0x1).
  At `beq` at 0xcf8c6dc (target 0xcf8c47c), the branch is always taken.
  At `beq` at 0xcf8c704 (target 0xcf8c4e4), the branch is always taken.
  At `bne` at 0xcf8c714 (target 0xcf8c9b0), taken when a0(?) < v1(=0x802e) (signed) and falls through when a0(?) >= v1(=0x802e) (signed).
  At `bne` at 0xcf8c720 (target 0xcf8cabc), taken when a4(=0x802e) < a0(?) (signed) and falls through when a4(=0x802e) >= a0(?) (signed).
  At `beq` at 0xcf8c748 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8c78c (target 0xcf8c9f0), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xcf8c798 (target 0xcf8cb30), taken when a0(?) >= 0xc (signed) and falls through when a0(?) < 0xc (signed).
  At `beq` at 0xcf8c7b0 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8c7b8 (target 0xcf8ca20), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0xcf8c7c8 (target 0xcf8cb58), taken when a0(?) >= 0x11 (signed) and falls through when a0(?) < 0x11 (signed).
  At `beq` at 0xcf8c7e0 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8c7f0 (target 0xcf8ca48), taken when a0(?) < a5(=0x8010) (signed) and falls through when a0(?) >= a5(=0x8010) (signed).
  At `bne` at 0xcf8c808 (target 0xcf8cbc4), taken when at(=0x8010) < a0(?) (signed) and falls through when at(=0x8010) >= a0(?) (signed).
  At `beq` at 0xcf8c818 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8c830 (target 0xcf8c90c), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `bne` at 0xcf8c878 (target 0xcf8ca6c), taken when a0(?) < 0x3 (signed) and falls through when a0(?) >= 0x3 (signed).
  At `beq` at 0xcf8c880 (target 0xcf8cafc), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xcf8c890 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8c950 (target 0xcf8cb94), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xcf8c958 (target 0xcf8ccf8), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf8c978 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8c988 (target 0xcf8cbf8), taken when a0(?) < v1(=0x8018) (signed) and falls through when a0(?) >= v1(=0x8018) (signed).
  At `bne` at 0xcf8c998 (target 0xcf8cd28), taken when a4(=0x8018) < a0(?) (signed) and falls through when a4(=0x8018) >= a0(?) (signed).
  At `beq` at 0xcf8c9a8 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8c9b0 (target 0xcf8cc20), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xcf8c9c0 (target 0xcf8cd4c), taken when v1(=0x802c) < a0(?) (signed) and falls through when v1(=0x802c) >= a0(?) (signed).
  At `beq` at 0xcf8c9e8 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8c9f0 (target 0xcf8cc5c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xcf8c9fc (target 0xcf8cafc), taken when a0(?) >= 0xb (signed) and falls through when a0(?) < 0xb (signed).
  At `beq` at 0xcf8ca18 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8ca20 (target 0xcf8cc80), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xcf8ca28 (target 0xcf8cafc), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xcf8ca40 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8ca48 (target 0xcf8cca4), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bne` at 0xcf8ca54 (target 0xcf8cafc), taken when a5(=0x800b) < a0(?) (signed) and falls through when a5(=0x800b) >= a0(?) (signed).
  At `beq` at 0xcf8ca64 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8ca70 (target 0xcf8cafc), taken when a0(?) != v1(=0x2) and falls through when a0(?) == v1(=0x2).
  At `beq` at 0xcf8ca88 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8ca90 (target 0xcf8cccc), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xcf8ca9c (target 0xcf8cafc), taken when a0(?) >= 0x8 (signed) and falls through when a0(?) < 0x8 (signed).
  At `beq` at 0xcf8cab4 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cac4 (target 0xcf8cd7c), taken when a0(?) < a4(=0x186a0) (signed) and falls through when a0(?) >= a4(=0x186a0) (signed).
  At `bne` at 0xcf8cad4 (target 0xcf8cec8), taken when a5(=0x186a0) < a0(?) (signed) and falls through when a5(=0x186a0) >= a0(?) (signed).
  At `beq` at 0xcf8caf4 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cb34 (target 0xcf8cafc), taken when a0(?) != a5(=0xc) and falls through when a0(?) == a5(=0xc).
  At `beq` at 0xcf8cb50 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cb5c (target 0xcf8cdc0), taken when a0(?) < 0x20 (signed) and falls through when a0(?) >= 0x20 (signed).
  At `beq` at 0xcf8cb68 (target 0xcf8cafc), taken when a0(?) >= 0x21 (signed) and falls through when a0(?) < 0x21 (signed).
  At `beq` at 0xcf8cb8c (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cb98 (target 0xcf8cde4), taken when a0(?) < 0x24 (signed) and falls through when a0(?) >= 0x24 (signed).
  At `beq` at 0xcf8cba0 (target 0xcf8cafc), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xcf8cbbc (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cbc4 (target 0xcf8ce00), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bne` at 0xcf8cbd4 (target 0xcf8cafc), taken when a5(=0x8012) < a0(?) (signed) and falls through when a5(=0x8012) >= a0(?) (signed).
  At `beq` at 0xcf8cbf0 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cbf8 (target 0xcf8ce18), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bne` at 0xcf8cc08 (target 0xcf8cafc), taken when a5(=0x8017) < a0(?) (signed) and falls through when a5(=0x8017) >= a0(?) (signed).
  At `beq` at 0xcf8cc18 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cc24 (target 0xcf8ce30), taken when a0(?) < v1(=0x802b) (signed) and falls through when a0(?) >= v1(=0x802b) (signed).
  At `bne` at 0xcf8cc30 (target 0xcf8cafc), taken when a4(=0x802b) < a0(?) (signed) and falls through when a4(=0x802b) >= a0(?) (signed).
  At `beq` at 0xcf8cc54 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cc5c (target 0xcf8cafc), taken when a0(?) != v1(=0x9) and falls through when a0(?) == v1(=0x9).
  At `beq` at 0xcf8cc78 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cc84 (target 0xcf8cafc), taken when a0(?) != v1(=0xe) and falls through when a0(?) == v1(=0xe).
  At `beq` at 0xcf8cc9c (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cca8 (target 0xcf8cafc), taken when a0(?) != v1(=0x28) and falls through when a0(?) == v1(=0x28).
  At `beq` at 0xcf8ccc4 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cccc (target 0xcf8cafc), taken when a0(?) != at(=0x6) and falls through when a0(?) == at(=0x6).
  At `beq` at 0xcf8ccf0 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8ccfc (target 0xcf8cafc), taken when a0(?) != a5(=0x26) and falls through when a0(?) == a5(=0x26).
  At `beq` at 0xcf8cd20 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cd28 (target 0xcf8cafc), taken when a0(?) != a5(=0x8028) and falls through when a0(?) == a5(=0x8028).
  At `beq` at 0xcf8cd44 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cd4c (target 0xcf8cafc), taken when a0(?) != a5(=0x802d) and falls through when a0(?) == a5(=0x802d).
  At `beq` at 0xcf8cd74 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cd84 (target 0xcf8cef0), taken when a0(?) < a4(=0x8030) (signed) and falls through when a0(?) >= a4(=0x8030) (signed).
  At `bne` at 0xcf8cd90 (target 0xcf8cafc), taken when a5(=0x8030) < a0(?) (signed) and falls through when a5(=0x8030) >= a0(?) (signed).
  At `beq` at 0xcf8cdb8 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cdc0 (target 0xcf8cafc), taken when a0(?) != a4(=0x11) and falls through when a0(?) == a4(=0x11).
  At `beq` at 0xcf8cddc (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cde8 (target 0xcf8cafc), taken when a0(?) != a4(=0x23) and falls through when a0(?) == a4(=0x23).
  At `beq` at 0xcf8cdf8 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8ce00 (target 0xcf8cafc), taken when a0(?) != a5(=0x8011) and falls through when a0(?) == a5(=0x8011).
  At `beq` at 0xcf8ce10 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8ce18 (target 0xcf8cafc), taken when a0(?) != v1(=0x8016) and falls through when a0(?) == v1(=0x8016).
  At `beq` at 0xcf8ce28 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8ce34 (target 0xcf8cafc), taken when a0(?) != a5(=0x802a) and falls through when a0(?) == a5(=0x802a).
  At `beq` at 0xcf8ce5c (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8ce7c (target 0xcf8cf24), taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  At `beq` at 0xcf8cec0 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cecc (target 0xcf8cafc), taken when a0(?) != a5(=0x186a1) and falls through when a0(?) == a5(=0x186a1).
  At `beq` at 0xcf8cee8 (target 0xcf8c47c), the branch is always taken.
  At `bne` at 0xcf8cef4 (target 0xcf8cafc), taken when a0(?) != a5(=0x802f) and falls through when a0(?) == a5(=0x802f).
  At `beq` at 0xcf8cf1c (target 0xcf8c47c), the branch is always taken.
  At `beq` at 0xcf8cf3c (target 0xcf8cf5c), taken when v0(=ret(0xcf87cec)) == 0 and falls through when v0(=ret(0xcf87cec)) != 0.
  At `beq` at 0xcf8cf54 (target 0xcf8d3ec), taken when v0(=ret(strncmp)) == 0 and falls through when v0(=ret(strncmp)) != 0.
  At `beq` at 0xcf8cf5c (target 0xcf8cfb4), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0xcf8cf64 (target 0xcf8cfb4), taken when at(?) == 0 and falls through when at(?) != 0.
  At `blez` at 0xcf8cf6c (target 0xcf8d29c), taken when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed) and falls through when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  At `beq` at 0xcf8cfac (target 0xcf8d1e0), the branch is always taken.
  At `blez` at 0xcf8cfb4 (target 0xcf8d188), taken when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) <= 0 (signed) and falls through when s2(=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32]) > 0 (signed).
  At `beq` at 0xcf8cfec (target 0xcf8d074), the branch is always taken.
  At `beq` at 0xcf8d004 (target 0xcf8d11c), taken when s1(?) >= s7(?) (signed) and falls through when s1(?) < s7(?) (signed).
  At `beq` at 0xcf8d014 (target 0xcf8d030), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0xcf8d028 (target 0xcf8d01c), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0xcf8d030 (target 0xcf8d064), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0xcf8d05c (target 0xcf8d03c), taken when v0(?) != a0(?) and falls through when v0(?) == a0(?).
  At `beq` at 0xcf8d070 (target 0xcf8d188), taken when s0(?) == at(?) and falls through when s0(?) != at(?).
  At `bgtz` at 0xcf8d0b0 (target 0xcf8d09c), taken when a0(?) > 0 (signed) and falls through when a0(?) <= 0 (signed).
  At `beq` at 0xcf8d0bc (target 0xcf8d0d0), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xcf8d0c8 (target 0xcf8d128), taken when a5(?) == at(=0xc) and falls through when a5(?) != at(=0xc).
  At `beq` at 0xcf8d0d0 (target 0xcf8cff8), taken when s3(=ret(malloc)) == s6(?) and falls through when s3(=ret(malloc)) != s6(?).
  At `bne` at 0xcf8d10c (target 0xcf8d0dc), taken when s1(?) != s4(?) and falls through when s1(?) == s4(?).
  At `beq` at 0xcf8d114 (target 0xcf8cff8), the branch is always taken.
  At `beq` at 0xcf8d120 (target 0xcf8d064), the branch is always taken.
  At `bne` at 0xcf8d130 (target 0xcf8d0d0), taken when a4(?) != a5(=0xc) and falls through when a4(?) == a5(=0xc).
  At `bne` at 0xcf8d140 (target 0xcf8d0d0), taken when at(?) != v1(=0xc) and falls through when at(?) == v1(=0xc).
  At `bne` at 0xcf8d150 (target 0xcf8d0d0), taken when a4(?) != a5(=0xc) and falls through when a4(?) == a5(=0xc).
  At `bne` at 0xcf8d160 (target 0xcf8d0d0), taken when at(?) != v1(=0x10) and falls through when at(?) == v1(=0x10).
  At `bne` at 0xcf8d168 (target 0xcf8d0d0), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0xcf8d180 (target 0xcf8d0d0), the branch is always taken.
  At `beq` at 0xcf8d1d0 (target 0xcf8d22c), the branch is always taken.
  At `beq` at 0xcf8d1dc (target 0xcf8d29c), taken when a0(?) == s4(?) and falls through when a0(?) != s4(?).
  At `beq` at 0xcf8d20c (target 0xcf8d1cc), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xcf8d21c (target 0xcf8d1cc), taken when a4(?) >= v0(?) (signed) and falls through when a4(?) < v0(?) (signed).
  At `beq` at 0xcf8d224 (target 0xcf8d1dc), the branch is always taken.
  At `bne` at 0xcf8d230 (target 0xcf8d1d8), taken when a5(?) != at(?) and falls through when a5(?) == at(?).
  At `beq` at 0xcf8d238 (target 0xcf8d250), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf8d244 (target 0xcf8d250), taken when a4(?) == a5(?) and falls through when a4(?) != a5(?).
  At `bne` at 0xcf8d250 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d258 (target 0xcf8d274), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xcf8d268 (target 0xcf8d274), taken when v1(?) == a4(?) and falls through when v1(?) != a4(?).
  At `bne` at 0xcf8d274 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d27c (target 0xcf8d3bc), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xcf8d28c (target 0xcf8d3c0), taken when a5(?) >= v0(?) (signed) and falls through when a5(?) < v0(?) (signed).
  At `beq` at 0xcf8d294 (target 0xcf8d3c0), the branch is always taken.
  At `blez` at 0xcf8d29c (target 0xcf8d460), taken when a3(?) <= 0 (signed) and falls through when a3(?) > 0 (signed).
  At `beq` at 0xcf8d2a4 (target 0xcf8d37c), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bltz` at 0xcf8d2b0 (target 0xcf8d2e0), taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  At `bltz` at 0xcf8d2e4 (target 0xcf8d314), taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  At `bltz` at 0xcf8d318 (target 0xcf8d348), taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  At `bltz` at 0xcf8d34c (target 0xcf8d37c), taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  At `bne` at 0xcf8d3c0 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d3c8 (target 0xcf8d430), taken when v1(?) == s8(=-0x1) and falls through when v1(?) != s8(=-0x1).
  At `beq` at 0xcf8d3dc (target 0xcf8d434), taken when a4(?) >= a5(?) (signed) and falls through when a4(?) < a5(?) (signed).
  At `beq` at 0xcf8d3e4 (target 0xcf8d434), the branch is always taken.
  At `bne` at 0xcf8d3f4 (target 0xcf8cf5c), taken when at(?) != v1(=0xc) and falls through when at(?) == v1(=0xc).
  At `bne` at 0xcf8d404 (target 0xcf8cf5c), taken when a5(?) != at(=0xc) and falls through when a5(?) == at(=0xc).
  At `bne` at 0xcf8d410 (target 0xcf8cf5c), taken when v1(?) != a4(=0xc) and falls through when v1(?) == a4(=0xc).
  At `beq` at 0xcf8d428 (target 0xcf8cf5c), the branch is always taken.
  At `bne` at 0xcf8d434 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d43c (target 0xcf8d4ac), taken when v1(?) == s8(=-0x1) and falls through when v1(?) != s8(=-0x1).
  At `beq` at 0xcf8d450 (target 0xcf8d4b0), taken when a4(?) >= a5(?) (signed) and falls through when a4(?) < a5(?) (signed).
  At `beq` at 0xcf8d458 (target 0xcf8d4b0), the branch is always taken.
  At `bne` at 0xcf8d4b0 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d4b8 (target 0xcf8d4dc), taken when at(?) == s8(=-0x1) and falls through when at(?) != s8(=-0x1).
  At `beq` at 0xcf8d4cc (target 0xcf8d4e0), taken when v1(?) >= a4(?) (signed) and falls through when v1(?) < a4(?) (signed).
  At `beq` at 0xcf8d4d4 (target 0xcf8d4e0), the branch is always taken.
  At `bne` at 0xcf8d4e0 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d4e8 (target 0xcf8d508), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xcf8d4f8 (target 0xcf8d50c), taken when a5(?) >= v0(?) (signed) and falls through when a5(?) < v0(?) (signed).
  At `beq` at 0xcf8d500 (target 0xcf8d50c), the branch is always taken.
  At `bne` at 0xcf8d50c (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d514 (target 0xcf8d538), taken when at(?) == s8(=-0x1) and falls through when at(?) != s8(=-0x1).
  At `beq` at 0xcf8d528 (target 0xcf8d53c), taken when v1(?) >= a4(?) (signed) and falls through when v1(?) < a4(?) (signed).
  At `beq` at 0xcf8d530 (target 0xcf8d53c), the branch is always taken.
  At `bne` at 0xcf8d53c (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d544 (target 0xcf8d564), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xcf8d554 (target 0xcf8d568), taken when a5(?) >= v0(?) (signed) and falls through when a5(?) < v0(?) (signed).
  At `beq` at 0xcf8d55c (target 0xcf8d568), the branch is always taken.
  At `bne` at 0xcf8d568 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d570 (target 0xcf8d590), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xcf8d580 (target 0xcf8d594), taken when at(?) >= v0(?) (signed) and falls through when at(?) < v0(?) (signed).
  At `beq` at 0xcf8d588 (target 0xcf8d594), the branch is always taken.
  At `bne` at 0xcf8d594 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d59c (target 0xcf8d5bc), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xcf8d5ac (target 0xcf8d5c0), taken when v1(?) >= v0(?) (signed) and falls through when v1(?) < v0(?) (signed).
  At `beq` at 0xcf8d5b4 (target 0xcf8d5c0), the branch is always taken.
  At `bne` at 0xcf8d5c0 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d5c8 (target 0xcf8d5e8), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xcf8d5d8 (target 0xcf8d5ec), taken when a4(?) >= v0(?) (signed) and falls through when a4(?) < v0(?) (signed).
  At `beq` at 0xcf8d5e0 (target 0xcf8d5ec), the branch is always taken.
  At `bne` at 0xcf8d5ec (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d5f4 (target 0xcf8d614), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xcf8d604 (target 0xcf8d618), taken when a5(?) >= v0(?) (signed) and falls through when a5(?) < v0(?) (signed).
  At `beq` at 0xcf8d60c (target 0xcf8d618), the branch is always taken.
  At `bne` at 0xcf8d618 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d620 (target 0xcf8d63c), taken when s6(=one of 0x0, 0x1) == 0 and falls through when s6(=one of 0x0, 0x1) != 0.
  At `beq` at 0xcf8d630 (target 0xcf8d63c), taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  At `bne` at 0xcf8d63c (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d644 (target 0xcf8d660), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xcf8d650 (target 0xcf8d664), taken when a4(?) == v0(?) and falls through when a4(?) != v0(?).
  At `beq` at 0xcf8d658 (target 0xcf8d664), the branch is always taken.
  At `bne` at 0xcf8d664 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d66c (target 0xcf8d688), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xcf8d67c (target 0xcf8d688), taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  At `bne` at 0xcf8d688 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d690 (target 0xcf8d6ac), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xcf8d6a0 (target 0xcf8d6ac), taken when a5(?) == at(?) and falls through when a5(?) != at(?).
  At `bne` at 0xcf8d6ac (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d6b4 (target 0xcf8d6d0), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf8d6c4 (target 0xcf8d6d0), taken when a4(?) == a5(?) and falls through when a4(?) != a5(?).
  At `bne` at 0xcf8d6d0 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d6d8 (target 0xcf8d6f4), taken when s7(=one of 0x0, 0x1) == 0 and falls through when s7(=one of 0x0, 0x1) != 0.
  At `beq` at 0xcf8d6e8 (target 0xcf8d6f4), taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  At `bne` at 0xcf8d6f4 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d6fc (target 0xcf8d718), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xcf8d70c (target 0xcf8d718), taken when a5(?) == at(?) and falls through when a5(?) != at(?).
  At `bne` at 0xcf8d718 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d720 (target 0xcf8d73c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf8d730 (target 0xcf8d73c), taken when a4(?) == a5(?) and falls through when a4(?) != a5(?).
  At `bne` at 0xcf8d73c (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d744 (target 0xcf8d760), taken when a6(?) == s8(=-0x1) and falls through when a6(?) != s8(=-0x1).
  At `beq` at 0xcf8d754 (target 0xcf8d760), taken when at(?) == a6(?) and falls through when at(?) != a6(?).
  At `bne` at 0xcf8d760 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d768 (target 0xcf8d788), taken when v0(?) == s8(=-0x1) and falls through when v0(?) != s8(=-0x1).
  At `beq` at 0xcf8d778 (target 0xcf8d78c), taken when v1(?) == v0(?) and falls through when v1(?) != v0(?).
  At `beq` at 0xcf8d780 (target 0xcf8d78c), the branch is always taken.
  At `bne` at 0xcf8d78c (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d794 (target 0xcf8d7a8), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xcf8d7a0 (target 0xcf8d7fc), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0xcf8d7a8 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d7b0 (target 0xcf8d7d0), taken when s8(=-0x1) == v0(?) and falls through when s8(=-0x1) != v0(?).
  At `beq` at 0xcf8d7c0 (target 0xcf8d7d4), taken when at(?) >= v0(?) (unsigned) and falls through when at(?) < v0(?) (unsigned).
  At `beq` at 0xcf8d7c8 (target 0xcf8d7d4), the branch is always taken.
  At `bne` at 0xcf8d7d4 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d7dc (target 0xcf8d804), taken when s8(=-0x1) == v0(?) and falls through when s8(=-0x1) != v0(?).
  At `beq` at 0xcf8d7ec (target 0xcf8d808), taken when v1(?) >= v0(?) (unsigned) and falls through when v1(?) < v0(?) (unsigned).
  At `beq` at 0xcf8d7f4 (target 0xcf8d808), the branch is always taken.
  At `beq` at 0xcf8d7fc (target 0xcf8d7a8), the branch is always taken.
  At `bne` at 0xcf8d808 (target 0xcf8d1d8), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d810 (target 0xcf8da80), taken when s8(=-0x1) == a6(?) and falls through when s8(=-0x1) != a6(?).
  At `beq` at 0xcf8d828 (target 0xcf8d858), taken when v0(?) >= 0x1 (unsigned) and falls through when v0(?) < 0x1 (unsigned).
  At `bc1t` at 0xcf8d834 (target 0xcf8d850), taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8d830) and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8d830)).
  At `bc1f` at 0xcf8d844 (target 0xcf8d850), taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  At `beq` at 0xcf8d850 (target 0xcf8da88), taken when a6(=one of 0x0, 0x1) == 0 and falls through when a6(=one of 0x0, 0x1) != 0.
  At `beq` at 0xcf8d858 (target 0xcf8d1d8), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xcf8d860 (target 0xcf8d1d8), taken when t1(=one of 0x0, 0x1) != 0 and falls through when t1(=one of 0x0, 0x1) == 0.
  At `bne` at 0xcf8d868 (target 0xcf8d1d8), taken when t9(=one of 0x0, 0x1) != 0 and falls through when t9(=one of 0x0, 0x1) == 0.
  At `bne` at 0xcf8d870 (target 0xcf8d1d8), taken when t0(=one of 0x0, 0x1) != 0 and falls through when t0(=one of 0x0, 0x1) == 0.
  At `bne` at 0xcf8d878 (target 0xcf8d1d8), taken when t8(=one of 0x0, 0x1) != 0 and falls through when t8(=one of 0x0, 0x1) == 0.
  At `bne` at 0xcf8d880 (target 0xcf8d1d8), taken when a7(=one of 0x0, 0x1) != 0 and falls through when a7(=one of 0x0, 0x1) == 0.
  At `bne` at 0xcf8d888 (target 0xcf8d1d8), taken when t3(=one of 0x0, 0x1) != 0 and falls through when t3(=one of 0x0, 0x1) == 0.
  At `bne` at 0xcf8d890 (target 0xcf8d1d8), taken when ra(=one of 0x0, 0x1) != 0 and falls through when ra(=one of 0x0, 0x1) == 0.
  At `bne` at 0xcf8d898 (target 0xcf8d1d8), taken when t2(=one of 0x0, 0x1) != 0 and falls through when t2(=one of 0x0, 0x1) == 0.
  At `beq` at 0xcf8d8b8 (target 0xcf8d8d0), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf8d8c8 (target 0xcf8dbd4), taken when a5(?) == at(=0xc) and falls through when a5(?) != at(=0xc).
  At `beq` at 0xcf8d8d0 (target 0xcf8d96c), taken when s3(=ret(malloc)) == a2(?) and falls through when s3(=ret(malloc)) != a2(?).
  At `bne` at 0xcf8d960 (target 0xcf8d8ec), taken when a6(?) != a4(?) and falls through when a6(?) == a4(?).
  At `beq` at 0xcf8d96c (target 0xcf8dbc8), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xcf8d984 (target 0xcf8d9a0), taken when (t1(?) & 0x3) == 0 and falls through when (t1(?) & 0x3) != 0.
  At `bne` at 0xcf8d998 (target 0xcf8d98c), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0xcf8d9a4 (target 0xcf8d9d8), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0xcf8d9d0 (target 0xcf8d9b0), taken when v0(?) != a7(?) and falls through when v0(?) == a7(?).
  At `beq` at 0xcf8d9dc (target 0xcf8da54), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bne` at 0xcf8d9ec (target 0xcf8da00), taken when t0(?) < a6(?) (signed) and falls through when t0(?) >= a6(?) (signed).
  At `beq` at 0xcf8d9f4 (target 0xcf8da00), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xcf8da08 (target 0xcf8da1c), taken when t0(?) < a6(?) (signed) and falls through when t0(?) >= a6(?) (signed).
  At `beq` at 0xcf8da10 (target 0xcf8da1c), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0xcf8da24 (target 0xcf8da38), taken when t0(?) < a6(?) (signed) and falls through when t0(?) >= a6(?) (signed).
  At `beq` at 0xcf8da2c (target 0xcf8da38), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bne` at 0xcf8da40 (target 0xcf8da54), taken when t0(?) < a6(?) (signed) and falls through when t0(?) >= a6(?) (signed).
  At `beq` at 0xcf8da48 (target 0xcf8da54), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf8da58 (target 0xcf8dbc0), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bltz` at 0xcf8da64 (target 0xcf8dbbc), taken when at(?) < 0 (signed) and falls through when at(?) >= 0 (signed).
  At `bne` at 0xcf8da70 (target 0xcf8da60), taken when v0(?) != v1(?) and falls through when v0(?) == v1(?).
  At `beq` at 0xcf8da78 (target 0xcf8dbc0), the branch is always taken.
  At `beq` at 0xcf8da80 (target 0xcf8d858), the branch is always taken.
  At `bc1t` at 0xcf8da90 (target 0xcf8daac), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1f` at 0xcf8daa0 (target 0xcf8daac), taken when FP condition code 3 is false and falls through when FP condition code 3 is true.
  At `bne` at 0xcf8daac (target 0xcf8d858), taken when a6(=one of 0x0, 0x1) != 0 and falls through when a6(=one of 0x0, 0x1) == 0.
  At `bc1t` at 0xcf8dabc (target 0xcf8dad8), taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8dab8) and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8dab8)).
  At `bc1f` at 0xcf8dacc (target 0xcf8dad8), taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  At `bne` at 0xcf8dad8 (target 0xcf8d858), taken when a6(=one of 0x0, 0x1) != 0 and falls through when a6(=one of 0x0, 0x1) == 0.
  At `bc1t` at 0xcf8dae8 (target 0xcf8db04), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1f` at 0xcf8daf8 (target 0xcf8db04), taken when FP condition code 3 is false and falls through when FP condition code 3 is true.
  At `bne` at 0xcf8db04 (target 0xcf8d858), taken when a6(=one of 0x0, 0x1) != 0 and falls through when a6(=one of 0x0, 0x1) == 0.
  At `bc1t` at 0xcf8db14 (target 0xcf8db30), taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8db10) and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8db10)).
  At `bc1f` at 0xcf8db24 (target 0xcf8db30), taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  At `bne` at 0xcf8db30 (target 0xcf8d858), taken when a6(=one of 0x0, 0x1) != 0 and falls through when a6(=one of 0x0, 0x1) == 0.
  At `bc1t` at 0xcf8db40 (target 0xcf8db5c), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1f` at 0xcf8db50 (target 0xcf8db5c), taken when FP condition code 3 is false and falls through when FP condition code 3 is true.
  At `bne` at 0xcf8db5c (target 0xcf8d858), taken when a6(=one of 0x0, 0x1) != 0 and falls through when a6(=one of 0x0, 0x1) == 0.
  At `bc1t` at 0xcf8db6c (target 0xcf8db88), taken when f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8db68) and falls through when not (f5 == f4(=0x41efffffffe00000) (c.eq.d at 0xcf8db68)).
  At `bc1f` at 0xcf8db7c (target 0xcf8db88), taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  At `bne` at 0xcf8db88 (target 0xcf8d858), taken when a6(=one of 0x0, 0x1) != 0 and falls through when a6(=one of 0x0, 0x1) == 0.
  At `bc1t` at 0xcf8db98 (target 0xcf8dbb4), taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  At `bc1f` at 0xcf8dba8 (target 0xcf8dbb4), taken when FP condition code 3 is false and falls through when FP condition code 3 is true.
  At `beq` at 0xcf8dbb4 (target 0xcf8d858), the branch is always taken.
  At `beq` at 0xcf8dbc0 (target 0xcf8d1d8), the branch is always taken.
  At `beq` at 0xcf8dbcc (target 0xcf8d9d8), the branch is always taken.
  At `bne` at 0xcf8dbdc (target 0xcf8d8d0), taken when at(?) != v1(=0xc) and falls through when at(?) == v1(=0xc).
  At `bne` at 0xcf8dbec (target 0xcf8d8d0), taken when a4(?) != a5(=0xc) and falls through when a4(?) == a5(=0xc).
  At `bne` at 0xcf8dbfc (target 0xcf8d8d0), taken when at(?) != v1(=0xc) and falls through when at(?) == v1(=0xc).
  At `bne` at 0xcf8dc0c (target 0xcf8d8d0), taken when a4(?) != a5(=0x10) and falls through when a4(?) == a5(=0x10).
  At `bne` at 0xcf8dc14 (target 0xcf8d8d0), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xcf8dc34 (target 0xcf8d8d0), the branch is always taken.
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xcf8c5d0).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xcf8c784).
  Returns v0 = 0x0, f0 = ret(malloc) (`jr` at 0xcf8c86c).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xcf8c8cc).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xcf8c904).
  Returns v0 = ret(malloc), f0 = ret(malloc) (`jr` at 0xcf8c948).
  Returns v0 = 0x0 (`jr` at 0xcf8cb28).
  Returns v0 = 0x0, f0 = ret(malloc) (`jr` at 0xcf8ceb8).
  Returns v0 = ret(malloc) (`jr` at 0xcf8d1c4).
  Returns v0 = ret(malloc) (`jr` at 0xcf8d3b4).
  Returns v0 = 0x0, f0 = ret(free) (`jr` at 0xcf8d4a4).
  The instructions from 0xcf8cff4 to 0xcf8cff4 are not reached by any path from the entry, and their branches are not listed.

- `glXGetFBConfigs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8dc3c (n64).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8dc3c-0xcf8ddcc (400 bytes).
  Loads 8 bytes at abs 0xcfa7278 (`ld` at 0xcf8dc54).
  Loads 4 bytes at a0 +0xe4 (`lw` at 0xcf8dc7c).
  Loads 8 bytes at ret(__glXInitialize) +0x30 (`ld` at 0xcf8dca0).
  Loads 8 bytes at abs 0xcfa6d80 (`ld` at 0xcf8dca8).
  Loads 4 bytes at ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x20 (`lw` at 0xcf8dcb0).
  Loads 8 bytes at ([ret(__glXInitialize)+48]:8 + (a1 << 0x6)) +0x18 (`ld` at 0xcf8dcb4).
  9 8-byte sd stores at ?, including `sd` at 0xcf8dd18, `sd` at 0xcf8dd48, `sd` at 0xcf8dd50.
  2 4-byte sw stores at a2, including `sw` at 0xcf8dd84, `sw` at 0xcf8ddb0.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf8dc64).
  Calls `malloc` via got with a0=([([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+32] << 0x3), a1=[([ret(__glXInitialize)+48]:8 + (a1 << 0x6))+24]:8, a2=(a1 << 0x6), a3=unknown (`jalr` at 0xcf8dcc0).
  At `beq` at 0xcf8dc6c (target 0xcf8dd94), taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  At `bltz` at 0xcf8dc74 (target 0xcf8dc8c), taken when s0(=a1) < 0 (signed) and falls through when s0(=a1) >= 0 (signed).
  At `bne` at 0xcf8dc84 (target 0xcf8dca0), taken when s0(=a1) < v1(=[a0+228]) (signed) and falls through when s0(=a1) >= v1(=[a0+228]) (signed).
  At `beq` at 0xcf8dcd0 (target 0xcf8ddac), taken when v0(=ret(malloc)) == 0 and falls through when v0(=ret(malloc)) != 0.
  At `blez` at 0xcf8dce8 (target 0xcf8dd84), taken when a0(?) <= 0 (signed) and falls through when a0(?) > 0 (signed).
  At `beq` at 0xcf8dd08 (target 0xcf8dd24), taken when (a0(?) & 0x7) == 0 and falls through when (a0(?) & 0x7) != 0.
  At `bne` at 0xcf8dd1c (target 0xcf8dd10), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `beq` at 0xcf8dd30 (target 0xcf8dd84), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xcf8dd7c (target 0xcf8dd3c), taken when a1(?) != a5(?) and falls through when a1(?) == a5(?).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xcf8dc98).
  Returns v0 = ret(malloc), f0 = ret(malloc) (`jr` at 0xcf8dd8c).
  Returns v0 = 0x0, f0 = ret(__glXInitialize) (`jr` at 0xcf8dda4).
  Returns v0 = 0x0, f0 = ret(malloc) (`jr` at 0xcf8ddc4).

- `glXCreateNewContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8e020 (n64).
  Evidence grade: established.
  Exact build: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8e020-0xcf8e074 (84 bytes).
  Loads 8 bytes at abs 0xcfa6ac0 (`ld` at 0xcf8e040).
  Calls `(unknown callee) [0xcf856c8]` via register-constant with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=0x0, a7=0x0 (`jalr` at 0xcf8e05c).
  Returns v0 = ret(0xcf856c8), f0 = ret(0xcf856c8) (`jr` at 0xcf8e06c).
