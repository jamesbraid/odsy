# Instruction readings from hostfacts

Each entry records selected software behavior from its exact binary range. The readings are established for those binaries and do not establish hardware behavior.

- `crm_setmon` in `usr/gfx/setmon` at 0x1000e40c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000e40c-0x1000f064 (3160 bytes).
  It occupies 3160 bytes.
  2 such `lw` accesses load 4 bytes from sym(info_length) +0x0, including `lw` at 0x1000e478, `lw` at 0x1000e49c.
  The `lbu` at 0x1000e4b8 loads 1 byte from ret(malloc) +0x2b.
  3 such `lw` accesses load 4 bytes from sym(forceFlag) +0x0, including `lw` at 0x1000e4c8, `lw` at 0x1000e4e0, `lw` at 0x1000e4fc.
  The `lw` at 0x1000e4d8 loads 4 bytes from sym(changeFlag) +0x0.
  7 such `lw` accesses load 4 bytes from sym(verboseFlag) +0x0, including `lw` at 0x1000e4f0, `lw` at 0x1000e6e0, `lw` at 0x1000e76c.
  The `lw` at 0x1000e570 loads 4 bytes from table(0x10039bb0) +0x0.
  The `lw` at 0x1000e5a8 loads 4 bytes from sym(syncNone) +0x0.
  The `lw` at 0x1000e5e8 loads 4 bytes from sym(writeFlag) +0x0.
  2 such `lw` accesses load 4 bytes from sym(pipenum) +0x0, including `lw` at 0x1000e5f8, `lw` at 0x1000ea58.
  2 such `lw` accesses load 4 bytes from sym(Crm_FBufDepthDefault) +0x0, including `lw` at 0x1000e604, `lw` at 0x1000eee8.
  The `lw` at 0x1000e610 loads 4 bytes from (sym(Crm_TimingTableFiles) + ([sym(pipenum)] << 0x2)) +0x0.
  The `sb` at 0x1000e6a4 stores 1 byte to abs 0x10042f28.
  The `lw` at 0x1000e830 loads 4 bytes from sym(errno) +0x0.
  The `sw` at 0x1000ea3c stores 4 bytes to sym(dssdpy) +0x0.
  7 such `lw` accesses load 4 bytes from sym(dssdpy) +0x0, including `lw` at 0x1000ea5c, `lw` at 0x1000eaf0, `lw` at 0x1000eb14.
  The `sw` at 0x1000ea60 stores 4 bytes to sym(dssscreen) +0x0.
  The `lw` at 0x1000ea68 loads 4 bytes from [sym(dssdpy)] +0x8c.
  The `lw` at 0x1000ea84 loads 4 bytes from ([[sym(dssdpy)]+140] + ((([sym(pipenum)] << 0x2) + [sym(pipenum)]) << 0x4)) +0x8.
  The `sw` at 0x1000ea90 stores 4 bytes to sym(dssroot) +0x0.
  4 such `lw` accesses load 4 bytes from sym(dssroot) +0x0, including `lw` at 0x1000eae8, `lw` at 0x1000eb08, `lw` at 0x1000eff0.
  2 such `lw` accesses load 4 bytes from sym(dssscreen) +0x0, including `lw` at 0x1000ecc4, `lw` at 0x1000ee58.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x1000ed04, `lwc1` at 0x1000ee18.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1000ed44, `lw` at 0x1000ed64, `lw` at 0x1000ed68.
  The `jalr` at 0x1000e444 calls open with a0=0x100399d0, a1=0x802, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000e474 calls malloc with a0=[sym(info_length)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e4a4 calls ioctl with a0=ret(open), a1=0x66, a2=sp-1968, a3=?.
  The `jalr` at 0x1000e510 calls printf with a0=0x10039b68, a1=?, a2=?, a3=?, a5=[sym(verboseFlag)], a6=[sym(forceFlag)].
  The `jalr` at 0x1000e534 calls ioctl with a0=ret(open), a1=0x67, a2=sp-1624, a3=?.
  The `jalr` at 0x1000e550 calls bzero with a0=sp-1616, a1=0x30, a2=?, a3=?.
  The `jalr` at 0x1000e58c calls fprintf with a0=sym(__iob)+32, a1=0x10039a10, a2=?, a3=?.
  The `jalr` at 0x1000e5cc calls ioctl with a0=ret(open), a1=0x55f6, a2=sp-1616, a3=[sym(syncNone)].
  The `jalr` at 0x1000e60c calls getuid with a0=?, a1=?, a2=?, a3=?, a6=[sym(writeFlag)].
  The `jalr` at 0x1000e62c calls fprintf with a0=sym(__iob)+32, a1=0x10039900, a2=?, a3=?.
  The `jalr` at 0x1000e66c calls getenv with a0=0x10039c20, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e68c calls strcpy with a0=0x10042f28, a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0x1000e6b4 calls strcat with a0=0x10042f28, a1=0x10039c30, a2=?, a3=?.
  The `jalr` at 0x1000e6c4 calls strcat with a0=0x10042f28, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e6d4 calls strcat with a0=0x10042f28, a1=0x100420f0, a2=?, a3=?.
  The `jalr` at 0x1000e6f8 calls printf with a0=0x10039c48, a1=0x10042f28, a2=[sym(verboseFlag)], a3=?.
  The `jal` at 0x1000e704 calls SDBreadOpenDatabase [0x10023c98] with a0=0x10042f28, a1=?, a2=?, a3=?.
  The `jal` at 0x1000e720 calls SDBgetSymbolValueScalar [0x10023ba8] with a0=ret(SDBreadOpenDatabase), a1=[0x10042334], a2=sp-1568, a3=?.
  The `jal` at 0x1000e738 calls SDBgetSymbolValueScalar [0x10023ba8] with a0=ret(SDBreadOpenDatabase), a1=[0x10042338], a2=sp-1564, a3=?.
  The `jal` at 0x1000e750 calls SDBgetSymbolValueScalar [0x10023ba8] with a0=ret(SDBreadOpenDatabase), a1=[0x1004233c], a2=sp-1560, a3=?.
  The `jalr` at 0x1000e760 calls rint with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e798 calls printf with a0=0x10039ca0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e818 calls stat with a0=[(sym(Crm_TimingTableFiles) + ([sym(pipenum)] << 0x2))], a1=sp-1552, a2=?, a3=?.
  The `jalr` at 0x1000e850 calls sprintf with a0=sp-1400, a1=0x10039ce8, a2=[(sym(Crm_TimingTableFiles) + ([sym(pipenum)] << 0x2))], a3=?.
  The `jalr` at 0x1000e85c calls perror with a0=sp-1400, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e890 calls fprintf with a0=ret(fopen), a1=0x100420fc, a2=?, a3=?.
  The `jalr` at 0x1000e8a8 calls fprintf with a0=ret(fopen), a1=0x100420e4, a2=?, a3=?.
  The `jalr` at 0x1000e8b4 calls fclose with a0=ret(fopen), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e8d8 calls fopen with a0=[(sym(Crm_TimingTableFiles) + ([sym(pipenum)] << 0x2))], a1=0x100420f8, a2=?, a3=?.
  The `jalr` at 0x1000e8f4 calls fgets with a0=sp-376, a1=0x100, a2=ret(fopen), a3=?.
  The `jalr` at 0x1000e910 calls fgets with a0=sp-376, a1=0x100, a2=ret(fopen), a3=?.
  The `jalr` at 0x1000e924 calls fclose with a0=ret(fopen), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e934 calls fopen with a0=[(sym(Crm_TimingTableFiles) + ([sym(pipenum)] << 0x2))], a1=0x100420e2, a2=?, a3=?.
  The `jalr` at 0x1000e954 calls sprintf with a0=sp-1400, a1=0x10039d38, a2=[(sym(Crm_TimingTableFiles) + ([sym(pipenum)] << 0x2))], a3=?.
  The `jalr` at 0x1000e960 calls perror with a0=sp-1400, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e974 calls printf with a0=0x10039b80, a1=?, a2=?, a3=?, a5=[sym(verboseFlag)], a6=[sym(forceFlag)].
  The `jalr` at 0x1000e9ec calls fprintf with a0=sym(__iob)+32, a1=0x10039c60, a2=?, a3=?.
  The `jalr` at 0x1000ea0c calls fprintf with a0=sym(__iob)+32, a1=0x10039b98, a2=?, a3=?.
  The `jalr` at 0x1000ea1c calls clearerr with a0=ret(fopen), a1=?, a2=?, a3=?.
  The `jal` at 0x1000ea2c calls timeoutXOpenDisplay [0x1000a070] with a0=0x0, a1=[ret(malloc)+43]:1, a2=?, a3=[sym(changeFlag)], a4=[sym(forceFlag)].
  The `jalr` at 0x1000ea48 calls XSynchronize with a0=ret(timeoutXOpenDisplay), a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1000ea8c calls bzero with a0=sp-1952, a1=0x138, a2=[([[sym(dssdpy)]+140] + ((([sym(pipenum)] << 0x2) + [sym(pipenum)]) << 0x4))+8], a3=((([sym(pipenum)] << 0x2) + [sym(pipenum)]) << 0x4), a4=[sym(pipenum)].
  The `jalr` at 0x1000eab4 calls sscanf with a0=?, a1=0x10039a48, a2=sp-1692, a3=sp-1696, a4=sp-1640, a5=sp-1636.
  The `jalr` at 0x1000eaec calls XSGIQueryStereoMode with a0=[sym(dssdpy)], a1=[sym(dssroot)], a2=?, a3=0xf, a4=0x1b, a5=0x1c.
  The `jalr` at 0x1000eb10 calls XSGISetStereoMode with a0=[sym(dssdpy)], a1=[sym(dssroot)], a2=0x0, a3=0x0, a4=0x0.
  The `jalr` at 0x1000eb28 calls perror with a0=0x100399e0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000eb3c calls creat with a0=[(sym(Crm_TimingTableFiles) + ([sym(pipenum)] << 0x2))], a1=0x1a4, a2=?, a3=?.
  The `jalr` at 0x1000ebbc calls sprintf with a0=sp-1400, a1=0x10039d10, a2=[(sym(Crm_TimingTableFiles) + ([sym(pipenum)] << 0x2))], a3=?.
  The `jalr` at 0x1000ebc8 calls perror with a0=sp-1400, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ec18 calls perror with a0=0x10039a28, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ec80 calls printf with a0=0x10039a58, a1=?, a2=?, a3=?, a4=[sym(verboseFlag)].
  The `jalr` at 0x1000ec94 calls bzero with a0=sp-1952, a1=0x138, a2=?, a3=?.
  The `jalr` at 0x1000ecc0 calls XSGIvcListVideoFormats with a0=[sym(dssdpy)], a1=[sym(dssscreen)], a2=0x0, a3=sp-1952, a4=0x0, a5=0x0, a6=0x64, a7=sp-1632.
  The `jalr` at 0x1000ed4c calls printf with a0=0x10039ab0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000edcc calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ee38 calls printf with a0=0x10039b08, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ee60 calls XSGIvcLoadVideoFormat with a0=[sym(dssdpy)], a1=[sym(dssscreen)], a2=0x0, a3=?, a4=0x26, a5=0x0.
  The `jalr` at 0x1000ee80 calls printf with a0=0x10039c88, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ee98 calls printf with a0=0x10039c88, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000eeb0 calls perror with a0=0x10039cc0, a1=?, a2=?, a3=?, a5=-0x1.
  The `jalr` at 0x1000eec8 calls printf with a0=0x10039c88, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000eee4 calls clearerr with a0=ret(fopen), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ef40 calls perror with a0=0x10039a78, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ef70 calls fprintf with a0=sym(__iob)+32, a1=0x10039ae0, a2=?, a3=?.
  The `jalr` at 0x1000ef98 calls fprintf with a0=sym(__iob)+32, a1=0x10039b30, a2=[sym(verboseFlag)], a3=?.
  The `jalr` at 0x1000eff8 calls XSGISetStereoMode with a0=[sym(dssdpy)], a1=[sym(dssroot)], a2=0x1ec, a3=0x200, a4=0x1.
  The `jalr` at 0x1000f01c calls XSGISetStereoMode with a0=[sym(dssdpy)], a1=[sym(dssroot)], a2=0x1ec, a3=0x200, a4=0x2.
  The `bltz` branch at 0x1000e45c targets 0x1000eb20, is taken when v0(=ret(open)) < 0 (signed), and falls through when v0(=ret(open)) >= 0 (signed).
  The `beq` branch at 0x1000e468 targets 0x1000e808, is taken when s0(=a2) == s4(=0x4), and falls through when s0(=a2) != s4(=0x4).
  The `beq` branch at 0x1000e47c targets 0x1000e57c, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0x1000e4b0 targets 0x1000ec14, is taken when v0(=ret(ioctl)) == a0(=-0x1), and falls through when v0(=ret(ioctl)) != a0(=-0x1).
  The `beq` branch at 0x1000e4bc targets 0x1000e86c, is taken when a1(=[ret(malloc)+43]:1) == 0, and falls through when a1(=[ret(malloc)+43]:1) != 0.
  The `beq` branch at 0x1000e4cc targets 0x1000e8cc, is taken when a2(=[sym(forceFlag)]) == 0, and falls through when a2(=[sym(forceFlag)]) != 0.
  The `beq` branch at 0x1000e4dc targets 0x1000e874, is taken when a3(=[sym(changeFlag)]) == 0, and falls through when a3(=[sym(changeFlag)]) != 0.
  The `beq` branch at 0x1000e4e4 targets 0x1000ea2c, is taken when a4(=[sym(forceFlag)]) == 0, and falls through when a4(=[sym(forceFlag)]) != 0.
  The `beq` branch at 0x1000e4f4 targets 0x1000e51c, is taken when a5(=[sym(verboseFlag)]) == 0, and falls through when a5(=[sym(verboseFlag)]) != 0.
  The `beq` branch at 0x1000e500 targets 0x1000e970, is taken when a6(=[sym(forceFlag)]) == 0, and falls through when a6(=[sym(forceFlag)]) != 0.
  The `beq` branch at 0x1000e540 targets 0x1000e9fc, is taken when v0(=ret(ioctl)) == a0(=-0x1), and falls through when v0(=ret(ioctl)) != a0(=-0x1).
  The `beq` branch at 0x1000e568 targets 0x1000e664, is taken when s0(=a2) >= 0x1b (unsigned), and falls through when s0(=a2) < 0x1b (unsigned).
  The `beq` branch at 0x1000e594 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000e5ac targets 0x1000e5c0, is taken when a3(=[sym(syncNone)]) == 0, and falls through when a3(=[sym(syncNone)]) != 0.
  The `beq` branch at 0x1000e5d8 targets 0x1000eea8, is taken when v0(=ret(ioctl)) == a5(=-0x1), and falls through when v0(=ret(ioctl)) != a5(=-0x1).
  The `beq` branch at 0x1000e5ec targets 0x1000e8bc, is taken when a6(=[sym(writeFlag)]) == 0, and falls through when a6(=[sym(writeFlag)]) != 0.
  The `beq` branch at 0x1000e614 targets 0x1000e814, is taken when v0(=ret(getuid)) == 0, and falls through when v0(=ret(getuid)) != 0.
  The `beq` branch at 0x1000e674 targets 0x1000e69c, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x1000e694 targets 0x1000e6ac and is always taken.
  The `beq` branch at 0x1000e6e4 targets 0x1000e704, is taken when a2(=[sym(verboseFlag)]) == 0, and falls through when a2(=[sym(verboseFlag)]) != 0.
  The `beq` branch at 0x1000e70c targets 0x1000e9d8, is taken when v0(=ret(SDBreadOpenDatabase)) == 0, and falls through when v0(=ret(SDBreadOpenDatabase)) != 0.
  The `beq` branch at 0x1000e728 targets 0x1000ee78, is taken when v0(=ret(SDBgetSymbolValueScalar)) == 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) != 0.
  The `beq` branch at 0x1000e740 targets 0x1000ee90, is taken when v0(=ret(SDBgetSymbolValueScalar)) == 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) != 0.
  The `beq` branch at 0x1000e758 targets 0x1000eec0, is taken when v0(=ret(SDBgetSymbolValueScalar)) == 0, and falls through when v0(=ret(SDBgetSymbolValueScalar)) != 0.
  The `beq` branch at 0x1000e770 targets 0x1000e7a0, is taken when a1(=[sym(verboseFlag)]) == 0, and falls through when a1(=[sym(verboseFlag)]) != 0.
  The `beq` branch at 0x1000e7a8 targets 0x1000eb4c, is taken when v0(?) == a1(=0x280), and falls through when v0(?) != a1(=0x280).
  The `beq` branch at 0x1000e7b0 targets 0x1000eb78, is taken when v0(?) == a2(=0x320), and falls through when v0(?) != a2(=0x320).
  The `beq` branch at 0x1000e7b8 targets 0x1000ebd8, is taken when v0(?) == a0(=0x400), and falls through when v0(?) != a0(=0x400).
  The `bne` branch at 0x1000e7c0 targets 0x1000e8c4, is taken when v0(?) != a3(=0x500), and falls through when v0(?) == a3(=0x500).
  The `beq` branch at 0x1000e7c8 targets 0x1000eef4, is taken when v0(?) == a0(=0x400), and falls through when v0(?) != a0(=0x400).
  The `bne` branch at 0x1000e7d0 targets 0x1000e8c4, is taken when v0(?) != a4(=0x1ec), and falls through when v0(?) == a4(=0x1ec).
  The `bne` branch at 0x1000e7e4 targets 0x1000e8c4, is taken when a5(?) != a6(=0x3c), and falls through when a5(?) == a6(=0x3c).
  The `beq` branch at 0x1000e7ec targets 0x1000f050, is taken when s4(=one of 0x0, 0x1) == 0, and falls through when s4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1000e800 targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000e80c targets 0x1000e46c and is always taken.
  The `bne` branch at 0x1000e824 targets 0x1000e8d4, is taken when v0(=ret(stat)) != t8(=-0x1), and falls through when v0(=ret(stat)) == t8(=-0x1).
  The `beq` branch at 0x1000e838 targets 0x1000eb38, is taken when t9(=[sym(errno)]) == ra(=0x2), and falls through when t9(=[sym(errno)]) != ra(=0x2).
  The `beq` branch at 0x1000e864 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000e86c targets 0x1000e4d4 and is always taken.
  The `beq` branch at 0x1000e87c targets 0x1000e5e4 and is always taken.
  The `beq` branch at 0x1000e8bc targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000e8c4 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000e8cc targets 0x1000e4d4 and is always taken.
  The `beq` branch at 0x1000e8e0 targets 0x1000ebac, is taken when v0(=ret(fopen)) == 0, and falls through when v0(=ret(fopen)) != 0.
  The `beq` branch at 0x1000e8fc targets 0x1000ea1c, is taken when v0(=ret(fgets)) == 0, and falls through when v0(=ret(fgets)) != 0.
  The `beq` branch at 0x1000e918 targets 0x1000eed8, is taken when v0(=ret(fgets)) == 0, and falls through when v0(=ret(fgets)) != 0.
  The `bne` branch at 0x1000e93c targets 0x1000e884, is taken when v0(=ret(fopen)) != 0, and falls through when v0(=ret(fopen)) == 0.
  The `beq` branch at 0x1000e968 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000e97c targets 0x1000e51c and is always taken.
  The `beq` branch at 0x1000e988 targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000e990 targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000e99c targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000e9a4 targets 0x1000ef30, is taken when s4(=one of 0x0, 0x1) == 0, and falls through when s4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1000e9b8 targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000e9c4 targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000e9d0 targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000e9f4 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000ea14 targets 0x1000e548 and is always taken.
  The `beq` branch at 0x1000ea24 targets 0x1000e924 and is always taken.
  The `beq` branch at 0x1000ea38 targets 0x1000e4ec, is taken when v0(=ret(timeoutXOpenDisplay)) == 0, and falls through when v0(=ret(timeoutXOpenDisplay)) != 0.
  The `beq` branch at 0x1000eac0 targets 0x1000ec28, is taken when s0(=a2) == a3(=0xf), and falls through when s0(=a2) != a3(=0xf).
  The `beq` branch at 0x1000eacc targets 0x1000efa8, is taken when s0(=a2) == a4(=0x1b), and falls through when s0(=a2) != a4(=0x1b).
  The `beq` branch at 0x1000ead4 targets 0x1000ec28, is taken when s0(=a2) == a5(=0x1c), and falls through when s0(=a2) != a5(=0x1c).
  The `beq` branch at 0x1000eae0 targets 0x1000ec28, is taken when v0(=0x1ec) == a6(?), and falls through when v0(=0x1ec) != a6(?).
  The `beq` branch at 0x1000eaf4 targets 0x1000ec58, is taken when v0(=ret(XSGIQueryStereoMode)) == 0, and falls through when v0(=ret(XSGIQueryStereoMode)) != 0.
  The `beq` branch at 0x1000eb18 targets 0x1000ec58 and is always taken.
  The `beq` branch at 0x1000eb30 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000eb44 targets 0x1000e930 and is always taken.
  The `bne` branch at 0x1000eb54 targets 0x1000e7b0, is taken when a1(?) != a2(=0x1e0), and falls through when a1(?) == a2(=0x1e0).
  The `bne` branch at 0x1000eb68 targets 0x1000e7ac, is taken when a3(?) != a4(=0x3c), and falls through when a3(?) == a4(=0x3c).
  The `beq` branch at 0x1000eb70 targets 0x1000e5a4 and is always taken.
  The `bne` branch at 0x1000eb80 targets 0x1000e7b8, is taken when a6(?) != a7(=0x258), and falls through when a6(?) == a7(=0x258).
  The `beq` branch at 0x1000eb94 targets 0x1000f02c, is taken when a3(?) == t0(=0x3c), and falls through when a3(?) != t0(=0x3c).
  The `bne` branch at 0x1000eb9c targets 0x1000e7b4, is taken when a3(?) != t1(=0x48), and falls through when a3(?) == t1(=0x48).
  The `beq` branch at 0x1000eba4 targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000ebd0 targets 0x1000e638 and is always taken.
  The `bne` branch at 0x1000ebe0 targets 0x1000e7c0, is taken when a2(?) != a3(=0x300), and falls through when a2(?) == a3(=0x300).
  The `beq` branch at 0x1000ebf4 targets 0x1000f038, is taken when a3(?) == a4(=0x3c), and falls through when a3(?) != a4(=0x3c).
  The `beq` branch at 0x1000ebfc targets 0x1000f044, is taken when a3(?) == a5(=0x46), and falls through when a3(?) != a5(=0x46).
  The `bne` branch at 0x1000ec04 targets 0x1000e7bc, is taken when a3(?) != a6(=0x4b), and falls through when a3(?) == a6(=0x4b).
  The `beq` branch at 0x1000ec0c targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000ec20 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000ec38 targets 0x1000efc8, is taken when s4(=one of 0x0, 0x1) == 0, and falls through when s4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1000ec44 targets 0x1000efe8, is taken when s0(=a2) == a2(=0x1b), and falls through when s0(=a2) != a2(=0x1b).
  The `beq` branch at 0x1000ec50 targets 0x1000f008, is taken when s0(=a2) == a3(=0x1c), and falls through when s0(=a2) != a3(=0x1c).
  The `beq` branch at 0x1000ec5c targets 0x1000ec8c, is taken when a4(=[sym(verboseFlag)]) == 0, and falls through when a4(=[sym(verboseFlag)]) != 0.
  The `beq` branch at 0x1000ecc8 targets 0x1000ef38, is taken when v0(=ret(XSGIvcListVideoFormats)) == 0, and falls through when v0(=ret(XSGIvcListVideoFormats)) != 0.
  The `blez` branch at 0x1000ecd4 targets 0x1000edb0, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x1000ece8 targets 0x1000f058 and is always taken.
  The `beq` branch at 0x1000ecf8 targets 0x1000edb0, is taken when s2(?) >= a2(?) (signed), and falls through when s2(?) < a2(?) (signed).
  The `bc1f` branch at 0x1000ed18 targets 0x1000ed24, is taken when not (f8 < f6 (c.lt.d at 0x1000ed10)), and falls through when f8 < f6 (c.lt.d at 0x1000ed10).
  The `beq` branch at 0x1000ed24 targets 0x1000ed60, is taken when v0(=[sym(verboseFlag)]) == 0, and falls through when v0(=[sym(verboseFlag)]) != 0.
  The `bne` branch at 0x1000ed70 targets 0x1000ecf0, is taken when a1(?) != a3(?), and falls through when a1(?) == a3(?).
  The `bne` branch at 0x1000ed78 targets 0x1000ecf0, is taken when a0(?) != v0(?), and falls through when a0(?) == v0(?).
  The `bc1f` branch at 0x1000ed8c targets 0x1000ecf0, is taken when not (f25 < f27(=0x3fe0000000000000) (c.lt.d at 0x1000ed84)), and falls through when f25 < f27(=0x3fe0000000000000) (c.lt.d at 0x1000ed84).
  The `bc1f` branch at 0x1000ed9c targets 0x1000ecf0, is taken when not (f20 < f0 (c.lt.s at 0x1000ed94)), and falls through when f20 < f0 (c.lt.s at 0x1000ed94).
  The `beq` branch at 0x1000eda8 targets 0x1000ecf0 and is always taken.
  The `bne` branch at 0x1000edb0 targets 0x1000edf8, is taken when s3(?) != a2(?), and falls through when s3(?) == a2(?).
  The `blez` branch at 0x1000edb8 targets 0x1000edf0, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x1000edd4 targets 0x1000ef50, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x1000ede8 targets 0x1000edc8, is taken when s2(?) < a2(?) (signed), and falls through when s2(?) >= a2(?) (signed).
  The `beq` branch at 0x1000edf0 targets 0x1000ef5c, is taken when s3(?) == a2(?), and falls through when s3(?) != a2(?).
  The `beq` branch at 0x1000ee10 targets 0x1000ee40, is taken when t8(=[sym(verboseFlag)]) == 0, and falls through when t8(=[sym(verboseFlag)]) != 0.
  The `beq` branch at 0x1000ee68 targets 0x1000ef80, is taken when v0(=ret(XSGIvcLoadVideoFormat)) == 0, and falls through when v0(=ret(XSGIvcLoadVideoFormat)) != 0.
  The `beq` branch at 0x1000ee70 targets 0x1000e5dc and is always taken.
  The `beq` branch at 0x1000ee88 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000eea0 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000eeb8 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000eed0 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000eeec targets 0x1000e924 and is always taken.
  The `beq` branch at 0x1000ef00 targets 0x1000efb0, is taken when a3(?) == t8(=0x30), and falls through when a3(?) != t8(=0x30).
  The `beq` branch at 0x1000ef08 targets 0x1000efbc, is taken when a3(?) == t9(=0x32), and falls through when a3(?) != t9(=0x32).
  The `beq` branch at 0x1000ef10 targets 0x1000efd0, is taken when a3(?) == ra(=0x3c), and falls through when a3(?) != ra(=0x3c).
  The `beq` branch at 0x1000ef18 targets 0x1000efdc, is taken when a3(?) == at(=0x48), and falls through when a3(?) != at(=0x48).
  The `bne` branch at 0x1000ef20 targets 0x1000e7cc, is taken when a3(?) != v1(=0x4b), and falls through when a3(?) == v1(=0x4b).
  The `beq` branch at 0x1000ef28 targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000ef30 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000ef48 targets 0x1000ecd4 and is always taken.
  The `bne` branch at 0x1000ef54 targets 0x1000edf4, is taken when s2(?) != a2(?), and falls through when s2(?) == a2(?).
  The `beq` branch at 0x1000ef78 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000ef84 targets 0x1000efa0, is taken when a2(=[sym(verboseFlag)]) == 0, and falls through when a2(=[sym(verboseFlag)]) != 0.
  The `beq` branch at 0x1000efa0 targets 0x1000e5dc and is always taken.
  The `beq` branch at 0x1000efa8 targets 0x1000ec28 and is always taken.
  The `beq` branch at 0x1000efb4 targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000efc0 targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000efc8 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000efd4 targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000efe0 targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000f000 targets 0x1000ec58 and is always taken.
  The `beq` branch at 0x1000f024 targets 0x1000ec58 and is always taken.
  The `beq` branch at 0x1000f030 targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000f03c targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000f048 targets 0x1000e5a4 and is always taken.
  The `beq` branch at 0x1000f050 targets 0x1000e638 and is always taken.
  The `beq` branch at 0x1000f05c targets 0x1000ed04 and is always taken.
  The return at 0x1000e65c has v0 = one of 0x1, 0xa, 0xb, 0x0, 0x3, 0x8, 0xd, 0x4, 0x2, 0xc, 0x9.
  The indirect jump at 0x1000e574 uses the jump table at 0x10039bb0 with targets 0x1000e664, 0x1000e9cc, 0x1000e664, 0x1000e664, 0x1000e984, 0x1000e9c0, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e9a4, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e59c, 0x1000e998, 0x1000e664, 0x1000e990.
  The indirect jump at 0x1000e574 uses the jump table at 0x10039bb0 with targets 0x1000e664, 0x1000e9cc, 0x1000e664, 0x1000e664, 0x1000e984, 0x1000e9c0, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e9a4, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e59c, 0x1000e998, 0x1000e664, 0x1000e990.
  The indirect jump at 0x1000e574 uses the jump table at 0x10039bb0 with targets 0x1000e664, 0x1000e9cc, 0x1000e664, 0x1000e664, 0x1000e984, 0x1000e9c0, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e9a4, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e59c, 0x1000e998, 0x1000e664, 0x1000e990.
  The indirect jump at 0x1000e574 uses the jump table at 0x10039bb0 with targets 0x1000e664, 0x1000e9cc, 0x1000e664, 0x1000e664, 0x1000e984, 0x1000e9c0, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e9a4, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e664, 0x1000e59c, 0x1000e998, 0x1000e664, 0x1000e990.

