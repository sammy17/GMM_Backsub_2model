; ModuleID = 'F:/maxi_latest/GMM_backsub_new/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@vinit = global float 1.800000e+04, align 4
@para = global [460800 x float] zeroinitializer, align 16
@out_frame = internal unnamed_addr global [600 x i1] zeroinitializer
@mode7 = internal constant [10 x i8] c"s_axilite\00"
@mode5 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@memcpy_OC_frame_out_OC_backsub = internal unnamed_addr constant [86 x i8] c"memcpy.frame_out.backsub(unsigned char*, unsigned char*, bool, float*)::out_frame.gep\00"
@memcpy_OC_OC_frame_in_str = internal unnamed_addr constant [17 x i8] c"memcpy..frame_in\00"
@matchsum = global [153600 x i8] zeroinitializer
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1941]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@data_array = internal unnamed_addr global [600 x i8] zeroinitializer, align 16
@burstwrite_OC_region_str = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00"
@burstread_OC_region_str = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@bundle8 = internal constant [1 x i8] zeroinitializer
@bundle6 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@backsub_str = internal unnamed_addr constant [8 x i8] c"backsub\00"
@back_gauss = global [153600 x i1] zeroinitializer
@alpha_w = global float 0x3F70624DE0000000, align 4
@akt = global [2 x float] zeroinitializer, align 4
@F = global [2 x float] zeroinitializer, align 4
@p_str2 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1819 = private unnamed_addr constant [12 x i8] c"hls_label_9\00", align 1
@p_str1813 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str1812 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str1811 = private unnamed_addr constant [6 x i8] c"loop1\00", align 1
@p_str1810 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str1809 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1
@p_str1808 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1807 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1805 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str1 = internal unnamed_addr constant [1 x i8] zeroinitializer

declare float @llvm.sqrt.f32(float) nounwind readonly

declare i78 @llvm.part.select.i78(i78, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @backsub(i8* %gmem, float* %gmem_offset, i32 %frame_in, i32 %frame_out, i1 %init, i32 %para) {
  %para_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %para)
  %init_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %init)
  %frame_out_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_out)
  %frame_in_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_in)
  %para5 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %para_read, i32 2, i32 31)
  %tmp_12_cast = zext i30 %para5 to i33
  %tmp_15_cast = sext i32 %frame_out_read to i33
  %tmp_32_cast = sext i32 %frame_in_read to i33
  call void (...)* @_ssdm_op_SpecBitsMap(float* %gmem_offset), !map !8
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %init) nounwind, !map !61
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !67
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @backsub_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_out, [10 x i8]* @mode5, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @bundle6, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem, [6 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_in, [10 x i8]* @mode, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(float* %gmem_offset, [6 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i32 %para, [10 x i8]* @mode7, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @bundle8, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i1 %init, [10 x i8]* @p_str1808, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1809, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str1808, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1809, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str1806) nounwind
  br label %1

; <label>:1                                       ; preds = %burst.wr.end, %0
  %x = phi i8 [ 0, %0 ], [ %x_1, %burst.wr.end ]
  %phi_mul = phi i19 [ 0, %0 ], [ %next_mul, %burst.wr.end ]
  %phi_mul1 = phi i17 [ 0, %0 ], [ %next_mul1, %burst.wr.end ]
  %next_mul1 = add i17 %phi_mul1, 600
  %next_mul = add i19 %phi_mul, 3600
  %exitcond2 = icmp eq i8 %x, -128
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %x_1 = add i8 %x, 1
  br i1 %exitcond2, label %5, label %2

; <label>:2                                       ; preds = %1
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1810) nounwind
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str1806) nounwind
  %tmp_3 = zext i17 %phi_mul1 to i33
  %tmp_4 = add i33 %tmp_3, %tmp_32_cast
  %tmp_6 = sext i33 %tmp_4 to i64
  %gmem_addr = getelementptr i8* %gmem, i64 %tmp_6
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %gmem_addr, i32 600)
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %2
  %indvar = phi i10 [ 0, %2 ], [ %indvar_next, %burst.rd.body ]
  %exitcond9 = icmp eq i10 %indvar, -424
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600, i64 600, i64 600)
  %indvar_next = add i10 %indvar, 1
  br i1 %exitcond9, label %burst.rd.end, label %burst.rd.body

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind
  %gmem_addr_1 = getelementptr i8* %gmem, i64 %tmp_6
  %gmem_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %gmem_addr_1)
  %tmp_5 = zext i10 %indvar to i64
  %data_array_addr = getelementptr [600 x i8]* @data_array, i64 0, i64 %tmp_5
  store i8 %gmem_addr_1_read, i8* %data_array_addr, align 1
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.header
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str1811) nounwind
  br i1 %init_read, label %.preheader3.preheader, label %.preheader

.preheader3.preheader:                            ; preds = %burst.rd.end
  %tmp_6_cast9 = zext i19 %phi_mul to i20
  %tmp_7 = or i19 %phi_mul, 2
  %tmp_7_cast = zext i19 %tmp_7 to i21
  %tmp_8 = or i19 %phi_mul, 3
  %tmp_8_cast = zext i19 %tmp_8 to i21
  %tmp_9 = or i19 %phi_mul, 4
  %tmp_9_cast = zext i19 %tmp_9 to i21
  %tmp_s = or i19 %phi_mul, 5
  %tmp_10_cast = zext i19 %tmp_s to i21
  br label %.preheader3

.preheader3:                                      ; preds = %3, %.preheader3.preheader
  %i = phi i10 [ %i_1, %3 ], [ 0, %.preheader3.preheader ]
  %exitcond1 = icmp eq i10 %i, -424
  %i_1 = add i10 %i, 1
  br i1 %exitcond1, label %.loopexit, label %3

