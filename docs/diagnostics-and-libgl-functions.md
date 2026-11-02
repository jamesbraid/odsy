# Diagnostics, libGL and leftover libGLcore functions by role

Release IRIX 6.5.30m. Labels: function names and the binaries that carry them are **established** from the symbol tables; roles are **inferred** from the names, and the programs listed were not read in full unless another chapter says so. The lists below are names filed by role and describe no function's behaviour.

## `libGL.so`

The client library (`usr/gfx/arch/IP30ODSY*/libGL.so`, the same name set for IP35). It is the GLX client: public GLX entry points, the client-side bookkeeping that binds a GLX context to the board's hardware context, and one protocol encoder per OpenGL call.

public GLX API (glX*): contexts, drawables, framebuffer configurations, pbuffers, swap groups, hyperpipe and video-source extensions (part 1).

`glXAssociateDMPbufferSGIX`, `glXBindChannelToWindowSGIX`, `glXBindHyperpipeSGIX`, `glXBindSwapBarrierSGIX`, `glXChannelRectSGIX`, `glXChannelRectSyncSGIX`, `glXChooseFBConfig`, `glXChooseFBConfigSGIX`, `glXChooseFBConfigWithFltSGIX`, `glXChooseVisual`, `glXCopyContext`, `glXCreateContext`, `glXCreateContextWithConfigSGIX`, `glXCreateGLXPbufferSGIX`, `glXCreateGLXPixmap`, `glXCreateGLXPixmapWithConfigSGIX`, `glXCreateGLXVideoSourceSGIX`, `glXCreateNewContext`, `glXCreatePbuffer`, `glXCreatePixmap`, `glXCreateWindow`, `glXDestroyContext`, `glXDestroyGLXPbufferSGIX`, `glXDestroyGLXPixmap`, `glXDestroyGLXVideoSourceSGIX`, `glXDestroyHyperpipeConfigSGIX`, `glXDestroyPbuffer`, `glXDestroyPixmap`, `glXDestroyWindow`, `glXFreeContextEXT`, `glXGetClientString`, `glXGetConfig`, `glXGetContextIDEXT`, `glXGetCurrentContext`, `glXGetCurrentDisplay`, `glXGetCurrentDisplayEXT`, `glXGetCurrentDrawable`, `glXGetCurrentDrawableEXT`, `glXGetCurrentReadDrawable`, `glXGetCurrentReadDrawableSGI`

public GLX API (glX*): contexts, drawables, framebuffer configurations, pbuffers, swap groups, hyperpipe and video-source extensions (part 2).

`glXGetFBConfigAttrib`, `glXGetFBConfigAttribSGIX`, `glXGetFBConfigFltAttribSGIX`, `glXGetFBConfigFromVisualSGIX`, `glXGetFBConfigs`, `glXGetProcAddress`, `glXGetProcAddressARB`, `glXGetSelectedEvent`, `glXGetSelectedEventSGIX`, `glXGetVideoSyncSGI`, `glXGetVisualFromFBConfig`, `glXGetVisualFromFBConfigSGIX`, `glXHyperpipeAttribSGIX`, `glXHyperpipeConfigSGIX`, `glXImportContextEXT`, `glXIsDirect`, `glXJoinSwapGroupSGIX`, `glXMakeContextCurrent`, `glXMakeCurrent`, `glXMakeCurrentReadSGI`, `glXQueryChannelDeltasSGIX`, `glXQueryChannelRectSGIX`, `glXQueryContext`, `glXQueryContextInfoEXT`, `glXQueryDrawable`, `glXQueryExtension`, `glXQueryExtensionsString`, `glXQueryGLXPbufferSGIX`, `glXQueryHyperpipeAttribSGIX`, `glXQueryHyperpipeBestAttribSGIX`, `glXQueryHyperpipeConfigSGIX`, `glXQueryHyperpipeNetworkSGIX`, `glXQueryMaxSwapBarriersSGIX`, `glXQueryServerString`, `glXQueryVersion`, `glXSelectEvent`, `glXSelectEventSGIX`, `glXSwapBuffers`, `glXSwapIntervalSGI`, `glXUseXFont`

public GLX API (glX*): contexts, drawables, framebuffer configurations, pbuffers, swap groups, hyperpipe and video-source extensions (part 3).

`glXWaitGL`, `glXWaitVideoSyncSGI`, `glXWaitX`

GLX request-size calculators (__glX*_size).

`__glXCallLists_size`, `__glXColorTableParameterfvSGI_size`, `__glXColorTableParameterivSGI_size`, `__glXConvolutionParameterfvEXT_size`, `__glXConvolutionParameterivEXT_size`, `__glXFogfv_size`, `__glXFogiv_size`, `__glXLightModelfv_size`, `__glXLightModeliv_size`, `__glXLightfv_size`, `__glXLightiv_size`, `__glXMaterialfv_size`, `__glXMaterialiv_size`, `__glXPixelTransformParameterfvSGI_size`, `__glXPixelTransformParameterivSGI_size`, `__glXPointParameterfvSGIS_size`, `__glXSpriteParameterfvSGIX_size`, `__glXSpriteParameterivSGIX_size`, `__glXTexEnvfv_size`, `__glXTexEnviv_size`, `__glXTexGendv_size`, `__glXTexGenfv_size`, `__glXTexGeniv_size`, `__glXTexImage1D_size`, `__glXTexImage2D_size`, `__glXTexParameterfv_size`, `__glXTexParameteriv_size`

GLX client internals (__glX*): display and drawable bookkeeping, hardware-context binding, large-command sending, error reporting, image and map packing (part 1).

`__glXAddDrawableInterest`, `__glXAllocHWContext`, `__glXBeginDispatchOverride`, `__glXBindHWContextToWindow`, `__glXBufCalloc`, `__glXBufFree`, `__glXBufMalloc`, `__glXBufRealloc`, `__glXBytesPerArrayElt`, `__glXCalloc`, `__glXCleanUpDrawablePrivates`, `__glXClientInfo`, `__glXCloseDisplay`, `__glXCreateDirectContext`, `__glXCreateVideoSourcePrivate`, `__glXDestroyVideoSourcePrivate`, `__glXDispatchExec`, `__glXDrawArraysDataSize`, `__glXEmptyImage`, `__glXEmptyImage3D4D`, `__glXEndDispatchOverride`, `__glXError`, `__glXErrorString`, `__glXEvalComputeK`, `__glXFatal`, `__glXFillImage`, `__glXFillImage3D4D`, `__glXFillMap1d`, `__glXFillMap1f`, `__glXFillMap2d`, `__glXFillMap2f`, `__glXFindDisplay`, `__glXFindFBConfig`, `__glXFindFBConfigFromVid`, `__glXFindVisualConfig`, `__glXFlushRenderBuffer`, `__glXFree`, `__glXFreeContext`, `__glXFreeDisplayPrivate`, `__glXFreeDrawablePrivate`

GLX client internals (__glX*): display and drawable bookkeeping, hardware-context binding, large-command sending, error reporting, image and map packing (part 2).