- `__glsplc_FragmentLightModeliSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1980 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1980-0xdad19d8 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdad19bc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad19c4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad19a8 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x10a, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad19b0 targets 0xdad19c8, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad19d0 has v0 = ret(__glSPDlalloc).

- `__glsplc_FragmentLightModelivSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad19d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad19d8-0xdad1a70 (152 bytes).
  It occupies 152 bytes.
  The `sw` at 0xdad1a48 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdad19f8 calls __glFragmentLightModelivSGIX_size [0xda8176c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad1a10 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glFragmentLightModelivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad1a2c calls __glSPDlalloc [0xd976680] with a0=(ret(__glFragmentLightModelivSGIX_size) << 0x2)+4, a1=0x10b, a2=(ret(__glFragmentLightModelivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad1a54 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?.
  The `bgez` branch at 0xdad1a04 targets 0xdad1a20, is taken when a2(=(ret(__glFragmentLightModelivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentLightModelivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdad1a18 targets 0xdad1a60 and is always taken.
  The `beq` branch at 0xdad1a38 targets 0xdad1a60, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1a68 has v0 = one of ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_FragmentMaterialfSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1a70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1a70-0xdad1ad4 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdad1ab0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad1ab8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `swc1` at 0xdad1ac0 stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdad1a9c calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x10c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad1aa4 targets 0xdad1ac4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1acc has v0 = ret(__glSPDlalloc).

- `__glsplc_FragmentMaterialfvSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1ad4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1ad4-0xdad1bac (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xdad1b00 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0xdad1b7c stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad1b84 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad1afc calls __glErrorCheckMaterial [0xda3cc7c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a2], a3=a3 at entry (arg3).
  The `jalr` at 0xdad1b14 calls __glsplc_Error [0xda0cbe0] with a0=ret(__glErrorCheckMaterial), a1=?, a2=?, a3=?.
  The `jalr` at 0xdad1b2c calls __glFragmentMaterialfvSGIX_size [0xda81584] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xdad1b44 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glFragmentMaterialfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad1b60 calls __glSPDlalloc [0xd976680] with a0=(ret(__glFragmentMaterialfvSGIX_size) << 0x2)+8, a1=0x10d, a2=(ret(__glFragmentMaterialfvSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad1b90 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `beq` branch at 0xdad1b08 targets 0xdad1b24, is taken when v0(=ret(__glErrorCheckMaterial)) == 0, and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `beq` branch at 0xdad1b1c targets 0xdad1b9c and is always taken.
  The `bgez` branch at 0xdad1b38 targets 0xdad1b54, is taken when a2(=(ret(__glFragmentMaterialfvSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentMaterialfvSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdad1b4c targets 0xdad1b9c and is always taken.
  The `beq` branch at 0xdad1b6c targets 0xdad1b9c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1ba4 has v0 = one of ret(__glsplc_Error), ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_FragmentMaterialiSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1bac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1bac-0xdad1c10 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdad1bec stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad1bf4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `sw` at 0xdad1bfc stores 4 bytes to ret(__glSPDlalloc) +0x8.
  The `jalr` at 0xdad1bd8 calls __glSPDlalloc [0xd976680] with a0=0xc, a1=0x10e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad1be0 targets 0xdad1c00, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1c08 has v0 = ret(__glSPDlalloc).

- `__glsplc_FragmentMaterialivSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1c10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1c10-0xdad1cfc (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0xdad1c34 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0xdad1ccc stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad1cd4 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad1c4c calls __glErrorCheckMaterial [0xda3cc7c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xdad1c64 calls __glsplc_Error [0xda0cbe0] with a0=ret(__glErrorCheckMaterial), a1=?, a2=?, a3=?.
  The `jalr` at 0xdad1c7c calls __glFragmentMaterialivSGIX_size [0xda815f8] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xdad1c94 calls __glsplc_InvalidEnum [0xda0cb60] with a0=?, a1=?, a2=(ret(__glFragmentMaterialivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad1cb0 calls __glSPDlalloc [0xd976680] with a0=(ret(__glFragmentMaterialivSGIX_size) << 0x2)+8, a1=0x10f, a2=(ret(__glFragmentMaterialivSGIX_size) << 0x2), a3=?.
  The `jalr` at 0xdad1ce0 calls memcpy with a0=ret(__glSPDlalloc)+8, a1=a2 at entry (arg2), a2=?, a3=?.
  The `beq` branch at 0xdad1c58 targets 0xdad1c74, is taken when v0(=ret(__glErrorCheckMaterial)) == 0, and falls through when v0(=ret(__glErrorCheckMaterial)) != 0.
  The `beq` branch at 0xdad1c6c targets 0xdad1cec and is always taken.
  The `bgez` branch at 0xdad1c88 targets 0xdad1ca4, is taken when a2(=(ret(__glFragmentMaterialivSGIX_size) << 0x2)) >= 0 (signed), and falls through when a2(=(ret(__glFragmentMaterialivSGIX_size) << 0x2)) < 0 (signed).
  The `beq` branch at 0xdad1c9c targets 0xdad1cec and is always taken.
  The `beq` branch at 0xdad1cbc targets 0xdad1cec, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1cf4 has v0 = one of ret(__glsplc_Error), ret(__glsplc_InvalidEnum), ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_LightEnviSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1cfc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1cfc-0xdad1d54 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdad1d38 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdad1d40 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdad1d24 calls __glSPDlalloc [0xd976680] with a0=0x8, a1=0x110, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdad1d2c targets 0xdad1d44, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdad1d4c has v0 = ret(__glSPDlalloc).

- `__glDrawArraysV` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1dd0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1dd0-0xdad1e84 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xdad1de4 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xdad1e00, `lw` at 0xdad1e40.
  The `lw` at 0xdad1e08 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xdad1e14 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xdad1e20 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad1e38 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad1e58 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xdad1e2c targets 0xdad1e54, is taken when s4(=a2) <= 0 (signed), and falls through when s4(=a2) > 0 (signed).
  The `bne` branch at 0xdad1e4c targets 0xdad1e34, is taken when s1(?) != s4(=a2), and falls through when s1(?) == s4(=a2).
  The return at 0xdad1e7c has v0 = ret(glEnd).

- `__glDrawArraysNV` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1e84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1e84-0xdad1f7c (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0xdad1e98 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xdad1ebc, `lw` at 0xdad1f18.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xdad1ec0, `lw` at 0xdad1f30.
  The `lw` at 0xdad1ec4 loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xdad1ecc loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xdad1ed4 loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xdad1ed8 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xdad1ef8 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad1f10 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad1f28 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad1f48 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xdad1f04 targets 0xdad1f44, is taken when s6(=a2) <= 0 (signed), and falls through when s6(=a2) > 0 (signed).
  The `bne` branch at 0xdad1f3c targets 0xdad1f0c, is taken when s0(?) != s6(=a2), and falls through when s0(?) == s6(=a2).
  The return at 0xdad1f74 has v0 = ret(glEnd).

- `__glDrawArraysCV` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad1f7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad1f7c-0xdad2074 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0xdad1f90 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xdad1fb4, `lw` at 0xdad2010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xdad1fb8, `lw` at 0xdad2028.
  The `lw` at 0xdad1fbc loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xdad1fc4 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xdad1fcc loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xdad1fd0 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xdad1ff0 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad2008 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad2020 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad2040 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xdad1ffc targets 0xdad203c, is taken when s6(=a2) <= 0 (signed), and falls through when s6(=a2) > 0 (signed).
  The `bne` branch at 0xdad2034 targets 0xdad2004, is taken when s0(?) != s6(=a2), and falls through when s0(?) == s6(=a2).
  The return at 0xdad206c has v0 = ret(glEnd).

- `__glDrawArraysNCV` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad2074 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad2074-0xdad21ac (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xdad2088 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1404, including `lw` at 0xdad20b4, `lw` at 0xdad2128.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1420, including `lw` at 0xdad20b8, `lw` at 0xdad2140.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xdad20bc, `lw` at 0xdad2158.
  The `lw` at 0xdad20c4 loads 4 bytes from [0x1010] +0x1414.
  The `lw` at 0xdad20c8 loads 4 bytes from [0x1010] +0x13fc.
  The `lw` at 0xdad20cc loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xdad20d4 loads 4 bytes from [0x1010] +0x1410.
  The `lw` at 0xdad20d8 loads 4 bytes from [0x1010] +0x142c.
  The `lw` at 0xdad20dc loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xdad2108 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad2120 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad2138 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad2150 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad2170 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xdad2114 targets 0xdad216c, is taken when s8(=a2) <= 0 (signed), and falls through when s8(=a2) > 0 (signed).
  The `bne` branch at 0xdad2164 targets 0xdad211c, is taken when s4(?) != s8(=a2), and falls through when s4(?) == s8(=a2).
  The return at 0xdad21a4 has v0 = ret(glEnd).

- `__glDrawArraysTV` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad21ac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad21ac-0xdad22a4 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0xdad21c0 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x1454, including `lw` at 0xdad21e4, `lw` at 0xdad2240.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x13ec, including `lw` at 0xdad21e8, `lw` at 0xdad2258.
  The `lw` at 0xdad21ec loads 4 bytes from [0x1010] +0x13e0.
  The `lw` at 0xdad21f4 loads 4 bytes from [0x1010] +0x1448.
  The `lw` at 0xdad21fc loads 4 bytes from [0x1010] +0x1460.
  The `lw` at 0xdad2200 loads 4 bytes from [0x1010] +0x13f8.
  The `jalr` at 0xdad2220 calls glBegin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad2238 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad2250 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad2270 calls glEnd with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xdad222c targets 0xdad226c, is taken when s6(=a2) <= 0 (signed), and falls through when s6(=a2) > 0 (signed).
  The `bne` branch at 0xdad2264 targets 0xdad2234, is taken when s0(?) != s6(=a2), and falls through when s0(?) == s6(=a2).
  The return at 0xdad229c has v0 = ret(glEnd).

- `__glOdysseyElementsInt_V3F` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad4e44 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad4e44-0xdad4eb8 (116 bytes).
  It occupies 116 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdad4e6c, `lw` at 0xdad4e7c, `lw` at 0xdad4e80.
  4 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0xdad4e88, `sw` at 0xdad4e8c, `sw` at 0xdad4e90.
  The `bne` branch at 0xdad4e98 targets 0xdad4e68, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The return at 0xdad4eb0 has v0 = 0x10000.

- `__glOdysseyMIPS_SYNC` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad53d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad53d0-0xdad53d8 (8 bytes).
  It occupies 8 bytes.
  The return at 0xdad53d0 has v0 = ?.

- `__glOdysseyAtomicTestAndSet` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad53e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad53e0-0xdad5480 (160 bytes).
  It occupies 160 bytes.
  The `ll` at 0xdad53e0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xdad53ec stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xdad5470 targets 0xdad53e0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The return at 0xdad5478 has v0 = [a0].

- `__glOdysseyAtomicAdd` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5480 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5480-0xdad5520 (160 bytes).
  It occupies 160 bytes.
  The `ll` at 0xdad5480 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xdad548c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xdad5510 targets 0xdad5480, is taken when t1(=[a0]+1) == 0, and falls through when t1(=[a0]+1) != 0.
  The return at 0xdad5518 has v0 = [a0]+1.

- `__glOdysseyAtomicSubtract` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5520 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5520-0xdad55c0 (160 bytes).
  It occupies 160 bytes.
  The `ll` at 0xdad5520 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0xdad552c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0xdad55b0 targets 0xdad5520, is taken when t1(=[a0]-1) == 0, and falls through when t1(=[a0]-1) != 0.
  The return at 0xdad55b8 has v0 = [a0]-1.

- `__glSPInterpret` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5654 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5654-0xdad56fc (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xdad5660 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdad5668 loads 4 bytes from a0 (arg0 at entry) +0x4.
  14 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdad5674, `lw` at 0xdad5678, `lw` at 0xdad5688.
  The `jalr` at 0xdad566c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad5680 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad5694 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad56a8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad56bc calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad56d0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad56e4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xdad56f4 targets 0xdad566c and is always taken.

- `__glsple_Sentinel` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad56fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad56fc-0xdad5710 (20 bytes).
  It occupies 20 bytes.
  The return at 0xdad5708 has v0 = ?.

- `__glFrac` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5810 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5810-0xdad5820 (16 bytes).
  It occupies 16 bytes.
  The return at 0xdad5818 has v0 = ?.

- `__glFloor` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5820 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5820-0xdad582c (12 bytes).
  It occupies 12 bytes.
  The return at 0xdad5824 has v0 = ?.

- `__glce_NewList` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5830 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5830-0xdad5838 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5830 targets 0xdad66a8 and is always taken.

- `__glce_DeleteLists` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5838 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5838-0xdad5840 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5838 targets 0xdad66a8 and is always taken.

- `__glce_GenLists` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5840 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5840-0xdad5848 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5840 targets 0xdad66a8 and is always taken.

- `__glce_ListBase` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5848 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5848-0xdad5850 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5848 targets 0xdad67a8 and is always taken.

- `__glce_Begin` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5850 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5850-0xdad5858 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5850 targets 0xdad67a8 and is always taken.

- `__glce_Bitmap` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5858 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5858-0xdad5860 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5858 targets 0xdad67a8 and is always taken.

- `__glce_Color3b` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5860 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5860-0xdad5868 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5860 targets 0xdad67a8 and is always taken.

- `__glce_Color3bv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5868 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5868-0xdad5870 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5868 targets 0xdad67a8 and is always taken.

- `__glce_Color3d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5870 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5870-0xdad5878 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5870 targets 0xdad67a8 and is always taken.

- `__glce_Color3dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5878 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5878-0xdad5880 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5878 targets 0xdad67a8 and is always taken.

- `__glce_Color3f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5880 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5880-0xdad5888 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5880 targets 0xdad67a8 and is always taken.

- `__glce_Color3fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5888 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5888-0xdad5890 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5888 targets 0xdad67a8 and is always taken.

- `__glce_Color3i` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5890 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5890-0xdad5898 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5890 targets 0xdad67a8 and is always taken.

- `__glce_Color3iv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5898 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5898-0xdad58a0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5898 targets 0xdad67a8 and is always taken.

- `__glce_Color3s` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad58a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad58a0-0xdad58a8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad58a0 targets 0xdad67a8 and is always taken.

- `__glce_Color3sv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad58a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad58a8-0xdad58b0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad58a8 targets 0xdad67a8 and is always taken.

- `__glce_Color3ub` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad58b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad58b0-0xdad58b8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad58b0 targets 0xdad67a8 and is always taken.

- `__glce_Color3ubv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad58b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad58b8-0xdad58c0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad58b8 targets 0xdad67a8 and is always taken.

- `__glce_Color3ui` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad58c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad58c0-0xdad58c8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad58c0 targets 0xdad67a8 and is always taken.

- `__glce_Color3uiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad58c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad58c8-0xdad58d0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad58c8 targets 0xdad67a8 and is always taken.

- `__glce_Color3us` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad58d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad58d0-0xdad58d8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad58d0 targets 0xdad67a8 and is always taken.

- `__glce_Color3usv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad58d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad58d8-0xdad58e0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad58d8 targets 0xdad67a8 and is always taken.

- `__glce_Color4b` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad58e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad58e0-0xdad58e8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad58e0 targets 0xdad67a8 and is always taken.

- `__glce_Color4bv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad58e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad58e8-0xdad58f0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad58e8 targets 0xdad67a8 and is always taken.

- `__glce_Color4d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad58f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad58f0-0xdad58f8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad58f0 targets 0xdad67a8 and is always taken.

- `__glce_Color4dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad58f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad58f8-0xdad5900 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad58f8 targets 0xdad67a8 and is always taken.

- `__glce_Color4f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5900 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5900-0xdad5908 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5900 targets 0xdad67a8 and is always taken.

- `__glce_Color4fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5908 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5908-0xdad5910 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5908 targets 0xdad67a8 and is always taken.

- `__glce_Color4i` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5910 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5910-0xdad5918 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5910 targets 0xdad67a8 and is always taken.

- `__glce_Color4iv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5918 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5918-0xdad5920 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5918 targets 0xdad67a8 and is always taken.

- `__glce_Color4s` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5920 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5920-0xdad5928 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5920 targets 0xdad67a8 and is always taken.

- `__glce_Color4sv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5928 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5928-0xdad5930 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5928 targets 0xdad67a8 and is always taken.

- `__glce_Color4ub` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5930 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5930-0xdad5938 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5930 targets 0xdad67a8 and is always taken.

- `__glce_Color4ubv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5938 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5938-0xdad5940 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5938 targets 0xdad67a8 and is always taken.

- `__glce_Color4ui` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5940 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5940-0xdad5948 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5940 targets 0xdad67a8 and is always taken.

- `__glce_Color4uiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5948 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5948-0xdad5950 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5948 targets 0xdad67a8 and is always taken.

- `__glce_Color4us` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5950 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5950-0xdad5958 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5950 targets 0xdad67a8 and is always taken.

- `__glce_Color4usv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5958 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5958-0xdad5960 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5958 targets 0xdad67a8 and is always taken.

- `__glce_EdgeFlag` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5960 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5960-0xdad5968 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5960 targets 0xdad67a8 and is always taken.

- `__glce_EdgeFlagv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5968 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5968-0xdad5970 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5968 targets 0xdad67a8 and is always taken.

- `__glce_End` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5970 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5970-0xdad5978 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5970 targets 0xdad67a8 and is always taken.

- `__glce_Indexd` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5978 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5978-0xdad5980 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5978 targets 0xdad67a8 and is always taken.

- `__glce_Indexdv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5980 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5980-0xdad5988 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5980 targets 0xdad67a8 and is always taken.

- `__glce_Indexf` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5988 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5988-0xdad5990 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5988 targets 0xdad67a8 and is always taken.

- `__glce_Indexfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5990 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5990-0xdad5998 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5990 targets 0xdad67a8 and is always taken.

- `__glce_Indexi` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5998 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5998-0xdad59a0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5998 targets 0xdad67a8 and is always taken.

- `__glce_Indexiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad59a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad59a0-0xdad59a8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad59a0 targets 0xdad67a8 and is always taken.

- `__glce_Indexs` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad59a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad59a8-0xdad59b0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad59a8 targets 0xdad67a8 and is always taken.

- `__glce_Indexsv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad59b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad59b0-0xdad59b8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad59b0 targets 0xdad67a8 and is always taken.

- `__glce_Normal3b` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad59b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad59b8-0xdad59c0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad59b8 targets 0xdad67a8 and is always taken.

- `__glce_Normal3bv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad59c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad59c0-0xdad59c8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad59c0 targets 0xdad67a8 and is always taken.

- `__glce_Normal3d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad59c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad59c8-0xdad59d0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad59c8 targets 0xdad67a8 and is always taken.

- `__glce_Normal3dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad59d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad59d0-0xdad59d8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad59d0 targets 0xdad67a8 and is always taken.

- `__glce_Normal3f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad59d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad59d8-0xdad59e0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad59d8 targets 0xdad67a8 and is always taken.

- `__glce_Normal3fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad59e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad59e0-0xdad59e8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad59e0 targets 0xdad67a8 and is always taken.

- `__glce_Normal3i` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad59e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad59e8-0xdad59f0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad59e8 targets 0xdad67a8 and is always taken.

- `__glce_Normal3iv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad59f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad59f0-0xdad59f8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad59f0 targets 0xdad67a8 and is always taken.

- `__glce_Normal3s` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad59f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad59f8-0xdad5a00 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad59f8 targets 0xdad67a8 and is always taken.

- `__glce_Normal3sv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a00-0xdad5a08 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a00 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos2d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a08-0xdad5a10 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a08 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos2dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a10-0xdad5a18 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a10 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos2f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a18-0xdad5a20 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a18 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos2fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a20-0xdad5a28 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a20 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos2i` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a28-0xdad5a30 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a28 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos2iv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a30-0xdad5a38 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a30 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos2s` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a38-0xdad5a40 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a38 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos2sv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a40-0xdad5a48 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a40 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos3d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a48-0xdad5a50 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a48 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos3dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a50-0xdad5a58 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a50 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos3f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a58-0xdad5a60 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a58 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos3fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a60-0xdad5a68 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a60 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos3i` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a68-0xdad5a70 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a68 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos3iv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a70-0xdad5a78 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a70 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos3s` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a78-0xdad5a80 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a78 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos3sv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a80-0xdad5a88 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a80 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos4d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a88-0xdad5a90 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a88 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos4dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a90-0xdad5a98 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a90 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos4f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5a98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5a98-0xdad5aa0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5a98 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos4fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5aa0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5aa0-0xdad5aa8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5aa0 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos4i` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5aa8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5aa8-0xdad5ab0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5aa8 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos4iv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ab0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ab0-0xdad5ab8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ab0 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos4s` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ab8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ab8-0xdad5ac0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ab8 targets 0xdad67a8 and is always taken.

- `__glce_RasterPos4sv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ac0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ac0-0xdad5ac8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ac0 targets 0xdad67a8 and is always taken.

- `__glce_Rectd` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ac8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ac8-0xdad5ad0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ac8 targets 0xdad67a8 and is always taken.

- `__glce_Rectdv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ad0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ad0-0xdad5ad8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ad0 targets 0xdad67a8 and is always taken.

- `__glce_Rectf` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ad8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ad8-0xdad5ae0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ad8 targets 0xdad67a8 and is always taken.

- `__glce_Rectfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ae0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ae0-0xdad5ae8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ae0 targets 0xdad67a8 and is always taken.

- `__glce_Recti` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ae8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ae8-0xdad5af0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ae8 targets 0xdad67a8 and is always taken.

- `__glce_Rectiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5af0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5af0-0xdad5af8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5af0 targets 0xdad67a8 and is always taken.

- `__glce_Rects` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5af8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5af8-0xdad5b00 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5af8 targets 0xdad67a8 and is always taken.

- `__glce_Rectsv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5b00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5b00-0xdad5b08 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5b00 targets 0xdad67a8 and is always taken.

- `__glce_Vertex2d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c08-0xdad5c10 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c08 targets 0xdad67a8 and is always taken.

- `__glce_Vertex2dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c10-0xdad5c18 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c10 targets 0xdad67a8 and is always taken.

- `__glce_Vertex2f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c18-0xdad5c20 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c18 targets 0xdad67a8 and is always taken.

- `__glce_Vertex2fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c20-0xdad5c28 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c20 targets 0xdad67a8 and is always taken.

- `__glce_Vertex2i` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c28-0xdad5c30 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c28 targets 0xdad67a8 and is always taken.

- `__glce_Vertex2iv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c30-0xdad5c38 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c30 targets 0xdad67a8 and is always taken.

- `__glce_Vertex2s` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c38-0xdad5c40 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c38 targets 0xdad67a8 and is always taken.

- `__glce_Vertex2sv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c40-0xdad5c48 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c40 targets 0xdad67a8 and is always taken.

- `__glce_Vertex3d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c48-0xdad5c50 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c48 targets 0xdad67a8 and is always taken.

- `__glce_Vertex3dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c50-0xdad5c58 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c50 targets 0xdad67a8 and is always taken.

- `__glce_Vertex3f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c58-0xdad5c60 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c58 targets 0xdad67a8 and is always taken.

- `__glce_Vertex3fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c60-0xdad5c68 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c60 targets 0xdad67a8 and is always taken.

- `__glce_Vertex3i` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c68-0xdad5c70 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c68 targets 0xdad67a8 and is always taken.

- `__glce_Vertex3iv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c70-0xdad5c78 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c70 targets 0xdad67a8 and is always taken.

- `__glce_Vertex3s` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c78-0xdad5c80 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c78 targets 0xdad67a8 and is always taken.

- `__glce_Vertex3sv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c80-0xdad5c88 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c80 targets 0xdad67a8 and is always taken.

- `__glce_Vertex4d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c88-0xdad5c90 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c88 targets 0xdad67a8 and is always taken.

- `__glce_Vertex4dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c90-0xdad5c98 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c90 targets 0xdad67a8 and is always taken.

- `__glce_Vertex4f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5c98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5c98-0xdad5ca0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5c98 targets 0xdad67a8 and is always taken.

- `__glce_Vertex4fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ca0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ca0-0xdad5ca8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ca0 targets 0xdad67a8 and is always taken.

- `__glce_Vertex4i` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ca8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ca8-0xdad5cb0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ca8 targets 0xdad67a8 and is always taken.

- `__glce_Vertex4iv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5cb0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5cb0-0xdad5cb8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5cb0 targets 0xdad67a8 and is always taken.

- `__glce_Vertex4s` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5cb8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5cb8-0xdad5cc0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5cb8 targets 0xdad67a8 and is always taken.

- `__glce_Vertex4sv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5cc0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5cc0-0xdad5cc8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5cc0 targets 0xdad67a8 and is always taken.

- `__glce_ClipPlane` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5cc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5cc8-0xdad5cd0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5cc8 targets 0xdad67a8 and is always taken.

- `__glce_ColorMaterial` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5cd0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5cd0-0xdad5cd8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5cd0 targets 0xdad67a8 and is always taken.

- `__glce_CullFace` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5cd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5cd8-0xdad5ce0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5cd8 targets 0xdad67a8 and is always taken.

- `__glce_Fogf` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ce0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ce0-0xdad5ce8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ce0 targets 0xdad67a8 and is always taken.

- `__glce_Fogfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ce8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ce8-0xdad5cf0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ce8 targets 0xdad67a8 and is always taken.

- `__glce_Fogi` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5cf0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5cf0-0xdad5cf8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5cf0 targets 0xdad67a8 and is always taken.

- `__glce_Fogiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5cf8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5cf8-0xdad5d00 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5cf8 targets 0xdad67a8 and is always taken.

- `__glce_FrontFace` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d00-0xdad5d08 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d00 targets 0xdad67a8 and is always taken.

- `__glce_Hint` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d08-0xdad5d10 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d08 targets 0xdad67a8 and is always taken.

- `__glce_Lightf` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d10-0xdad5d18 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d10 targets 0xdad67a8 and is always taken.

- `__glce_Lightfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d18-0xdad5d20 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d18 targets 0xdad67a8 and is always taken.

- `__glce_Lighti` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d20-0xdad5d28 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d20 targets 0xdad67a8 and is always taken.

- `__glce_Lightiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d28-0xdad5d30 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d28 targets 0xdad67a8 and is always taken.

- `__glce_LightModelf` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d30-0xdad5d38 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d30 targets 0xdad67a8 and is always taken.

- `__glce_LightModelfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d38-0xdad5d40 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d38 targets 0xdad67a8 and is always taken.

- `__glce_LightModeli` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d40-0xdad5d48 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d40 targets 0xdad67a8 and is always taken.

- `__glce_LightModeliv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d48-0xdad5d50 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d48 targets 0xdad67a8 and is always taken.

- `__glce_LineStipple` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d50-0xdad5d58 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d50 targets 0xdad67a8 and is always taken.

- `__glce_LineWidth` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d58-0xdad5d60 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d58 targets 0xdad67a8 and is always taken.

- `__glce_Materialf` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d60-0xdad5d68 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d60 targets 0xdad67a8 and is always taken.

- `__glce_Materialfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d68-0xdad5d70 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d68 targets 0xdad67a8 and is always taken.

- `__glce_Materiali` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d70-0xdad5d78 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d70 targets 0xdad67a8 and is always taken.

- `__glce_Materialiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d78-0xdad5d80 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d78 targets 0xdad67a8 and is always taken.

- `__glce_PointSize` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d80-0xdad5d88 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d80 targets 0xdad67a8 and is always taken.

- `__glce_PolygonMode` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d88-0xdad5d90 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d88 targets 0xdad67a8 and is always taken.

- `__glce_PolygonStipple` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d90-0xdad5d98 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d90 targets 0xdad67a8 and is always taken.

- `__glce_Scissor` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5d98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5d98-0xdad5da0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5d98 targets 0xdad67a8 and is always taken.

- `__glce_ShadeModel` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5da0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5da0-0xdad5da8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5da0 targets 0xdad67a8 and is always taken.

- `__glce_InitNames` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5e40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5e40-0xdad5e48 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5e40 targets 0xdad67a8 and is always taken.

- `__glce_LoadName` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5e48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5e48-0xdad5e50 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5e48 targets 0xdad67a8 and is always taken.

- `__glce_PassThrough` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5e50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5e50-0xdad5e58 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5e50 targets 0xdad67a8 and is always taken.

- `__glce_PopName` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5e58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5e58-0xdad5e60 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5e58 targets 0xdad67a8 and is always taken.

- `__glce_PushName` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5e60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5e60-0xdad5e68 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5e60 targets 0xdad67a8 and is always taken.

- `__glce_Clear` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5e70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5e70-0xdad5e78 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5e70 targets 0xdad67a8 and is always taken.

- `__glce_ClearAccum` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5e78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5e78-0xdad5e80 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5e78 targets 0xdad67a8 and is always taken.

- `__glce_ClearIndex` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5e80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5e80-0xdad5e88 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5e80 targets 0xdad67a8 and is always taken.

- `__glce_ClearColor` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5e88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5e88-0xdad5e90 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5e88 targets 0xdad67a8 and is always taken.

- `__glce_ClearStencil` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5e90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5e90-0xdad5e98 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5e90 targets 0xdad67a8 and is always taken.

- `__glce_ClearDepth` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5e98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5e98-0xdad5ea0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5e98 targets 0xdad67a8 and is always taken.

- `__glce_StencilMask` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ea0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ea0-0xdad5ea8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ea0 targets 0xdad67a8 and is always taken.

- `__glce_ColorMask` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ea8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ea8-0xdad5eb0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ea8 targets 0xdad67a8 and is always taken.

- `__glce_DepthMask` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5eb0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5eb0-0xdad5eb8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5eb0 targets 0xdad67a8 and is always taken.

- `__glce_IndexMask` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5eb8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5eb8-0xdad5ec0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5eb8 targets 0xdad67a8 and is always taken.

- `__glce_Accum` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ec0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ec0-0xdad5ec8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ec0 targets 0xdad67a8 and is always taken.

- `__glce_Disable` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ec8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ec8-0xdad5ed0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ec8 targets 0xdad67a8 and is always taken.

- `__glce_Enable` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ed0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ed0-0xdad5ed8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ed0 targets 0xdad67a8 and is always taken.

- `__glce_Finish` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ed8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ed8-0xdad5ee0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ed8 targets 0xdad66a8 and is always taken.

- `__glce_Flush` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ee0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ee0-0xdad5ee8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ee0 targets 0xdad66a8 and is always taken.

- `__glce_PopAttrib` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ee8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ee8-0xdad5ef0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ee8 targets 0xdad67a8 and is always taken.

- `__glce_PushAttrib` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ef0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ef0-0xdad5ef8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ef0 targets 0xdad67a8 and is always taken.

- `__glce_Map1d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5ef8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5ef8-0xdad5f00 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5ef8 targets 0xdad67a8 and is always taken.

- `__glce_Map1f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f00-0xdad5f08 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f00 targets 0xdad67a8 and is always taken.

- `__glce_Map2d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f08-0xdad5f10 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f08 targets 0xdad67a8 and is always taken.

- `__glce_Map2f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f10-0xdad5f18 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f10 targets 0xdad67a8 and is always taken.

- `__glce_MapGrid1d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f18-0xdad5f20 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f18 targets 0xdad67a8 and is always taken.

- `__glce_MapGrid1f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f20-0xdad5f28 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f20 targets 0xdad67a8 and is always taken.

- `__glce_MapGrid2d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f28-0xdad5f30 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f28 targets 0xdad67a8 and is always taken.

- `__glce_MapGrid2f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f30-0xdad5f38 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f30 targets 0xdad67a8 and is always taken.

- `__glce_EvalCoord1d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f38-0xdad5f40 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f38 targets 0xdad67a8 and is always taken.

- `__glce_EvalCoord1dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f40-0xdad5f48 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f40 targets 0xdad67a8 and is always taken.

- `__glce_EvalCoord1f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f48-0xdad5f50 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f48 targets 0xdad67a8 and is always taken.

- `__glce_EvalCoord1fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f50-0xdad5f58 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f50 targets 0xdad67a8 and is always taken.

- `__glce_EvalCoord2d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f58-0xdad5f60 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f58 targets 0xdad67a8 and is always taken.

- `__glce_EvalCoord2dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f60-0xdad5f68 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f60 targets 0xdad67a8 and is always taken.

- `__glce_EvalCoord2f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f68-0xdad5f70 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f68 targets 0xdad67a8 and is always taken.

- `__glce_EvalCoord2fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f70-0xdad5f78 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f70 targets 0xdad67a8 and is always taken.

- `__glce_EvalMesh1` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f78-0xdad5f80 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f78 targets 0xdad67a8 and is always taken.

- `__glce_EvalPoint1` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f80-0xdad5f88 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f80 targets 0xdad67a8 and is always taken.

- `__glce_EvalMesh2` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f88-0xdad5f90 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f88 targets 0xdad67a8 and is always taken.

- `__glce_EvalPoint2` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f90-0xdad5f98 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f90 targets 0xdad67a8 and is always taken.

- `__glce_AlphaFunc` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5f98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5f98-0xdad5fa0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5f98 targets 0xdad67a8 and is always taken.

- `__glce_BlendFunc` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5fa0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5fa0-0xdad5fa8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5fa0 targets 0xdad67a8 and is always taken.

- `__glce_LogicOp` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5fa8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5fa8-0xdad5fb0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5fa8 targets 0xdad67a8 and is always taken.

- `__glce_StencilFunc` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5fb0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5fb0-0xdad5fb8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5fb0 targets 0xdad67a8 and is always taken.

- `__glce_StencilOp` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5fb8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5fb8-0xdad5fc0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5fb8 targets 0xdad67a8 and is always taken.

- `__glce_DepthFunc` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5fc0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5fc0-0xdad5fc8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad5fc0 targets 0xdad67a8 and is always taken.

- `__glce_DrawPixels` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6020 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6020-0xdad6028 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6020 targets 0xdad67a8 and is always taken.

- `__glce_GetBooleanv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6028 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6028-0xdad6030 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6028 targets 0xdad66a8 and is always taken.

- `__glce_GetClipPlane` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6030 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6030-0xdad6038 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6030 targets 0xdad66a8 and is always taken.

- `__glce_GetDoublev` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6038 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6038-0xdad6040 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6038 targets 0xdad66a8 and is always taken.

- `__glce_GetError` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6040 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6040-0xdad6048 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6040 targets 0xdad66a8 and is always taken.

- `__glce_GetFloatv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6048 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6048-0xdad6050 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6048 targets 0xdad66a8 and is always taken.

- `__glce_GetIntegerv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6050 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6050-0xdad6058 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6050 targets 0xdad66a8 and is always taken.

- `__glce_GetLightfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6058 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6058-0xdad6060 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6058 targets 0xdad66a8 and is always taken.

- `__glce_GetLightiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6060 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6060-0xdad6068 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6060 targets 0xdad66a8 and is always taken.

- `__glce_GetMapdv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6068 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6068-0xdad6070 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6068 targets 0xdad66a8 and is always taken.

- `__glce_GetMapfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6070 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6070-0xdad6078 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6070 targets 0xdad66a8 and is always taken.

- `__glce_GetMapiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6078 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6078-0xdad6080 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6078 targets 0xdad66a8 and is always taken.

- `__glce_GetMaterialfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6080 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6080-0xdad6088 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6080 targets 0xdad66a8 and is always taken.

- `__glce_GetMaterialiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6088 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6088-0xdad6090 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6088 targets 0xdad66a8 and is always taken.

- `__glce_GetPolygonStipple` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad60a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad60a8-0xdad60b0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad60a8 targets 0xdad66a8 and is always taken.

- `__glce_GetString` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad60b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad60b0-0xdad60b8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad60b0 targets 0xdad66a8 and is always taken.

- `__glce_GetTexLevelParameterfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad60f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad60f8-0xdad6100 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad60f8 targets 0xdad66a8 and is always taken.

- `__glce_GetTexLevelParameteriv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6100 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6100-0xdad6108 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6100 targets 0xdad66a8 and is always taken.

- `__glce_IsEnabled` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6108 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6108-0xdad6110 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6108 targets 0xdad66a8 and is always taken.

- `__glce_IsList` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6110 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6110-0xdad6118 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6110 targets 0xdad66a8 and is always taken.

- `__glce_DepthRange` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6118 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6118-0xdad6120 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6118 targets 0xdad67a8 and is always taken.

- `__glce_Frustum` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6120 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6120-0xdad6128 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6120 targets 0xdad67a8 and is always taken.

- `__glce_LoadIdentity` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6128 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6128-0xdad6130 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6128 targets 0xdad67a8 and is always taken.

- `__glce_MatrixMode` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6140 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6140-0xdad6148 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6140 targets 0xdad67a8 and is always taken.

- `__glce_MultMatrixf` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6148 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6148-0xdad6150 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6148 targets 0xdad67a8 and is always taken.

- `__glce_MultMatrixd` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6150 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6150-0xdad6158 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6150 targets 0xdad67a8 and is always taken.

- `__glce_Ortho` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6158 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6158-0xdad6160 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6158 targets 0xdad67a8 and is always taken.

- `__glce_PopMatrix` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6160 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6160-0xdad6168 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6160 targets 0xdad67a8 and is always taken.

- `__glce_PushMatrix` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6168 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6168-0xdad6170 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6168 targets 0xdad67a8 and is always taken.

- `__glce_Rotated` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6170 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6170-0xdad6178 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6170 targets 0xdad67a8 and is always taken.

- `__glce_Rotatef` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6178 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6178-0xdad6180 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6178 targets 0xdad67a8 and is always taken.

- `__glce_Scaled` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6180 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6180-0xdad6188 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6180 targets 0xdad67a8 and is always taken.

- `__glce_Scalef` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6188 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6188-0xdad6190 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6188 targets 0xdad67a8 and is always taken.

- `__glce_Translated` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6190 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6190-0xdad6198 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6190 targets 0xdad67a8 and is always taken.

- `__glce_Translatef` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6198 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6198-0xdad61a0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6198 targets 0xdad67a8 and is always taken.

- `__glce_Viewport` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad61a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad61a0-0xdad61a8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad61a0 targets 0xdad67a8 and is always taken.

- `__glce_BlendColorEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad61a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad61a8-0xdad61b0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad61a8 targets 0xdad67a8 and is always taken.

- `__glce_BlendEquationEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad61b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad61b0-0xdad61b8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad61b0 targets 0xdad67a8 and is always taken.

- `__glce_PolygonOffsetEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad61b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad61b8-0xdad61c0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad61b8 targets 0xdad67a8 and is always taken.

- `__glce_ConvolutionFilter1DEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad61d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad61d0-0xdad61d8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad61d0 targets 0xdad67a8 and is always taken.

- `__glce_ConvolutionFilter2DEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad61d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad61d8-0xdad61e0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad61d8 targets 0xdad67a8 and is always taken.

- `__glce_ConvolutionParameterfEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad61e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad61e0-0xdad61e8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad61e0 targets 0xdad67a8 and is always taken.

- `__glce_ConvolutionParameterfvEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad61e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad61e8-0xdad61f0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad61e8 targets 0xdad67a8 and is always taken.

- `__glce_ConvolutionParameteriEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad61f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad61f0-0xdad61f8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad61f0 targets 0xdad67a8 and is always taken.

- `__glce_ConvolutionParameterivEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad61f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad61f8-0xdad6200 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad61f8 targets 0xdad67a8 and is always taken.

- `__glce_GetConvolutionFilterEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6210 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6210-0xdad6218 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6210 targets 0xdad66a8 and is always taken.

- `__glce_GetConvolutionParameterfvEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6218 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6218-0xdad6220 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6218 targets 0xdad66a8 and is always taken.

- `__glce_GetConvolutionParameterivEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6220 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6220-0xdad6228 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6220 targets 0xdad66a8 and is always taken.

- `__glce_GetSeparableFilterEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6228 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6228-0xdad6230 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6228 targets 0xdad66a8 and is always taken.

- `__glce_SeparableFilter2DEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6230 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6230-0xdad6238 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6230 targets 0xdad67a8 and is always taken.

- `__glce_GetHistogramEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6238 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6238-0xdad6240 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6238 targets 0xdad66a8 and is always taken.

- `__glce_GetHistogramParameterfvEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6240 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6240-0xdad6248 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6240 targets 0xdad66a8 and is always taken.

- `__glce_GetHistogramParameterivEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6248 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6248-0xdad6250 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6248 targets 0xdad66a8 and is always taken.

- `__glce_GetMinmaxEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6250 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6250-0xdad6258 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6250 targets 0xdad66a8 and is always taken.

- `__glce_GetMinmaxParameterfvEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6258 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6258-0xdad6260 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6258 targets 0xdad66a8 and is always taken.

- `__glce_GetMinmaxParameterivEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6260 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6260-0xdad6268 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6260 targets 0xdad66a8 and is always taken.

- `__glce_HistogramEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6268 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6268-0xdad6270 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6268 targets 0xdad67a8 and is always taken.

- `__glce_MinmaxEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6270 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6270-0xdad6278 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6270 targets 0xdad67a8 and is always taken.

- `__glce_ColorPointerEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6298 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6298-0xdad62a0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6298 targets 0xdad66a8 and is always taken.

- `__glce_EdgeFlagPointerEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad62a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad62a0-0xdad62a8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad62a0 targets 0xdad66a8 and is always taken.

- `__glce_GetPointervEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad62a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad62a8-0xdad62b0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad62a8 targets 0xdad66a8 and is always taken.

- `__glce_IndexPointerEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad62b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad62b0-0xdad62b8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad62b0 targets 0xdad66a8 and is always taken.

- `__glce_NormalPointerEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad62b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad62b8-0xdad62c0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad62b8 targets 0xdad66a8 and is always taken.

- `__glce_VertexPointerEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad62c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad62c8-0xdad62d0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad62c8 targets 0xdad66a8 and is always taken.

- `__glce_CopyTexImage1DEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6300 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6300-0xdad6308 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6300 targets 0xdad67a8 and is always taken.

- `__glce_CopyTexImage2DEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6308 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6308-0xdad6310 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6308 targets 0xdad67a8 and is always taken.

- `__glce_CopyTexSubImage1DEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6310 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6310-0xdad6318 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6310 targets 0xdad67a8 and is always taken.

- `__glce_CopyTexSubImage2DEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6318 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6318-0xdad6320 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6318 targets 0xdad67a8 and is always taken.

- `__glce_CopyTexSubImage3DEXT` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6320 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6320-0xdad6328 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6320 targets 0xdad67a8 and is always taken.

- `__glce_ColorPointer` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6328 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6328-0xdad6330 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6328 targets 0xdad66a8 and is always taken.

- `__glce_DisableClientState` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6330 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6330-0xdad6338 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6330 targets 0xdad66a8 and is always taken.

- `__glce_EdgeFlagPointer` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6338 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6338-0xdad6340 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6338 targets 0xdad66a8 and is always taken.

- `__glce_EnableClientState` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6340 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6340-0xdad6348 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6340 targets 0xdad66a8 and is always taken.

- `__glce_IndexPointer` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6348 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6348-0xdad6350 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6348 targets 0xdad66a8 and is always taken.

- `__glce_InterleavedArrays` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6350 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6350-0xdad6358 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6350 targets 0xdad66a8 and is always taken.

- `__glce_NormalPointer` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6358 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6358-0xdad6360 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6358 targets 0xdad66a8 and is always taken.

- `__glce_VertexPointer` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6368 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6368-0xdad6370 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6368 targets 0xdad66a8 and is always taken.

- `__glce_PolygonOffset` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6370 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6370-0xdad6378 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6370 targets 0xdad67a8 and is always taken.

- `__glce_Indexub` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6378 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6378-0xdad6380 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6378 targets 0xdad67a8 and is always taken.

- `__glce_Indexubv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6380 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6380-0xdad6388 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6380 targets 0xdad67a8 and is always taken.

- `__glce_PopClientAttrib` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6388 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6388-0xdad6390 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6388 targets 0xdad66a8 and is always taken.

- `__glce_PushClientAttrib` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6390 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6390-0xdad6398 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6390 targets 0xdad66a8 and is always taken.

- `__glce_SampleMaskSGIS` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6398 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6398-0xdad63a0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6398 targets 0xdad67a8 and is always taken.

- `__glce_SamplePatternSGIS` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad63a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad63a0-0xdad63a8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad63a0 targets 0xdad67a8 and is always taken.

- `__glce_DetailTexFuncSGIS` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad63b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad63b0-0xdad63b8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad63b0 targets 0xdad67a8 and is always taken.

- `__glce_GetDetailTexFuncSGIS` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad63b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad63b8-0xdad63c0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad63b8 targets 0xdad66a8 and is always taken.

- `__glce_SharpenTexFuncSGIS` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad63c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad63c0-0xdad63c8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad63c0 targets 0xdad67a8 and is always taken.

- `__glce_GetSharpenTexFuncSGIS` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad63c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad63c8-0xdad63d0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad63c8 targets 0xdad66a8 and is always taken.

- `__glce_SpriteParameterfSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6420 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6420-0xdad6428 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6420 targets 0xdad67a8 and is always taken.

- `__glce_SpriteParameterfvSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6428 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6428-0xdad6430 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6428 targets 0xdad67a8 and is always taken.

- `__glce_SpriteParameteriSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6430 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6430-0xdad6438 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6430 targets 0xdad67a8 and is always taken.

- `__glce_SpriteParameterivSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6438 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6438-0xdad6440 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6438 targets 0xdad67a8 and is always taken.

- `__glce_PointParameterfSGIS` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6450 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6450-0xdad6458 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6450 targets 0xdad67a8 and is always taken.

- `__glce_PointParameterfvSGIS` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6458 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6458-0xdad6460 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6458 targets 0xdad67a8 and is always taken.

- `__glce_FogFuncSGIS` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6460 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6460-0xdad6468 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6460 targets 0xdad67a8 and is always taken.

- `__glce_GetInstrumentsSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6468 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6468-0xdad6470 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6468 targets 0xdad66a8 and is always taken.

- `__glce_PollInstrumentsSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6478 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6478-0xdad6480 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6478 targets 0xdad66a8 and is always taken.

- `__glce_StartInstrumentsSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6488 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6488-0xdad6490 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6488 targets 0xdad67a8 and is always taken.

- `__glce_StopInstrumentsSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6490 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6490-0xdad6498 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6490 targets 0xdad67a8 and is always taken.

- `__glce_FlushRasterSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6498 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6498-0xdad64a0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6498 targets 0xdad66a8 and is always taken.

- `__glce_ReferencePlaneSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad64a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad64a0-0xdad64a8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad64a0 targets 0xdad67a8 and is always taken.

- `__glce_FrameZoomSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad64a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad64a8-0xdad64b0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad64a8 targets 0xdad67a8 and is always taken.

- `__glce_IglooInterfaceSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad64b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad64b0-0xdad64b8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad64b0 targets 0xdad66a8 and is always taken.

- `__glce_DeformationMap3dSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad64b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad64b8-0xdad64c0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad64b8 targets 0xdad67a8 and is always taken.

- `__glce_DeformationMap3fSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad64c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad64c0-0xdad64c8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad64c0 targets 0xdad67a8 and is always taken.

- `__glce_DeformSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad64c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad64c8-0xdad64d0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad64c8 targets 0xdad67a8 and is always taken.

- `__glce_LoadIdentityDeformationMapSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad64d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad64d0-0xdad64d8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad64d0 targets 0xdad67a8 and is always taken.

- `__glce_GetListParameterfvSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad64d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad64d8-0xdad64e0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad64d8 targets 0xdad66a8 and is always taken.

- `__glce_GetListParameterivSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad64e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad64e0-0xdad64e8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad64e0 targets 0xdad66a8 and is always taken.

- `__glce_ListParameterfSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad64e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad64e8-0xdad64f0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad64e8 targets 0xdad66a8 and is always taken.

- `__glce_ListParameterfvSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad64f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad64f0-0xdad64f8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad64f0 targets 0xdad66a8 and is always taken.

- `__glce_ListParameteriSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad64f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad64f8-0xdad6500 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad64f8 targets 0xdad66a8 and is always taken.

- `__glce_ListParameterivSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6500 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6500-0xdad6508 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6500 targets 0xdad66a8 and is always taken.

- `__glce_ColorSubTable` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6508 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6508-0xdad6510 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6508 targets 0xdad67a8 and is always taken.

- `__glce_GetFogFuncSGIS` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6518 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6518-0xdad6520 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6518 targets 0xdad66a8 and is always taken.

- `__glce_AsyncMarkerSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6550 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6550-0xdad6558 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6550 targets 0xdad67a8 and is always taken.

- `__glce_FinishAsyncSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6558 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6558-0xdad6560 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6558 targets 0xdad66a8 and is always taken.

- `__glce_PollAsyncSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6560 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6560-0xdad6568 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6560 targets 0xdad66a8 and is always taken.

- `__glce_GenAsyncMarkersSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6568 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6568-0xdad6570 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6568 targets 0xdad66a8 and is always taken.

- `__glce_DeleteAsyncMarkersSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6570 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6570-0xdad6578 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6570 targets 0xdad66a8 and is always taken.

- `__glce_IsAsyncMarkerSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6578 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6578-0xdad6580 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6578 targets 0xdad66a8 and is always taken.

- `__glce_FragmentColorMaterialSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6580 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6580-0xdad6588 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6580 targets 0xdad67a8 and is always taken.

- `__glce_FragmentLightfSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6588 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6588-0xdad6590 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6588 targets 0xdad67a8 and is always taken.

- `__glce_FragmentLightfvSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6590 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6590-0xdad6598 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6590 targets 0xdad67a8 and is always taken.

- `__glce_FragmentLightiSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6598 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6598-0xdad65a0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6598 targets 0xdad67a8 and is always taken.

- `__glce_FragmentLightivSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad65a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad65a0-0xdad65a8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad65a0 targets 0xdad67a8 and is always taken.

- `__glce_FragmentLightModelfSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad65a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad65a8-0xdad65b0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad65a8 targets 0xdad67a8 and is always taken.

- `__glce_FragmentLightModelfvSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad65b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad65b0-0xdad65b8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad65b0 targets 0xdad67a8 and is always taken.

- `__glce_FragmentLightModeliSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad65b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad65b8-0xdad65c0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad65b8 targets 0xdad67a8 and is always taken.

- `__glce_FragmentLightModelivSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad65c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad65c0-0xdad65c8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad65c0 targets 0xdad67a8 and is always taken.

- `__glce_FragmentMaterialfSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad65c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad65c8-0xdad65d0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad65c8 targets 0xdad67a8 and is always taken.

- `__glce_FragmentMaterialfvSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad65d0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad65d0-0xdad65d8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad65d0 targets 0xdad67a8 and is always taken.

- `__glce_FragmentMaterialiSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad65d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad65d8-0xdad65e0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad65d8 targets 0xdad67a8 and is always taken.

- `__glce_FragmentMaterialivSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad65e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad65e0-0xdad65e8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad65e0 targets 0xdad67a8 and is always taken.

- `__glce_GetFragmentLightfvSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad65e8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad65e8-0xdad65f0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad65e8 targets 0xdad66a8 and is always taken.

- `__glce_GetFragmentLightivSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad65f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad65f0-0xdad65f8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad65f0 targets 0xdad66a8 and is always taken.

- `__glce_GetFragmentMaterialfvSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad65f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad65f8-0xdad6600 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad65f8 targets 0xdad66a8 and is always taken.

- `__glce_GetFragmentMaterialivSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6600 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6600-0xdad6608 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6600 targets 0xdad66a8 and is always taken.

- `__glce_LightEnviSGIX` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6608 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6608-0xdad6610 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6608 targets 0xdad67a8 and is always taken.

- `__glce_DrawArrays` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6618 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6618-0xdad6620 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6618 targets 0xdad67a8 and is always taken.

- `__glce_GetConvolutionFilter` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6658 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6658-0xdad6660 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6658 targets 0xdad66a8 and is always taken.

- `__glce_GetConvolutionParameterfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6660 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6660-0xdad6668 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6660 targets 0xdad66a8 and is always taken.

- `__glce_GetConvolutionParameteriv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6668 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6668-0xdad6670 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6668 targets 0xdad66a8 and is always taken.

- `__glce_GetSeparableFilter` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6670 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6670-0xdad6678 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6670 targets 0xdad66a8 and is always taken.

- `__glce_GetHistogram` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6678 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6678-0xdad6680 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6678 targets 0xdad66a8 and is always taken.

- `__glce_GetHistogramParameterfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6680 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6680-0xdad6688 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6680 targets 0xdad66a8 and is always taken.

- `__glce_GetHistogramParameteriv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6688 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6688-0xdad6690 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6688 targets 0xdad66a8 and is always taken.

- `__glce_GetMinmax` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6690 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6690-0xdad6698 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6690 targets 0xdad66a8 and is always taken.

- `__glce_GetMinmaxParameterfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6698 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6698-0xdad66a0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad6698 targets 0xdad66a8 and is always taken.

- `__glce_GetMinmaxParameteriv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad66a0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad66a0-0xdad66a8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdad66a0 targets 0xdad66a8 and is always taken.

- `__glce_common_not_listable` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad66a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad66a8-0xdad67a8 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0xdad6758 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdad675c loads 4 bytes from t0 +0x1050.
  The `lw` at 0xdad6764 loads 4 bytes from ([0x1010] + t0) +0x26c0.
  2 such `sw` accesses store 4 bytes to t0 +0x1050, including `sw` at 0xdad676c, `sw` at 0xdad678c.
  The `lw` at 0xdad6778 loads 4 bytes from (entry(0x2b9fc) + t0) +0x0.
  The `bal` at 0xdad6740 calls __glce_common_not_listable+160 [0xdad6748] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad6780 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The return at 0xdad67a0 has v0 = ret(?).

- `__glce_common_listable` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad67a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad67a8-0xdad6950 (424 bytes).
  It occupies 424 bytes.
  The `lw` at 0xdad6858 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdad685c loads 4 bytes from t0 +0x1050.
  The `lw` at 0xdad6864 loads 4 bytes from ([0x1010] + t0) +0x17f8.
  3 such `sw` accesses store 4 bytes to t0 +0x1050, including `sw` at 0xdad686c, `sw` at 0xdad6914, `sw` at 0xdad6934.
  The `lw` at 0xdad6878 loads 4 bytes from (entry(0x2b8fc) + t0) +0x0.
  The `lw` at 0xdad690c loads 4 bytes from ([0x1010] + t0) +0x26c0.
  The `lw` at 0xdad6920 loads 4 bytes from ?.
  The `bal` at 0xdad6840 calls __glce_common_listable+160 [0xdad6848] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdad6880 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdad6928 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdad6948 has v0 = ret(?).

- `glNewList` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6960 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6960-0xdad696c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6960 loads 4 bytes from abs 0x1050.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6964).

- `glEndList` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad696c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad696c-0xdad6978 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad696c loads 4 bytes from abs 0x1054.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6970).

- `glCallList` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6978 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6978-0xdad6984 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6978 loads 4 bytes from abs 0x1058.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad697c).

- `glCallLists` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6984 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6984-0xdad6990 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6984 loads 4 bytes from abs 0x105c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6988).

- `glDeleteLists` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6990 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6990-0xdad699c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6990 loads 4 bytes from abs 0x1060.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6994).

- `glGenLists` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad699c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad699c-0xdad69a8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad699c loads 4 bytes from abs 0x1064.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad69a0).

- `glListBase` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad69a8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad69a8-0xdad69b4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad69a8 loads 4 bytes from abs 0x1068.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad69ac).

- `glBegin` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad69b4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad69b4-0xdad69c0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad69b4 loads 4 bytes from abs 0x106c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad69b8).

- `glBitmap` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad69c0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad69c0-0xdad69cc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad69c0 loads 4 bytes from abs 0x1070.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad69c4).

- `glEdgeFlag` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad69cc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad69cc-0xdad69d8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad69cc loads 4 bytes from abs 0x1074.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad69d0).

- `glEdgeFlagv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad69d8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad69d8-0xdad69e4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad69d8 loads 4 bytes from abs 0x1078.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad69dc).

- `glEnd` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad69e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad69e4-0xdad69f0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad69e4 loads 4 bytes from abs 0x107c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad69e8).

- `glRasterPos2d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad69f0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad69f0-0xdad69fc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad69f0 loads 4 bytes from abs 0x1728.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad69f4).

- `glRasterPos2dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad69fc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad69fc-0xdad6a08 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad69fc loads 4 bytes from abs 0x172c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6a00).

- `glRasterPos2f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6a08 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6a08-0xdad6a14 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6a08 loads 4 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6a0c).

- `glRasterPos2fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6a14 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6a14-0xdad6a20 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6a14 loads 4 bytes from abs 0x1734.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6a18).

- `glRasterPos2i` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6a20 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6a20-0xdad6a2c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6a20 loads 4 bytes from abs 0x1738.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6a24).

- `glRasterPos2iv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6a2c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6a2c-0xdad6a38 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6a2c loads 4 bytes from abs 0x173c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6a30).

- `glRasterPos2s` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6a38 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6a38-0xdad6a44 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6a38 loads 4 bytes from abs 0x1740.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6a3c).

- `glRasterPos2sv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6a44 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6a44-0xdad6a50 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6a44 loads 4 bytes from abs 0x1744.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6a48).

- `glRasterPos3d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6a50 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6a50-0xdad6a5c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6a50 loads 4 bytes from abs 0x1748.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6a54).

- `glRasterPos3dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6a5c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6a5c-0xdad6a68 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6a5c loads 4 bytes from abs 0x174c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6a60).

- `glRasterPos3f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6a68 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6a68-0xdad6a74 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6a68 loads 4 bytes from abs 0x1750.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6a6c).

- `glRasterPos3fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6a74 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6a74-0xdad6a80 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6a74 loads 4 bytes from abs 0x1754.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6a78).

- `glRasterPos3i` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6a80 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6a80-0xdad6a8c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6a80 loads 4 bytes from abs 0x1758.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6a84).

- `glRasterPos3iv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6a8c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6a8c-0xdad6a98 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6a8c loads 4 bytes from abs 0x175c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6a90).

- `glRasterPos3s` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6a98 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6a98-0xdad6aa4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6a98 loads 4 bytes from abs 0x1760.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6a9c).

- `glRasterPos3sv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6aa4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6aa4-0xdad6ab0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6aa4 loads 4 bytes from abs 0x1764.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6aa8).

- `glRasterPos4d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6ab0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6ab0-0xdad6abc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6ab0 loads 4 bytes from abs 0x1768.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6ab4).

- `glRasterPos4dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6abc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6abc-0xdad6ac8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6abc loads 4 bytes from abs 0x176c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6ac0).

- `glRasterPos4f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6ac8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6ac8-0xdad6ad4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6ac8 loads 4 bytes from abs 0x1770.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6acc).

- `glRasterPos4fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6ad4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6ad4-0xdad6ae0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6ad4 loads 4 bytes from abs 0x1774.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6ad8).

- `glRasterPos4i` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6ae0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6ae0-0xdad6aec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6ae0 loads 4 bytes from abs 0x1778.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6ae4).