; <label>:3                                       ; preds = %.preheader3
  %i_cast7 = zext i10 %i to i17
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600, i64 600, i64 600)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1812) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_14 = add i17 %phi_mul1, %i_cast7
  %tmp_18 = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %tmp_14, i1 false)
  %tmp_20 = zext i18 %tmp_18 to i64
  %tmp_22 = or i18 %tmp_18, 1
  %tmp_24 = call i64 @_ssdm_op_BitConcatenate.i64.i46.i18(i46 0, i18 %tmp_22)
  %matchsum_addr = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_20
  store i8 0, i8* %matchsum_addr, align 2
  %matchsum_addr_1 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_24
  store i8 0, i8* %matchsum_addr_1, align 1
  %back_gauss_addr = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_20
  store i1 true, i1* %back_gauss_addr, align 2
  %back_gauss_addr_1 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_24
  store i1 true, i1* %back_gauss_addr_1, align 1
  %p_shl = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %i, i3 0)
  %p_shl_cast = zext i13 %p_shl to i14
  %p_shl1 = call i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10 %i, i1 false)
  %p_shl1_cast = zext i11 %p_shl1 to i14
  %tmp_16 = sub i14 %p_shl_cast, %p_shl1_cast
  %tmp_16_cast4 = sext i14 %tmp_16 to i21
  %tmp_16_cast = sext i14 %tmp_16 to i20
  %tmp_17 = add i20 %tmp_6_cast9, %tmp_16_cast
  %tmp_17_cast = sext i20 %tmp_17 to i32
  %tmp_18_cast = zext i32 %tmp_17_cast to i33
  %para6_sum = add i33 %tmp_18_cast, %tmp_12_cast
  %para6_sum_cast = zext i33 %para6_sum to i64
  %gmem_offset_addr = getelementptr float* %gmem_offset, i64 %para6_sum_cast
  %gmem_offset_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset_addr, i32 1)
  %gmem_offset_addr_1 = getelementptr float* %gmem_offset, i64 %para6_sum_cast
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset_addr_1, float 0.000000e+00, i4 -1)
  %gmem_offset_addr_2 = getelementptr float* %gmem_offset, i64 %para6_sum_cast
  %gmem_offset_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset_addr_2)
  %tmp_19 = or i32 %tmp_17_cast, 1
  %tmp_20_cast = zext i32 %tmp_19 to i33
  %para6_sum7 = add i33 %tmp_20_cast, %tmp_12_cast
  %para6_sum7_cast = zext i33 %para6_sum7 to i64
  %gmem_offset_addr_3 = getelementptr float* %gmem_offset, i64 %para6_sum7_cast
  %gmem_offset_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset_addr_3, i32 1)
  %gmem_offset_addr_4 = getelementptr float* %gmem_offset, i64 %para6_sum7_cast
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset_addr_4, float 0.000000e+00, i4 -1)
  %gmem_offset_addr_5 = getelementptr float* %gmem_offset, i64 %para6_sum7_cast
  %gmem_offset_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset_addr_5)
  %tmp_21 = add i21 %tmp_7_cast, %tmp_16_cast4
  %tmp_21_cast = sext i21 %tmp_21 to i32
  %tmp_22_cast = zext i32 %tmp_21_cast to i33
  %para6_sum8 = add i33 %tmp_22_cast, %tmp_12_cast
  %para6_sum8_cast = zext i33 %para6_sum8 to i64
  %gmem_offset_addr_6 = getelementptr float* %gmem_offset, i64 %para6_sum8_cast
  %gmem_offset_addr_2_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset_addr_6, i32 1)
  %gmem_offset_addr_7 = getelementptr float* %gmem_offset, i64 %para6_sum8_cast
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset_addr_7, float 4.900000e+03, i4 -1)
  %gmem_offset_addr_8 = getelementptr float* %gmem_offset, i64 %para6_sum8_cast
  %gmem_offset_addr_2_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset_addr_8)
  %tmp_23 = add i21 %tmp_8_cast, %tmp_16_cast4
  %tmp_23_cast = sext i21 %tmp_23 to i32
  %tmp_24_cast = zext i32 %tmp_23_cast to i33
  %para6_sum9 = add i33 %tmp_24_cast, %tmp_12_cast
  %para6_sum9_cast = zext i33 %para6_sum9 to i64
  %gmem_offset_addr_9 = getelementptr float* %gmem_offset, i64 %para6_sum9_cast
  %gmem_offset_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset_addr_9, i32 1)
  %gmem_offset_addr_10 = getelementptr float* %gmem_offset, i64 %para6_sum9_cast
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset_addr_10, float 4.900000e+03, i4 -1)
  %gmem_offset_addr_11 = getelementptr float* %gmem_offset, i64 %para6_sum9_cast
  %gmem_offset_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset_addr_11)
  %tmp_25 = add i21 %tmp_9_cast, %tmp_16_cast4
  %tmp_25_cast = sext i21 %tmp_25 to i32
  %tmp_26_cast = zext i32 %tmp_25_cast to i33
  %para6_sum1 = add i33 %tmp_26_cast, %tmp_12_cast
  %para6_sum1_cast = zext i33 %para6_sum1 to i64
  %gmem_offset_addr_12 = getelementptr float* %gmem_offset, i64 %para6_sum1_cast
  %gmem_offset_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset_addr_12, i32 1)
  %gmem_offset_addr_13 = getelementptr float* %gmem_offset, i64 %para6_sum1_cast
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset_addr_13, float 0x3FB70A3D80000000, i4 -1)
  %gmem_offset_addr_14 = getelementptr float* %gmem_offset, i64 %para6_sum1_cast
  %gmem_offset_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset_addr_14)
  %tmp_26 = add i21 %tmp_10_cast, %tmp_16_cast4
  %tmp_27_cast = sext i21 %tmp_26 to i32
  %tmp_28_cast = zext i32 %tmp_27_cast to i33
  %para6_sum2 = add i33 %tmp_28_cast, %tmp_12_cast
  %para6_sum2_cast = zext i33 %para6_sum2 to i64
  %gmem_offset_addr_15 = getelementptr float* %gmem_offset, i64 %para6_sum2_cast
  %gmem_offset_addr_5_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset_addr_15, i32 1)
  %gmem_offset_addr_16 = getelementptr float* %gmem_offset, i64 %para6_sum2_cast
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset_addr_16, float 0x3FB70A3D80000000, i4 -1)
  %gmem_offset_addr_17 = getelementptr float* %gmem_offset, i64 %para6_sum2_cast
  %gmem_offset_addr_5_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset_addr_17)
  %tmp_27 = zext i10 %i to i64
  %data_array_addr_2 = getelementptr inbounds [600 x i8]* @data_array, i64 0, i64 %tmp_27
  %data_array_load = load i8* %data_array_addr_2, align 1
  %tmp_28 = call fastcc zeroext i1 @backsub_EM_ALGO(i8 zeroext %data_array_load, i10 %i, float* %gmem_offset, i30 %para5, i19 %phi_mul, i8 %x)
  %out_frame_addr_1 = getelementptr [600 x i1]* @out_frame, i64 0, i64 %tmp_27
  store i1 %tmp_28, i1* %out_frame_addr_1, align 1
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1812, i32 %tmp_2) nounwind
  br label %.preheader3

.preheader:                                       ; preds = %burst.rd.end, %4
  %j = phi i10 [ %j_1, %4 ], [ 0, %burst.rd.end ]
  %exitcond = icmp eq i10 %j, -424
  %j_1 = add i10 %j, 1
  br i1 %exitcond, label %.loopexit, label %4

