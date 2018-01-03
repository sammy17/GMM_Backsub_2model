; ModuleID = 'F:/maxi_latest/GMM_backsub_new/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@vinit = global float 1.800000e+04, align 4
@parameters = internal global [57600 x float] zeroinitializer, align 16
@para = global [460800 x float] zeroinitializer, align 16
@out_frame = internal unnamed_addr global [9600 x i1] zeroinitializer
@mode5 = internal constant [10 x i8] c"s_axilite\00"
@mode3 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@memcpy_OC_para_OC_backsub_IC_u = internal unnamed_addr constant [82 x i8] c"memcpy.para.backsub(unsigned char*, unsigned char*, bool, float*)::parameters.gep\00"
@memcpy_OC_frame_out_OC_backsub = internal unnamed_addr constant [86 x i8] c"memcpy.frame_out.backsub(unsigned char*, unsigned char*, bool, float*)::out_frame.gep\00"
@memcpy_OC_backsub_IC_unsigned_s = internal unnamed_addr constant [78 x i8] c"memcpy.backsub(unsigned char*, unsigned char*, bool, float*)::parameters.para\00"
@memcpy_OC_OC_frame_in_str = internal unnamed_addr constant [17 x i8] c"memcpy..frame_in\00"
@matchsum = global [153600 x i8] zeroinitializer
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1941]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@data_array = internal unnamed_addr global [9600 x i8] zeroinitializer, align 16
@burstwrite_OC_region_str = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00"
@burstread_OC_region_str = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@bundle6 = internal constant [1 x i8] zeroinitializer
@bundle4 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@backsub_str = internal unnamed_addr constant [8 x i8] c"backsub\00"
@back_gauss = global [153600 x i1] zeroinitializer
@alpha_w = global float 0x3F70624DE0000000, align 4
@akt = global [2 x float] zeroinitializer, align 4
@F = global [2 x float] zeroinitializer, align 4
@p_str29 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1818 = private unnamed_addr constant [12 x i8] c"hls_label_6\00", align 1
@p_str1812 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str1811 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str1810 = private unnamed_addr constant [6 x i8] c"loop1\00", align 1
@p_str1809 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1
@p_str1808 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1807 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1805 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
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
  %tmp_4 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %para_read, i32 2, i32 31)
  %tmp_10_cast = zext i30 %tmp_4 to i31
  %tmp_30_cast = sext i32 %frame_out_read to i33
  %tmp_31_cast = sext i32 %frame_in_read to i33
  call void (...)* @_ssdm_op_SpecBitsMap(float* %gmem_offset), !map !8
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %init) nounwind, !map !61
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !67
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @backsub_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_out, [10 x i8]* @mode3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @bundle4, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem, [6 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_in, [10 x i8]* @mode, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(float* %gmem_offset, [6 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i32 %para, [10 x i8]* @mode5, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @bundle6, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i1 %init, [10 x i8]* @p_str1808, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1809, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str1808, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1809, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  br label %1

; <label>:1                                       ; preds = %burst.wr.end33, %0
  %x = phi i4 [ 0, %0 ], [ %x_1, %burst.wr.end33 ]
  %phi_mul = phi i17 [ 0, %0 ], [ %next_mul, %burst.wr.end33 ]
  %phi_mul9 = phi i19 [ 0, %0 ], [ %next_mul1, %burst.wr.end33 ]
  %next_mul1 = add i19 %phi_mul9, 57600
  %next_mul = add i17 %phi_mul, 9600
  %exitcond2 = icmp eq i4 %x, -8
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %x_1 = add i4 %x, 1
  br i1 %exitcond2, label %5, label %2

; <label>:2                                       ; preds = %1
  %tmp_5 = zext i19 %phi_mul9 to i31
  %tmp_7 = add i31 %tmp_5, %tmp_10_cast
  %tmp_10 = zext i31 %tmp_7 to i64
  %gmem_offset_addr = getelementptr float* %gmem_offset, i64 %tmp_10
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset_addr, i32 14400)
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %2
  %indvar = phi i14 [ 0, %2 ], [ %indvar_next, %burst.rd.body ]
  %exitcond9 = icmp eq i14 %indvar, -1984
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 14400, i64 14400, i64 14400)
  %indvar_next = add i14 %indvar, 1
  br i1 %exitcond9, label %burst.rd.end, label %burst.rd.body

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopName([78 x i8]* @memcpy_OC_backsub_IC_unsigned_s) nounwind
  %gmem_offset_addr_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset_addr)
  %tmp_6 = zext i14 %indvar to i64
  %parameters_addr = getelementptr [57600 x float]* @parameters, i64 0, i64 %tmp_6
  store float %gmem_offset_addr_read, float* %parameters_addr, align 4
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.header
  %tmp_27 = zext i17 %phi_mul to i33
  %tmp_29 = add i33 %tmp_27, %tmp_31_cast
  %tmp_30 = sext i33 %tmp_29 to i64
  %gmem_addr = getelementptr i8* %gmem, i64 %tmp_30
  %p_rd_req11 = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %gmem_addr, i32 9600)
  br label %burst.rd.header14

