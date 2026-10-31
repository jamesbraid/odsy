### __glim_Enable (IP30ODSY32)

Binary `root/builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, routine at 0xda289e0, 3244 bytes.

Every value takes this path when [0x1018] == 1: call __glSetError(a0=0x502, a2=[0x1010], a4=1); return.

Values with the same outcome as the default, with no leaf of their own: 65458 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8438, 0x843b to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1010]); return.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | 0xda290c4 | [ctx+1792] |= 0x400; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb20 | GL_LINE_SMOOTH | 2848 | 0xda28e38 | [ctx+1792] |= 0x200; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb24 | GL_LINE_STIPPLE | 2852 | 0xda29364 | [ctx+1792] |= 0x100; [0x1018] w= 2; [ctx+11812] |= 2; return |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | 0xda28cf8 | [ctx+1792] |= 0x800; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | 0xda290d0 | [ctx+1792] |= 0x2000; [0x1018] w= 2; [ctx+11812] |= 4; return |
| 0xb44 | GL_CULL_FACE | 2884 | 0xda2913c | [ctx+1792] |= 0x1000; [0x1018] w= 2; [ctx+11812] |= 4; return (when ([ctx+1792] & 0x1000) == 0) |
| 0xb44 | GL_CULL_FACE | 2884 | - | return (when ([ctx+1792] & 0x1000) != 0) |
| 0xb50 | GL_LIGHTING | 2896 | 0xda28ee0 | [ctx+1792] |= 0x40; [0x1018] w= 2; [ctx+11812] |= 0x20; call <[ctx+11848]>(); call <[ctx+12056]>(); return |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | 0xda29630 | [ctx+1792] |= 0x80; call <[ctx+11848]>(); call <[ctx+12056]>(); return |
| 0xb60 | GL_FOG | 2912 | 0xda28bd8 | [ctx+1792] |= 0x20; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb71 | GL_DEPTH_TEST | 2929 | 0xda28aec | [ctx+1792] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 0x80; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb90 | GL_STENCIL_TEST | 2960 | 0xda29320 | [ctx+1792] |= 0x8000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xba1 | GL_NORMALIZE | 2977 | 0xda290a8 | [ctx+1792] |= 0x400000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbc0 | GL_ALPHA_TEST | 3008 | 0xda28e10 | [ctx+1792] |= 1; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbd0 | GL_DITHER | 3024 | 0xda292bc | [ctx+1792] |= 8; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbe2 | GL_BLEND | 3042 | 0xda28c4c | [ctx+1792] |= 2; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | 0xda29520 | [ctx+1792] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | 0xda29290 | [ctx+1796] |= 0x800; call __glim_BlendEquationEXT(a0=0xbf1, a2=[0x1010], a4=1); [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0xda28fcc | [ctx+1792] |= 0x4000; [ctx+31368] w= [ctx+31364]; call <[ctx+11972]>(); call <[ctx+11964]>(); [0x1018] w= 2; [ctx+11812] |= 1; return (when ([ctx+1792] & 0x4000) == 0 and [ctx+1636] != 0 and [ctx+3225] != 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0xda28fcc | [ctx+1792] |= 0x4000; call <[ctx+11972]>(); call <[ctx+11964]>(); [0x1018] w= 2; [ctx+11812] |= 1; return (when ([ctx+1792] & 0x4000) == 0 and [ctx+1636] != 0 and [ctx+3225] == 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0xda28fcc | [ctx+1792] |= 0x4000; call <[ctx+11972]>(); call <[ctx+11964]>(); [0x1018] w= 2; [ctx+11812] |= 1; return (when ([ctx+1792] & 0x4000) == 0 and [ctx+1636] == 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | - | return (when ([ctx+1792] & 0x4000) != 0) |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | 0xda29504 | [ctx+1792] |= 0x40000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | 0xda28a80 | [ctx+1792] |= 0x80000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | 0xda29304 | [ctx+1792] |= 0x100000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | 0xda2907c | [ctx+1792] |= 0x200000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd80 | GL_AUTO_NORMAL | 3456 | 0xda28de8 | [ctx+1792] |= 0x800000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | 0xda28d20 | [ctx+1808] |= 1; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd91 | GL_MAP1_INDEX | 3473 | 0xda28d20 | [ctx+1808] |= 2; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd92 | GL_MAP1_NORMAL | 3474 | 0xda28d20 | [ctx+1808] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | 0xda28d20 | [ctx+1808] |= 8; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | 0xda28d20 | [ctx+1808] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | 0xda28d20 | [ctx+1808] |= 0x20; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | 0xda28d20 | [ctx+1808] |= 0x40; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | 0xda28d20 | [ctx+1808] |= 0x80; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | 0xda28d20 | [ctx+1808] |= 0x100; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | 0xda28aa4 | [ctx+1812] |= 1; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb1 | GL_MAP2_INDEX | 3505 | 0xda28aa4 | [ctx+1812] |= 2; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | 0xda28aa4 | [ctx+1812] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | 0xda28aa4 | [ctx+1812] |= 8; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | 0xda28aa4 | [ctx+1812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | 0xda28aa4 | [ctx+1812] |= 0x20; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | 0xda28aa4 | [ctx+1812] |= 0x40; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | 0xda28aa4 | [ctx+1812] |= 0x80; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | 0xda28aa4 | [ctx+1812] |= 0x100; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xde0 | GL_TEXTURE_1D | 3552 | 0xda29050 | [ctx+1792] |= 0x10000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xde1 | GL_TEXTURE_2D | 3553 | 0xda28dbc | [ctx+1792] |= 0x20000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | 0xda29210 | [ctx+1796] |= 0x200; [0x1018] w= 2; [ctx+11812] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | 0xda28c6c | [ctx+1796] |= 0x400; [0x1018] w= 2; [ctx+11812] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | 0xda28e64 | [ctx+1804] |= 1; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | 0xda28e64 | [ctx+1804] |= 2; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | 0xda28e64 | [ctx+1804] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | 0xda28e64 | [ctx+1804] |= 8; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | 0xda28e64 | [ctx+1804] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | 0xda28e64 | [ctx+1804] |= 0x20; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x4000 | GL_LIGHT0 | 16384 | 0xda28e98 | [ctx+1800] |= 1; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4001 | GL_LIGHT1 | 16385 | 0xda28e98 | [ctx+1800] |= 2; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4002 | GL_LIGHT2 | 16386 | 0xda28e98 | [ctx+1800] |= 4; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4003 | GL_LIGHT3 | 16387 | 0xda28e98 | [ctx+1800] |= 8; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4004 | GL_LIGHT4 | 16388 | 0xda28e98 | [ctx+1800] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4005 | GL_LIGHT5 | 16389 | 0xda28e98 | [ctx+1800] |= 0x20; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4006 | GL_LIGHT6 | 16390 | 0xda28e98 | [ctx+1800] |= 0x40; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4007 | GL_LIGHT7 | 16391 | 0xda28e98 | [ctx+1800] |= 0x80; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | 0xda28a38 | [ctx+1792] |= 0x2000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | 0xda29488 | [ctx+1792] |= 0x4000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8012 | GL_SEPARABLE_2D | 32786 | 0xda291cc | [ctx+1792] |= 0x8000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8024 | GL_HISTOGRAM | 32804 | 0xda28f5c | [ctx+1792] |= 0x10000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x802e | GL_MINMAX | 32814 | 0xda2943c | [ctx+1792] |= 0x20000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | 0xda28d74 | [ctx+1792] |= 0x1000000; [0x1018] w= 2; [ctx+11812] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x806f | GL_TEXTURE_3D | 32879 | 0xda295fc | [ctx+1792] |= 0x40000000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | 0xda29418 | [ctx+5416] |= 0x20; [ctx+5404] |= 0xff; return |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | 0xda29664 | [ctx+5416] |= 1; [ctx+5404] |= 0xf00; return |
| 0x8076 | GL_COLOR_ARRAY | 32886 | 0xda29198 | [ctx+5416] |= 2; [ctx+5404] |= 0xff000; return |
| 0x8077 | GL_INDEX_ARRAY | 32887 | 0xda292d8 | [ctx+5416] |= 8; [ctx+5404] |= 0xf0000000; return |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0xda295a4 | [ctx+5408] |= (1 <<mod32 ([ctx+28268] + -33735)); [ctx+5416] |= 4; [ctx+5404] |= 0x7f00000; return (when ([ctx+28268] + -33735) == 0) |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0xda295a4 | [ctx+5408] |= (1 <<mod32 ([ctx+28268] + -33735)); return (when ([ctx+28268] + -33735) != 0) |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | 0xda293bc | [ctx+5416] |= 0x10; [ctx+5404] |= 0x8000000; return |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | 0xda29120 | [ctx+1792] |= 0x80000000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x80d0 | GL_COLOR_TABLE | 32976 | 0xda29560 | [ctx+1796] |= 1; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | 0xda28c0c | [ctx+1796] |= 2; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | 0xda29534 | [ctx+1796] |= 4; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | 0xda29688 | [ctx+5412] |= 1; return |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | 0xda29358 | [ctx+5412] |= 2; return |

78 capability values with a leaf of their own.

### __glim_Disable (IP30ODSY32)

Binary `root/builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, routine at 0xda29690, 3328 bytes.