; <label>:4                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600, i64 600, i64 600)
  %tmp_12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1813) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_13 = zext i10 %j to i64
  %data_array_addr_1 = getelementptr inbounds [600 x i8]* @data_array, i64 0, i64 %tmp_13
  %data_array_load_1 = load i8* %data_array_addr_1, align 1
  %tmp_15 = call fastcc zeroext i1 @backsub_EM_ALGO(i8 zeroext %data_array_load_1, i10 %j, float* %gmem_offset, i30 %para5, i19 %phi_mul, i8 %x)
  %out_frame_addr = getelementptr [600 x i1]* @out_frame, i64 0, i64 %tmp_13
  store i1 %tmp_15, i1* %out_frame_addr, align 1
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1813, i32 %tmp_12) nounwind
  br label %.preheader

.loopexit:                                        ; preds = %.preheader3, %.preheader
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str1811, i32 %tmp_1) nounwind
  %tmp_10 = add i33 %tmp_3, %tmp_15_cast
  %tmp_11 = sext i33 %tmp_10 to i64
  %gmem_addr_2 = getelementptr i8* %gmem, i64 %tmp_11
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %gmem_addr_2, i32 600)
  br label %burst.wr.header

burst.wr.header:                                  ; preds = %burst.wr.body, %.loopexit
  %indvar1 = phi i10 [ 0, %.loopexit ], [ %indvar_next1, %burst.wr.body ]
  %exitcond3 = icmp eq i10 %indvar1, -424
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600, i64 600, i64 600)
  %indvar_next1 = add i10 %indvar1, 1
  br i1 %exitcond3, label %burst.wr.end, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopName([86 x i8]* @memcpy_OC_frame_out_OC_backsub) nounwind
  %tmp_29 = zext i10 %indvar1 to i64
  %out_frame_addr_2 = getelementptr [600 x i1]* @out_frame, i64 0, i64 %tmp_29
  %out_frame_load = load i1* %out_frame_addr_2, align 1
  %extLd = select i1 %out_frame_load, i8 -1, i8 0
  %gmem_addr_4 = getelementptr i8* %gmem, i64 %tmp_11
  call void @_ssdm_op_Write.m_axi.i8P(i8* %gmem_addr_4, i8 %extLd, i1 true)
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin) nounwind
  br label %burst.wr.header

burst.wr.end:                                     ; preds = %burst.wr.header
  %gmem_addr_3 = getelementptr i8* %gmem, i64 %tmp_11
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %gmem_addr_3)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1810, i32 %tmp) nounwind
  br label %1

; <label>:5                                       ; preds = %1
  ret i32 0
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i8P(i8*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i8P(i8*, i8, i1) {
entry:
  ret void
}

define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_Read.s_axilite.i1(i1) {
entry:
  ret i1 %0
}

define weak i8 @_ssdm_op_Read.m_axi.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i30 @_ssdm_op_Read.ap_auto.i30(i30) {
entry:
  ret i30 %0
}

define weak i19 @_ssdm_op_Read.ap_auto.i19(i19) {
entry:
  ret i19 %0
}

define weak i10 @_ssdm_op_Read.ap_auto.i10(i10) {
entry:
  ret i10 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_13 = trunc i32 %empty to i8
  ret i8 %empty_13
}

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_14 = trunc i78 %empty to i32
  ret i32 %empty_14
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_15 = trunc i32 %empty to i30
  ret i30 %empty_15
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_16 = trunc i64 %empty to i11
  ret i11 %empty_16
}

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_17 = shl i9 1, %empty
  %empty_18 = and i9 %0, %empty_17
  %empty_19 = icmp ne i9 %empty_18, 0
  ret i1 %empty_19
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_20 = and i32 %0, %empty
  %empty_21 = icmp ne i32 %empty_20, 0
  ret i1 %empty_21
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_22 = shl i24 1, %empty
  %empty_23 = and i24 %0, %empty_22
  %empty_24 = icmp ne i24 %empty_23, 0
  ret i1 %empty_24
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i46.i18(i46, i18) nounwind readnone {
entry:
  %empty = zext i46 %0 to i64
  %empty_25 = zext i18 %1 to i64
  %empty_26 = shl i64 %empty, 18
  %empty_27 = or i64 %empty_26, %empty_25
  ret i64 %empty_27
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_28 = zext i23 %1 to i24
  %empty_29 = shl i24 %empty, 23
  %empty_30 = or i24 %empty_29, %empty_28
  ret i24 %empty_30
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17, i1) nounwind readnone {
entry:
  %empty = zext i17 %0 to i18
  %empty_31 = zext i1 %1 to i18
  %empty_32 = shl i18 %empty, 1
  %empty_33 = or i18 %empty_32, %empty_31
  ret i18 %empty_33
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10, i3) nounwind readnone {
entry:
  %empty = zext i10 %0 to i13
  %empty_34 = zext i3 %1 to i13
  %empty_35 = shl i13 %empty, 3
  %empty_36 = or i13 %empty_35, %empty_34
  ret i13 %empty_36
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10, i1) nounwind readnone {
entry:
  %empty = zext i10 %0 to i11
  %empty_37 = zext i1 %1 to i11
  %empty_38 = shl i11 %empty, 1
  %empty_39 = or i11 %empty_38, %empty_37
  ret i11 %empty_39
}

declare void @_GLOBAL__I_a1941() nounwind

declare void @_GLOBAL__I_a() nounwind