burst.rd.header14:                                ; preds = %burst.rd.body15, %burst.rd.end
  %indvar1 = phi i14 [ 0, %burst.rd.end ], [ %indvar_next1, %burst.rd.body15 ]
  %exitcond3 = icmp eq i14 %indvar1, -6784
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 9600, i64 9600, i64 9600)
  %indvar_next1 = add i14 %indvar1, 1
  br i1 %exitcond3, label %burst.rd.end13, label %burst.rd.body15

burst.rd.body15:                                  ; preds = %burst.rd.header14
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memcpy_OC_OC_frame_in_str) nounwind
  %gmem_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %gmem_addr)
  %tmp_8 = zext i14 %indvar1 to i64
  %data_array_addr = getelementptr [9600 x i8]* @data_array, i64 0, i64 %tmp_8
  store i8 %gmem_addr_read, i8* %data_array_addr, align 1
  %burstread_rend24 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin1) nounwind
  br label %burst.rd.header14

burst.rd.end13:                                   ; preds = %burst.rd.header14
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str1810) nounwind
  br i1 %init_read, label %.preheader3, label %.preheader

.preheader3:                                      ; preds = %burst.rd.end13, %3
  %i = phi i14 [ %i_1, %3 ], [ 0, %burst.rd.end13 ]
  %exitcond1 = icmp eq i14 %i, -6784
  %i_1 = add i14 %i, 1
  br i1 %exitcond1, label %.loopexit, label %3

; <label>:3                                       ; preds = %.preheader3
  %i_cast6 = zext i14 %i to i17
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 9600, i64 9600, i64 9600)
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1811) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_9 = add i17 %i_cast6, %phi_mul
  %tmp_s = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %tmp_9, i1 false)
  %tmp_32 = zext i18 %tmp_s to i64
  %matchsum_addr = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_32
  %tmp_33 = or i18 %tmp_s, 1
  %tmp_34 = call i64 @_ssdm_op_BitConcatenate.i64.i46.i18(i46 0, i18 %tmp_33)
  %matchsum_addr_1 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_34
  %back_gauss_addr = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_32
  %back_gauss_addr_1 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_34
  store i8 0, i8* %matchsum_addr, align 2
  store i8 0, i8* %matchsum_addr_1, align 1
  store i1 true, i1* %back_gauss_addr, align 2
  store i1 true, i1* %back_gauss_addr_1, align 1
  %p_shl = call i17 @_ssdm_op_BitConcatenate.i17.i14.i3(i14 %i, i3 0)
  %p_shl_cast = zext i17 %p_shl to i18
  %p_shl1 = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %i, i1 false)
  %p_shl1_cast = zext i15 %p_shl1 to i18
  %tmp_11 = sub i18 %p_shl_cast, %p_shl1_cast
  %tmp_11_cast = sext i18 %tmp_11 to i32
  %tmp_12 = zext i32 %tmp_11_cast to i64
  %parameters_addr_1 = getelementptr inbounds [57600 x float]* @parameters, i64 0, i64 %tmp_12
  store float 0.000000e+00, float* %parameters_addr_1, align 8
  %tmp_13 = or i32 %tmp_11_cast, 1
  %tmp_14 = zext i32 %tmp_13 to i64
  %parameters_addr_2 = getelementptr inbounds [57600 x float]* @parameters, i64 0, i64 %tmp_14
  store float 0.000000e+00, float* %parameters_addr_2, align 4
  %tmp_15 = add i18 %tmp_11, 2
  %tmp_15_cast = sext i18 %tmp_15 to i32
  %tmp_16 = zext i32 %tmp_15_cast to i64
  %parameters_addr_3 = getelementptr inbounds [57600 x float]* @parameters, i64 0, i64 %tmp_16
  store float 4.900000e+03, float* %parameters_addr_3, align 8
  %tmp_17 = add i18 %tmp_11, 3
  %tmp_17_cast = sext i18 %tmp_17 to i32
  %tmp_18 = zext i32 %tmp_17_cast to i64
  %parameters_addr_4 = getelementptr inbounds [57600 x float]* @parameters, i64 0, i64 %tmp_18
  store float 4.900000e+03, float* %parameters_addr_4, align 4
  %tmp_19 = add i18 %tmp_11, 4
  %tmp_19_cast = sext i18 %tmp_19 to i32
  %tmp_20 = zext i32 %tmp_19_cast to i64
  %parameters_addr_5 = getelementptr inbounds [57600 x float]* @parameters, i64 0, i64 %tmp_20
  store float 0x3FB70A3D80000000, float* %parameters_addr_5, align 8
  %tmp_21 = add i18 %tmp_11, 5
  %tmp_21_cast = sext i18 %tmp_21 to i32
  %tmp_22 = zext i32 %tmp_21_cast to i64
  %parameters_addr_6 = getelementptr inbounds [57600 x float]* @parameters, i64 0, i64 %tmp_22
  store float 0x3FB70A3D80000000, float* %parameters_addr_6, align 4
  %tmp_23 = zext i14 %i to i64
  %data_array_addr_1 = getelementptr inbounds [9600 x i8]* @data_array, i64 0, i64 %tmp_23
  %data_array_load = load i8* %data_array_addr_1, align 1
  %tmp_2 = call fastcc zeroext i1 @backsub_EM_ALGO(i8 zeroext %data_array_load, i14 %i, [57600 x float]* @parameters, i4 %x) nounwind
  %out_frame_addr = getelementptr [9600 x i1]* @out_frame, i64 0, i64 %tmp_23
  store i1 %tmp_2, i1* %out_frame_addr, align 1
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1811, i32 %tmp_1) nounwind
  br label %.preheader3