`__glXFreeHWContext`, `__glXGetBoardNumber`, `__glXGetDrawableAttributes`, `__glXGetDrawablePrivate`, `__glXGetDrawableSize`, `__glXGetModes`, `__glXGetPipeAddress`, `__glXGetReadDrawablePrivate`, `__glXGetReadDrawableSize`, `__glXGetXPrivates`, `__glXHWAttach`, `__glXImageSize`, `__glXInit`, `__glXInitChannelRectState`, `__glXInitDummyContext`, `__glXInitThread`, `__glXInitVertexArrayState`, `__glXInitialize`, `__glXInitializeVideoLibrary`, `__glXIsDirect`, `__glXMakeContextCurrent`, `__glXMalloc`, `__glXOpenGraphics`, `__glXOpenGraphicsDevice`, `__glXOverrideVisualGetVisualInfo`, `__glXOverrideVisualsBogusChoose`, `__glXOverrideVisualsIdToXid`, `__glXPixmapBackdoor`, `__glXPixmapMemory`, `__glXPostError`, `__glXPostHiddenError`, `__glXQueryContext`, `__glXQueryContextInfo`, `__glXQueryServerString`, `__glXRealloc`, `__glXRemoveDrawableInterest`, `__glXRestoreCurrent`, `__glXSendLargeCommand`, `__glXSendMakeCurrent`, `__glXSendMakeCurrentRead`

GLX client internals (__glX*): display and drawable bookkeeping, hardware-context binding, large-command sending, error reporting, image and map packing (part 3).

`__glXSetupForCommand`, `__glXSpecialDestroyCallback`, `__glXTypeSize`, `__glXUnbindHWContextFromThread`, `__glXUseXFont`, `__glXWarning`, `__glXWireToEvent`, `__glXatExit`

GLX-protocol encoders for the OpenGL calls (__glx_*), one per GL entry point and extension (inferred: indirect-rendering stubs that send the call to the server) (part 1).

`__glx_Accum`, `__glx_AlphaFunc`, `__glx_AreTexturesResident`, `__glx_AreTexturesResidentEXT`, `__glx_ArrayElementEXT`, `__glx_Begin`, `__glx_BindTextureEXT`, `__glx_Bitmap`, `__glx_BlendColorEXT`, `__glx_BlendEquationEXT`, `__glx_BlendFunc`, `__glx_CallList`, `__glx_CallLists`, `__glx_Clear`, `__glx_ClearAccum`, `__glx_ClearColor`, `__glx_ClearDepth`, `__glx_ClearIndex`, `__glx_ClearStencil`, `__glx_ClipPlane`, `__glx_Color3b`, `__glx_Color3bv`, `__glx_Color3d`, `__glx_Color3dv`, `__glx_Color3f`, `__glx_Color3fv`, `__glx_Color3i`, `__glx_Color3iv`, `__glx_Color3s`, `__glx_Color3sv`, `__glx_Color3ub`, `__glx_Color3ubv`, `__glx_Color3ui`, `__glx_Color3uiv`, `__glx_Color3us`, `__glx_Color3usv`, `__glx_Color4b`, `__glx_Color4bv`, `__glx_Color4d`, `__glx_Color4dv`

GLX-protocol encoders for the OpenGL calls (__glx_*), one per GL entry point and extension (inferred: indirect-rendering stubs that send the call to the server) (part 2).

`__glx_Color4f`, `__glx_Color4fv`, `__glx_Color4i`, `__glx_Color4iv`, `__glx_Color4s`, `__glx_Color4sv`, `__glx_Color4ub`, `__glx_Color4ubv`, `__glx_Color4ui`, `__glx_Color4uiv`, `__glx_Color4us`, `__glx_Color4usv`, `__glx_ColorMask`, `__glx_ColorMaterial`, `__glx_ColorPointer`, `__glx_ColorPointerEXT`, `__glx_ColorSubTable`, `__glx_ColorTableParameterfvSGI`, `__glx_ColorTableParameterivSGI`, `__glx_ColorTableSGI`, `__glx_ConvolutionFilter1D2D`, `__glx_ConvolutionFilter1DEXT`, `__glx_ConvolutionFilter2DEXT`, `__glx_ConvolutionParameterfEXT`, `__glx_ConvolutionParameterfvEXT`, `__glx_ConvolutionParameteriEXT`, `__glx_ConvolutionParameterivEXT`, `__glx_CopyColorSubTable`, `__glx_CopyColorTableSGI`, `__glx_CopyConvolutionFilter1DEXT`, `__glx_CopyConvolutionFilter2DEXT`, `__glx_CopyPixels`, `__glx_CopyTexImage1DEXT`, `__glx_CopyTexImage2DEXT`, `__glx_CopyTexSubImage1DEXT`, `__glx_CopyTexSubImage2DEXT`, `__glx_CopyTexSubImage3DEXT`, `__glx_CullFace`, `__glx_DeleteLists`, `__glx_DeleteTextures`

GLX-protocol encoders for the OpenGL calls (__glx_*), one per GL entry point and extension (inferred: indirect-rendering stubs that send the call to the server) (part 3).

`__glx_DeleteTexturesEXT`, `__glx_DepthFunc`, `__glx_DepthMask`, `__glx_DepthRange`, `__glx_DetailTexFuncSGIS`, `__glx_Disable`, `__glx_DisableClientState`, `__glx_DispatchNop`, `__glx_DrawArrays`, `__glx_DrawArraysEXT`, `__glx_DrawBuffer`, `__glx_DrawElements`, `__glx_DrawPixels`, `__glx_DrawRangeElements`, `__glx_EdgeFlag`, `__glx_EdgeFlagPointer`, `__glx_EdgeFlagPointerEXT`, `__glx_EdgeFlagv`, `__glx_Enable`, `__glx_EnableClientState`, `__glx_End`, `__glx_EndList`, `__glx_EvalCoord1d`, `__glx_EvalCoord1dv`, `__glx_EvalCoord1f`, `__glx_EvalCoord1fv`, `__glx_EvalCoord2d`, `__glx_EvalCoord2dv`, `__glx_EvalCoord2f`, `__glx_EvalCoord2fv`, `__glx_EvalMesh1`, `__glx_EvalMesh2`, `__glx_EvalPoint1`, `__glx_EvalPoint2`, `__glx_FeedbackBuffer`, `__glx_Finish`, `__glx_Flush`, `__glx_FlushRasterSGIX`, `__glx_FogFuncSGIS`, `__glx_Fogf`

GLX-protocol encoders for the OpenGL calls (__glx_*), one per GL entry point and extension (inferred: indirect-rendering stubs that send the call to the server) (part 4).

`__glx_Fogfv`, `__glx_Fogi`, `__glx_Fogiv`, `__glx_FrameZoomSGIX`, `__glx_FrontFace`, `__glx_Frustum`, `__glx_GenLists`, `__glx_GenTextures`, `__glx_GenTexturesEXT`, `__glx_GetBooleanv`, `__glx_GetClipPlane`, `__glx_GetColorTable`, `__glx_GetColorTableParameterfv`, `__glx_GetColorTableParameterfvSGI`, `__glx_GetColorTableParameteriv`, `__glx_GetColorTableParameterivSGI`, `__glx_GetColorTableSGI`, `__glx_GetConvolutionFilter`, `__glx_GetConvolutionFilterEXT`, `__glx_GetConvolutionParameterfv`, `__glx_GetConvolutionParameterfvEXT`, `__glx_GetConvolutionParameteriv`, `__glx_GetConvolutionParameterivEXT`, `__glx_GetDetailTexFuncSGIS`, `__glx_GetDoublev`, `__glx_GetError`, `__glx_GetFloatv`, `__glx_GetHistogram`, `__glx_GetHistogramEXT`, `__glx_GetHistogramParameterfv`, `__glx_GetHistogramParameterfvEXT`, `__glx_GetHistogramParameteriv`, `__glx_GetHistogramParameterivEXT`, `__glx_GetInstrumentsSGIX`, `__glx_GetIntegerv`, `__glx_GetLightfv`, `__glx_GetLightiv`, `__glx_GetMapdv`, `__glx_GetMapfv`, `__glx_GetMapiv`

GLX-protocol encoders for the OpenGL calls (__glx_*), one per GL entry point and extension (inferred: indirect-rendering stubs that send the call to the server) (part 5).

