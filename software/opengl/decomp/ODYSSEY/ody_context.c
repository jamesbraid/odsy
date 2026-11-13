Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a5, .L0d968338

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $t0, .L0d968684

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $t1, .L0d969780

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $v1, .L0d9713e8

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a5, .L0d968338

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $t0, .L0d968684

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $t1, .L0d969780

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $v1, .L0d9713e8

? __glChangeReadWindowSize(s32 *, s32, s32);        /* extern */
? __glChangeWindowSize(s32 *, s32, s32, s64, s32, s32, s32); /* extern */
? __glContextSetColorScales(s32 *);                 /* extern */
? __glCopyContext();                                /* extern */
? __glDestroyContext(s32 *);                        /* extern */
? __glEarlyInitContext(void *, ? *, ? *, ?, ?, ?, ?, ?); /* extern */
? __glFreeBufData(s32);                             /* extern */
? __glInitDepth(void *, void *);                    /* extern */
? __glInitStencil8(void *, void *);                 /* extern */
? __glLoseCurrentBuffers(?);                        /* extern */
? __glMakeCurrentBuffers(s32 *, void *);            /* extern */
? __glMipsCopyDispatch(void *, s32 *);              /* extern */
? __glOdyim_AlphaFunc(?);                           /* extern */
? __glOdyim_BlendColorEXT(?, ?, ?, ?);              /* extern */
? __glOdyim_BlendEquationEXT(?);                    /* extern */
? __glOdyim_BlendFunc(?, ?);                        /* extern */
? __glOdyim_Color4fv(void *);                       /* extern */
? __glOdyim_ColorMask(?, ?, ?, ?);                  /* extern */
? __glOdyim_CullFace(?);                            /* extern */
? __glOdyim_DepthFunc(?);                           /* extern */
? __glOdyim_DepthMask(?);                           /* extern */
? __glOdyim_DepthRange(?, f64);                     /* extern */
? __glOdyim_Disable(?, s64, s64, s64, void *, ?);   /* extern */
? __glOdyim_DrawBuffer(s32, u32, ?, s32 *, ?, u32, u8, s32); /* extern */
? __glOdyim_EdgeFlag(?);                            /* extern */
? __glOdyim_Enable(?, s64, s64, s64, void *, ?);    /* extern */
? __glOdyim_Fogfv(?, void *);                       /* extern */
? __glOdyim_Fogi(?, ?);                             /* extern */
? __glOdyim_FragmentLightModelfvSGIX(?, void *);    /* extern */
? __glOdyim_FragmentLightModeliSGIX(?, ?);          /* extern */
? __glOdyim_FragmentLightfSGIX(?, ?);               /* extern */
? __glOdyim_FragmentLightfvSGIX(?, ?, void *);      /* extern */
? __glOdyim_FragmentMaterialfSGIX(?, ?);            /* extern */
? __glOdyim_FragmentMaterialfvSGIX(?, ?, void *);   /* extern */
? __glOdyim_FrontFace(?);                           /* extern */
? __glOdyim_IndexMask(?);                           /* extern */
? __glOdyim_Indexi(?);                              /* extern */
? __glOdyim_LightEnviSGIX(?, ?);                    /* extern */
? __glOdyim_LightModeli(?, ?);                      /* extern */
? __glOdyim_LineStipple(?, ?);                      /* extern */
? __glOdyim_LineWidth(f32);                         /* extern */
? __glOdyim_LogicOp(?);                             /* extern */
? __glOdyim_Materialf(?, ?);                        /* extern */
? __glOdyim_Materialfv(?, ?, void *);               /* extern */
? __glOdyim_Normal3fv(void *);                      /* extern */
? __glOdyim_PointSize(f32);                         /* extern */
? __glOdyim_PolygonMode(?, ?);                      /* extern */
? __glOdyim_PolygonOffset(?, ?);                    /* extern */
? __glOdyim_ScratchColor4fv(void *);                /* extern */
? __glOdyim_ScratchIndexi(?);                       /* extern */
? __glOdyim_ShadeModel(?);                          /* extern */
? __glOdyim_SoftClear(void *);                      /* extern */
? __glOdyim_StencilFunc(?, ?, ?);                   /* extern */
? __glOdyim_StencilMask(?);                         /* extern */
? __glOdyim_StencilOp(?, ?, ?);                     /* extern */
? __glOdyim_TexCoord4fv(void *);                    /* extern */
? __glOdyim_dispatchTable(?, ?, s32, s32);          /* extern */
? __glOdysseyAccumClose();                          /* extern */
s32 __glOdysseyAtomicTestAndSet(s32);               /* extern */
? __glOdysseyBindHyperpipe();                       /* extern */
? __glOdysseyComputeLightState(s32 *);              /* extern */
s32 __glOdysseyDriverMakeCurrent(s32 *);            /* extern */
? __glOdysseyGetBoardInfoRaw();                     /* extern */
? __glOdysseyGetHardwareShadow(s32 *, ?, s64, s64, s64, void *, ?); /* extern */
u32 __glOdysseyGetNumHWClipPlanes(s32 *);           /* extern */
s32 __glOdysseyGetNumSWClipPlanes(s32 *, u32 *, s32, s32, s32, u32, void *, ?, u32, u32, u32, u32, u32, u32, u32, u32); /* extern */
s32 __glOdysseyHyperpipePixelAverage(s32, s32, s32); /* extern */
s32 __glOdysseyHyperpipeRect(s32, s32, s32);        /* extern */
s32 __glOdysseyHyperpipeStereo(s32, s32, s32);      /* extern */
s32 __glOdysseyImageCalcFieldFormat(s32, u32, s32, s32, u32, s32, u32, s32); /* extern */
? __glOdysseyImageClose(s32, s32);                  /* extern */
s32 __glOdysseyImageDescribeWindow(s32 *, ?, s64, s32, s32); /* extern */
s32 __glOdysseyImageInit(s32 *, u32, u32, u32, u32, u32, ?); /* extern */
s32 __glOdysseyInitAccum(void *, void *, ?, u8, ?); /* extern */
? __glOdysseyInitCI(void *, void *, void *, u8);    /* extern */
? __glOdysseyInitFragmentLighting(void *);          /* extern */
? __glOdysseyInitFragmentMaterial(void *);          /* extern */
? __glOdysseyInitHyperpipeState(s32 *);             /* extern */
s32 __glOdysseyInitKernel(void *);                  /* extern */
? __glOdysseyInitLighting(void *, s32, ?, f32, f32, f32, f32, u32, u32, u32, u32); /* extern */
? __glOdysseyInitRGB(void *, void *, void *, u8);   /* extern */
s32 __glOdysseyIoctl(?, void *, s32, s32, u32, s32, s32); /* extern */
s32 __glOdysseyQueryHyperpipeBestRect(s32, s32, s32, s32); /* extern */
s32 __glOdysseyQueryHyperpipeLimit(s32, s32, s32);  /* extern */
s32 __glOdysseyQueryHyperpipePixelAverage(s32, s32, ?, s32); /* extern */
s32 __glOdysseyQueryHyperpipeRect(s32, s32, s32);   /* extern */
? __glOdysseySetProgram(s32 *, s32);                /* extern */
? __glOdysseySharePM(void *, s64);                  /* extern */
? __glOdysseyTextureDriverDestroy(s32);             /* extern */
? __glOdysseyTextureDriverInit(void *);             /* extern */
? __glOdysseyUnSharePM(s32 *, s32, s32);            /* extern */
? __glOdysseyUnbindHyperpipe(s32);                  /* extern */
? __glOdysseyValidateDepthRange(s32 *, s32, s32, u8, ?, s32); /* extern */
? __glOdysseyValidateFog(s32 *);                    /* extern */
? __glOdysseyValidateFragment(s32 *);               /* extern */
? __glOdysseyValidateLighting(s32 *);               /* extern */
? __glOdysseyValidateMatrixComb(s32 *);             /* extern */
? __glOdysseyValidateMatrixMV(s32 *);               /* extern */
? __glOdysseyValidateMatrixNorm(s32 *);             /* extern */
? __glOdysseyValidateMatrixTex(s32 *, s32);         /* extern */
? __glOdysseyValidateProgram(s32 *);                /* extern */
? __glOdysseyValidateSoftClipPlanes(s32 *);         /* extern */
? __glOdysseyValidateTexGen(s32 *);                 /* extern */
? __glOdysseyValidateTextureState(s32 *);           /* extern */
? __glOdyssey_CopyContext();                        /* extern */
? __glOdyssey_ResolveContext(void *, ?, s64, s32, s64, s64 *, ?, s32); /* extern */
s32 __glPixmapMakeCurrent(s32 *, s64);              /* extern */
s32 __glSetError(s32 *, ?, s32, s32);               /* extern */
? __glShareDlist(void *, s64);                      /* extern */
? __glSoftResetContext(s32 *);                      /* extern */
? __glUpdateDepthRange(void *);                     /* extern */
? __glUpdateViewport(void *);                       /* extern */
? __glim_PolygonStipple(void *);                    /* extern */
s32 atoi(u8 *, u8);                                 /* extern */
? bcopy(s32, void *, ?);                            /* extern */
? cacheflush(s32, s32, ?);                          /* extern */
? close(s64, s32);                                  /* extern */
u8 *getenv(void *, u32, s32 *, ?, ?, s32, ?, s32);  /* extern */
? memcpy(s64, s32, s32, u8, void *, ? *, ? *);      /* extern */
s32 mmap(s32, s32, ?, ?, s64, ?);                   /* extern */
s64 open(void *, ?);                                /* extern */
? sginap(?);                                        /* extern */
? sprintf(void *, void *, ?, s32, s32);             /* extern */
s32 sscanf(s64, s32, f32 *);                        /* extern */
s32 strcmp(s32 *, void *, s64);                     /* extern */
s32 *sub_0d960000(s64, s32, void *);                /* extern */
f32 tanf(f32, ?, f64, ?);                           /* extern */
void __glOdysseyValidate(s32 *arg0);                /* static */
void __glOdysseyValidateContext(s32 *arg0, s32 arg1, s32 arg5); /* static */
void __glOdysseyValidateDispatchTable(s32 *arg0);   /* static */
void __glOdysseyValidateHardware(s32 *arg0);        /* static */
extern u32 HQ2_READ_FIFO;
extern ? __glBeginLLoop;
extern ? __glBeginLStrip;
extern ? __glBeginLines;
extern ? __glBeginPoints;
extern ? __glBeginPolygon;
extern ? __glBeginQStrip;
extern ? __glBeginQuads;
extern ? __glBeginTFan;
extern ? __glBeginTStrip;
extern ? __glBeginTriangles;
extern ? __glClipPolygon;
extern ? __glColorSubTable;
extern ? __glColorTableSGI;
extern ? __glComputeClipBox;
extern ? __glComputeInverseTranspose;
extern ? __glCopyMatrix;
extern ? __glDoEvalCoord1;
extern ? __glDoEvalCoord2;
extern ? __glEndPrim;
extern ? __glEvenTStripVertex;
extern ? __glFirstLinesVertex;
extern s32 __glGenericDlistCompiler;
extern ? __glGenericDlistOptimizer;
extern ? __glGenericPickBlendProcs;
extern ? __glGenericPickBufferProcs;
extern ? __glGenericPickClipProcs;
extern ? __glGenericPickColorMaterialProcs;
extern ? __glGenericPickCopyImage;
extern ? __glGenericPickDepthProcs;
extern ? __glGenericPickFogProcs;
extern ? __glGenericPickInvTransposeProcs;
extern ? __glGenericPickLineProcs;
extern ? __glGenericPickMatrixProcs;
extern ? __glGenericPickMvpMatrixProcs;
extern ? __glGenericPickParameterClipProcs;
extern ? __glGenericPickPointProcs;
extern ? __glGenericPickReadImage;
extern ? __glGenericPickSpanProcs;
extern ? __glGenericPickStoreProcs;
extern ? __glGenericPickTransformProcs;
extern ? __glGenericPickTriangleProcs;
extern ? __glGenericPickVertexProcs;
extern ? __glInvertTransposeMatrix;
extern ? __glListExecTable;
extern ? __glMakeIdentity;
extern ? __glMipsMultMatrix;
extern ? __glMipsNormalize;
extern ? __glNop;
extern ? __glOddTStripVertex;
extern ? __glOdyim_SoftGetFloatv;
extern ? __glOdyim_Vertex4d_smallw;
extern ? __glOdyim_Vertex4dv_smallw;
extern ? __glOdyim_Vertex4f_smallw;
extern ? __glOdyim_Vertex4fv_smallw;
extern ? __glOdyim_Vertex4i_smallw;
extern ? __glOdyim_Vertex4iv_smallw;
extern ? __glOdyim_Vertex4s_smallw;
extern ? __glOdyim_Vertex4sv_smallw;
extern ? __glOdyim_colorDispatchTable;
extern ? __glOdyim_iglooVertexDispatchTable;
extern ? __glOdyim_indexDispatchTable;
extern ? __glOdyim_normalDispatchTable;
extern ? __glOdyim_rasterPosDispatchTable;
extern ? __glOdyim_rectDispatchTable;
extern ? __glOdyim_softClipColorDispatchTable;
extern ? __glOdyim_softClipDispatchTable;
extern ? __glOdyim_softClipIndexDispatchTable;
extern ? __glOdyim_softClipVertexDispatchTable;
extern ? __glOdyim_softClipVertexDispatchTableFast;
extern ? __glOdyim_texCoordDispatchTable;
extern ? __glOdyim_vertexDispatchTable;
extern ? __glOdyim_vertexMagDispatchTable;
extern ? __glOdyim_vertexMagLine0DispatchTable;
extern ? __glOdyim_vertexSmallWDispatchTable;
extern ? __glOdylc_Error;
extern ? __glOdylc_colorDispatchTable;
extern ? __glOdylc_normalDispatchTable;
extern ? __glOdylc_rasterPosDispatchTable;
extern ? __glOdylc_rectDispatchTable;
extern ? __glOdylc_texCoordDispatchTable;
extern ? __glOdylc_vertexBboxDispatchTable;
extern ? __glOdylc_vertexDispatchTable;
extern ? __glOdysseyDlistInitState;
extern ? __glOdysseyFinish;
extern ? __glOdysseyFlush;
extern ? __glOdysseyPickAllProcs;
extern ? __glOdysseyPickColorMaterialProcs;
extern ? __glOdysseyPickPixelProcs;
extern ? __glOdysseyPickRenderBitmapProcs;
extern ? __glOdysseyPickTextureProcs;
extern ? __glOdysseyRasterPos2;
extern ? __glOdysseyRasterPos3;
extern ? __glOdysseyRect;
extern ? __glOdysseySPBalloc;
extern ? __glOdysseySPBfree;
extern ? __glOdysseySPCompMachdep;
extern ? __glOdysseySoftClipBeginLLoop;
extern ? __glOdysseySoftClipBeginLStrip;
extern ? __glOdysseySoftClipBeginLines;
extern ? __glOdysseySoftClipBeginPoints;
extern ? __glOdysseySoftClipBeginPolygon;
extern ? __glOdysseySoftClipBeginQStrip;
extern ? __glOdysseySoftClipBeginQuads;
extern ? __glOdysseySoftClipBeginTFan;
extern ? __glOdysseySoftClipBeginTStrip;
extern ? __glOdysseySoftClipBeginTriangles;
extern ? __glOdysseySoftClipPickAllProcs;
extern ? __glOdysseySoftClipPickClipProcs;
extern ? __glOdysseySoftClipPickLineProcs;
extern ? __glOdysseySoftClipPickParameterClipProcs;
extern ? __glOdysseySoftClipPickPointProcs;
extern ? __glOdysseySoftClipPickTriangleProcs;
extern ? __glOdysseySoftClipPickTriangleProcsFast;
extern ? __glOdysseySoftClipPickVertexProcs;
extern ? __glOdysseySwapBuffers;
extern ? __glOdysseyVertexWARClip;
extern ? __glOdysseyVisualsMatch;
extern ? __glOdyssey_FastDispatchEnd;
extern ? __glSPDlistCompiler;
extern ? __glSPFreeDlist;
extern ? __glSecondLinesVertex;
extern ? __glSoftim_colorDispatchTable;
extern ? __glSoftim_normalDispatchTable;
extern ? __glSoftim_rectDispatchTable;
extern ? __glSoftim_texCoordDispatchTable;
extern ? __glSoftim_vertexDispatchTable;
extern ? __glSpanReadCI;
extern ? __glSpanReadCI2;
extern ? __glSpanReadDepth;
extern ? __glSpanReadDepth2;
extern ? __glSpanReadRGBA;
extern ? __glSpanReadStencil;
extern ? __glSpanReadStencil2;
extern ? __glSpanRenderCI;
extern ? __glSpanRenderCI2;
extern ? __glSpanRenderDepth;
extern ? __glSpanRenderDepth2;
extern ? __glSpanRenderRGBA;
extern ? __glSpanRenderRGBA2;
extern ? __glSpanRenderStencil;
extern ? __glSpanRenderStencil2;
extern ? __glTRim_Begin;
extern ? __glTRim_End;
extern ? __glTRim_vertexDispatchTable;
extern ? __gl_GenericDlOps;
extern ? __gl_varray_funcs;
extern s32 *__pglce_dispatchState;
extern ? glColor3b;
extern ? glVertex2d;
extern ? sub_0d970000;
extern s32 sub_0daf0000;
extern ? sub_0db00000;

void GetBoardInfo(void *arg0) {
    ? var_a2;
    s32 temp_a0;
    s32 temp_v0_14;
    s32 var_a4;
    u32 temp_v0;
    u32 temp_v0_2;
    u8 *temp_v0_10;
    u8 *temp_v0_11;
    u8 *temp_v0_12;
    u8 *temp_v0_13;
    u8 *temp_v0_15;
    u8 *temp_v0_16;
    u8 *temp_v0_17;
    u8 *temp_v0_18;
    u8 *temp_v0_3;
    u8 *temp_v0_4;
    u8 *temp_v0_5;
    u8 *temp_v0_6;
    u8 *temp_v0_7;
    u8 *temp_v0_8;
    u8 *temp_v0_9;
    u8 temp_a0_10;
    u8 temp_a0_11;
    u8 temp_a0_2;
    u8 temp_a0_3;
    u8 temp_a0_4;
    u8 temp_a0_5;
    u8 temp_a0_6;
    u8 temp_a0_7;
    u8 temp_a0_8;
    u8 temp_a0_9;
    u8 temp_a1;
    u8 temp_a1_2;
    u8 temp_a1_3;

    __glOdysseyGetBoardInfoRaw();
    temp_v0 = arg0->unk16A70;
    if (temp_v0 != 0) {
        var_a2 = 0x42;
        if (temp_v0 != 1) {
            var_a2 = ((temp_v0 ^ 2) == 0) ? 0x4E : 0x3F;
        }
    } else {
        var_a2 = 0x41;
    }
    sprintf(arg0 + 0x7B50, &sub_0daf0000 - 0x7E68, var_a2, arg0->unk16A54, (arg0->unk16A68 == 0) ? (saved_reg_gp - 0x3568) : (saved_reg_gp - 0x3564));
    arg0->unk7B70 = 0x10;
    arg0->unk19DDC = 5;
    arg0->unk19DD8 = 0x9C40;
    if (arg0->unk16A70 == 0) {
        arg0->unk7B70 = 0x410;
        arg0->unk19DD4 = 0x2710;
        arg0->unk21EEC = 0x40;
    }
    if ((arg0->unk16A60 >= 2) || (temp_v0_2 = arg0->unk16A70, var_a4 = temp_v0_2 < 2U, ((temp_v0_2 == 0) == 0))) {
        temp_a0 = arg0->unk7B70 | 3;
        arg0->unk7B70 = temp_a0;
        if ((arg0->unk16A70 == 0) == 0) {
            arg0->unk7B70 = (s32) (temp_a0 | 0x8003A0);
            arg0->unk21EEC = 0x80;
            arg0->unk19DD4 = 0x27100;
        }
        var_a4 = arg0->unk16A70 < 2U;
    }
    if (var_a4 == 0) {
        arg0->unk7B70 = (s32) (arg0->unk7B70 | 0x7F0000);
        arg0->unk21EEC = 0x80;
    }
    temp_v0_3 = getenv(&sub_0daf0000 - 0x7E58);
    if (temp_v0_3 != NULL) {
        temp_a0_2 = *temp_v0_3;
        if (temp_a0_2 != 0) {
            if ((temp_a0_2 != 0x59) && (temp_a0_2 != 0x79)) {
                arg0->unk7B70 = (s32) (arg0->unk7B70 & ~0x10);
            } else {
                arg0->unk7B70 = (s32) (arg0->unk7B70 | 0x10);
            }
        }
    }
    temp_v0_4 = getenv(&sub_0daf0000 - 0x7E40);
    if (temp_v0_4 != NULL) {
        temp_a0_3 = *temp_v0_4;
        if (temp_a0_3 != 0) {
            if ((temp_a0_3 != 0x59) && (temp_a0_3 != 0x79)) {
                arg0->unk7B70 = (s32) (arg0->unk7B70 & ~0x40);
            } else {
                arg0->unk7B70 = (s32) (arg0->unk7B70 | 0x40);
            }
        }
    }
    temp_v0_5 = getenv(&sub_0daf0000 - 0x7E20);
    if (temp_v0_5 != NULL) {
        temp_a0_4 = *temp_v0_5;
        if (temp_a0_4 != 0) {
            if ((temp_a0_4 != 0x59) && (temp_a0_4 != 0x79)) {
                arg0->unk7B70 = (s32) (arg0->unk7B70 & ~2);
            } else {
                arg0->unk7B70 = (s32) (arg0->unk7B70 | 2);
            }
        }
    }
    temp_v0_6 = getenv(&sub_0daf0000 - 0x7E08);
    if (temp_v0_6 != NULL) {
        temp_a0_5 = *temp_v0_6;
        if (temp_a0_5 != 0) {
            if ((temp_a0_5 != 0x59) && (temp_a0_5 != 0x79)) {
                arg0->unk7B70 = (s32) (arg0->unk7B70 & 0xFFDFFFFF);
            } else {
                arg0->unk7B70 = (s32) (arg0->unk7B70 | 0x200000);
            }
        }
    }
    temp_v0_7 = getenv(&sub_0daf0000 - 0x7DE8);
    if (temp_v0_7 != NULL) {
        temp_a0_6 = *temp_v0_7;
        if (temp_a0_6 != 0) {
            if ((temp_a0_6 != 0x59) && (temp_a0_6 != 0x79)) {
                arg0->unk7B70 = (s32) (arg0->unk7B70 & 0xFFEFFFFF);
            } else {
                arg0->unk7B70 = (s32) (arg0->unk7B70 | 0x100000);
            }
        }
    }
    temp_v0_8 = getenv(&sub_0daf0000 - 0x7DD0);
    if (temp_v0_8 != NULL) {
        temp_a0_7 = *temp_v0_8;
        if (temp_a0_7 != 0) {
            if ((temp_a0_7 != 0x59) && (temp_a0_7 != 0x79)) {
                arg0->unk7B70 = (s32) (arg0->unk7B70 & 0xFFBFFFFF);
            } else {
                arg0->unk7B70 = (s32) (arg0->unk7B70 | 0x400000);
            }
        }
    }
    temp_v0_9 = getenv(&sub_0daf0000 - 0x7DB0);
    if (temp_v0_9 != NULL) {
        temp_a1 = *temp_v0_9;
        if (temp_a1 != 0) {
            arg0->unk19DD4 = atoi(temp_v0_9, temp_a1);
        }
    }
    temp_v0_10 = getenv(&sub_0daf0000 - 0x7D90);
    if (temp_v0_10 != NULL) {
        temp_a1_2 = *temp_v0_10;
        if (temp_a1_2 != 0) {
            arg0->unk19DD8 = atoi(temp_v0_10, temp_a1_2);
        }
    }
    temp_v0_11 = getenv(&sub_0daf0000 - 0x7D68);
    if ((temp_v0_11 == NULL) || (*temp_v0_11 != 0x6E)) {
        arg0->unk19DCF = 1;
    } else {
        arg0->unk19DCF = 0;
    }
    temp_v0_12 = getenv(&sub_0daf0000 - 0x7D48);
    if ((temp_v0_12 == NULL) || (*temp_v0_12 != 0x6E)) {
        arg0->unk19DD0 = 1;
    } else {
        arg0->unk19DD0 = 0;
    }
    temp_v0_13 = getenv(&sub_0daf0000 - 0x7D28);
    if (temp_v0_13 != NULL) {
        temp_a1_3 = *temp_v0_13;
        if (temp_a1_3 != 0) {
            temp_v0_14 = atoi(temp_v0_13, temp_a1_3);
            if (temp_v0_14 >= 0) {
                arg0->unk19DDC = temp_v0_14;
            }
        }
    }
    temp_v0_15 = getenv(&sub_0daf0000 - 0x7D00);
    if ((temp_v0_15 == NULL) || ((temp_a0_8 = *temp_v0_15, (temp_a0_8 != 0x79)) && (temp_a0_8 != 0x59))) {
        arg0->unk19DE1 = 0;
    } else {
        arg0->unk19DE1 = 1;
    }
    temp_v0_16 = getenv(&sub_0daf0000 - 0x7CE8);
    if ((temp_v0_16 == NULL) || ((temp_a0_9 = *temp_v0_16, (temp_a0_9 != 0x6E)) && (temp_a0_9 != 0x4E))) {
        arg0->unk19DE3 = 1;
    } else {
        arg0->unk19DE3 = 0;
    }
    temp_v0_17 = getenv(&sub_0daf0000 - 0x7CD0);
    if ((temp_v0_17 == NULL) || ((temp_a0_10 = *temp_v0_17, (temp_a0_10 != 0x79)) && (temp_a0_10 != 0x59))) {
        arg0->unk19DE4 = 1;
    } else {
        arg0->unk19DE4 = 0;
    }
    temp_v0_18 = getenv(&sub_0daf0000 - 0x7CB0);
    if ((temp_v0_18 == NULL) || ((temp_a0_11 = *temp_v0_18, (temp_a0_11 != 0x79)) && (temp_a0_11 != 0x59))) {
        arg0->unk19DE5 = 0;
        arg0->unkE8C = (s32) ((arg0->unk16A54 >= 0x80) ? 0x800 : 0x200);
        return;
    }
    arg0->unk19DE5 = 1;
    arg0->unkE8C = (s32) ((arg0->unk16A54 >= 0x80) ? 0x800 : 0x200);
}

void __glOdysseyFindWindowSize(s32 *arg0) {
    s64 sp30;
    s64 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 temp_f1;
    s32 temp_a6;
    s32 var_a1;
    s32 var_a2;

    sp30 = arg0 + 0x20000;
    spC = 0;
    sp8 = 0;
    sp4 = 0;
    sp0 = 0;
    sp10 = arg0->unkE74;
    sp14 = arg0->unkE78;
    if (arg0->unk19DE1 != 0) {
        if (__glOdysseyIoctl(0x6F64000F, sp) != 0) {
            arg0->unk1C(arg0, &sp18, &sp1C, &sp10, &sp14);
        } else {
            sp14 = spC;
            sp10 = sp8;
            sp1C = sp4;
            sp18 = sp0;
        }
    } else {
        arg0->unk1C(&sp18, &sp1C, &sp10, &sp14);
    }
    temp_f1 = sp30->unk-625C;
    sp30->unk-6264 = (f32) ((f32) sp18 + temp_f1);
    sp30->unk-6260 = (f32) ((f32) sp1C + temp_f1);
    temp_a6 = arg0->unkE78;
    if ((arg0->unkE74 != sp10) || (temp_a6 != sp14)) {
        __glChangeWindowSize(arg0, sp10, sp14, sp30, sp1C, sp18, temp_a6);
    }
    var_a1 = sp10;
    if (arg0->unkDD0 != 0) {
        var_a2 = sp14;
        sp20 = var_a1;
        sp24 = var_a2;
    } else {
        arg0->unk48(arg0, &sp20, &sp24);
        var_a1 = sp20;
        var_a2 = sp24;
    }
    if ((arg0->unkE7C != var_a1) || (arg0->unkE80 != var_a2)) {
        __glChangeReadWindowSize(arg0, var_a1, var_a2);
    }
    sp28 = (s64) (arg0 + 0x10000);
    if (arg0->unk16984 != 0) {
        __glChangeWindowSize(arg0, arg0->unk6A0, arg0->unk6A4);
    }
    if (arg0->unkC98 != 0) {
        if ((arg0->unkE74 != sp10) || (arg0->unkE78 != sp14)) {
            sp28->unk20F4 = 1;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54], gap at: 0x18. */
void ApplyViewport(void *arg0) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_v1;
    s64 temp_a2_2;
    u8 temp_a2_3;
    u8 temp_a3_2;

    temp_s1 = arg0->unkE78;
    __glOdysseyFindWindowSize();
    __glUpdateViewport(arg0);
    temp_a2 = arg0->unk6A4;
    temp_s2 = arg0->unk69C;
    temp_a4 = arg0->unkE78;
    unksp20 = (s64) temp_a4;
    temp_v1 = arg0->unk698;
    temp_a3 = temp_a4 - temp_s1;
    unksp30 = (s64) temp_v1;
    unksp18 = (s64) arg0->unkE74;
    temp_a2_2 = temp_a2 + temp_s2;
    unksp28 = temp_a2_2;
    unksp10 = arg0->unk6A0 + temp_v1;
    arg0->unk174 = (f32) ((f32) temp_a3 + arg0->unk174);
    arg0->unk6C0 = (f32) -((f32) temp_a2 * arg0->unkDD4);
    arg0->unk6C4 = (f32) (arg0->unkE58 + (((f32) temp_a4 - arg0->unkE5C) - M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f2, $f5 */)));
    __glOdysseyImageDescribeWindow(arg0 + 0x11D98, 0, temp_a2_2, temp_a3, temp_a4);
    sp0 = (s64) temp_s2;
    __glOdysseyImageDescribeWindow(arg0 + 0x11DD4, 1);
    if (arg0->unkC98 != 0) {
        temp_a2_3 = arg0->unk120F5;
        if (temp_a2_3 != 0) {
            __glOdysseyImageDescribeWindow(arg0 + 0x11E74, 0, (s64) temp_a2_3);
            __glOdysseyImageDescribeWindow(arg0 + 0x11E38, 1);
        }
    }
    arg0->unk2EC4(arg0);
    temp_a3_2 = arg0->unk74C4;
    if ((unksp30 >= 0) && (sp0 >= 0) && (unksp18 >= unksp10) && (unksp20 >= unksp28)) {
        arg0->unk74C4 = 1U;
        if (temp_a3_2 != 1) {
            goto block_10;
        }
    } else {
        arg0->unk74C4 = 0U;
        if (temp_a3_2 != 0) {
block_10:
            *(s32 *)0x1018 = 2;
            arg0->unk2E24 = (s32) (arg0->unk2E24 | 1);
        }
    }
    arg0->unk9828 = (u32) ((arg0->unkE78 & 0xFFF) | (arg0->unk9828 & ~0xFFF));
    if (arg0->unk9830 != 0) {
        arg0->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10456;
        HQ2_READ_FIFO = arg0->unk9828;
        return;
    }
    HQ2_READ_FIFO = 0x10456;
    HQ2_READ_FIFO = arg0->unk9828;
}

/*
Decompilation failure in function InitialFree:

Unable to determine jump table for jr instruction at ody_context.s line 1005.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void InitialDestroyContext(s32 *arg0, s32 arg3) {
    s32 var_a3;

    var_a3 = arg3;
    if ((arg0->unk16C70 != 0) || (var_a3 = arg0->unk16C94, (var_a3 != 0))) {
        __glOdysseyUnSharePM(arg0, arg0 + 0x10000, var_a3);
    }
    __glOdysseyFindWindowSize(arg0);
    __glDestroyContext(arg0);
}

void DestroyContext(s32 arg0) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_at;

    temp_at = *(s32 *)0x1010;
    *(void *)0x1010 = arg0;
    temp_a1 = arg0->unk168DC;
    unksp10 = (s64) ((arg0 == temp_at) ? 0 : temp_at);
    if (temp_a1 != 0) {
        arg0->unkC(temp_a1);
    }
    temp_a1_2 = arg0->unk168E0;
    if (temp_a1_2 != 0) {
        __glOdysseyImageClose(arg0, temp_a1_2);
    }
    __glOdysseyImageClose();
    __glOdysseyAccumClose();
    __glOdysseyTextureDriverDestroy(arg0);
    __glOdysseyUnSharePM((s32 *) arg0);
    __glFreeBufData(arg0);
    temp_a1_3 = arg0->unk168C8;
    if (temp_a1_3 != 0) {
        arg0->unkC(arg0, temp_a1_3);
    }
    temp_a1_4 = arg0->unk168CC;
    if (temp_a1_4 != 0) {
        arg0->unkC(arg0, temp_a1_4);
    }
    arg0->unk168CC = 0;
    arg0->unk168C8 = 0;
    arg0->unk30(arg0);
    arg0->unk7B4C = 0;
    __glOdysseyFindWindowSize((s32 *) arg0);
    *(void *)0x1010 = (s32) unksp10;
}

void ApplyScissor(void *arg0) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a7;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s8 var_a4;

    temp_t1 = arg0->unkE4C;
    temp_a4 = arg0->unkE50;
    temp_a5 = (arg0->unk7444 - temp_t1) - 1;
    temp_a3 = (arg0->unk7448 - temp_a4) - 1;
    temp_a7 = arg0->unk743C - temp_t1;
    temp_a2 = arg0->unk7440 - temp_a4;
    arg0->unk165C0 = (s32) ((temp_a3 & 0xFFF) | (0xFFF000 & (temp_a2 << 0xC) & ~0xFFF));
    arg0->unk165BC = (s32) ((temp_a5 & 0xFFF) | ((temp_a7 << 0xC) & 0xFFF000 & ~0xFFF));
    if ((temp_a5 < temp_a7) || (temp_a3 < temp_a2)) {
        var_a4 = 1;
    } else {
        var_a4 = 0;
    }
    arg0->unk165C4 = var_a4;
    arg0->unk11E2C = (f32) temp_a2;
    arg0->unk11E28 = (f32) temp_a7;
    arg0->unk11E34 = (f32) temp_a3;
    arg0->unk11E30 = (f32) temp_a5;
    temp_a4_2 = arg0->unk7444;
    temp_a2_2 = arg0->unk7454;
    temp_a1 = arg0->unk744C;
    temp_a5_2 = arg0->unk743C;
    temp_a3_2 = arg0->unkE4C;
    temp_a1_2 = ((temp_a5_2 >= temp_a1) ? temp_a5_2 : temp_a1) - temp_a3_2;
    temp_a2_3 = (((temp_a2_2 >= temp_a4_2) ? temp_a4_2 : temp_a2_2) - temp_a3_2) - 1;
    temp_v1 = temp_a2_3 < temp_a1_2;
    temp_t8 = arg0->unk7458;
    temp_v1_2 = arg0->unk7448;
    temp_t2 = arg0->unk7450;
    temp_a1_3 = arg0->unk7440;
    temp_t3 = arg0->unkE50;
    temp_t2_2 = ((temp_a1_3 >= temp_t2) ? temp_a1_3 : temp_t2) - temp_t3;
    temp_t8_2 = (((temp_t8 >= temp_v1_2) ? temp_v1_2 : temp_t8) - temp_t3) - 1;
    temp_t3_2 = temp_t8_2 < temp_t2_2;
    arg0->unk16964 = (s32) (arg0->unk16964 | 0x2000);
    arg0->unk165B4 = (s32) ((((temp_v1 == 0) ? temp_a2_3 : 0) & 0xFFF) | (0xFFF000 & (((temp_v1 == 0) ? temp_a1_2 : 1) << 0xC) & ~0xFFF));
    arg0->unk165B8 = (s32) ((((temp_t3_2 == 0) ? temp_t8_2 : 0) & 0xFFF) | (0xFFF000 & (((temp_t3_2 == 0) ? temp_t2_2 : 1) << 0xC) & ~0xFFF));
    *(s32 *)0x1018 = 2;
}

/*
Decompilation failure in function CopyColorIndexCode:

Unable to determine jump table for jr instruction at ody_context.s line 1732.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function CopyNormalCode:

Unable to determine jump table for jr instruction at ody_context.s line 1833.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function CopyTexCoordCode:

Unable to determine jump table for jr instruction at ody_context.s line 2126.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void CopyVertexCode(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp0, s32 arg_sp4, s32 arg_sp8, s32 arg_spC, s32 arg_sp10, s32 arg_sp14, s32 arg_sp18, s32 arg_sp1C, s32 arg_sp20, s32 arg_sp24, s32 arg_sp2C, s32 arg_sp34) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 temp_s0;
    s64 temp_s0_10;
    s64 temp_s0_11;
    s64 temp_s0_12;
    s64 temp_s0_13;
    s64 temp_s0_14;
    s64 temp_s0_15;
    s64 temp_s0_16;
    s64 temp_s0_17;
    s64 temp_s0_18;
    s64 temp_s0_19;
    s64 temp_s0_20;
    s64 temp_s0_21;
    s64 temp_s0_2;
    s64 temp_s0_3;
    s64 temp_s0_4;
    s64 temp_s0_5;
    s64 temp_s0_6;
    s64 temp_s0_7;
    s64 temp_s0_8;
    s64 temp_s0_9;
    s64 var_s0;

    sp58 = arg7;
    sp50 = arg6;
    sp48 = arg5;
    sp40 = arg4;
    sp38 = arg3;
    sp30 = arg2;
    sp28 = arg1;
    var_s0 = arg0;
    if (arg_sp34 & 1) {
        memcpy(arg1 >> 0x20, arg_sp2C);
        temp_s0 = arg0 + arg_sp2C;
        memcpy(temp_s0, unksp2C, arg_sp2C);
        temp_s0_2 = temp_s0 + arg_sp2C;
        memcpy(temp_s0_2, (s32) sp30, arg_sp2C);
        temp_s0_3 = temp_s0_2 + arg_sp2C;
        memcpy(temp_s0_3, unksp34, arg_sp2C);
        temp_s0_4 = temp_s0_3 + arg_sp2C;
        memcpy(temp_s0_4, (s32) sp38, arg_sp2C);
        temp_s0_5 = temp_s0_4 + arg_sp2C;
        memcpy(temp_s0_5, unksp3C, arg_sp2C);
        temp_s0_6 = temp_s0_5 + arg_sp2C;
        memcpy(temp_s0_6, (s32) sp40, arg_sp2C);
        temp_s0_7 = temp_s0_6 + arg_sp2C;
        memcpy(temp_s0_7, unksp44, arg_sp2C);
        temp_s0_8 = temp_s0_7 + arg_sp2C;
        memcpy(temp_s0_8, (s32) sp48, arg_sp2C);
        temp_s0_9 = temp_s0_8 + arg_sp2C;
        memcpy(temp_s0_9, unksp4C, arg_sp2C);
        temp_s0_10 = temp_s0_9 + arg_sp2C;
        memcpy(temp_s0_10, (s32) sp50, arg_sp2C);
        temp_s0_11 = temp_s0_10 + arg_sp2C;
        memcpy(temp_s0_11, unksp54, arg_sp2C);
        temp_s0_12 = temp_s0_11 + arg_sp2C;
        memcpy(temp_s0_12, (s32) sp58, arg_sp2C);
        temp_s0_13 = temp_s0_12 + arg_sp2C;
        memcpy(temp_s0_13, unksp5C, arg_sp2C);
        temp_s0_14 = temp_s0_13 + arg_sp2C;
        memcpy(temp_s0_14, arg_sp0, arg_sp2C);
        temp_s0_15 = temp_s0_14 + arg_sp2C;
        memcpy(temp_s0_15, arg_sp4, arg_sp2C);
        var_s0 = temp_s0_15 + arg_sp2C;
    }
    if (arg_sp34 & 2) {
        memcpy(var_s0, arg_sp8, arg_sp2C);
        temp_s0_16 = var_s0 + arg_sp2C;
        memcpy(temp_s0_16, arg_spC, arg_sp2C);
        temp_s0_17 = temp_s0_16 + arg_sp2C;
        memcpy(temp_s0_17, arg_sp10, arg_sp2C);
        temp_s0_18 = temp_s0_17 + arg_sp2C;
        memcpy(temp_s0_18, arg_sp14, arg_sp2C);
        temp_s0_19 = temp_s0_18 + arg_sp2C;
        memcpy(temp_s0_19, arg_sp18, arg_sp2C);
        temp_s0_20 = temp_s0_19 + arg_sp2C;
        memcpy(temp_s0_20, arg_sp1C, arg_sp2C);
        temp_s0_21 = temp_s0_20 + arg_sp2C;
        memcpy(temp_s0_21, arg_sp20, arg_sp2C);
        memcpy(temp_s0_21 + arg_sp2C, arg_sp24, arg_sp2C);
    }
}

void AllocInitFastDispatchCodeBuffers(s64 arg0, s32 *arg1) {
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s32 sp74;
    s32 sp4C;
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 *temp_a0;
    s32 *temp_a0_2;
    s32 *temp_a0_3;
    s32 *temp_a0_4;
    s32 *temp_a6;
    s32 *temp_a7;
    s32 *temp_ra;
    s32 *temp_t0;
    s32 *temp_v0;
    s32 temp_a7_2;
    s32 temp_at;
    s32 var_s0;
    s32 var_t1;
    s32 var_t1_2;
    s32 var_t2;
    s32 var_t2_2;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_a2_4;
    void *temp_a2_5;
    void *temp_a2_6;
    void *temp_a2_7;

    var_s0 = *arg1;
    spF0 = arg0;
    spF8 = (s64) arg1;
    if ((var_s0 < 0) || (temp_a2 = *(void **)0x17B4, (temp_a2->unk10 != NULL))) {
        goto block_2;
    }
    (*(void *)0x17B4)->unk10 = sub_0d960000(spF0, temp_a2->unkC, temp_a2);
    temp_a7 = (*(void *)0x17B4)->unk10;
    if (temp_a7 != NULL) {
        M2C_ERROR(/* unknown instruction: ldl $a1, ($a4) */);
        spB8 = (s64) temp_a7;
        M2C_ERROR(/* unknown instruction: ldl $v1, 0x30($a4) */);
        M2C_ERROR(/* unknown instruction: ldl $v0, 0x28($a4) */);
        M2C_ERROR(/* unknown instruction: ldl $at, 0x20($a4) */);
        M2C_ERROR(/* unknown instruction: ldl $t3, 0x10($a4) */);
        M2C_ERROR(/* unknown instruction: ldl $t0, 0x8($a4) */);
        M2C_ERROR(/* unknown instruction: ldl $ra, 0x18($a4) */);
        spE8 = M2C_ERROR(/* unknown instruction: ldr $v1, 0x37($a4) */);
        spE0 = M2C_ERROR(/* unknown instruction: ldr $v0, 0x2f($a4) */);
        var_t1 = 0x1C;
        spD8 = M2C_ERROR(/* unknown instruction: ldr $at, 0x27($a4) */);
        var_t2 = 0x38;
        spC8 = M2C_ERROR(/* unknown instruction: ldr $t3, 0x17($a4) */);
        spD0 = M2C_ERROR(/* unknown instruction: ldr $ra, 0x1f($a4) */);
        spC0 = M2C_ERROR(/* unknown instruction: ldr $t0, 0xf($a4) */);
        do {
            *(var_t2 + &unksp-38) = *(var_t2 + &__glOdyim_colorDispatchTable);
            *(var_t2 + &unksp-34) = *(var_t2 + (&__glOdyim_colorDispatchTable + 4));
            var_t1 -= 4;
            *(var_t2 + &unksp-30) = *(var_t2 + (&__glOdyim_colorDispatchTable + 8));
            temp_t0 = var_t2 + &unksp-2C;
            temp_a7_2 = *(var_t2 + (&__glOdyim_colorDispatchTable + 0xC));
            var_t2 += 0x10;
            *temp_t0 = temp_a7_2;
        } while (var_t1 > 0);
        sp74 = 0x80;
        __glOdysseyFindWindowSize((s32 *) spB8, M2C_ERROR(/* unknown instruction: ldr $a1, 0x7($a4) */), spC0, spC8, spD0, spD8, spE0, spE8);