.preheader:                                       ; preds = %burst.rd.end13, %4
  %j = phi i14 [ %j_1, %4 ], [ 0, %burst.rd.end13 ]
  %exitcond = icmp eq i14 %j, -6784
  %j_1 = add i14 %j, 1
  br i1 %exitcond, label %.loopexit, label %4

; <label>:4                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 9600, i64 9600, i64 9600)
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1812) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_24 = zext i14 %j to i64
  %data_array_addr_2 = getelementptr inbounds [9600 x i8]* @data_array, i64 0, i64 %tmp_24
  %data_array_load_1 = load i8* %data_array_addr_2, align 1
  %tmp_25 = call fastcc zeroext i1 @backsub_EM_ALGO(i8 zeroext %data_array_load_1, i14 %j, [57600 x float]* @parameters, i4 %x) nounwind
  %out_frame_addr_1 = getelementptr [9600 x i1]* @out_frame, i64 0, i64 %tmp_24
  store i1 %tmp_25, i1* %out_frame_addr_1, align 1
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1812, i32 %tmp_3) nounwind
  br label %.preheader

.loopexit:                                        ; preds = %.preheader3, %.preheader
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str1810, i32 %tmp) nounwind
  %tmp_31 = add i33 %tmp_27, %tmp_30_cast
  %tmp_36 = sext i33 %tmp_31 to i64
  %gmem_addr_1 = getelementptr i8* %gmem, i64 %tmp_36
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %gmem_addr_1, i32 9600)
  br label %burst.wr.header

burst.wr.header:                                  ; preds = %burst.wr.body, %.loopexit
  %indvar2 = phi i14 [ 0, %.loopexit ], [ %indvar_next2, %burst.wr.body ]
  %exitcond4 = icmp eq i14 %indvar2, -6784
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 9600, i64 9600, i64 9600)
  %indvar_next2 = add i14 %indvar2, 1
  br i1 %exitcond4, label %burst.wr.header34.preheader, label %burst.wr.body

burst.wr.header34.preheader:                      ; preds = %burst.wr.header
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %gmem_addr_1)
  %p_wr_req12 = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset_addr, i32 14400)
  br label %burst.wr.header34

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str15)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopName([86 x i8]* @memcpy_OC_frame_out_OC_backsub) nounwind
  %tmp_26 = zext i14 %indvar2 to i64
  %out_frame_addr_2 = getelementptr [9600 x i1]* @out_frame, i64 0, i64 %tmp_26
  %out_frame_load = load i1* %out_frame_addr_2, align 1
  %extLd = select i1 %out_frame_load, i8 -1, i8 0
  call void @_ssdm_op_Write.m_axi.i8P(i8* %gmem_addr_1, i8 %extLd, i1 true)
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin) nounwind
  br label %burst.wr.header

burst.wr.header34:                                ; preds = %burst.wr.header34.preheader, %burst.wr.body35
  %indvar3 = phi i14 [ %indvar_next3, %burst.wr.body35 ], [ 0, %burst.wr.header34.preheader ]
  %exitcond5 = icmp eq i14 %indvar3, -1984
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 14400, i64 14400, i64 14400)
  %indvar_next3 = add i14 %indvar3, 1
  br i1 %exitcond5, label %burst.wr.end33, label %burst.wr.body35

burst.wr.body35:                                  ; preds = %burst.wr.header34
  %burstwrite_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str29)
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopName([82 x i8]* @memcpy_OC_para_OC_backsub_IC_u) nounwind
  %tmp_28 = zext i14 %indvar3 to i64
  %parameters_addr_7 = getelementptr [57600 x float]* @parameters, i64 0, i64 %tmp_28
  %parameters_load = load float* %parameters_addr_7, align 4
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset_addr, float %parameters_load, i4 -1)
  %burstwrite_rend45 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin1) nounwind
  br label %burst.wr.header34

burst.wr.end33:                                   ; preds = %burst.wr.header34
  %p_wr_resp13 = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset_addr)
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

define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