- `glRasterPos4iv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6aec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6aec-0xdad6af8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6aec loads 4 bytes from abs 0x177c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6af0).

- `glRasterPos4s` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6af8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6af8-0xdad6b04 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6af8 loads 4 bytes from abs 0x1780.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6afc).

- `glRasterPos4sv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6b04 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6b04-0xdad6b10 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6b04 loads 4 bytes from abs 0x1784.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6b08).

- `glRectdv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6b1c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6b1c-0xdad6b28 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6b1c loads 4 bytes from abs 0x178c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6b20).

- `glRectfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6b34 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6b34-0xdad6b40 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6b34 loads 4 bytes from abs 0x1794.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6b38).

- `glRecti` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6b40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6b40-0xdad6b4c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6b40 loads 4 bytes from abs 0x1798.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6b44).

- `glRectiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6b4c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6b4c-0xdad6b58 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6b4c loads 4 bytes from abs 0x179c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6b50).

- `glRects` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6b58 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6b58-0xdad6b64 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6b58 loads 4 bytes from abs 0x17a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6b5c).

- `glRectsv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6b64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6b64-0xdad6b70 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6b64 loads 4 bytes from abs 0x17a4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6b68).

- `glClipPlane` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6b70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6b70-0xdad6b7c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6b70 loads 4 bytes from abs 0x1080.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6b74).