define internal fastcc zeroext i1 @backsub_EM_ALGO(i8 zeroext %pixel, i10 %pos_r, float* %parameters, i30 %para5, i19 %tmp_25, i8 %x) {
meminst.0_ifconv:
  %x_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %x)
  %tmp_25_read = call i19 @_ssdm_op_Read.ap_auto.i19(i19 %tmp_25)
  %para5_read = call i30 @_ssdm_op_Read.ap_auto.i30(i30 %para5)
  %pos_read = call i10 @_ssdm_op_Read.ap_auto.i10(i10 %pos_r)
  %pixel_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %pixel)
  call void (...)* @_ssdm_op_SpecInterface(float* %parameters, [6 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  %tmp_s = zext i8 %pixel_read to i32
  %tmp_31 = sitofp i32 %tmp_s to float
  %p_shl = call i13 @_ssdm_op_BitConcatenate.i13.i10.i3(i10 %pos_read, i3 0)
  %p_shl_cast = zext i13 %p_shl to i14
  %p_shl2 = call i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10 %pos_read, i1 false)
  %p_shl2_cast = zext i11 %p_shl2 to i14
  %tmp_33 = sub i14 %p_shl_cast, %p_shl2_cast
  %tmp_36_cast = sext i14 %tmp_33 to i20
  %tmp_35 = add i14 2, %tmp_33
  %x_cast = zext i8 %x_read to i17
  %tmp_36 = mul i17 600, %x_cast
  %pos_cast = zext i10 %pos_read to i17
  %tmp_37 = add i17 %tmp_36, %pos_cast
  %tmp_38 = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %tmp_37, i1 false)
  %tmp_39 = zext i18 %tmp_38 to i64
  %tmp_64_cast1 = zext i18 %tmp_38 to i19
  %back_gauss_addr = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_39
  %tmp_63 = or i18 %tmp_38, 1
  %tmp_64 = call i64 @_ssdm_op_BitConcatenate.i64.i46.i18(i46 0, i18 %tmp_63)
  %back_gauss_addr_1 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_64
  %matchsum_addr_3 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_39
  %matchsum_addr_4 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_64
  %tmp_40 = add i14 4, %tmp_33
  %tmp_25_cast1 = zext i19 %tmp_25_read to i20
  %sum = add i20 %tmp_36_cast, %tmp_25_cast1
  %sum_cast_cast = zext i20 %sum to i31
  %sext_cast = zext i30 %para5_read to i31
  %sum10 = add i31 %sext_cast, %sum_cast_cast
  %sum10_cast = zext i31 %sum10 to i64
  %parameters_addr = getelementptr float* %parameters, i64 %sum10_cast
  %parameters_load_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr, i32 1)
  %parameters_addr_read = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr)
  %x_assign_5 = fsub float %tmp_31, %parameters_addr_read
  %p_Val2_s = bitcast float %x_assign_5 to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %p_Result_1 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_2_i_i = zext i24 %p_Result_1 to i78
  %tmp_i_i_i_cast7 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_cast7
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_4_i_i = sub i8 127, %loc_V
  %tmp_4_i_i_cast = sext i8 %tmp_4_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_4_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_6_i_i = zext i32 %sh_assign_1_cast to i78
  %tmp_7_i_i = lshr i24 %p_Result_1, %sh_assign_1_cast_cast
  %tmp_9_i_i = shl i78 %tmp_2_i_i, %tmp_6_i_i
  %tmp_26 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_7_i_i, i32 23)
  %tmp_65 = zext i1 %tmp_26 to i32
  %tmp_70 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_9_i_i, i32 23, i32 54)
  %p_Val2_3 = select i1 %isNeg, i32 %tmp_65, i32 %tmp_70
  %p_Val2_7_i_i = sub i32 0, %p_Val2_3
  %p_Val2_5 = select i1 %p_Result_s, i32 %p_Val2_7_i_i, i32 %p_Val2_3
  %neg = sub i32 0, %p_Val2_5
  %abscond = icmp sgt i32 %p_Val2_5, 0
  %abs = select i1 %abscond, i32 %p_Val2_5, i32 %neg
  %tmp_41 = sitofp i32 %abs to double
  %tmp_59_cast = sext i14 %tmp_35 to i20
  %sum2 = add i20 %tmp_59_cast, %tmp_25_cast1
  %sum2_cast_cast = zext i20 %sum2 to i31
  %sum11 = add i31 %sext_cast, %sum2_cast_cast
  %sum11_cast = zext i31 %sum11 to i64
  %parameters_addr_1 = getelementptr float* %parameters, i64 %sum11_cast
  %parameters_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr_1, i32 1)
  %parameters_addr_1_read = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr_1)
  %tmp_i = call float @llvm.sqrt.f32(float %parameters_addr_1_read) nounwind
  %tmp_42 = fpext float %tmp_i to double
  %tmp_44 = fmul double %tmp_42, 2.500000e+00
  %tmp_58_to_int = bitcast double %tmp_41 to i64
  %tmp_1 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_58_to_int, i32 52, i32 62)
  %tmp_27 = trunc i64 %tmp_58_to_int to i52
  %tmp_62_to_int = bitcast double %tmp_44 to i64
  %tmp_3 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_62_to_int, i32 52, i32 62)
  %tmp_74 = trunc i64 %tmp_62_to_int to i52
  %notlhs = icmp ne i11 %tmp_1, -1
  %notrhs = icmp eq i52 %tmp_27, 0
  %tmp_5 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i11 %tmp_3, -1
  %notrhs1 = icmp eq i52 %tmp_74, 0
  %tmp_6 = or i1 %notrhs1, %notlhs1
  %tmp_7 = and i1 %tmp_5, %tmp_6
  %tmp_8 = fcmp olt double %tmp_41, %tmp_44
  %tmp_9 = and i1 %tmp_7, %tmp_8
  %back_gauss_load = load i1* %back_gauss_addr, align 2
  %alpha_w_load = load float* @alpha_w, align 4
  %tmp_64_cast = sext i14 %tmp_40 to i20
  %sum4 = add i20 %tmp_64_cast, %tmp_25_cast1
  %sum4_cast_cast = zext i20 %sum4 to i31
  %sum12 = add i31 %sext_cast, %sum4_cast_cast
  %sum12_cast = zext i31 %sum12 to i64
  %parameters_addr_2 = getelementptr float* %parameters, i64 %sum12_cast
  %parameters_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr_2, i32 1)
  %parameters_addr_2_read = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr_2)
  %tmp_50 = fdiv float %alpha_w_load, %parameters_addr_2_read
  store float %tmp_50, float* getelementptr inbounds ([2 x float]* @akt, i64 0, i64 0), align 4
  %sorted_F_0 = fdiv float %parameters_addr_2_read, %parameters_addr_1_read
  store float %sorted_F_0, float* getelementptr inbounds ([2 x float]* @F, i64 0, i64 0), align 4
  %tmp_55_s = or i20 %tmp_36_cast, 1
  %sum_1 = add i20 %tmp_55_s, %tmp_25_cast1
  %sum_1_cast_cast = zext i20 %sum_1 to i31
  %sum13 = add i31 %sext_cast, %sum_1_cast_cast
  %sum13_cast = zext i31 %sum13 to i64
  %parameters_addr_3 = getelementptr float* %parameters, i64 %sum13_cast
  %parameters_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr_3, i32 1)
  %parameters_addr_3_read = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr_3)
  %x_assign_6 = fsub float %tmp_31, %parameters_addr_3_read
  %p_Val2_6 = bitcast float %x_assign_6 to i32
  %p_Result_2 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_6, i32 31)
  %loc_V_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_6, i32 23, i32 30) nounwind
  %loc_V_3 = trunc i32 %p_Val2_6 to i23
  %p_Result_3 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_3) nounwind
  %tmp_2_i_i1 = zext i24 %p_Result_3 to i78
  %tmp_i_i_i1_cast6 = zext i8 %loc_V_2 to i9
  %sh_assign_2 = add i9 -127, %tmp_i_i_i1_cast6
  %isNeg_1 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_2, i32 8)
  %tmp_4_i_i1 = sub i8 127, %loc_V_2
  %tmp_4_i_i1_cast = sext i8 %tmp_4_i_i1 to i9
  %sh_assign_3 = select i1 %isNeg_1, i9 %tmp_4_i_i1_cast, i9 %sh_assign_2
  %sh_assign_3_cast = sext i9 %sh_assign_3 to i32
  %sh_assign_3_cast_cast = sext i9 %sh_assign_3 to i24
  %tmp_6_i_i1 = zext i32 %sh_assign_3_cast to i78
  %tmp_7_i_i1 = lshr i24 %p_Result_3, %sh_assign_3_cast_cast
  %tmp_9_i_i1 = shl i78 %tmp_2_i_i1, %tmp_6_i_i1
  %tmp_99 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_7_i_i1, i32 23)
  %tmp_79 = zext i1 %tmp_99 to i32
  %tmp_91 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_9_i_i1, i32 23, i32 54)
  %p_Val2_9 = select i1 %isNeg_1, i32 %tmp_79, i32 %tmp_91
  %p_Val2_7_i_i1 = sub i32 0, %p_Val2_9
  %p_Val2_11 = select i1 %p_Result_2, i32 %p_Val2_7_i_i1, i32 %p_Val2_9
  %neg_1 = sub i32 0, %p_Val2_11
  %abscond_1 = icmp sgt i32 %p_Val2_11, 0
  %abs_1 = select i1 %abscond_1, i32 %p_Val2_11, i32 %neg_1
  %tmp_59_1 = sitofp i32 %abs_1 to double
  %tmp_60_1 = add i14 3, %tmp_33
  %tmp_61_1_cast = sext i14 %tmp_60_1 to i20
  %sum2_1 = add i20 %tmp_61_1_cast, %tmp_25_cast1
  %sum2_1_cast_cast = zext i20 %sum2_1 to i31
  %sum14 = add i31 %sext_cast, %sum2_1_cast_cast
  %sum14_cast = zext i31 %sum14 to i64
  %parameters_addr_4 = getelementptr float* %parameters, i64 %sum14_cast
  %parameters_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr_4, i32 1)
  %parameters_addr_4_read = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr_4)
  %tmp_i1 = call float @llvm.sqrt.f32(float %parameters_addr_4_read) nounwind
  %tmp_63_1 = fpext float %tmp_i1 to double
  %tmp_64_1 = fmul double %tmp_63_1, 2.500000e+00
  %tmp_59_1_to_int = bitcast double %tmp_59_1 to i64
  %tmp_10 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_59_1_to_int, i32 52, i32 62)
  %tmp_100 = trunc i64 %tmp_59_1_to_int to i52
  %tmp_64_1_to_int = bitcast double %tmp_64_1 to i64
  %tmp_12 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_64_1_to_int, i32 52, i32 62)
  %tmp_101 = trunc i64 %tmp_64_1_to_int to i52
  %notlhs2 = icmp ne i11 %tmp_10, -1
  %notrhs2 = icmp eq i52 %tmp_100, 0
  %tmp_14 = or i1 %notrhs2, %notlhs2
  %notlhs3 = icmp ne i11 %tmp_12, -1
  %notrhs3 = icmp eq i52 %tmp_101, 0
  %tmp_15 = or i1 %notrhs3, %notlhs3
  %tmp_16 = and i1 %tmp_14, %tmp_15
  %tmp_17 = fcmp olt double %tmp_59_1, %tmp_64_1
  %tmp_18 = and i1 %tmp_16, %tmp_17
  %back_gauss_load_1 = load i1* %back_gauss_addr_1, align 1
  %tmp_69_1 = add i14 5, %tmp_33
  %tmp_70_1_cast = sext i14 %tmp_69_1 to i20
  %sum4_1 = add i20 %tmp_70_1_cast, %tmp_25_cast1
  %sum4_1_cast_cast = zext i20 %sum4_1 to i31
  %sum15 = add i31 %sext_cast, %sum4_1_cast_cast
  %sum15_cast = zext i31 %sum15 to i64
  %parameters_addr_5 = getelementptr float* %parameters, i64 %sum15_cast
  %parameters_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr_5, i32 1)
  %parameters_addr_5_read = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr_5)
  %tmp_71_1 = fdiv float %alpha_w_load, %parameters_addr_5_read
  store float %tmp_71_1, float* getelementptr inbounds ([2 x float]* @akt, i64 0, i64 1), align 4
  %sorted_F_1_2 = fdiv float %parameters_addr_5_read, %parameters_addr_4_read
  store float %sorted_F_1_2, float* getelementptr inbounds ([2 x float]* @F, i64 0, i64 1), align 4
  %sorted_F_0_to_int = bitcast float %sorted_F_0 to i32
  %tmp_19 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sorted_F_0_to_int, i32 23, i32 30)
  %tmp_107 = trunc i32 %sorted_F_0_to_int to i23
  %notlhs4 = icmp ne i8 %tmp_19, -1
  %notrhs4 = icmp eq i23 %tmp_107, 0
  %tmp_21 = or i1 %notrhs4, %notlhs4
  %tmp_22 = fcmp ogt float %sorted_F_0, 0.000000e+00
  %tmp_23 = and i1 %tmp_21, %tmp_22
  %tmp = and i1 %tmp_9, %tmp_23
  %or_cond1 = and i1 %tmp, %back_gauss_load
  %sorted_F_0_s = select i1 %or_cond1, float %sorted_F_0, float 0.000000e+00
  %tmp_28 = fcmp olt float %sorted_F_0, 1.000000e+03
  %tmp_29 = and i1 %tmp_21, %tmp_28
  %sorted_F_0_1 = select i1 %tmp_29, float %sorted_F_0, float 1.000000e+03
  %sorted_F_1_2_to_int = bitcast float %sorted_F_1_2 to i32
  %tmp_30 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sorted_F_1_2_to_int, i32 23, i32 30)
  %tmp_111 = trunc i32 %sorted_F_1_2_to_int to i23
  %sorted_F_0_to_int_40 = bitcast float %sorted_F_0_s to i32
  %tmp_32 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sorted_F_0_to_int_40, i32 23, i32 30)
  %tmp_112 = trunc i32 %sorted_F_0_to_int_40 to i23
  %notlhs6 = icmp ne i8 %tmp_30, -1
  %notrhs6 = icmp eq i23 %tmp_111, 0
  %tmp_34 = or i1 %notrhs6, %notlhs6
  %notlhs7 = icmp ne i8 %tmp_32, -1
  %notrhs7 = icmp eq i23 %tmp_112, 0
  %tmp_56 = or i1 %notrhs7, %notlhs7
  %tmp_57 = and i1 %tmp_34, %tmp_56
  %tmp_58 = fcmp ogt float %sorted_F_1_2, %sorted_F_0_s
  %tmp_59 = and i1 %tmp_57, %tmp_58
  %tmp1 = and i1 %tmp_18, %tmp_59
  %or_cond = and i1 %tmp1, %back_gauss_load_1
  %p_cast = zext i1 %or_cond to i4
  %tmp_61 = or i1 %or_cond, %or_cond1
  %max_val_2_1 = select i1 %tmp_61, i4 %p_cast, i4 -6
  %max_val_2_1_cast5 = zext i4 %max_val_2_1 to i14
  %sorted_F_0_1_to_int = bitcast float %sorted_F_0_1 to i32
  %tmp_62 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sorted_F_0_1_to_int, i32 23, i32 30)
  %tmp_113 = trunc i32 %sorted_F_0_1_to_int to i23
  %notlhs9 = icmp ne i8 %tmp_62, -1
  %notrhs9 = icmp eq i23 %tmp_113, 0
  %tmp_66 = or i1 %notrhs9, %notlhs9
  %tmp_71 = and i1 %tmp_34, %tmp_66
  %tmp_76 = fcmp olt float %sorted_F_1_2, %sorted_F_0_1
  %tmp_78 = and i1 %tmp_71, %tmp_76
  %min_val_1_cast = zext i1 %tmp_78 to i4
  %tmp_85 = or i1 %tmp_78, %tmp_29
  %min_val_1_1 = select i1 %tmp_85, i4 %min_val_1_cast, i4 -6
  %min_val_1_1_cast3 = zext i4 %min_val_1_1 to i14
  br i1 %tmp_61, label %0, label %3