define weak i14 @_ssdm_op_Read.ap_auto.i14(i14) {
entry:
  ret i14 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_14 = trunc i32 %empty to i8
  ret i8 %empty_14
}

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_15 = trunc i78 %empty to i32
  ret i32 %empty_15
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_16 = trunc i32 %empty to i30
  ret i30 %empty_16
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_17 = trunc i64 %empty to i11
  ret i11 %empty_17
}

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_18 = shl i9 1, %empty
  %empty_19 = and i9 %0, %empty_18
  %empty_20 = icmp ne i9 %empty_19, 0
  ret i1 %empty_20
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_21 = and i32 %0, %empty
  %empty_22 = icmp ne i32 %empty_21, 0
  ret i1 %empty_22
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_23 = shl i24 1, %empty
  %empty_24 = and i24 %0, %empty_23
  %empty_25 = icmp ne i24 %empty_24, 0
  ret i1 %empty_25
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i46.i18(i46, i18) nounwind readnone {
entry:
  %empty = zext i46 %0 to i64
  %empty_26 = zext i18 %1 to i64
  %empty_27 = shl i64 %empty, 18
  %empty_28 = or i64 %empty_27, %empty_26
  ret i64 %empty_28
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_29 = zext i23 %1 to i24
  %empty_30 = shl i24 %empty, 23
  %empty_31 = or i24 %empty_30, %empty_29
  ret i24 %empty_31
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17, i1) nounwind readnone {
entry:
  %empty = zext i17 %0 to i18
  %empty_32 = zext i1 %1 to i18
  %empty_33 = shl i18 %empty, 1
  %empty_34 = or i18 %empty_33, %empty_32
  ret i18 %empty_34
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i14.i3(i14, i3) nounwind readnone {
entry:
  %empty = zext i14 %0 to i17
  %empty_35 = zext i3 %1 to i17
  %empty_36 = shl i17 %empty, 3
  %empty_37 = or i17 %empty_36, %empty_35
  ret i17 %empty_37
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14, i1) nounwind readnone {
entry:
  %empty = zext i14 %0 to i15
  %empty_38 = zext i1 %1 to i15
  %empty_39 = shl i15 %empty, 1
  %empty_40 = or i15 %empty_39, %empty_38
  ret i15 %empty_40
}

declare void @_GLOBAL__I_a1941() nounwind

declare void @_GLOBAL__I_a() nounwind

define internal fastcc zeroext i1 @backsub_EM_ALGO(i8 zeroext %pixel, i14 %pos_r, [57600 x float]* nocapture %parameters, i4 %x) {
meminst.0_ifconv:
  %x_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %x)
  %pos_read = call i14 @_ssdm_op_Read.ap_auto.i14(i14 %pos_r)
  %pixel_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %pixel)
  %tmp_s = zext i8 %pixel_read to i32
  %tmp_30 = sitofp i32 %tmp_s to float
  %pos_cast9 = zext i14 %pos_read to i17
  %p_shl = call i17 @_ssdm_op_BitConcatenate.i17.i14.i3(i14 %pos_read, i3 0)
  %p_shl_cast = zext i17 %p_shl to i18
  %p_shl2 = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %pos_read, i1 false)
  %p_shl2_cast = zext i15 %p_shl2 to i18
  %tmp_31 = sub i18 %p_shl_cast, %p_shl2_cast
  %tmp_31_cast = sext i18 %tmp_31 to i32
  %tmp_32 = add i18 2, %tmp_31
  %x_cast = zext i4 %x_read to i17
  %tmp_33 = mul i17 9600, %x_cast
  %tmp_34 = add i17 %tmp_33, %pos_cast9
  %tmp_58 = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %tmp_34, i1 false)
  %tmp_60 = zext i18 %tmp_58 to i64
  %tmp_92_cast = zext i18 %tmp_58 to i19
  %matchsum_addr_3 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_60
  %tmp_68 = or i18 %tmp_58, 1
  %tmp_74 = call i64 @_ssdm_op_BitConcatenate.i64.i46.i18(i46 0, i18 %tmp_68)
  %matchsum_addr_4 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_74
  %back_gauss_addr = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_60
  %back_gauss_addr_1 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_74
  %tmp_35 = add i18 4, %tmp_31
  %tmp_36 = sext i18 %tmp_31 to i64
  %parameters_addr = getelementptr [57600 x float]* %parameters, i64 0, i64 %tmp_36
  %parameters_load = load float* %parameters_addr, align 4
  %x_assign_5 = fsub float %tmp_30, %parameters_load
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
  %tmp_96 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_7_i_i, i32 23)
  %tmp_92 = zext i1 %tmp_96 to i32
  %tmp_93 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_9_i_i, i32 23, i32 54)
  %p_Val2_3 = select i1 %isNeg, i32 %tmp_92, i32 %tmp_93
  %p_Val2_7_i_i = sub i32 0, %p_Val2_3
  %p_Val2_5 = select i1 %p_Result_s, i32 %p_Val2_7_i_i, i32 %p_Val2_3
  %neg = sub i32 0, %p_Val2_5
  %abscond = icmp sgt i32 %p_Val2_5, 0
  %abs = select i1 %abscond, i32 %p_Val2_5, i32 %neg
  %tmp_37 = sitofp i32 %abs to double
  %tmp_52 = sext i18 %tmp_32 to i64
  %parameters_addr_8 = getelementptr [57600 x float]* %parameters, i64 0, i64 %tmp_52
  %parameters_load_1 = load float* %parameters_addr_8, align 4
  %tmp_i = call float @llvm.sqrt.f32(float %parameters_load_1) nounwind
  %tmp_53 = fpext float %tmp_i to double
  %tmp_54 = fmul double %tmp_53, 2.500000e+00
  %tmp_54_to_int = bitcast double %tmp_37 to i64
  %tmp_1 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_54_to_int, i32 52, i32 62)
  %tmp_102 = trunc i64 %tmp_54_to_int to i52
  %tmp_58_to_int = bitcast double %tmp_54 to i64
  %tmp_3 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_58_to_int, i32 52, i32 62)
  %tmp_103 = trunc i64 %tmp_58_to_int to i52
  %notlhs = icmp ne i11 %tmp_1, -1
  %notrhs = icmp eq i52 %tmp_102, 0
  %tmp_5 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i11 %tmp_3, -1
  %notrhs1 = icmp eq i52 %tmp_103, 0
  %tmp_6 = or i1 %notrhs1, %notlhs1
  %tmp_7 = and i1 %tmp_5, %tmp_6
  %tmp_8 = fcmp olt double %tmp_37, %tmp_54
  %tmp_9 = and i1 %tmp_7, %tmp_8
  %back_gauss_load = load i1* %back_gauss_addr, align 2
  %alpha_w_load = load float* @alpha_w, align 4
  %tmp_55 = sext i18 %tmp_35 to i64
  %parameters_addr_9 = getelementptr [57600 x float]* %parameters, i64 0, i64 %tmp_55
  %parameters_load_2 = load float* %parameters_addr_9, align 4
  %tmp_57 = fdiv float %alpha_w_load, %parameters_load_2
  store float %tmp_57, float* getelementptr inbounds ([2 x float]* @akt, i64 0, i64 0), align 4
  %sorted_F_0 = fdiv float %parameters_load_2, %parameters_load_1
  store float %sorted_F_0, float* getelementptr inbounds ([2 x float]* @F, i64 0, i64 0), align 4
  %tmp_51_s = or i32 %tmp_31_cast, 1
  %tmp_52_1 = sext i32 %tmp_51_s to i64
  %parameters_addr_10 = getelementptr [57600 x float]* %parameters, i64 0, i64 %tmp_52_1
  %parameters_load_3 = load float* %parameters_addr_10, align 4
  %x_assign_6 = fsub float %tmp_30, %parameters_load_3
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
  %tmp_116 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_7_i_i1, i32 23)
  %tmp_94 = zext i1 %tmp_116 to i32
  %tmp_108 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_9_i_i1, i32 23, i32 54)
  %p_Val2_9 = select i1 %isNeg_1, i32 %tmp_94, i32 %tmp_108
  %p_Val2_7_i_i1 = sub i32 0, %p_Val2_9
  %p_Val2_11 = select i1 %p_Result_2, i32 %p_Val2_7_i_i1, i32 %p_Val2_9
  %neg_1 = sub i32 0, %p_Val2_11
  %abscond_1 = icmp sgt i32 %p_Val2_11, 0
  %abs_1 = select i1 %abscond_1, i32 %p_Val2_11, i32 %neg_1
  %tmp_55_1 = sitofp i32 %abs_1 to double
  %tmp_56_1 = add i18 3, %tmp_31
  %tmp_57_1 = sext i18 %tmp_56_1 to i64
  %parameters_addr_11 = getelementptr [57600 x float]* %parameters, i64 0, i64 %tmp_57_1
  %parameters_load_4 = load float* %parameters_addr_11, align 4
  %tmp_i1 = call float @llvm.sqrt.f32(float %parameters_load_4) nounwind
  %tmp_59_1 = fpext float %tmp_i1 to double
  %tmp_60_1 = fmul double %tmp_59_1, 2.500000e+00
  %tmp_55_1_to_int = bitcast double %tmp_55_1 to i64
  %tmp_10 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_55_1_to_int, i32 52, i32 62)
  %tmp_120 = trunc i64 %tmp_55_1_to_int to i52
  %tmp_60_1_to_int = bitcast double %tmp_60_1 to i64
  %tmp_12 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_60_1_to_int, i32 52, i32 62)
  %tmp_121 = trunc i64 %tmp_60_1_to_int to i52
  %notlhs2 = icmp ne i11 %tmp_10, -1
  %notrhs2 = icmp eq i52 %tmp_120, 0
  %tmp_14 = or i1 %notrhs2, %notlhs2
  %notlhs3 = icmp ne i11 %tmp_12, -1
  %notrhs3 = icmp eq i52 %tmp_121, 0
  %tmp_15 = or i1 %notrhs3, %notlhs3
  %tmp_16 = and i1 %tmp_14, %tmp_15
  %tmp_17 = fcmp olt double %tmp_55_1, %tmp_60_1
  %tmp_18 = and i1 %tmp_16, %tmp_17
  %back_gauss_load_1 = load i1* %back_gauss_addr_1, align 1
  %tmp_65_1 = add i18 5, %tmp_31
  %tmp_66_1 = sext i18 %tmp_65_1 to i64
  %parameters_addr_12 = getelementptr [57600 x float]* %parameters, i64 0, i64 %tmp_66_1
  %parameters_load_8 = load float* %parameters_addr_12, align 4
  %tmp_67_1 = fdiv float %alpha_w_load, %parameters_load_8
  store float %tmp_67_1, float* getelementptr inbounds ([2 x float]* @akt, i64 0, i64 1), align 4
  %sorted_F_1_2 = fdiv float %parameters_load_8, %parameters_load_4
  store float %sorted_F_1_2, float* getelementptr inbounds ([2 x float]* @F, i64 0, i64 1), align 4
  %sorted_F_0_to_int = bitcast float %sorted_F_0 to i32
  %tmp_19 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sorted_F_0_to_int, i32 23, i32 30)
  %tmp_122 = trunc i32 %sorted_F_0_to_int to i23
  %notlhs4 = icmp ne i8 %tmp_19, -1
  %notrhs4 = icmp eq i23 %tmp_122, 0
  %tmp_21 = or i1 %notrhs4, %notlhs4
  %tmp_22 = fcmp ogt float %sorted_F_0, 0.000000e+00
  %tmp_23 = and i1 %tmp_21, %tmp_22
  %tmp = and i1 %tmp_9, %tmp_23
  %or_cond1 = and i1 %tmp, %back_gauss_load
  %sorted_F_0_s = select i1 %or_cond1, float %sorted_F_0, float 0.000000e+00
  %tmp_27 = fcmp olt float %sorted_F_0, 1.000000e+03
  %tmp_28 = and i1 %tmp_21, %tmp_27
  %sorted_F_0_1 = select i1 %tmp_28, float %sorted_F_0, float 1.000000e+03
  %sorted_F_1_2_to_int = bitcast float %sorted_F_1_2 to i32
  %tmp_29 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sorted_F_1_2_to_int, i32 23, i32 30)
  %tmp_123 = trunc i32 %sorted_F_1_2_to_int to i23
  %sorted_F_0_to_int_41 = bitcast float %sorted_F_0_s to i32
  %tmp_59 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sorted_F_0_to_int_41, i32 23, i32 30)
  %tmp_124 = trunc i32 %sorted_F_0_to_int_41 to i23
  %notlhs6 = icmp ne i8 %tmp_29, -1
  %notrhs6 = icmp eq i23 %tmp_123, 0
  %tmp_61 = or i1 %notrhs6, %notlhs6
  %notlhs7 = icmp ne i8 %tmp_59, -1
  %notrhs7 = icmp eq i23 %tmp_124, 0
  %tmp_66 = or i1 %notrhs7, %notlhs7
  %tmp_67 = and i1 %tmp_61, %tmp_66
  %tmp_78 = fcmp ogt float %sorted_F_1_2, %sorted_F_0_s
  %tmp_79 = and i1 %tmp_67, %tmp_78
  %tmp1 = and i1 %tmp_18, %tmp_79
  %or_cond = and i1 %tmp1, %back_gauss_load_1
  %p_cast = zext i1 %or_cond to i4
  %tmp_90 = or i1 %or_cond, %or_cond1
  %max_val_2_1 = select i1 %tmp_90, i4 %p_cast, i4 -6
  %max_val_2_1_cast5 = zext i4 %max_val_2_1 to i18
  %sorted_F_0_1_to_int = bitcast float %sorted_F_0_1 to i32
  %tmp_91 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sorted_F_0_1_to_int, i32 23, i32 30)
  %tmp_125 = trunc i32 %sorted_F_0_1_to_int to i23
  %notlhs9 = icmp ne i8 %tmp_91, -1
  %notrhs9 = icmp eq i23 %tmp_125, 0
  %tmp_95 = or i1 %notrhs9, %notlhs9
  %tmp_97 = and i1 %tmp_61, %tmp_95
  %tmp_98 = fcmp olt float %sorted_F_1_2, %sorted_F_0_1
  %tmp_99 = and i1 %tmp_97, %tmp_98
  %min_val_1_cast = zext i1 %tmp_99 to i4
  %tmp_100 = or i1 %tmp_99, %tmp_28
  %min_val_1_1 = select i1 %tmp_100, i4 %min_val_1_cast, i4 -6
  %min_val_1_1_cast3 = zext i4 %min_val_1_1 to i18
  br i1 %tmp_90, label %0, label %3