- `glColorMaterial` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6b7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6b7c-0xdad6b88 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6b7c loads 4 bytes from abs 0x1084.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6b80).

- `glCullFace` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6b88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6b88-0xdad6b94 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6b88 loads 4 bytes from abs 0x1088.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6b8c).

- `glFogf` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6b94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6b94-0xdad6ba0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6b94 loads 4 bytes from abs 0x108c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6b98).

- `glFogfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6ba0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6ba0-0xdad6bac (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6ba0 loads 4 bytes from abs 0x1090.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6ba4).

- `glFogi` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6bac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6bac-0xdad6bb8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6bac loads 4 bytes from abs 0x1094.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6bb0).

- `glFogiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6bb8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6bb8-0xdad6bc4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6bb8 loads 4 bytes from abs 0x1098.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6bbc).

- `glFrontFace` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6bc4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6bc4-0xdad6bd0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6bc4 loads 4 bytes from abs 0x109c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6bc8).

- `glHint` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6bd0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6bd0-0xdad6bdc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6bd0 loads 4 bytes from abs 0x10a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6bd4).

- `glLightf` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6bdc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6bdc-0xdad6be8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6bdc loads 4 bytes from abs 0x10a4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6be0).

- `glLightfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6be8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6be8-0xdad6bf4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6be8 loads 4 bytes from abs 0x10a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6bec).

- `glLighti` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6bf4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6bf4-0xdad6c00 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6bf4 loads 4 bytes from abs 0x10ac.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6bf8).

- `glLightiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6c00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6c00-0xdad6c0c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6c00 loads 4 bytes from abs 0x10b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6c04).