; <label>:0                                       ; preds = %meminst.0_ifconv
  %tmp_43 = add i14 %max_val_2_1_cast5, %tmp_33
  %tmp_44_cast = sext i14 %tmp_43 to i20
  %sum6 = add i20 %tmp_25_cast1, %tmp_44_cast
  %sum6_cast_cast = zext i20 %sum6 to i31
  %sum16 = add i31 %sext_cast, %sum6_cast_cast
  %sum16_cast = zext i31 %sum16 to i64
  %parameters_addr_6 = getelementptr float* %parameters, i64 %sum16_cast
  %parameters_load_5_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr_6, i32 1)
  %parameters_addr_6_read = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr_6)
  %tmp_45 = zext i4 %max_val_2_1 to i64
  %tmp_45_cast = zext i4 %max_val_2_1 to i19
  %tmp_93 = add i19 %tmp_64_cast1, %tmp_45_cast
  %tmp_117_cast = zext i19 %tmp_93 to i64
  %matchsum_addr = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_117_cast
  %akt_addr = getelementptr inbounds [2 x float]* @akt, i64 0, i64 %tmp_45
  %akt_load = load float* %akt_addr, align 4
  %tmp_46 = fsub float %tmp_31, %parameters_addr_6_read
  %tmp_47 = fmul float %akt_load, %tmp_46
  %tmp_48 = fadd float %parameters_addr_6_read, %tmp_47
  %parameters_addr_6_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %parameters_addr_6, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %parameters_addr_6, float %tmp_48, i4 -1)
  %parameters_addr_6_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %parameters_addr_6)
  %tmp_49 = add i14 %max_val_2_1_cast5, %tmp_35
  %tmp_50_cast = sext i14 %tmp_49 to i20
  %sum8 = add i20 %tmp_25_cast1, %tmp_50_cast
  %sum8_cast_cast = zext i20 %sum8 to i31
  %sum17 = add i31 %sext_cast, %sum8_cast_cast
  %sum17_cast = zext i31 %sum17 to i64
  %parameters_addr_7 = getelementptr float* %parameters, i64 %sum17_cast
  %parameters_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr_7, i32 1)
  %parameters_addr_7_read = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr_7)
  %tmp_51 = fsub float %tmp_31, %tmp_48
  %tmp_52 = fmul float %tmp_51, %tmp_51
  %tmp_53 = fsub float %tmp_52, %parameters_addr_7_read
  %tmp_54 = fmul float %akt_load, %tmp_53
  %tmp_55 = fadd float %parameters_addr_7_read, %tmp_54
  %parameters_addr_7_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %parameters_addr_7, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %parameters_addr_7, float %tmp_55, i4 -1)
  %parameters_addr_7_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %parameters_addr_7)
  %tmp_60 = add i14 %max_val_2_1_cast5, %tmp_40
  %tmp_66_cast = sext i14 %tmp_60 to i20
  %sum1 = add i20 %tmp_25_cast1, %tmp_66_cast
  %sum1_cast_cast = zext i20 %sum1 to i31
  %sum18 = add i31 %sext_cast, %sum1_cast_cast
  %sum18_cast = zext i31 %sum18 to i64
  %parameters_addr_8 = getelementptr float* %parameters, i64 %sum18_cast
  %parameters_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr_8, i32 1)
  %parameters_addr_8_read = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr_8)
  %tmp_67 = fmul float %alpha_w_load, %parameters_addr_8_read
  %tmp_68 = fsub float %parameters_addr_8_read, %tmp_67
  %tmp_69 = fadd float %tmp_68, %alpha_w_load
  %parameters_addr_8_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %parameters_addr_8, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %parameters_addr_8, float %tmp_69, i4 -1)
  %parameters_addr_8_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %parameters_addr_8)
  %matchsum_load = load i8* %matchsum_addr, align 1
  %tmp_72 = add i8 %matchsum_load, 1
  store i8 %tmp_72, i8* %matchsum_addr, align 1
  %tmp_73 = icmp eq i4 %max_val_2_1, 0
  br i1 %tmp_73, label %._crit_edge13.0, label %1