; <label>:0                                       ; preds = %meminst.0_ifconv
  %tmp_38 = add i18 %max_val_2_1_cast5, %tmp_31
  %tmp_39 = sext i18 %tmp_38 to i64
  %parameters_addr_13 = getelementptr [57600 x float]* %parameters, i64 0, i64 %tmp_39
  %parameters_load_5 = load float* %parameters_addr_13, align 4
  %tmp_40 = zext i4 %max_val_2_1 to i64
  %tmp_40_cast = zext i4 %max_val_2_1 to i19
  %tmp_109 = add i19 %tmp_92_cast, %tmp_40_cast
  %tmp_126_cast = zext i19 %tmp_109 to i64
  %matchsum_addr = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_126_cast
  %akt_addr = getelementptr inbounds [2 x float]* @akt, i64 0, i64 %tmp_40
  %akt_load = load float* %akt_addr, align 4
  %tmp_41 = fsub float %tmp_30, %parameters_load_5
  %tmp_42 = fmul float %akt_load, %tmp_41
  %tmp_43 = fadd float %parameters_load_5, %tmp_42
  store float %tmp_43, float* %parameters_addr_13, align 4
  %tmp_44 = add i18 %max_val_2_1_cast5, %tmp_32
  %tmp_45 = sext i18 %tmp_44 to i64
  %parameters_addr_14 = getelementptr [57600 x float]* %parameters, i64 0, i64 %tmp_45
  %parameters_load_6 = load float* %parameters_addr_14, align 4
  %tmp_46 = fsub float %tmp_30, %tmp_43
  %tmp_47 = fmul float %tmp_46, %tmp_46
  %tmp_48 = fsub float %tmp_47, %parameters_load_6
  %tmp_49 = fmul float %akt_load, %tmp_48
  %tmp_50 = fadd float %parameters_load_6, %tmp_49
  store float %tmp_50, float* %parameters_addr_14, align 4
  %tmp_51 = add i18 %max_val_2_1_cast5, %tmp_35
  %tmp_56 = sext i18 %tmp_51 to i64
  %parameters_addr_15 = getelementptr [57600 x float]* %parameters, i64 0, i64 %tmp_56
  %parameters_load_7 = load float* %parameters_addr_15, align 4
  %tmp_62 = fmul float %alpha_w_load, %parameters_load_7
  %tmp_63 = fsub float %parameters_load_7, %tmp_62
  %tmp_64 = fadd float %tmp_63, %alpha_w_load
  store float %tmp_64, float* %parameters_addr_15, align 4
  %matchsum_load = load i8* %matchsum_addr, align 1
  %tmp_65 = add i8 %matchsum_load, 1
  store i8 %tmp_65, i8* %matchsum_addr, align 1
  %tmp_69 = icmp eq i4 %max_val_2_1, 0
  br i1 %tmp_69, label %._crit_edge13.0, label %1