`__glx_GetMaterialfv`, `__glx_GetMaterialiv`, `__glx_GetMinmax`, `__glx_GetMinmaxEXT`, `__glx_GetMinmaxParameterfv`, `__glx_GetMinmaxParameterfvEXT`, `__glx_GetMinmaxParameteriv`, `__glx_GetMinmaxParameterivEXT`, `__glx_GetPixelMapfv`, `__glx_GetPixelMapuiv`, `__glx_GetPixelMapusv`, `__glx_GetPointervEXT`, `__glx_GetPolygonStipple`, `__glx_GetSeparableFilter`, `__glx_GetSeparableFilterEXT`, `__glx_GetSharpenTexFuncSGIS`, `__glx_GetString`, `__glx_GetTexEnvfv`, `__glx_GetTexEnviv`, `__glx_GetTexFilterFuncSGIS`, `__glx_GetTexGendv`, `__glx_GetTexGenfv`, `__glx_GetTexGeniv`, `__glx_GetTexImage`, `__glx_GetTexLevelParameterfv`, `__glx_GetTexLevelParameteriv`, `__glx_GetTexParameterfv`, `__glx_GetTexParameteriv`, `__glx_Hint`, `__glx_HistogramEXT`, `__glx_IndexMask`, `__glx_IndexPointer`, `__glx_IndexPointerEXT`, `__glx_Indexd`, `__glx_Indexdv`, `__glx_Indexf`, `__glx_Indexfv`, `__glx_Indexi`, `__glx_Indexiv`, `__glx_Indexs`

GLX-protocol encoders for the OpenGL calls (__glx_*), one per GL entry point and extension (inferred: indirect-rendering stubs that send the call to the server) (part 6).

`__glx_Indexsv`, `__glx_Indexub`, `__glx_Indexubv`, `__glx_InitNames`, `__glx_InstrumentsBufferSGIX`, `__glx_InterleavedArrays`, `__glx_IsEnabled`, `__glx_IsList`, `__glx_IsTexture`, `__glx_IsTextureEXT`, `__glx_LightModelf`, `__glx_LightModelfv`, `__glx_LightModeli`, `__glx_LightModeliv`, `__glx_Lightf`, `__glx_Lightfv`, `__glx_Lighti`, `__glx_Lightiv`, `__glx_LineStipple`, `__glx_LineWidth`, `__glx_ListBase`, `__glx_LoadIdentity`, `__glx_LoadMatrixd`, `__glx_LoadMatrixf`, `__glx_LoadName`, `__glx_LogicOp`, `__glx_Map1d`, `__glx_Map1f`, `__glx_Map2d`, `__glx_Map2f`, `__glx_MapGrid1d`, `__glx_MapGrid1f`, `__glx_MapGrid2d`, `__glx_MapGrid2f`, `__glx_Materialf`, `__glx_Materialfv`, `__glx_Materiali`, `__glx_Materialiv`, `__glx_MatrixMode`, `__glx_MinmaxEXT`

GLX-protocol encoders for the OpenGL calls (__glx_*), one per GL entry point and extension (inferred: indirect-rendering stubs that send the call to the server) (part 7).

`__glx_MultMatrixd`, `__glx_MultMatrixf`, `__glx_NewList`, `__glx_Normal3b`, `__glx_Normal3bv`, `__glx_Normal3d`, `__glx_Normal3dv`, `__glx_Normal3f`, `__glx_Normal3fv`, `__glx_Normal3i`, `__glx_Normal3iv`, `__glx_Normal3s`, `__glx_Normal3sv`, `__glx_NormalPointer`, `__glx_NormalPointerEXT`, `__glx_Ortho`, `__glx_PassThrough`, `__glx_PixelMapfv`, `__glx_PixelMapuiv`, `__glx_PixelMapusv`, `__glx_PixelStoref`, `__glx_PixelStorei`, `__glx_PixelTexGenSGIX`, `__glx_PixelTransferf`, `__glx_PixelTransferi`, `__glx_PixelZoom`, `__glx_PointParameterfSGIS`, `__glx_PointParameterfvSGIS`, `__glx_PointSize`, `__glx_PollInstrumentsSGIX`, `__glx_PolygonMode`, `__glx_PolygonOffset`, `__glx_PolygonOffsetEXT`, `__glx_PolygonStipple`, `__glx_PopAttrib`, `__glx_PopClientAttrib`, `__glx_PopMatrix`, `__glx_PopName`, `__glx_PrioritizeTexturesEXT`, `__glx_PushAttrib`

GLX-protocol encoders for the OpenGL calls (__glx_*), one per GL entry point and extension (inferred: indirect-rendering stubs that send the call to the server) (part 8).

`__glx_PushClientAttrib`, `__glx_PushMatrix`, `__glx_PushName`, `__glx_RasterPos2d`, `__glx_RasterPos2dv`, `__glx_RasterPos2f`, `__glx_RasterPos2fv`, `__glx_RasterPos2i`, `__glx_RasterPos2iv`, `__glx_RasterPos2s`, `__glx_RasterPos2sv`, `__glx_RasterPos3d`, `__glx_RasterPos3dv`, `__glx_RasterPos3f`, `__glx_RasterPos3fv`, `__glx_RasterPos3i`, `__glx_RasterPos3iv`, `__glx_RasterPos3s`, `__glx_RasterPos3sv`, `__glx_RasterPos4d`, `__glx_RasterPos4dv`, `__glx_RasterPos4f`, `__glx_RasterPos4fv`, `__glx_RasterPos4i`, `__glx_RasterPos4iv`, `__glx_RasterPos4s`, `__glx_RasterPos4sv`, `__glx_ReadBuffer`, `__glx_ReadInstrumentsSGIX`, `__glx_ReadPixels`, `__glx_Rectd`, `__glx_Rectdv`, `__glx_Rectf`, `__glx_Rectfv`, `__glx_Recti`, `__glx_Rectiv`, `__glx_Rects`, `__glx_Rectsv`, `__glx_ReferencePlaneSGIX`, `__glx_RenderMode`

GLX-protocol encoders for the OpenGL calls (__glx_*), one per GL entry point and extension (inferred: indirect-rendering stubs that send the call to the server) (part 9).

`__glx_ResetHistogramEXT`, `__glx_ResetMinmaxEXT`, `__glx_Rotated`, `__glx_Rotatef`, `__glx_SampleMaskSGIS`, `__glx_SamplePatternSGIS`, `__glx_Scaled`, `__glx_Scalef`, `__glx_Scissor`, `__glx_SelectBuffer`, `__glx_SeparableFilter2DEXT`, `__glx_ShadeModel`, `__glx_SharpenTexFuncSGIS`, `__glx_SpriteParameterfSGIX`, `__glx_SpriteParameterfvSGIX`, `__glx_SpriteParameteriSGIX`, `__glx_SpriteParameterivSGIX`, `__glx_StartInstrumentsSGIX`, `__glx_StencilFunc`, `__glx_StencilMask`, `__glx_StencilOp`, `__glx_StopInstrumentsSGIX`, `__glx_TagSampleBufferSGIX`, `__glx_TexCoord1d`, `__glx_TexCoord1dv`, `__glx_TexCoord1f`, `__glx_TexCoord1fv`, `__glx_TexCoord1i`, `__glx_TexCoord1iv`, `__glx_TexCoord1s`, `__glx_TexCoord1sv`, `__glx_TexCoord2d`, `__glx_TexCoord2dv`, `__glx_TexCoord2f`, `__glx_TexCoord2fv`, `__glx_TexCoord2i`, `__glx_TexCoord2iv`, `__glx_TexCoord2s`, `__glx_TexCoord2sv`, `__glx_TexCoord3d`