- `glLightModelf` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6c0c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6c0c-0xdad6c18 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6c0c loads 4 bytes from abs 0x10b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6c10).

- `glLightModelfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6c18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6c18-0xdad6c24 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6c18 loads 4 bytes from abs 0x10b8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6c1c).

- `glLightModeli` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6c24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6c24-0xdad6c30 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6c24 loads 4 bytes from abs 0x10bc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6c28).

- `glLightModeliv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6c30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6c30-0xdad6c3c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6c30 loads 4 bytes from abs 0x10c0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6c34).

- `glLineStipple` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6c3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6c3c-0xdad6c48 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6c3c loads 4 bytes from abs 0x10c4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6c40).

- `glLineWidth` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6c48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6c48-0xdad6c54 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6c48 loads 4 bytes from abs 0x10c8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6c4c).

- `glMaterialf` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6c54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6c54-0xdad6c60 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6c54 loads 4 bytes from abs 0x10cc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6c58).

- `glMaterialfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6c60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6c60-0xdad6c6c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6c60 loads 4 bytes from abs 0x10d0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6c64).

- `glMateriali` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6c6c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6c6c-0xdad6c78 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6c6c loads 4 bytes from abs 0x10d4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6c70).

- `glMaterialiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6c78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6c78-0xdad6c84 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6c78 loads 4 bytes from abs 0x10d8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6c7c).