block_2:
        if (var_s0 >= 0) {
            temp_a2_2 = *(void *)0x17B4;
            if (temp_a2_2->unk14 != NULL) {
                goto block_4;
            }
            (*(void *)0x17B4)->unk14 = sub_0d960000(spF0, temp_a2_2->unkC, temp_a2_2);
            temp_a6 = (*(void *)0x17B4)->unk14;
            if (temp_a6 != NULL) {
                sp88 = (s64) temp_a6;
                M2C_ERROR(/* unknown instruction: ldl $a7, 0x30($a4) */);
                M2C_ERROR(/* unknown instruction: ldl $a1, ($a4) */);
                M2C_ERROR(/* unknown instruction: ldl $t9, 0x28($a4) */);
                M2C_ERROR(/* unknown instruction: ldl $t2, 0x10($a4) */);
                M2C_ERROR(/* unknown instruction: ldl $t8, 0x20($a4) */);
                M2C_ERROR(/* unknown instruction: ldl $t0, 0x8($a4) */);
                M2C_ERROR(/* unknown instruction: ldl $t3, 0x18($a4) */);
                sp90 = M2C_ERROR(/* unknown instruction: ldr $t9, 0x2f($a4) */);
                var_t1_2 = 0x1C;
                spA0 = M2C_ERROR(/* unknown instruction: ldr $t2, 0x17($a4) */);
                spB0 = M2C_ERROR(/* unknown instruction: ldr $t8, 0x27($a4) */);
                var_t2_2 = 0x38;
                spA8 = M2C_ERROR(/* unknown instruction: ldr $t3, 0x1f($a4) */);
                sp98 = M2C_ERROR(/* unknown instruction: ldr $t0, 0xf($a4) */);
                do {
                    *(var_t2_2 + &unksp-38) = *(var_t2_2 + &__glOdyim_indexDispatchTable);
                    *(var_t2_2 + &unksp-34) = *(var_t2_2 + (&__glOdyim_indexDispatchTable + 4));
                    var_t1_2 -= 4;
                    *(var_t2_2 + &unksp-30) = *(var_t2_2 + (&__glOdyim_indexDispatchTable + 8));
                    temp_v0 = var_t2_2 + &unksp-2C;
                    temp_at = *(var_t2_2 + (&__glOdyim_indexDispatchTable + 0xC));
                    var_t2_2 += 0x10;
                    *temp_v0 = temp_at;
                } while (var_t1_2 > 0);
                sp74 = 0x80;
                __glOdysseyFindWindowSize((s32 *) sp88, M2C_ERROR(/* unknown instruction: ldr $a1, 0x7($a4) */), sp98, spA0, spA8, spB0, sp90, M2C_ERROR(/* unknown instruction: ldr $a7, 0x37($a4) */));
                goto block_4;
            }
            var_s0 = -1;
            goto block_6;
        }
        goto block_8;
    }
    var_s0 = -1;
block_4:
    if (var_s0 >= 0) {
        temp_a2_3 = *(void *)0x17B4;
        if (temp_a2_3->unk1C != NULL) {
            goto block_6;
        }
        (*(void *)0x17B4)->unk1C = sub_0d960000(spF0, temp_a2_3->unk18, temp_a2_3);
        temp_a0 = (*(void *)0x17B4)->unk1C;
        if (temp_a0 != NULL) {
            M2C_ERROR(/* unknown instruction: ldl $a1, ($a7) */);
            M2C_ERROR(/* unknown instruction: ldl $a2, 0x8($a7) */);
            M2C_ERROR(/* unknown instruction: ldl $a3, 0x10($a7) */);
            M2C_ERROR(/* unknown instruction: ldl $a5, 0x20($a7) */);
            M2C_ERROR(/* unknown instruction: ldl $a4, 0x18($a7) */);
            __glOdysseyFindWindowSize(temp_a0, M2C_ERROR(/* unknown instruction: ldr $a1, 0x7($a7) */), M2C_ERROR(/* unknown instruction: ldr $a2, 0xf($a7) */), M2C_ERROR(/* unknown instruction: ldr $a3, 0x17($a7) */), M2C_ERROR(/* unknown instruction: ldr $a4, 0x1f($a7) */), M2C_ERROR(/* unknown instruction: ldr $a5, 0x27($a7) */), 0x80, (s64) &__glOdyim_normalDispatchTable);
block_6:
            if ((var_s0 < 0) || (temp_a2_4 = *(void *)0x17B4, (temp_a2_4->unk24 != NULL))) {
                goto block_8;
            }
            (*(void *)0x17B4)->unk24 = sub_0d960000(spF0, temp_a2_4->unk20, temp_a2_4);
            temp_a0_2 = (*(void *)0x17B4)->unk24;
            if (temp_a0_2 != NULL) {
                M2C_ERROR(/* unknown instruction: ldl $a1, ($t0) */);
                M2C_ERROR(/* unknown instruction: ldl $a2, 0x8($t0) */);
                M2C_ERROR(/* unknown instruction: ldl $a3, 0x10($t0) */);
                M2C_ERROR(/* unknown instruction: ldl $a4, 0x18($t0) */);
                M2C_ERROR(/* unknown instruction: ldl $a5, 0x20($t0) */);
                M2C_ERROR(/* unknown instruction: ldl $a7, 0x30($t0) */);
                M2C_ERROR(/* unknown instruction: ldl $a6, 0x28($t0) */);
                sp0 = __glOdyim_texCoordDispatchTable.unk38;
                sp4 = __glOdyim_texCoordDispatchTable.unk3C;
                sp8 = __glOdyim_texCoordDispatchTable.unk40;
                spC = __glOdyim_texCoordDispatchTable.unk44;
                sp10 = __glOdyim_texCoordDispatchTable.unk48;
                sp14 = __glOdyim_texCoordDispatchTable.unk4C;
                sp18 = __glOdyim_texCoordDispatchTable.unk50;
                sp1C = __glOdyim_texCoordDispatchTable.unk54;
                sp20 = __glOdyim_texCoordDispatchTable.unk58;
                sp24 = __glOdyim_texCoordDispatchTable.unk5C;
                sp28 = __glOdyim_texCoordDispatchTable.unk60;
                sp2C = __glOdyim_texCoordDispatchTable.unk64;
                sp30 = __glOdyim_texCoordDispatchTable.unk68;
                sp34 = __glOdyim_texCoordDispatchTable.unk6C;
                sp38 = __glOdyim_texCoordDispatchTable.unk70;
                sp3C = __glOdyim_texCoordDispatchTable.unk74;
                sp40 = __glOdyim_texCoordDispatchTable.unk78;
                sp4C = 0x80;
                sp44 = __glOdyim_texCoordDispatchTable.unk7C;
                __glOdysseyFindWindowSize(temp_a0_2, M2C_ERROR(/* unknown instruction: ldr $a1, 0x7($t0) */), M2C_ERROR(/* unknown instruction: ldr $a2, 0xf($t0) */), M2C_ERROR(/* unknown instruction: ldr $a3, 0x17($t0) */), M2C_ERROR(/* unknown instruction: ldr $a4, 0x1f($t0) */), M2C_ERROR(/* unknown instruction: ldr $a5, 0x27($t0) */), M2C_ERROR(/* unknown instruction: ldr $a6, 0x2f($t0) */), M2C_ERROR(/* unknown instruction: ldr $a7, 0x37($t0) */));
                goto block_8;
            }
            *spF8 = -1;
            return;
        }
        var_s0 = -1;
        goto block_8;
    }
block_8:
    if (var_s0 != 0) {
        if (var_s0 != 1) {
            if (var_s0 == 2) {
                temp_a2_5 = *(void *)0x17B4;
                if (temp_a2_5->unk30 != NULL) {
                    goto block_12;
                }
                (*(void *)0x17B4)->unk30 = sub_0d960000(spF0, temp_a2_5->unk28, temp_a2_5);
                temp_a0_3 = (*(void *)0x17B4)->unk30;
                if (temp_a0_3 != NULL) {
                    M2C_ERROR(/* unknown instruction: ldl $a1, ($t0) */);
                    M2C_ERROR(/* unknown instruction: ldl $a2, 0x8($t0) */);
                    M2C_ERROR(/* unknown instruction: ldl $a3, 0x10($t0) */);
                    M2C_ERROR(/* unknown instruction: ldl $a4, 0x18($t0) */);
                    M2C_ERROR(/* unknown instruction: ldl $a5, 0x20($t0) */);
                    M2C_ERROR(/* unknown instruction: ldl $a7, 0x30($t0) */);
                    M2C_ERROR(/* unknown instruction: ldl $a6, 0x28($t0) */);
                    sp0 = __glOdyim_vertexSmallWDispatchTable.unk38;
                    sp4 = __glOdyim_vertexSmallWDispatchTable.unk3C;
                    sp8 = __glOdyim_vertexSmallWDispatchTable.unk40;
                    spC = __glOdyim_vertexSmallWDispatchTable.unk44;
                    sp10 = __glOdyim_vertexSmallWDispatchTable.unk48;
                    sp14 = __glOdyim_vertexSmallWDispatchTable.unk4C;
                    sp18 = __glOdyim_vertexSmallWDispatchTable.unk50;
                    sp1C = __glOdyim_vertexSmallWDispatchTable.unk54;
                    sp20 = __glOdyim_vertexSmallWDispatchTable.unk58;
                    sp34 = 3;
                    sp2C = 0x100;
                    sp24 = __glOdyim_vertexSmallWDispatchTable.unk5C;
                    __glOdysseyFindWindowSize(temp_a0_3, M2C_ERROR(/* unknown instruction: ldr $a1, 0x7($t0) */), M2C_ERROR(/* unknown instruction: ldr $a2, 0xf($t0) */), M2C_ERROR(/* unknown instruction: ldr $a3, 0x17($t0) */), M2C_ERROR(/* unknown instruction: ldr $a4, 0x1f($t0) */), M2C_ERROR(/* unknown instruction: ldr $a5, 0x27($t0) */), M2C_ERROR(/* unknown instruction: ldr $a6, 0x2f($t0) */), M2C_ERROR(/* unknown instruction: ldr $a7, 0x37($t0) */));
                    goto block_12;
                }
                *spF8 = -1;
                return;
            }
            /* Duplicate return node #13. Try simplifying control flow for better match */
            *(s32 *) spF8 = var_s0;
            return;
        }
        temp_a2_6 = *(void *)0x17B4;
        if (temp_a2_6->unk34 == NULL) {
            (*(void *)0x17B4)->unk34 = sub_0d960000(spF0, temp_a2_6->unk28, temp_a2_6);
            temp_ra = (*(void *)0x17B4)->unk34;
            sp80 = (s64) temp_ra;
            if (temp_ra != NULL) {
                M2C_ERROR(/* unknown instruction: ldl $a1, ($v0) */);
                M2C_ERROR(/* unknown instruction: ldl $a2, 0x8($v0) */);
                M2C_ERROR(/* unknown instruction: ldl $a3, 0x10($v0) */);
                M2C_ERROR(/* unknown instruction: ldl $a4, 0x18($v0) */);
                M2C_ERROR(/* unknown instruction: ldl $a5, 0x20($v0) */);
                M2C_ERROR(/* unknown instruction: ldl $a7, 0x30($v0) */);
                M2C_ERROR(/* unknown instruction: ldl $a6, 0x28($v0) */);
                sp0 = __glOdyim_vertexDispatchTable.unk38;
                sp4 = __glOdyim_vertexDispatchTable.unk3C;
                sp8 = __glOdyim_vertexDispatchTable.unk40;
                spC = __glOdyim_vertexDispatchTable.unk44;
                sp10 = __glOdyim_vertexDispatchTable.unk48;
                sp14 = __glOdyim_vertexDispatchTable.unk4C;
                sp18 = __glOdyim_vertexDispatchTable.unk50;
                sp1C = __glOdyim_vertexDispatchTable.unk54;
                sp20 = __glOdyim_vertexDispatchTable.unk58;
                sp34 = 1;
                sp2C = 0x100;
                sp24 = __glOdyim_vertexDispatchTable.unk5C;
                __glOdysseyFindWindowSize((s32 *) sp80, M2C_ERROR(/* unknown instruction: ldr $a1, 0x7($v0) */), M2C_ERROR(/* unknown instruction: ldr $a2, 0xf($v0) */), M2C_ERROR(/* unknown instruction: ldr $a3, 0x17($v0) */), M2C_ERROR(/* unknown instruction: ldr $a4, 0x1f($v0) */), M2C_ERROR(/* unknown instruction: ldr $a5, 0x27($v0) */), M2C_ERROR(/* unknown instruction: ldr $a6, 0x2f($v0) */), M2C_ERROR(/* unknown instruction: ldr $a7, 0x37($v0) */));
                M2C_ERROR(/* unknown instruction: ldl $a1, ($ra) */);
                M2C_ERROR(/* unknown instruction: ldl $a2, 0x8($ra) */);
                M2C_ERROR(/* unknown instruction: ldl $a3, 0x10($ra) */);
                M2C_ERROR(/* unknown instruction: ldl $a4, 0x18($ra) */);
                M2C_ERROR(/* unknown instruction: ldl $a5, 0x20($ra) */);
                M2C_ERROR(/* unknown instruction: ldl $a7, 0x30($ra) */);
                M2C_ERROR(/* unknown instruction: ldl $a6, 0x28($ra) */);
                sp0 = __glOdyim_vertexSmallWDispatchTable.unk38;
                sp4 = __glOdyim_vertexSmallWDispatchTable.unk3C;
                sp8 = __glOdyim_vertexSmallWDispatchTable.unk40;
                spC = __glOdyim_vertexSmallWDispatchTable.unk44;
                sp10 = __glOdyim_vertexSmallWDispatchTable.unk48;
                sp14 = __glOdyim_vertexSmallWDispatchTable.unk4C;
                sp18 = __glOdyim_vertexSmallWDispatchTable.unk50;
                sp1C = __glOdyim_vertexSmallWDispatchTable.unk54;
                sp20 = __glOdyim_vertexSmallWDispatchTable.unk58;
                sp34 = 2;
                sp24 = __glOdyim_vertexSmallWDispatchTable.unk5C;
                sp2C = 0x100;
                __glOdysseyFindWindowSize(sp80 + 0x1000, M2C_ERROR(/* unknown instruction: ldr $a1, 0x7($ra) */), M2C_ERROR(/* unknown instruction: ldr $a2, 0xf($ra) */), M2C_ERROR(/* unknown instruction: ldr $a3, 0x17($ra) */), M2C_ERROR(/* unknown instruction: ldr $a4, 0x1f($ra) */), M2C_ERROR(/* unknown instruction: ldr $a5, 0x27($ra) */), M2C_ERROR(/* unknown instruction: ldr $a6, 0x2f($ra) */), M2C_ERROR(/* unknown instruction: ldr $a7, 0x37($ra) */));
                goto block_12;
            }
            *spF8 = -1;
            return;
        }
        goto block_12;
    }
    temp_a2_7 = *(void *)0x17B4;
    if (temp_a2_7->unk2C == NULL) {
        (*(void *)0x17B4)->unk2C = *spF0(spF0, temp_a2_7->unk28, temp_a2_7);
        temp_a0_4 = (*(void *)0x17B4)->unk2C;
        if (temp_a0_4 != NULL) {
            M2C_ERROR(/* unknown instruction: ldl $a1, ($t0) */);
            M2C_ERROR(/* unknown instruction: ldl $a2, 0x8($t0) */);
            M2C_ERROR(/* unknown instruction: ldl $a3, 0x10($t0) */);
            M2C_ERROR(/* unknown instruction: ldl $a4, 0x18($t0) */);
            M2C_ERROR(/* unknown instruction: ldl $a5, 0x20($t0) */);
            M2C_ERROR(/* unknown instruction: ldl $a7, 0x30($t0) */);
            M2C_ERROR(/* unknown instruction: ldl $a6, 0x28($t0) */);
            sp0 = __glOdyim_vertexDispatchTable.unk38;
            sp4 = __glOdyim_vertexDispatchTable.unk3C;
            sp8 = __glOdyim_vertexDispatchTable.unk40;
            spC = __glOdyim_vertexDispatchTable.unk44;
            sp10 = __glOdyim_vertexDispatchTable.unk48;
            sp14 = __glOdyim_vertexDispatchTable.unk4C;
            sp18 = __glOdyim_vertexDispatchTable.unk50;
            sp1C = __glOdyim_vertexDispatchTable.unk54;
            sp20 = __glOdyim_vertexDispatchTable.unk58;
            sp34 = 3;
            sp2C = 0x100;
            sp24 = __glOdyim_vertexDispatchTable.unk5C;
            __glOdysseyFindWindowSize(temp_a0_4, M2C_ERROR(/* unknown instruction: ldr $a1, 0x7($t0) */), M2C_ERROR(/* unknown instruction: ldr $a2, 0xf($t0) */), M2C_ERROR(/* unknown instruction: ldr $a3, 0x17($t0) */), M2C_ERROR(/* unknown instruction: ldr $a4, 0x1f($t0) */), M2C_ERROR(/* unknown instruction: ldr $a5, 0x27($t0) */), M2C_ERROR(/* unknown instruction: ldr $a6, 0x2f($t0) */), M2C_ERROR(/* unknown instruction: ldr $a7, 0x37($t0) */));
            goto block_12;
        }
        *spF8 = -1;
        return;
    }
block_12:
    *(s32 *) spF8 = var_s0;
}

s32 InitFastDispatch(void *(**arg0)(?)) {
    s64 sp8;
    s64 sp0;
    s32 temp_a1_2;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_v0;
    s64 temp_v0_3;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_v0;

    *(s32 *)0x17B8 = 0;
    sp8 = (s64) arg0;
    temp_v0 = *arg0(0x38);
    *(void **)0x17B4 = temp_v0;
    if (temp_v0 == NULL) {
        return 0;
    }
    temp_v0->unk4 = &glColor3b;
    (*(void *)0x17B4)->unk0 = (s32) (&__glOdyssey_FastDispatchEnd - &glColor3b);
    if (__glOdysseyAtomicTestAndSet(saved_reg_gp - 0x3528) != 0) {
        if (saved_reg_gp->unk-352C == 0) {
            do {
                sginap(0);
            } while (saved_reg_gp->unk-352C == 0);
        }
        if (saved_reg_gp->unk-3524 != 0) {
            goto block_6;
        }
        /* Duplicate return node #12. Try simplifying control flow for better match */
        return 0;
    }
    temp_v0_2 = *sp8(sp8, (*(void *)0x17B4)->unk0);
    var_a0 = temp_v0_2;
    saved_reg_gp->unk-3524 = temp_v0_2;
    if (temp_v0_2 != 0) {
        temp_a1 = *(void *)0x17B4;
        memcpy((s64) var_a0, temp_a1->unk4, temp_a1->unk0);
        var_a0 = saved_reg_gp->unk-3524;
    }
    saved_reg_gp->unk-352C = 1;
    if (var_a0 == 0) {
        return 0;
    }
block_6:
    temp_v0_3 = open(&sub_0daf0000 - 0x7C88, 2);
    sp0 = temp_v0_3;
    if (temp_v0_3 >= 0) {
        temp_a0 = *(void *)0x17B4;
        temp_a1_2 = (*(void *)0x17B4)->unk4;
        if (temp_a1_2 != mmap(temp_a0->unk4, temp_a0->unk0, 7, 0x92, sp0, 0)) {
            return 0;
        }
        close(sp0, temp_a1_2);
        temp_a0_2 = *(void *)0x17B4;
        memcpy((s64) temp_a0_2->unk4, saved_reg_gp->unk-3524, temp_a0_2->unk0);
        (*(void *)0x17B4)->unk8 = -1;
        (*(void *)0x17B4)->unkC = 0x1400;
        (*(void *)0x17B4)->unk10 = 0;
        (*(void *)0x17B4)->unk14 = 0;
        (*(void *)0x17B4)->unk18 = 0x500;
        (*(void *)0x17B4)->unk1C = 0;
        (*(void *)0x17B4)->unk20 = 0x1000;
        (*(void *)0x17B4)->unk24 = 0;
        (*(void *)0x17B4)->unk28 = 0x1800;
        (*(void *)0x17B4)->unk2C = 0;
        (*(void *)0x17B4)->unk30 = 0;
        var_v0 = 1;
        (*(void *)0x17B4)->unk34 = 0;
        /* Duplicate return node #2. Try simplifying control flow for better match */
        return var_v0;
    }
    var_v0 = 0;
    return var_v0;
}

void FastDispatchInstall(void *arg0) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp0;
    ? *temp_a1_3;
    ? *temp_a5;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 var_a2;
    s32 var_a3;
    s64 temp_a0;
    u8 temp_a3_2;
    void *temp_a0_2;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a4;
    void *temp_a4_2;

    if (arg0->unk19DE0 != 0) {
        var_a3 = arg0->unk137C;
        if (var_a3 != 0) {
            goto block_2;
        }
        if (!(arg0->unk16988 & ~0x10) && (*(s32 *)0x1048 == 0) && (*(s32 *)0x1010 != 0) && (var_a3 = arg0->unk19DBC, (var_a3 != 3))) {
            sp0 = var_a3;
            temp_a4 = *(void *)0x17B4;
            var_a2 = temp_a4->unk8;
            if (var_a2 != var_a3) {
                sp20 = (s64) arg0;
                if ((var_a3 >= 0) && (__glOdysseyFindWindowSize((s32 *) sp20, sp, (s64) var_a2, (s64) var_a3, (s64) temp_a4, -1), var_a3 = sp0, temp_a4_2 = *(void *)0x17B4, var_a2 = temp_a4_2->unk8, (var_a3 >= 0))) {
                    if (var_a2 == -1) {
                        temp_a3 = temp_a4_2->unk4;
                        temp_a5 = temp_a4_2->unkC;
                        sp8 = (s64) temp_a5;
                        sp18 = (s64) temp_a3;
                        if (sp20->unkC94 != 0) {
                            memcpy(sp18, temp_a4_2->unk10, (s32) sp8, (u8) temp_a3, temp_a4_2, temp_a5, (? *)-1);
                        } else {
                            memcpy(sp18, temp_a4_2->unk14, (s32) sp8, (u8) temp_a3, temp_a4_2, temp_a5, (? *)-1);
                        }
                        temp_a0 = sp8 + sp18;
                        sp18 = temp_a0;
                        temp_a1 = *(void *)0x17B4;
                        temp_a2 = temp_a1->unk18;
                        sp8 = (s64) temp_a2;
                        memcpy(temp_a0, temp_a1->unk1C, temp_a2);
                        temp_a1_2 = *(void *)0x17B4;
                        memcpy(sp8 + sp18, temp_a1_2->unk24, temp_a1_2->unk20);
                    }
                    temp_a2_2 = (*(void *)0x17B4)->unk28;
                    switch (var_a3) {               /* irregular */
                    case 0:
                        memcpy((s64) &glVertex2d, (*(void *)0x17B4)->unk2C, temp_a2_2, (u8) var_a3, *(void *)0x17B4, (? *)1, (? *)-1);
                        *(void *)0x17B8 = 1;
                        break;
                    case 1:
                        M2C_ERROR(/* Read from unset register $t9 */)(&glVertex2d, (*(void *)0x17B4)->unk34, temp_a2_2, var_a3, *(void *)0x17B4, 1, -1);
                        *(void *)0x17B8 = 1;
                        break;
                    case 2:
                        memcpy((s64) &glVertex2d, (*(void *)0x17B4)->unk30, temp_a2_2, (u8) var_a3, *(void *)0x17B4, &glVertex2d, (? *)-1);
                        *(void *)0x17B8 = 1;
                        break;
                    }
                    if ((*(void *)0x17B4)->unk8 == -1) {
                        temp_a3_2 = sp20->unkC94;
                        temp_a0_2 = (*(void *)0x17B4)->unk28 + &glVertex2d;
                        sp18 = (s64) temp_a0_2;
                        temp_a1_3 = (temp_a3_2 == 0) ? &__glOdyim_indexDispatchTable : &__glOdyim_colorDispatchTable;
                        sp10 = (s64) temp_a1_3;
                        memcpy((s64) temp_a0_2, temp_a1_3->unkA0, 0x80, temp_a3_2, *(void *)0x17B4, &glVertex2d, &__glOdyim_indexDispatchTable);
                        memcpy((s64) (temp_a0_2 + 0x80), temp_a1_3->unkA4, 0x80);
                    }
                } else {
                    goto block_3;
                }
                /* Duplicate return node #6. Try simplifying control flow for better match */
                cacheflush((*(void *)0x17B4)->unk4, (*(void *)0x17B4)->unk0, 3);
                (*(void *)0x17B4)->unk8 = sp0;
            }
        } else {
block_2:
            sp0 = -1;
            var_a2 = (*(void **)0x17B4)->unk8;
            if (var_a2 != -1) {
block_3:
                if (var_a2 >= 0) {
                    memcpy((s64) (*(void *)0x17B4)->unk4, (M2C_ERROR(/* Read from unset register $t9 */) + 0x190F70)->unk-3524, (*(void *)0x17B4)->unk0, (u8) var_a3, *(void *)0x17B4);
                }
                *(s32 *)0x17B8 = 0;
                cacheflush((*(void *)0x17B4)->unk4, (*(void *)0x17B4)->unk0, 3);
                (*(void *)0x17B4)->unk8 = sp0;
            }
        }
    }
}

void InitFunctionPtrs(void *arg0) {
    arg0->unk2E34 = &__glOdysseyFinish;
    arg0->unk2EB8 = &__glMipsNormalize;
    arg0->unk2EB4 = &__glComputeInverseTranspose;
    arg0->unk2EA4 = &__glMipsMultMatrix;
    arg0->unk2EA0 = &__glMakeIdentity;
    arg0->unk2E9C = &__glInvertTransposeMatrix;
    arg0->unk2E98 = &__glCopyMatrix;
    arg0->unk31A8 = (s32) M2C_ERROR(/* Read from unset register $t9 */);
    arg0->unk2F34 = (s32) M2C_ERROR(/* Read from unset register $t9 */);
    arg0->unk2F58 = &__glBeginPolygon;
    arg0->unk2F48 = &__glBeginTStrip;
    arg0->unk2F4C = &__glBeginTFan;
    arg0->unk2F44 = &__glBeginTriangles;
    arg0->unk2F54 = &__glBeginQStrip;
    arg0->unk2F50 = &__glBeginQuads;
    arg0->unk2EF8 = &__glOddTStripVertex;
    arg0->unk2E5C = &__glGenericPickLineProcs;
    arg0->unk2E48 = &__glGenericPickColorMaterialProcs;
    arg0->unk2E6C = &__glGenericPickClipProcs;
    arg0->unk2E74 = &__glGenericPickBufferProcs;
    arg0->unk2E44 = &__glGenericPickBlendProcs;
    arg0->unk2E94 = &__glOdysseyPickAllProcs;
    arg0->unk2EE4 = &__glNop;
    arg0->unk2F2C = &__glNop;
    arg0->unk3188 = (s32) M2C_ERROR(/* Read from unset register $t9 */);
    arg0->unk2E58 = (s32) M2C_ERROR(/* Read from unset register $t9 */);
    arg0->unk2E64 = &__glOdysseyPickRenderBitmapProcs;
    arg0->unk2E7C = &__glGenericPickSpanProcs;
    arg0->unk2E78 = &__glGenericPickStoreProcs;
    arg0->unk2E4C = &__glOdysseyPickTextureProcs;
    arg0->unk2E60 = &__glGenericPickTriangleProcs;
    arg0->unk2E80 = &__glGenericPickVertexProcs;
    arg0->unk3158 = &__glGenericPickReadImage;
    arg0->unk30E0 = &__glSpanRenderDepth;
    arg0->unk30D4 = &__glSpanRenderCI2;
    arg0->unk30D0 = &__glSpanRenderCI;
    arg0->unk30CC = &__glSpanReadStencil2;
    arg0->unk30C8 = &__glSpanReadStencil;
    arg0->unk30C4 = &__glSpanReadDepth2;
    arg0->unk30C0 = &__glSpanReadDepth;
    arg0->unk30BC = (s32) M2C_ERROR(/* Read from unset register $t9 */);
    arg0->unk2F0C = &__glDoEvalCoord1;
    arg0->unk2F10 = &__glDoEvalCoord2;
    arg0->unk2EC4 = &__glComputeClipBox;
    arg0->unk2E30 = &__glOdysseyFlush;
    arg0->unk2EC0 = (void *) (sub_0d960000 + 0x5AB0);
    arg0->unk2EBC = (void *) (sub_0d960000 + 0x5EE0);
    arg0->unk2F5C = &__glEndPrim;
    arg0->unk2EFC = &__glEvenTStripVertex;
    arg0->unk2EF0 = &__glFirstLinesVertex;
    arg0->unk2EF4 = &__glSecondLinesVertex;
    arg0->unk2E88 = &__glGenericPickInvTransposeProcs;
    arg0->unk2E84 = &__glGenericPickMatrixProcs;
    arg0->unk2E54 = &__glGenericPickTransformProcs;
    arg0->unk2E50 = &__glGenericPickFogProcs;
    arg0->unk2E90 = &__glGenericPickDepthProcs;
    arg0->unk3154 = &__glGenericPickCopyImage;
    arg0->unk31B0 = &__glColorTableSGI;
    arg0->unk31B4 = &__glColorSubTable;
    arg0->unk30E8 = &__glSpanRenderStencil;
    arg0->unk30E4 = &__glSpanRenderDepth2;
    arg0->unk30DC = &__glSpanRenderRGBA2;
    arg0->unk30D8 = &__glSpanRenderRGBA;
    arg0->unk2F7C = &__glOdysseyRect;
    arg0->unk2F3C = &__glBeginLLoop;
    arg0->unk31AC = &__gl_varray_funcs;
    arg0->unk2E8C = &__glGenericPickMvpMatrixProcs;
    arg0->unk30B0 = &__glSpanReadCI;
    arg0->unk30EC = &__glSpanRenderStencil2;
    arg0->unk2E40 = __glOdysseyValidate;
    arg0->unk2F38 = &__glBeginLines;
    arg0->unk3184 = &__glOdysseyRasterPos3;
    arg0->unk2E68 = &__glOdysseyPickPixelProcs;
    arg0->unk2F74 = &__glClipPolygon;
    arg0->unk2F40 = &__glBeginLStrip;
    arg0->unk3180 = &__glOdysseyRasterPos2;
    arg0->unk2E70 = &__glGenericPickParameterClipProcs;
    arg0->unk30B4 = &__glSpanReadCI2;
    arg0->unk30B8 = &__glSpanReadRGBA;
    arg0->unk58 = (void *) (sub_0d960000 + 0x5DB0);
    arg0->unk7C = &__glOdysseySwapBuffers;
    arg0->unk2E3C = (void *) (sub_0d960000 + 0x7620);
    arg0->unk19EA0 = &__glOdysseySoftClipBeginLLoop;
}

s32 InitBuffers(void *arg0) {
    s32 temp_a0;
    s32 var_s1;
    u8 temp_a3_2;
    u8 temp_a7;
    void *temp_a0_2;
    void *temp_a3;
    void *temp_v1;

    temp_a3 = arg0 + 0x7800;
    arg0->unk2E2C = temp_a3;
    arg0->unk77F8 = temp_a3;
    if (arg0->unkC96 != 0) {
        temp_v1 = arg0 + 0x78DC;
        arg0->unk2E28 = temp_v1;
        arg0->unk77FC = temp_v1;
        if (arg0->unkC95 != 0) {
            __glOdysseyInitCI(temp_a3, arg0, temp_a3);
            __glOdysseyInitCI(arg0->unk77FC, arg0);
        } else {
            __glOdysseyInitRGB(temp_a3, arg0, temp_a3);
            __glOdysseyInitRGB(arg0->unk77FC, arg0);
        }
    } else {
        temp_a7 = arg0->unkC95;
        arg0->unk2E28 = temp_a3;
        if (temp_a7 != 0) {
            __glOdysseyInitCI(temp_a3, arg0, temp_a3, temp_a7);
        } else {
            __glOdysseyInitRGB(temp_a3, arg0, temp_a3, temp_a7);
        }
    }
    temp_a0 = arg0->unkCE0;
    if (temp_a0 > 0) {
        var_s1 = 0;
loop_9:
        temp_a0_2 = arg0->unk79B8 + var_s1;
        if (arg0->unkC95 == 0) {
            __glOdysseyInitRGB(temp_a0_2, arg0);
        } else {
            __glOdysseyInitCI(temp_a0_2, arg0);
        }
        var_s1 += 0xDC;
        if (var_s1 != (temp_a0 * 0xDC)) {
            goto loop_9;
        }
    }
    temp_a3_2 = arg0->unkC98;
    arg0->unk12F4 = -1;
    arg0->unk12F0 = 1;
    if ((temp_a3_2 == 0) || (__glOdysseyInitAccum(arg0 + 0x7AB8, arg0, 1, temp_a3_2, -1) != 0)) {
        if (arg0->unkC99 != 0) {
            __glInitDepth(arg0 + 0x7A34, arg0);
        }
        arg0->unk7A80 = 0x1FFFF800;
        if (arg0->unkC9A != 0) {
            __glInitStencil8(arg0 + 0x79BC, arg0);
        }
        __glUpdateDepthRange(arg0);
        return 1;
    }
    return 0;
}