._crit_edge13.0:                                  ; preds = %1, %0
  br i1 %or_cond, label %._crit_edge13.1, label %2

; <label>:1                                       ; preds = %0
  %parameters_load_9_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr_2, i32 1)
  %parameters_addr_2_read_1 = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr_2)
  %tmp_81 = fsub float %parameters_addr_2_read_1, %alpha_w_load
  %parameters_addr_2_req8 = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %parameters_addr_2, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %parameters_addr_2, float %tmp_81, i4 -1)
  %parameters_addr_2_resp9 = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %parameters_addr_2)
  br label %._crit_edge13.0

._crit_edge13.1:                                  ; preds = %2, %._crit_edge13.0
  %sorted_weight_0_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr_2, i32 1)
  %sorted_weight_0 = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr_2)
  %sorted_weight_1_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr_5, i32 1)
  %sorted_weight_1 = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr_5)
  br label %9

; <label>:2                                       ; preds = %._crit_edge13.0
  %parameters_load_11_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr_5, i32 1)
  %parameters_addr_5_read_1 = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr_5)
  %tmp_106_1 = fsub float %parameters_addr_5_read_1, %alpha_w_load
  %parameters_addr_5_req6 = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %parameters_addr_5, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %parameters_addr_5, float %tmp_106_1, i4 -1)
  %parameters_addr_5_resp7 = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %parameters_addr_5)
  br label %._crit_edge13.1