- `glPointSize` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6c84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6c84-0xdad6c90 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6c84 loads 4 bytes from abs 0x10dc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6c88).

- `glPolygonMode` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6c90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6c90-0xdad6c9c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6c90 loads 4 bytes from abs 0x10e0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6c94).

- `glPolygonStipple` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6c9c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6c9c-0xdad6ca8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6c9c loads 4 bytes from abs 0x10e4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6ca0).

- `glScissor` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6ca8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6ca8-0xdad6cb4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6ca8 loads 4 bytes from abs 0x10e8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6cac).

- `glShadeModel` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6cb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6cb4-0xdad6cc0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6cb4 loads 4 bytes from abs 0x10ec.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6cb8).

- `glInitNames` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6da4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6da4-0xdad6db0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6da4 loads 4 bytes from abs 0x113c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6da8).

- `glLoadName` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6db0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6db0-0xdad6dbc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6db0 loads 4 bytes from abs 0x1140.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6db4).

- `glPassThrough` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6dbc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6dbc-0xdad6dc8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6dbc loads 4 bytes from abs 0x1144.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6dc0).

- `glPopName` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6dc8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6dc8-0xdad6dd4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6dc8 loads 4 bytes from abs 0x1148.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6dcc).

- `glPushName` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6dd4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6dd4-0xdad6de0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6dd4 loads 4 bytes from abs 0x114c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6dd8).