void __glOdysseyValidate(s32 *arg0) {
    unksp8 = arg0 + 0x10000;
    if (arg0->unk16964 != 0) {
        __glOdysseyValidateContext();
    }
    if (arg0->unk2E24 != 0) {
        __glOdysseyValidateContext(arg0);
    }
    if (unksp8->unk6960 != 0) {
        __glOdysseyValidateHardware(arg0);
    }
    unksp8->unk6977 = 0;
    unksp8->unk6976 = 0;
    unksp8->unk6975 = 0;
    unksp8->unk6974 = 0;
}

void __glOdysseyValidateClipPlanes(s32 *arg0, f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, f32 fparg7) {
    f32 temp_f8;
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f17;
    f32 var_f18;
    f32 var_f19;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_t9;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    u32 temp_v0;
    u32 var_a5;
    void *var_a6;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f18 = fparg6;
    var_f19 = fparg7;
    var_a4 = 0;
    var_a5 = 0x120;
    var_a2 = 0x10;
    var_a6 = arg0 + 0x10000;
    if (arg0->unk70C & (1 << 0)) {
        arg0->unk9CB4 = (u32) *arg0->unk6D4;
        arg0->unk9CB8 = (u32) arg0->unk6D4->unk4;
        arg0->unk9CBC = (u32) arg0->unk6D4->unk8;
        arg0->unkA218 = 0x120U;
        arg0->unk9CC0 = (u32) arg0->unk6D4->unkC;
        HQ2_READ_FIFO = 0x31008000 | ((arg0->unkA218 & 0x3FF) | (((u32) arg0->unkA218 >> 0xA) << 0x17));
        HQ2_READ_FIFO = 0x908091BB;
        HQ2_READ_FIFO = arg0->unk9CB4;
        HQ2_READ_FIFO = arg0->unk9CB8;
        HQ2_READ_FIFO = arg0->unk9CBC;
        var_a6 = arg0 + 0x10010;
        var_a4 = 1;
        var_a5 = 0x124;
        HQ2_READ_FIFO = arg0->unk9CC0;
    }
    var_a3 = 1;
    do {
        var_a1 = arg0->unk70C & (1 << var_a3);
        if (var_a1 != 0) {
            var_a1 = (s32) (arg0->unk6D4 + var_a2);
            var_f15 = *var_a1;
            var_a6->unk-634C = var_f15;
            var_f14 = (arg0->unk6D4 + var_a2)->unk4;
            var_a6->unk-6348 = var_f14;
            var_f13 = (arg0->unk6D4 + var_a2)->unk8;
            var_a6->unk-6344 = var_f13;
            var_f12 = (arg0->unk6D4 + var_a2)->unkC;
            var_a6->unk-6340 = var_f12;
            arg0->unkA218 = var_a5;
            HQ2_READ_FIFO = 0x31008000 | ((arg0->unkA218 & 0x3FF) | (((u32) arg0->unkA218 >> 0xA) << 0x17));
            HQ2_READ_FIFO = 0x908091BB;
            HQ2_READ_FIFO = (bitwise u32) var_a6->unk-634C;
            HQ2_READ_FIFO = (bitwise u32) var_a6->unk-6348;
            HQ2_READ_FIFO = (bitwise u32) var_a6->unk-6344;
            temp_f8 = var_a6->unk-6340;
            var_a6 += 0x10;
            var_a4 += 1;
            var_a5 += 4;
            HQ2_READ_FIFO = (bitwise u32) temp_f8;
        }
        temp_a3 = var_a3 + 1;
        temp_t9 = arg0->unk70C & (1 << temp_a3);
        var_a3 = temp_a3 + 1;
        temp_a2 = var_a2 + 0x10;
        if (temp_t9 != 0) {
            var_a6->unk-634C = (f32) *(arg0->unk6D4 + temp_a2);
            var_a1 = (s32) (arg0->unk6D4 + temp_a2);
            var_a6->unk-6348 = (f32) var_a1->unk4;
            var_a6->unk-6344 = (f32) (arg0->unk6D4 + temp_a2)->unk8;
            var_a6->unk-6340 = (f32) (arg0->unk6D4 + temp_a2)->unkC;
            arg0->unkA218 = var_a5;
            HQ2_READ_FIFO = 0x31008000 | ((arg0->unkA218 & 0x3FF) | (((u32) arg0->unkA218 >> 0xA) << 0x17));
            HQ2_READ_FIFO = 0x908091BB;
            var_f19 = var_a6->unk-634C;
            HQ2_READ_FIFO = (bitwise u32) var_f19;
            var_f18 = var_a6->unk-6348;
            HQ2_READ_FIFO = (bitwise u32) var_f18;
            var_f17 = var_a6->unk-6344;
            HQ2_READ_FIFO = (bitwise u32) var_f17;
            var_f16 = var_a6->unk-6340;
            var_a6 += 0x10;
            var_a4 += 1;
            var_a5 += 4;
            HQ2_READ_FIFO = (bitwise u32) var_f16;
        }
        var_a2 = temp_a2 + 0x10;
    } while (var_a3 != 0xD);
    if (var_a4 != 0) {
        arg0->unkA218 = (u32) arg0->unkA218;
        HQ2_READ_FIFO = 0x31008000 | ((arg0->unkA218 & 0x3FF) | (((u32) arg0->unkA218 >> 0xA) << 0x17));
    }
    temp_a0 = arg0->unk16988;
    if (__glOdysseyGetNumSWClipPlanes(arg0, (u32 *) var_a1, var_a2, var_a3, var_a4, var_a5, var_a6, 0x10000, (bitwise u32) var_f12, (bitwise u32) var_f13, (bitwise u32) var_f14, (bitwise u32) var_f15, (bitwise u32) var_f16, (bitwise u32) var_f17, (bitwise u32) var_f18, (bitwise u32) var_f19) != 0) {
        arg0->unk16988 = (s32) (temp_a0 | 4);
    } else {
        arg0->unk16988 = (s32) (-5 & temp_a0);
    }
    temp_v0 = __glOdysseyGetNumHWClipPlanes(arg0);
    arg0->unk7C00 = (s32) ((temp_v0 > 2U) | (((((temp_v0 > 1U) * 2) & 2) | (((((temp_v0 != 0) * 4) & 4) | (-5 & arg0->unk7C00)) & ~2)) & ~1));
    arg0->unk16960 = (s32) (arg0->unk16960 | 4);
    *(s32 *)0x1018 = 2;
}