GLX-protocol encoders for the OpenGL calls (__glx_*), one per GL entry point and extension (inferred: indirect-rendering stubs that send the call to the server) (part 10).

`__glx_TexCoord3dv`, `__glx_TexCoord3f`, `__glx_TexCoord3fv`, `__glx_TexCoord3i`, `__glx_TexCoord3iv`, `__glx_TexCoord3s`, `__glx_TexCoord3sv`, `__glx_TexCoord4d`, `__glx_TexCoord4dv`, `__glx_TexCoord4f`, `__glx_TexCoord4fv`, `__glx_TexCoord4i`, `__glx_TexCoord4iv`, `__glx_TexCoord4s`, `__glx_TexCoord4sv`, `__glx_TexCoordPointer`, `__glx_TexCoordPointerEXT`, `__glx_TexEnvf`, `__glx_TexEnvfv`, `__glx_TexEnvi`, `__glx_TexEnviv`, `__glx_TexFilterFuncSGIS`, `__glx_TexGend`, `__glx_TexGendv`, `__glx_TexGenf`, `__glx_TexGenfv`, `__glx_TexGeni`, `__glx_TexGeniv`, `__glx_TexImage1D`, `__glx_TexImage2D`, `__glx_TexImage3D4D`, `__glx_TexImage3DEXT`, `__glx_TexImage4DSGIS`, `__glx_TexParameterf`, `__glx_TexParameterfv`, `__glx_TexParameteri`, `__glx_TexParameteriv`, `__glx_TexSubImage1D2DEXT`, `__glx_TexSubImage1DEXT`, `__glx_TexSubImage2DEXT`

GLX-protocol encoders for the OpenGL calls (__glx_*), one per GL entry point and extension (inferred: indirect-rendering stubs that send the call to the server) (part 11).

`__glx_TexSubImage3D4DEXT`, `__glx_TexSubImage3DEXT`, `__glx_TexSubImage4DSGIS`, `__glx_TextureColorMaskSGIS`, `__glx_Translated`, `__glx_Translatef`, `__glx_Vertex2d`, `__glx_Vertex2dv`, `__glx_Vertex2f`, `__glx_Vertex2fv`, `__glx_Vertex2i`, `__glx_Vertex2iv`, `__glx_Vertex2s`, `__glx_Vertex2sv`, `__glx_Vertex3d`, `__glx_Vertex3dv`, `__glx_Vertex3f`, `__glx_Vertex3fv`, `__glx_Vertex3i`, `__glx_Vertex3iv`, `__glx_Vertex3s`, `__glx_Vertex3sv`, `__glx_Vertex4d`, `__glx_Vertex4dv`, `__glx_Vertex4f`, `__glx_Vertex4fv`, `__glx_Vertex4i`, `__glx_Vertex4iv`, `__glx_Vertex4s`, `__glx_Vertex4sv`, `__glx_VertexPointer`, `__glx_VertexPointerEXT`, `__glx_Viewport`

library helpers without a prefix: visual and framebuffer-config scoring and ordering, image packing, board queries (part 1).

`AccumScore`, `AllocAndFetchScreenConfigs`, `AuxScore`, `BytesPerElement`, `ColorScore`, `CreateContext`, `DepthScore`, `DestroyContext`, `ElementsPerGroup`, `EmptyBitmap`, `FillArrayData`, `FillBitmap`, `FillCompHeader`, `FreeScreenConfigs`, `GetBoardName`, `GetBoardNumber`, `GetFBConfigs`, `GetFBConfigsSGIX`, `GetVisualConfigs`, `IndexScore`, `Ioctl`, `OverrideVisuals`, `PackSubsampledImage`, `QueryVersion`, `SampleScore`, `SendDrawArrays`, `SendLargeImage`, `SendLargeImage3D4D`, `StencilScore`, `UnpackSubsampledImage`, `_init`, `_stub`, `checkExtension`, `combine_strings`, `isLocal`, `isNotProxy`, `orderFBConfigSGIXs`, `orderFBConfigs`, `orderLarger`, `orderLarger1`

library helpers without a prefix: visual and framebuffer-config scoring and ordering, image packing, board queries (part 2).

`orderSmaller`, `sampleBuffersScore`, `videoPackingToInternalFormat`

### Read hardware-facing `libGL.so` routines

The following entries are from the IP30 o32 `libGL.so` in the 6.5.30 media build. Each routine was read from its generated fact sheet and instruction listing; the addresses and sizes are the binary's `.text` values.