- `glClearAccum` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6df8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6df8-0xdad6e04 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6df8 loads 4 bytes from abs 0x1158.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6dfc).

- `glClearColor` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6e10 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6e10-0xdad6e1c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6e10 loads 4 bytes from abs 0x1160.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6e14).

- `glClearStencil` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6e1c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6e1c-0xdad6e28 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6e1c loads 4 bytes from abs 0x1164.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6e20).

- `glClearDepth` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6e28 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6e28-0xdad6e34 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6e28 loads 4 bytes from abs 0x1168.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6e2c).

- `glStencilMask` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6e34 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6e34-0xdad6e40 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6e34 loads 4 bytes from abs 0x116c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6e38).

- `glColorMask` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6e40 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6e40-0xdad6e4c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6e40 loads 4 bytes from abs 0x1170.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6e44).

- `glDepthMask` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6e4c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6e4c-0xdad6e58 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6e4c loads 4 bytes from abs 0x1174.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6e50).

- `glAccum` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6e64 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6e64-0xdad6e70 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6e64 loads 4 bytes from abs 0x117c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6e68).

- `glDisable` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6e70 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6e70-0xdad6e7c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6e70 loads 4 bytes from abs 0x1180.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6e74).

- `glEnable` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6e7c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6e7c-0xdad6e88 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6e7c loads 4 bytes from abs 0x1184.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6e80).