Every value takes this path when [0x1018] == 1: call __glSetError(a0=0x502, a2=[0x1010], a4=1); return.

Values with the same outcome as the default, with no leaf of their own: 65458 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8438, 0x843b to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1010]); return.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | 0xda29d40 | [ctx+1792] &= ~0x400; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb20 | GL_LINE_SMOOTH | 2848 | 0xda29b00 | [ctx+1792] &= ~0x200; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb24 | GL_LINE_STIPPLE | 2852 | 0xda2a014 | [ctx+1792] &= ~0x100; [0x1018] w= 2; [ctx+11812] |= 2; return |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | 0xda299ac | [ctx+1792] &= ~0x800; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | 0xda29d50 | [ctx+1792] &= ~0x2000; [0x1018] w= 2; [ctx+11812] |= 4; return |
| 0xb44 | GL_CULL_FACE | 2884 | 0xda29dcc | [ctx+1792] &= ~0x1000; [0x1018] w= 2; [ctx+11812] |= 4; return (when ([ctx+1792] & 0x1000) != 0) |
| 0xb44 | GL_CULL_FACE | 2884 | - | return (when ([ctx+1792] & 0x1000) == 0) |
| 0xb50 | GL_LIGHTING | 2896 | 0xda29ba8 | [ctx+1792] &= ~0x40; [0x1018] w= 2; [ctx+11812] |= 0x20; call <[ctx+11848]>(); call <[ctx+12056]>(); return |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | 0xda2a2dc | [ctx+1792] &= ~0x80; call <[ctx+11848]>(); return |
| 0xb60 | GL_FOG | 2912 | 0xda2989c | [ctx+1792] &= ~0x20; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb71 | GL_DEPTH_TEST | 2929 | 0xda297b0 | [ctx+1792] &= ~0x10; [0x1018] w= 2; [ctx+11812] |= 0x80; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xb90 | GL_STENCIL_TEST | 2960 | 0xda29fcc | [ctx+1792] &= ~0x8000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xba1 | GL_NORMALIZE | 2977 | 0xda29d20 | [ctx+1792] &= ~0x400000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbc0 | GL_ALPHA_TEST | 3008 | 0xda29ad0 | [ctx+1792] &= ~0x1; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbd0 | GL_DITHER | 3024 | 0xda29f54 | [ctx+1792] &= ~0x8; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbe2 | GL_BLEND | 3042 | 0xda29904 | [ctx+1792] &= ~0x2; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | 0xda2a1c8 | [ctx+1792] &= ~0x4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | 0xda29f34 | [ctx+1796] &= ~0x800; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0xda2a30c | [ctx+1792] &= ~0x4000; call __glReadjustZCounts(a0=[0x1010], a2=[0x1010]); call <[ctx+11972]>(); call <[ctx+11964]>(); [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | 0xda29c98 | [ctx+1792] &= ~0x40000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | 0xda29740 | [ctx+1792] &= ~0x80000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | 0xda29fa8 | [ctx+1792] &= ~0x100000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | 0xda29cf4 | [ctx+1792] &= ~0x200000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd80 | GL_AUTO_NORMAL | 3456 | 0xda29aa4 | [ctx+1792] &= ~0x800000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | 0xda299d8 | [ctx+1808] &= 0xfffe; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd91 | GL_MAP1_INDEX | 3473 | 0xda299d8 | [ctx+1808] &= 0xfffd; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd92 | GL_MAP1_NORMAL | 3474 | 0xda299d8 | [ctx+1808] &= 0xfffb; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | 0xda299d8 | [ctx+1808] &= 0xfff7; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | 0xda299d8 | [ctx+1808] &= 0xffef; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | 0xda299d8 | [ctx+1808] &= 0xffdf; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | 0xda299d8 | [ctx+1808] &= 0xffbf; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | 0xda299d8 | [ctx+1808] &= 0xff7f; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | 0xda299d8 | [ctx+1808] &= 0xfeff; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | 0xda29764 | [ctx+1812] &= 0xfffe; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb1 | GL_MAP2_INDEX | 3505 | 0xda29764 | [ctx+1812] &= 0xfffd; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | 0xda29764 | [ctx+1812] &= 0xfffb; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | 0xda29764 | [ctx+1812] &= 0xfff7; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | 0xda29764 | [ctx+1812] &= 0xffef; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | 0xda29764 | [ctx+1812] &= 0xffdf; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | 0xda29764 | [ctx+1812] &= 0xffbf; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | 0xda29764 | [ctx+1812] &= 0xff7f; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | 0xda29764 | [ctx+1812] &= 0xfeff; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xde0 | GL_TEXTURE_1D | 3552 | 0xda29cc8 | [ctx+1792] &= ~0x10000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0xde1 | GL_TEXTURE_2D | 3553 | 0xda29a7c | [ctx+1792] &= ~0x20000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | 0xda29eb8 | [ctx+1796] &= ~0x200; [0x1018] w= 2; [ctx+11812] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | 0xda29924 | [ctx+1796] &= ~0x400; [0x1018] w= 2; [ctx+11812] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | 0xda29b2c | [ctx+1804] &= ~0x1; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | 0xda29b2c | [ctx+1804] &= ~0x2; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | 0xda29b2c | [ctx+1804] &= ~0x4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | 0xda29b2c | [ctx+1804] &= ~0x8; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | 0xda29b2c | [ctx+1804] &= ~0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | 0xda29b2c | [ctx+1804] &= ~0x20; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x4000 | GL_LIGHT0 | 16384 | 0xda29b5c | [ctx+1800] &= ~0x1; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4001 | GL_LIGHT1 | 16385 | 0xda29b5c | [ctx+1800] &= ~0x2; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4002 | GL_LIGHT2 | 16386 | 0xda29b5c | [ctx+1800] &= ~0x4; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4003 | GL_LIGHT3 | 16387 | 0xda29b5c | [ctx+1800] &= ~0x8; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4004 | GL_LIGHT4 | 16388 | 0xda29b5c | [ctx+1800] &= ~0x10; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4005 | GL_LIGHT5 | 16389 | 0xda29b5c | [ctx+1800] &= ~0x20; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4006 | GL_LIGHT6 | 16390 | 0xda29b5c | [ctx+1800] &= ~0x40; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x4007 | GL_LIGHT7 | 16391 | 0xda29b5c | [ctx+1800] &= ~0x80; [0x1018] w= 2; [ctx+11812] |= 0x20; return |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | 0xda296f4 | [ctx+1792] &= ~0x2000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | 0xda2a14c | [ctx+1792] &= ~0x4000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8012 | GL_SEPARABLE_2D | 32786 | 0xda29e68 | [ctx+1792] &= ~0x8000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8024 | GL_HISTOGRAM | 32804 | 0xda29c24 | [ctx+1792] &= ~0x10000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x802e | GL_MINMAX | 32814 | 0xda2a0f8 | [ctx+1792] &= ~0x20000000; [0x1018] w= 2; [ctx+11812] |= 0x10; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | 0xda29a38 | [ctx+1792] &= ~0x1000000; [0x1018] w= 2; [ctx+11812] |= 4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x806f | GL_TEXTURE_3D | 32879 | 0xda2a2a4 | [ctx+1792] &= ~0x40000000; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | 0xda2a0d0 | [ctx+5416] &= ~0x20; [ctx+5404] &= ~0xff; return |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | 0xda2a364 | [ctx+5416] &= ~0x1; [ctx+5404] &= ~0xf00; return |
| 0x8076 | GL_COLOR_ARRAY | 32886 | 0xda29e30 | [ctx+5416] &= ~0x2; [ctx+5404] &= ~0xff000; return |
| 0x8077 | GL_INDEX_ARRAY | 32887 | 0xda29f78 | [ctx+5416] &= ~0x8; [ctx+5404] &= 0xfffffff; return |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0xda2a240 | [ctx+5408] &= ~(1 <<mod32 ([ctx+28268] + -33735)); [ctx+5416] &= ~0x4; [ctx+5404] &= ~0x7f00000; return (when ([ctx+28268] + -33735) == 0) |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0xda2a240 | [ctx+5408] &= ~(1 <<mod32 ([ctx+28268] + -33735)); return (when ([ctx+28268] + -33735) != 0) |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | 0xda2a070 | [ctx+5416] &= ~0x10; [ctx+5404] &= ~0x8000000; return |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | 0xda29da4 | [ctx+1792] &= 0x7fffffff; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x80d0 | GL_COLOR_TABLE | 32976 | 0xda2a20c | [ctx+1796] &= ~0x1; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | 0xda298dc | [ctx+1796] &= ~0x2; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | 0xda2a1ec | [ctx+1796] &= ~0x4; [0x1018] w= 2; [ctx+11812] |= 1; return |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | 0xda2a38c | [ctx+5412] &= ~0x1; return |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | 0xda2a004 | [ctx+5412] &= ~0x2; return |

78 capability values with a leaf of their own.

### __glim_IsEnabled (IP30ODSY32)

Binary `root/builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, routine at 0xda2a390, 2252 bytes.

Every value takes this path when [0x1018] == 1: call __glSetError(a0=0x502, a2=[0x1010], a4=1); return 0.

Values with the same outcome as the default, with no leaf of their own: 65455 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x8093, 0x8095 to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8138, 0x813a to 0x8438, 0x843b to 0x8567, 0x8569 to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1010]); return 0.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | - | return 1 if ([ctx+1792] & 0x400) is nonzero, else 0 |
| 0xb20 | GL_LINE_SMOOTH | 2848 | - | return 1 if ([ctx+1792] & 0x200) is nonzero, else 0 |
| 0xb24 | GL_LINE_STIPPLE | 2852 | - | return 1 if ([ctx+1792] & 0x100) is nonzero, else 0 |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | - | return 1 if ([ctx+1792] & 0x800) is nonzero, else 0 |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | - | return 1 if ([ctx+1792] & 0x2000) is nonzero, else 0 |
| 0xb44 | GL_CULL_FACE | 2884 | - | return 1 if ([ctx+1792] & 0x1000) is nonzero, else 0 |
| 0xb50 | GL_LIGHTING | 2896 | - | return 1 if ([ctx+1792] & 0x40) is nonzero, else 0 |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | - | return 1 if ([ctx+1792] & 0x80) is nonzero, else 0 |
| 0xb60 | GL_FOG | 2912 | - | return 1 if ([ctx+1792] & 0x20) is nonzero, else 0 |
| 0xb71 | GL_DEPTH_TEST | 2929 | - | return 1 if ([ctx+1792] & 0x10) is nonzero, else 0 |
| 0xb90 | GL_STENCIL_TEST | 2960 | - | return 1 if ([ctx+1792] & 0x8000) is nonzero, else 0 |
| 0xba1 | GL_NORMALIZE | 2977 | - | return 1 if ([ctx+1792] & 0x400000) is nonzero, else 0 |
| 0xbc0 | GL_ALPHA_TEST | 3008 | - | return 1 if ([ctx+1792] & 1) is nonzero, else 0 |
| 0xbd0 | GL_DITHER | 3024 | - | return 1 if ([ctx+1792] & 8) is nonzero, else 0 |
| 0xbe2 | GL_BLEND | 3042 | - | return 1 if ([ctx+1792] & 2) is nonzero, else 0 |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | - | return 1 if ([ctx+1792] & 4) is nonzero, else 0 |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | - | return 1 if ([ctx+1796] & 0x800) is nonzero, else 0 |
| 0xc11 | GL_SCISSOR_TEST | 3089 | - | return 1 if ([ctx+1792] & 0x4000) is nonzero, else 0 |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | - | return 1 if ([ctx+1792] & 0x40000) is nonzero, else 0 |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | - | return 1 if ([ctx+1792] & 0x80000) is nonzero, else 0 |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | - | return 1 if ([ctx+1792] & 0x100000) is nonzero, else 0 |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | - | return 1 if ([ctx+1792] & 0x200000) is nonzero, else 0 |
| 0xd80 | GL_AUTO_NORMAL | 3456 | - | return 1 if ([ctx+1792] & 0x800000) is nonzero, else 0 |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | - | return 1 if ([ctx+1808] & 1) is nonzero, else 0 |
| 0xd91 | GL_MAP1_INDEX | 3473 | - | return 1 if ([ctx+1808] & 2) is nonzero, else 0 |
| 0xd92 | GL_MAP1_NORMAL | 3474 | - | return 1 if ([ctx+1808] & 4) is nonzero, else 0 |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | - | return 1 if ([ctx+1808] & 8) is nonzero, else 0 |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | - | return 1 if ([ctx+1808] & 0x10) is nonzero, else 0 |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | - | return 1 if ([ctx+1808] & 0x20) is nonzero, else 0 |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | - | return 1 if ([ctx+1808] & 0x40) is nonzero, else 0 |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | - | return 1 if ([ctx+1808] & 0x80) is nonzero, else 0 |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | - | return 1 if ([ctx+1808] & 0x100) is nonzero, else 0 |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | - | return 1 if ([ctx+1812] & 1) is nonzero, else 0 |
| 0xdb1 | GL_MAP2_INDEX | 3505 | - | return 1 if ([ctx+1812] & 2) is nonzero, else 0 |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | - | return 1 if ([ctx+1812] & 4) is nonzero, else 0 |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | - | return 1 if ([ctx+1812] & 8) is nonzero, else 0 |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | - | return 1 if ([ctx+1812] & 0x10) is nonzero, else 0 |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | - | return 1 if ([ctx+1812] & 0x20) is nonzero, else 0 |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | - | return 1 if ([ctx+1812] & 0x40) is nonzero, else 0 |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | - | return 1 if ([ctx+1812] & 0x80) is nonzero, else 0 |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | - | return 1 if ([ctx+1812] & 0x100) is nonzero, else 0 |
| 0xde0 | GL_TEXTURE_1D | 3552 | - | return 1 if ([ctx+1792] & 0x10000) is nonzero, else 0 |
| 0xde1 | GL_TEXTURE_2D | 3553 | - | return 1 if ([ctx+1792] & 0x20000) is nonzero, else 0 |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | - | return 1 if ([ctx+1796] & 0x200) is nonzero, else 0 |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | - | return 1 if ([ctx+1796] & 0x400) is nonzero, else 0 |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | - | return 1 if ([ctx+1804] & 1) is nonzero, else 0 |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | - | return 1 if ([ctx+1804] & 2) is nonzero, else 0 |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | - | return 1 if ([ctx+1804] & 4) is nonzero, else 0 |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | - | return 1 if ([ctx+1804] & 8) is nonzero, else 0 |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | - | return 1 if ([ctx+1804] & 0x10) is nonzero, else 0 |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | - | return 1 if ([ctx+1804] & 0x20) is nonzero, else 0 |
| 0x4000 | GL_LIGHT0 | 16384 | - | return 1 if ([ctx+1800] & 1) is nonzero, else 0 |
| 0x4001 | GL_LIGHT1 | 16385 | - | return 1 if ([ctx+1800] & 2) is nonzero, else 0 |
| 0x4002 | GL_LIGHT2 | 16386 | - | return 1 if ([ctx+1800] & 4) is nonzero, else 0 |
| 0x4003 | GL_LIGHT3 | 16387 | - | return 1 if ([ctx+1800] & 8) is nonzero, else 0 |
| 0x4004 | GL_LIGHT4 | 16388 | - | return 1 if ([ctx+1800] & 0x10) is nonzero, else 0 |
| 0x4005 | GL_LIGHT5 | 16389 | - | return 1 if ([ctx+1800] & 0x20) is nonzero, else 0 |
| 0x4006 | GL_LIGHT6 | 16390 | - | return 1 if ([ctx+1800] & 0x40) is nonzero, else 0 |
| 0x4007 | GL_LIGHT7 | 16391 | - | return 1 if ([ctx+1800] & 0x80) is nonzero, else 0 |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | - | return 1 if ([ctx+1792] & 0x2000000) is nonzero, else 0 |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | - | return 1 if ([ctx+1792] & 0x4000000) is nonzero, else 0 |
| 0x8012 | GL_SEPARABLE_2D | 32786 | - | return 1 if ([ctx+1792] & 0x8000000) is nonzero, else 0 |
| 0x8024 | GL_HISTOGRAM | 32804 | - | return 1 if ([ctx+1792] & 0x10000000) is nonzero, else 0 |
| 0x802e | GL_MINMAX | 32814 | - | return 1 if ([ctx+1792] & 0x20000000) is nonzero, else 0 |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | - | return 1 if ([ctx+1792] & 0x1000000) is nonzero, else 0 |
| 0x806f | GL_TEXTURE_3D | 32879 | - | return 1 if ([ctx+1792] & 0x40000000) is nonzero, else 0 |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | - | return 1 if ([ctx+5404] & 0xff) is nonzero, else 0 |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | - | return 1 if ([ctx+5404] & 0xf00) is nonzero, else 0 |
| 0x8076 | GL_COLOR_ARRAY | 32886 | - | return 1 if ([ctx+5404] & 0xff000) is nonzero, else 0 |
| 0x8077 | GL_INDEX_ARRAY | 32887 | - | return 1 if ([ctx+5404] & 0xf0000000) is nonzero, else 0 |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | - | return 1 if ([ctx+5404] & 0x7f00000) is nonzero, else 0 |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | - | return 1 if ([ctx+5404] & 0x8000000) is nonzero, else 0 |
| 0x8094 | GL_INTERLACE_SGIX | 32916 | - | return 1 if ([ctx+1796] & 0x20) is nonzero, else 0 |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | - | return 1 if ([ctx+1792] & 0x80000000) is nonzero, else 0 |
| 0x80d0 | GL_COLOR_TABLE | 32976 | - | return 1 if ([ctx+1796] & 1) is nonzero, else 0 |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | - | return 1 if ([ctx+1796] & 2) is nonzero, else 0 |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | - | return 1 if ([ctx+1796] & 4) is nonzero, else 0 |
| 0x8139 | GL_PIXEL_TEX_GEN_SGIX | 33081 | - | return 1 if ([ctx+1796] & 0x4000) is nonzero, else 0 |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | - | return 1 if ([ctx+5412] & 1) is nonzero, else 0 |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | - | return 1 if ([ctx+5412] & 2) is nonzero, else 0 |
| 0x8568 | GL_INTERLACE_READ_INGR | 34152 | - | return 1 if ([ctx+1796] & 0x20000) is nonzero, else 0 |

81 capability values with a leaf of their own.

### __glim_Enable (IP30ODSY64)

Binary `root/builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, routine at 0x226dab0, 3248 bytes.

Every value takes this path when [0x1030] == 1: call __glSetError(a0=0x502, a2=[0x1020], a4=1); return.

Values with the same outcome as the default, with no leaf of their own: 65458 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8438, 0x843b to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1020]); return.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | 0x226e194 | [ctx+2056] |= 0x400; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb20 | GL_LINE_SMOOTH | 2848 | 0x226df14 | [ctx+2056] |= 0x200; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb24 | GL_LINE_STIPPLE | 2852 | 0x226e434 | [ctx+2056] |= 0x100; [0x1030] w= 2; [ctx+18196] |= 2; return |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | 0x226ddd0 | [ctx+2056] |= 0x800; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | 0x226e1a0 | [ctx+2056] |= 0x2000; [0x1030] w= 2; [ctx+18196] |= 4; return |
| 0xb44 | GL_CULL_FACE | 2884 | 0x226e20c | [ctx+2056] |= 0x1000; [0x1030] w= 2; [ctx+18196] |= 4; return (when ([ctx+2056] & 0x1000) == 0) |
| 0xb44 | GL_CULL_FACE | 2884 | - | return (when ([ctx+2056] & 0x1000) != 0) |
| 0xb50 | GL_LIGHTING | 2896 | 0x226dfb0 | [ctx+2056] |= 0x40; [0x1030] w= 2; [ctx+18196] |= 0x20; call <[ctx+18264]>(); call <[ctx+18680]>(); return |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | 0x226e704 | [ctx+2056] |= 0x80; call <[ctx+18264]>(); call <[ctx+18680]>(); return |
| 0xb60 | GL_FOG | 2912 | 0x226dcb4 | [ctx+2056] |= 0x20; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb71 | GL_DEPTH_TEST | 2929 | 0x226dbc0 | [ctx+2056] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 0x80; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb90 | GL_STENCIL_TEST | 2960 | 0x226e3f4 | [ctx+2056] |= 0x8000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xba1 | GL_NORMALIZE | 2977 | 0x226e178 | [ctx+2056] |= 0x400000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbc0 | GL_ALPHA_TEST | 3008 | 0x226deec | [ctx+2056] |= 1; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbd0 | GL_DITHER | 3024 | 0x226e390 | [ctx+2056] |= 8; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbe2 | GL_BLEND | 3042 | 0x226dd28 | [ctx+2056] |= 2; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | 0x226e5e4 | [ctx+2056] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | 0x226e364 | [ctx+2060] |= 0x800; call __glim_BlendEquationEXT(a0=0xbf1, a2=[0x1020], a4=1); [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0x226e09c | [ctx+2056] |= 0x4000; [ctx+40292] w= [ctx+40288]; call <[ctx+18512]>(); call <[ctx+18496]>(); [0x1030] w= 2; [ctx+18196] |= 1; return (when ([ctx+2056] & 0x4000) == 0 and [ctx+1892] != 0 and [ctx+3561] != 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0x226e09c | [ctx+2056] |= 0x4000; call <[ctx+18512]>(); call <[ctx+18496]>(); [0x1030] w= 2; [ctx+18196] |= 1; return (when ([ctx+2056] & 0x4000) == 0 and [ctx+1892] != 0 and [ctx+3561] == 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0x226e09c | [ctx+2056] |= 0x4000; call <[ctx+18512]>(); call <[ctx+18496]>(); [0x1030] w= 2; [ctx+18196] |= 1; return (when ([ctx+2056] & 0x4000) == 0 and [ctx+1892] == 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | - | return (when ([ctx+2056] & 0x4000) != 0) |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | 0x226e5c8 | [ctx+2056] |= 0x40000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | 0x226db50 | [ctx+2056] |= 0x80000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | 0x226e3d8 | [ctx+2056] |= 0x100000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | 0x226e14c | [ctx+2056] |= 0x200000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd80 | GL_AUTO_NORMAL | 3456 | 0x226dec4 | [ctx+2056] |= 0x800000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | 0x226ddf8 | [ctx+2072] |= 1; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd91 | GL_MAP1_INDEX | 3473 | 0x226ddf8 | [ctx+2072] |= 2; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd92 | GL_MAP1_NORMAL | 3474 | 0x226ddf8 | [ctx+2072] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | 0x226ddf8 | [ctx+2072] |= 8; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | 0x226ddf8 | [ctx+2072] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | 0x226ddf8 | [ctx+2072] |= 0x20; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | 0x226ddf8 | [ctx+2072] |= 0x40; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | 0x226ddf8 | [ctx+2072] |= 0x80; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | 0x226ddf8 | [ctx+2072] |= 0x100; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | 0x226db74 | [ctx+2076] |= 1; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb1 | GL_MAP2_INDEX | 3505 | 0x226db74 | [ctx+2076] |= 2; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | 0x226db74 | [ctx+2076] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | 0x226db74 | [ctx+2076] |= 8; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | 0x226db74 | [ctx+2076] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | 0x226db74 | [ctx+2076] |= 0x20; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | 0x226db74 | [ctx+2076] |= 0x40; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | 0x226db74 | [ctx+2076] |= 0x80; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | 0x226db74 | [ctx+2076] |= 0x100; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xde0 | GL_TEXTURE_1D | 3552 | 0x226e120 | [ctx+2056] |= 0x10000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xde1 | GL_TEXTURE_2D | 3553 | 0x226de98 | [ctx+2056] |= 0x20000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | 0x226e2e4 | [ctx+2060] |= 0x200; [0x1030] w= 2; [ctx+18196] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | 0x226dd48 | [ctx+2060] |= 0x400; [0x1030] w= 2; [ctx+18196] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | 0x226df40 | [ctx+2068] |= 1; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | 0x226df40 | [ctx+2068] |= 2; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | 0x226df40 | [ctx+2068] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | 0x226df40 | [ctx+2068] |= 8; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | 0x226df40 | [ctx+2068] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | 0x226df40 | [ctx+2068] |= 0x20; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x4000 | GL_LIGHT0 | 16384 | 0x226df6c | [ctx+2064] |= 1; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4001 | GL_LIGHT1 | 16385 | 0x226df6c | [ctx+2064] |= 2; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4002 | GL_LIGHT2 | 16386 | 0x226df6c | [ctx+2064] |= 4; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4003 | GL_LIGHT3 | 16387 | 0x226df6c | [ctx+2064] |= 8; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4004 | GL_LIGHT4 | 16388 | 0x226df6c | [ctx+2064] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4005 | GL_LIGHT5 | 16389 | 0x226df6c | [ctx+2064] |= 0x20; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4006 | GL_LIGHT6 | 16390 | 0x226df6c | [ctx+2064] |= 0x40; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4007 | GL_LIGHT7 | 16391 | 0x226df6c | [ctx+2064] |= 0x80; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | 0x226db0c | [ctx+2056] |= 0x2000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | 0x226e550 | [ctx+2056] |= 0x4000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8012 | GL_SEPARABLE_2D | 32786 | 0x226e29c | [ctx+2056] |= 0x8000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8024 | GL_HISTOGRAM | 32804 | 0x226e02c | [ctx+2056] |= 0x10000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x802e | GL_MINMAX | 32814 | 0x226e500 | [ctx+2056] |= 0x20000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | 0x226de54 | [ctx+2056] |= 0x1000000; [0x1030] w= 2; [ctx+18196] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x806f | GL_TEXTURE_3D | 32879 | 0x226e6d4 | [ctx+2056] |= 0x40000000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | 0x226e4dc | [ctx+6080] |= 0x20; [ctx+6068] |= 0xff; return |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | 0x226e738 | [ctx+6080] |= 1; [ctx+6068] |= 0xf00; return |
| 0x8076 | GL_COLOR_ARRAY | 32886 | 0x226e268 | [ctx+6080] |= 2; [ctx+6068] |= 0xff000; return |
| 0x8077 | GL_INDEX_ARRAY | 32887 | 0x226e3ac | [ctx+6080] |= 8; [ctx+6068] |= 0xf0000000; return |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0x226e678 | [ctx+6072] |= (1 <<mod32 ([ctx+36264] + -33735)); [ctx+6080] |= 4; [ctx+6068] |= 0x7f00000; return (when ([ctx+36264] + -33735) == 0) |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0x226e678 | [ctx+6072] |= (1 <<mod32 ([ctx+36264] + -33735)); return (when ([ctx+36264] + -33735) != 0) |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | 0x226e488 | [ctx+6080] |= 0x10; [ctx+6068] |= 0x8000000; return |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | 0x226e1f0 | [ctx+2056] |= 0x80000000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x80d0 | GL_COLOR_TABLE | 32976 | 0x226e628 | [ctx+2060] |= 1; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | 0x226dce8 | [ctx+2060] |= 2; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | 0x226e5fc | [ctx+2060] |= 4; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | 0x226e75c | [ctx+6076] |= 1; return |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | 0x226e428 | [ctx+6076] |= 2; return |

78 capability values with a leaf of their own.

### __glim_Disable (IP30ODSY64)

Binary `root/builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, routine at 0x226e760, 3320 bytes.

Every value takes this path when [0x1030] == 1: call __glSetError(a0=0x502, a2=[0x1020], a4=1); return.

Values with the same outcome as the default, with no leaf of their own: 65458 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8438, 0x843b to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1020]); return.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | 0x226ee14 | [ctx+2056] &= ~0x400; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb20 | GL_LINE_SMOOTH | 2848 | 0x226ebd0 | [ctx+2056] &= ~0x200; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb24 | GL_LINE_STIPPLE | 2852 | 0x226f0e0 | [ctx+2056] &= ~0x100; [0x1030] w= 2; [ctx+18196] |= 2; return |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | 0x226ea7c | [ctx+2056] &= ~0x800; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | 0x226ee24 | [ctx+2056] &= ~0x2000; [0x1030] w= 2; [ctx+18196] |= 4; return |
| 0xb44 | GL_CULL_FACE | 2884 | 0x226ee98 | [ctx+2056] &= ~0x1000; [0x1030] w= 2; [ctx+18196] |= 4; return (when ([ctx+2056] & 0x1000) != 0) |
| 0xb44 | GL_CULL_FACE | 2884 | - | return (when ([ctx+2056] & 0x1000) == 0) |
| 0xb50 | GL_LIGHTING | 2896 | 0x226ec7c | [ctx+2056] &= ~0x40; [0x1030] w= 2; [ctx+18196] |= 0x20; call <[ctx+18264]>(); call <[ctx+18680]>(); return |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | 0x226f3a8 | [ctx+2056] &= ~0x80; call <[ctx+18264]>(); return |
| 0xb60 | GL_FOG | 2912 | 0x226e968 | [ctx+2056] &= ~0x20; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb71 | GL_DEPTH_TEST | 2929 | 0x226e874 | [ctx+2056] &= ~0x10; [0x1030] w= 2; [ctx+18196] |= 0x80; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xb90 | GL_STENCIL_TEST | 2960 | 0x226f098 | [ctx+2056] &= ~0x8000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xba1 | GL_NORMALIZE | 2977 | 0x226edf0 | [ctx+2056] &= ~0x400000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbc0 | GL_ALPHA_TEST | 3008 | 0x226eba4 | [ctx+2056] &= ~0x1; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbd0 | GL_DITHER | 3024 | 0x226f020 | [ctx+2056] &= ~0x8; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbe2 | GL_BLEND | 3042 | 0x226e9d0 | [ctx+2056] &= ~0x2; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | 0x226f298 | [ctx+2056] &= ~0x4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | 0x226f000 | [ctx+2060] &= ~0x800; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0x226f3d4 | [ctx+2056] &= ~0x4000; call __glReadjustZCounts(a0=[0x1020], a2=[0x1020], a4=1); call <[ctx+18512]>(); call <[ctx+18496]>(); [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | 0x226ed6c | [ctx+2056] &= ~0x40000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | 0x226e804 | [ctx+2056] &= ~0x80000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | 0x226f074 | [ctx+2056] &= ~0x100000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | 0x226edc8 | [ctx+2056] &= ~0x200000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd80 | GL_AUTO_NORMAL | 3456 | 0x226eb74 | [ctx+2056] &= ~0x800000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | 0x226eaa8 | [ctx+2072] &= 0xfffe; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd91 | GL_MAP1_INDEX | 3473 | 0x226eaa8 | [ctx+2072] &= 0xfffd; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd92 | GL_MAP1_NORMAL | 3474 | 0x226eaa8 | [ctx+2072] &= 0xfffb; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | 0x226eaa8 | [ctx+2072] &= 0xfff7; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | 0x226eaa8 | [ctx+2072] &= 0xffef; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | 0x226eaa8 | [ctx+2072] &= 0xffdf; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | 0x226eaa8 | [ctx+2072] &= 0xffbf; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | 0x226eaa8 | [ctx+2072] &= 0xff7f; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | 0x226eaa8 | [ctx+2072] &= 0xfeff; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | 0x226e828 | [ctx+2076] &= 0xfffe; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb1 | GL_MAP2_INDEX | 3505 | 0x226e828 | [ctx+2076] &= 0xfffd; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | 0x226e828 | [ctx+2076] &= 0xfffb; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | 0x226e828 | [ctx+2076] &= 0xfff7; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | 0x226e828 | [ctx+2076] &= 0xffef; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | 0x226e828 | [ctx+2076] &= 0xffdf; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | 0x226e828 | [ctx+2076] &= 0xffbf; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | 0x226e828 | [ctx+2076] &= 0xff7f; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | 0x226e828 | [ctx+2076] &= 0xfeff; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xde0 | GL_TEXTURE_1D | 3552 | 0x226ed9c | [ctx+2056] &= ~0x10000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0xde1 | GL_TEXTURE_2D | 3553 | 0x226eb4c | [ctx+2056] &= ~0x20000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | 0x226ef84 | [ctx+2060] &= ~0x200; [0x1030] w= 2; [ctx+18196] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | 0x226e9f4 | [ctx+2060] &= ~0x400; [0x1030] w= 2; [ctx+18196] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | 0x226ebfc | [ctx+2068] &= ~0x1; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | 0x226ebfc | [ctx+2068] &= ~0x2; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | 0x226ebfc | [ctx+2068] &= ~0x4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | 0x226ebfc | [ctx+2068] &= ~0x8; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | 0x226ebfc | [ctx+2068] &= ~0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | 0x226ebfc | [ctx+2068] &= ~0x20; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x4000 | GL_LIGHT0 | 16384 | 0x226ec2c | [ctx+2064] &= ~0x1; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4001 | GL_LIGHT1 | 16385 | 0x226ec2c | [ctx+2064] &= ~0x2; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4002 | GL_LIGHT2 | 16386 | 0x226ec2c | [ctx+2064] &= ~0x4; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4003 | GL_LIGHT3 | 16387 | 0x226ec2c | [ctx+2064] &= ~0x8; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4004 | GL_LIGHT4 | 16388 | 0x226ec2c | [ctx+2064] &= ~0x10; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4005 | GL_LIGHT5 | 16389 | 0x226ec2c | [ctx+2064] &= ~0x20; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4006 | GL_LIGHT6 | 16390 | 0x226ec2c | [ctx+2064] &= ~0x40; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x4007 | GL_LIGHT7 | 16391 | 0x226ec2c | [ctx+2064] &= ~0x80; [0x1030] w= 2; [ctx+18196] |= 0x20; return |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | 0x226e7c0 | [ctx+2056] &= ~0x2000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | 0x226f21c | [ctx+2056] &= ~0x4000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8012 | GL_SEPARABLE_2D | 32786 | 0x226ef34 | [ctx+2056] &= ~0x8000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8024 | GL_HISTOGRAM | 32804 | 0x226ecf8 | [ctx+2056] &= ~0x10000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x802e | GL_MINMAX | 32814 | 0x226f1c8 | [ctx+2056] &= ~0x20000000; [0x1030] w= 2; [ctx+18196] |= 0x10; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | 0x226eb08 | [ctx+2056] &= ~0x1000000; [0x1030] w= 2; [ctx+18196] |= 4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x806f | GL_TEXTURE_3D | 32879 | 0x226f374 | [ctx+2056] &= ~0x40000000; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | 0x226f1a0 | [ctx+6080] &= ~0x20; [ctx+6068] &= ~0xff; return |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | 0x226f42c | [ctx+6080] &= ~0x1; [ctx+6068] &= ~0xf00; return |
| 0x8076 | GL_COLOR_ARRAY | 32886 | 0x226eefc | [ctx+6080] &= ~0x2; [ctx+6068] &= ~0xff000; return |
| 0x8077 | GL_INDEX_ARRAY | 32887 | 0x226f044 | [ctx+6080] &= ~0x8; [ctx+6068] &= 0xfffffff; return |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0x226f314 | [ctx+6072] &= ~(1 <<mod32 ([ctx+36264] + -33735)); [ctx+6080] &= ~0x4; [ctx+6068] &= ~0x7f00000; return (when ([ctx+36264] + -33735) == 0) |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0x226f314 | [ctx+6072] &= ~(1 <<mod32 ([ctx+36264] + -33735)); return (when ([ctx+36264] + -33735) != 0) |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | 0x226f13c | [ctx+6080] &= ~0x10; [ctx+6068] &= ~0x8000000; return |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | 0x226ee78 | [ctx+2056] &= 0x7fffffff; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x80d0 | GL_COLOR_TABLE | 32976 | 0x226f2dc | [ctx+2060] &= ~0x1; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | 0x226e9a8 | [ctx+2060] &= ~0x2; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | 0x226f2bc | [ctx+2060] &= ~0x4; [0x1030] w= 2; [ctx+18196] |= 1; return |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | 0x226f454 | [ctx+6076] &= ~0x1; return |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | 0x226f0d0 | [ctx+6076] &= ~0x2; return |

78 capability values with a leaf of their own.

### __glim_IsEnabled (IP30ODSY64)

Binary `root/builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, routine at 0x226f460, 2252 bytes.

Every value takes this path when [0x1030] == 1: call __glSetError(a0=0x502, a2=[0x1020], a4=1); return 0.

Values with the same outcome as the default, with no leaf of their own: 65455 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x8093, 0x8095 to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8138, 0x813a to 0x8438, 0x843b to 0x8567, 0x8569 to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1020]); return 0.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | - | return 1 if ([ctx+2056] & 0x400) is nonzero, else 0 |
| 0xb20 | GL_LINE_SMOOTH | 2848 | - | return 1 if ([ctx+2056] & 0x200) is nonzero, else 0 |
| 0xb24 | GL_LINE_STIPPLE | 2852 | - | return 1 if ([ctx+2056] & 0x100) is nonzero, else 0 |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | - | return 1 if ([ctx+2056] & 0x800) is nonzero, else 0 |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | - | return 1 if ([ctx+2056] & 0x2000) is nonzero, else 0 |
| 0xb44 | GL_CULL_FACE | 2884 | - | return 1 if ([ctx+2056] & 0x1000) is nonzero, else 0 |
| 0xb50 | GL_LIGHTING | 2896 | - | return 1 if ([ctx+2056] & 0x40) is nonzero, else 0 |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | - | return 1 if ([ctx+2056] & 0x80) is nonzero, else 0 |
| 0xb60 | GL_FOG | 2912 | - | return 1 if ([ctx+2056] & 0x20) is nonzero, else 0 |
| 0xb71 | GL_DEPTH_TEST | 2929 | - | return 1 if ([ctx+2056] & 0x10) is nonzero, else 0 |
| 0xb90 | GL_STENCIL_TEST | 2960 | - | return 1 if ([ctx+2056] & 0x8000) is nonzero, else 0 |
| 0xba1 | GL_NORMALIZE | 2977 | - | return 1 if ([ctx+2056] & 0x400000) is nonzero, else 0 |
| 0xbc0 | GL_ALPHA_TEST | 3008 | - | return 1 if ([ctx+2056] & 1) is nonzero, else 0 |
| 0xbd0 | GL_DITHER | 3024 | - | return 1 if ([ctx+2056] & 8) is nonzero, else 0 |
| 0xbe2 | GL_BLEND | 3042 | - | return 1 if ([ctx+2056] & 2) is nonzero, else 0 |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | - | return 1 if ([ctx+2056] & 4) is nonzero, else 0 |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | - | return 1 if ([ctx+2060] & 0x800) is nonzero, else 0 |
| 0xc11 | GL_SCISSOR_TEST | 3089 | - | return 1 if ([ctx+2056] & 0x4000) is nonzero, else 0 |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | - | return 1 if ([ctx+2056] & 0x40000) is nonzero, else 0 |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | - | return 1 if ([ctx+2056] & 0x80000) is nonzero, else 0 |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | - | return 1 if ([ctx+2056] & 0x100000) is nonzero, else 0 |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | - | return 1 if ([ctx+2056] & 0x200000) is nonzero, else 0 |
| 0xd80 | GL_AUTO_NORMAL | 3456 | - | return 1 if ([ctx+2056] & 0x800000) is nonzero, else 0 |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | - | return 1 if ([ctx+2072] & 1) is nonzero, else 0 |
| 0xd91 | GL_MAP1_INDEX | 3473 | - | return 1 if ([ctx+2072] & 2) is nonzero, else 0 |
| 0xd92 | GL_MAP1_NORMAL | 3474 | - | return 1 if ([ctx+2072] & 4) is nonzero, else 0 |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | - | return 1 if ([ctx+2072] & 8) is nonzero, else 0 |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | - | return 1 if ([ctx+2072] & 0x10) is nonzero, else 0 |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | - | return 1 if ([ctx+2072] & 0x20) is nonzero, else 0 |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | - | return 1 if ([ctx+2072] & 0x40) is nonzero, else 0 |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | - | return 1 if ([ctx+2072] & 0x80) is nonzero, else 0 |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | - | return 1 if ([ctx+2072] & 0x100) is nonzero, else 0 |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | - | return 1 if ([ctx+2076] & 1) is nonzero, else 0 |
| 0xdb1 | GL_MAP2_INDEX | 3505 | - | return 1 if ([ctx+2076] & 2) is nonzero, else 0 |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | - | return 1 if ([ctx+2076] & 4) is nonzero, else 0 |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | - | return 1 if ([ctx+2076] & 8) is nonzero, else 0 |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | - | return 1 if ([ctx+2076] & 0x10) is nonzero, else 0 |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | - | return 1 if ([ctx+2076] & 0x20) is nonzero, else 0 |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | - | return 1 if ([ctx+2076] & 0x40) is nonzero, else 0 |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | - | return 1 if ([ctx+2076] & 0x80) is nonzero, else 0 |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | - | return 1 if ([ctx+2076] & 0x100) is nonzero, else 0 |
| 0xde0 | GL_TEXTURE_1D | 3552 | - | return 1 if ([ctx+2056] & 0x10000) is nonzero, else 0 |
| 0xde1 | GL_TEXTURE_2D | 3553 | - | return 1 if ([ctx+2056] & 0x20000) is nonzero, else 0 |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | - | return 1 if ([ctx+2060] & 0x200) is nonzero, else 0 |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | - | return 1 if ([ctx+2060] & 0x400) is nonzero, else 0 |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | - | return 1 if ([ctx+2068] & 1) is nonzero, else 0 |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | - | return 1 if ([ctx+2068] & 2) is nonzero, else 0 |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | - | return 1 if ([ctx+2068] & 4) is nonzero, else 0 |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | - | return 1 if ([ctx+2068] & 8) is nonzero, else 0 |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | - | return 1 if ([ctx+2068] & 0x10) is nonzero, else 0 |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | - | return 1 if ([ctx+2068] & 0x20) is nonzero, else 0 |
| 0x4000 | GL_LIGHT0 | 16384 | - | return 1 if ([ctx+2064] & 1) is nonzero, else 0 |
| 0x4001 | GL_LIGHT1 | 16385 | - | return 1 if ([ctx+2064] & 2) is nonzero, else 0 |
| 0x4002 | GL_LIGHT2 | 16386 | - | return 1 if ([ctx+2064] & 4) is nonzero, else 0 |
| 0x4003 | GL_LIGHT3 | 16387 | - | return 1 if ([ctx+2064] & 8) is nonzero, else 0 |
| 0x4004 | GL_LIGHT4 | 16388 | - | return 1 if ([ctx+2064] & 0x10) is nonzero, else 0 |
| 0x4005 | GL_LIGHT5 | 16389 | - | return 1 if ([ctx+2064] & 0x20) is nonzero, else 0 |
| 0x4006 | GL_LIGHT6 | 16390 | - | return 1 if ([ctx+2064] & 0x40) is nonzero, else 0 |
| 0x4007 | GL_LIGHT7 | 16391 | - | return 1 if ([ctx+2064] & 0x80) is nonzero, else 0 |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | - | return 1 if ([ctx+2056] & 0x2000000) is nonzero, else 0 |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | - | return 1 if ([ctx+2056] & 0x4000000) is nonzero, else 0 |
| 0x8012 | GL_SEPARABLE_2D | 32786 | - | return 1 if ([ctx+2056] & 0x8000000) is nonzero, else 0 |
| 0x8024 | GL_HISTOGRAM | 32804 | - | return 1 if ([ctx+2056] & 0x10000000) is nonzero, else 0 |
| 0x802e | GL_MINMAX | 32814 | - | return 1 if ([ctx+2056] & 0x20000000) is nonzero, else 0 |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | - | return 1 if ([ctx+2056] & 0x1000000) is nonzero, else 0 |
| 0x806f | GL_TEXTURE_3D | 32879 | - | return 1 if ([ctx+2056] & 0x40000000) is nonzero, else 0 |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | - | return 1 if ([ctx+6068] & 0xff) is nonzero, else 0 |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | - | return 1 if ([ctx+6068] & 0xf00) is nonzero, else 0 |
| 0x8076 | GL_COLOR_ARRAY | 32886 | - | return 1 if ([ctx+6068] & 0xff000) is nonzero, else 0 |
| 0x8077 | GL_INDEX_ARRAY | 32887 | - | return 1 if ([ctx+6068] & 0xf0000000) is nonzero, else 0 |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | - | return 1 if ([ctx+6068] & 0x7f00000) is nonzero, else 0 |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | - | return 1 if ([ctx+6068] & 0x8000000) is nonzero, else 0 |
| 0x8094 | GL_INTERLACE_SGIX | 32916 | - | return 1 if ([ctx+2060] & 0x20) is nonzero, else 0 |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | - | return 1 if ([ctx+2056] & 0x80000000) is nonzero, else 0 |
| 0x80d0 | GL_COLOR_TABLE | 32976 | - | return 1 if ([ctx+2060] & 1) is nonzero, else 0 |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | - | return 1 if ([ctx+2060] & 2) is nonzero, else 0 |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | - | return 1 if ([ctx+2060] & 4) is nonzero, else 0 |
| 0x8139 | GL_PIXEL_TEX_GEN_SGIX | 33081 | - | return 1 if ([ctx+2060] & 0x4000) is nonzero, else 0 |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | - | return 1 if ([ctx+6076] & 1) is nonzero, else 0 |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | - | return 1 if ([ctx+6076] & 2) is nonzero, else 0 |
| 0x8568 | GL_INTERLACE_READ_INGR | 34152 | - | return 1 if ([ctx+2060] & 0x20000) is nonzero, else 0 |

81 capability values with a leaf of their own.