- `Ioctl` (`libGL.so`, offset 0xd8113d4, 68 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Selects a board descriptor from the table at address 0x1014 using the board index in `a0`, loads that descriptor's file descriptor at offset 4, calls the imported `ioctl` with the caller's remaining arguments, and returns the imported result unchanged. The only board-specific memory access is the descriptor-table load at 0x1014; a board index therefore selects the descriptor but this helper does not interpret the request.
- `GetBoardNumber` (`libGL.so`, offset 0xd811418, 548 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Reads the display's private board property through `XInternAtom`, indexes the per-display record with the requested screen number, and calls `XGetWindowProperty` on that record before releasing the returned property with `XFree`. The property path is conditional on the X display data and the routine returns the board number obtained from that property, or the failure value produced by the X-side path.
- `glXSwapBuffers` (`libGL.so`, offset 0xd811aa4, 400 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Looks up the current display and drawable from the display table at 0x1014, builds the GLX swap request for the supplied drawable, sends it through the GLX command path after `__glXSetupForCommand`, flushes the X connection, and returns the command-path result. The routine takes the display and drawable arguments, uses request opcode 0x0b, and calls `XFlush` on the final path.
- `glXMakeCurrent` (`libGL.so`, offset 0xd812940, 68 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Passes the supplied display, drawable and context to `__glXMakeContextCurrent`, using the same drawable for the read and draw targets, and returns that helper's result. No board register or mapped FIFO is touched directly; hardware attachment is delegated to the context-current path.
- `__glXSendMakeCurrent` (`libGL.so`, offset 0xd810ad4, 496 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Sends the GLX make-current request after `__glXSetupForCommand`, flushes the connection, waits for the reply, and reports a reply error through `__glXPostHiddenError` with the reply's error fields. The three incoming arguments identify the display-side context and draw/read drawables; the routine returns the request/reply path's status rather than a hardware value.
- `__glXHWAttach` (`libGL.so`, offset 0xd811524, 280 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Opens the graphics device for the display record, then sends private requests 0x67 and 0x70 through `Ioctl`, using the context as the request owner and a 4-byte stack result for each call. Each request has its own error-reporting path; failure in either attach request prevents the hardware context from being considered attached.
- `__glXOpenGraphicsDevice` (`libGL.so`, offset 0xd8104b0, 388 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Opens the device name held by the display record with flags 0x802, marks the resulting descriptor close-on-exec with `fcntl` command 2 and value 5, and queries it with ioctl request 0x65. Open, `fcntl`, and ioctl failures call `__glXFatal` with their corresponding diagnostic string; the successful descriptor is returned to the caller.
- `__glXOpenGraphics` (`libGL.so`, offset 0xd8125ec, 508 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Obtains the display's graphics-device record, calls `__glXOpenGraphicsDevice` to establish its descriptor, and then calls `__glXHWAttach` for the display-side context. It returns the attach result, so device opening and hardware-context attachment are one conditional path for this helper.
- `__glXInitialize` (`libGL.so`, offset 0xd80f258, 900 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Initializes the display's GLX private record, checks for the GLX extension, calls `QueryVersion`, allocates the 16-byte screen-record array and a 0x2a4-byte configuration record, then fills the screen configurations through `AllocAndFetchScreenConfigs`. It installs the extension-list entry and client information only after the version and configuration paths succeed; missing GLX or allocation failure leaves initialization unsuccessful.
- `GetFBConfigs` (`libGL.so`, offset 0xd80d940, 1776 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Sends the framebuffer-configuration request over the X connection, waits with `_XReply`, allocates the returned configuration storage, reads the reply payload with `_XRead`, and applies the visual override path before returning the configuration list. The temporary reply and X property allocations are released on the cleanup paths; a failed request returns no configuration list.
- `GetVisualConfigs` (`libGL.so`, offset 0xd80e030, 5608 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Issues the visual-configuration request, obtains its count and record sizes from the reply, allocates and zeroes the result storage, reads the records with `_XRead`, and passes the result through `__glXOverrideVisualGetVisualInfo`. It frees the temporary X reply data on both success and failure; the returned list is therefore derived from the server reply rather than a board register read.
- `QueryVersion` (`libGL.so`, offset 0xd811658, 1500 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Builds and sends the GLX version query, flushes the connection, waits with `_XReply`, and copies the reply's major and minor version words into the caller's output locations. It also consumes the reply's extension/version fields before returning the X reply status; no hardware descriptor is accessed by this routine.
- `CreateContext` (`libGL.so`, offset 0xd80f618, 2324 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Allocates a 0x12c-byte client context record, initializes it through `__glXInitialize`, resolves the requested FBConfig or visual, and selects the direct or indirect creation path using `isLocal`. The direct path calls `__glXCreateDirectContext`; the indirect path builds the GLX protocol context and flushes the display. Allocation or visual lookup failure frees the temporary record and returns failure.
- `__glXBindHWContextToWindow` (`libGL.so`, offset 0xd810634, 748 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Calls `__glXHWAttach`, then sends private requests 0x3ea and 0x3eb through `Ioctl` with stack-built request records, followed by request 0x400 for the window binding. Each request has a distinct error string and failure path; success leaves the display-side hardware context bound to the selected window and returns success.
- `__glXGetBoardNumber` (`libGL.so`, offset 0xd8129b8, 12 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Returns the board-number field from the display-private record supplied in `a0`; the routine is a three-instruction field accessor with no calls, register accesses or error path. Its result is the value consumed by the higher-level board-selection helpers.
- `__glXMalloc` (`libGL.so`, offset 0xd80f0ec, 76 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Preserves the first argument as the allocation context, passes the second argument as the byte count to the imported allocator, and returns its pointer. A zero byte count takes a short path that returns zero without calling the allocator; the nonzero path returns the allocator result unchanged.
- `__glXCalloc` (`libGL.so`, offset 0xd80f200, 88 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Treats its first argument as the allocation context and requires both the element count and element size to be nonzero. It passes those two values to the imported zeroing allocator and returns its pointer; either zero input returns zero without an allocation call.
- `glXMakeCurrentReadSGI` (`libGL.so`, offset 0xd80f5dc, 60 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Forwards the display, draw drawable and read drawable arguments to `__glXMakeContextCurrent`, supplies the constant flag 1 as its final stack argument, and returns that helper's result. The 60-byte wrapper performs no direct X request or board access.
- `ColorScore` (`libGL.so`, offset 0xd80ff2c, 28 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Computes four times the difference between its second and first arguments when the first is nonzero. When the first argument is zero it returns the negation of the second argument instead; `glXChooseVisual` uses this score while comparing visual candidates.
- `DepthScore` (`libGL.so`, offset 0xd81163c, 28 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Computes twice the difference between its second and first arguments when the first is nonzero. When the first argument is zero it returns the negation of the second argument instead; `glXChooseVisual` uses the result in its depth-buffer preference calculation.
- `__glXInitDummyContext` (`libGL.so`, offset 0xd8128e8, 88 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Builds the process-wide dummy context at the display-private base plus 0x6640. It installs three pointers to the record at base plus 0x6580, sets the record size field to 0xbc, clears four state words, and publishes the record through the display table at address 0x1014 plus offset 0x114.
- `__glXPixmapMemory` (`libGL.so`, offset 0xd812984, 52 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Reads the process-wide pointer at display-private offset 0x6564 and returns it when nonzero. A zero pointer produces zero; the incoming argument is stored to the stack but otherwise has no effect, and the routine makes no X or driver call.
- `__glXGetModes` (`libGL.so`, offset 0xd812848, 160 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Tries three mode-lookup paths with the same three arguments. A result from the first or second path is advanced by 0x48, a result from the third is advanced by 0x28, and three failed lookups return zero; `CreateContext` consumes the selected mode record.
- `__glXSetupForCommand` (`libGL.so`, offset 0xd811310, 196 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Selects the display's current context from the table at address 0x1014. If the requested command is already current it returns the cached byte at context offset 0x11f; otherwise it invokes the context switch callback when present, retries the comparison, and falls back to the display lookup helper, returning byte 7 of that result or zero.
- `__glXAddDrawableInterest` (`libGL.so`, offset 0xd8118d8, 260 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Searches the linked drawable-interest list rooted at display-private offset 0x6560 for the supplied drawable. A match increments the record's reference count at +0x14; otherwise it allocates 0x4c bytes, initializes the drawable, counters, callbacks and sentinel fields, links the record at the list head, and returns it or zero on allocation failure.
- `__glXAllocHWContext` (`libGL.so`, offset 0xd8119dc, 200 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Reads the board index from the display context's +0x4c record and rejects a board descriptor whose file descriptor at the table rooted at address 0x1014 is negative. It requests a hardware-context record with flags -1 and 2, stores the returned handle at context offset 0xcc, and on failure calls the context error callback and returns -1.
- `__glXInitVertexArrayState` (`libGL.so`, offset 0xd8117cc, 268 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Allocates a 0xb8-byte vertex-array state record, stores it at context offset 0xb4, and initializes its byte, word and limit fields. The initialized record contains four-component size 4, type 0x1406, and upper limits 0x7fffffff; it is independent of the board FIFO.
- `__glx_Vertex4sv` (`libGL.so`, offset 0xd8129c4, 144 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Writes command token 0x000c004c to the current GLX render buffer, copies four signed halfwords from the caller's eight-byte vector, advances the buffer pointer by 12 bytes, and calls the buffer-flush helper when the new pointer exceeds the end pointer.
- `__glx_ClipPlane` (`libGL.so`, offset 0xd812a54, 268 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Writes command token 0x0028004d, copies four eight-byte values from the caller's plane equation at offsets 0, 8, 16 and 24, stores the plane selector in the command record, advances by 40 bytes, and flushes when the buffer limit is crossed.
- `__glx_PolygonMode` (`libGL.so`, offset 0xd812b60, 124 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Writes command token 0x000c0065 and the two caller arguments to the current render buffer, advances its write pointer by 12 bytes, and calls the flush helper only when the advanced pointer is beyond the stored end pointer.
- `__glx_Vertex4s` (`libGL.so`, offset 0xd812bdc, 192 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Sign-extends four scalar arguments to 16 bits, writes command token 0x000c004c followed by those four halfwords, advances the render-buffer pointer by 12 bytes, and flushes on overflow of the current buffer range.
- `__glXInitThread` (`libGL.so`, offset 0xd80ff60, 448 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Creates or reuses the per-thread GLX record. It compares the current thread value and current context in the record rooted at address 0x1000, allocates a 0x124-byte record when they differ, fills the 0x100-byte context slots with -1, installs the thread and context pointers, and clears the display/context bookkeeping fields. The first thread also runs the one-time library initialization and publishes the initial display record.
- `__glXFindDisplay` (`libGL.so`, offset 0xd810120, 192 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Gets the display-list head from the global pointer at the library data table, initializing that list when it is empty, then looks up the supplied X display. A miss calls the display-record constructor with error slot 0x11 and the library's display and screen tables; the constructor result is stored as the new head and returned, while a failed initialization returns zero.
- `__glXCreateDirectContext` (`libGL.so`, offset 0xd8101e0, 676 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Copies the selected mode's four component values into a stack record, or copies the supplied fallback mode when the selected record is absent, and normalizes the 0x8014 and 0x8015 API cases. It invokes the optional context-format hook, searches the direct-context provider list, requests a context with request 0x66 and the display's board number, and calls the provider to finish construction; absent providers or a failed request return zero after the corresponding error path.
- `__glXQueryServerString` (`libGL.so`, offset 0xd810920, 436 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Appends the GLX server-string request with opcode 0x13 and the caller's string selector and screen values to the display command buffer, growing or flushing the buffer when its end is reached. It sends the request, handles the selector's low two bits when choosing the reply path, and returns the response produced by the display callback or the stored error result.
- `__glXClientInfo` (`libGL.so`, offset 0xd810f50, 428 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Appends a 0x14 client-information request containing protocol version 4, the caller's string pointer and the constant field 3, then invokes the X transport helper and aligns the command-buffer pointer to a four-byte boundary. It flushes when the request will not fit and returns through the display callback after the command is sent.
- `__glXGetDrawableSize` (`libGL.so`, offset 0xd8110fc, 532 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Returns four size words through caller pointers. With the process-wide pixmap-memory pointer at private offset 0x6564 set, it writes zeroes and the cached words at offsets 0x6568 and 0x656c; otherwise it dispatches on the drawable type, using X geometry queries for ordinary drawables and private requests 0x801d and 0x801e for the pbuffer cases, then copies the resulting width, height, origin and auxiliary size words to the outputs.
- `__glx_Vertex4iv` (`libGL.so`, offset 0xd812c9c, 144 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Writes command token 0x0014004b, copies four 32-bit coordinates from the caller's vector, advances the current render-buffer pointer by 20 bytes, and calls the buffer-flush helper when the new pointer passes the buffer end.
- `__glx_Vertex4i` (`libGL.so`, offset 0xd812d2c, 144 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Writes command token 0x0014004b and four scalar integer coordinates to the current render buffer, advances by 20 bytes, and flushes only when the advanced pointer exceeds the stored limit.
- `__glx_ColorMaterial` (`libGL.so`, offset 0xd812dbc, 124 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Writes command token 0x000c004e and its two arguments, advances the render-buffer pointer by 12 bytes, and invokes the flush helper when the pointer crosses the buffer end.
- `__glx_PointSize` (`libGL.so`, offset 0xd812e38, 112 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Writes command token 0x00080064 and the incoming single-precision value, advances the current render-buffer pointer by 8 bytes, and flushes on buffer overflow.
- `__glx_InitNames` (`libGL.so`, offset 0xd812ea8, 108 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Appends command token 0x00040079 to the current render buffer, advances its pointer by 4 bytes, and calls the flush helper only when the new pointer is beyond the buffer limit.
- `__glx_LoadName` (`libGL.so`, offset 0xd812f14, 116 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Appends command token 0x0008007a followed by the caller's name value, advances by 8 bytes, and flushes when the current buffer cannot hold the command.
- `__glx_CullFace` (`libGL.so`, offset 0xd812f88, 116 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Appends command token 0x0008004f and the supplied face value, advances the write pointer by 8 bytes, and invokes the buffer-flush helper only after crossing the end pointer.
- `__glx_Fogf` (`libGL.so`, offset 0xd812ffc, 124 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Converts the incoming scalar bits to a floating-point payload, writes command token 0x000c0050 and the selector/value pair, advances by 12 bytes, and flushes if the new pointer exceeds the current limit.
- `__glx_Vertex4fv` (`libGL.so`, offset 0xd813078, 144 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Writes command token 0x0014004a, copies four single-precision coordinates from the caller's vector, advances the render-buffer pointer by 20 bytes, and flushes on overflow.
- `__glx_TexParameterf` (`libGL.so`, offset 0xd813108, 132 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Writes command token 0x00100069, stores the target, parameter and floating-point value, advances by 16 bytes, and calls the flush helper when the buffer end is reached.
- `__glx_TexParameteri` (`libGL.so`, offset 0xd813264, 136 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Writes command token 0x0010006b and three integer arguments to the render buffer, advances its pointer by 16 bytes, and flushes when the updated pointer is beyond the buffer limit.
- `__glx_TexGeni` (`libGL.so`, offset 0xd8133c4, 136 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Writes command token 0x00100077 and the three integer arguments for the texture-generation request, advances by 16 bytes, and flushes on pointer overflow.
- `__glx_ShadeModel` (`libGL.so`, offset 0xd81344c, 116 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Writes command token 0x00080068 and the caller's mode value, advances the buffer pointer by 8 bytes, and invokes the flush helper only when it passes the stored end.
- `__glx_PassThrough` (`libGL.so`, offset 0xd8134c0, 112 bytes): **established.**
  Build: `6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Writes command token 0x0008007b and the incoming single-precision marker, advances by 8 bytes, and flushes when the current render buffer is full.


## Board diagnostics and updaters

### Compositor test program (`usr/diags/compositor/bin/sting`)

`usr/diags/compositor/bin/sting` is the shipped diagnostic for the STINGRAY compositor, the board that, **inferred** from the up-to-four-tile combination files it loads and its per-port discovery, joins the outputs of several VPro boards into one display.
**Established** for the start-up path and the test table (the bodies of `main`, `SelectTests`, `dl_harness` and `TEST_discovery` read in full in the 6.5.30m decompilation, strings resolved through the `$gp` table); **inferred** where the text says so. The program is an N32 executable with entry `__start` at 0x10007af0 and 323 named functions, and it carries a generic test harness (`dl_*`, the diagnostics library) that parses the command line, writes a log and crash log and can run as a protocol server (`dl_server_*`), around 16 compositor tests.

Start-up: `main` (0x100161e0) calls `getuid` and, when the user is not root, prints "You must be root (uid 0) to run the sting!" and exits 1. It then allocates four small argument records named `comp`, `ccx`, `chic` and `ctx` with the help texts "Select all tests that run on the COMPOSITOR board", "... CCX FPGA", "... CHIC FPGA" and "... CTX FPGA", and hands them with the test table to `dl_harness` (0x100221f8). `SelectTests` (0x10016068) maps a group name to bit 0 (comp), 1 (ccx), 2 (chic) or 3 (ctx) of a mask and marks every table record whose flag word at +0x10 has that mask bit and not bit 29 as selected (sets bit 2 of the word at +0x14 and the run word at +0x24).

Test table: `testList` at 0x10050e50 holds 16 records of 40 bytes (name, description, test number, function, flag word); `numTests` at 0x100510d0 is 16. The tests are in the table below; the last column is each record's own description text. Flag bit 29 is **inferred** to mark the tests that run only when named on the command line: `SelectTests` skips records with it, and the description of `LUT_test` says it must be asked for with `-LUT_test`.

| Test | Number | Function (address) | Flags | The table's own description |
|---|---|---|---|---|
| `discovery` | 100 | `TEST_discovery` (0x100166ac) | 0x08000030 | GPU and Compositor Discovery |
| `i2c_test2` | 200 | `TEST_i2ctest2` (0x10007c58) | 0xa0000000 | I2C bus test 2; the body (read in full) does one read or write of 1 or 2 bytes with `readReg_2Bytes`, `writeReg_2Bytes`, `readReg_1Byte` or `writeReg_1Byte`, chosen by the parameter `RW` (R2, W2, R1, W1) and addressed by the `SLAVE` and register parameters |
| `dummy_test` | 400 | `TEST_dummy` (0x10008038) | 0xa0000000 | dl functions check |
| `chicregs` | 800 | `TEST_CHIC` (0x10008434) | 0x25 | Test CHIC registers |
| `PROMread_test` | 825 | `TEST_PROMread` (0x10010d0c) | 0x21 | PROM readback test |
| `xilinx_config` | 850 | `TEST_xilinxConfig` (0x1000a6f0) | 0x20000021 | Force CCX and/or CTX (re)configuration and check its success |
| `ccxregs` | 900 | `TEST_CCXregs` (0x10008c6c) | 0x23 | Test CCX registers |
| `ccx_reset` | 950 | `TEST_ccx_reset` (0x10009488) | 0x21 | Causes CCX soft reset |
| `LUT_test` | 975 | `TEST_LUT` (0x1000f4bc) | 0x20000021 | Gamma LUT test |
| `ExtDisc_test` | 980 | `TEST_extDiscover` (0x1000e704) | 0x21 | External discovery test |
| `ExtDev_test` | 981 | `TEST_extDev` (0x1000c9a8) | 0x21 | External device test |
| `ctxregs` | 1000 | `TEST_CTXregs` (0x10009fd8) | 0x29 | Test CTX registers |
| `format_test` | 1200 | `TEST_format` (0x1000c498) | 0xa0000000 | Print the VOF format structure |
| `video` | 2100 | `TEST_simpleVideo` (0x10012ee4) | 0x20000011 | Video download with CRC captures |
| `spatialTiling` | 2200 | `TEST_spatialTiling` (0x100157f8) | 0x11 | Spatial tiling with CRC captures |
| `atpg` | 2300 | `TEST_ATPG` (0x1000b5dc) | 0x2b | ATPG video test |

How it reaches the board: `TEST_discovery` refuses to run without an X server (the message "Sting requires X server to run ..." and `exit(0)`) and keeps the `odyssey` and `voyager` flags that pick the route for every later register access. Boards are counted with ioctl 0x65 and described with ioctl 0x66 on the graphics device (`diag_discover_boards`, 0x10032354; the board name "ODYSSEY" is a VPro board, "SG2" a Voyager-class card on the AGP bus, up to 32 and 64 of them). The device is opened with flags 0x802 at 0x10032154 (the path is `/dev/opengl`, **inferred**). The compositor registers then go by one of four routes, chosen in `readReg` and `writeReg`: platform parameter 6 (write) or 7 (read) sent to the X server with `XSGIvcSetPlatformParameter`; the VPro kernel driver's ioctl 0x6f640025 (`ody_comp_reg_access`); the compositor's own USB device `/hw/compositor/%d` with ioctl 0x636d7004; and ioctl 0x6667000b on an ATI card's driver (`agp_comp_reg_access`). A fifth route drives the compositor chip's own two-wire master by register writes (`i2c_start`, `i2c_sendbyte` and their siblings), which `readReg` and `writeReg` use for the chip address bytes other than the two the first four routes carry. Port discovery reads register 0x57 of the compositor chip at address byte 0xab, once per board channel (0 and 1 for a VPro board, 3 attempts for an AGP card), and accepts the channel as connected to port 0 when the low two bits of the returned word are clear (the test at 0x10016b64); `fillDiscInfo` records the connection, and the program reports "Running on Compositor %s using GPU %d (channel %d)".


video-format symbol database, XDR and format-file code (the same code as in odyssey.so).

`SDBaddNewArraySymbol`, `SDBaddNewScalarSymbol`, `SDBcloseNewDatabase`, `SDBcloseReadDatabase`, `SDBgetSymbolDataAddress`, `SDBgetSymbolDatatype`, `SDBgetSymbolElementCount`, `SDBgetSymbolValueArray`, `SDBgetSymbolValueScalar`, `SDBinitializeSymbolTableEntries`, `SDBopenNewDatabase`, `SDBprocessOneUserMethod`, `SDBreadOpenDatabase`, `SDBsetHeader`, `SDBsetupMemoryInterface`, `compareSTEName`, `mapTypeToXDRPROC`, `vfmtFindCmpCombinationFile`, `vfmtFindCmpFormatFile`, `vfmtFindFormatFile`, `vfmtFindKonaCombinationFile`, `vfmtFindKonaFormatFile`, `vfmtFindOdyFormatFile`, `vfmtFindSG2FormatFile`, `vfmtGetLastKonaFileStat`, `vfmtReadCmp1Combination`, `vfmtReadCmp1Format`, `vfmtReadCmp1OdyFormat`, `vfmtReadCmp1SG2Format`, `vfmtWriteCmp1Combination`, `xdr_SDBdataType`, `xdr_SDBelementIndex`, `xdr_SDBfileHeader`, `xdr_SDBfileOffset`, `xdr_SDBsymbolName`, `xdr_SDBsymbolTableEntry`, `xdr_SDBversionNumber`, `xdr_typedData`

linked-list helpers.

`LLCreate`, `LLDestroy`, `LLInsert`

test harness: output, hashing, server protocol (dl_*) (part 1).

`dl_harness`, `dl_harness_maybe_print_meta_results`, `dl_harness_print_meta_results`, `dl_hash_enter`, `dl_hash_lookup`, `dl_hash_value`, `dl_hash_value_ll`, `dl_output_abrt`, `dl_output_assert_in_test_again`, `dl_output_cleanup`, `dl_output_code`, `dl_output_code_end`, `dl_output_code_start`, `dl_output_dbug`, `dl_output_diag`, `dl_output_error`, `dl_output_exit_crashlog`, `dl_output_help`, `dl_output_hrtb`, `dl_output_hrtb_end`, `dl_output_hrtb_start`, `dl_output_indent`, `dl_output_info`, `dl_output_init_crashlog`, `dl_output_init_env`, `dl_output_loop`, `dl_output_meta`, `dl_output_nshp`, `dl_output_outdent`, `dl_output_rev`, `dl_output_rslt`, `dl_output_show_setup`, `dl_output_test`, `dl_output_time`, `dl_output_trce`, `dl_output_uniq`, `dl_protocol_remote_call`, `dl_revision`, `dl_server_cleanup`, `dl_server_endtx`

test harness: output, hashing, server protocol (dl_*) (part 2).

`dl_server_error`, `dl_server_loop`, `dl_server_output`, `dl_server_protocol1`, `dl_server_rslt`, `dl_server_start`, `dl_server_test`, `dl_server_time`

tests (TEST_*) and test selection.

`SelectTests`, `TEST_ATPG`, `TEST_CCXregs`, `TEST_CHIC`, `TEST_CTXregs`, `TEST_LUT`, `TEST_PROMread`, `TEST_ccx_reset`, `TEST_discovery`, `TEST_dummy`, `TEST_extDev`, `TEST_extDiscover`, `TEST_format`, `TEST_i2ctest2`, `TEST_simpleVideo`, `TEST_spatialTiling`, `TEST_xilinxConfig`, `run_vofprog`, `start_vof`, `stop_vof`

hardware access to the compositor chips (hw_*).

`hw_atpg_first_pixel`, `hw_atpg_func_sel`, `hw_atpg_ramp_settings`, `hw_chic_ccx_reset`, `hw_chic_flash_reset`, `hw_chic_stop_config`, `hw_crc_arm_ccx`, `hw_crc_arm_ctx`, `hw_crc_clear_ccx`, `hw_crc_clear_ctx`, `hw_crc_collect_ccx`, `hw_crc_collect_ctx`, `hw_crc_poll_ccx`, `hw_crc_poll_ctx`, `hw_lut_autoconfig`, `hw_lut_read`, `hw_lut_write`, `hw_switch_to_atpg_mode`, `hw_tile_set`, `private_hw_lut_autoconfig`

software models and checks of the same operations (sw_*, *_crc*, CRC helpers).

`calculateHW_CRC`, `calculateSW_CRC`, `collect_compareCRC`, `compare_crc`, `crc16120`, `crc1624`, `crc1648`, `crc1696`, `crc_ccx_point_name`, `crc_ctx_point_name`, `sw_atpg_crc`, `sw_atpg_create_frames`, `sw_crc_ccx_input`, `sw_crc_ccx_output`, `sw_crc_ctx_input`, `sw_crc_ctx_output`, `sw_get_reg_val`, `sw_get_tile_regs`, `sw_lut_autoconfig`, `sw_lut_combine`, `sw_lut_pixel_translate`, `sw_set_reg_val`

I2C access (i2c_*) and register read and write (readReg*, writeReg*) (part 1).

`agp_comp_reg_access`, `enum_usb_comp_reg_access`, `i2c_Exists`, `i2c_api_read`, `i2c_api_read_all`, `i2c_api_reset_bus`, `i2c_api_write`, `i2c_api_write_no_stop`, `i2c_createPacket`, `i2c_destroyPacket`, `i2c_printPacket`, `i2c_recvbyte`, `i2c_sendbyte`, `i2c_start`, `i2c_stop`, `ody_comp_reg_access`, `queryAccessMode`, `readCCX_NICfield`, `readCompositorNIC`, `readNICid`, `readNICid_usb`, `readReg`, `readReg_1Byte`, `readReg_1Byte_rep`, `readReg_2Bytes`, `readReg_2Bytes_rep`, `readReg_4Bytes`, `readReg_4Bytes_rep`, `readReg_no_i2c`, `regCurrentValue`, `regDefaultValue`, `regName`, `regPermission`, `selectI2C`, `setAccessMode`, `set_access_mode`, `usb_comp_reg_access`, `writeNICid`, `writeReg`, `writeReg_1Byte`

I2C access (i2c_*) and register read and write (readReg*, writeReg*) (part 2).

`writeReg_1Byte_rep`, `writeReg_2Bytes`, `writeReg_2Bytes_rep`, `writeReg_4Bytes`, `writeReg_4Bytes_rep`, `writeReg_no_i2c`

board discovery and attach (ody_*, agp_*, diag_*, init*, find*).

`AGPtoGFX_brd_num`, `AGPtoScreen`, `DiscoverLoadIS1Info`, `ODYtoGFX_brd_num`, `agp_attach_all`, `configureGPUs`, `diag_discover_boards`, `diag_ioctl`, `fillDiscInfo`, `fillStruct`, `findConnectingGPU`, `find_ody_config`, `init`, `initAGP`, `initCompositor`, `initGPU`, `initLUT_MEM`, `initsii_p`, `investigateTopology`, `makeMaster`, `makeSlave`, `makepath_is1`, `ody_attach_all`, `ody_detach_all`, `ody_flatten_gamma`, `pci_map_is1`, `printAGP`, `printComp`, `printGPU`, `printIS1`

clock, PLL and video programming.

`XSGI_loadVTG`, `freq_check`, `last_write_to_vid_cntl`, `load_clock_settings`, `program_pfd`, `program_pll`, `program_tmds`, `program_vert_reset`, `reset_clocks`, `set_dac_gain`, `short_program_pll`, `vCalculateGammaCurve`

image and frame handling.

`Draw`, `clear_edge_memories`, `clear_frames`, `clearbits`, `clearsii_p`, `createSingleTile`, `diffImages`, `drawFrames`, `drawlibClearFB`, `drawlibClearFB4Tiling`, `drawlibDraw_Rdback`, `drawlibPrint_retImage`, `exchange_pixel_lines`, `extract_active_pixels`, `frame_concat`, `loadFB`, `loadLUTs`, `load_data`, `long_to_short_pixel_translate`, `makeCheckImage`, `shift_frame_left`, `shift_frame_right`, `split_tiles`, `tranform_pixel_array`, `which_tile`, `write_line_luts`

flash and configuration of the programmable parts (ccx_*, ctx_*, chic_*, download).

`ccx_after_config_status`, `ccx_config`, `ccx_regs_init`, `chic_regs_init`, `cmp_cmb_dnld`, `cmp_vfo_dnld`, `ctx_after_config_status`, `ctx_config`, `ctx_regs_init`, `download`, `p_ccx_output_fix_schem_screw_up`, `pre_config_status`, `read_compare_flash`

bit and byte helpers.

`array_copy`, `bit_flip`, `byte_to_page_address`, `byte_to_word_address`, `bytes2Int`, `getbits`, `int2Bytes`, `mask_to_index`, `p_get_bit`, `p_put_bit`, `page_to_byte_address`, `page_to_word_address`, `strsave`, `word_to_byte_address`, `word_to_page_address`, `writebit`, `writebits`

other.

`__istart`, `__start`, `_mcount`, `atpg_test_core`, `build_header`, `check_integrity`, `check_path`, `checkread`, `close_displays`, `command_if_error`, `compareVal`, `copyLocalData`, `corrupted_data`, `dummy_enum`, `id_to_vertices`, `isXrunning`, `main`, `openDisplays`, `output_revision_info`, `p_component_fix_schem_screw_up`, `report`, `sanityCheck`, `setXErrorValue`, `setup_glx13`, `waitForMapNotify`, `wait_until`, `write_edge_memories`, `write_swap_ready`


### Dual-channel confidence test (`usr/sbin/Confidence/dualchannel`)

Names show I2C access through both the Odyssey and the CRIME-style bus routines, DRAM and data-path tests and X display set-up. Roles **inferred** from names; every function of the binary is read in full in [vpro-tool-functions.md](vpro-tool-functions.md), one entry each.

I2C (odsy_i2c_*, crime_i2c_*).

`crime_i2c_rcvbytes`, `crime_i2c_reset`, `crime_i2c_sendbyte`, `crime_i2c_start`, `crime_i2c_stop`, `crime_i2c_test`, `odsy_i2c_rcvbytes`, `odsy_i2c_reset`, `odsy_i2c_sendbyte`, `odsy_i2c_start`, `odsy_i2c_stop`, `odsy_i2c_test`

DRAM and data-path tests.

`DatapathTest`, `DramTest`, `checkDRAM`, `check_bus`, `diagnose_bus`, `diagnose_dram`, `diagnose_eosel`, `runBusCheck`, `runPattern`

display set-up and the X window.

`dc_disp_mode`, `makeRasterFont__FP9_XDisplayPc`, `printString__FPc`, `probe_dcd`, `reshape`, `set_timing`

test control.

`FrameSync`, `__istart`, `__start`, `_mcount`, `clean_up`, `dc_read`, `init_pass`, `load_testmode`, `main`, `print_failure`, `runDiagnostic`, `run_test`


### Compositor flash updater (`usr/gfx/STINGRAY/bin/cmp_flash`)

Reads and writes flash version words and updates the compositor's programmable logic. Roles **inferred** from names.

flash update of the compositor.

`cmp_needs_replacing`, `flash_xilinx`, `read_flash_versions`, `read_version_numbers`, `update_xilinx`, `upgrade_abort`, `wait_flash_ready`, `write_flash_versions`

compositor probe and register access.

`gfx_probe_compositor`, `open_graphics`, `read_chic_reg`, `timeoutXOpenDisplay`, `vTimeoutOpenDisplay`, `write_chic_reg`

program support.

`__istart`, `__process_needed_destructions__Gv`, `__record_needed_destruction`, `__start`, `__std__needed_destruction_list`, `_fini`, `_main`, `_mcount`, `main`, `message`, `sleep_usecs`, `usage`