._crit_edge13.0:                                  ; preds = %1, %0
  br i1 %or_cond, label %._crit_edge13.1, label %2

; <label>:1                                       ; preds = %0
  %parameters_load_9 = load float* %parameters_addr_9, align 4
  %tmp_76 = fsub float %parameters_load_9, %alpha_w_load
  store float %tmp_76, float* %parameters_addr_9, align 4
  br label %._crit_edge13.0

._crit_edge13.1:                                  ; preds = %2, %._crit_edge13.0
  %sorted_weight_0 = load float* %parameters_addr_9, align 4
  %sorted_weight_1 = load float* %parameters_addr_12, align 4
  br label %9

; <label>:2                                       ; preds = %._crit_edge13.0
  %parameters_load_11 = load float* %parameters_addr_12, align 4
  %tmp_102_1 = fsub float %parameters_load_11, %alpha_w_load
  store float %tmp_102_1, float* %parameters_addr_12, align 4
  br label %._crit_edge13.1

; <label>:3                                       ; preds = %meminst.0_ifconv
  %tmp_70 = add i18 %min_val_1_1_cast3, %tmp_31
  %tmp_71 = sext i18 %tmp_70 to i64
  %parameters_addr_16 = getelementptr [57600 x float]* %parameters, i64 0, i64 %tmp_71
  store float %tmp_30, float* %parameters_addr_16, align 4
  %vinit_load = load float* @vinit, align 4
  %tmp_72 = add i18 %min_val_1_1_cast3, %tmp_32
  %tmp_73 = sext i18 %tmp_72 to i64
  %parameters_addr_17 = getelementptr [57600 x float]* %parameters, i64 0, i64 %tmp_73
  store float %vinit_load, float* %parameters_addr_17, align 4
  %tmp_74_cast = zext i4 %min_val_1_1 to i19
  %tmp_110 = add i19 %tmp_92_cast, %tmp_74_cast
  %tmp_127_cast = zext i19 %tmp_110 to i64
  %matchsum_addr_2 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_127_cast
  store i8 1, i8* %matchsum_addr_2, align 1
  %tmp_75 = icmp eq i4 %min_val_1_1, 0
  br i1 %tmp_75, label %._crit_edge14.0, label %4