; <label>:3                                       ; preds = %meminst.0_ifconv
  %tmp_75 = add i14 %min_val_1_1_cast3, %tmp_33
  %tmp_76_cast = sext i14 %tmp_75 to i20
  %sum3 = add i20 %tmp_25_cast1, %tmp_76_cast
  %sum3_cast_cast = zext i20 %sum3 to i31
  %sum19 = add i31 %sext_cast, %sum3_cast_cast
  %sum19_cast = zext i31 %sum19 to i64
  %parameters_addr_9 = getelementptr float* %parameters, i64 %sum19_cast
  %parameters_addr_9_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %parameters_addr_9, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %parameters_addr_9, float %tmp_31, i4 -1)
  %parameters_addr_9_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %parameters_addr_9)
  %vinit_load = load float* @vinit, align 4
  %tmp_77 = add i14 %min_val_1_1_cast3, %tmp_35
  %tmp_78_cast = sext i14 %tmp_77 to i20
  %sum5 = add i20 %tmp_25_cast1, %tmp_78_cast
  %sum5_cast_cast = zext i20 %sum5 to i31
  %sum20 = add i31 %sext_cast, %sum5_cast_cast
  %sum20_cast = zext i31 %sum20 to i64
  %parameters_addr_10 = getelementptr float* %parameters, i64 %sum20_cast
  %parameters_addr_10_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %parameters_addr_10, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %parameters_addr_10, float %vinit_load, i4 -1)
  %parameters_addr_10_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %parameters_addr_10)
  %tmp_79_cast = zext i4 %min_val_1_1 to i19
  %tmp_114 = add i19 %tmp_64_cast1, %tmp_79_cast
  %tmp_118_cast = zext i19 %tmp_114 to i64
  %matchsum_addr_2 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_118_cast
  store i8 1, i8* %matchsum_addr_2, align 1
  %tmp_80 = icmp eq i4 %min_val_1_1, 0
  br i1 %tmp_80, label %._crit_edge14.0, label %4

._crit_edge14.0:                                  ; preds = %4, %3
  %matchsumtot_1 = phi float [ %tmp_84, %4 ], [ 0.000000e+00, %3 ]
  br i1 %tmp_78, label %._crit_edge14.1, label %5

; <label>:4                                       ; preds = %3
  %parameters_load_10_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr_2, i32 1)
  %parameters_addr_2_read_2 = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr_2)
  %tmp_82 = fsub float %parameters_addr_2_read_2, %alpha_w_load
  %parameters_addr_2_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %parameters_addr_2, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %parameters_addr_2, float %tmp_82, i4 -1)
  %parameters_addr_2_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %parameters_addr_2)
  %matchsum_load_1 = load i8* %matchsum_addr_3, align 2
  %tmp_83 = zext i8 %matchsum_load_1 to i32
  %tmp_84 = sitofp i32 %tmp_83 to float
  br label %._crit_edge14.0

._crit_edge14.1:                                  ; preds = %5, %._crit_edge14.0
  %matchsumtot_1_1 = phi float [ %matchsumtot_2_1, %5 ], [ %matchsumtot_1, %._crit_edge14.0 ]
  %matchsumtot_1_1_to_int = bitcast float %matchsumtot_1_1 to i32
  %tmp_86 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %matchsumtot_1_1_to_int, i32 23, i32 30)
  %tmp_115 = trunc i32 %matchsumtot_1_1_to_int to i23
  %notlhs5 = icmp ne i8 %tmp_86, -1
  %notrhs5 = icmp eq i23 %tmp_115, 0
  %tmp_95 = or i1 %notrhs5, %notlhs5
  %tmp_96 = fcmp oeq float %matchsumtot_1_1, 0.000000e+00
  %tmp_97 = and i1 %tmp_95, %tmp_96
  br i1 %tmp_97, label %7, label %6

; <label>:5                                       ; preds = %._crit_edge14.0
  %parameters_load_12_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %parameters_addr_5, i32 1)
  %parameters_addr_5_read_2 = call float @_ssdm_op_Read.m_axi.floatP(float* %parameters_addr_5)
  %tmp_114_1 = fsub float %parameters_addr_5_read_2, %alpha_w_load
  %parameters_addr_5_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %parameters_addr_5, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %parameters_addr_5, float %tmp_114_1, i4 -1)
  %parameters_addr_5_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %parameters_addr_5)
  %matchsum_load_2 = load i8* %matchsum_addr_4, align 1
  %tmp_116_1 = zext i8 %matchsum_load_2 to i32
  %tmp_117_1 = sitofp i32 %tmp_116_1 to float
  %matchsumtot_2_1 = fadd float %matchsumtot_1, %tmp_117_1
  br label %._crit_edge14.1

; <label>:6                                       ; preds = %._crit_edge14.1
  %tmp_89 = fdiv float 1.000000e+00, %matchsumtot_1_1
  %tmp_90 = add i14 %tmp_40, %min_val_1_1_cast3
  %tmp_91_cast = sext i14 %tmp_90 to i20
  %sum7 = add i20 %tmp_25_cast1, %tmp_91_cast
  %sum7_cast_cast = zext i20 %sum7 to i31
  %sum22 = add i31 %sext_cast, %sum7_cast_cast
  %sum22_cast = zext i31 %sum22 to i64
  %parameters_addr_12 = getelementptr float* %parameters, i64 %sum22_cast
  %parameters_addr_12_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %parameters_addr_12, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %parameters_addr_12, float %tmp_89, i4 -1)
  %parameters_addr_12_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %parameters_addr_12)
  br label %8

; <label>:7                                       ; preds = %._crit_edge14.1
  %tmp_92 = add i14 %tmp_40, %min_val_1_1_cast3
  %tmp_93_cast = sext i14 %tmp_92 to i20
  %sum9 = add i20 %tmp_25_cast1, %tmp_93_cast
  %sum9_cast_cast = zext i20 %sum9 to i31
  %sum21 = add i31 %sext_cast, %sum9_cast_cast
  %sum21_cast = zext i31 %sum21 to i64
  %parameters_addr_11 = getelementptr float* %parameters, i64 %sum21_cast
  %parameters_addr_11_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %parameters_addr_11, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %parameters_addr_11, float 0x3FC99999A0000000, i4 -1)
  %parameters_addr_11_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %parameters_addr_11)
  br label %8