void __glOdysseyValidateHardware(s32 *arg0) {
    s32 *var_a3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_t1;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a4_5;
    s32 var_a4_6;
    s32 var_a4_7;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a6;
    s32 var_at;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t0_3;
    s32 var_t0_4;
    s32 var_t0_5;
    s32 var_t2;
    s32 var_t3;
    s32 var_t8;
    s32 var_t8_2;
    s32 var_t9_2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v1;
    s64 var_a5_4;
    s64 var_t2_2;
    s64 var_t9;
    s64 var_t9_3;
    s64 var_v1_2;
    s64 var_v1_3;
    u32 temp_t8;
    u32 temp_t8_2;
    u32 temp_t8_3;
    u32 temp_t8_4;
    u32 temp_t9;
    void *var_a5_5;
    void *var_a6_2;
    void *var_a6_3;
    void *var_a6_4;
    void *var_a6_5;
    void *var_a6_6;

    var_at = arg0->unk9830;
    temp_t1 = arg0->unk16960;
    if (var_at != 0) {
        arg0->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    var_t8 = temp_t1 & 4;
    if (temp_t1 & 2) {
        if (arg0->unk9830 != 0) {
            arg0->unk9830 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        HQ2_READ_FIFO = 0x10404;
        HQ2_READ_FIFO = arg0->unk7BFC;
        var_t8 = temp_t1 & 4;
    }
    if (var_t8 != 0) {
        var_at = 0x10000;
        if (arg0->unk9830 != 0) {
            arg0->unk9830 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            var_at = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        HQ2_READ_FIFO = 0x10405;
        HQ2_READ_FIFO = arg0->unk7C00;
    }
    var_a4 = temp_t1 & 0x206309;
    if (var_a4 != 0) {
        // Error: negative shift count
        // At instruction: bgez $a5, .L0d968338
        if (M2C_ERROR()) {
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10019;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0x96;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            arg0->unk9830 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            if (!(arg0->unk96A4 & 0x08000000)) {
                HQ2_READ_FIFO = 0x90008116;
            } else {
                HQ2_READ_FIFO = 0x10841;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0x1204B;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0xFFFFFF;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0x10840;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
            }
            HQ2_READ_FIFO = 0x11017;
            HQ2_READ_FIFO = arg0->unk969C;
            HQ2_READ_FIFO = arg0->unk96A0;
            HQ2_READ_FIFO = arg0->unk96A4;
            HQ2_READ_FIFO = arg0->unk96A8;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0x96;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            arg0->unk9830 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            var_a4 = temp_t1 & 0x200;
        }
        var_a4_2 = temp_t1 & 1;
        if (var_a4 != 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x11C16;
            HQ2_READ_FIFO = arg0->unk7CC4;
            HQ2_READ_FIFO = arg0->unk7CC8;
            HQ2_READ_FIFO = arg0->unk7CCC;
            HQ2_READ_FIFO = arg0->unk7CD0;
            HQ2_READ_FIFO = arg0->unk7CD4;
            HQ2_READ_FIFO = arg0->unk7CD8;
            HQ2_READ_FIFO = arg0->unk7CDC;
            var_a4_2 = temp_t1 & 1;
        }
        var_v0 = temp_t1 & 8;
        if (var_a4_2 != 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x10C21;
            HQ2_READ_FIFO = arg0->unk7C34;
            HQ2_READ_FIFO = arg0->unk7C38;
            HQ2_READ_FIFO = arg0->unk7C3C;
            var_v0 = temp_t1 & 8;
        }
        var_at = temp_t1 & 0x100;
        if (var_v0 != 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x1181A;
            HQ2_READ_FIFO = arg0->unk7C08;
            HQ2_READ_FIFO = arg0->unk7C0C;
            HQ2_READ_FIFO = arg0->unk7C10;
            HQ2_READ_FIFO = arg0->unk7C14;
            HQ2_READ_FIFO = arg0->unk7C18;
            HQ2_READ_FIFO = arg0->unk7C1C;
            var_at = temp_t1 & 0x100;
        }
        var_t8_2 = temp_t1 & 0x2000;
        if (var_at != 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x1141B;
            HQ2_READ_FIFO = arg0->unk7CB0;
            HQ2_READ_FIFO = arg0->unk7CB4;
            HQ2_READ_FIFO = arg0->unk7CB8;
            HQ2_READ_FIFO = arg0->unk7CBC;
            HQ2_READ_FIFO = arg0->unk7CC0;
            var_t8_2 = temp_t1 & 0x2000;
        }
        var_t3 = temp_t1 & 0x4000;
        if (var_t8_2 != 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                var_at = 0x10046;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x11847;
            HQ2_READ_FIFO = arg0->unk970C;
            HQ2_READ_FIFO = arg0->unk9710;
            HQ2_READ_FIFO = arg0->unk9714;
            HQ2_READ_FIFO = arg0->unk9718;
            HQ2_READ_FIFO = arg0->unk971C;
            HQ2_READ_FIFO = arg0->unk9720;
            var_t3 = temp_t1 & 0x4000;
        }
        if (var_t3 != 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                var_at = 0xFA;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x11013;
            HQ2_READ_FIFO = arg0->unk9724;
            HQ2_READ_FIFO = arg0->unk9728;
            HQ2_READ_FIFO = arg0->unk972C;
            HQ2_READ_FIFO = arg0->unk9730;
        }
    }
    if (temp_t1 & 0x1F8000) {
        // Error: negative shift count
        // At instruction: bgez $t0, .L0d968684
        if (M2C_ERROR()) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            var_a4_3 = 0;
            var_t0 = 0;
            var_a6 = 0 * 4;
            var_a5 = 0;
            do {
                HQ2_READ_FIFO = var_t0 | 0x13E20;
                var_a6_2 = arg0 + var_a6;
loop_45:
                temp_t9 = var_a6_2->unk7FE4;
                var_a6_2 += 8;
                var_a5 += 2;
                HQ2_READ_FIFO = temp_t9;
                var_a4_3 += 2;
                HQ2_READ_FIFO = var_a6_2->unk7FE0;
                if (var_a5 != 0x10) {
                    goto loop_45;
                }
                var_t0 += 1;
                var_a5 = 0;
                var_a6 = var_a4_3 * 4;
            } while (var_t0 != 0x10);
            var_at = (s32) ((s64) temp_t1 << 0x2C);
        }
        var_t9 = (s64) temp_t1 << 0x2B;
        if (var_at < 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            var_a4_4 = 0;
            var_t0_2 = 0;
            var_a5_2 = 0;
            var_a6_3 = arg0 + (0 * 4);
            do {
                HQ2_READ_FIFO = var_t0_2 | 0x13E30;
                var_a6_4 = var_a6_3 + 0x10000;
                var_t0_2 += 1;
loop_53:
                temp_t8 = var_a6_4->unk-7C1C;
                var_a6_4 += 8;
                var_a5_2 += 2;
                HQ2_READ_FIFO = temp_t8;
                var_a4_4 += 2;
                HQ2_READ_FIFO = var_a6_4->unk-7C20;
                if (var_a5_2 != 0x10) {
                    goto loop_53;
                }
                var_a5_2 = 0;
                var_a6_3 = arg0 + (var_a4_4 * 4);
            } while (var_t0_2 != 0x10);
            var_t9 = (s64) temp_t1 << 0x2B;
        }
        var_t9_2 = temp_t1 & 0x8000;
        if (var_t9 < 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            var_a4_5 = 0;
            var_t0_3 = 0;
            var_a5_3 = 0;
            var_a6_5 = arg0 + (0 * 4);
            do {
                HQ2_READ_FIFO = var_t0_3 | 0x13E40;
                var_a6_6 = var_a6_5 + 0x10000;
                var_t0_3 += 1;
loop_61:
                temp_t8_2 = var_a6_6->unk-781C;
                var_a6_6 += 8;
                var_a5_3 += 2;
                HQ2_READ_FIFO = temp_t8_2;
                var_a4_5 += 2;
                HQ2_READ_FIFO = var_a6_6->unk-7820;
                if (var_a5_3 != 0x10) {
                    goto loop_61;
                }
                var_a5_3 = 0;
                var_a6_5 = arg0 + (var_a4_5 * 4);
            } while (var_t0_3 != 0x10);
            var_t9_2 = temp_t1 & 0x8000;
        }
        var_t0_4 = 0x10000 & temp_t1;
        if (var_t9_2 != 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x10C3E;
            HQ2_READ_FIFO = arg0->unk8D6C;
            HQ2_READ_FIFO = arg0->unk8D70;
            HQ2_READ_FIFO = arg0->unk8D74;
            var_t0_4 = 0x10000 & temp_t1;
        }
        var_t9_3 = (s64) temp_t1 << 0x2E;
        if (var_t0_4 != 0) {
            temp_a3 = arg0->unk8CE8;
            switch (temp_a3) {                      /* switch 1; irregular */
            case 1:                                 /* switch 1 */
                if (arg0->unk9830 != 0) {
                    arg0->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x12030;
                HQ2_READ_FIFO = arg0->unk8CEC;
                HQ2_READ_FIFO = arg0->unk8CF0;
                HQ2_READ_FIFO = arg0->unk8CF4;
                HQ2_READ_FIFO = arg0->unk8CF8;
                HQ2_READ_FIFO = arg0->unk8CFC;
                HQ2_READ_FIFO = arg0->unk8D00;
                HQ2_READ_FIFO = arg0->unk8D04;
                HQ2_READ_FIFO = arg0->unk8D08;
                if (arg0->unk9830 != 0) {
                    arg0->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x12031;
                HQ2_READ_FIFO = arg0->unk8D0C;
                HQ2_READ_FIFO = arg0->unk8D10;
                HQ2_READ_FIFO = arg0->unk8D14;
                HQ2_READ_FIFO = arg0->unk8D18;
                HQ2_READ_FIFO = arg0->unk8D1C;
                HQ2_READ_FIFO = arg0->unk8D20;
                HQ2_READ_FIFO = arg0->unk8D24;
                HQ2_READ_FIFO = arg0->unk8D28;
                if (arg0->unk9830 != 0) {
                    arg0->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x12032;
                HQ2_READ_FIFO = arg0->unk8D2C;
                HQ2_READ_FIFO = arg0->unk8D30;
                HQ2_READ_FIFO = arg0->unk8D34;
                HQ2_READ_FIFO = arg0->unk8D38;
                HQ2_READ_FIFO = arg0->unk8D3C;
                HQ2_READ_FIFO = arg0->unk8D40;
                HQ2_READ_FIFO = arg0->unk8D44;
                HQ2_READ_FIFO = arg0->unk8D48;
                if (arg0->unk9830 != 0) {
                    arg0->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x12033;
                HQ2_READ_FIFO = arg0->unk8D4C;
                HQ2_READ_FIFO = arg0->unk8D50;
                HQ2_READ_FIFO = arg0->unk8D54;
                HQ2_READ_FIFO = arg0->unk8D58;
                HQ2_READ_FIFO = arg0->unk8D5C;
                HQ2_READ_FIFO = arg0->unk8D60;
                HQ2_READ_FIFO = arg0->unk8D64;
                HQ2_READ_FIFO = arg0->unk8D68;
                break;
            case 2:                                 /* switch 1 */
                if (arg0->unk9830 != 0) {
                    arg0->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x1203B;
                HQ2_READ_FIFO = arg0->unk8CEC;
                HQ2_READ_FIFO = arg0->unk8CF0;
                HQ2_READ_FIFO = arg0->unk8CF4;
                HQ2_READ_FIFO = arg0->unk8CF8;
                HQ2_READ_FIFO = arg0->unk8CFC;
                HQ2_READ_FIFO = arg0->unk8D00;
                HQ2_READ_FIFO = arg0->unk8D04;
                HQ2_READ_FIFO = arg0->unk8D08;
                break;
            case 3:                                 /* switch 1 */
                if (arg0->unk9830 != 0) {
                    arg0->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x1083D;
                HQ2_READ_FIFO = arg0->unk8CEC;
                HQ2_READ_FIFO = arg0->unk8CF0;
                break;
            }
            var_t9_3 = (s64) temp_t1 << 0x2E;
        }
        var_a1 = temp_t1 & 0x1CE0;
        if (var_t9_3 < 0) {
            temp_a3_2 = arg0->unk8BE4;
            switch (temp_a3_2) {                    /* switch 2; irregular */
            case 1:                                 /* switch 2 */
                if (arg0->unk9830 != 0) {
                    arg0->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x13C28;
                HQ2_READ_FIFO = arg0->unk8BE8;
                HQ2_READ_FIFO = arg0->unk8BEC;
                HQ2_READ_FIFO = arg0->unk8BF0;
                HQ2_READ_FIFO = arg0->unk8BF4;
                HQ2_READ_FIFO = arg0->unk8BF8;
                HQ2_READ_FIFO = arg0->unk8BFC;
                HQ2_READ_FIFO = arg0->unk8C00;
                HQ2_READ_FIFO = arg0->unk8C04;
                HQ2_READ_FIFO = arg0->unk8C08;
                HQ2_READ_FIFO = arg0->unk8C0C;
                HQ2_READ_FIFO = arg0->unk8C10;
                HQ2_READ_FIFO = arg0->unk8C14;
                HQ2_READ_FIFO = arg0->unk8C18;
                HQ2_READ_FIFO = arg0->unk8C1C;
                HQ2_READ_FIFO = arg0->unk8C20;
                HQ2_READ_FIFO = arg0->unk8C24;
                if (arg0->unk9830 != 0) {
                    arg0->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x13C29;
                HQ2_READ_FIFO = arg0->unk8C28;
                HQ2_READ_FIFO = arg0->unk8C2C;
                HQ2_READ_FIFO = arg0->unk8C30;
                HQ2_READ_FIFO = arg0->unk8C34;
                HQ2_READ_FIFO = arg0->unk8C38;
                HQ2_READ_FIFO = arg0->unk8C3C;
                HQ2_READ_FIFO = arg0->unk8C40;
                HQ2_READ_FIFO = arg0->unk8C44;
                HQ2_READ_FIFO = arg0->unk8C48;
                HQ2_READ_FIFO = arg0->unk8C4C;
                HQ2_READ_FIFO = arg0->unk8C50;
                HQ2_READ_FIFO = arg0->unk8C54;
                HQ2_READ_FIFO = arg0->unk8C58;
                HQ2_READ_FIFO = arg0->unk8C5C;
                HQ2_READ_FIFO = arg0->unk8C60;
                HQ2_READ_FIFO = arg0->unk8C64;
                if (arg0->unk9830 != 0) {
                    arg0->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x13C2A;
                HQ2_READ_FIFO = arg0->unk8C68;
                HQ2_READ_FIFO = arg0->unk8C6C;
                HQ2_READ_FIFO = arg0->unk8C70;
                HQ2_READ_FIFO = arg0->unk8C74;
                HQ2_READ_FIFO = arg0->unk8C78;
                HQ2_READ_FIFO = arg0->unk8C7C;
                HQ2_READ_FIFO = arg0->unk8C80;
                HQ2_READ_FIFO = arg0->unk8C84;
                HQ2_READ_FIFO = arg0->unk8C88;
                HQ2_READ_FIFO = arg0->unk8C8C;
                HQ2_READ_FIFO = arg0->unk8C90;
                HQ2_READ_FIFO = arg0->unk8C94;
                HQ2_READ_FIFO = arg0->unk8C98;
                HQ2_READ_FIFO = arg0->unk8C9C;
                HQ2_READ_FIFO = arg0->unk8CA0;
                HQ2_READ_FIFO = arg0->unk8CA4;
                if (arg0->unk9830 != 0) {
                    arg0->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x13C2B;
                HQ2_READ_FIFO = arg0->unk8CA8;
                HQ2_READ_FIFO = arg0->unk8CAC;
                HQ2_READ_FIFO = arg0->unk8CB0;
                HQ2_READ_FIFO = arg0->unk8CB4;
                HQ2_READ_FIFO = arg0->unk8CB8;
                HQ2_READ_FIFO = arg0->unk8CBC;
                HQ2_READ_FIFO = arg0->unk8CC0;
                HQ2_READ_FIFO = arg0->unk8CC4;
                HQ2_READ_FIFO = arg0->unk8CC8;
                HQ2_READ_FIFO = arg0->unk8CCC;
                HQ2_READ_FIFO = arg0->unk8CD0;
                HQ2_READ_FIFO = arg0->unk8CD4;
                HQ2_READ_FIFO = arg0->unk8CD8;
                HQ2_READ_FIFO = arg0->unk8CDC;
                HQ2_READ_FIFO = arg0->unk8CE0;
                HQ2_READ_FIFO = arg0->unk8CE4;
                break;
            case 2:                                 /* switch 2 */
                if (arg0->unk9830 != 0) {
                    arg0->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x13C38;
                HQ2_READ_FIFO = arg0->unk8BE8;
                HQ2_READ_FIFO = arg0->unk8BEC;
                HQ2_READ_FIFO = arg0->unk8BF0;
                HQ2_READ_FIFO = arg0->unk8BF4;
                HQ2_READ_FIFO = arg0->unk8BF8;
                HQ2_READ_FIFO = arg0->unk8BFC;
                HQ2_READ_FIFO = arg0->unk8C00;
                HQ2_READ_FIFO = arg0->unk8C04;
                HQ2_READ_FIFO = arg0->unk8C08;
                HQ2_READ_FIFO = arg0->unk8C0C;
                HQ2_READ_FIFO = arg0->unk8C10;
                HQ2_READ_FIFO = arg0->unk8C14;
                HQ2_READ_FIFO = arg0->unk8C18;
                HQ2_READ_FIFO = arg0->unk8C1C;
                HQ2_READ_FIFO = arg0->unk8C20;
                HQ2_READ_FIFO = arg0->unk8C24;
                break;
            case 3:                                 /* switch 2 */
                if (arg0->unk9830 != 0) {
                    arg0->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x1103A;
                HQ2_READ_FIFO = arg0->unk8BE8;
                HQ2_READ_FIFO = arg0->unk8BEC;
                HQ2_READ_FIFO = arg0->unk8BF0;
                HQ2_READ_FIFO = arg0->unk8BF4;
                break;
            }
            goto block_77;
        }
    } else {
block_77:
        var_a1 = temp_t1 & 0x1CE0;
    }
    if (var_a1 != 0) {
        var_v1 = temp_t1 & 0x800;
        if (temp_t1 & 0x400) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            var_a4_6 = 0;
            var_a3 = arg0;
            do {
                HQ2_READ_FIFO = var_a4_6 | 0x10E80;
                HQ2_READ_FIFO = var_a3->unk7CE0;
                HQ2_READ_FIFO = var_a3->unk7CE4;
                HQ2_READ_FIFO = var_a3->unk7CE8;
                HQ2_READ_FIFO = (var_a4_6 + 1) | 0x10E80;
                HQ2_READ_FIFO = var_a3->unk7CEC;
                HQ2_READ_FIFO = var_a3->unk7CF0;
                HQ2_READ_FIFO = var_a3->unk7CF4;
                HQ2_READ_FIFO = (var_a4_6 + 2) | 0x10E80;
                HQ2_READ_FIFO = var_a3->unk7CF8;
                HQ2_READ_FIFO = var_a3->unk7CFC;
                HQ2_READ_FIFO = var_a3->unk7D00;
                HQ2_READ_FIFO = (var_a4_6 + 3) | 0x10E80;
                HQ2_READ_FIFO = var_a3->unk7D04;
                var_a4_6 += 4;
                HQ2_READ_FIFO = var_a3->unk7D08;
                temp_t8_3 = var_a3->unk7D0C;
                var_a3 += 0x30;
                HQ2_READ_FIFO = temp_t8_3;
            } while (var_a4_6 != 0x40);
            arg0->unk9830 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            var_v1 = temp_t1 & 0x800;
        }
        var_t2 = temp_t1 & 0x1000;
        if (var_v1 != 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x10406;
            HQ2_READ_FIFO = arg0->unk7FE0;
            var_t2 = temp_t1 & 0x1000;
        }
        var_v0_2 = temp_t1 & 0x20;
        if (var_t2 != 0) {
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10018;
            arg0->unk9830 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            var_v0_2 = temp_t1 & 0x20;
        }
        var_t0_5 = temp_t1 & 0x40;
        if (var_v0_2 != 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x1041F;
            HQ2_READ_FIFO = arg0->unk7C2C;
            var_t0_5 = temp_t1 & 0x40;
        }
        var_a1_2 = temp_t1 & 0x80;
        if (var_t0_5 != 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x1084A;
            HQ2_READ_FIFO = arg0->unk7C54;
            HQ2_READ_FIFO = arg0->unk7C58;
            var_a1_2 = temp_t1 & 0x80;
        }
        if (var_a1_2 != 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x10452;
            HQ2_READ_FIFO = arg0->unk7C5C;
        }
    }
    if (temp_t1 & 0x03C00010) {
        var_a5_4 = (s64) temp_t1 << 0x28;
        if (temp_t1 & 0x10) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x1081D;
            HQ2_READ_FIFO = arg0->unk7C20;
            HQ2_READ_FIFO = arg0->unk7C24;
            var_a5_4 = (s64) temp_t1 << 0x28;
        }
        var_v1_2 = (s64) temp_t1 << 0x29;
        if (var_a5_4 < 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x10C1C;
            HQ2_READ_FIFO = arg0->unk957C;
            HQ2_READ_FIFO = arg0->unk9580;
            HQ2_READ_FIFO = arg0->unk9584;
            var_v1_2 = (s64) temp_t1 << 0x29;
        }
        var_v1_3 = (s64) temp_t1 << 0x27;
        if (var_v1_2 < 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            var_a5_5 = arg0 + 0x10000;
            var_a4_7 = 0;
            do {
                HQ2_READ_FIFO = var_a4_7 | 0x13E00;
                HQ2_READ_FIFO = var_a5_5->unk-7284;
                HQ2_READ_FIFO = var_a5_5->unk-7280;
                HQ2_READ_FIFO = var_a5_5->unk-727C;
                HQ2_READ_FIFO = var_a5_5->unk-7278;
                HQ2_READ_FIFO = var_a5_5->unk-7274;
                HQ2_READ_FIFO = var_a5_5->unk-7270;
                HQ2_READ_FIFO = var_a5_5->unk-726C;
                HQ2_READ_FIFO = var_a5_5->unk-7268;
                HQ2_READ_FIFO = var_a5_5->unk-7264;
                HQ2_READ_FIFO = var_a5_5->unk-7260;
                HQ2_READ_FIFO = var_a5_5->unk-725C;
                HQ2_READ_FIFO = var_a5_5->unk-7258;
                HQ2_READ_FIFO = var_a5_5->unk-7254;
                HQ2_READ_FIFO = var_a5_5->unk-7250;
                HQ2_READ_FIFO = var_a5_5->unk-724C;
                HQ2_READ_FIFO = var_a5_5->unk-7248;
                HQ2_READ_FIFO = var_a4_7 | 0x13E10;
                HQ2_READ_FIFO = var_a5_5->unk-6E84;
                HQ2_READ_FIFO = var_a5_5->unk-6E80;
                HQ2_READ_FIFO = var_a5_5->unk-6E7C;
                HQ2_READ_FIFO = var_a5_5->unk-6E78;
                HQ2_READ_FIFO = var_a5_5->unk-6E74;
                HQ2_READ_FIFO = var_a5_5->unk-6E70;
                HQ2_READ_FIFO = var_a5_5->unk-6E6C;
                HQ2_READ_FIFO = var_a5_5->unk-6E68;
                HQ2_READ_FIFO = var_a5_5->unk-6E64;
                HQ2_READ_FIFO = var_a5_5->unk-6E60;
                HQ2_READ_FIFO = var_a5_5->unk-6E5C;
                HQ2_READ_FIFO = var_a5_5->unk-6E58;
                HQ2_READ_FIFO = var_a5_5->unk-6E54;
                HQ2_READ_FIFO = var_a5_5->unk-6E50;
                var_a4_7 += 1;
                HQ2_READ_FIFO = var_a5_5->unk-6E4C;
                temp_t8_4 = var_a5_5->unk-6E48;
                var_a5_5 += 0x40;
                HQ2_READ_FIFO = temp_t8_4;
            } while (var_a4_7 != 0x10);
            arg0->unk9830 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            var_v1_3 = (s64) temp_t1 << 0x27;
        }
        var_t2_2 = (s64) temp_t1 << 0x26;
        if (var_v1_3 < 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x10451;
            HQ2_READ_FIFO = arg0->unk9698;
            var_t2_2 = (s64) temp_t1 << 0x26;
        }
        if (var_t2_2 < 0) {
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x10415;
            HQ2_READ_FIFO = arg0->unk7C04;
            arg0->unk16960 = 0;
            return;
        }
        /* Duplicate return node #127. Try simplifying control flow for better match */
        arg0->unk16960 = 0;
        return;
    }
    arg0->unk16960 = 0;
}

void __glOdysseyValidateContextRasterMisc(s32 *arg0) {
    s32 temp_a6;
    s32 temp_a6_2;
    s32 var_a3;
    s32 var_a6;
    s32 var_t1;

    if (!(arg0->unk700 & 2) || (var_a3 = 1, ((arg0->unk704 & 0x800) != 0))) {
        var_a3 = 0;
    }
    arg0->unk7BFC = (s32) (((var_a3 << 0x11) & 0x20000) | (arg0->unk7BFC & ~0x20000));
    arg0->unk16960 = (s32) (arg0->unk16960 | 2);
    *(s32 *)0x1018 = 2;
    var_a6 = 0;
    if (arg0->unk700 & 0x8017) {
        goto block_4;
    }
    if (!(arg0->unk704 & 0x800)) {
        var_a6 = 1;
        if ((((u32) arg0->unk96A4 >> 0x1D) & 1) != 1) {
            goto block_12;
        }
    } else {
block_4:
        if (arg0->unk96A4 & 0x20000000) {
block_12:
            arg0->unk16960 = (s32) (arg0->unk16960 | 0x200000);
            arg0->unk96A4 = (u32) (((var_a6 << 0x1D) & 0x20000000) | (arg0->unk96A4 & ~0x20000000));
            *(void *)0x1018 = 2;
        }
    }
    temp_a6 = 0xFF000000 & arg0->unk7C58;
    if (arg0->unk700 & 0x400) {
        var_t1 = temp_a6 | (0xFFFFFF & ((s64) ((f64) arg0->unk1CC * 128.0) << 0));
    } else {
        var_t1 = temp_a6 | (0xFFFFFF & ((s64) ((f64) arg0->unk1D0 * 128.0) << 0));
    }
    arg0->unk7C58 = var_t1;
    temp_a6_2 = 0xFF000000 & arg0->unk7C54;
    if (arg0->unk700 & 0x200) {
        arg0->unk7C54 = (s32) (temp_a6_2 | (0xFFFFFF & ((s64) ((f64) arg0->unk1D8 * 128.0) << 0)));
        arg0->unk16960 = (s32) (arg0->unk16960 | 0x40);
        *(void *)0x1018 = 2;
        return;
    }
    arg0->unk7C54 = (s32) (temp_a6_2 | (0xFFFFFF & ((s64) ((f64) arg0->unk1DC * 128.0) << 0)));
    arg0->unk16960 = (s32) (arg0->unk16960 | 0x40);
    *(void *)0x1018 = 2;
}

void __glOdysseyValidateScissor(void *arg0, s32 arg6, s32 arg7) {
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a3;
    s32 temp_a4_2;
    s32 var_a6;
    s32 var_a7;
    u32 temp_a4;
    u32 temp_a5;

    var_a6 = arg6;
    var_a7 = arg7;
    temp_a4 = arg0->unk165B4;
    if ((arg0->unk7C20 != temp_a4) || (arg0->unk165B8 != arg0->unk7C24)) {
        arg0->unk7C20 = temp_a4;
        temp_a5 = arg0->unk165B8;
        arg0->unk7C24 = temp_a5;
        if (arg0->unk9830 != 0) {
            var_a7 = 0xFA;
            arg0->unk9830 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            var_a6 = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        // Error: negative shift count
        // At instruction: bgez $t1, .L0d969780
        if (M2C_ERROR()) {
            spC = 0;
            sp8 = 0;
            sp4 = 0;
            sp0 = 0;
            temp_a4_2 = ((u32) arg0->unk7C20 >> 0xC) & 0xFFF;
            sp0 = temp_a4_2;
            temp_a3 = arg0->unk7C20 & 0xFFF;
            sp8 = temp_a3;
            sp4 = ((u32) arg0->unk7C24 >> 0xC) & 0xFFF;
            spC = arg0->unk7C24 & 0xFFF;
            __glOdysseyIoctl(0x6F64000D, sp, temp_a3, temp_a4_2, temp_a5, var_a6, var_a7);
        }
    }
}

void __glOdysseyValidateContext(s32 *arg0, s32 arg1, s32 arg5) {
    s32 temp_a2;
    s32 temp_s1;
    s32 var_a0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a5;
    s32 var_at;
    s32 var_ra;
    s32 var_s1;
    s32 var_s3;
    s32 var_s4;
    s32 var_t8;
    s32 var_v0;
    u8 temp_s3;
    u8 var_a3;

    var_a1 = arg1;
    var_a5 = arg5;
    temp_a2 = arg0->unk16964;
    var_a3 = arg0->unk16974;
    var_s3 = (var_a3 == 0) ? (temp_a2 & 0x2000) : 0;
    if (arg0->unk19DE3 != 1) {
        goto block_1;
    }
    if (var_a3 == 0) {
        if (arg0->unk16975 == 0) {
            var_a1 = 1 ^ arg0->unk16976;
            var_a5 = temp_a2 & 0x59FF;
            temp_s3 = var_s3 | var_a5;
            var_a3 = temp_s3 & ~0x100;
            var_s3 = (s32) ((var_a1 == 0) ? var_a3 : temp_s3);
        }
    }
    var_s4 = ~var_s3;
    if (arg0->unk16977 == 1) {
        var_s3 = (arg0->unk16975 == 0) ? (var_s3 & ~0x4000) : var_s3;
block_1:
        var_s4 = ~var_s3;
    }
    var_s1 = var_s4 & temp_a2;
    if (var_s1 != 0) {
        var_t8 = var_s1 & 0x100;
        if (var_s1 & 0x4000) {
            __glOdysseyValidateDepthRange(arg0, var_a1, temp_a2, var_a3, 1, var_a5);
            var_s1 = var_s4 & arg0->unk16964;
            var_t8 = var_s1 & 0x100;
        }
        if (var_t8 != 0) {
            __glOdysseyValidateProgram(arg0);
        }
        var_ra = var_s1 & 0x800;
        if (var_s1 & 0x200) {
            __glOdysseyValidateTextureState(arg0);
            var_ra = var_s1 & 0x800;
        }
        var_at = var_s1 & 1;
        if (var_ra != 0) {
            __glOdysseyValidateContextRasterMisc(arg0);
            var_at = var_s1 & 1;
        }
        var_v0 = var_s1 & 2;
        if (var_at != 0) {
            __glOdysseyValidateMatrixComb(arg0);
            var_v0 = var_s1 & 2;
        }
        if (var_v0 != 0) {
            __glOdysseyValidateMatrixMV(arg0);
        }
        var_a0 = var_s1 & 8;
        if (var_s1 & 4) {
            __glOdysseyValidateMatrixNorm(arg0);
            var_a0 = var_s1 & 8;
        }
        var_a1_2 = var_s1 & 0x10;
        if (var_a0 != 0) {
            __glOdysseyValidateMatrixTex(arg0, var_a1_2);
            var_a1_2 = var_s1 & 0x10;
        }
        if (var_a1_2 != 0) {
            __glOdysseyValidateClipPlanes(arg0, (bitwise f32) var_a1_2);
            var_a2 = var_s1 & 0x20;
            if (__glOdysseyGetNumSWClipPlanes(arg0) > 0) {
                __glOdysseyValidateSoftClipPlanes(arg0);
                goto block_22;
            }
        } else {
block_22:
            var_a2 = var_s1 & 0x20;
        }
        var_a3_2 = var_s1 & 0x40;
        if (var_a2 != 0) {
            __glOdysseyValidateTexGen(arg0);
            var_a3_2 = var_s1 & 0x40;
        }
        var_a4 = var_s1 & 0x80;
        if (var_a3_2 != 0) {
            __glOdysseyValidateLighting(arg0);
            __glOdysseyComputeLightState(arg0);
            var_a4 = var_s1 & 0x80;
        }
        if (var_a4 != 0) {
            __glOdysseyValidateFragment(arg0);
        }
        if (var_s1 & 0x1000) {
            __glOdysseyValidateFog(arg0);
        }
        temp_s1 = arg0->unk16964 & var_s4;
        if (temp_s1 & 0x400) {
            __glOdysseyValidateDispatchTable(arg0);
        }
        if (temp_s1 != 0) {
            __glOdysseySetProgram(arg0, arg0->unkA6A8);
        }
        if (arg0->unk16964 & var_s4 & 0x2000) {
            __glOdysseyValidateContextRasterMisc(arg0);
        }
        arg0->unk16964 = var_s3;
        if (arg0->unk16960 != 0) {
            __glOdysseyValidateHardware(arg0);
        }
        return;
    }
    arg0->unk16964 = var_s3;
}

s32 __glOdysseyInitDefaultValues(void *arg0) {
    s32 *temp_a0;
    s32 *temp_a2_2;
    s32 *temp_a3;
    s32 temp_a1_3;
    s32 temp_a5_3;
    s32 temp_a7;
    s32 temp_a7_2;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_4;
    u32 temp_a2;
    u32 temp_a3_2;
    u32 temp_a4;
    u32 temp_a5;
    u32 temp_a5_2;
    u32 temp_f16;
    u32 temp_f17;
    u32 temp_f18;
    u32 temp_f19;
    u8 temp_a6;
    void *temp_s2;

    arg0->unkA20C = 0x380U;
    arg0->unk165D8 = -1.0;
    arg0->unk16740 = 1;
    HQ2_READ_FIFO = (arg0->unkA20C & 0x3FF) | (((u32) arg0->unkA20C >> 0xA) << 0x17) | 0x2E008000;
    arg0->unk9830 = NULL;
    arg0->unkA6B4 = (u16) *(arg0->unk16C98 + (arg0->unk16D3C * 2));
    if (arg0->unkC94 != 0) {
        arg0->unkA1DC = 0U;
        arg0->unkA1E0 = 2U;
        arg0->unkA1E4 = 0xAU;
        arg0->unkA1E8 = 0xEU;
    } else {
        arg0->unkA1DC = 1U;
        arg0->unkA1E0 = 3U;
        arg0->unkA1E4 = 0xBU;
        arg0->unkA1E8 = 0xFU;
    }
    HQ2_READ_FIFO = (arg0->unkA1DC & 0x3FF) | (((u32) arg0->unkA1DC >> 0xA) << 0x17) | 0x22008000;
    HQ2_READ_FIFO = (arg0->unkA1E0 & 0x3FF) | (((u32) arg0->unkA1E0 >> 0xA) << 0x17) | 0x23008000;
    HQ2_READ_FIFO = (arg0->unkA1E4 & 0x3FF) | (((u32) arg0->unkA1E4 >> 0xA) << 0x17) | 0x24008000;
    HQ2_READ_FIFO = (arg0->unkA1E8 & 0x3FF) | (((u32) arg0->unkA1E8 >> 0xA) << 0x17) | 0x25008000;
    HQ2_READ_FIFO = (arg0->unkA1F8 & 0x3FF) | (((u32) arg0->unkA1F8 >> 0xA) << 0x17) | 0x29008000;
    HQ2_READ_FIFO = (arg0->unkA1FC & 0x3FF) | (((u32) arg0->unkA1FC >> 0xA) << 0x17) | 0x2A008000;
    HQ2_READ_FIFO = (arg0->unkA204 & 0x3FF) | (((u32) arg0->unkA204 >> 0xA) << 0x17) | 0x2C008000;
    arg0->unkA228 = 0U;
    arg0->unk1697C = 0;
    HQ2_READ_FIFO = (arg0->unkA228 & 0x3FF) | (((u32) arg0->unkA228 >> 0xA) << 0x17) | 0x35008000;
    arg0->unkA224 = 0U;
    HQ2_READ_FIFO = (arg0->unkA224 & 0x3FF) | (((u32) arg0->unkA224 >> 0xA) << 0x17) | 0x34008000;
    arg0->unk9824 = 0U;
    if (arg0->unk9830 != NULL) {
        arg0->unk9830 = NULL;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x1044C;
    HQ2_READ_FIFO = arg0->unk9824;
    arg0->unk8D6C = 0;
    arg0->unk8D70 = 0;
    arg0->unk8D74 = 0;
    arg0->unk16960 = (s32) (arg0->unk16960 | 0x8000);
    *(s32 *)0x1018 = 2;
    arg0->unk8CEC = 0x1000;
    arg0->unk8CF0 = 0;
    arg0->unk8CE8 = 3;
    arg0->unk16960 = (s32) (0x10000 | arg0->unk16960);
    *(void *)0x1018 = 2;
    arg0->unk8BE8 = 0;
    arg0->unk8BF0 = 0;
    arg0->unk8BF8 = 0;
    arg0->unk8C00 = 0;
    arg0->unk8C08 = 0;
    arg0->unk8C10 = 0;
    arg0->unk8C18 = 0;
    arg0->unk8C20 = 0;
    arg0->unk8BE4 = 3;
    arg0->unk16960 = (s32) (0x20000 | arg0->unk16960);
    *(void *)0x1018 = 2;
    arg0->unk9724 = 0;
    arg0->unk9728 = 0;
    arg0->unk972C = 0x3100;
    arg0->unk9730 = 0xF00;
    arg0->unk16960 = (s32) (arg0->unk16960 | 0x4000);
    *(void *)0x1018 = 2;
    arg0->unk957C = 0;
    arg0->unk9580 = 0x01000AAA;
    arg0->unk9584 = 0x2AA;
    arg0->unk16960 = (s32) (arg0->unk16960 | 0x800000);
    *(void *)0x1018 = 2;
    temp_a3 = arg0->unk9830;
    arg0->unk9764 = (u32) (0xFFF000 | arg0->unk9764 | 0xFFF);
    arg0->unk975C = (u32) (-0x1000 & (0xFF000FFF & arg0->unk975C));
    arg0->unk9754 = (u32) (-0x1000 & (0xFF000FFF & arg0->unk9754));
    arg0->unk9760 = (u32) ((-0xC01 & (0xFF000FFF & arg0->unk9760)) | 0x800);
    temp_a5 = (-0xC01 & (0xFF000FFF & arg0->unk9758)) | 0x800;
    arg0->unk9758 = temp_a5;
    temp_a1 = (((-0xC01 & (0xFFF000 | arg0->unk9768)) | 0x800) & ~0x300) | 0x200;
    arg0->unk9768 = temp_a1;
    if (temp_a3 != NULL) {
        arg0->unk9830 = NULL;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x10407;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0x11A50;
    HQ2_READ_FIFO = arg0->unk9754;
    HQ2_READ_FIFO = arg0->unk9758;
    HQ2_READ_FIFO = arg0->unk975C;
    HQ2_READ_FIFO = arg0->unk9760;
    HQ2_READ_FIFO = arg0->unk9764;
    HQ2_READ_FIFO = arg0->unk9768;
    arg0->unk9720 = 0;
    arg0->unk971C = 0;
    arg0->unk9718 = 0;
    arg0->unk9714 = 0;
    arg0->unk9710 = 0;
    arg0->unk970C = 0;
    temp_a7 = arg0->unk16960 | 0x2000;
    arg0->unk16960 = temp_a7;
    *(void *)0x1018 = 2;
    arg0->unk16438 = 1.0f;
    arg0->unk16434 = 0.0f;
    arg0->unk16430 = 1;
    arg0->unk16478 = 0.0f;
    arg0->unk16474 = 0.0f;
    arg0->unk16470 = 0.0f;
    arg0->unk1646C = 0.0f;
    arg0->unk16464 = 0.0f;
    arg0->unk16468 = 1.0f;
    arg0->unk16460 = 1.0f;
    arg0->unk1645C = 1.0f;
    arg0->unk16458 = 1.0f;
    arg0->unk16454 = 1.0f;
    temp_a6 = arg0->unkC96;
    arg0->unk760 = 0;
    if (temp_a6 != 0) {
        __glOdyim_DrawBuffer(0x405, temp_a1, 1, temp_a3, -0x301, temp_a5, temp_a6, temp_a7);
    } else {
        __glOdyim_DrawBuffer(0x404, temp_a1, 1, temp_a3, -0x301, temp_a5, temp_a6, temp_a7);
    }
    arg0->unk96BC = 0U;
    arg0->unk96B8 = 0U;
    temp_a0 = arg0->unk9830;
    arg0->unk96B4 = 0U;
    arg0->unk96B0 = 0U;
    arg0->unk96AC = 0U;
    if (temp_a0 != NULL) {
        arg0->unk9830 = NULL;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x11453;
    temp_a5_2 = arg0->unk96AC;
    HQ2_READ_FIFO = temp_a5_2;
    temp_a4 = arg0->unk96B0;
    HQ2_READ_FIFO = temp_a4;
    temp_a3_2 = arg0->unk96B4;
    HQ2_READ_FIFO = temp_a3_2;
    temp_a2 = arg0->unk96B8;
    HQ2_READ_FIFO = temp_a2;
    temp_a1_2 = arg0->unk96BC;
    HQ2_READ_FIFO = temp_a1_2;
    arg0->unk9830 = NULL;
    HQ2_READ_FIFO = 0x10443;
    HQ2_READ_FIFO = 0xFA;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    if (__glOdysseyImageInit(temp_a0, temp_a1_2, temp_a2, temp_a3_2, temp_a4, temp_a5_2, 0x11453) != 0) {
        __glOdyim_Disable(0xB10);
        __glOdyim_Disable(0xB42);
        __glOdyim_Disable(0x2A01);
        __glOdyim_Disable(0x2A02);
        __glOdyim_Disable(0x8037);
        __glOdyim_Disable(0xB44);
        __glOdyim_CullFace(0x405);
        __glOdyim_FrontFace(0x901);
        __glOdyim_ShadeModel(0x1D01);
        __glOdyim_Disable(0x8400);
        __glOdyim_LightModeli(0x81F8, 0x81F9);
        __glOdyim_Fogfv(0xB66, &sub_0db00000 - 0x6588);
        __glOdyim_Fogi(0xB61, 0);
        arg0->unk7BFC = (s32) (arg0->unk7BFC | 0x2000 | 0x02000000);
        __glOdyim_Disable(0xC11);
        __glOdyim_Disable(0xBC0);
        __glOdyim_Disable(0xB90);
        __glOdyim_Disable(0xB71);
        __glOdyim_Disable(0xBE2);
        __glOdyim_Enable(0xBD0);
        __glOdyim_Disable(0xBF1);
        __glOdyim_Disable(0xBF2);
        if (arg0->unkC94 != 0) {
            __glOdyim_ColorMask(1, 1, 1, 1);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(1, 1, 1, 1);
            __glOdyim_IndexMask(-1);
        }
        __glOdyim_DepthMask(1);
        __glOdyim_StencilMask(-1);
        __glOdyim_Disable(0xB60);
        __glOdyim_Disable(0xDE0);
        __glOdyim_Disable(0xDE1);
        __glOdyim_Disable(0x806F);
        __glOdyim_Disable(0xB50);
        __glOdyim_PolygonMode(0x408, 0x1B02);
        __glOdyim_AlphaFunc(0x207);
        __glOdyim_StencilFunc(0x207, 0, -1);
        __glOdyim_StencilOp(0x1E00, 0x1E00, 0x1E00);
        __glOdyim_DepthFunc(0x201);
        __glOdyim_LogicOp(0x1503);
        __glOdyim_BlendEquationEXT(0x8006);
        __glOdyim_BlendFunc(1, 0);
        __glOdyim_BlendColorEXT(0, 0, 0, 0);
        arg0->unk96A4 = (s32) (arg0->unk96A4 & ~0x800000);
        __glOdyim_LineStipple(1, 0xFFFF);
        __glOdyim_LineWidth(1.0f);
        __glOdyim_PointSize(1.0f);
        temp_s2 = &sub_0daf0000 - 0x7F68;
        __glim_PolygonStipple(temp_s2 + 0x80);
        __glOdyim_DepthRange(0, 1.0);
        __glOdyim_PolygonOffset(0, 0);
        if (arg0->unkC94 != 0) {
            __glOdyim_Color4fv(temp_s2 + 0x50);
            __glOdyim_ScratchIndexi(1);
        } else {
            __glOdyim_ScratchColor4fv(temp_s2 + 0x50);
            __glOdyim_Indexi(1);
        }
        __glOdyim_EdgeFlag(1);
        __glOdyim_Normal3fv(temp_s2);
        __glOdyim_TexCoord4fv(temp_s2 + 0x30);
        __glOdyim_Materialfv(0x408, 0x1200, temp_s2 + 0x60);
        __glOdyim_Materialfv(0x408, 0x1201, temp_s2 + 0x70);
        __glOdyim_Materialfv(0x408, 0x1202, temp_s2 + 0x30);
        __glOdyim_Materialfv(0x408, 0x1600, temp_s2 + 0x30);
        __glOdyim_Materialf(0x408, 0x1601);
        __glOdyim_Materialfv(0x408, 0x1603, temp_s2 + 0x20);
        __glOdyim_FragmentMaterialfvSGIX(0x408, 0x1200, temp_s2 + 0x60);
        __glOdyim_FragmentMaterialfvSGIX(0x408, 0x1201, temp_s2 + 0x70);
        __glOdyim_FragmentMaterialfvSGIX(0x408, 0x1202, temp_s2 + 0x30);
        __glOdyim_FragmentMaterialfvSGIX(0x408, 0x1600, temp_s2 + 0x30);
        __glOdyim_FragmentMaterialfSGIX(0x408, 0x1601);
        __glOdyim_LightEnviSGIX(0x8407, 0x104);
        __glOdyim_Disable(0x8401);
        __glOdyim_FragmentLightfvSGIX(0x840C, 0x1200, temp_s2 + 0x30);
        __glOdyim_FragmentLightfvSGIX(0x840C, 0x1201, temp_s2 + 0x50);
        __glOdyim_FragmentLightfvSGIX(0x840C, 0x1202, temp_s2 + 0x50);
        __glOdyim_FragmentLightfvSGIX(0x840C, 0x1203, temp_s2 + 0x40);
        __glOdyim_FragmentLightfvSGIX(0x840C, 0x1204, temp_s2 + 0x10);
        __glOdyim_FragmentLightfSGIX(0x840C, 0x1205);
        __glOdyim_FragmentLightfSGIX(0x840C, 0x1206);
        __glOdyim_FragmentLightfSGIX(0x840C, 0x1207);
        __glOdyim_FragmentLightfSGIX(0x840C, 0x1208);
        __glOdyim_FragmentLightfSGIX(0x840C, 0x1209);
        __glOdyim_FragmentLightModelfvSGIX(0x840A, temp_s2 + 0x60);
        __glOdyim_FragmentLightModeliSGIX(0x8408, 0);
        __glOdyim_FragmentLightModeliSGIX(0x8409, 0);
        __glOdyim_FragmentLightModeliSGIX(0x840B, 0x1D01);
        arg0->unk9FF0 = 0U;
        arg0->unk9FC0 = 0U;
        arg0->unk9FEC = 0x3D000000U;
        arg0->unk9FE8 = 0xC2000000U;
        arg0->unk9FE4 = 0x48000000U;
        arg0->unk9FE0 = 0xBF000000U;
        arg0->unk9FDC = 0xBF3504F3U;
        arg0->unk9FD8 = 0xBFB504F3U;
        arg0->unk9FD4 = 0xC0000000U;
        arg0->unk9FD0 = 0x3EB504F3U;
        arg0->unk9FCC = 0x3FB504F3U;
        arg0->unk9FC8 = 0x40400000U;
        arg0->unkA218 = 0x1E0U;
        arg0->unk9FC4 = 0x403504F3U;
        arg0->unk9FBC = 0xBF800000U;
        arg0->unk9FB8 = 0x3F000000U;
        arg0->unk9FB4 = 0x3F800000U;
        HQ2_READ_FIFO = 0x31008000 | ((arg0->unkA218 & 0x3FF) | (((u32) arg0->unkA218 >> 0xA) << 0x17));
        HQ2_READ_FIFO = 0x9080BDA2;
        HQ2_READ_FIFO = arg0->unk9FB4;
        HQ2_READ_FIFO = arg0->unk9FB8;
        HQ2_READ_FIFO = arg0->unk9FBC;
        HQ2_READ_FIFO = arg0->unk9FC0;
        HQ2_READ_FIFO = arg0->unk9FC4;
        HQ2_READ_FIFO = arg0->unk9FC8;
        HQ2_READ_FIFO = arg0->unk9FCC;
        HQ2_READ_FIFO = arg0->unk9FD0;
        HQ2_READ_FIFO = arg0->unk9FD4;
        HQ2_READ_FIFO = arg0->unk9FD8;
        HQ2_READ_FIFO = arg0->unk9FDC;
        HQ2_READ_FIFO = arg0->unk9FE0;
        temp_f19 = arg0->unk9FE4;
        HQ2_READ_FIFO = temp_f19;
        temp_f18 = arg0->unk9FE8;
        HQ2_READ_FIFO = temp_f18;
        temp_f17 = arg0->unk9FEC;
        HQ2_READ_FIFO = temp_f17;
        temp_f16 = arg0->unk9FF0;
        HQ2_READ_FIFO = temp_f16;
        arg0->unkA218 = 0U;
        temp_a1_3 = ((u32) arg0->unkA218 >> 0xA) << 0x17;
        HQ2_READ_FIFO = 0x31008000 | ((arg0->unkA218 & 0x3FF) | temp_a1_3);
        __glOdysseyInitLighting(arg0, temp_a1_3, 0x31008000, 2.828427f, -1.0f, 0.5f, 1.0f, temp_f16, temp_f17, temp_f18, temp_f19);
        __glOdysseyInitFragmentLighting(arg0);
        __glOdysseyInitFragmentMaterial(arg0);
        __glOdysseyTextureDriverInit(arg0);
        temp_a7_2 = arg0->unk96A4 & ~0x01000000;
        arg0->unk96A4 = temp_a7_2;
        temp_a5_3 = arg0->unk16960 | 0x200000;
        arg0->unk16960 = temp_a5_3;
        *(void *)0x1018 = 2;
        arg0->unk7C60 = 0xFFFFFFU;
        arg0->unk7C64 = 0xFFFFFFU;
        arg0->unk7C68 = 0xFFFFFFU;
        arg0->unk7C6C = 0xFFU;
        temp_a2_2 = arg0->unk9830;
        if (temp_a2_2 != NULL) {
            arg0->unk9830 = NULL;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        HQ2_READ_FIFO = 0x11023;
        HQ2_READ_FIFO = arg0->unk7C60;
        HQ2_READ_FIFO = arg0->unk7C64;
        HQ2_READ_FIFO = arg0->unk7C68;
        HQ2_READ_FIFO = arg0->unk7C6C;
        arg0->unk9828 = (u32) ((arg0->unkE78 & 0xFFF) | (-0x1000 & arg0->unk9828));
        if (arg0->unk9830 != NULL) {
            arg0->unk9830 = NULL;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        HQ2_READ_FIFO = 0x10456;
        HQ2_READ_FIFO = arg0->unk9828;
        arg0->unk982C = 0xDU;
        if (arg0->unk9830 != NULL) {
            arg0->unk9830 = NULL;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        HQ2_READ_FIFO = 0x10457;
        temp_a1_4 = arg0->unk982C;
        HQ2_READ_FIFO = temp_a1_4;
        if (getenv(&sub_0daf0000 - 0x7C78, temp_a1_4, temp_a2_2, 0xFF, 0xFFFFFF, temp_a5_3, 0x200000, temp_a7_2) != NULL) {
            arg0->unk21EF8 = 1;
        } else {
            arg0->unk21EF8 = 0;
        }
        arg0->unk16964 = -1;
        *(void *)0x1018 = 2;
        arg0->unk16974 = 1;
        return 1;
    }
    return 0;
}

s32 HWInit(void *arg0) {
    s32 temp_v0;

    arg0->unk16C6C = 0x10000;
    arg0->unk7B48 = arg0->unk28(0x10000);
    temp_v0 = arg0->unk2C(arg0, 0x10000);
    arg0->unk7B4C = temp_v0;
    if (temp_v0 != -1) {
        __glOdyim_SoftClear(arg0);
        if (__glOdysseyInitKernel(arg0) != 0) {
            return 1;
        }
        arg0->unk30(arg0);
        return 0;
    }
    return 0;
}

s32 SWInit(s32 *arg0) {
    s64 sp68;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 temp_f0;
    s32 *temp_a0;
    s32 *temp_a1;
    s32 *temp_a2;
    s32 temp_t0;
    s32 var_v0_2;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 temp_v0_5;
    s64 temp_v0_6;
    s64 temp_v0_7;
    u8 var_v0;

    if (__glOdysseyFindWindowSize() != 0) {
        __glOdysseyFindWindowSize(arg0);
        __glSoftResetContext(arg0);
        arg0->unk1FC = 1.1920929e-7f;
        arg0->unkE5C = 0.00390625f;
        arg0->unkE60 = (f32) (arg0->unkDD4 + -0.00390625f);
        if (__glOdysseyValidateContext(arg0) != 0) {
            __glOdysseyInitHyperpipeState(arg0 + 0x21EF0);
            temp_a0 = arg0 + 0x10000;
            if (getenv(&sub_0daf0000 - 0x7C60) != NULL) {
                sp68 = (s64) temp_a0;
                arg0->unk168D8 = 0;
            } else {
                sp68 = (s64) temp_a0;
                arg0->unk168D8 = 1;
            }
            arg0->unk21EF4 = 70.0f;
            temp_v0 = getenv(&sub_0daf0000 - 0x7C40);
            sp18 = temp_v0;
            if (temp_v0 != 0) {
                if (sscanf(sp18, saved_reg_gp - 0x3560, sp) == 1) {
                    if (!(sp0 < 0.0f) && !(sp0 >= 90.0f)) {
                        arg0->unk21EF4 = sp0;
                    } else {
                        arg0->unk10(arg0, &sub_0daf0000 - 0x7C20, (f64) sp0);
                    }
                } else {
                    strcmp(arg0, &sub_0daf0000 - 0x7BD8, sp18);
                }
            }
            temp_f0 = tanf((f32) (((second half of f64) * 3.141592653589793) / (second half of f64)), second half of f64, 3.141592653589793, second half of f64);
            arg0->unk19DB8 = 0x1100;
            arg0->unk19DB4 = 0U;
            arg0->unk21EF4 = temp_f0;
            temp_v0_2 = getenv(&sub_0daf0000 - 0x7B98, 0x1100U);
            sp48 = temp_v0_2;
            if (temp_v0_2 != 0) {
                if (strcmp((s32 *) sp48, &sub_0daf0000 - 0x7B80) == 0) {
                    arg0->unk19DB4 = 0U;
                    goto block_14;
                }
                if (getenv((void *) sp48, saved_reg_gp - 0x3558) == NULL) {
                    arg0->unk19DB8 = 0x1101;
                    arg0->unk19DB4 = 1U;
                    var_v0 = 1;
                } else if (M2C_ERROR(/* Read from unset register $t9 */)(sp48, saved_reg_gp - 0x3550) == 0) {
                    arg0->unk19DB8 = 0x1102;
                    arg0->unk19DB4 = 1U;
                    var_v0 = 1;
                } else {
                    arg0->unk10(arg0, &sub_0daf0000 - 0x7B70, (bitwise f64) sp48);
                    arg0->unk10(arg0, &sub_0daf0000 - 0x7B40);
                    goto block_15;
                }
                goto block_16;
            }
block_15:
            var_v0 = arg0->unk19DB4;
block_16:
            if (var_v0 != 0) {
                var_v0_2 = (arg0->unk19DB8 != 0x1102) ? 2 : 3;
            } else {
block_14:
                var_v0_2 = 0;
            }
            arg0->unk19DBC = var_v0_2;
            arg0->unk19D90 = 0.0625f;
            temp_v0_3 = getenv(&sub_0daf0000 - 0x7B10);
            sp20 = temp_v0_3;
            if (temp_v0_3 != 0) {
                if (sscanf(sp20, saved_reg_gp - 0x3560, &sp4) == 1) {
                    arg0->unk19D90 = sp4;
                } else {
                    arg0->unk10(arg0, &sub_0daf0000 - 0x7AF0, (bitwise f64) sp20);
                }
            }
            arg0->unk19DA8 = 0.0078125f;
            arg0->unk19DA4 = 0.001953125f;
            arg0->unk19D94 = 8192.0f;
            temp_v0_4 = getenv(&sub_0daf0000 - 0x7AB0);
            sp28 = temp_v0_4;
            if (temp_v0_4 != 0) {
                if (sscanf(sp28, saved_reg_gp - 0x3560, &sp8) == 1) {
                    arg0->unk19D94 = sp8;
                } else {
                    arg0->unk10(arg0, &sub_0daf0000 - 0x7A90, (bitwise f64) sp28);
                }
            }
            temp_v0_5 = getenv(&sub_0daf0000 - 0x7A50);
            sp30 = temp_v0_5;
            if (temp_v0_5 != 0) {
                if (sscanf(sp30, saved_reg_gp - 0x3560, &spC) == 1) {
                    arg0->unk19DA4 = spC;
                } else {
                    arg0->unk10(arg0, &sub_0daf0000 - 0x7A28, (bitwise f64) sp30);
                }
            }
            temp_v0_6 = getenv(&sub_0daf0000 - 0x79E8);
            sp38 = temp_v0_6;
            if (temp_v0_6 != 0) {
                if (sscanf(sp38, saved_reg_gp - 0x3560, &sp10) == 1) {
                    arg0->unk19DA8 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f25, $f25, $f27, $f29 */);
                } else {
                    arg0->unk10(arg0, &sub_0daf0000 - 0x79C0, (bitwise f64) sp38);
                }
            }
            arg0->unk19DC4 = 2.2e-44f;
            arg0->unk19DB0 = &__glOdysseyVertexWARClip;
            temp_v0_7 = getenv(&sub_0daf0000 - 0x7980, (u32) &__glOdysseyVertexWARClip, (s32 *)0x10);
            sp40 = temp_v0_7;
            if (temp_v0_7 != 0) {
                if (sscanf(sp40, saved_reg_gp - 0x3548, &sp14) == 1) {
                    arg0->unk19DC4 = sp14;
                } else {
                    arg0->unk10(arg0, &sub_0daf0000 - 0x7960, (bitwise f64) sp40);
                }
            }
            temp_a1 = arg0 + 0x9588;
            *(s32 **)0x1020 = temp_a1;
            temp_a2 = arg0 + 0x19D90;
            *(s32 **)0x1024 = temp_a2;
            if (getenv(&sub_0daf0000 - 0x7928, (u32) temp_a1, temp_a2) != NULL) {
                arg0->unk19DE0 = 0;
            } else {
                temp_t0 = (s32) &glColor3b >> 0x1F;
                arg0->unk19DE0 = 1;
                if (((((((s32) &glColor3b ^ temp_t0) - temp_t0) & 0x3FFF) ^ temp_t0) - temp_t0) != 0) {
                    arg0->unk19DE0 = 0;
                    arg0->unk10(arg0, &sub_0daf0000 - 0x7908);
                }
            }
            arg0->unk19DCC = 0;
            if (getenv(&sub_0daf0000 - 0x78C0) != NULL) {
                arg0->unk19DCC = 1;
            }
            arg0->unk19DCE = 0;
            arg0->unkE00 = (void *) (&sub_0daf0000 - 0x78A0);
            arg0->unkDF8 = (s32 *) (arg0 + 0x7B50);
            arg0->unkDFC = (void *) (&sub_0daf0000 - 0x7500);
            sp68->unk695C = 0;
            arg0->unk2E40(arg0);
            return 1;
        }
        return 0;
    }
    return 0;
}

s32 MakeCurrentRead(s32 *arg0, s32 arg1, s32 arg2, s64 *arg4, s64 *arg5) {
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    f32 temp_f1;
    s32 *temp_a2_2;
    s32 *temp_a5;
    s32 *temp_at_2;
    s32 *temp_t9_2;
    s32 *var_a1_2;
    s32 *var_a3;
    s32 temp_a0;
    s32 temp_a1_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a5_8;
    s32 temp_a7;
    s32 temp_a7_4;
    s32 temp_ra_2;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_v0_4;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_2;
    s32 var_a0_4;
    s32 var_a0_8;
    s32 var_a2;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a3_7;
    s32 var_a3_8;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s64 **temp_t9;
    s64 *temp_a5_2;
    s64 *temp_a5_3;
    s64 *temp_a5_4;
    s64 *temp_a5_5;
    s64 *temp_a5_6;
    s64 *temp_a5_7;
    s64 *temp_a7_2;
    s64 *temp_a7_3;
    s64 *temp_at;
    s64 *temp_t1;
    s64 *temp_t8;
    s64 *temp_v1;
    s64 *var_a4;
    s64 *var_a5;
    s64 temp_a2;
    s64 temp_a4;
    s64 temp_a4_2;
    s64 temp_a4_3;
    s64 temp_a4_4;
    s64 temp_a4_5;
    s64 temp_a4_6;
    s64 temp_a6;
    s64 temp_a6_2;
    s64 temp_at_3;
    s64 temp_ra;
    s64 temp_t0;
    s64 temp_v0_2;
    s8 var_a1;
    u32 temp_a0_2;
    u32 temp_a1;
    u32 temp_a4_7;
    u32 temp_a6_3;
    u32 var_a0_11;
    u8 temp_v0;
    u8 temp_v0_3;
    void *var_a0_3;
    void *var_a0_5;
    void *var_a0_6;
    void *var_a0_7;
    void *var_a0_9;
    void *var_a6;
    void *var_a7;
    void *var_s2;
    void *var_v0_10;

    var_a2 = arg2;
    var_a4 = arg4;
    var_a5 = arg5;
    temp_s3 = var_a2;
    var_a1 = arg1 == var_a2;
    arg0->unkDD0 = var_a1;
    var_a6 = (void *)3;
    temp_v0 = arg0->unk16978;
    if (var_a2->unk0 != 3) {
        temp_t9 = var_a2->unk4;
        if ((temp_v0 == 0) || (var_a4 = *temp_t9, var_a5 = arg0->unkD30, (var_a4 != var_a5))) {
            var_a0 = 0x14;
            var_v0 = 0;
            var_a6 = arg0 + 0xD30;
            do {
                var_a2 = (s32) (var_v0 + var_a6);
                *var_a2 = (s64) *(var_v0 + temp_t9);
                var_a1 = (s8) (var_v0 + (arg0 + 0xD38));
                *var_a1 = (s64) *(var_v0 + (temp_t9 + 8));
                var_a0 -= 4;
                *(var_v0 + (arg0 + 0xD40)) = *(var_v0 + (temp_t9 + 0x10));
                temp_at = var_v0 + (arg0 + 0xD48);
                temp_ra = *(var_v0 + (temp_t9 + 0x18));
                var_v0 += 0x20;
                *temp_at = temp_ra;
            } while (var_a0 > 0);
        }
    } else {
        var_a3 = arg0 + 0xCA8;
        if ((temp_v0 == 0) || (var_a4 = arg0->unkD30, var_a3 = arg0 + 0xCA8, (arg0->unkC90 != var_a4))) {
            var_a6 = (void *)0x20;
            var_a0_2 = 0x14;
            var_v0_2 = 0;
            var_a2 = (s32) (arg0 + 0xD40);
            var_a1 = (s8) (arg0 + 0xCA0);
            do {
                *(var_v0_2 + (arg0 + 0xD30)) = *(var_v0_2 + (arg0 + 0xC90));
                *(var_v0_2 + (arg0 + 0xD38)) = *(var_v0_2 + (arg0 + 0xC98));
                var_a0_2 -= 4;
                *(var_v0_2 + var_a2) = *(var_v0_2 + var_a1);
                temp_t8 = var_v0_2 + (arg0 + 0xD48);
                var_a5 = (s64 *) *(var_v0_2 + var_a3);
                var_v0_2 += 0x20;
                *temp_t8 = (s64) var_a5;
            } while (var_a0_2 > 0);
        }
    }
    temp_t9_2 = arg1->unk4;
    if ((arg0->unk16978 == 0) || (var_a2 = *temp_t9_2, var_a3_2 = arg0->unkC90, var_a7 = temp_t9_2 + 0x18, (var_a2 != var_a3_2))) {
        var_a7 = temp_t9_2 + 0x18;
        var_a6 = arg0 + 0xC98;
        var_v0_3 = 0x14;
        var_a3_2 = 0;
        do {
            *(var_a3_2 + (arg0 + 0xC90)) = *(var_a3_2 + temp_t9_2);
            *(var_a3_2 + var_a6) = *(var_a3_2 + (temp_t9_2 + 8));
            var_v0_3 -= 4;
            *(var_a3_2 + (arg0 + 0xCA0)) = *(var_a3_2 + (temp_t9_2 + 0x10));
            var_a5 = var_a3_2 + (arg0 + 0xCA8);
            var_a4 = (s64 *) *(var_a3_2 + var_a7);
            var_a3_2 += 0x20;
            *var_a5 = (s64) var_a4;
        } while (var_v0_3 > 0);
    }
    arg0->unk16978 = 1U;
    *(s32 **)0x1010 = arg0;
    *(s32 *)0x1018 = arg0->unkC80;
    temp_v0_2 = arg0->unk38(arg0, var_a1, var_a2, var_a3_2, var_a4, var_a5, var_a6, var_a7);
    temp_a0 = arg0->unkA8;
    if (temp_v0_2 != 0) {
        if (temp_a0 & 2) {
            return 0;
        }
        if (arg1 != temp_s3) {
            return 0;
        }
        arg0->unk1368 = 0;
        sp8 = temp_v0_2;
        arg0->unk1364 = &__glListExecTable;
        arg0->unk1360 = &__gl_GenericDlOps;
        arg0->unk135C = &__glListExecTable;
        arg0->unk1358 = &__glNop;
        arg0->unk1354 = &__glNop;
        arg0->unk1350 = &__glGenericDlistCompiler;
        arg0->unk134C = &__glGenericDlistOptimizer;
        if (!(temp_a0 & 4)) {
            __glOdysseyFindWindowSize(arg0, &__glGenericDlistCompiler, (s64) &__glNop, (s64) &__glListExecTable, (s64) &__gl_GenericDlOps);
        }
        return __glPixmapMakeCurrent(arg0, sp8);
    }
    if (temp_a0 & 4) {
        return 0;
    }
    temp_a5 = arg0 + 0x1F60;
    sp38 = (s64) temp_a5;
    arg0->unk17F4 = temp_a5;
    if (temp_a0 & 1) {
        goto block_25;
    }
    if (__glOdysseyValidateContext(arg0) == 0) {
        return 0;
    }
block_25:
    arg0->unk7B48 = arg0->unk28(arg0, arg0->unk16C6C);
    arg0->unk34(arg0);
    if (arg0->unkA8 & 2) {
        sp58 = (s64) (arg0 + 0x20000);
        goto block_27;
    }
    if (__glOdysseyValidateContext(arg0) != 0) {
        arg0->unk1F58 = (s32 *) __pglce_dispatchState;
        temp_v0_3 = arg0->unkC94;
        if (arg0->unk16980 != 0) {
            var_s2 = &sub_0daf0000 + 0x50B8;
            var_a0_3 = (temp_v0_3 == 0) ? (var_s2 + 0x24E0) : (var_s2 + 0x1D80);
        } else {
            var_s2 = &sub_0daf0000 + 0x50B8;
            var_a0_3 = (temp_v0_3 == 0) ? (var_s2 + 0x760) : var_s2;
        }
        __glMipsCopyDispatch(var_a0_3, arg0->unk17F4);
        __glMipsCopyDispatch(var_s2 + 0x4260, arg0 + 0x17F8);
        sp58 = (s64) (arg0 + 0x20000);
        if ((arg0->unk19DB4 != 0) && (sp58->unk-623C > 0)) {
            var_v0_4 = 0x18;
            var_a0_4 = 0;
            do {
                *(var_a0_4 + (arg0 + 0x1D20)) = *(var_a0_4 + &__glOdylc_vertexBboxDispatchTable);
                *(var_a0_4 + (arg0 + 0x1D24)) = *(var_a0_4 + (&__glOdylc_vertexBboxDispatchTable + 4));
                var_v0_4 -= 4;
                *(var_a0_4 + (arg0 + 0x1D28)) = *(var_a0_4 + (&__glOdylc_vertexBboxDispatchTable + 8));
                temp_at_2 = var_a0_4 + (arg0 + 0x1D2C);
                temp_ra_2 = *(var_a0_4 + (&__glOdylc_vertexBboxDispatchTable + 0xC));
                var_a0_4 += 0x10;
                *temp_at_2 = temp_ra_2;
            } while (var_v0_4 > 0);
        }
        sp58->unk-6240 = 1;
        arg0->unk16964 = (s32) (arg0->unk16964 | 0x400);
        *(void *)0x1018 = 2;
block_27:
        *(s32 **)0x1020 = arg0 + 0x9588;
        *(s32 **)0x1024 = arg0 + 0x19D90;
        sp58->unk-6272 = 0;
        arg0->unk9818 = -1.0f;
        arg0->unk9814 = -1.0f;
        __glMakeCurrentBuffers(arg0, sp);
        arg0->unk77FC = (s32 *) (arg0 + 0x78DC);
        arg0->unk77F8 = (s32 *) (arg0 + 0x7800);
        if (arg0->unkA8 & 6) {
            __glOdysseyFindWindowSize(arg0);
            __glOdysseyFindWindowSize(arg0);
            __glOdyim_DrawBuffer(arg0->unk764);
        } else {
            __glOdysseyFindWindowSize(arg0);
            temp_s3_2 = arg0->unkE78;
            temp_s2 = arg0->unkE74;
            __glOdyim_dispatchTable(0, 0, temp_s2, temp_s3_2);
            __glOdyim_dispatchTable(0, 0, temp_s2, temp_s3_2);
            arg0->unk170 = (f32) arg0->unkE54;
            temp_f1 = arg0->unkDD8;
            arg0->unk174 = (f32) (((f32) arg0->unkE78 + arg0->unkE58) - arg0->unkE5C);
            arg0->unk10C = temp_f1;
            arg0->unk15C = temp_f1;
            arg0->unkA73C = 0;
        }
        __glContextSetColorScales(arg0);
        if (arg0->unk168C8 != 0) {
            var_a3_3 = 4;
            var_v0_5 = 0xEC;
            arg0->unk17F4 = (s32 *)0x1050;
            var_a0_5 = NULL;
            temp_a2 = (arg0->unk137C == 0) ? sp38 : (s64) (arg0 + 0x26C0);
            sp18 = temp_a2;
            do {
                var_a3_3 -= 1;
                var_v0_5 -= 1;
                temp_a5_2 = var_a0_5 + 0x1050;
                temp_a4 = *(var_a0_5 + temp_a2);
                var_a0_5 += 8;
                *temp_a5_2 = temp_a4;
            } while (var_a3_3 != 0);
            temp_a3 = temp_a2 + 0x38;
            temp_a7 = temp_a2 + 0x18;
            sp78 = 0x1068;
            sp98 = 0x1060;
            sp90 = temp_a2 + 0x10;
            do {
                var_a0_5->unk1050 = (s64) *(var_a0_5 + temp_a2);
                var_a0_5->unk1058 = (s64) *(var_a0_5 + (temp_a2 + 8));
                *(var_a0_5 + sp98) = *(var_a0_5 + sp90);
                *(var_a0_5 + sp78) = *(var_a0_5 + temp_a7);
                var_a0_5->unk1070 = (s64) *(var_a0_5 + (temp_a2 + 0x20));
                var_a0_5->unk1078 = (s64) *(var_a0_5 + (temp_a2 + 0x28));
                var_v0_5 -= 8;
                var_a0_5->unk1080 = (s64) *(var_a0_5 + (temp_a2 + 0x30));
                temp_a4_2 = *(var_a0_5 + temp_a3);
                temp_a5_3 = var_a0_5 + 0x1088;
                var_a0_5 += 0x40;
                *temp_a5_3 = temp_a4_2;
            } while (var_v0_5 > 0);
            __glOdyssey_ResolveContext(var_a0_5, 0x1050, temp_a2, temp_a3, temp_a4_2, temp_a5_3, 0x1088, temp_a7);
            var_a3_4 = 4;
            var_v0_6 = 0xEC;
            var_a0_6 = NULL;
            do {
                var_a3_4 -= 1;
                var_v0_6 -= 1;
                temp_a7_2 = var_a0_6 + sp18;
                temp_a6 = var_a0_6->unk1050;
                var_a0_6 += 8;
                *temp_a7_2 = temp_a6;
            } while (var_a3_4 != 0);
            sp80 = 0x40;
            spA0 = 0x1080;
            sp88 = 0x1058;
            do {
                *(var_a0_6 + sp18) = var_a0_6->unk1050;
                *(var_a0_6 + (sp18 + 8)) = *(var_a0_6 + sp88);
                *(var_a0_6 + (sp18 + 0x10)) = var_a0_6->unk1060;
                *(var_a0_6 + (sp18 + 0x18)) = var_a0_6->unk1068;
                *(var_a0_6 + (sp18 + 0x20)) = var_a0_6->unk1070;
                *(var_a0_6 + (sp18 + 0x28)) = var_a0_6->unk1078;
                *(var_a0_6 + (sp18 + 0x30)) = *(var_a0_6 + spA0);
                var_v0_6 -= 8;
                *(var_a0_6 + (sp18 + 0x38)) = var_a0_6->unk1088;
                var_a0_6 += sp80;
            } while (var_v0_6 > 0);
            var_a1_2 = *(s32 **)0x1048;
            var_a3_5 = 4;
            if (var_a1_2 != NULL) {
                var_v0_7 = 0xEC;
                var_a0_7 = NULL;
                do {
                    var_a3_5 -= 1;
                    var_v0_7 -= 1;
                    temp_a5_4 = var_a0_7 + 0x1050;
                    temp_a4_3 = *(var_a0_7 + var_a1_2);
                    var_a0_7 += 8;
                    *temp_a5_4 = temp_a4_3;
                } while (var_a3_5 != 0);
                sp70 = 0x1070;
                sp68 = var_a1_2 + 0x20;
                sp60 = var_a1_2 + 0x10;
                do {
                    var_a0_7->unk1050 = (s64) *(var_a0_7 + var_a1_2);
                    var_a0_7->unk1058 = (s64) *(var_a0_7 + (var_a1_2 + 8));
                    var_a0_7->unk1060 = (s64) *(var_a0_7 + sp60);
                    var_a0_7->unk1068 = (s64) *(var_a0_7 + (var_a1_2 + 0x18));
                    *(var_a0_7 + sp70) = *(var_a0_7 + sp68);
                    var_a0_7->unk1078 = (s64) *(var_a0_7 + (var_a1_2 + 0x28));
                    var_v0_7 -= 8;
                    var_a0_7->unk1080 = (s64) *(var_a0_7 + (var_a1_2 + 0x30));
                    temp_a4_4 = *(var_a0_7 + (var_a1_2 + 0x38));
                    temp_a5_5 = var_a0_7 + 0x1088;
                    var_a0_7 += 0x40;
                    *temp_a5_5 = temp_a4_4;
                } while (var_v0_7 > 0);
            }
        } else {
            var_a1_2 = *(void *)0x1048;
        }
        temp_v0_4 = arg0->unk137C;
        if (var_a1_2 != NULL) {
            sp10 = (s64) temp_v0_4;
            if (temp_v0_4 != 0) {
                arg0->unk17F4 = (s32 *) (arg0 + 0x26C0);
                if (arg0->unk1378 != 0x1300) {
                    var_a1_2 = arg0->unk1F58;
                } else {
                    var_a1_2 = arg0 + 0x17F8;
                }
                var_a3_6 = 4;
                var_v0_8 = 0xEC;
                var_a0_8 = 0;
                temp_a2_2 = arg0 + 0x1F60;
                do {
                    var_a3_6 -= 1;
                    var_v0_8 -= 1;
                    temp_t1 = var_a0_8 + temp_a2_2;
                    temp_t0 = *(var_a0_8 + var_a1_2);
                    var_a0_8 += 8;
                    *temp_t1 = temp_t0;
                } while (var_a3_6 != 0);
                do {
                    *(var_a0_8 + temp_a2_2) = *(var_a0_8 + var_a1_2);
                    *(var_a0_8 + (temp_a2_2 + 8)) = *(var_a0_8 + (var_a1_2 + 8));
                    *(var_a0_8 + (temp_a2_2 + 0x10)) = *(var_a0_8 + (var_a1_2 + 0x10));
                    *(var_a0_8 + (temp_a2_2 + 0x18)) = *(var_a0_8 + (var_a1_2 + 0x18));
                    *(var_a0_8 + (temp_a2_2 + 0x20)) = *(var_a0_8 + (var_a1_2 + 0x20));
                    *(var_a0_8 + (temp_a2_2 + 0x28)) = *(var_a0_8 + (var_a1_2 + 0x28));
                    var_v0_8 -= 8;
                    *(var_a0_8 + (temp_a2_2 + 0x30)) = *(var_a0_8 + (var_a1_2 + 0x30));
                    temp_v1 = var_a0_8 + (temp_a2_2 + 0x38);
                    temp_at_3 = *(var_a0_8 + (var_a1_2 + 0x38));
                    var_a0_8 += 0x40;
                    *temp_v1 = temp_at_3;
                } while (var_v0_8 > 0);
                if (sp10 != 0) {
                    goto block_52;
                }
            } else {
                arg0->unk17F4 = (s32 *) sp38;
                goto block_86;
            }
        } else {
            sp10 = (s64) temp_v0_4;
            var_a3_7 = 4;
            if (sp10 != 0) {
                arg0->unk17F4 = (s32 *) (arg0 + 0x26C0);
                if (arg0->unk1378 != 0x1300) {
                    var_a1_2 = arg0->unk1F58;
                } else {
                    var_a1_2 = arg0 + 0x17F8;
                }
                var_a3_8 = 4;
                var_v0_9 = 0xEC;
                var_a0_9 = NULL;
                do {
                    var_a3_8 -= 1;
                    var_v0_9 -= 1;
                    temp_a5_6 = var_a0_9 + 0x1050;
                    temp_a4_5 = *(var_a0_9 + var_a1_2);
                    var_a0_9 += 8;
                    *temp_a5_6 = temp_a4_5;
                } while (var_a3_8 != 0);
                sp40 = 0x1088;
                sp48 = 0x1070;
                sp50 = (s64) (var_a1_2 + 0x10);
                do {
                    var_a0_9->unk1050 = (s64) *(var_a0_9 + var_a1_2);
                    var_a0_9->unk1058 = (s64) *(var_a0_9 + (var_a1_2 + 8));
                    var_a0_9->unk1060 = (s64) *(var_a0_9 + sp50);
                    var_a0_9->unk1068 = (s64) *(var_a0_9 + (var_a1_2 + 0x18));
                    *(var_a0_9 + sp48) = *(var_a0_9 + (var_a1_2 + 0x20));
                    var_a0_9->unk1078 = (s64) *(var_a0_9 + (var_a1_2 + 0x28));
                    var_v0_9 -= 8;
                    var_a0_9->unk1080 = (s64) *(var_a0_9 + (var_a1_2 + 0x30));
                    temp_a4_6 = *(var_a0_9 + (var_a1_2 + 0x38));
                    temp_a5_7 = var_a0_9 + sp40;
                    var_a0_9 += 0x40;
                    *temp_a5_7 = temp_a4_6;
                } while (var_v0_9 > 0);
            } else {
                var_a0_10 = 0xEC;
                var_v0_10 = NULL;
                var_a1_2 = arg0 + 0x1F60;
                arg0->unk17F4 = (s32 *)0x1050;
                do {
                    var_a3_7 -= 1;
                    var_a0_10 -= 1;
                    temp_a7_3 = var_v0_10 + 0x1050;
                    temp_a6_2 = *(var_v0_10 + var_a1_2);
                    var_v0_10 += 8;
                    *temp_a7_3 = temp_a6_2;
                } while (var_a3_7 != 0);
                sp20 = 0x40;
                sp28 = (s64) (var_a1_2 + 0x28);
                sp30 = (s64) (var_a1_2 + 0x10);
                do {
                    var_v0_10->unk1050 = (s64) *(var_v0_10 + var_a1_2);
                    var_v0_10->unk1058 = (s64) *(var_v0_10 + (var_a1_2 + 8));
                    var_v0_10->unk1060 = (s64) *(var_v0_10 + sp30);
                    var_v0_10->unk1068 = (s64) *(var_v0_10 + (var_a1_2 + 0x18));
                    var_v0_10->unk1070 = (s64) *(var_v0_10 + (var_a1_2 + 0x20));
                    var_v0_10->unk1078 = (s64) *(var_v0_10 + sp28);
                    var_v0_10->unk1080 = (s64) *(var_v0_10 + (var_a1_2 + 0x30));
                    var_a0_10 -= 8;
                    var_v0_10->unk1088 = (s64) *(var_v0_10 + (var_a1_2 + 0x38));
                    var_v0_10 += sp20;
                } while (var_a0_10 > 0);
            }
            sp10 = (s64) arg0->unk137C;
block_86:
            if (sp10 == 0) {

            } else {
block_52:
                *(s32 *)0x1028 = arg0->unk13BC;
                *(s32 *)0x102C = arg0->unk13C0;
                *(s32 *)0x1030 = arg0->unk13C4;
                *(s32 *)0x1034 = arg0->unk13C8;
            }
        }
        if (sp58->unk-6220 != 0) {
            if (*(s32 *)0x17B4 != 0) {

            } else if (__glOdysseyFindWindowSize(arg0, var_a1_2) == 0) {
                sp58->unk-6220 = 0U;
            }
        }
        __glOdysseyFindWindowSize(arg0);
        if (__glOdysseyDriverMakeCurrent(arg0) != 0) {
            if (__glOdysseyImageDescribeWindow(arg0 + 0x11D98, 0) != 0) {
                if (__glOdysseyImageDescribeWindow(arg0 + 0x11DD4, 1) != 0) {
                    temp_a6_3 = (arg0->unk16D4C & 0xFFF) | (arg0->unk96A0 & ~0xFFF);
                    temp_a4_7 = (0xE0000000 & arg0->unk969C) | (0x1FFFFFFF & arg0->unk16D40);
                    temp_a7_4 = ~0x200000;
                    arg0->unk96A8 = (u32) ((0xE0000000 & arg0->unk96A8) | (0x1FFFFFFF & arg0->unk16D44));
                    temp_a5_8 = arg0->unk96A4 & temp_a7_4;
                    arg0->unk96A0 = temp_a6_3;
                    temp_a3_2 = ~0xE000;
                    arg0->unk969C = temp_a4_7;
                    temp_a2_3 = ((0x200000 & (arg0->unk16D50 << 0x15)) | temp_a5_8) & temp_a3_2;
                    temp_a1 = ((arg0->unk11DC0 << 0xD) & 0xE000) | temp_a2_3;
                    arg0->unk96A4 = temp_a1;
                    temp_a1_2 = arg0->unk11DC4;
                    temp_a2_4 = arg0->unk11DCC;
                    temp_a0_2 = ((temp_a1_2 << 0xA) & 0x1C00) | (((((arg0->unk96A4 & ~0x70) | ((__glOdysseyImageCalcFieldFormat(arg0->unk11DCC, temp_a1, temp_a2_3, temp_a3_2, temp_a4_7, temp_a5_8, temp_a6_3, temp_a7_4) * 0x10) & 0x70)) & ~0x380) | ((arg0->unk11DC8 << 7) & 0x380)) & ~0x1C00);
                    arg0->unk96A4 = temp_a0_2;
                    if ((temp_a2_4 != 0x10) && (temp_a2_4 != 0x11)) {
                        var_a0_11 = temp_a0_2 & ~0x80000;
                    } else {
                        var_a0_11 = temp_a0_2 | 0x80000;
                    }
                    arg0->unk96A4 = var_a0_11;
                    if (temp_a1_2 != 3) {
                        arg0->unk96A4 = (u32) (var_a0_11 & ~0x400000);
                        arg0->unk7B74 = 1;
                    } else {
                        arg0->unk96A4 = (u32) (var_a0_11 | 0x400000);
                        if (arg0->unk7B70 & 0x200000) {
                            arg0->unk7B74 = 1;
                        } else {
                            arg0->unk7B74 = 0;
                        }
                    }
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10019;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0x96;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                    arg0->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                    if (!(arg0->unk96A4 & 0x08000000)) {
                        HQ2_READ_FIFO = 0x90008116;
                    } else {
                        HQ2_READ_FIFO = 0x10841;
                        HQ2_READ_FIFO = 0;
                        HQ2_READ_FIFO = 0;
                        HQ2_READ_FIFO = 0x1204B;
                        HQ2_READ_FIFO = 0;
                        HQ2_READ_FIFO = 0xFFFFFF;
                        HQ2_READ_FIFO = 0;
                        HQ2_READ_FIFO = 0;
                        HQ2_READ_FIFO = 0;
                        HQ2_READ_FIFO = 0;
                        HQ2_READ_FIFO = 0;
                        HQ2_READ_FIFO = 0;
                        HQ2_READ_FIFO = 0x10840;
                        HQ2_READ_FIFO = 0;
                        HQ2_READ_FIFO = 0;
                    }
                    HQ2_READ_FIFO = 0x11017;
                    HQ2_READ_FIFO = arg0->unk969C;
                    HQ2_READ_FIFO = arg0->unk96A0;
                    HQ2_READ_FIFO = arg0->unk96A4;
                    HQ2_READ_FIFO = arg0->unk96A8;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0x96;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                    arg0->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                    arg0->unkA8 = (s32) ((arg0->unkA8 | 3) & ~4);
                    return 1;
                }
                return 0;
            }
            return 0;
        }
        return 0;
    }
    arg0->unk30(arg0);
    return 0;
}

void CopyContext(void *arg0) {
    if (arg0->unkA8 & 1) {
        __glOdyssey_CopyContext();
        return;
    }
    __glCopyContext();
}

s32 LoseCurrent(s32 *arg0) {
    s32 *temp_a5;
    s32 temp_a4;
    s32 var_a0;
    s32 var_a2;
    s32 var_a3;
    s64 *temp_at;
    s64 *temp_v0;
    s64 temp_at_2;
    s64 temp_ra;

    if (arg0->unkC84 == 0x1C00) {
        if (*(s32 *)0x1018 != 1) {
            __glLoseCurrentBuffers(0);
            arg0->unkC80 = (s32) *(void *)0x1018;
            *(s32 *)0x1010 = 0;
            __glOdysseyFindWindowSize(arg0);
            var_a0 = 4;
            temp_a4 = arg0->unk17F4;
            var_a2 = 0xEC;
            temp_a5 = arg0 + 0x1F60;
            var_a3 = 0;
            if (temp_a4 != temp_a5) {
                do {
                    var_a0 -= 1;
                    var_a2 -= 1;
                    temp_at = var_a3 + temp_a5;
                    temp_ra = *(var_a3 + temp_a4);
                    var_a3 += 8;
                    *temp_at = temp_ra;
                } while (var_a0 != 0);
                do {
                    *(var_a3 + temp_a5) = *(var_a3 + temp_a4);
                    *(var_a3 + (temp_a5 + 8)) = *(var_a3 + (temp_a4 + 8));
                    *(var_a3 + (temp_a5 + 0x10)) = *(var_a3 + (temp_a4 + 0x10));
                    *(var_a3 + (temp_a5 + 0x18)) = *(var_a3 + (temp_a4 + 0x18));
                    *(var_a3 + (temp_a5 + 0x20)) = *(var_a3 + (temp_a4 + 0x20));
                    *(var_a3 + (temp_a5 + 0x28)) = *(var_a3 + (temp_a4 + 0x28));
                    var_a2 -= 8;
                    *(var_a3 + (temp_a5 + 0x30)) = *(var_a3 + (temp_a4 + 0x30));
                    temp_v0 = var_a3 + (temp_a5 + 0x38);
                    temp_at_2 = *(var_a3 + (temp_a4 + 0x38));
                    var_a3 += 0x40;
                    *temp_v0 = temp_at_2;
                } while (var_a2 > 0);
            }
            if (arg0->unk137C != 0) {
                arg0->unk13BC = (s32) *(s32 *)0x1028;
                arg0->unk13C0 = (s32) *(s32 *)0x102C;
                arg0->unk13C4 = (s32) *(s32 *)0x1030;
                arg0->unk13C8 = (s32) *(s32 *)0x1034;
            }
            return 1;
        }
        /* Duplicate return node #12. Try simplifying control flow for better match */
        return 0;
    }
    return 0;
}

/*
Decompilation failure in function MakeCurrent:

Cannot find branch target __glOdysseyValidateContext
*/

void BindHyperpipe(void *arg0, s32 arg1) {
    if (arg1 != -1) {
        __glOdysseyBindHyperpipe();
        arg0->unk21EF0 = arg1;
        return;
    }
    __glOdysseyUnbindHyperpipe(arg0->unk21EF0);
}

s32 QueryHyperpipeBestAttrib(void *arg0, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    if (arg0->unk21EF0 >= 0) {
        if (arg2 != 1) {
            return 0x5C;
        }
        return __glOdysseyQueryHyperpipeBestRect(arg3, arg4, arg5, arg4);
    }
    return 0x5C;
}

s32 QueryHyperpipeAttrib(s32 arg2, s32 arg3, s32 arg4) {
    s32 var_v0;

    switch (arg2) {                                 /* irregular */
    default:
        return 0x5C;
    case 4:
        var_v0 = __glOdysseyQueryHyperpipePixelAverage(arg3, arg4, 4, arg3);
        return var_v0;
    case 1:
        var_v0 = __glOdysseyQueryHyperpipeRect(arg3, arg4, arg3);
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return var_v0;
    case 2:
        var_v0 = __glOdysseyQueryHyperpipeLimit(arg3, arg4, arg3);
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return var_v0;
    case 3:
        var_v0 = M2C_ERROR(/* Read from unset register $t9 */)(arg3, arg4, arg3);
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return var_v0;
    }
}

s32 HyperpipeAttrib(void *arg0, s32 arg2, s32 arg3, s32 arg4) {
    s32 var_v0;

    if (arg0->unk21EF0 >= 0) {
        switch (arg2) {                             /* irregular */
        default:
            return 0x5C;
        case 4:
            var_v0 = __glOdysseyHyperpipePixelAverage(arg3, arg4, arg3);
            return var_v0;
        case 1:
            var_v0 = __glOdysseyHyperpipeRect(arg3, arg4, arg3);
            /* Duplicate return node #6. Try simplifying control flow for better match */
            return var_v0;
        case 3:
            var_v0 = __glOdysseyHyperpipeStereo(arg3, arg4, arg3);
            /* Duplicate return node #6. Try simplifying control flow for better match */
            return var_v0;
        }
    } else {
        return 0x5C;
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x148, 0x14c, 0x160, 0x164, 0x168, 0x16c, 0x170, 0x174], gap at: 0x158. */
void *__glOdysseyCreateContext(void *arg0, s64 arg1, s64 arg2) {
    s64 sp278;
    s64 sp270;
    s64 sp268;
    s64 sp258;
    s64 sp250;
    s64 sp248;
    s64 sp240;
    s64 sp238;
    s64 sp230;
    s64 sp228;
    s64 sp220;
    s64 sp218;
    s64 sp210;
    s64 sp208;
    s64 sp200;
    s64 sp1F8;
    s64 sp1F0;
    s64 sp1E8;
    s64 sp1E0;
    s64 sp1D8;
    s64 sp1D0;
    s64 sp1C8;
    s64 sp1C0;
    s64 sp1B8;
    s64 sp1B0;
    s64 sp1A8;
    s64 sp1A0;
    s64 sp198;
    s64 sp190;
    s64 sp188;
    s64 sp180;
    s64 sp178;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *temp_a0_2;
    s32 *temp_a0_5;
    s32 *temp_a1_4;
    s32 *temp_a1_5;
    s32 *temp_a2_12;
    s32 *temp_a2_13;
    s32 *temp_a2_3;
    s32 *temp_a2_5;
    s32 *temp_a2_6;
    s32 *temp_a2_8;
    s32 *temp_a3_11;
    s32 *temp_a3_13;
    s32 *temp_a3_2;
    s32 *temp_a3_4;
    s32 *temp_a3_5;
    s32 *temp_a3_9;
    s32 *temp_a7_14;
    s32 *temp_a7_16;
    s32 *temp_a7_9;
    s32 *temp_at_11;
    s32 *temp_at_2;
    s32 *temp_at_4;
    s32 *temp_at_7;
    s32 *temp_at_8;
    s32 *temp_at_9;
    s32 *temp_ra;
    s32 *temp_ra_10;
    s32 *temp_ra_12;
    s32 *temp_ra_15;
    s32 *temp_ra_16;
    s32 *temp_ra_3;
    s32 *temp_ra_8;
    s32 *temp_ra_9;
    s32 *temp_s1;
    s32 *temp_s1_3;
    s32 *temp_s1_4;
    s32 *temp_s3;
    s32 *temp_t0;
    s32 *temp_t0_10;
    s32 *temp_t0_3;
    s32 *temp_t0_6;
    s32 *temp_t0_7;
    s32 *temp_t0_8;
    s32 *temp_t1;
    s32 *temp_t1_2;
    s32 *temp_t1_4;
    s32 *temp_t1_6;
    s32 *temp_t1_8;
    s32 *temp_t2_10;
    s32 *temp_t2_3;
    s32 *temp_t2_8;
    s32 *temp_t3;
    s32 *temp_t3_3;
    s32 *temp_t3_4;
    s32 *temp_t3_6;
    s32 *temp_t8;
    s32 *temp_t9_10;
    s32 *temp_t9_11;
    s32 *temp_t9_12;
    s32 *temp_t9_7;
    s32 *temp_v0_10;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_8;
    s32 *temp_v1_11;
    s32 *temp_v1_12;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 *temp_v1_6;
    s32 *temp_v1_7;
    s32 *temp_v1_8;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2_10;
    s32 temp_a2_11;
    s32 temp_a2_2;
    s32 temp_a2_4;
    s32 temp_a2_7;
    s32 temp_a2_9;
    s32 temp_a3_10;
    s32 temp_a3_12;
    s32 temp_a3_14;
    s32 temp_a3_3;
    s32 temp_a3_6;
    s32 temp_a3_7;
    s32 temp_a3_8;
    s32 temp_a7_10;
    s32 temp_a7_12;
    s32 temp_a7_15;
    s32 temp_a7_2;
    s32 temp_at_10;
    s32 temp_at_12;
    s32 temp_at_13;
    s32 temp_at_14;
    s32 temp_at_15;
    s32 temp_at_16;
    s32 temp_at_17;
    s32 temp_at_3;
    s32 temp_at_5;
    s32 temp_at_6;
    s32 temp_ra_11;
    s32 temp_ra_13;
    s32 temp_ra_19;
    s32 temp_ra_4;
    s32 temp_ra_6;
    s32 temp_s1_2;
    s32 temp_t0_11;
    s32 temp_t0_13;
    s32 temp_t0_2;
    s32 temp_t0_4;
    s32 temp_t0_5;
    s32 temp_t0_9;
    s32 temp_t1_3;
    s32 temp_t1_5;
    s32 temp_t1_7;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t2_4;
    s32 temp_t2_5;
    s32 temp_t2_6;
    s32 temp_t2_7;
    s32 temp_t2_9;
    s32 temp_t3_2;
    s32 temp_t3_5;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_t9;
    s32 temp_t9_3;
    s32 temp_t9_4;
    s32 temp_t9_5;
    s32 temp_t9_6;
    s32 temp_t9_8;
    s32 temp_t9_9;
    s32 temp_v0_3;
    s32 temp_v0_7;
    s32 temp_v0_9;
    s32 temp_v1;
    s32 temp_v1_10;
    s32 temp_v1_13;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_9;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a5;
    s32 var_a5_10;
    s32 var_a5_11;
    s32 var_a5_12;
    s32 var_a5_13;
    s32 var_a5_14;
    s32 var_a5_15;
    s32 var_a5_16;
    s32 var_a5_17;
    s32 var_a5_18;
    s32 var_a5_19;
    s32 var_a5_20;
    s32 var_a5_21;
    s32 var_a5_22;
    s32 var_a5_23;
    s32 var_a5_24;
    s32 var_a5_25;
    s32 var_a5_26;
    s32 var_a5_27;
    s32 var_a5_28;
    s32 var_a5_29;
    s32 var_a5_2;
    s32 var_a5_30;
    s32 var_a5_31;
    s32 var_a5_32;
    s32 var_a5_33;
    s32 var_a5_34;
    s32 var_a5_35;
    s32 var_a5_36;
    s32 var_a5_37;
    s32 var_a5_38;
    s32 var_a5_39;
    s32 var_a5_3;
    s32 var_a5_40;
    s32 var_a5_41;
    s32 var_a5_42;
    s32 var_a5_43;
    s32 var_a5_44;
    s32 var_a5_45;
    s32 var_a5_46;
    s32 var_a5_47;
    s32 var_a5_48;
    s32 var_a5_49;
    s32 var_a5_4;
    s32 var_a5_50;
    s32 var_a5_51;
    s32 var_a5_5;
    s32 var_a5_6;
    s32 var_a5_7;
    s32 var_a5_8;
    s32 var_a5_9;
    s32 var_a6;
    s32 var_a6_10;
    s32 var_a6_11;
    s32 var_a6_12;
    s32 var_a6_13;
    s32 var_a6_14;
    s32 var_a6_15;
    s32 var_a6_16;
    s32 var_a6_17;
    s32 var_a6_18;
    s32 var_a6_19;
    s32 var_a6_20;
    s32 var_a6_21;
    s32 var_a6_22;
    s32 var_a6_23;
    s32 var_a6_24;
    s32 var_a6_25;
    s32 var_a6_26;
    s32 var_a6_27;
    s32 var_a6_28;
    s32 var_a6_29;
    s32 var_a6_2;
    s32 var_a6_30;
    s32 var_a6_31;
    s32 var_a6_32;
    s32 var_a6_33;
    s32 var_a6_34;
    s32 var_a6_35;
    s32 var_a6_36;
    s32 var_a6_37;
    s32 var_a6_38;
    s32 var_a6_39;
    s32 var_a6_3;
    s32 var_a6_40;
    s32 var_a6_41;
    s32 var_a6_42;
    s32 var_a6_43;
    s32 var_a6_44;
    s32 var_a6_45;
    s32 var_a6_46;
    s32 var_a6_47;
    s32 var_a6_48;
    s32 var_a6_49;
    s32 var_a6_4;
    s32 var_a6_5;
    s32 var_a6_6;
    s32 var_a6_7;
    s32 var_a6_8;
    s32 var_a6_9;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_a7_3;
    s32 var_a7_4;
    s32 var_a7_5;
    s32 var_a7_6;
    s32 var_a7_7;
    s32 var_a7_8;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_t3;
    s32 var_t3_2;
    s32 var_t3_3;
    s32 var_t8;
    s32 var_t8_2;
    s32 var_t8_3;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 *temp_a2;
    s64 *temp_a3;
    s64 *temp_at;
    s64 temp_a1;
    s64 temp_ra_2;
    s64 var_s2;
    u8 *temp_v0_2;
    u8 temp_a0;
    void *temp_a4;
    void *temp_a5;
    void *temp_a6;
    void *temp_a7;
    void *temp_a7_11;
    void *temp_a7_13;
    void *temp_a7_3;
    void *temp_a7_4;
    void *temp_a7_5;
    void *temp_a7_6;
    void *temp_a7_7;
    void *temp_a7_8;
    void *temp_gp;
    void *temp_ra_14;
    void *temp_ra_17;
    void *temp_ra_18;
    void *temp_ra_20;
    void *temp_ra_21;
    void *temp_ra_5;
    void *temp_ra_7;
    void *temp_s0;
    void *temp_t0_12;
    void *temp_t9_13;
    void *temp_t9_14;
    void *temp_t9_2;
    void *temp_v0;
    void *var_s0;
    void *var_s1;

    unksp150 = arg1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x18BF80;
    var_s2 = arg2;
    unksp158 = (s64) arg0;
    temp_v0 = arg0->unk4(0, 1, 0x21F00);
    var_s0 = temp_v0;
    if (temp_v0 != NULL) {
        temp_v0_2 = getenv(&sub_0daf0000 - 0x74F0);
        if (temp_v0_2 != NULL) {
            temp_a0 = *temp_v0_2;
            if (temp_a0 != 0x4E) {
                if (temp_a0 != 0x6E) {
                    goto block_4;
                }
                goto block_160;
            }
block_160:
            sp0 = var_s0 + 0x20000;
            var_s0->unk19DE2 = 0;
        } else {
block_4:
            sp0 = (s64) (var_s0 + 0x20000);
            var_s0->unk19DE2 = 1;
        }
        var_a5 = 0;
        var_a4 = 0x14;
        do {
            *(var_a5 + var_s0) = *(var_a5 + unksp158);
            *(var_a5 + (var_s0 + 4)) = *(var_a5 + (unksp158 + 4));
            var_a4 -= 4;
            *(var_a5 + (var_s0 + 8)) = *(var_a5 + (unksp158 + 8));
            temp_ra = var_a5 + (var_s0 + 0xC);
            temp_t2 = *(var_a5 + (unksp158 + 0xC));
            var_a5 += 0x10;
            *temp_ra = temp_t2;
        } while (var_a4 > 0);
        var_a5_2 = 0x14;
        var_a4_2 = 0;
        do {
            *(var_a4_2 + (var_s0 + 0xD30)) = *(var_a4_2 + unksp150);
            *(var_a4_2 + (var_s0 + 0xD38)) = *(var_a4_2 + (unksp150 + 8));
            temp_a3 = var_a4_2 + (var_s0 + 0xD40);
            var_a5_2 -= 4;
            *temp_a3 = *(var_a4_2 + (unksp150 + 0x10));
            temp_a2 = var_a4_2 + (var_s0 + 0xD48);
            temp_a1 = *(var_a4_2 + (unksp150 + 0x18));
            var_a4_2 += 0x20;
            *temp_a2 = temp_a1;
        } while (var_a5_2 > 0);
        var_a5_3 = 0x14;
        var_a4_3 = 0;
        temp_a7 = var_s0 + 0xC90;
        temp_a6 = var_s0 + 0xCA0;
        do {
            *(var_a4_3 + temp_a7) = *(var_a4_3 + (var_s0 + 0xD30));
            *(var_a4_3 + (var_s0 + 0xC98)) = *(var_a4_3 + (var_s0 + 0xD38));
            var_a5_3 -= 4;
            *(var_a4_3 + temp_a6) = *(var_a4_3 + (var_s0 + 0xD40));
            temp_at = var_a4_3 + (var_s0 + 0xCA8);
            temp_ra_2 = *(var_a4_3 + (var_s0 + 0xD48));
            var_a4_3 += 0x20;
            *temp_at = temp_ra_2;
        } while (var_a5_3 > 0);
        temp_v0_3 = var_s0->unk4(var_s0, 0x10, 4, temp_a3, var_a4_3, var_a5_3, temp_a6, temp_a7);
        var_s1 = var_s0 + 0x10000;
        var_s0->unk168D0 = temp_v0_3;
        if (temp_v0_3 != 0) {
            var_s0->unk168CC = 0;
            var_s0->unk168C8 = 0;
            var_s0->unk168D4 = temp_v0_3;
            if (temp_gp->unk-3530 == 0) {
                sp268 = (s64) var_s1;
                var_a0 = 2;
                var_a5_4 = 0x14A;
                var_a6 = 0;
                temp_a4 = &sub_0daf0000 + 0x50B8;
                do {
                    var_a0 -= 1;
                    var_a5_4 -= 1;
                    temp_a7_2 = *(var_a6 + M2C_ERROR(/* Read from unset register $t9 */));
                    temp_t0 = var_a6 + temp_a4;
                    var_a6 += 4;
                    *temp_t0 = temp_a7_2;
                } while (var_a0 != 0);
                sp278 = var_s2;
                sp270 = (s64) var_s0;
                sp180 = (s64) (temp_a4 + 4);
                sp178 = M2C_ERROR(/* Read from unset register $t9 */) + 4;
                do {
                    temp_t2_2 = *(var_a6 + (M2C_ERROR(/* Read from unset register $t9 */) + 0x1C));
                    *(var_a6 + temp_a4) = *(var_a6 + M2C_ERROR(/* Read from unset register $t9 */));
                    *(var_a6 + sp180) = *(var_a6 + sp178);
                    *(var_a6 + (temp_a4 + 8)) = *(var_a6 + (M2C_ERROR(/* Read from unset register $t9 */) + 8));
                    *(var_a6 + (temp_a4 + 0xC)) = *(var_a6 + (M2C_ERROR(/* Read from unset register $t9 */) + 0xC));
                    *(var_a6 + (temp_a4 + 0x10)) = *(var_a6 + (M2C_ERROR(/* Read from unset register $t9 */) + 0x10));
                    var_a5_4 -= 8;
                    *(var_a6 + (temp_a4 + 0x14)) = *(var_a6 + (M2C_ERROR(/* Read from unset register $t9 */) + 0x14));
                    temp_t3 = var_a6 + (temp_a4 + 0x1C);
                    *(var_a6 + (temp_a4 + 0x18)) = *(var_a6 + (M2C_ERROR(/* Read from unset register $t9 */) + 0x18));
                    var_a6 += 0x20;
                    *temp_t3 = temp_t2_2;
                } while (var_a5_4 > 0);
                var_a6_2 = 0x18;
                var_a5_5 = 0;
                do {
                    temp_t9 = *(var_a5_5 + (&__glOdyim_vertexDispatchTable + 0xC));
                    *(var_a5_5 + (temp_a4 + 0x528)) = *(var_a5_5 + &__glOdyim_vertexDispatchTable);
                    var_a6_2 -= 4;
                    *(var_a5_5 + (temp_a4 + 0x52C)) = *(var_a5_5 + (&__glOdyim_vertexDispatchTable + 4));
                    temp_ra_3 = var_a5_5 + (temp_a4 + 0x534);
                    *(var_a5_5 + (temp_a4 + 0x530)) = *(var_a5_5 + (&__glOdyim_vertexDispatchTable + 8));
                    var_a5_5 += 0x10;
                    *temp_ra_3 = temp_t9;
                } while (var_a6_2 > 0);
                var_t0 = 2;
                var_a5_6 = 0x2A;
                var_a6_3 = 0;
                temp_a7_3 = temp_a4 + 0x588;
                do {
                    var_t0 -= 1;
                    var_a5_6 -= 1;
                    temp_ra_4 = *(var_a6_3 + &__glOdyim_colorDispatchTable);
                    temp_at_2 = var_a6_3 + temp_a7_3;
                    var_a6_3 += 4;
                    *temp_at_2 = temp_ra_4;
                } while (var_t0 != 0);
                sp50 = (s64) (temp_a7_3 + 0x10);
                sp48 = (s64) (&__glOdyim_colorDispatchTable + 0x10);
                sp38 = (s64) (temp_a7_3 + 8);
                sp20 = (s64) (&__glOdyim_colorDispatchTable + 8);
                do {
                    temp_t0_2 = *(var_a6_3 + (&__glOdyim_colorDispatchTable + 0x1C));
                    *(var_a6_3 + temp_a7_3) = *(var_a6_3 + &__glOdyim_colorDispatchTable);
                    *(var_a6_3 + (temp_a7_3 + 4)) = *(var_a6_3 + (&__glOdyim_colorDispatchTable + 4));
                    *(var_a6_3 + sp38) = *(var_a6_3 + sp20);
                    *(var_a6_3 + (temp_a7_3 + 0xC)) = *(var_a6_3 + (&__glOdyim_colorDispatchTable + 0xC));
                    *(var_a6_3 + sp50) = *(var_a6_3 + sp48);
                    var_a5_6 -= 8;
                    *(var_a6_3 + (temp_a7_3 + 0x14)) = *(var_a6_3 + (&__glOdyim_colorDispatchTable + 0x14));
                    temp_s1 = var_a6_3 + (temp_a7_3 + 0x1C);
                    *(var_a6_3 + (temp_a7_3 + 0x18)) = *(var_a6_3 + (&__glOdyim_colorDispatchTable + 0x18));
                    var_a6_3 += 0x20;
                    *temp_s1 = temp_t0_2;
                } while (var_a5_6 > 0);
                temp_a4->unk630 = (s32) __glOdyim_normalDispatchTable.unk0;
                temp_a4->unk634 = (s32) __glOdyim_normalDispatchTable.unk4;
                temp_a4->unk638 = (s32) __glOdyim_normalDispatchTable.unk8;
                temp_a4->unk63C = (s32) __glOdyim_normalDispatchTable.unkC;
                temp_a4->unk640 = (s32) __glOdyim_normalDispatchTable.unk10;
                temp_a4->unk644 = (s32) __glOdyim_normalDispatchTable.unk14;
                temp_a4->unk648 = (s32) __glOdyim_normalDispatchTable.unk18;
                temp_a4->unk64C = (s32) __glOdyim_normalDispatchTable.unk1C;
                temp_a4->unk654 = (s32) __glOdyim_normalDispatchTable.unk24;
                temp_a4->unk650 = (s32) __glOdyim_normalDispatchTable.unk20;
                var_a5_7 = 0x20;
                var_a6_4 = 0;
                do {
                    temp_a2_2 = *(var_a6_4 + (&__glOdyim_texCoordDispatchTable + 0xC));
                    *(var_a6_4 + (temp_a4 + 0x658)) = *(var_a6_4 + &__glOdyim_texCoordDispatchTable);
                    var_a5_7 -= 4;
                    *(var_a6_4 + (temp_a4 + 0x65C)) = *(var_a6_4 + (&__glOdyim_texCoordDispatchTable + 4));
                    temp_a3_2 = var_a6_4 + (temp_a4 + 0x664);
                    *(var_a6_4 + (temp_a4 + 0x660)) = *(var_a6_4 + (&__glOdyim_texCoordDispatchTable + 8));
                    var_a6_4 += 0x10;
                    *temp_a3_2 = temp_a2_2;
                } while (var_a5_7 > 0);
                var_a6_5 = 0x18;
                var_a5_8 = 0;
                do {
                    temp_a3_3 = *(var_a5_8 + (&__glOdyim_rasterPosDispatchTable + 0xC));
                    *(var_a5_8 + (temp_a4 + 0x6D8)) = *(var_a5_8 + &__glOdyim_rasterPosDispatchTable);
                    var_a6_5 -= 4;
                    *(var_a5_8 + (temp_a4 + 0x6DC)) = *(var_a5_8 + (&__glOdyim_rasterPosDispatchTable + 4));
                    temp_t0_3 = var_a5_8 + (temp_a4 + 0x6E4);
                    *(var_a5_8 + (temp_a4 + 0x6E0)) = *(var_a5_8 + (&__glOdyim_rasterPosDispatchTable + 8));
                    var_a5_8 += 0x10;
                    *temp_t0_3 = temp_a3_3;
                } while (var_a6_5 > 0);
                temp_a4->unk754 = (s32) __glOdyim_rectDispatchTable.unk1C;
                temp_a4->unk750 = (s32) __glOdyim_rectDispatchTable.unk18;
                temp_a4->unk74C = (s32) __glOdyim_rectDispatchTable.unk14;
                temp_a4->unk748 = (s32) __glOdyim_rectDispatchTable.unk10;
                temp_a4->unk744 = (s32) __glOdyim_rectDispatchTable.unkC;
                temp_a4->unk740 = (s32) __glOdyim_rectDispatchTable.unk8;
                temp_a4->unk73C = (s32) __glOdyim_rectDispatchTable.unk4;
                temp_a4->unk738 = (s32) __glOdyim_rectDispatchTable.unk0;
                var_a7 = 2;
                var_a6_6 = 0x14A;
                var_a5_9 = 0;
                temp_ra_5 = temp_a4 + 0x760;
                do {
                    var_a7 -= 1;
                    var_a6_6 -= 1;
                    temp_v1 = *(var_a5_9 + __glOdyim_dispatchTable);
                    temp_a0_2 = var_a5_9 + temp_ra_5;
                    var_a5_9 += 4;
                    *temp_a0_2 = temp_v1;
                } while (var_a7 != 0);
                sp258 = (s64) (__glOdyim_dispatchTable + 0x10);
                sp250 = (s64) (temp_ra_5 + 8);
                sp248 = (s64) (__glOdyim_dispatchTable + 8);
                do {
                    temp_t0_4 = *(var_a5_9 + (__glOdyim_dispatchTable + 0x1C));
                    *(var_a5_9 + temp_ra_5) = *(var_a5_9 + __glOdyim_dispatchTable);
                    *(var_a5_9 + (temp_ra_5 + 4)) = *(var_a5_9 + (__glOdyim_dispatchTable + 4));
                    *(var_a5_9 + sp250) = *(var_a5_9 + sp248);
                    *(var_a5_9 + (temp_ra_5 + 0xC)) = *(var_a5_9 + (__glOdyim_dispatchTable + 0xC));
                    *(var_a5_9 + (temp_ra_5 + 0x10)) = *(var_a5_9 + sp258);
                    var_a6_6 -= 8;
                    *(var_a5_9 + (temp_ra_5 + 0x14)) = *(var_a5_9 + (__glOdyim_dispatchTable + 0x14));
                    temp_t1 = var_a5_9 + (temp_ra_5 + 0x1C);
                    *(var_a5_9 + (temp_ra_5 + 0x18)) = *(var_a5_9 + (__glOdyim_dispatchTable + 0x18));
                    var_a5_9 += 0x20;
                    *temp_t1 = temp_t0_4;
                } while (var_a6_6 > 0);
                var_a6_7 = 0x18;
                var_a5_10 = 0;
                do {
                    temp_a1_2 = *(var_a5_10 + (&__glOdyim_vertexDispatchTable + 0xC));
                    *(var_a5_10 + (temp_a4 + 0xC88)) = *(var_a5_10 + &__glOdyim_vertexDispatchTable);
                    var_a6_7 -= 4;
                    *(var_a5_10 + (temp_a4 + 0xC8C)) = *(var_a5_10 + (&__glOdyim_vertexDispatchTable + 4));
                    temp_a2_3 = var_a5_10 + (temp_a4 + 0xC94);
                    *(var_a5_10 + (temp_a4 + 0xC90)) = *(var_a5_10 + (&__glOdyim_vertexDispatchTable + 8));
                    var_a5_10 += 0x10;
                    *temp_a2_3 = temp_a1_2;
                } while (var_a6_7 > 0);
                var_t0_2 = 2;
                var_a5_11 = 0x2A;
                var_a6_8 = 0;
                temp_a7_4 = temp_a4 + 0xCE8;
                do {
                    var_t0_2 -= 1;
                    var_a5_11 -= 1;
                    temp_a2_4 = *(var_a6_8 + &__glOdyim_indexDispatchTable);
                    temp_a3_4 = var_a6_8 + temp_a7_4;
                    var_a6_8 += 4;
                    *temp_a3_4 = temp_a2_4;
                } while (var_t0_2 != 0);
                temp_t9_2 = temp_a7_4 + 0x18;
                sp98 = (s64) (&__glOdyim_indexDispatchTable + 0x10);
                sp88 = (s64) (temp_a7_4 + 8);
                sp70 = (s64) (&__glOdyim_indexDispatchTable + 8);
                do {
                    temp_at_3 = *(var_a6_8 + (&__glOdyim_indexDispatchTable + 0x1C));
                    *(var_a6_8 + temp_a7_4) = *(var_a6_8 + &__glOdyim_indexDispatchTable);
                    *(var_a6_8 + (temp_a7_4 + 4)) = *(var_a6_8 + (&__glOdyim_indexDispatchTable + 4));
                    *(var_a6_8 + sp88) = *(var_a6_8 + sp70);
                    *(var_a6_8 + (temp_a7_4 + 0xC)) = *(var_a6_8 + (&__glOdyim_indexDispatchTable + 0xC));
                    *(var_a6_8 + (temp_a7_4 + 0x10)) = *(var_a6_8 + sp98);
                    var_a5_11 -= 8;
                    *(var_a6_8 + (temp_a7_4 + 0x14)) = *(var_a6_8 + (&__glOdyim_indexDispatchTable + 0x14));
                    temp_v1_2 = var_a6_8 + (temp_a7_4 + 0x1C);
                    *(var_a6_8 + temp_t9_2) = *(var_a6_8 + (&__glOdyim_indexDispatchTable + 0x18));
                    var_a6_8 += 0x20;
                    *temp_v1_2 = temp_at_3;
                } while (var_a5_11 > 0);
                temp_a4->unkD90 = (s32) __glOdyim_normalDispatchTable.unk0;
                temp_a4->unkD94 = (s32) __glOdyim_normalDispatchTable.unk4;
                temp_a4->unkD98 = (s32) __glOdyim_normalDispatchTable.unk8;
                temp_a4->unkD9C = (s32) __glOdyim_normalDispatchTable.unkC;
                temp_a4->unkDA0 = (s32) __glOdyim_normalDispatchTable.unk10;
                temp_a4->unkDA4 = (s32) __glOdyim_normalDispatchTable.unk14;
                temp_a4->unkDA8 = (s32) __glOdyim_normalDispatchTable.unk18;
                temp_a4->unkDAC = (s32) __glOdyim_normalDispatchTable.unk1C;
                temp_a4->unkDB4 = (s32) __glOdyim_normalDispatchTable.unk24;
                temp_a4->unkDB0 = (s32) __glOdyim_normalDispatchTable.unk20;
                var_a6_9 = 0x20;
                var_a5_12 = 0;
                do {
                    temp_ra_6 = *(var_a5_12 + (&__glOdyim_texCoordDispatchTable + 0xC));
                    *(var_a5_12 + (temp_a4 + 0xDB8)) = *(var_a5_12 + &__glOdyim_texCoordDispatchTable);
                    var_a6_9 -= 4;
                    *(var_a5_12 + (temp_a4 + 0xDBC)) = *(var_a5_12 + (&__glOdyim_texCoordDispatchTable + 4));
                    temp_at_4 = var_a5_12 + (temp_a4 + 0xDC4);
                    *(var_a5_12 + (temp_a4 + 0xDC0)) = *(var_a5_12 + (&__glOdyim_texCoordDispatchTable + 8));
                    var_a5_12 += 0x10;
                    *temp_at_4 = temp_ra_6;
                } while (var_a6_9 > 0);
                var_a6_10 = 0x18;
                var_a5_13 = 0;
                do {
                    temp_at_5 = *(var_a5_13 + (temp_t9_2 + 0xC));
                    *(var_a5_13 + (temp_a4 + 0xE38)) = *(var_a5_13 + temp_t9_2);
                    var_a6_10 -= 4;
                    *(var_a5_13 + (temp_a4 + 0xE3C)) = *(var_a5_13 + (temp_t9_2 + 4));
                    temp_v1_3 = var_a5_13 + (temp_a4 + 0xE44);
                    *(var_a5_13 + (temp_a4 + 0xE40)) = *(var_a5_13 + (temp_t9_2 + 8));
                    var_a5_13 += 0x10;
                    *temp_v1_3 = temp_at_5;
                } while (var_a6_10 > 0);
                temp_a4->unkEB4 = (s32) __glOdyim_rectDispatchTable.unk1C;
                temp_a4->unkEB0 = (s32) __glOdyim_rectDispatchTable.unk18;
                temp_a4->unkEAC = (s32) __glOdyim_rectDispatchTable.unk14;
                temp_a4->unkEA8 = (s32) __glOdyim_rectDispatchTable.unk10;
                temp_a4->unkEA4 = (s32) __glOdyim_rectDispatchTable.unkC;
                temp_a4->unkEA0 = (s32) __glOdyim_rectDispatchTable.unk8;
                temp_a4->unkE9C = (s32) __glOdyim_rectDispatchTable.unk4;
                temp_a4->unkE98 = (s32) __glOdyim_rectDispatchTable.unk0;
                var_a7_2 = 2;
                var_a6_11 = 0x14A;
                var_a5_14 = 0;
                temp_ra_7 = temp_a4 + 0xEC0;
                do {
                    var_a7_2 -= 1;
                    var_a6_11 -= 1;
                    temp_t3_2 = *(var_a5_14 + &__glOdyim_softClipDispatchTable);
                    temp_t8 = var_a5_14 + temp_ra_7;
                    var_a5_14 += 4;
                    *temp_t8 = temp_t3_2;
                } while (var_a7_2 != 0);
                sp240 = (s64) (&__glOdyim_softClipDispatchTable + 0xC);
                sp238 = (s64) (temp_ra_7 + 4);
                sp230 = (s64) (&__glOdyim_softClipDispatchTable + 4);
                do {
                    temp_v1_4 = *(var_a5_14 + (&__glOdyim_softClipDispatchTable + 0x1C));
                    *(var_a5_14 + temp_ra_7) = *(var_a5_14 + &__glOdyim_softClipDispatchTable);
                    *(var_a5_14 + sp238) = *(var_a5_14 + sp230);
                    *(var_a5_14 + (temp_ra_7 + 8)) = *(var_a5_14 + (&__glOdyim_softClipDispatchTable + 8));
                    *(var_a5_14 + (temp_ra_7 + 0xC)) = *(var_a5_14 + sp240);
                    *(var_a5_14 + (temp_ra_7 + 0x10)) = *(var_a5_14 + (&__glOdyim_softClipDispatchTable + 0x10));
                    var_a6_11 -= 8;
                    *(var_a5_14 + (temp_ra_7 + 0x14)) = *(var_a5_14 + (&__glOdyim_softClipDispatchTable + 0x14));
                    temp_a2_5 = var_a5_14 + (temp_ra_7 + 0x1C);
                    *(var_a5_14 + (temp_ra_7 + 0x18)) = *(var_a5_14 + (&__glOdyim_softClipDispatchTable + 0x18));
                    var_a5_14 += 0x20;
                    *temp_a2_5 = temp_v1_4;
                } while (var_a6_11 > 0);
                if (sp0->unk-621E != 0) {
                    var_a6_12 = 0x18;
                    var_a5_15 = 0;
                    do {
                        temp_a1_3 = *(var_a5_15 + (&__glOdyim_softClipVertexDispatchTableFast + 0xC));
                        *(var_a5_15 + (temp_a4 + 0x13E8)) = *(var_a5_15 + &__glOdyim_softClipVertexDispatchTableFast);
                        var_a6_12 -= 4;
                        *(var_a5_15 + (temp_a4 + 0x13EC)) = *(var_a5_15 + (&__glOdyim_softClipVertexDispatchTableFast + 4));
                        temp_a2_6 = var_a5_15 + (temp_a4 + 0x13F4);
                        *(var_a5_15 + (temp_a4 + 0x13F0)) = *(var_a5_15 + (&__glOdyim_softClipVertexDispatchTableFast + 8));
                        var_a5_15 += 0x10;
                        *temp_a2_6 = temp_a1_3;
                    } while (var_a6_12 > 0);
                } else {
                    var_a6_13 = 0x18;
                    var_a5_16 = 0;
                    do {
                        temp_at_6 = *(var_a5_16 + (&__glOdyim_softClipVertexDispatchTable + 0xC));
                        *(var_a5_16 + (temp_a4 + 0x13E8)) = *(var_a5_16 + &__glOdyim_softClipVertexDispatchTable);
                        var_a6_13 -= 4;
                        *(var_a5_16 + (temp_a4 + 0x13EC)) = *(var_a5_16 + (&__glOdyim_softClipVertexDispatchTable + 4));
                        temp_v0_4 = var_a5_16 + (temp_a4 + 0x13F4);
                        *(var_a5_16 + (temp_a4 + 0x13F0)) = *(var_a5_16 + (&__glOdyim_softClipVertexDispatchTable + 8));
                        var_a5_16 += 0x10;
                        *temp_v0_4 = temp_at_6;
                    } while (var_a6_13 > 0);
                }
                var_t8 = 2;
                var_a5_17 = 0x2A;
                var_a6_14 = 0;
                temp_a7_5 = temp_a4 + 0x1448;
                do {
                    var_t8 -= 1;
                    var_a5_17 -= 1;
                    temp_a2_7 = *(var_a6_14 + &__glOdyim_softClipColorDispatchTable);
                    temp_a3_5 = var_a6_14 + temp_a7_5;
                    var_a6_14 += 4;
                    *temp_a3_5 = temp_a2_7;
                } while (var_t8 != 0);
                sp18 = (s64) (&__glOdyim_softClipColorDispatchTable + 0x10);
                sp10 = (s64) (temp_a7_5 + 8);
                sp8 = (s64) (&__glOdyim_softClipColorDispatchTable + 8);
                do {
                    temp_v1_5 = *(var_a6_14 + (&__glOdyim_softClipColorDispatchTable + 0x1C));
                    *(var_a6_14 + temp_a7_5) = *(var_a6_14 + &__glOdyim_softClipColorDispatchTable);
                    *(var_a6_14 + (temp_a7_5 + 4)) = *(var_a6_14 + (&__glOdyim_softClipColorDispatchTable + 4));
                    *(var_a6_14 + sp10) = *(var_a6_14 + sp8);
                    *(var_a6_14 + (temp_a7_5 + 0xC)) = *(var_a6_14 + (&__glOdyim_softClipColorDispatchTable + 0xC));
                    *(var_a6_14 + (temp_a7_5 + 0x10)) = *(var_a6_14 + sp18);
                    var_a5_17 -= 8;
                    *(var_a6_14 + (temp_a7_5 + 0x14)) = *(var_a6_14 + (&__glOdyim_softClipColorDispatchTable + 0x14));
                    temp_a2_8 = var_a6_14 + (temp_a7_5 + 0x1C);
                    *(var_a6_14 + (temp_a7_5 + 0x18)) = *(var_a6_14 + (&__glOdyim_softClipColorDispatchTable + 0x18));
                    var_a6_14 += 0x20;
                    *temp_a2_8 = temp_v1_5;
                } while (var_a5_17 > 0);
                temp_a4->unk14F0 = (s32) __glSoftim_normalDispatchTable.unk0;
                temp_a4->unk14F4 = (s32) __glSoftim_normalDispatchTable.unk4;
                temp_a4->unk14F8 = (s32) __glSoftim_normalDispatchTable.unk8;
                temp_a4->unk14FC = (s32) __glSoftim_normalDispatchTable.unkC;
                temp_a4->unk1500 = (s32) __glSoftim_normalDispatchTable.unk10;
                temp_a4->unk1504 = (s32) __glSoftim_normalDispatchTable.unk14;
                temp_a4->unk1508 = (s32) __glSoftim_normalDispatchTable.unk18;
                temp_a4->unk150C = (s32) __glSoftim_normalDispatchTable.unk1C;
                temp_a4->unk1514 = (s32) __glSoftim_normalDispatchTable.unk24;
                temp_a4->unk1510 = (s32) __glSoftim_normalDispatchTable.unk20;
                var_a6_15 = 0x20;
                var_a5_18 = 0;
                do {
                    temp_t9_3 = *(var_a5_18 + (&__glSoftim_texCoordDispatchTable + 0xC));
                    *(var_a5_18 + (temp_a4 + 0x1518)) = *(var_a5_18 + &__glSoftim_texCoordDispatchTable);
                    var_a6_15 -= 4;
                    *(var_a5_18 + (temp_a4 + 0x151C)) = *(var_a5_18 + (&__glSoftim_texCoordDispatchTable + 4));
                    temp_ra_8 = var_a5_18 + (temp_a4 + 0x1524);
                    *(var_a5_18 + (temp_a4 + 0x1520)) = *(var_a5_18 + (&__glSoftim_texCoordDispatchTable + 8));
                    var_a5_18 += 0x10;
                    *temp_ra_8 = temp_t9_3;
                } while (var_a6_15 > 0);
                var_a6_16 = 0x18;
                var_a5_19 = 0;
                do {
                    temp_t9_4 = *(var_a5_19 + (&__glOdyim_rasterPosDispatchTable + 0xC));
                    *(var_a5_19 + (temp_a4 + 0x1598)) = *(var_a5_19 + &__glOdyim_rasterPosDispatchTable);
                    var_a6_16 -= 4;
                    *(var_a5_19 + (temp_a4 + 0x159C)) = *(var_a5_19 + (&__glOdyim_rasterPosDispatchTable + 4));
                    temp_ra_9 = var_a5_19 + (temp_a4 + 0x15A4);
                    *(var_a5_19 + (temp_a4 + 0x15A0)) = *(var_a5_19 + (&__glOdyim_rasterPosDispatchTable + 8));
                    var_a5_19 += 0x10;
                    *temp_ra_9 = temp_t9_4;
                } while (var_a6_16 > 0);
                temp_a4->unk1614 = (s32) __glOdyim_rectDispatchTable.unk1C;
                temp_a4->unk1610 = (s32) __glOdyim_rectDispatchTable.unk18;
                temp_a4->unk160C = (s32) __glOdyim_rectDispatchTable.unk14;
                temp_a4->unk1608 = (s32) __glOdyim_rectDispatchTable.unk10;
                temp_a4->unk1604 = (s32) __glOdyim_rectDispatchTable.unkC;
                temp_a4->unk1600 = (s32) __glOdyim_rectDispatchTable.unk8;
                temp_a4->unk15FC = (s32) __glOdyim_rectDispatchTable.unk4;
                temp_a4->unk15F8 = (s32) __glOdyim_rectDispatchTable.unk0;
                var_a7_3 = 2;
                var_a5_20 = 0x14A;
                var_a6_17 = 0;
                temp_s0 = temp_a4 + 0x1620;
                do {
                    var_a7_3 -= 1;
                    var_a5_20 -= 1;
                    temp_t0_5 = *(var_a6_17 + &__glOdyim_softClipDispatchTable);
                    temp_t1_2 = var_a6_17 + temp_s0;
                    var_a6_17 += 4;
                    *temp_t1_2 = temp_t0_5;
                } while (var_a7_3 != 0);
                sp198 = (s64) (&__glOdyim_softClipDispatchTable + 0xC);
                sp190 = (s64) (temp_s0 + 4);
                sp188 = (s64) (&__glOdyim_softClipDispatchTable + 4);
                do {
                    temp_t8_2 = *(var_a6_17 + (&__glOdyim_softClipDispatchTable + 0x1C));
                    *(var_a6_17 + temp_s0) = *(var_a6_17 + &__glOdyim_softClipDispatchTable);
                    *(var_a6_17 + sp190) = *(var_a6_17 + sp188);
                    *(var_a6_17 + (temp_s0 + 8)) = *(var_a6_17 + (&__glOdyim_softClipDispatchTable + 8));
                    *(var_a6_17 + (temp_s0 + 0xC)) = *(var_a6_17 + sp198);
                    *(var_a6_17 + (temp_s0 + 0x10)) = *(var_a6_17 + (&__glOdyim_softClipDispatchTable + 0x10));
                    var_a5_20 -= 8;
                    *(var_a6_17 + (temp_s0 + 0x14)) = *(var_a6_17 + (&__glOdyim_softClipDispatchTable + 0x14));
                    temp_at_7 = var_a6_17 + (temp_s0 + 0x1C);
                    *(var_a6_17 + (temp_s0 + 0x18)) = *(var_a6_17 + (&__glOdyim_softClipDispatchTable + 0x18));
                    var_a6_17 += 0x20;
                    *temp_at_7 = temp_t8_2;
                } while (var_a5_20 > 0);
                var_a6_18 = 0x18;
                var_a5_21 = 0;
                do {
                    temp_t9_5 = *(var_a5_21 + (&__glOdyim_softClipVertexDispatchTable + 0xC));
                    *(var_a5_21 + (temp_a4 + 0x1B48)) = *(var_a5_21 + &__glOdyim_softClipVertexDispatchTable);
                    var_a6_18 -= 4;
                    *(var_a5_21 + (temp_a4 + 0x1B4C)) = *(var_a5_21 + (&__glOdyim_softClipVertexDispatchTable + 4));
                    temp_ra_10 = var_a5_21 + (temp_a4 + 0x1B54);
                    *(var_a5_21 + (temp_a4 + 0x1B50)) = *(var_a5_21 + (&__glOdyim_softClipVertexDispatchTable + 8));
                    var_a5_21 += 0x10;
                    *temp_ra_10 = temp_t9_5;
                } while (var_a6_18 > 0);
                var_t8_2 = 2;
                var_a5_22 = 0x2A;
                var_a6_19 = 0;
                temp_a7_6 = temp_a4 + 0x1BA8;
                do {
                    var_t8_2 -= 1;
                    var_a5_22 -= 1;
                    temp_ra_11 = *(var_a6_19 + &__glOdyim_softClipIndexDispatchTable);
                    temp_at_8 = var_a6_19 + temp_a7_6;
                    var_a6_19 += 4;
                    *temp_at_8 = temp_ra_11;
                } while (var_t8_2 != 0);
                sp140 = (s64) (temp_a7_6 + 0x10);
                sp138 = (s64) (&__glOdyim_softClipIndexDispatchTable + 0x10);
                sp130 = (s64) (temp_a7_6 + 8);
                sp128 = (s64) (&__glOdyim_softClipIndexDispatchTable + 8);
                do {
                    temp_s1_2 = *(var_a6_19 + (&__glOdyim_softClipIndexDispatchTable + 0x1C));
                    *(var_a6_19 + temp_a7_6) = *(var_a6_19 + &__glOdyim_softClipIndexDispatchTable);
                    *(var_a6_19 + (temp_a7_6 + 4)) = *(var_a6_19 + (&__glOdyim_softClipIndexDispatchTable + 4));
                    *(var_a6_19 + sp130) = *(var_a6_19 + sp128);
                    *(var_a6_19 + (temp_a7_6 + 0xC)) = *(var_a6_19 + (&__glOdyim_softClipIndexDispatchTable + 0xC));
                    *(var_a6_19 + sp140) = *(var_a6_19 + sp138);
                    var_a5_22 -= 8;
                    *(var_a6_19 + (temp_a7_6 + 0x14)) = *(var_a6_19 + (&__glOdyim_softClipIndexDispatchTable + 0x14));
                    temp_s3 = var_a6_19 + (temp_a7_6 + 0x1C);
                    *(var_a6_19 + (temp_a7_6 + 0x18)) = *(var_a6_19 + (&__glOdyim_softClipIndexDispatchTable + 0x18));
                    var_a6_19 += 0x20;
                    *temp_s3 = temp_s1_2;
                } while (var_a5_22 > 0);
                temp_a4->unk1C50 = (s32) __glSoftim_normalDispatchTable.unk0;
                temp_a4->unk1C54 = (s32) __glSoftim_normalDispatchTable.unk4;
                temp_a4->unk1C58 = (s32) __glSoftim_normalDispatchTable.unk8;
                temp_a4->unk1C5C = (s32) __glSoftim_normalDispatchTable.unkC;
                temp_a4->unk1C60 = (s32) __glSoftim_normalDispatchTable.unk10;
                temp_a4->unk1C64 = (s32) __glSoftim_normalDispatchTable.unk14;
                temp_a4->unk1C68 = (s32) __glSoftim_normalDispatchTable.unk18;
                temp_a4->unk1C6C = (s32) __glSoftim_normalDispatchTable.unk1C;
                temp_a4->unk1C74 = (s32) __glSoftim_normalDispatchTable.unk24;
                temp_a4->unk1C70 = (s32) __glSoftim_normalDispatchTable.unk20;
                var_a6_20 = 0x20;
                var_a5_23 = 0;
                do {
                    temp_t9_6 = *(var_a5_23 + (&__glOdyim_texCoordDispatchTable + 0xC));
                    *(var_a5_23 + (temp_a4 + 0x1C78)) = *(var_a5_23 + &__glOdyim_texCoordDispatchTable);
                    var_a6_20 -= 4;
                    *(var_a5_23 + (temp_a4 + 0x1C7C)) = *(var_a5_23 + (&__glOdyim_texCoordDispatchTable + 4));
                    temp_ra_12 = var_a5_23 + (temp_a4 + 0x1C84);
                    *(var_a5_23 + (temp_a4 + 0x1C80)) = *(var_a5_23 + (&__glOdyim_texCoordDispatchTable + 8));
                    var_a5_23 += 0x10;
                    *temp_ra_12 = temp_t9_6;
                } while (var_a6_20 > 0);
                var_a6_21 = 0x18;
                var_a5_24 = 0;
                do {
                    temp_ra_13 = *(var_a5_24 + (&__glOdyim_rasterPosDispatchTable + 0xC));
                    *(var_a5_24 + (temp_a4 + 0x1CF8)) = *(var_a5_24 + &__glOdyim_rasterPosDispatchTable);
                    var_a6_21 -= 4;
                    *(var_a5_24 + (temp_a4 + 0x1CFC)) = *(var_a5_24 + (&__glOdyim_rasterPosDispatchTable + 4));
                    temp_at_9 = var_a5_24 + (temp_a4 + 0x1D04);
                    *(var_a5_24 + (temp_a4 + 0x1D00)) = *(var_a5_24 + (&__glOdyim_rasterPosDispatchTable + 8));
                    var_a5_24 += 0x10;
                    *temp_at_9 = temp_ra_13;
                } while (var_a6_21 > 0);
                temp_a4->unk1D74 = (s32) __glOdyim_rectDispatchTable.unk1C;
                temp_a4->unk1D70 = (s32) __glOdyim_rectDispatchTable.unk18;
                temp_a4->unk1D6C = (s32) __glOdyim_rectDispatchTable.unk14;
                temp_a4->unk1D68 = (s32) __glOdyim_rectDispatchTable.unk10;
                temp_a4->unk1D64 = (s32) __glOdyim_rectDispatchTable.unkC;
                temp_a4->unk1D60 = (s32) __glOdyim_rectDispatchTable.unk8;
                temp_a4->unk1D5C = (s32) __glOdyim_rectDispatchTable.unk4;
                temp_a4->unk1D58 = (s32) __glOdyim_rectDispatchTable.unk0;
                var_a7_4 = 2;
                var_a5_25 = 0x14A;
                var_a6_22 = 0;
                temp_ra_14 = temp_a4 + 0x1D80;
                do {
                    var_a7_4 -= 1;
                    var_a5_25 -= 1;
                    temp_t1_3 = *(var_a6_22 + __glOdyim_dispatchTable);
                    temp_t2_3 = var_a6_22 + temp_ra_14;
                    var_a6_22 += 4;
                    *temp_t2_3 = temp_t1_3;
                } while (var_a7_4 != 0);
                sp1E0 = (s64) (__glOdyim_dispatchTable + 0x10);
                sp1E8 = (s64) (temp_ra_14 + 8);
                sp1F0 = (s64) (__glOdyim_dispatchTable + 8);
                do {
                    temp_at_10 = *(var_a6_22 + (__glOdyim_dispatchTable + 0x1C));
                    *(var_a6_22 + temp_ra_14) = *(var_a6_22 + __glOdyim_dispatchTable);
                    *(var_a6_22 + (temp_ra_14 + 4)) = *(var_a6_22 + (__glOdyim_dispatchTable + 4));
                    *(var_a6_22 + sp1E8) = *(var_a6_22 + sp1F0);
                    *(var_a6_22 + (temp_ra_14 + 0xC)) = *(var_a6_22 + (__glOdyim_dispatchTable + 0xC));
                    *(var_a6_22 + (temp_ra_14 + 0x10)) = *(var_a6_22 + sp1E0);
                    var_a5_25 -= 8;
                    *(var_a6_22 + (temp_ra_14 + 0x14)) = *(var_a6_22 + (__glOdyim_dispatchTable + 0x14));
                    temp_v1_6 = var_a6_22 + (temp_ra_14 + 0x1C);
                    *(var_a6_22 + (temp_ra_14 + 0x18)) = *(var_a6_22 + (__glOdyim_dispatchTable + 0x18));
                    var_a6_22 += 0x20;
                    *temp_v1_6 = temp_at_10;
                } while (var_a5_25 > 0);
                var_a5_26 = 0x18;
                var_a6_23 = 0;
                do {
                    temp_t2_4 = *(var_a6_23 + (&__glOdyim_iglooVertexDispatchTable + 0xC));
                    *(var_a6_23 + (temp_a4 + 0x22A8)) = *(var_a6_23 + &__glOdyim_iglooVertexDispatchTable);
                    var_a5_26 -= 4;
                    *(var_a6_23 + (temp_a4 + 0x22AC)) = *(var_a6_23 + (&__glOdyim_iglooVertexDispatchTable + 4));
                    temp_t9_7 = var_a6_23 + (temp_a4 + 0x22B4);
                    *(var_a6_23 + (temp_a4 + 0x22B0)) = *(var_a6_23 + (&__glOdyim_iglooVertexDispatchTable + 8));
                    var_a6_23 += 0x10;
                    *temp_t9_7 = temp_t2_4;
                } while (var_a5_26 > 0);
                var_t8_3 = 2;
                var_a6_24 = 0x2A;
                var_a5_27 = 0;
                temp_a7_7 = temp_a4 + 0x2308;
                do {
                    var_t8_3 -= 1;
                    var_a6_24 -= 1;
                    temp_t9_8 = *(var_a5_27 + &__glOdyim_colorDispatchTable);
                    temp_ra_15 = var_a5_27 + temp_a7_7;
                    var_a5_27 += 4;
                    *temp_ra_15 = temp_t9_8;
                } while (var_t8_3 != 0);
                sp40 = (s64) (&__glOdyim_colorDispatchTable + 0x10);
                sp30 = (s64) (temp_a7_7 + 8);
                sp28 = (s64) (&__glOdyim_colorDispatchTable + 8);
                do {
                    temp_a3_6 = *(var_a5_27 + (&__glOdyim_colorDispatchTable + 0x1C));
                    *(var_a5_27 + temp_a7_7) = *(var_a5_27 + &__glOdyim_colorDispatchTable);
                    *(var_a5_27 + (temp_a7_7 + 4)) = *(var_a5_27 + (&__glOdyim_colorDispatchTable + 4));
                    *(var_a5_27 + sp30) = *(var_a5_27 + sp28);
                    *(var_a5_27 + (temp_a7_7 + 0xC)) = *(var_a5_27 + (&__glOdyim_colorDispatchTable + 0xC));
                    *(var_a5_27 + (temp_a7_7 + 0x10)) = *(var_a5_27 + sp40);
                    var_a6_24 -= 8;
                    *(var_a5_27 + (temp_a7_7 + 0x14)) = *(var_a5_27 + (&__glOdyim_colorDispatchTable + 0x14));
                    temp_s1_3 = var_a5_27 + (temp_a7_7 + 0x1C);
                    *(var_a5_27 + (temp_a7_7 + 0x18)) = *(var_a5_27 + (&__glOdyim_colorDispatchTable + 0x18));
                    var_a5_27 += 0x20;
                    *temp_s1_3 = temp_a3_6;
                } while (var_a6_24 > 0);
                temp_a4->unk23B0 = (s32) __glOdyim_normalDispatchTable.unk0;
                temp_a4->unk23B4 = (s32) __glOdyim_normalDispatchTable.unk4;
                temp_a4->unk23B8 = (s32) __glOdyim_normalDispatchTable.unk8;
                temp_a4->unk23BC = (s32) __glOdyim_normalDispatchTable.unkC;
                temp_a4->unk23C0 = (s32) __glOdyim_normalDispatchTable.unk10;
                temp_a4->unk23C4 = (s32) __glOdyim_normalDispatchTable.unk14;
                temp_a4->unk23C8 = (s32) __glOdyim_normalDispatchTable.unk18;
                temp_a4->unk23CC = (s32) __glOdyim_normalDispatchTable.unk1C;
                temp_a4->unk23D4 = (s32) __glOdyim_normalDispatchTable.unk24;
                temp_a4->unk23D0 = (s32) __glOdyim_normalDispatchTable.unk20;
                var_a6_25 = 0x20;
                var_a5_28 = 0;
                do {
                    temp_t9_9 = *(var_a5_28 + (&__glOdyim_texCoordDispatchTable + 0xC));
                    *(var_a5_28 + (temp_a4 + 0x23D8)) = *(var_a5_28 + &__glOdyim_texCoordDispatchTable);
                    var_a6_25 -= 4;
                    *(var_a5_28 + (temp_a4 + 0x23DC)) = *(var_a5_28 + (&__glOdyim_texCoordDispatchTable + 4));
                    temp_ra_16 = var_a5_28 + (temp_a4 + 0x23E4);
                    *(var_a5_28 + (temp_a4 + 0x23E0)) = *(var_a5_28 + (&__glOdyim_texCoordDispatchTable + 8));
                    var_a5_28 += 0x10;
                    *temp_ra_16 = temp_t9_9;
                } while (var_a6_25 > 0);
                var_a5_29 = 0x18;
                var_a6_26 = 0;
                do {
                    temp_t2_5 = *(var_a6_26 + (&__glOdyim_rasterPosDispatchTable + 0xC));
                    *(var_a6_26 + (temp_a4 + 0x2458)) = *(var_a6_26 + &__glOdyim_rasterPosDispatchTable);
                    var_a5_29 -= 4;
                    *(var_a6_26 + (temp_a4 + 0x245C)) = *(var_a6_26 + (&__glOdyim_rasterPosDispatchTable + 4));
                    temp_t9_10 = var_a6_26 + (temp_a4 + 0x2464);
                    *(var_a6_26 + (temp_a4 + 0x2460)) = *(var_a6_26 + (&__glOdyim_rasterPosDispatchTable + 8));
                    var_a6_26 += 0x10;
                    *temp_t9_10 = temp_t2_5;
                } while (var_a5_29 > 0);
                temp_a4->unk24D4 = (s32) __glOdyim_rectDispatchTable.unk1C;
                temp_a4->unk24D0 = (s32) __glOdyim_rectDispatchTable.unk18;
                temp_a4->unk24CC = (s32) __glOdyim_rectDispatchTable.unk14;
                temp_a4->unk24C8 = (s32) __glOdyim_rectDispatchTable.unk10;
                temp_a4->unk24C4 = (s32) __glOdyim_rectDispatchTable.unkC;
                temp_a4->unk24C0 = (s32) __glOdyim_rectDispatchTable.unk8;
                temp_a4->unk24BC = (s32) __glOdyim_rectDispatchTable.unk4;
                temp_a4->unk24B8 = (s32) __glOdyim_rectDispatchTable.unk0;
                var_a7_5 = 2;
                var_a6_27 = 0x14A;
                var_a5_30 = 0;
                temp_ra_17 = temp_a4 + 0x24E0;
                do {
                    var_a7_5 -= 1;
                    var_a6_27 -= 1;
                    temp_a3_7 = *(var_a5_30 + __glOdyim_dispatchTable);
                    temp_t0_6 = var_a5_30 + temp_ra_17;
                    var_a5_30 += 4;
                    *temp_t0_6 = temp_a3_7;
                } while (var_a7_5 != 0);
                sp220 = (s64) (__glOdyim_dispatchTable + 0xC);
                sp210 = (s64) (temp_ra_17 + 4);
                sp200 = (s64) (__glOdyim_dispatchTable + 4);
                do {
                    temp_t2_6 = *(var_a5_30 + (__glOdyim_dispatchTable + 0x1C));
                    *(var_a5_30 + temp_ra_17) = *(var_a5_30 + __glOdyim_dispatchTable);
                    *(var_a5_30 + sp210) = *(var_a5_30 + sp200);
                    *(var_a5_30 + (temp_ra_17 + 8)) = *(var_a5_30 + (__glOdyim_dispatchTable + 8));
                    *(var_a5_30 + (temp_ra_17 + 0xC)) = *(var_a5_30 + sp220);
                    *(var_a5_30 + (temp_ra_17 + 0x10)) = *(var_a5_30 + (__glOdyim_dispatchTable + 0x10));
                    var_a6_27 -= 8;
                    *(var_a5_30 + (temp_ra_17 + 0x14)) = *(var_a5_30 + (__glOdyim_dispatchTable + 0x14));
                    temp_t3_3 = var_a5_30 + (temp_ra_17 + 0x1C);
                    *(var_a5_30 + (temp_ra_17 + 0x18)) = *(var_a5_30 + (__glOdyim_dispatchTable + 0x18));
                    var_a5_30 += 0x20;
                    *temp_t3_3 = temp_t2_6;
                } while (var_a6_27 > 0);
                var_a5_31 = 0x18;
                var_a6_28 = 0;
                do {
                    temp_t2_7 = *(var_a6_28 + (&__glOdyim_iglooVertexDispatchTable + 0xC));
                    *(var_a6_28 + (temp_a4 + 0x2A08)) = *(var_a6_28 + &__glOdyim_iglooVertexDispatchTable);
                    var_a5_31 -= 4;
                    *(var_a6_28 + (temp_a4 + 0x2A0C)) = *(var_a6_28 + (&__glOdyim_iglooVertexDispatchTable + 4));
                    temp_t9_11 = var_a6_28 + (temp_a4 + 0x2A14);
                    *(var_a6_28 + (temp_a4 + 0x2A10)) = *(var_a6_28 + (&__glOdyim_iglooVertexDispatchTable + 8));
                    var_a6_28 += 0x10;
                    *temp_t9_11 = temp_t2_7;
                } while (var_a5_31 > 0);
                var_t3 = 2;
                var_a6_29 = 0x2A;
                var_a5_32 = 0;
                temp_a7_8 = temp_a4 + 0x2A68;
                do {
                    var_t3 -= 1;
                    var_a6_29 -= 1;
                    temp_t8_3 = *(var_a5_32 + &__glOdyim_indexDispatchTable);
                    temp_t9_12 = var_a5_32 + temp_a7_8;
                    var_a5_32 += 4;
                    *temp_t9_12 = temp_t8_3;
                } while (var_t3 != 0);
                sp68 = (s64) (&__glOdyim_indexDispatchTable + 0x10);
                sp60 = (s64) (temp_a7_8 + 8);
                sp58 = (s64) (&__glOdyim_indexDispatchTable + 8);
                do {
                    temp_a3_8 = *(var_a5_32 + (&__glOdyim_indexDispatchTable + 0x1C));
                    *(var_a5_32 + temp_a7_8) = *(var_a5_32 + &__glOdyim_indexDispatchTable);
                    *(var_a5_32 + (temp_a7_8 + 4)) = *(var_a5_32 + (&__glOdyim_indexDispatchTable + 4));
                    *(var_a5_32 + sp60) = *(var_a5_32 + sp58);
                    *(var_a5_32 + (temp_a7_8 + 0xC)) = *(var_a5_32 + (&__glOdyim_indexDispatchTable + 0xC));
                    *(var_a5_32 + (temp_a7_8 + 0x10)) = *(var_a5_32 + sp68);
                    var_a6_29 -= 8;
                    *(var_a5_32 + (temp_a7_8 + 0x14)) = *(var_a5_32 + (&__glOdyim_indexDispatchTable + 0x14));
                    temp_t3_4 = var_a5_32 + (temp_a7_8 + 0x1C);
                    *(var_a5_32 + (temp_a7_8 + 0x18)) = *(var_a5_32 + (&__glOdyim_indexDispatchTable + 0x18));
                    var_a5_32 += 0x20;
                    *temp_t3_4 = temp_a3_8;
                } while (var_a6_29 > 0);
                temp_a4->unk2B10 = (s32) __glOdyim_normalDispatchTable.unk0;
                temp_a4->unk2B14 = (s32) __glOdyim_normalDispatchTable.unk4;
                temp_a4->unk2B18 = (s32) __glOdyim_normalDispatchTable.unk8;
                temp_a4->unk2B1C = (s32) __glOdyim_normalDispatchTable.unkC;
                temp_a4->unk2B20 = (s32) __glOdyim_normalDispatchTable.unk10;
                temp_a4->unk2B24 = (s32) __glOdyim_normalDispatchTable.unk14;
                temp_a4->unk2B28 = (s32) __glOdyim_normalDispatchTable.unk18;
                temp_a4->unk2B2C = (s32) __glOdyim_normalDispatchTable.unk1C;
                temp_a4->unk2B34 = (s32) __glOdyim_normalDispatchTable.unk24;
                temp_a4->unk2B30 = (s32) __glOdyim_normalDispatchTable.unk20;
                var_a6_30 = 0x20;
                var_a5_33 = 0;
                do {
                    temp_a2_9 = *(var_a5_33 + (&__glOdyim_texCoordDispatchTable + 0xC));
                    *(var_a5_33 + (temp_a4 + 0x2B38)) = *(var_a5_33 + &__glOdyim_texCoordDispatchTable);
                    var_a6_30 -= 4;
                    *(var_a5_33 + (temp_a4 + 0x2B3C)) = *(var_a5_33 + (&__glOdyim_texCoordDispatchTable + 4));
                    temp_a3_9 = var_a5_33 + (temp_a4 + 0x2B44);
                    *(var_a5_33 + (temp_a4 + 0x2B40)) = *(var_a5_33 + (&__glOdyim_texCoordDispatchTable + 8));
                    var_a5_33 += 0x10;
                    *temp_a3_9 = temp_a2_9;
                } while (var_a6_30 > 0);
                var_a5_34 = 0x18;
                var_a6_31 = 0;
                do {
                    temp_a3_10 = *(var_a6_31 + (__glOdyim_normalDispatchTable.unk18 + 0xC));
                    *(var_a6_31 + (temp_a4 + 0x2BB8)) = *(var_a6_31 + __glOdyim_normalDispatchTable.unk18);
                    var_a5_34 -= 4;
                    *(var_a6_31 + (temp_a4 + 0x2BBC)) = *(var_a6_31 + (__glOdyim_normalDispatchTable.unk18 + 4));
                    temp_a7_9 = var_a6_31 + (temp_a4 + 0x2BC4);
                    *(var_a6_31 + (temp_a4 + 0x2BC0)) = *(var_a6_31 + (__glOdyim_normalDispatchTable.unk18 + 8));
                    var_a6_31 += 0x10;
                    *temp_a7_9 = temp_a3_10;
                } while (var_a5_34 > 0);
                temp_a4->unk2C34 = (s32) __glOdyim_rectDispatchTable.unk1C;
                temp_a4->unk2C30 = (s32) __glOdyim_rectDispatchTable.unk18;
                temp_a4->unk2C2C = (s32) __glOdyim_rectDispatchTable.unk14;
                temp_a4->unk2C28 = (s32) __glOdyim_rectDispatchTable.unk10;
                temp_a4->unk2C24 = (s32) __glOdyim_rectDispatchTable.unkC;
                temp_a4->unk2C20 = (s32) __glOdyim_rectDispatchTable.unk8;
                temp_a4->unk2C1C = (s32) __glOdyim_rectDispatchTable.unk4;
                temp_a4->unk2C18 = (s32) __glOdyim_rectDispatchTable.unk0;
                var_t3_2 = 2;
                var_a6_32 = 0x14A;
                var_a7_6 = 0;
                temp_ra_18 = temp_a4 + 0x2C40;
                do {
                    var_t3_2 -= 1;
                    var_a6_32 -= 1;
                    temp_a0_3 = *(var_a7_6 + &__glOdyim_softClipDispatchTable);
                    temp_a1_4 = var_a7_6 + temp_ra_18;
                    var_a7_6 += 4;
                    *temp_a1_4 = temp_a0_3;
                } while (var_t3_2 != 0);
                sp228 = (s64) (temp_ra_18 + 4);
                sp218 = (s64) (&__glOdyim_softClipDispatchTable + 4);
                sp1D8 = (s64) (&__glOdyim_softClipDispatchTable + 8);
                var_a5_35 = var_a7_6;
                do {
                    temp_a7_10 = *(var_a5_35 + (&__glOdyim_softClipDispatchTable + 0x1C));
                    *(var_a5_35 + temp_ra_18) = *(var_a5_35 + &__glOdyim_softClipDispatchTable);
                    *(var_a5_35 + sp228) = *(var_a5_35 + sp218);
                    *(var_a5_35 + (temp_ra_18 + 8)) = *(var_a5_35 + sp1D8);
                    *(var_a5_35 + (temp_ra_18 + 0xC)) = *(var_a5_35 + (&__glOdyim_softClipDispatchTable + 0xC));
                    *(var_a5_35 + (temp_ra_18 + 0x10)) = *(var_a5_35 + (&__glOdyim_softClipDispatchTable + 0x10));
                    var_a6_32 -= 8;
                    *(var_a5_35 + (temp_ra_18 + 0x14)) = *(var_a5_35 + (&__glOdyim_softClipDispatchTable + 0x14));
                    temp_t0_7 = var_a5_35 + (temp_ra_18 + 0x1C);
                    *(var_a5_35 + (temp_ra_18 + 0x18)) = *(var_a5_35 + (&__glOdyim_softClipDispatchTable + 0x18));
                    var_a5_35 += 0x20;
                    *temp_t0_7 = temp_a7_10;
                } while (var_a6_32 > 0);
                var_a5_36 = 0x18;
                var_a6_33 = 0;
                do {
                    temp_ra_19 = *(var_a6_33 + (&__glOdyim_softClipVertexDispatchTable + 0xC));
                    *(var_a6_33 + (temp_a4 + 0x3168)) = *(var_a6_33 + &__glOdyim_softClipVertexDispatchTable);
                    var_a5_36 -= 4;
                    *(var_a6_33 + (temp_a4 + 0x316C)) = *(var_a6_33 + (&__glOdyim_softClipVertexDispatchTable + 4));
                    temp_at_11 = var_a6_33 + (temp_a4 + 0x3174);
                    *(var_a6_33 + (temp_a4 + 0x3170)) = *(var_a6_33 + (&__glOdyim_softClipVertexDispatchTable + 8));
                    var_a6_33 += 0x10;
                    *temp_at_11 = temp_ra_19;
                } while (var_a5_36 > 0);
                var_t3_3 = 2;
                var_a6_34 = 0x2A;
                var_a5_37 = 0;
                temp_a7_11 = temp_a4 + 0x31C8;
                do {
                    var_t3_3 -= 1;
                    var_a6_34 -= 1;
                    temp_at_12 = *(var_a5_37 + &__glOdyim_softClipColorDispatchTable);
                    temp_v0_5 = var_a5_37 + temp_a7_11;
                    var_a5_37 += 4;
                    *temp_v0_5 = temp_at_12;
                } while (var_t3_3 != 0);
                sp90 = (s64) (&__glOdyim_softClipColorDispatchTable + 0x10);
                sp80 = (s64) (temp_a7_11 + 8);
                sp78 = (s64) (&__glOdyim_softClipColorDispatchTable + 8);
                do {
                    temp_t3_5 = *(var_a5_37 + (&__glOdyim_softClipColorDispatchTable + 0x1C));
                    *(var_a5_37 + temp_a7_11) = *(var_a5_37 + &__glOdyim_softClipColorDispatchTable);
                    *(var_a5_37 + (temp_a7_11 + 4)) = *(var_a5_37 + (&__glOdyim_softClipColorDispatchTable + 4));
                    *(var_a5_37 + sp80) = *(var_a5_37 + sp78);
                    *(var_a5_37 + (temp_a7_11 + 0xC)) = *(var_a5_37 + (&__glOdyim_softClipColorDispatchTable + 0xC));
                    *(var_a5_37 + (temp_a7_11 + 0x10)) = *(var_a5_37 + sp90);
                    var_a6_34 -= 8;
                    *(var_a5_37 + (temp_a7_11 + 0x14)) = *(var_a5_37 + (&__glOdyim_softClipColorDispatchTable + 0x14));
                    temp_s1_4 = var_a5_37 + (temp_a7_11 + 0x1C);
                    *(var_a5_37 + (temp_a7_11 + 0x18)) = *(var_a5_37 + (&__glOdyim_softClipColorDispatchTable + 0x18));
                    var_a5_37 += 0x20;
                    *temp_s1_4 = temp_t3_5;
                } while (var_a6_34 > 0);
                temp_a4->unk3270 = (s32) __glSoftim_normalDispatchTable.unk0;
                temp_a4->unk3274 = (s32) __glSoftim_normalDispatchTable.unk4;
                temp_a4->unk3278 = (s32) __glSoftim_normalDispatchTable.unk8;
                temp_a4->unk327C = (s32) __glSoftim_normalDispatchTable.unkC;
                temp_a4->unk3280 = (s32) __glSoftim_normalDispatchTable.unk10;
                temp_a4->unk3284 = (s32) __glSoftim_normalDispatchTable.unk14;
                temp_a4->unk3288 = (s32) __glSoftim_normalDispatchTable.unk18;
                temp_a4->unk328C = (s32) __glSoftim_normalDispatchTable.unk1C;
                temp_a4->unk3294 = (s32) __glSoftim_normalDispatchTable.unk24;
                temp_a4->unk3290 = (s32) __glSoftim_normalDispatchTable.unk20;
                var_a5_38 = 0x20;
                var_a6_35 = 0;
                do {
                    temp_a7_12 = *(var_a6_35 + (&__glSoftim_texCoordDispatchTable + 0xC));
                    *(var_a6_35 + (temp_a4 + 0x3298)) = *(var_a6_35 + &__glSoftim_texCoordDispatchTable);
                    var_a5_38 -= 4;
                    *(var_a6_35 + (temp_a4 + 0x329C)) = *(var_a6_35 + (&__glSoftim_texCoordDispatchTable + 4));
                    temp_t0_8 = var_a6_35 + (temp_a4 + 0x32A4);
                    *(var_a6_35 + (temp_a4 + 0x32A0)) = *(var_a6_35 + (&__glSoftim_texCoordDispatchTable + 8));
                    var_a6_35 += 0x10;
                    *temp_t0_8 = temp_a7_12;
                } while (var_a5_38 > 0);
                var_a5_39 = 0x18;
                var_a6_36 = 0;
                do {
                    temp_t0_9 = *(var_a6_36 + (__glSoftim_normalDispatchTable.unk24 + 0xC));
                    *(var_a6_36 + (temp_a4 + 0x3318)) = *(var_a6_36 + __glSoftim_normalDispatchTable.unk24);
                    var_a5_39 -= 4;
                    *(var_a6_36 + (temp_a4 + 0x331C)) = *(var_a6_36 + (__glSoftim_normalDispatchTable.unk24 + 4));
                    temp_t1_4 = var_a6_36 + (temp_a4 + 0x3324);
                    *(var_a6_36 + (temp_a4 + 0x3320)) = *(var_a6_36 + (__glSoftim_normalDispatchTable.unk24 + 8));
                    var_a6_36 += 0x10;
                    *temp_t1_4 = temp_t0_9;
                } while (var_a5_39 > 0);
                temp_a4->unk3394 = (s32) __glOdyim_rectDispatchTable.unk1C;
                temp_a4->unk3390 = (s32) __glOdyim_rectDispatchTable.unk18;
                temp_a4->unk338C = (s32) __glOdyim_rectDispatchTable.unk14;
                temp_a4->unk3388 = (s32) __glOdyim_rectDispatchTable.unk10;
                temp_a4->unk3384 = (s32) __glOdyim_rectDispatchTable.unkC;
                temp_a4->unk3380 = (s32) __glOdyim_rectDispatchTable.unk8;
                temp_a4->unk337C = (s32) __glOdyim_rectDispatchTable.unk4;
                temp_a4->unk3378 = (s32) __glOdyim_rectDispatchTable.unk0;
                var_t2 = 2;
                var_a6_37 = 0x14A;
                var_a5_40 = 0;
                temp_t9_13 = temp_a4 + 0x33A0;
                do {
                    var_t2 -= 1;
                    var_a6_37 -= 1;
                    temp_a2_10 = *(var_a5_40 + &__glOdyim_softClipDispatchTable);
                    temp_a3_11 = var_a5_40 + temp_t9_13;
                    var_a5_40 += 4;
                    *temp_a3_11 = temp_a2_10;
                } while (var_t2 != 0);
                sp208 = (s64) (temp_t9_13 + 0xC);
                sp1F8 = (s64) (temp_t9_13 + 4);
                sp1D0 = (s64) (&__glOdyim_softClipDispatchTable + 4);
                do {
                    temp_t1_5 = *(var_a5_40 + (&__glOdyim_softClipDispatchTable + 0x1C));
                    *(var_a5_40 + temp_t9_13) = *(var_a5_40 + &__glOdyim_softClipDispatchTable);
                    *(var_a5_40 + sp1F8) = *(var_a5_40 + sp1D0);
                    *(var_a5_40 + (temp_t9_13 + 8)) = *(var_a5_40 + (&__glOdyim_softClipDispatchTable + 8));
                    *(var_a5_40 + sp208) = *(var_a5_40 + (&__glOdyim_softClipDispatchTable + 0xC));
                    *(var_a5_40 + (temp_t9_13 + 0x10)) = *(var_a5_40 + (&__glOdyim_softClipDispatchTable + 0x10));
                    var_a6_37 -= 8;
                    *(var_a5_40 + (temp_t9_13 + 0x14)) = *(var_a5_40 + (&__glOdyim_softClipDispatchTable + 0x14));
                    temp_t2_8 = var_a5_40 + (temp_t9_13 + 0x1C);
                    *(var_a5_40 + (temp_t9_13 + 0x18)) = *(var_a5_40 + (&__glOdyim_softClipDispatchTable + 0x18));
                    var_a5_40 += 0x20;
                    *temp_t2_8 = temp_t1_5;
                } while (var_a6_37 > 0);
                var_a5_41 = 0x18;
                var_a6_38 = 0;
                do {
                    temp_at_13 = *(var_a6_38 + (&__glOdyim_softClipVertexDispatchTable + 0xC));
                    *(var_a6_38 + (temp_a4 + 0x38C8)) = *(var_a6_38 + &__glOdyim_softClipVertexDispatchTable);
                    var_a5_41 -= 4;
                    *(var_a6_38 + (temp_a4 + 0x38CC)) = *(var_a6_38 + (&__glOdyim_softClipVertexDispatchTable + 4));
                    temp_v0_6 = var_a6_38 + (temp_a4 + 0x38D4);
                    *(var_a6_38 + (temp_a4 + 0x38D0)) = *(var_a6_38 + (&__glOdyim_softClipVertexDispatchTable + 8));
                    var_a6_38 += 0x10;
                    *temp_v0_6 = temp_at_13;
                } while (var_a5_41 > 0);
                var_t2_2 = 2;
                var_a5_42 = 0x2A;
                var_a6_39 = 0;
                temp_a7_13 = temp_a4 + 0x3928;
                do {
                    var_t2_2 -= 1;
                    var_a5_42 -= 1;
                    temp_v0_7 = *(var_a6_39 + &__glOdyim_softClipIndexDispatchTable);
                    temp_v1_7 = var_a6_39 + temp_a7_13;
                    var_a6_39 += 4;
                    *temp_v1_7 = temp_v0_7;
                } while (var_t2_2 != 0);
                spC0 = (s64) (&__glOdyim_softClipIndexDispatchTable + 0x10);
                spB8 = (s64) (temp_a7_13 + 8);
                spB0 = (s64) (&__glOdyim_softClipIndexDispatchTable + 8);
                do {
                    temp_t2_9 = *(var_a6_39 + (&__glOdyim_softClipIndexDispatchTable + 0x1C));
                    *(var_a6_39 + temp_a7_13) = *(var_a6_39 + &__glOdyim_softClipIndexDispatchTable);
                    *(var_a6_39 + (temp_a7_13 + 4)) = *(var_a6_39 + (&__glOdyim_softClipIndexDispatchTable + 4));
                    *(var_a6_39 + spB8) = *(var_a6_39 + spB0);
                    *(var_a6_39 + (temp_a7_13 + 0xC)) = *(var_a6_39 + (&__glOdyim_softClipIndexDispatchTable + 0xC));
                    *(var_a6_39 + (temp_a7_13 + 0x10)) = *(var_a6_39 + spC0);
                    var_a5_42 -= 8;
                    *(var_a6_39 + (temp_a7_13 + 0x14)) = *(var_a6_39 + (&__glOdyim_softClipIndexDispatchTable + 0x14));
                    temp_t3_6 = var_a6_39 + (temp_a7_13 + 0x1C);
                    *(var_a6_39 + (temp_a7_13 + 0x18)) = *(var_a6_39 + (&__glOdyim_softClipIndexDispatchTable + 0x18));
                    var_a6_39 += 0x20;
                    *temp_t3_6 = temp_t2_9;
                } while (var_a5_42 > 0);
                temp_a4->unk39D0 = (s32) __glSoftim_normalDispatchTable.unk0;
                temp_a4->unk39D4 = (s32) __glSoftim_normalDispatchTable.unk4;
                temp_a4->unk39D8 = (s32) __glSoftim_normalDispatchTable.unk8;
                temp_a4->unk39DC = (s32) __glSoftim_normalDispatchTable.unkC;
                temp_a4->unk39E0 = (s32) __glSoftim_normalDispatchTable.unk10;
                temp_a4->unk39E4 = (s32) __glSoftim_normalDispatchTable.unk14;
                temp_a4->unk39E8 = (s32) __glSoftim_normalDispatchTable.unk18;
                temp_a4->unk39EC = (s32) __glSoftim_normalDispatchTable.unk1C;
                temp_a4->unk39F4 = (s32) __glSoftim_normalDispatchTable.unk24;
                temp_a4->unk39F0 = (s32) __glSoftim_normalDispatchTable.unk20;
                var_a6_40 = 0x20;
                var_a5_43 = 0;
                do {
                    temp_a3_12 = *(var_a5_43 + (&__glOdyim_texCoordDispatchTable + 0xC));
                    *(var_a5_43 + (temp_a4 + 0x39F8)) = *(var_a5_43 + &__glOdyim_texCoordDispatchTable);
                    var_a6_40 -= 4;
                    *(var_a5_43 + (temp_a4 + 0x39FC)) = *(var_a5_43 + (&__glOdyim_texCoordDispatchTable + 4));
                    temp_a7_14 = var_a5_43 + (temp_a4 + 0x3A04);
                    *(var_a5_43 + (temp_a4 + 0x3A00)) = *(var_a5_43 + (&__glOdyim_texCoordDispatchTable + 8));
                    var_a5_43 += 0x10;
                    *temp_a7_14 = temp_a3_12;
                } while (var_a6_40 > 0);
                var_a5_44 = 0x18;
                var_a6_41 = 0;
                do {
                    temp_a7_15 = *(var_a6_41 + (&__glOdyim_rasterPosDispatchTable + 0xC));
                    *(var_a6_41 + (temp_a4 + 0x3A78)) = *(var_a6_41 + &__glOdyim_rasterPosDispatchTable);
                    var_a5_44 -= 4;
                    *(var_a6_41 + (temp_a4 + 0x3A7C)) = *(var_a6_41 + (&__glOdyim_rasterPosDispatchTable + 4));
                    temp_t0_10 = var_a6_41 + (temp_a4 + 0x3A84);
                    *(var_a6_41 + (temp_a4 + 0x3A80)) = *(var_a6_41 + (&__glOdyim_rasterPosDispatchTable + 8));
                    var_a6_41 += 0x10;
                    *temp_t0_10 = temp_a7_15;
                } while (var_a5_44 > 0);
                temp_a4->unk3AF4 = (s32) __glOdyim_rectDispatchTable.unk1C;
                temp_a4->unk3AF0 = (s32) __glOdyim_rectDispatchTable.unk18;
                temp_a4->unk3AEC = (s32) __glOdyim_rectDispatchTable.unk14;
                temp_a4->unk3AE8 = (s32) __glOdyim_rectDispatchTable.unk10;
                temp_a4->unk3AE4 = (s32) __glOdyim_rectDispatchTable.unkC;
                temp_a4->unk3AE0 = (s32) __glOdyim_rectDispatchTable.unk8;
                temp_a4->unk3ADC = (s32) __glOdyim_rectDispatchTable.unk4;
                temp_a4->unk3AD8 = (s32) __glOdyim_rectDispatchTable.unk0;
                var_a7_7 = 2;
                var_a5_45 = 0x14A;
                var_a6_42 = 0;
                temp_ra_20 = temp_a4 + 0x3B00;
                do {
                    var_a7_7 -= 1;
                    var_a5_45 -= 1;
                    temp_a0_4 = *(var_a6_42 + __glOdyim_rectDispatchTable.unkC);
                    temp_a1_5 = var_a6_42 + temp_ra_20;
                    var_a6_42 += 4;
                    *temp_a1_5 = temp_a0_4;
                } while (var_a7_7 != 0);
                sp1B8 = __glOdyim_rectDispatchTable.unkC + 8;
                sp1C8 = (s64) (temp_ra_20 + 4);
                sp1C0 = __glOdyim_rectDispatchTable.unkC + 4;
                do {
                    temp_t0_11 = *(var_a6_42 + (__glOdyim_rectDispatchTable.unkC + 0x1C));
                    *(var_a6_42 + temp_ra_20) = *(var_a6_42 + __glOdyim_rectDispatchTable.unkC);
                    *(var_a6_42 + sp1C8) = *(var_a6_42 + sp1C0);
                    *(var_a6_42 + (temp_ra_20 + 8)) = *(var_a6_42 + sp1B8);
                    *(var_a6_42 + (temp_ra_20 + 0xC)) = *(var_a6_42 + (__glOdyim_rectDispatchTable.unkC + 0xC));
                    *(var_a6_42 + (temp_ra_20 + 0x10)) = *(var_a6_42 + (__glOdyim_rectDispatchTable.unkC + 0x10));
                    var_a5_45 -= 8;
                    *(var_a6_42 + (temp_ra_20 + 0x14)) = *(var_a6_42 + (__glOdyim_rectDispatchTable.unkC + 0x14));
                    temp_t1_6 = var_a6_42 + (temp_ra_20 + 0x1C);
                    *(var_a6_42 + (temp_ra_20 + 0x18)) = *(var_a6_42 + (__glOdyim_rectDispatchTable.unkC + 0x18));
                    var_a6_42 += 0x20;
                    *temp_t1_6 = temp_t0_11;
                } while (var_a5_45 > 0);
                var_a6_43 = 0x18;
                var_a5_46 = 0;
                do {
                    temp_at_14 = *(var_a5_46 + (&__glSoftim_vertexDispatchTable + 0xC));
                    *(var_a5_46 + (temp_a4 + 0x4028)) = *(var_a5_46 + &__glSoftim_vertexDispatchTable);
                    var_a6_43 -= 4;
                    *(var_a5_46 + (temp_a4 + 0x402C)) = *(var_a5_46 + (&__glSoftim_vertexDispatchTable + 4));
                    temp_v0_8 = var_a5_46 + (temp_a4 + 0x4034);
                    *(var_a5_46 + (temp_a4 + 0x4030)) = *(var_a5_46 + (&__glSoftim_vertexDispatchTable + 8));
                    var_a5_46 += 0x10;
                    *temp_v0_8 = temp_at_14;
                } while (var_a6_43 > 0);
                var_t1 = 2;
                var_a5_47 = 0x2A;
                var_a6_44 = 0;
                temp_t0_12 = temp_a4 + 0x4088;
                do {
                    var_t1 -= 1;
                    var_a5_47 -= 1;
                    temp_v0_9 = *(var_a6_44 + &__glSoftim_colorDispatchTable);
                    temp_v1_8 = var_a6_44 + temp_t0_12;
                    var_a6_44 += 4;
                    *temp_v1_8 = temp_v0_9;
                } while (var_t1 != 0);
                spD8 = (s64) (&__glSoftim_colorDispatchTable + 0x10);
                spD0 = (s64) (temp_t0_12 + 8);
                spC8 = (s64) (&__glSoftim_colorDispatchTable + 8);
                do {
                    temp_t1_7 = *(var_a6_44 + (&__glSoftim_colorDispatchTable + 0x1C));
                    *(var_a6_44 + temp_t0_12) = *(var_a6_44 + &__glSoftim_colorDispatchTable);
                    *(var_a6_44 + (temp_t0_12 + 4)) = *(var_a6_44 + (&__glSoftim_colorDispatchTable + 4));
                    *(var_a6_44 + spD0) = *(var_a6_44 + spC8);
                    *(var_a6_44 + (temp_t0_12 + 0xC)) = *(var_a6_44 + (&__glSoftim_colorDispatchTable + 0xC));
                    *(var_a6_44 + (temp_t0_12 + 0x10)) = *(var_a6_44 + spD8);
                    var_a5_47 -= 8;
                    *(var_a6_44 + (temp_t0_12 + 0x14)) = *(var_a6_44 + (&__glSoftim_colorDispatchTable + 0x14));
                    temp_t2_10 = var_a6_44 + (temp_t0_12 + 0x1C);
                    *(var_a6_44 + (temp_t0_12 + 0x18)) = *(var_a6_44 + (&__glSoftim_colorDispatchTable + 0x18));
                    var_a6_44 += 0x20;
                    *temp_t2_10 = temp_t1_7;
                } while (var_a5_47 > 0);
                temp_a4->unk4130 = (s32) __glSoftim_normalDispatchTable.unk0;
                temp_a4->unk4134 = (s32) __glSoftim_normalDispatchTable.unk4;
                temp_a4->unk4138 = (s32) __glSoftim_normalDispatchTable.unk8;
                temp_a4->unk413C = (s32) __glSoftim_normalDispatchTable.unkC;
                temp_a4->unk4140 = (s32) __glSoftim_normalDispatchTable.unk10;
                temp_a4->unk4144 = (s32) __glSoftim_normalDispatchTable.unk14;
                temp_a4->unk4148 = (s32) __glSoftim_normalDispatchTable.unk18;
                temp_a4->unk414C = (s32) __glSoftim_normalDispatchTable.unk1C;
                temp_a4->unk4154 = (s32) __glSoftim_normalDispatchTable.unk24;
                temp_a4->unk4150 = (s32) __glSoftim_normalDispatchTable.unk20;
                temp_t9_14 = temp_a4 + 0x415C;
                var_a6_45 = 0x20;
                var_a5_48 = 0;
                do {
                    temp_a2_11 = *(var_a5_48 + (&__glSoftim_texCoordDispatchTable + 0xC));
                    *(var_a5_48 + (temp_a4 + 0x4158)) = *(var_a5_48 + &__glSoftim_texCoordDispatchTable);
                    var_a6_45 -= 4;
                    *(var_a5_48 + temp_t9_14) = *(var_a5_48 + (&__glSoftim_texCoordDispatchTable + 4));
                    temp_a3_13 = var_a5_48 + (temp_a4 + 0x4164);
                    *(var_a5_48 + (temp_a4 + 0x4160)) = *(var_a5_48 + (&__glSoftim_texCoordDispatchTable + 8));
                    var_a5_48 += 0x10;
                    *temp_a3_13 = temp_a2_11;
                } while (var_a6_45 > 0);
                var_a6_46 = 0x18;
                var_a5_49 = 0;
                do {
                    temp_a3_14 = *(var_a5_49 + (temp_t9_14 + 0xC));
                    *(var_a5_49 + (temp_a4 + 0x41D8)) = *(var_a5_49 + temp_t9_14);
                    var_a6_46 -= 4;
                    *(var_a5_49 + (temp_a4 + 0x41DC)) = *(var_a5_49 + (temp_t9_14 + 4));
                    temp_a7_16 = var_a5_49 + (temp_a4 + 0x41E4);
                    *(var_a5_49 + (temp_a4 + 0x41E0)) = *(var_a5_49 + (temp_t9_14 + 8));
                    var_a5_49 += 0x10;
                    *temp_a7_16 = temp_a3_14;
                } while (var_a6_46 > 0);
                temp_a4->unk4254 = (s32) __glSoftim_rectDispatchTable.unk1C;
                temp_a4->unk4250 = (s32) __glSoftim_rectDispatchTable.unk18;
                temp_a4->unk424C = (s32) __glSoftim_rectDispatchTable.unk14;
                temp_a4->unk4248 = (s32) __glSoftim_rectDispatchTable.unk10;
                temp_a4->unk4244 = (s32) __glSoftim_rectDispatchTable.unkC;
                temp_a4->unk4240 = (s32) __glSoftim_rectDispatchTable.unk8;
                temp_a4->unk423C = (s32) __glSoftim_rectDispatchTable.unk4;
                temp_a4->unk4238 = (s32) __glSoftim_rectDispatchTable.unk0;
                var_a7_8 = 2;
                var_a6_47 = 0x14A;
                var_a5_50 = 0;
                temp_ra_21 = temp_a4 + 0x4260;
                do {
                    var_a7_8 -= 1;
                    var_a6_47 -= 1;
                    temp_v1_9 = *(var_a5_50 + __glSoftim_rectDispatchTable.unk10);
                    temp_a0_5 = var_a5_50 + temp_ra_21;
                    var_a5_50 += 4;
                    *temp_a0_5 = temp_v1_9;
                } while (var_a7_8 != 0);
                sp1B0 = (s64) (temp_ra_21 + 0xC);
                sp1A8 = (s64) (temp_ra_21 + 4);
                sp1A0 = __glSoftim_rectDispatchTable.unk10 + 4;
                do {
                    temp_t0_13 = *(var_a5_50 + (__glSoftim_rectDispatchTable.unk10 + 0x1C));
                    *(var_a5_50 + temp_ra_21) = *(var_a5_50 + __glSoftim_rectDispatchTable.unk10);
                    *(var_a5_50 + sp1A8) = *(var_a5_50 + sp1A0);
                    *(var_a5_50 + (temp_ra_21 + 8)) = *(var_a5_50 + (__glSoftim_rectDispatchTable.unk10 + 8));
                    *(var_a5_50 + sp1B0) = *(var_a5_50 + (__glSoftim_rectDispatchTable.unk10 + 0xC));
                    *(var_a5_50 + (temp_ra_21 + 0x10)) = *(var_a5_50 + (__glSoftim_rectDispatchTable.unk10 + 0x10));
                    var_a6_47 -= 8;
                    *(var_a5_50 + (temp_ra_21 + 0x14)) = *(var_a5_50 + (__glSoftim_rectDispatchTable.unk10 + 0x14));
                    temp_t1_8 = var_a5_50 + (temp_ra_21 + 0x1C);
                    *(var_a5_50 + (temp_ra_21 + 0x18)) = *(var_a5_50 + (__glSoftim_rectDispatchTable.unk10 + 0x18));
                    var_a5_50 += 0x20;
                    *temp_t1_8 = temp_t0_13;
                } while (var_a6_47 > 0);
                var_s0 = (void *) sp270;
                var_s2 = sp278;
                var_a6_48 = 0x18;
                var_a5_51 = 0;
                do {
                    temp_at_15 = *(var_a5_51 + (&__glOdylc_vertexDispatchTable + 0xC));
                    *(var_a5_51 + (temp_a4 + 0x4788)) = *(var_a5_51 + &__glOdylc_vertexDispatchTable);
                    var_a6_48 -= 4;
                    *(var_a5_51 + (temp_a4 + 0x478C)) = *(var_a5_51 + (&__glOdylc_vertexDispatchTable + 4));
                    temp_v0_10 = var_a5_51 + (temp_a4 + 0x4794);
                    *(var_a5_51 + (temp_a4 + 0x4790)) = *(var_a5_51 + (&__glOdylc_vertexDispatchTable + 8));
                    var_a5_51 += 0x10;
                    *temp_v0_10 = temp_at_15;
                } while (var_a6_48 > 0);
                var_a6_49 = 2;
                var_v0 = 0x2A;
                var_a0_2 = 0;
                temp_a5 = temp_a4 + 0x47E8;
                do {
                    var_a6_49 -= 1;
                    var_v0 -= 1;
                    temp_v1_10 = *(var_a0_2 + &__glOdylc_colorDispatchTable);
                    temp_a2_12 = var_a0_2 + temp_a5;
                    var_a0_2 += 4;
                    *temp_a2_12 = temp_v1_10;
                } while (var_a6_49 != 0);
                spA0 = (s64) (temp_a5 + 0xC);
                sp120 = (s64) (temp_a5 + 0x14);
                sp108 = (s64) (temp_a5 + 0x18);
                sp100 = (s64) (&__glOdylc_colorDispatchTable + 0x18);
                spF8 = (s64) (temp_a5 + 0x10);
                spF0 = (s64) (&__glOdylc_colorDispatchTable + 0x10);
                sp118 = (s64) (&__glOdylc_colorDispatchTable + 0x1C);
                spA8 = (s64) (temp_a5 + 0x1C);
                spE8 = (s64) (temp_a5 + 8);
                sp110 = 0x20;
                spE0 = (s64) (&__glOdylc_colorDispatchTable + 8);
                do {
                    temp_at_16 = *(var_a0_2 + sp118);
                    *(var_a0_2 + temp_a5) = *(var_a0_2 + &__glOdylc_colorDispatchTable);
                    *(var_a0_2 + (temp_a5 + 4)) = *(var_a0_2 + (&__glOdylc_colorDispatchTable + 4));
                    *(var_a0_2 + spE8) = *(var_a0_2 + spE0);
                    *(var_a0_2 + spA0) = *(var_a0_2 + (&__glOdylc_colorDispatchTable + 0xC));
                    *(var_a0_2 + spF8) = *(var_a0_2 + spF0);
                    *(var_a0_2 + sp120) = *(var_a0_2 + (&__glOdylc_colorDispatchTable + 0x14));
                    var_v0 -= 8;
                    temp_v1_11 = var_a0_2 + spA8;
                    *(var_a0_2 + sp108) = *(var_a0_2 + sp100);
                    var_a0_2 += sp110;
                    *temp_v1_11 = temp_at_16;
                } while (var_v0 > 0);
                temp_a4->unk4890 = (s32) __glOdylc_normalDispatchTable.unk0;
                temp_a4->unk4894 = (s32) __glOdylc_normalDispatchTable.unk4;
                temp_a4->unk4898 = (s32) __glOdylc_normalDispatchTable.unk8;
                temp_a4->unk489C = (s32) __glOdylc_normalDispatchTable.unkC;
                temp_a4->unk48A0 = (s32) __glOdylc_normalDispatchTable.unk10;
                temp_a4->unk48A4 = (s32) __glOdylc_normalDispatchTable.unk14;
                temp_a4->unk48A8 = (s32) __glOdylc_normalDispatchTable.unk18;
                temp_a4->unk48AC = (s32) __glOdylc_normalDispatchTable.unk1C;
                temp_a4->unk48B4 = (s32) __glOdylc_normalDispatchTable.unk24;
                temp_a4->unk48B0 = (s32) __glOdylc_normalDispatchTable.unk20;
                var_v0_2 = 0x20;
                var_a0_3 = 0;
                do {
                    temp_at_17 = *(var_a0_3 + (&__glOdylc_texCoordDispatchTable + 0xC));
                    *(var_a0_3 + (temp_a4 + 0x48B8)) = *(var_a0_3 + &__glOdylc_texCoordDispatchTable);
                    var_v0_2 -= 4;
                    *(var_a0_3 + (temp_a4 + 0x48BC)) = *(var_a0_3 + (&__glOdylc_texCoordDispatchTable + 4));
                    temp_v1_12 = var_a0_3 + (temp_a4 + 0x48C4);
                    *(var_a0_3 + (temp_a4 + 0x48C0)) = *(var_a0_3 + (&__glOdylc_texCoordDispatchTable + 8));
                    var_a0_3 += 0x10;
                    *temp_v1_12 = temp_at_17;
                } while (var_v0_2 > 0);
                var_a0_4 = 0x18;
                var_v0_3 = 0;
                do {
                    temp_v1_13 = *(var_v0_3 + (&__glOdylc_rasterPosDispatchTable + 0xC));
                    *(var_v0_3 + (temp_a4 + 0x4938)) = *(var_v0_3 + &__glOdylc_rasterPosDispatchTable);
                    var_a0_4 -= 4;
                    *(var_v0_3 + (temp_a4 + 0x493C)) = *(var_v0_3 + (&__glOdylc_rasterPosDispatchTable + 4));
                    temp_a2_13 = var_v0_3 + (temp_a4 + 0x4944);
                    *(var_v0_3 + (temp_a4 + 0x4940)) = *(var_v0_3 + (&__glOdylc_rasterPosDispatchTable + 8));
                    var_v0_3 += 0x10;
                    *temp_a2_13 = temp_v1_13;
                } while (var_a0_4 > 0);
                temp_a4->unk49B4 = (s32) __glOdylc_rectDispatchTable.unk1C;
                temp_a4->unk49B0 = (s32) __glOdylc_rectDispatchTable.unk18;
                temp_a4->unk49AC = (s32) __glOdylc_rectDispatchTable.unk14;
                temp_a4->unk49A8 = (s32) __glOdylc_rectDispatchTable.unk10;
                temp_a4->unk49A4 = (s32) __glOdylc_rectDispatchTable.unkC;
                temp_a4->unk49A0 = (s32) __glOdylc_rectDispatchTable.unk8;
                temp_a4->unk499C = (s32) __glOdylc_rectDispatchTable.unk4;
                temp_a4->unk4998 = (s32) __glOdylc_rectDispatchTable.unk0;
                var_s1 = (void *) sp268;
                temp_gp->unk-3530 = 1;
            }
            var_s0->unk1364 = 0;
            var_s0->unk1360 = 0;
            var_s0->unk135C = 0;
            var_s0->unk1354 = 0;
            var_s0->unk1370 = 0;
            var_s0->unk136C = 0;
            var_s0->unk1348 = 0;
            var_s0->unk1344 = 0;
            var_s0->unkE9C = 0x40;
            var_s0->unkEC4 = 0x10;
            var_s0->unkEBC = 0x1000;
            var_s0->unkEC8 = 0x80;
            var_s0->unkE94 = 0xF;
            var_s0->unkEC0 = 0x10;
            var_s0->unkEB8 = 0x1E;
            var_s0->unkED8 = 2;
            var_s0->unkED4 = 0xA;
            var_s0->unkED0 = 0xA;
            var_s0->unkECC = 0x20;
            var_s0->unkE24 = 0xF00;
            var_s0->unkE20 = 0xF00;
            var_s0->unkE50 = 0x1800;
            var_s0->unkE4C = 0x1800;
            var_s0->unkE38 = 0xB;
            var_s0->unkE34 = 0xB;
            var_s0->unkE30 = 0xB;
            var_s0->unkE2C = 0xB;
            var_s0->unkE28 = 0xB;
            var_s0->unkE18 = 1;
            var_s0->unkE04 = 8;
            var_s0->unkE10 = 0xD;
            var_s0->unkE8C = 0x200;
            var_s0->unkE48 = 0x100;
            var_s0->unkE44 = 0x100;
            var_s0->unkE40 = 0x100;
            var_s0->unkE3C = 0x100;
            var_s0->unk13B0 = &__glOdylc_Error;
            var_s0->unk13AC = &__glOdysseySPCompMachdep;
            var_s0->unk13A4 = &__glOdysseySPBalloc;
            var_s0->unk1368 = &__glSPFreeDlist;
            var_s0->unk1358 = &__glOdysseyDlistInitState;
            var_s0->unk1350 = &__glSPDlistCompiler;
            var_s0->unk13A8 = &__glOdysseySPBfree;
            var_s0->unkEB4 = 0.125f;
            var_s0->unkEB0 = 10.0f;
            var_s0->unkEAC = 0.5f;
            var_s0->unkE98 = 3;
            var_s0->unk134C = 3;
            var_s0->unkEA8 = 0.125f;
            var_s0->unkEA4 = 10.0f;
            var_s0->unkEA0 = 0.5f;
            __glEarlyInitContext(var_s0, &__glOdysseySPCompMachdep, &__glOdylc_Error, 0xF00, 0x20, 0xA, 2, 0x1E);
            var_s0->unk68 = &__glOdysseyVisualsMatch;
            var_s0->unk58 = (void *) (sub_0d960000 + 0x5D30);
            var_s0->unkA4 = (void *) (&sub_0d970000 - 0x3AC0);
            var_s0->unkA0 = (void *) (&sub_0d970000 - 0x3B90);
            var_s0->unk9C = (void *) (&sub_0d970000 - 0x3C10);
            var_s0->unk98 = (void *) (&sub_0d970000 - 0x3C90);
            var_s0->unk78 = (void *) (&sub_0d970000 - 0x3F60);
            var_s0->unk64 = (void *) (&sub_0d970000 - 0x5100);
            var_s0->unk60 = (void *) (&sub_0d970000 - 0x3D00);
            var_s0->unk5C = (s32) (M2C_ERROR(/* Read from unset register $t9 */) - 0x3F00);
            var_s1->unk6A1C = 1;
            var_s1->unk6988 = 0;
            var_s1->unk6984 = 0;
            var_s1->unk6980 = 0;
            if (var_s2 != 0) {
                __glShareDlist(var_s0, var_s2);
                __glOdysseySharePM(var_s0, var_s2);
            }
            return var_s0;
        }
        var_s0->unkC(var_s0, var_s0);
        return NULL;
    }
    return NULL;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x38, 0x3c], gap at: 0x28. */
s64 __glOdyim_RenderMode(s32 arg0) {
    s32 *temp_a2_3;
    s32 *temp_at;
    s32 *temp_at_2;
    s32 *temp_s1;
    s32 *var_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_4;
    s32 temp_a4;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_s2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    void *temp_a7;
    void *temp_t1;
    void *temp_t3;

    temp_s1 = *(s32 **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_s2 = temp_s1->unkC84;
        switch (arg0) {                             /* switch 1; irregular */
        default:                                    /* switch 1 */
            __glSetError((s32 *)0x500, 0x1C02, 0x1C00);
            return 0;
        case 0x1C02:                                /* switch 1 */
            temp_a2 = temp_s1->unk1328;
            if (temp_a2 != 0) {
                var_a0 = temp_s1 + 0x10000;
                temp_a4 = temp_s1->unk168D8;
                if (temp_a4 != 0) {
                    if (temp_s1->unk168DC != 0) {
                        goto block_8;
                    }
                    unksp30 = (s64) var_a0;
                    temp_v0 = ((s32 (*)(s32 *, ?, s32, ?, s32)) temp_s1->unk0)(temp_s1, 0x780, temp_a2, 0x1C00, temp_a4);
                    var_a0->unk68DC = temp_v0;
                    if (temp_v0 == 0) {
                        __glSetError((s32 *)0x505);
                        /* Duplicate return node #19. Try simplifying control flow for better match */
                        return 0;
                    }
block_8:
                    temp_a2_2 = var_a0->unk68E0;
                    if (temp_a2_2 != 0) {
                        goto block_9;
                    }
                    unksp30 = (s64) var_a0;
                    temp_v0_2 = __glSetError(temp_s1, 0x780, temp_a2_2, 0x1C00);
                    var_a0->unk68E0 = temp_v0_2;
                    if (temp_v0_2 == 0) {
                        __glSetError((s32 *)0x505);
                        return 0;
                    }
                    goto block_9;
                }
block_9:
                var_a4_2 = var_a0->unk6988 | 2;
block_10:
                var_a0->unk6988 = var_a4_2;
block_11:
                if (temp_s2 != 0x1C00) {
                    if (temp_s2 != 0x1C01) {
                        var_a4 = sp0;
                        if (temp_s2 == 0x1C02) {
                            if ((var_a0->unk68D8 != 0) && (arg0 != 0x1C02)) {
                                temp_s1->unk17F4->unk2C = (? *) var_a0->unk68F8;
                                temp_s1->unk17F4->unk1C = (? *) var_a0->unk68F4;
                                var_a4_3 = 0;
                                var_v0 = 0x18;
                                temp_a7 = temp_s1->unk17F4;
                                do {
                                    *(var_a4_3 + (temp_a7 + 0x528)) = *(var_a4_3 + (var_a0 + 0x68FC));
                                    *(var_a4_3 + (temp_a7 + 0x52C)) = *(var_a4_3 + (var_a0 + 0x6900));
                                    var_v0 -= 4;
                                    *(var_a4_3 + (temp_a7 + 0x530)) = *(var_a4_3 + (var_a0 + 0x6904));
                                    temp_at = var_a4_3 + (temp_a7 + 0x534);
                                    temp_ra = *(var_a4_3 + (var_a0 + 0x6908));
                                    var_a4_3 += 0x10;
                                    *temp_at = temp_ra;
                                } while (var_v0 > 0);
                            }
                            var_v0_2 = -1;
                            if (temp_s1->unk1324 == 0) {
                                var_v0_2 = temp_s1->unk1334;
                            }
                            var_a4 = var_v0_2;
                        }
                    } else {
                        var_v0_3 = -1;
                        if (temp_s1->unk1304 == 0) {
                            var_v0_3 = (s32) (temp_s1->unk130C - temp_s1->unk1308) >> 2;
                        }
                        var_a4 = var_v0_3;
                    }
                } else {
                    var_a4 = 0;
                }
                if (arg0 != temp_s2) {
                    unksp28 = (s64) var_a4;
                    unksp30 = (s64) var_a0;
                    temp_s1->unkC84 = arg0;
                    __glOdysseyValidateDispatchTable(temp_s1);
                }
                switch (arg0) {                     /* switch 2; irregular */
                case 0x1C00:                        /* switch 2 */
                    break;
                case 0x1C02:                        /* switch 2 */
                    temp_s1->unk132C = (s32) temp_s1->unk1328;
                    temp_s1->unk1324 = 0U;
                    temp_s1->unk1320 = (s32) temp_s1->unk131C;
                    temp_s1->unk1318 = 0;
                    temp_s1->unk1334 = 0;
                    temp_s1->unk1338 = 0;
                    if (var_a0->unk68D8 != 0) {
                        if (temp_s2 != 0x1C02) {
                            var_a0->unk68F8 = (? *) temp_s1->unk17F4->unk2C;
                            temp_s1->unk17F4->unk2C = &__glTRim_End;
                            var_a0->unk68F4 = (? *) temp_s1->unk17F4->unk1C;
                            temp_s1->unk17F4->unk1C = &__glTRim_Begin;
                            var_a3 = 0x18;
                            temp_t3 = temp_s1->unk17F4;
                            var_v0_4 = 0;
                            do {
                                *(var_v0_4 + (var_a0 + 0x68FC)) = *(var_v0_4 + (temp_t3 + 0x528));
                                *(var_v0_4 + (var_a0 + 0x6900)) = *(var_v0_4 + (temp_t3 + 0x52C));
                                var_a3 -= 4;
                                *(var_v0_4 + (var_a0 + 0x6904)) = *(var_v0_4 + (temp_t3 + 0x530));
                                temp_a2_3 = var_v0_4 + (var_a0 + 0x6908);
                                temp_a1 = *(var_v0_4 + (temp_t3 + 0x534));
                                var_v0_4 += 0x10;
                                *temp_a2_3 = temp_a1;
                            } while (var_a3 > 0);
                            var_a3_2 = 0x18;
                            temp_t1 = temp_s1->unk17F4;
                            var_v0_5 = 0;
                            do {
                                *(var_v0_5 + (temp_t1 + 0x528)) = *(var_v0_5 + &__glTRim_vertexDispatchTable);
                                *(var_v0_5 + (temp_t1 + 0x52C)) = *(var_v0_5 + (&__glTRim_vertexDispatchTable + 4));
                                var_a3_2 -= 4;
                                *(var_v0_5 + (temp_t1 + 0x530)) = *(var_v0_5 + (&__glTRim_vertexDispatchTable + 8));
                                temp_at_2 = var_v0_5 + (temp_t1 + 0x534);
                                temp_ra_2 = *(var_v0_5 + (&__glTRim_vertexDispatchTable + 0xC));
                                var_v0_5 += 0x10;
                                *temp_at_2 = temp_ra_2;
                            } while (var_a3_2 > 0);
                        }
                        var_a0->unk68EC = 0;
                        var_a0->unk68E8 = 0;
                        var_a0->unk68E4 = 0;
                    }
                    break;
                case 0x1C01:                        /* switch 2 */
                    temp_s1->unk1304 = 0U;
                    temp_s1->unk130C = (s32) temp_s1->unk1308;
                    break;
                }
                return (s64) var_a4;
            }
            __glSetError((s32 *)0x502, 0x1C02, temp_a2, 0x1C00);
            return 0;
        case 0x1C01:                                /* switch 1 */
            temp_a2_4 = temp_s1->unk1308;
            if (temp_a2_4 != 0) {
                var_a0 = temp_s1 + 0x10000;
                var_a4_2 = temp_s1->unk16988 | 2;
                goto block_10;
            }
            M2C_ERROR(/* Read from unset register $t9 */)(0x502, 0x1C02, temp_a2_4, 0x1C00);
            /* Duplicate return node #19. Try simplifying control flow for better match */
            return 0;
        case 0x1C00:                                /* switch 1 */
            var_a0 = temp_s1 + 0x10000;
            temp_s1->unk16988 = (s32) (temp_s1->unk16988 & ~2);
            goto block_11;
        }
    } else {
        __glSetError((s32 *)0x502);
        return 0;
    }
}

void __glOdysseyInitIgloo(s32 *arg0) {
    s32 temp_a2;

    arg0->unk16980 = 1;
    arg0->unk16964 = (s32) (arg0->unk16964 | 0x400);
    temp_a2 = arg0->unk16988 | 1;
    arg0->unk16988 = temp_a2;
    *(s32 *)0x1018 = 2;
    arg0->unk2E40(0x188920, temp_a2);
}

/*
Decompilation failure in function ConvertFromShadow:

Unable to determine jump table for jr instruction at ody_context.s line 14009.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void getCurrent(s32 *arg0, s64 arg1) {
    s64 sp918;
    s64 sp910;
    s64 sp908;
    s64 sp900;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a3_2;
    s32 temp_a4_4;
    s32 temp_a4_6;
    s64 temp_a3;
    s64 temp_a4;
    s64 temp_a5;
    u32 temp_a4_2;
    u8 temp_a4_3;
    u8 temp_a4_5;
    u8 temp_a4_7;
    void *temp_a6;
    void *temp_s1;

    temp_s1 = arg0->unk17F4;
    temp_a4 = arg1 + 0x20;
    temp_a3 = arg1 + 0x14;
    temp_a5 = arg1 + 0x10;
    temp_a6 = arg0 + 0x10000;
    if (temp_s1->unk1F0 == &__glOdyim_SoftGetFloatv) {
        sp918 = temp_a5;
        sp910 = temp_a4;
        sp908 = temp_a3;
        if (arg0->unk700 & 0x80) {
            sp900 = (s64) temp_a6;
            sp900->unk697C = 0;
            __glOdyim_Enable(0xB57, temp_a3, temp_a4, temp_a5, temp_a6, 0x10000);
        } else if (arg0->unk1697C != 0) {
            __glOdyim_Disable(0xB57, temp_a3, temp_a4, temp_a5, temp_a6, 0x10000);
        }
        temp_s1->unk1F0(0xB00, arg1);
        temp_s1->unk1F0(0xB01, sp918);
        temp_s1->unk1F0(0xB02, sp908);
        temp_s1->unk1F0(0xB03, sp910);
        temp_s1->unk1E0(0xB43, arg1 + 0x30);
        temp_s1->unk20C(0x404, 0x1200, arg1 + 0x34);
        temp_s1->unk20C(0x404, 0x1201, arg1 + 0x44);
        temp_s1->unk20C(0x404, 0x1202, arg1 + 0x54);
        temp_s1->unk20C(0x404, 0x1600, arg1 + 0x64);
        temp_s1->unk20C(0x404, 0x1601, arg1 + 0x74);
        temp_s1->unk20C(0x404, 0x1603, arg1 + 0x78);
        temp_s1->unk20C(0x405, 0x1200, arg1 + 0x84);
        temp_s1->unk20C(0x405, 0x1201, arg1 + 0x94);
        temp_s1->unk20C(0x405, 0x1202, arg1 + 0xA4);
        temp_s1->unk20C(0x405, 0x1600, arg1 + 0xB4);
        temp_s1->unk20C(0x405, 0x1601, arg1 + 0xC4);
        temp_s1->unk20C(0x405, 0x1603, arg1 + 0xC8);
    } else {
        sp900 = (s64) temp_a6;
        sp918 = temp_a5;
        sp910 = temp_a4;
        sp908 = temp_a3;
        if (arg0->unk19D8E == 0) {
            __glOdysseyGetHardwareShadow(arg0, 0, temp_a3, temp_a4, temp_a5, temp_a6, 0x10000);
        }
        bcopy(sp900->unk6D28, sp, 0x900);
        temp_a3_2 = (sp84 >> 0x1C) & 3;
        __glOdysseyInitIgloo(arg0, arg1, (sp + (temp_a3_2 * 4))->unk120 & 0x3FF, sp + (temp_a3_2 * 0x10) + 0x380);
        temp_a4_2 = sp84 >> 0x1E;
        temp_a4_3 = temp_a4_2 * 0x10;
        __glOdysseyInitIgloo(arg0, sp918, (sp + (temp_a4_2 * 4))->unk110 & 0x3FF, sp + temp_a4_3 + 0x340, temp_a4_3);
        temp_a4_4 = (sp84 >> 0x1A) & 3;
        temp_a4_5 = temp_a4_4 * 0x10;
        __glOdysseyInitIgloo(arg0, sp908, (sp + (temp_a4_4 * 4))->unk130 & 0x3FF, sp + temp_a4_5 + 0x3C0, temp_a4_5);
        temp_a4_6 = (sp84 >> 0x16) & 3;
        temp_a4_7 = temp_a4_6 * 0x10;
        __glOdysseyInitIgloo(arg0, sp910, (sp + (temp_a4_6 * 4))->unk150 & 0x3FF, sp + temp_a4_7 + 0x440, temp_a4_7);
        arg1->unk30 = (s8) ((((u32) (sp + (((sp84 >> 0x12) & 3) * 4))->unk170 >> 0x18) & 0x1F) == 0xF);
        arg1->unk34 = (f32) arg0->unk590;
        arg1->unk38 = (f32) arg0->unk594;
        arg1->unk3C = (f32) arg0->unk598;
        arg1->unk40 = (f32) arg0->unk59C;
        arg1->unk44 = (f32) arg0->unk5A0;
        arg1->unk48 = (f32) arg0->unk5A4;
        arg1->unk4C = (f32) arg0->unk5A8;
        arg1->unk50 = (f32) arg0->unk5AC;
        arg1->unk54 = (f32) arg0->unk5B0;
        arg1->unk58 = (f32) arg0->unk5B4;
        arg1->unk5C = (f32) arg0->unk5B8;
        arg1->unk60 = (f32) arg0->unk5BC;
        arg1->unk64 = (f32) arg0->unk5C0;
        arg1->unk68 = (f32) arg0->unk5C4;
        arg1->unk6C = (f32) arg0->unk5C8;
        arg1->unk70 = (f32) arg0->unk5CC;
        arg1->unk74 = (f32) arg0->unk5D0;
        arg1->unk78 = (f32) arg0->unk5D4;
        arg1->unk7C = (f32) arg0->unk5DC;
        arg1->unk80 = (f32) arg0->unk5D8;
        arg1->unk84 = (f32) arg0->unk5E0;
        arg1->unk88 = (f32) arg0->unk5E4;
        arg1->unk8C = (f32) arg0->unk5E8;
        arg1->unk90 = (f32) arg0->unk5EC;
        arg1->unk94 = (f32) arg0->unk5F0;
        arg1->unk98 = (f32) arg0->unk5F4;
        arg1->unk9C = (f32) arg0->unk5F8;
        arg1->unkA0 = (f32) arg0->unk5FC;
        arg1->unkA4 = (f32) arg0->unk600;
        arg1->unkA8 = (f32) arg0->unk604;
        arg1->unkAC = (f32) arg0->unk608;
        arg1->unkB0 = (f32) arg0->unk60C;
        arg1->unkB4 = (f32) arg0->unk610;
        arg1->unkB8 = (f32) arg0->unk614;
        arg1->unkBC = (f32) arg0->unk618;
        arg1->unkC0 = (f32) arg0->unk61C;
        arg1->unkC4 = (f32) arg0->unk620;
        arg1->unkC8 = (f32) arg0->unk624;
        arg1->unkCC = (f32) arg0->unk62C;
        arg1->unkD0 = (f32) arg0->unk628;
        if ((arg0->unkC94 != 0) && (arg0->unk700 & 0x80)) {
            temp_a0 = arg0->unk568;
            if ((temp_a0 != 0x404) && (temp_a0 != 0x408)) {

            } else {
                temp_a1 = arg0->unk56C;
                switch (temp_a1) {                  /* switch 2; irregular */
                case 0x1600:                        /* switch 2 */
                    arg1->unk64 = (f32) arg1->unk0;
                    arg1->unk68 = (f32) arg1->unk4;
                    arg1->unk6C = (f32) arg1->unk8;
                    arg1->unk70 = (f32) arg1->unkC;
                    break;
                case 0x1200:                        /* switch 2 */
                    arg1->unk40 = (f32) arg1->unkC;
                    arg1->unk3C = (f32) arg1->unk8;
                    arg1->unk38 = (f32) arg1->unk4;
                    arg1->unk34 = (f32) arg1->unk0;
                    break;
                case 0x1201:                        /* switch 2 */
block_35:
                    arg1->unk50 = arg1->unkC;
                    arg1->unk4C = arg1->unk8;
                    arg1->unk48 = arg1->unk4;
                    arg1->unk44 = arg1->unk0;
                    break;
                case 0x1602:                        /* switch 2 */
                    arg1->unk40 = (f32) arg1->unkC;
                    arg1->unk3C = (f32) arg1->unk8;
                    arg1->unk38 = (f32) arg1->unk4;
                    arg1->unk34 = (f32) arg1->unk0;
                    goto block_35;
                case 0x1202:                        /* switch 2 */
                    arg1->unk54 = (f32) arg1->unk0;
                    arg1->unk58 = (f32) arg1->unk4;
                    arg1->unk5C = (f32) arg1->unk8;
                    arg1->unk60 = (f32) arg1->unkC;
                    break;
                }
            }
            if ((arg0->unk568 == 0x405) || (arg0->unk568 == 0x408)) {
                temp_a1_2 = arg0->unk56C;
                switch (temp_a1_2) {                /* switch 1; irregular */
                case 0x1600:                        /* switch 1 */
                    arg1->unkC0 = (f32) arg1->unkC;
                    arg1->unkBC = (f32) arg1->unk8;
                    arg1->unkB8 = (f32) arg1->unk4;
                    arg1->unkB4 = (f32) arg1->unk0;
                    return;
                case 0x1201:                        /* switch 1 */
                    arg1->unkA0 = arg1->unkC;
                    arg1->unk9C = arg1->unk8;
                    arg1->unk98 = arg1->unk4;
                    arg1->unk94 = arg1->unk0;
                    return;
                case 0x1602:                        /* switch 1 */
                    arg1->unk90 = (f32) arg1->unkC;
                    arg1->unk8C = (f32) arg1->unk8;
                    arg1->unk88 = (f32) arg1->unk4;
                    arg1->unk84 = (f32) arg1->unk0;
                    /* Duplicate return node #31. Try simplifying control flow for better match */
                    arg1->unkA0 = arg1->unkC;
                    arg1->unk9C = arg1->unk8;
                    arg1->unk98 = arg1->unk4;
                    arg1->unk94 = arg1->unk0;
                    return;
                case 0x1200:                        /* switch 1 */
                    arg1->unk90 = (f32) arg1->unkC;
                    arg1->unk8C = (f32) arg1->unk8;
                    arg1->unk88 = (f32) arg1->unk4;
                    arg1->unk84 = (f32) arg1->unk0;
                    return;
                case 0x1202:                        /* switch 1 */
                    arg1->unkB0 = (f32) arg1->unkC;
                    arg1->unkAC = (f32) arg1->unk8;
                    arg1->unkA8 = (f32) arg1->unk4;
                    arg1->unkA4 = (f32) arg1->unk0;
                    return;
                }
            }
        }
    }
}

/*
Decompilation failure in function setCurrent:

Unable to determine jump table for jr instruction at ody_context.s line 15380.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdysseyValidateDispatchTable(s32 *arg0) {
    s64 spE8;
    ? sp10;
    s32 *spC;
    s32 *sp8;
    s32 *sp4;
    s32 *sp0;
    s32 *temp_a5;
    s32 *temp_a6;
    s32 *temp_at;
    s32 *temp_t0;
    s32 *temp_t1;
    s32 *temp_t8_2;
    s32 *temp_t9;
    s32 *temp_t9_2;
    s32 *var_a4;
    s32 temp_a1;
    s32 temp_t8;
    s32 temp_t8_3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_s1;
    s64 var_ra;
    u8 temp_a7;
    void *temp_a3;

    var_ra = saved_reg_ra;
    if (*arg0->unk17F4 != 0) {
        if (arg0->unkC84 != 0x1C00) {
            var_a2 = 1;
            if (arg0->unk1695C != 1) {
                var_s1 = 1;
                goto block_4;
            }
            var_s1 = 1;
            if (arg0->unk19DC0 == 0) {

            } else {
block_4:
                goto block_5;
            }
        } else {
            var_ra = unksp100;
            if (__glOdysseyGetNumSWClipPlanes(arg0) > 0) {
                __glOdysseyValidateSoftClipPlanes(arg0);
                var_ra = unksp100;
                var_s1 = (arg0->unk16980 == NULL) ? 2 : 4;
            } else {
                var_s1 = (arg0->unk16980 == NULL) ? 0 : 3;
            }
            var_a2 = arg0->unk1695C;
            var_a4 = arg0 + 0x19DC0;
            if ((var_a2 != var_s1) || (var_a4 = (s32 *) arg0->unk19DC0, (var_a4 != NULL))) {
                if (var_s1 != 0) {
                    if (var_s1 != 3) {
                        var_a4 = &sub_0daf0000;
                        switch (var_s1) {           /* switch 3; irregular */
                        case 1:                     /* switch 3 */
block_5:
                            unksp100 = var_ra;
                            var_a4 = &sub_0daf0000 + 0x50B8 + 0x3B00;
                            spC = var_a4;
                            sp8 = var_a4;
                            sp4 = var_a4;
                            sp0 = var_a4;
                            break;
                        case 4:                     /* switch 3 */
                            /* fallthrough */
                        case 2:                     /* switch 3 */
                            temp_t1 = &sub_0daf0000 + 0x50B8;
                            spC = temp_t1 + 0x33A0;
                            sp8 = temp_t1 + 0x2C40;
                            sp4 = temp_t1 + 0x1620;
                            sp0 = temp_t1 + 0xEC0;
                            break;
                        }
                    } else {
                        goto block_59;
                    }
                } else {
block_59:
                    temp_at = &sub_0daf0000 + 0x50B8;
                    sp0 = temp_at;
                    spC = temp_at + 0x24E0;
                    sp8 = temp_at + 0x1D80;
                    sp4 = temp_at + 0x760;
                }
                temp_a7 = arg0->unkC94;
                temp_a6 = (temp_a7 == 0) ? spC : sp8;
                unksp100 = var_ra;
                temp_a5 = (arg0->unk16980 != NULL) ? temp_a6 : ((temp_a7 == 0) ? sp4 : sp0);
                spE8 = (s64) temp_a5;
                __glOdysseyInitIgloo(arg0, (s64) &sp10, var_a2, arg0->unk16980, (u8) var_a4, temp_a5, temp_a6, temp_a7);
                __glMipsCopyDispatch((void *) spE8, arg0->unk17F4);
                __glOdysseyInitIgloo(arg0, (s64) &sp10);
                arg0->unk16A04 = -1;
                arg0->unk1695C = var_s1;
                switch (var_s1) {                   /* switch 1; irregular */
                case 0:                             /* switch 1 */
                    var_a2_2 = arg0->unk19DBC;
                    temp_t0 = arg0->unk17F4 + 0x528;
                    if (arg0->unk19DC0 != 0) {
                        if (arg0->unk19DB4 != 0) {
                            var_a2_2 = (arg0->unk19DB8 != 0x1102) ? 2 : 3;
                        } else {
                            var_a2_2 = 0;
                        }
                        arg0->unk19DBC = var_a2_2;
                        if (var_a2_2 == 2) {
                            temp_a3 = arg0->unk7414;
                            if (((f64) temp_a3->unkBC == GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) && ((f64) temp_a3->unkCC == GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) && ((f64) temp_a3->unkDC == GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) && ((f64) fabsf(arg0->unk19D90) < (f64) fabsf(temp_a3->unkEC))) {
                                arg0->unk19DBC = 1;
                                var_a2_2 = 1;
                            }
                        }
                        arg0->unk19DC0 = 0U;
                    }
                    switch (var_a2_2) {             /* switch 2; irregular */
                    case 0:                         /* switch 2 */
                        break;
                    case 2:                         /* switch 2 */
                        var_a0 = 0x18;
                        var_a2_3 = 0;
                        do {
                            *(var_a2_3 + temp_t0) = *(var_a2_3 + &__glOdyim_vertexSmallWDispatchTable);
                            *(var_a2_3 + (temp_t0 + 4)) = *(var_a2_3 + (&__glOdyim_vertexSmallWDispatchTable + 4));
                            var_a0 -= 4;
                            *(var_a2_3 + (temp_t0 + 8)) = *(var_a2_3 + (&__glOdyim_vertexSmallWDispatchTable + 8));
                            temp_t9 = var_a2_3 + (temp_t0 + 0xC);
                            temp_t8 = *(var_a2_3 + (&__glOdyim_vertexSmallWDispatchTable + 0xC));
                            var_a2_3 += 0x10;
                            *temp_t9 = temp_t8;
                        } while (var_a0 > 0);
                        break;
                    case 3:                         /* switch 2 */
                        // Error: negative shift count
                        // At instruction: bgez $v1, .L0d9713e8
                        if (M2C_ERROR()) {
                            var_a0_2 = 0x18;
                            var_a2_4 = 0;
                            do {
                                *(var_a2_4 + temp_t0) = *(var_a2_4 + &__glOdyim_vertexMagDispatchTable);
                                *(var_a2_4 + (temp_t0 + 4)) = *(var_a2_4 + (&__glOdyim_vertexMagDispatchTable + 4));
                                var_a0_2 -= 4;
                                *(var_a2_4 + (temp_t0 + 8)) = *(var_a2_4 + (&__glOdyim_vertexMagDispatchTable + 8));
                                temp_t8_2 = var_a2_4 + M2C_ERROR(/* Read from unset register $t2 */);
                                temp_a1 = *(var_a2_4 + (&__glOdyim_vertexMagDispatchTable + 0xC));
                                var_a2_4 += 0x10;
                                *temp_t8_2 = temp_a1;
                            } while (var_a0_2 > 0);
                        } else {
                            var_a0_3 = 0x18;
                            var_a2_5 = 0;
                            do {
                                *(var_a2_5 + temp_t0) = *(var_a2_5 + &__glOdyim_vertexMagLine0DispatchTable);
                                *(var_a2_5 + (temp_t0 + 4)) = *(var_a2_5 + (&__glOdyim_vertexMagLine0DispatchTable + 4));
                                var_a0_3 -= 4;
                                *(var_a2_5 + (temp_t0 + 8)) = *(var_a2_5 + (&__glOdyim_vertexMagLine0DispatchTable + 8));
                                temp_t9_2 = var_a2_5 + (temp_t0 + 0xC);
                                temp_t8_3 = *(var_a2_5 + (&__glOdyim_vertexMagLine0DispatchTable + 0xC));
                                var_a2_5 += 0x10;
                                *temp_t9_2 = temp_t8_3;
                            } while (var_a0_3 > 0);
                        }
                        break;
                    case 1:                         /* switch 2 */
                        temp_t0->unk5C = &__glOdyim_Vertex4sv_smallw;
                        temp_t0->unk58 = &__glOdyim_Vertex4s_smallw;
                        temp_t0->unk54 = &__glOdyim_Vertex4iv_smallw;
                        temp_t0->unk50 = &__glOdyim_Vertex4i_smallw;
                        temp_t0->unk4C = &__glOdyim_Vertex4fv_smallw;
                        temp_t0->unk48 = &__glOdyim_Vertex4f_smallw;
                        temp_t0->unk44 = &__glOdyim_Vertex4dv_smallw;
                        temp_t0->unk40 = &__glOdyim_Vertex4d_smallw;
                        break;
                    }
                    /* fallthrough */
                case 3:                             /* switch 1 */
                    arg0->unk2E80 = &__glGenericPickVertexProcs;
                    arg0->unk2E60 = &__glGenericPickTriangleProcs;
                    arg0->unk2E4C = &__glOdysseyPickTextureProcs;
                    arg0->unk2E58 = &__glGenericPickPointProcs;
                    arg0->unk2E70 = &__glGenericPickParameterClipProcs;
                    arg0->unk2E5C = &__glGenericPickLineProcs;
                    arg0->unk2E48 = &__glGenericPickColorMaterialProcs;
                    arg0->unk2E6C = &__glGenericPickClipProcs;
                    arg0->unk2E94 = &__glOdysseyPickAllProcs;
                    arg0->unk2F5C = &__glEndPrim;
                    arg0->unk2F58 = &__glBeginPolygon;
                    arg0->unk2F54 = &__glBeginQStrip;
                    arg0->unk2F50 = &__glBeginQuads;
                    arg0->unk2F4C = &__glBeginTFan;
                    arg0->unk2F48 = (? *) M2C_ERROR(/* Read from unset register $t9 */);
                    arg0->unk2F44 = &__glBeginTriangles;
                    arg0->unk2F3C = &__glBeginLLoop;
                    arg0->unk2F40 = &__glBeginLStrip;
                    arg0->unk2F38 = &__glBeginLines;
                    arg0->unk2F34 = &__glBeginPoints;
                    break;
                case 2:                             /* switch 1 */
                case 4:                             /* switch 1 */
                    arg0->unk2F34 = &__glOdysseySoftClipBeginPoints;
                    arg0->unk2F38 = &__glOdysseySoftClipBeginLines;
                    arg0->unk2F40 = &__glOdysseySoftClipBeginLStrip;
                    arg0->unk2F3C = (? *) arg0->unk19EA0;
                    arg0->unk2F44 = &__glOdysseySoftClipBeginTriangles;
                    arg0->unk2F48 = &__glOdysseySoftClipBeginTStrip;
                    arg0->unk2F4C = &__glOdysseySoftClipBeginTFan;
                    arg0->unk2F50 = &__glOdysseySoftClipBeginQuads;
                    arg0->unk2F54 = &__glOdysseySoftClipBeginQStrip;
                    arg0->unk2F58 = &__glOdysseySoftClipBeginPolygon;
                    arg0->unk2F5C = &__glEndPrim;
                    arg0->unk2E94 = &__glOdysseySoftClipPickAllProcs;
                    arg0->unk2E48 = &__glOdysseyPickColorMaterialProcs;
                    arg0->unk2E5C = &__glOdysseySoftClipPickLineProcs;
                    arg0->unk2E70 = &__glOdysseySoftClipPickParameterClipProcs;
                    arg0->unk2E58 = &__glOdysseySoftClipPickPointProcs;
                    arg0->unk2E4C = (? *) M2C_ERROR(/* Read from unset register $t9 */);
                    arg0->unk2E80 = &__glOdysseySoftClipPickVertexProcs;
                    arg0->unk2E6C = &__glOdysseySoftClipPickClipProcs;
                    if (arg0->unk19DE2 != 0) {
                        if (arg0->unkC94 != 0) {
                            arg0->unk2E60 = &__glOdysseySoftClipPickTriangleProcsFast;
                        } else {
                            goto block_32;
                        }
                    } else {
block_32:
                        arg0->unk2E60 = &__glOdysseySoftClipPickTriangleProcs;
                    }
                    break;
                case 1:                             /* switch 1 */
                    arg0->unk2E80 = &__glGenericPickVertexProcs;
                    arg0->unk2E60 = &__glGenericPickTriangleProcs;
                    arg0->unk2E4C = &__glOdysseyPickTextureProcs;
                    arg0->unk2E58 = &__glGenericPickPointProcs;
                    arg0->unk2E70 = (? *) M2C_ERROR(/* Read from unset register $t9 */);
                    arg0->unk2E5C = &__glGenericPickLineProcs;
                    arg0->unk2E48 = &__glGenericPickColorMaterialProcs;
                    arg0->unk2E6C = &__glGenericPickClipProcs;
                    arg0->unk2E94 = &__glOdysseyPickAllProcs;
                    arg0->unk2F5C = &__glEndPrim;
                    arg0->unk2F58 = &__glBeginPolygon;
                    arg0->unk2F54 = &__glBeginQStrip;
                    arg0->unk2F50 = &__glBeginQuads;
                    arg0->unk2F4C = &__glBeginTFan;
                    arg0->unk2F48 = &__glBeginTStrip;
                    arg0->unk2F44 = &__glBeginTriangles;
                    arg0->unk2F3C = &__glBeginLLoop;
                    arg0->unk2F40 = &__glBeginLStrip;
                    arg0->unk2F38 = &__glBeginLines;
                    arg0->unk2F34 = &__glBeginPoints;
                    break;
                }
                sub_0d960000((s64) arg0);
                *(s32 *)0x1018 = 2;
                arg0->unk2E24 = (s32) (arg0->unk2E24 | 1);
            }
        }
    }
}