._crit_edge14.0:                                  ; preds = %4, %3
  %matchsumtot_1 = phi float [ %tmp_89, %4 ], [ 0.000000e+00, %3 ]
  br i1 %tmp_99, label %._crit_edge14.1, label %5

; <label>:4                                       ; preds = %3
  %parameters_load_10 = load float* %parameters_addr_9, align 4
  %tmp_77 = fsub float %parameters_load_10, %alpha_w_load
  store float %tmp_77, float* %parameters_addr_9, align 4
  %matchsum_load_1 = load i8* %matchsum_addr_3, align 2
  %tmp_88 = zext i8 %matchsum_load_1 to i32
  %tmp_89 = sitofp i32 %tmp_88 to float
  br label %._crit_edge14.0

._crit_edge14.1:                                  ; preds = %5, %._crit_edge14.0
  %matchsumtot_1_1 = phi float [ %matchsumtot_2_1, %5 ], [ %matchsumtot_1, %._crit_edge14.0 ]
  %matchsumtot_1_1_to_int = bitcast float %matchsumtot_1_1 to i32
  %tmp_101 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %matchsumtot_1_1_to_int, i32 23, i32 30)
  %tmp_126 = trunc i32 %matchsumtot_1_1_to_int to i23
  %notlhs5 = icmp ne i8 %tmp_101, -1
  %notrhs5 = icmp eq i23 %tmp_126, 0
  %tmp_104 = or i1 %notrhs5, %notlhs5
  %tmp_105 = fcmp oeq float %matchsumtot_1_1, 0.000000e+00
  %tmp_106 = and i1 %tmp_104, %tmp_105
  br i1 %tmp_106, label %7, label %6