; <label>:8                                       ; preds = %7, %6
  br label %11

branch4:                                          ; preds = %9
  %tmp_118 = trunc i32 %j5_0_in to i1
  %sorted_weight_0_2 = select i1 %tmp_118, float %sorted_weight_0, float %sorted_weight_1
  store i1 false, i1* %back_gauss_addr, align 2
  store i1 false, i1* %back_gauss_addr_1, align 1
  %B_1 = fadd float %sorted_weight_0_2, 0.000000e+00
  %not_j5_0_in_t = xor i1 %tmp_118, true
  %tmp_119 = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %tmp_37, i1 %not_j5_0_in_t)
  %tmp_120 = zext i18 %tmp_119 to i64
  %back_gauss_addr_2 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_120
  store i1 true, i1* %back_gauss_addr_2, align 1
  %B_1_to_int = bitcast float %B_1 to i32
  %tmp_106 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %B_1_to_int, i32 23, i32 30)
  %tmp_122 = trunc i32 %B_1_to_int to i23
  %notlhs10 = icmp ne i8 %tmp_106, -1
  %notrhs10 = icmp eq i23 %tmp_122, 0
  %tmp_108 = or i1 %notrhs10, %notlhs10
  %tmp_109 = fcmp oge float %B_1, 0x3FE6666660000000
  %tmp_110 = and i1 %tmp_108, %tmp_109
  br i1 %tmp_110, label %.loopexit, label %10

; <label>:9                                       ; preds = %branch1, %._crit_edge13.1
  %index_1_1 = phi i32 [ 1, %._crit_edge13.1 ], [ %index_1, %branch1 ]
  %sorted_F_1 = phi float [ %sorted_F_1_2, %._crit_edge13.1 ], [ %sorted_F_1_41, %branch1 ]
  %j5_0_in = phi i32 [ 1, %._crit_edge13.1 ], [ %j5, %branch1 ]
  %j5 = add nsw i32 -1, %j5_0_in
  %tmp_116 = trunc i32 %j5 to i1
  %sorted_F_1_41 = select i1 %tmp_116, float %sorted_F_1, float %sorted_F_0
  %sorted_F_1_to_int = bitcast float %sorted_F_1_41 to i32
  %tmp_98 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sorted_F_1_to_int, i32 23, i32 30)
  %tmp_117 = trunc i32 %sorted_F_1_to_int to i23
  %notlhs8 = icmp ne i8 %tmp_98, -1
  %notrhs8 = icmp eq i23 %tmp_117, 0
  %tmp_102 = or i1 %notrhs8, %notlhs8
  %tmp_103 = and i1 %tmp_34, %tmp_102
  %tmp_104 = fcmp ogt float %sorted_F_1_2, %sorted_F_1_41
  %tmp_105 = and i1 %tmp_103, %tmp_104
  %tmp_87 = icmp sgt i32 %j5_0_in, 0
  %tmp_88 = and i1 %tmp_105, %tmp_87
  br i1 %tmp_88, label %branch1, label %branch4

branch1:                                          ; preds = %9
  %tmp_94 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1819) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 4, i32 2, [1 x i8]* @p_str1806) nounwind
  %index_1 = select i1 %tmp_116, i32 %index_1_1, i32 0
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1819, i32 %tmp_94) nounwind
  br label %9

; <label>:10                                      ; preds = %branch4
  %tmp_123 = trunc i32 %index_1_1 to i19
  %tmp_124 = select i1 %tmp_118, i19 1, i19 %tmp_123
  %tmp_121 = add i19 %tmp_64_cast1, %tmp_124
  %tmp_121_cast = sext i19 %tmp_121 to i64
  %back_gauss_addr_3 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_121_cast
  store i1 true, i1* %back_gauss_addr_3, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %10, %branch4
  br label %11

; <label>:11                                      ; preds = %.loopexit, %8
  %p_0 = phi i1 [ false, %.loopexit ], [ true, %8 ]
  ret i1 %p_0
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0, !7, !14, !22, !28, !33, !38, !43, !48, !49}
!axi4.master.portmap = !{!50, !51}
!axi4.slave.bundlemap = !{!52, !53, !54}

!0 = metadata !{metadata !1, float* @vinit}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"vinit", metadata !5, metadata !"float", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8, [460800 x float]* @para}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"para", metadata !12, metadata !"float", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 460799, i32 1}
!14 = metadata !{metadata !15, null}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 7, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"matchsum", metadata !19, metadata !"unsigned char", i32 0, i32 7}
!19 = metadata !{metadata !20, metadata !21}
!20 = metadata !{i32 0, i32 76799, i32 1}
!21 = metadata !{i32 0, i32 1, i32 1}
!22 = metadata !{metadata !23, [2 x i32]* @llvm_global_ctors_0}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"llvm.global_ctors.0", metadata !27, metadata !"", i32 0, i32 31}
!27 = metadata !{metadata !21}
!28 = metadata !{metadata !29, null}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"back_gauss", metadata !19, metadata !"bool", i32 0, i32 0}
!33 = metadata !{metadata !34, float* @alpha_w}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"alpha_w", metadata !5, metadata !"float", i32 0, i32 31}
!38 = metadata !{metadata !39, [2 x float]* @akt}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"akt", metadata !27, metadata !"float", i32 0, i32 31}
!43 = metadata !{metadata !44, [2 x float]* @F}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 31, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"F", metadata !27, metadata !"float", i32 0, i32 31}
!48 = metadata !{metadata !15, [153600 x i8]* @matchsum}
!49 = metadata !{metadata !29, [153600 x i1]* @back_gauss}
!50 = metadata !{metadata !"gmem", metadata !"frame_in", metadata !"READONLY", metadata !"frame_out", metadata !"WRITEONLY"}
!51 = metadata !{metadata !"gmem_offset", metadata !"para", metadata !"READWRITE"}
!52 = metadata !{metadata !"frame_in", metadata !""}
!53 = metadata !{metadata !"frame_out", metadata !""}
!54 = metadata !{metadata !"para", metadata !""}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 7, metadata !57}
!57 = metadata !{metadata !58, metadata !60}
!58 = metadata !{metadata !"frame_in", metadata !59, metadata !"unsigned char", i32 0, i32 7}
!59 = metadata !{metadata !20}
!60 = metadata !{metadata !"frame_out", metadata !59, metadata !"unsigned char", i32 0, i32 7}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 0, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"init", metadata !65, metadata !"bool", i32 0, i32 0}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 0, i32 0}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 31, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"return", metadata !71, metadata !"int", i32 0, i32 31}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 1, i32 0}