- `glFinish` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6e88 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6e88-0xdad6e94 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6e88 loads 4 bytes from abs 0x1188.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6e8c).

- `glFlush` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6e94 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6e94-0xdad6ea0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6e94 loads 4 bytes from abs 0x118c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6e98).

- `glPopAttrib` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6ea0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6ea0-0xdad6eac (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6ea0 loads 4 bytes from abs 0x1190.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6ea4).

- `glPushAttrib` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6eac (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6eac-0xdad6eb8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6eac loads 4 bytes from abs 0x1194.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6eb0).

- `glMap1d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6eb8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6eb8-0xdad6ec4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6eb8 loads 4 bytes from abs 0x1198.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6ebc).

- `glMap1f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6ec4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6ec4-0xdad6ed0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6ec4 loads 4 bytes from abs 0x119c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6ec8).

- `glMap2d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6ed0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6ed0-0xdad6edc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6ed0 loads 4 bytes from abs 0x11a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6ed4).

- `glMap2f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6edc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6edc-0xdad6ee8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6edc loads 4 bytes from abs 0x11a4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6ee0).

- `glMapGrid1d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6ee8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6ee8-0xdad6ef4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6ee8 loads 4 bytes from abs 0x11a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6eec).

- `glMapGrid1f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6ef4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6ef4-0xdad6f00 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6ef4 loads 4 bytes from abs 0x11ac.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6ef8).

- `glMapGrid2d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6f00 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6f00-0xdad6f0c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6f00 loads 4 bytes from abs 0x11b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6f04).

- `glMapGrid2f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6f0c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6f0c-0xdad6f18 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6f0c loads 4 bytes from abs 0x11b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6f10).

- `glEvalCoord1d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6f18 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6f18-0xdad6f24 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6f18 loads 4 bytes from abs 0x11b8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6f1c).

- `glEvalCoord1dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6f24 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6f24-0xdad6f30 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6f24 loads 4 bytes from abs 0x11bc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6f28).

- `glEvalCoord1f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6f30 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6f30-0xdad6f3c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6f30 loads 4 bytes from abs 0x11c0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6f34).

- `glEvalCoord1fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6f3c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6f3c-0xdad6f48 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6f3c loads 4 bytes from abs 0x11c4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6f40).

- `glEvalCoord2d` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6f48 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6f48-0xdad6f54 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6f48 loads 4 bytes from abs 0x11c8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6f4c).

- `glEvalCoord2dv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6f54 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6f54-0xdad6f60 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6f54 loads 4 bytes from abs 0x11cc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6f58).

- `glEvalCoord2f` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6f60 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6f60-0xdad6f6c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6f60 loads 4 bytes from abs 0x11d0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6f64).

- `glEvalCoord2fv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6f6c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6f6c-0xdad6f78 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6f6c loads 4 bytes from abs 0x11d4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6f70).

- `glEvalMesh1` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6f78 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6f78-0xdad6f84 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6f78 loads 4 bytes from abs 0x11d8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6f7c).

- `glEvalPoint1` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6f84 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6f84-0xdad6f90 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6f84 loads 4 bytes from abs 0x11dc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6f88).

- `glEvalMesh2` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6f90 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6f90-0xdad6f9c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6f90 loads 4 bytes from abs 0x11e0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6f94).

- `glEvalPoint2` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6f9c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6f9c-0xdad6fa8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6f9c loads 4 bytes from abs 0x11e4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6fa0).

- `glAlphaFunc` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6fa8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6fa8-0xdad6fb4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6fa8 loads 4 bytes from abs 0x11e8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6fac).

- `glBlendFunc` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6fb4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6fb4-0xdad6fc0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6fb4 loads 4 bytes from abs 0x11ec.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6fb8).

- `glLogicOp` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6fc0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6fc0-0xdad6fcc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6fc0 loads 4 bytes from abs 0x11f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6fc4).

- `glStencilFunc` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6fcc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6fcc-0xdad6fd8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6fcc loads 4 bytes from abs 0x11f4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6fd0).

- `glStencilOp` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6fd8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6fd8-0xdad6fe4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6fd8 loads 4 bytes from abs 0x11f8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6fdc).

- `glDepthFunc` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6fe4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6fe4-0xdad6ff0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad6fe4 loads 4 bytes from abs 0x11fc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad6fe8).

- `glPixelMapusv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7044 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7044-0xdad7050 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7044 loads 4 bytes from abs 0x121c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7048).

- `glDrawPixels` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7074 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7074-0xdad7080 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7074 loads 4 bytes from abs 0x122c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7078).

- `glGetBooleanv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7080 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7080-0xdad708c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7080 loads 4 bytes from abs 0x1230.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7084).

- `glGetClipPlane` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad708c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad708c-0xdad7098 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad708c loads 4 bytes from abs 0x1234.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7090).

- `glGetDoublev` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7098 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7098-0xdad70a4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7098 loads 4 bytes from abs 0x1238.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad709c).

- `glGetError` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad70a4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad70a4-0xdad70b0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad70a4 loads 4 bytes from abs 0x123c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad70a8).

- `glGetFloatv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad70b0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad70b0-0xdad70bc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad70b0 loads 4 bytes from abs 0x1240.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad70b4).

- `glGetIntegerv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad70bc (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad70bc-0xdad70c8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad70bc loads 4 bytes from abs 0x1244.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad70c0).

- `glGetLightfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad70c8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad70c8-0xdad70d4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad70c8 loads 4 bytes from abs 0x1248.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad70cc).

- `glGetLightiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad70d4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad70d4-0xdad70e0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad70d4 loads 4 bytes from abs 0x124c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad70d8).

- `glGetMapdv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad70e0 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad70e0-0xdad70ec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad70e0 loads 4 bytes from abs 0x1250.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad70e4).

- `glGetMapfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad70ec (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad70ec-0xdad70f8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad70ec loads 4 bytes from abs 0x1254.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad70f0).

- `glGetMapiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad70f8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad70f8-0xdad7104 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad70f8 loads 4 bytes from abs 0x1258.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad70fc).

- `glGetMaterialfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7104 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7104-0xdad7110 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7104 loads 4 bytes from abs 0x125c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7108).

- `glGetMaterialiv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7110 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7110-0xdad711c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7110 loads 4 bytes from abs 0x1260.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7114).

- `glGetPolygonStipple` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7140 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7140-0xdad714c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7140 loads 4 bytes from abs 0x1270.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7144).

- `glGetString` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad714c (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad714c-0xdad7158 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad714c loads 4 bytes from abs 0x1274.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7150).

- `glGetTexLevelParameterfv` in `usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad71b8 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad71b8-0xdad71c4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad71b8 loads 4 bytes from abs 0x1298.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad71bc).

No routines were skipped.