; <label>:5                                       ; preds = %._crit_edge14.0
  %parameters_load_12 = load float* %parameters_addr_12, align 4
  %tmp_110_1 = fsub float %parameters_load_12, %alpha_w_load
  store float %tmp_110_1, float* %parameters_addr_12, align 4
  %matchsum_load_2 = load i8* %matchsum_addr_4, align 1
  %tmp_112_1 = zext i8 %matchsum_load_2 to i32
  %tmp_113_1 = sitofp i32 %tmp_112_1 to float
  %matchsumtot_2_1 = fadd float %matchsumtot_1, %tmp_113_1
  br label %._crit_edge14.1

; <label>:6                                       ; preds = %._crit_edge14.1
  %tmp_82 = fdiv float 1.000000e+00, %matchsumtot_1_1
  %tmp_83 = add i18 %min_val_1_1_cast3, %tmp_35
  %tmp_84 = sext i18 %tmp_83 to i64
  %parameters_addr_18 = getelementptr [57600 x float]* %parameters, i64 0, i64 %tmp_84
  store float %tmp_82, float* %parameters_addr_18, align 4
  br label %8

; <label>:7                                       ; preds = %._crit_edge14.1
  %tmp_85 = add i18 %min_val_1_1_cast3, %tmp_35
  %tmp_86 = sext i18 %tmp_85 to i64
  %parameters_addr_19 = getelementptr [57600 x float]* %parameters, i64 0, i64 %tmp_86
  store float 0x3FC99999A0000000, float* %parameters_addr_19, align 4
  br label %8

; <label>:8                                       ; preds = %7, %6
  br label %11

branch4:                                          ; preds = %9
  %tmp_132 = trunc i32 %j5_0_in to i1
  %sorted_weight_0_2 = select i1 %tmp_132, float %sorted_weight_0, float %sorted_weight_1
  store i1 false, i1* %back_gauss_addr, align 2
  store i1 false, i1* %back_gauss_addr_1, align 1
  %B_1 = fadd float %sorted_weight_0_2, 0.000000e+00
  %not_j5_0_in_t = xor i1 %tmp_132, true
  %tmp_128 = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %tmp_34, i1 %not_j5_0_in_t)
  %tmp_129 = zext i18 %tmp_128 to i64
  %back_gauss_addr_2 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_129
  store i1 true, i1* %back_gauss_addr_2, align 1
  %B_1_to_int = bitcast float %B_1 to i32
  %tmp_115 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %B_1_to_int, i32 23, i32 30)
  %tmp_133 = trunc i32 %B_1_to_int to i23
  %notlhs10 = icmp ne i8 %tmp_115, -1
  %notrhs10 = icmp eq i23 %tmp_133, 0
  %tmp_117 = or i1 %notrhs10, %notlhs10
  %tmp_118 = fcmp oge float %B_1, 0x3FE6666660000000
  %tmp_119 = and i1 %tmp_117, %tmp_118
  br i1 %tmp_119, label %.loopexit, label %10

; <label>:9                                       ; preds = %branch1, %._crit_edge13.1
  %index_1_1 = phi i32 [ 1, %._crit_edge13.1 ], [ %index_1, %branch1 ]
  %sorted_F_1 = phi float [ %sorted_F_1_2, %._crit_edge13.1 ], [ %sorted_F_1_42, %branch1 ]
  %j5_0_in = phi i32 [ 1, %._crit_edge13.1 ], [ %j5, %branch1 ]
  %j5 = add nsw i32 -1, %j5_0_in
  %tmp_127 = trunc i32 %j5 to i1
  %sorted_F_1_42 = select i1 %tmp_127, float %sorted_F_1, float %sorted_F_0
  %sorted_F_1_to_int = bitcast float %sorted_F_1_42 to i32
  %tmp_107 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sorted_F_1_to_int, i32 23, i32 30)
  %tmp_131 = trunc i32 %sorted_F_1_to_int to i23
  %notlhs8 = icmp ne i8 %tmp_107, -1
  %notrhs8 = icmp eq i23 %tmp_131, 0
  %tmp_111 = or i1 %notrhs8, %notlhs8
  %tmp_112 = and i1 %tmp_61, %tmp_111
  %tmp_113 = fcmp ogt float %sorted_F_1_2, %sorted_F_1_42
  %tmp_114 = and i1 %tmp_112, %tmp_113
  %tmp_80 = icmp sgt i32 %j5_0_in, 0
  %tmp_81 = and i1 %tmp_114, %tmp_80
  br i1 %tmp_81, label %branch1, label %branch4

branch1:                                          ; preds = %9
  %tmp_87 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1818)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 4, i32 2, [1 x i8]* @p_str1806) nounwind
  %index_1 = select i1 %tmp_127, i32 %index_1_1, i32 0
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1818, i32 %tmp_87)
  br label %9

; <label>:10                                      ; preds = %branch4
  %tmp_134 = trunc i32 %index_1_1 to i19
  %tmp_135 = select i1 %tmp_132, i19 1, i19 %tmp_134
  %tmp_130 = add i19 %tmp_92_cast, %tmp_135
  %tmp_130_cast = sext i19 %tmp_130 to i64
  %back_gauss_addr_3 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_130_cast
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
