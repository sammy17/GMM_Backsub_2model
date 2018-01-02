; ModuleID = '/home/zynq-fyp/Backsub_GMM/GMM_backsub_new/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vinit = global float 1.800000e+04, align 4
@mode5 = internal constant [10 x i8] c"s_axilite\00"
@mode3 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@memset_M_str = internal unnamed_addr constant [9 x i8] c"memset_M\00"
@matchsum = global [153600 x i8] zeroinitializer
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1938]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@bundle6 = internal constant [1 x i8] zeroinitializer
@bundle4 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@backsub_str = internal unnamed_addr constant [8 x i8] c"backsub\00"
@back_gauss = global [153600 x i1] zeroinitializer
@alpha_w = global float 0x3F70624DE0000000, align 4
@akt = global [2 x float] zeroinitializer, align 4
@F = global [2 x float] zeroinitializer, align 4
@p_str1810 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str1809 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1
@p_str1808 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1807 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1805 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

declare float @llvm.sqrt.f32(float) nounwind readonly

declare i78 @llvm.part.select.i78(i78, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i21 @llvm.part.select.i21(i21, i32, i32) nounwind readnone

declare i17 @llvm.part.select.i17(i17, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define i32 @backsub(i32* %gmem, i8* %gmem_offset, float* %gmem_offset1, i32 %data_array, i32 %out_frame, i1 %init, i32 %parameters) {
  %parameters_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %parameters)
  %init_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %init)
  %out_frame_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %out_frame)
  %data_array_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %data_array)
  %tmp_1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %parameters_read, i32 2, i32 31)
  %tmp_5_cast = zext i30 %tmp_1 to i33
  %tmp_9_cast = sext i32 %out_frame_read to i33
  %tmp_5 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %data_array_read, i32 2, i32 31)
  %tmp_39_cast = zext i30 %tmp_5 to i31
  call void (...)* @_ssdm_op_SpecBitsMap(float* %gmem_offset1), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %gmem_offset), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem), !map !60
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %init) nounwind, !map !66
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !72
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @backsub_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %gmem_offset, [6 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i32 %out_frame, [10 x i8]* @mode3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @bundle4, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem, [6 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i32 %data_array, [10 x i8]* @mode, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(float* %gmem_offset1, [6 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i32 %parameters, [10 x i8]* @mode5, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @bundle6, [6 x i8]* @p_str1807, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i1 %init, [10 x i8]* @p_str1808, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1809, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str1808, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1809, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  br i1 %init_read, label %.preheader9, label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %0
  %M = alloca i1
  %M_s = alloca i1
  %sorted_F_1 = alloca float
  %sorted_F_1_3 = alloca float
  %sorted_weight_1 = alloca float
  %sorted_weight_1_3 = alloca float
  %M_2 = alloca i1
  %M_2_1 = alloca i1
  %sorted_F_1_7 = alloca float
  %sorted_F_1_11 = alloca float
  %sorted_weight_1_7 = alloca float
  %sorted_weight_1_11 = alloca float
  br label %.preheader5

.preheader9:                                      ; preds = %0, %1
  %i = phi i17 [ %i_1, %1 ], [ 0, %0 ]
  %exitcond4 = icmp eq i17 %i, -54272
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 76800, i64 76800, i64 76800)
  %i_1 = add i17 %i, 1
  br i1 %exitcond4, label %.preheader7.preheader, label %1

.preheader7.preheader:                            ; preds = %.preheader9
  %M_1 = alloca i1
  %M_1_1 = alloca i1
  %sorted_F_1_14 = alloca float
  %sorted_F_1_17 = alloca float
  %sorted_weight_1_14 = alloca float
  %sorted_weight_1_17 = alloca float
  %M_3 = alloca i1
  %M_3_1 = alloca i1
  %sorted_F_1_20 = alloca float
  %sorted_F_1_22 = alloca float
  %sorted_weight_1_21 = alloca float
  %sorted_weight_1_25 = alloca float
  br label %.preheader7

; <label>:1                                       ; preds = %.preheader9
  %tmp_8 = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %i, i1 false)
  %tmp_9 = zext i18 %tmp_8 to i64
  %matchsum_addr = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_9
  %tmp_12 = or i18 %tmp_8, 1
  %tmp_18 = call i64 @_ssdm_op_BitConcatenate.i64.i46.i18(i46 0, i18 %tmp_12)
  %matchsum_addr_1 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_18
  %back_gauss_addr = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_9
  %back_gauss_addr_1 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_18
  store i8 0, i8* %matchsum_addr, align 2
  store i8 0, i8* %matchsum_addr_1, align 1
  store i1 true, i1* %back_gauss_addr, align 2
  store i1 true, i1* %back_gauss_addr_1, align 1
  br label %.preheader9

.preheader7:                                      ; preds = %.preheader6, %.preheader7.preheader
  %idxRow = phi i8 [ 0, %.preheader7.preheader ], [ %idxRow_2, %.preheader6 ]
  %exitcond3 = icmp eq i8 %idxRow, -16
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 240, i64 240, i64 240)
  %idxRow_2 = add i8 %idxRow, 1
  br i1 %exitcond3, label %.loopexit, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  %p_shl = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %idxRow, i8 0)
  %p_shl_cast = zext i16 %p_shl to i17
  %p_shl3 = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %idxRow, i6 0)
  %p_shl3_cast = zext i14 %p_shl3 to i17
  %tmp_6 = add i17 %p_shl_cast, %p_shl3_cast
  %p_lshr_f_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %tmp_6, i32 1, i32 16)
  %tmp_30 = zext i16 %p_lshr_f_cast to i31
  %tmp_38 = add i31 %tmp_30, %tmp_39_cast
  %tmp_39 = zext i31 %tmp_38 to i64
  %gmem_addr_1 = getelementptr i32* %gmem, i64 %tmp_39
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %gmem_addr_1, i32 160)
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.backedge, %.preheader6.preheader
  %idxCols = phi i8 [ 0, %.preheader6.preheader ], [ %idxCols_2, %.preheader6.backedge ]
  %M_1_load = load i1* %M_1
  %M_1_1_load = load i1* %M_1_1
  %sorted_F_1_14_load = load float* %sorted_F_1_14
  %sorted_F_1_17_load = load float* %sorted_F_1_17
  %sorted_weight_1_14_load = load float* %sorted_weight_1_14
  %sorted_weight_1_17_load = load float* %sorted_weight_1_17
  %M_3_load = load i1* %M_3
  %M_3_1_load = load i1* %M_3_1
  %sorted_F_1_20_load = load float* %sorted_F_1_20
  %sorted_F_1_22_load = load float* %sorted_F_1_22
  %sorted_weight_1_21_load = load float* %sorted_weight_1_21
  %sorted_weight_1_25_load = load float* %sorted_weight_1_25
  %idxCols_cast = zext i8 %idxCols to i16
  %exitcond2 = icmp eq i8 %idxCols, -96
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 160, i64 160, i64 160)
  %idxCols_2 = add i8 %idxCols, 1
  br i1 %exitcond2, label %.preheader7, label %2

; <label>:2                                       ; preds = %.preheader6
  %i_3 = add i16 %idxCols_cast, %p_lshr_f_cast
  %val = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %gmem_addr_1)
  %tmp_47 = trunc i32 %val to i8
  %pixel_assign_3 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %val, i32 16, i32 23)
  %pos_assign_1 = call i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16 %i_3, i1 false)
  br label %meminst.i135

meminst.i135:                                     ; preds = %meminst.i135, %2
  %M_1_1_2 = phi i1 [ %M_1_1_load, %2 ], [ %M_1_1_3, %meminst.i135 ]
  %M_1_0_2 = phi i1 [ %M_1_load, %2 ], [ %M_1_0_3, %meminst.i135 ]
  %invdar_i2 = phi i1 [ false, %2 ], [ %not_invdar_i2, %meminst.i135 ]
  %not_invdar_i2 = xor i1 %invdar_i2, true
  %M_1_1_3 = and i1 %M_1_1_2, %not_invdar_i2
  %M_1_0_3 = and i1 %invdar_i2, %M_1_0_2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopName([9 x i8]* @memset_M_str) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  br i1 %invdar_i2, label %3, label %meminst.i135

; <label>:3                                       ; preds = %meminst.i135
  %tmp_14 = zext i8 %tmp_47 to i32
  %tmp_15 = sitofp i32 %tmp_14 to float
  %p_shl6 = call i20 @_ssdm_op_BitConcatenate.i20.i16.i4(i16 %i_3, i4 0)
  %p_shl6_cast = zext i20 %p_shl6 to i21
  %p_shl7 = call i18 @_ssdm_op_BitConcatenate.i18.i16.i2(i16 %i_3, i2 0)
  %p_shl7_cast = zext i18 %p_shl7 to i21
  %tmp_16 = sub i21 %p_shl6_cast, %p_shl7_cast
  %tmp_22_cast = sext i21 %tmp_16 to i32
  %tmp_17 = or i21 %tmp_16, 2
  %tmp_23_cast = sext i21 %tmp_17 to i32
  %tmp_23_cast_cast_cast = sext i21 %tmp_17 to i22
  %tmp_18_cast = zext i17 %pos_assign_1 to i33
  %tmp_61 = zext i18 %p_shl7 to i64
  %tmp_268_cast = zext i18 %p_shl7 to i19
  %back_gauss_addr_6 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_61
  %tmp_71 = or i18 %p_shl7, 1
  %tmp_76 = call i64 @_ssdm_op_BitConcatenate.i64.i46.i18(i46 0, i18 %tmp_71)
  %back_gauss_addr_7 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_76
  %tmp_19 = add i21 %tmp_16, 4
  %tmp_25_cast = sext i21 %tmp_19 to i32
  br label %4

; <label>:4                                       ; preds = %_ifconv, %3
  %M_1_1_4 = phi i1 [ %M_1_1_3, %3 ], [ %M_1_1_6, %_ifconv ]
  %M_1_0_4 = phi i1 [ %M_1_0_3, %3 ], [ %M_1_0_6, %_ifconv ]
  %j_0_i2 = phi i2 [ 0, %3 ], [ %j_1, %_ifconv ]
  %j_0_i2_cast196_cast_cast = zext i2 %j_0_i2 to i22
  %exitcond6_i2 = icmp eq i2 %j_0_i2, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_1 = add i2 %j_0_i2, 1
  br i1 %exitcond6_i2, label %.preheader8.i148, label %_ifconv

_ifconv:                                          ; preds = %4
  %tmp_66 = call i19 @_ssdm_op_PartSelect.i19.i21.i32.i32(i21 %tmp_16, i32 2, i32 20)
  %tmp_37 = call i21 @_ssdm_op_BitConcatenate.i21.i19.i2(i19 %tmp_66, i2 %j_0_i2)
  %tmp_37_cast = sext i21 %tmp_37 to i32
  %tmp_38_cast = zext i32 %tmp_37_cast to i33
  %parameters7_sum1 = add i33 %tmp_5_cast, %tmp_38_cast
  %parameters7_sum1_cast = zext i33 %parameters7_sum1 to i64
  %gmem_offset1_addr_3 = getelementptr float* %gmem_offset1, i64 %parameters7_sum1_cast
  %gmem_offset1_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_3, i32 1)
  %gmem_offset1_addr_3_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_3)
  %x_assign_1 = fsub float %tmp_15, %gmem_offset1_addr_3_read
  %p_Val2_6 = bitcast float %x_assign_1 to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_6, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_6, i32 23, i32 30) nounwind
  %loc_V_3 = trunc i32 %p_Val2_6 to i23
  %p_Result_1 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_3) nounwind
  %tmp_2_i_i = zext i24 %p_Result_1 to i78
  %tmp_i_i_i_cast = zext i8 %loc_V to i9
  %sh_assign_2 = add i9 -127, %tmp_i_i_i_cast
  %isNeg_1 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_2, i32 8)
  %tmp_4_i_i = sub i8 127, %loc_V
  %tmp_4_i_i_cast = sext i8 %tmp_4_i_i to i9
  %sh_assign_3 = select i1 %isNeg_1, i9 %tmp_4_i_i_cast, i9 %sh_assign_2
  %sh_assign_1_i_cast = sext i9 %sh_assign_3 to i32
  %sh_assign_1_i_cast_cast = sext i9 %sh_assign_3 to i24
  %tmp_6_i_i = zext i32 %sh_assign_1_i_cast to i78
  %tmp_7_i_i = lshr i24 %p_Result_1, %sh_assign_1_i_cast_cast
  %tmp_9_i_i = shl i78 %tmp_2_i_i, %tmp_6_i_i
  %tmp_112 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_7_i_i, i32 23)
  %tmp_103 = zext i1 %tmp_112 to i32
  %tmp_108 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_9_i_i, i32 23, i32 54)
  %p_Val2_9 = select i1 %isNeg_1, i32 %tmp_103, i32 %tmp_108
  %p_Val2_7_i_i = sub i32 0, %p_Val2_9
  %p_Val2_11 = select i1 %p_Result_s, i32 %p_Val2_7_i_i, i32 %p_Val2_9
  %neg_i2 = sub i32 0, %p_Val2_11
  %abscond_i2 = icmp sgt i32 %p_Val2_11, 0
  %abs_i2 = select i1 %abscond_i2, i32 %p_Val2_11, i32 %neg_i2
  %tmp_41 = sitofp i32 %abs_i2 to double
  %tmp_42 = add i22 %tmp_23_cast_cast_cast, %j_0_i2_cast196_cast_cast
  %tmp_42_cast = sext i22 %tmp_42 to i32
  %tmp_43_cast = zext i32 %tmp_42_cast to i33
  %parameters7_sum2 = add i33 %tmp_5_cast, %tmp_43_cast
  %parameters7_sum2_cast = zext i33 %parameters7_sum2 to i64
  %gmem_offset1_addr_4 = getelementptr float* %gmem_offset1, i64 %parameters7_sum2_cast
  %gmem_offset1_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_4, i32 1)
  %gmem_offset1_addr_4_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_4)
  %tmp_i = call float @llvm.sqrt.f32(float %gmem_offset1_addr_4_read) nounwind
  %tmp_44 = fpext float %tmp_i to double
  %tmp_45 = fmul double %tmp_44, 2.500000e+00
  %tmp_41_to_int = bitcast double %tmp_41 to i64
  %tmp_67 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_41_to_int, i32 52, i32 62)
  %tmp_113 = trunc i64 %tmp_41_to_int to i52
  %tmp_45_to_int = bitcast double %tmp_45 to i64
  %tmp_100 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_45_to_int, i32 52, i32 62)
  %tmp_120 = trunc i64 %tmp_45_to_int to i52
  %notlhs2 = icmp ne i11 %tmp_67, -1
  %notrhs2 = icmp eq i52 %tmp_113, 0
  %tmp_110 = or i1 %notrhs2, %notlhs2
  %notlhs3 = icmp ne i11 %tmp_100, -1
  %notrhs3 = icmp eq i52 %tmp_120, 0
  %tmp_114 = or i1 %notrhs3, %notlhs3
  %tmp_116 = and i1 %tmp_110, %tmp_114
  %tmp_117 = fcmp olt double %tmp_41, %tmp_45
  %tmp_122 = and i1 %tmp_116, %tmp_117
  %tmp_53 = zext i2 %j_0_i2 to i64
  %tmp_128 = call i18 @_ssdm_op_BitConcatenate.i18.i16.i2(i16 %i_3, i2 %j_0_i2)
  %tmp_130 = zext i18 %tmp_128 to i64
  %back_gauss_addr_3 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_130
  %back_gauss_load_1 = load i1* %back_gauss_addr_3, align 1
  %tmp_132 = trunc i2 %j_0_i2 to i1
  %not_j_0_i2_t = xor i1 %tmp_132, true
  %sel_tmp = and i1 %back_gauss_load_1, %tmp_122
  %sel_tmp1 = and i1 %sel_tmp, %tmp_132
  %M_1_1_6 = or i1 %sel_tmp1, %M_1_1_4
  %sel_tmp5 = and i1 %sel_tmp, %not_j_0_i2_t
  %M_1_0_6 = or i1 %sel_tmp5, %M_1_0_4
  %alpha_w_load_2 = load float* @alpha_w, align 4
  %tmp_134 = call i19 @_ssdm_op_PartSelect.i19.i21.i32.i32(i21 %tmp_19, i32 2, i32 20)
  %tmp_83 = call i21 @_ssdm_op_BitConcatenate.i21.i19.i2(i19 %tmp_134, i2 %j_0_i2)
  %tmp_83_cast = sext i21 %tmp_83 to i32
  %tmp_84_cast = zext i32 %tmp_83_cast to i33
  %parameters7_sum3 = add i33 %tmp_5_cast, %tmp_84_cast
  %parameters7_sum3_cast = zext i33 %parameters7_sum3 to i64
  %gmem_offset1_addr_5 = getelementptr float* %gmem_offset1, i64 %parameters7_sum3_cast
  %gmem_offset1_load_5_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_5, i32 1)
  %gmem_offset1_addr_5_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_5)
  %tmp_99 = fdiv float %alpha_w_load_2, %gmem_offset1_addr_5_read
  %akt_addr_2 = getelementptr inbounds [2 x float]* @akt, i64 0, i64 %tmp_53
  store float %tmp_99, float* %akt_addr_2, align 4
  %tmp_101 = fdiv float %gmem_offset1_addr_5_read, %gmem_offset1_addr_4_read
  %F_addr_2 = getelementptr inbounds [2 x float]* @F, i64 0, i64 %tmp_53
  store float %tmp_101, float* %F_addr_2, align 4
  br label %4

.preheader8.i148:                                 ; preds = %4, %_ifconv8
  %max_val = phi i2 [ %j_3, %_ifconv8 ], [ 0, %4 ]
  %min_val_0_i2 = phi i32 [ %min_val_3, %_ifconv8 ], [ 10, %4 ]
  %max_val_0_i2 = phi i32 [ %min_val_8, %_ifconv8 ], [ 10, %4 ]
  %min_F_0_i2 = phi float [ %min_F_3, %_ifconv8 ], [ 1.000000e+03, %4 ]
  %max_F_0_i2 = phi float [ %max_F_5, %_ifconv8 ], [ 0.000000e+00, %4 ]
  %max_val_cast = zext i2 %max_val to i32
  %exitcond5_i2 = icmp eq i2 %max_val, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_3 = add i2 %max_val, 1
  br i1 %exitcond5_i2, label %5, label %_ifconv8

_ifconv8:                                         ; preds = %.preheader8.i148
  %tmp_52 = zext i2 %max_val to i64
  %tmp_171 = trunc i2 %max_val to i1
  %M_1_load_phi = select i1 %tmp_171, i1 %M_1_1_4, i1 %M_1_0_4
  %F_addr_3 = getelementptr inbounds [2 x float]* @F, i64 0, i64 %tmp_52
  %max_F = load float* %F_addr_3, align 4
  %max_F_1_to_int = bitcast float %max_F to i32
  %tmp_174 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_F_1_to_int, i32 23, i32 30)
  %tmp_180 = trunc i32 %max_F_1_to_int to i23
  %max_F_0_i2_to_int = bitcast float %max_F_0_i2 to i32
  %tmp_183 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_F_0_i2_to_int, i32 23, i32 30)
  %tmp_184 = trunc i32 %max_F_0_i2_to_int to i23
  %notlhs8 = icmp ne i8 %tmp_174, -1
  %notrhs8 = icmp eq i23 %tmp_180, 0
  %tmp_185 = or i1 %notrhs8, %notlhs8
  %notlhs9 = icmp ne i8 %tmp_183, -1
  %notrhs9 = icmp eq i23 %tmp_184, 0
  %tmp_188 = or i1 %notrhs9, %notlhs9
  %tmp_191 = and i1 %tmp_185, %tmp_188
  %tmp_194 = fcmp ogt float %max_F, %max_F_0_i2
  %tmp_195 = and i1 %tmp_191, %tmp_194
  %sel_tmp9 = and i1 %M_1_load_phi, %tmp_195
  %min_val_6 = select i1 %sel_tmp9, i32 %max_val_cast, i32 %max_val_0_i2
  %min_val_8 = select i1 %M_1_load_phi, i32 %min_val_6, i32 %max_val_0_i2
  %max_F_4 = select i1 %sel_tmp9, float %max_F, float %max_F_0_i2
  %max_F_5 = select i1 %M_1_load_phi, float %max_F_4, float %max_F_0_i2
  %min_F_0_i2_to_int = bitcast float %min_F_0_i2 to i32
  %tmp_196 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %min_F_0_i2_to_int, i32 23, i32 30)
  %tmp_199 = trunc i32 %min_F_0_i2_to_int to i23
  %notlhs6 = icmp ne i8 %tmp_196, -1
  %notrhs6 = icmp eq i23 %tmp_199, 0
  %tmp_202 = or i1 %notrhs6, %notlhs6
  %tmp_203 = and i1 %tmp_185, %tmp_202
  %tmp_206 = fcmp olt float %max_F, %min_F_0_i2
  %tmp_208 = and i1 %tmp_203, %tmp_206
  %min_val_3 = select i1 %tmp_208, i32 %max_val_cast, i32 %min_val_0_i2
  %min_F_3 = select i1 %tmp_208, float %max_F, float %min_F_0_i2
  br label %.preheader8.i148

; <label>:5                                       ; preds = %.preheader8.i148
  %tmp_168 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %max_val_0_i2, i32 1, i32 31)
  %icmp = icmp slt i31 %tmp_168, 1
  br i1 %icmp, label %6, label %10

; <label>:6                                       ; preds = %5
  %tmp_85 = add nsw i32 %max_val_0_i2, %tmp_22_cast
  %tmp_86_cast = sext i32 %tmp_85 to i33
  %parameters7_sum11 = add i33 %tmp_5_cast, %tmp_86_cast
  %parameters7_sum11_cast = sext i33 %parameters7_sum11 to i64
  %gmem_offset1_addr_11 = getelementptr float* %gmem_offset1, i64 %parameters7_sum11_cast
  %gmem_offset1_load_9_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_11, i32 1)
  %gmem_offset1_addr_11_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_11)
  %tmp_87 = sext i32 %max_val_0_i2 to i64
  %tmp_231 = trunc i32 %max_val_0_i2 to i19
  %tmp_233 = add i19 %tmp_231, %tmp_268_cast
  %tmp_485_cast = sext i19 %tmp_233 to i64
  %matchsum_addr_4 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_485_cast
  %akt_addr_3 = getelementptr inbounds [2 x float]* @akt, i64 0, i64 %tmp_87
  %akt_load_1 = load float* %akt_addr_3, align 4
  %tmp_88 = fsub float %tmp_15, %gmem_offset1_addr_11_read
  %tmp_89 = fmul float %akt_load_1, %tmp_88
  %tmp_90 = fadd float %gmem_offset1_addr_11_read, %tmp_89
  %gmem_offset1_addr_11_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_11, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_11, float %tmp_90, i4 -1)
  %gmem_offset1_addr_11_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_11)
  %tmp_91 = add i32 %max_val_0_i2, %tmp_23_cast
  %tmp_92_cast = sext i32 %tmp_91 to i33
  %parameters7_sum21 = add i33 %tmp_5_cast, %tmp_92_cast
  %parameters7_sum21_cast = sext i33 %parameters7_sum21 to i64
  %gmem_offset1_addr_12 = getelementptr float* %gmem_offset1, i64 %parameters7_sum21_cast
  %gmem_offset1_load_10_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_12, i32 1)
  %gmem_offset1_addr_12_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_12)
  %tmp_93 = fsub float %tmp_15, %tmp_90
  %tmp_94 = fmul float %tmp_93, %tmp_93
  %tmp_95 = fsub float %tmp_94, %gmem_offset1_addr_12_read
  %tmp_96 = fmul float %akt_load_1, %tmp_95
  %tmp_97 = fadd float %gmem_offset1_addr_12_read, %tmp_96
  %gmem_offset1_addr_12_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_12, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_12, float %tmp_97, i4 -1)
  %gmem_offset1_addr_12_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_12)
  %tmp_98 = add i32 %max_val_0_i2, %tmp_25_cast
  %tmp_103_cast = sext i32 %tmp_98 to i33
  %parameters7_sum27 = add i33 %tmp_5_cast, %tmp_103_cast
  %parameters7_sum28_cast = sext i33 %parameters7_sum27 to i64
  %gmem_offset1_addr_13 = getelementptr float* %gmem_offset1, i64 %parameters7_sum28_cast
  %gmem_offset1_load_11_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_13, i32 1)
  %gmem_offset1_addr_13_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_13)
  %alpha_w_load_3 = load float* @alpha_w, align 4
  %tmp_104 = fmul float %alpha_w_load_3, %gmem_offset1_addr_13_read
  %tmp_105 = fsub float %gmem_offset1_addr_13_read, %tmp_104
  %tmp_106 = fadd float %tmp_105, %alpha_w_load_3
  %gmem_offset1_addr_13_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_13, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_13, float %tmp_106, i4 -1)
  %gmem_offset1_addr_13_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_13)
  %matchsum_load_1 = load i8* %matchsum_addr_4, align 1
  %tmp_107 = add i8 1, %matchsum_load_1
  store i8 %tmp_107, i8* %matchsum_addr_4, align 1
  br label %7

; <label>:7                                       ; preds = %._crit_edge13.i157, %6
  %j2_0_i2 = phi i2 [ 0, %6 ], [ %j_6, %._crit_edge13.i157 ]
  %j2_0_i2_cast = zext i2 %j2_0_i2 to i32
  %exitcond4_i2 = icmp eq i2 %j2_0_i2, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_6 = add i2 %j2_0_i2, 1
  br i1 %exitcond4_i2, label %.preheader7.i165, label %8

; <label>:8                                       ; preds = %7
  %tmp_121 = icmp eq i32 %j2_0_i2_cast, %max_val_0_i2
  br i1 %tmp_121, label %._crit_edge13.i157, label %9

; <label>:9                                       ; preds = %8
  %tmp_288 = call i19 @_ssdm_op_PartSelect.i19.i21.i32.i32(i21 %tmp_19, i32 2, i32 20)
  %tmp_137 = call i21 @_ssdm_op_BitConcatenate.i21.i19.i2(i19 %tmp_288, i2 %j2_0_i2)
  %tmp_137_cast = sext i21 %tmp_137 to i32
  %tmp_138_cast = zext i32 %tmp_137_cast to i33
  %parameters7_sum32 = add i33 %tmp_138_cast, %tmp_5_cast
  %parameters7_sum33_cast = zext i33 %parameters7_sum32 to i64
  %gmem_offset1_addr_20 = getelementptr float* %gmem_offset1, i64 %parameters7_sum33_cast
  %gmem_offset1_load_14_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_20, i32 1)
  %gmem_offset1_addr_20_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_20)
  %tmp_140 = fsub float %gmem_offset1_addr_20_read, %alpha_w_load_3
  %gmem_offset1_addr_20_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_20, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_20, float %tmp_140, i4 -1)
  %gmem_offset1_addr_20_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_20)
  br label %._crit_edge13.i157

._crit_edge13.i157:                               ; preds = %9, %8
  br label %7

; <label>:10                                      ; preds = %5
  %tmp_109 = add nsw i32 %min_val_0_i2, %tmp_22_cast
  %tmp_110_cast = sext i32 %tmp_109 to i33
  %parameters7_sum28 = add i33 %tmp_5_cast, %tmp_110_cast
  %parameters7_sum30_cast = sext i33 %parameters7_sum28 to i64
  %gmem_offset1_addr_14 = getelementptr float* %gmem_offset1, i64 %parameters7_sum30_cast
  %gmem_offset1_addr_14_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_14, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_14, float %tmp_15, i4 -1)
  %gmem_offset1_addr_14_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_14)
  %vinit_load_1 = load float* @vinit, align 4
  %tmp_111 = add i32 %min_val_0_i2, %tmp_23_cast
  %tmp_112_cast = sext i32 %tmp_111 to i33
  %parameters7_sum30 = add i33 %tmp_5_cast, %tmp_112_cast
  %parameters7_sum31_cast = sext i33 %parameters7_sum30 to i64
  %gmem_offset1_addr_15 = getelementptr float* %gmem_offset1, i64 %parameters7_sum31_cast
  %gmem_offset1_addr_15_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_15, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_15, float %vinit_load_1, i4 -1)
  %gmem_offset1_addr_15_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_15)
  %tmp_235 = trunc i32 %min_val_0_i2 to i19
  %tmp_236 = add i19 %tmp_235, %tmp_268_cast
  %tmp_486_cast = sext i19 %tmp_236 to i64
  %matchsum_addr_5 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_486_cast
  store i8 1, i8* %matchsum_addr_5, align 1
  br label %._crit_edge14.i162

._crit_edge14.i162:                               ; preds = %11, %12, %10
  %j3_0_i2 = phi i2 [ 0, %10 ], [ %j_7, %12 ], [ %j_7, %11 ]
  %matchsumtot_0_i2 = phi float [ 0.000000e+00, %10 ], [ %matchsumtot_1, %12 ], [ %matchsumtot_0_i2, %11 ]
  %j3_0_i2_cast = zext i2 %j3_0_i2 to i32
  %exitcond3_i2 = icmp eq i2 %j3_0_i2, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_7 = add i2 %j3_0_i2, 1
  br i1 %exitcond3_i2, label %13, label %11

; <label>:11                                      ; preds = %._crit_edge14.i162
  %tmp_123 = icmp eq i32 %j3_0_i2_cast, %min_val_0_i2
  br i1 %tmp_123, label %._crit_edge14.i162, label %12

; <label>:12                                      ; preds = %11
  %tmp_290 = call i19 @_ssdm_op_PartSelect.i19.i21.i32.i32(i21 %tmp_19, i32 2, i32 20)
  %tmp_146 = call i21 @_ssdm_op_BitConcatenate.i21.i19.i2(i19 %tmp_290, i2 %j3_0_i2)
  %tmp_146_cast = sext i21 %tmp_146 to i32
  %tmp_147_cast = zext i32 %tmp_146_cast to i33
  %parameters7_sum35 = add i33 %tmp_147_cast, %tmp_5_cast
  %parameters7_sum37_cast = zext i33 %parameters7_sum35 to i64
  %gmem_offset1_addr_23 = getelementptr float* %gmem_offset1, i64 %parameters7_sum37_cast
  %gmem_offset1_load_15_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_23, i32 1)
  %gmem_offset1_addr_23_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_23)
  %alpha_w_load_5 = load float* @alpha_w, align 4
  %tmp_148 = fsub float %gmem_offset1_addr_23_read, %alpha_w_load_5
  %gmem_offset1_addr_23_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_23, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_23, float %tmp_148, i4 -1)
  %gmem_offset1_addr_23_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_23)
  %tmp_294 = call i18 @_ssdm_op_BitConcatenate.i18.i16.i2(i16 %i_3, i2 %j3_0_i2)
  %tmp_299 = zext i18 %tmp_294 to i64
  %matchsum_addr_7 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_299
  %matchsum_load_3 = load i8* %matchsum_addr_7, align 1
  %tmp_150 = zext i8 %matchsum_load_3 to i32
  %tmp_151 = sitofp i32 %tmp_150 to float
  %matchsumtot_1 = fadd float %matchsumtot_0_i2, %tmp_151
  br label %._crit_edge14.i162

; <label>:13                                      ; preds = %._crit_edge14.i162
  %matchsumtot_0_i2_to_int = bitcast float %matchsumtot_0_i2 to i32
  %tmp_257 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %matchsumtot_0_i2_to_int, i32 23, i32 30)
  %tmp_262 = trunc i32 %matchsumtot_0_i2_to_int to i23
  %notlhs11 = icmp ne i8 %tmp_257, -1
  %notrhs11 = icmp eq i23 %tmp_262, 0
  %tmp_264 = or i1 %notrhs11, %notlhs11
  %tmp_266 = fcmp oeq float %matchsumtot_0_i2, 0.000000e+00
  %tmp_267 = and i1 %tmp_264, %tmp_266
  br i1 %tmp_267, label %15, label %14

; <label>:14                                      ; preds = %13
  %tmp_141 = fdiv float 1.000000e+00, %matchsumtot_0_i2
  %tmp_142 = add i32 %tmp_25_cast, %min_val_0_i2
  %tmp_143_cast = sext i32 %tmp_142 to i33
  %parameters7_sum34 = add i33 %tmp_143_cast, %tmp_5_cast
  %parameters7_sum36_cast = sext i33 %parameters7_sum34 to i64
  %gmem_offset1_addr_22 = getelementptr float* %gmem_offset1, i64 %parameters7_sum36_cast
  %gmem_offset1_addr_22_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_22, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_22, float %tmp_141, i4 -1)
  %gmem_offset1_addr_22_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_22)
  br label %EM_ALGO.exit184

; <label>:15                                      ; preds = %13
  %tmp_144 = add i32 %tmp_25_cast, %min_val_0_i2
  %tmp_145_cast = sext i32 %tmp_144 to i33
  %parameters7_sum33 = add i33 %tmp_145_cast, %tmp_5_cast
  %parameters7_sum35_cast = sext i33 %parameters7_sum33 to i64
  %gmem_offset1_addr_21 = getelementptr float* %gmem_offset1, i64 %parameters7_sum35_cast
  %gmem_offset1_addr_21_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_21, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_21, float 0x3FC99999A0000000, i4 -1)
  %gmem_offset1_addr_21_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_21)
  br label %EM_ALGO.exit184

EM_ALGO.exit184:                                  ; preds = %15, %14
  %out_frame5_sum1 = add i33 %tmp_9_cast, %tmp_18_cast
  %out_frame5_sum1_cast = sext i33 %out_frame5_sum1 to i64
  %gmem_offset_addr_1 = getelementptr i8* %gmem_offset, i64 %out_frame5_sum1_cast
  %gmem_offset_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %gmem_offset_addr_1, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %gmem_offset_addr_1, i8 -1, i1 true)
  %gmem_offset_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %gmem_offset_addr_1)
  br label %22

.preheader7.i165:                                 ; preds = %7, %16
  %sorted_F_1_1_2 = phi float [ %sorted_F_1_4, %16 ], [ %sorted_F_1_17_load, %7 ]
  %sorted_F_1_0_2 = phi float [ %sorted_F_1_5, %16 ], [ %sorted_F_1_14_load, %7 ]
  %i_0_i2 = phi i2 [ %i_5, %16 ], [ 0, %7 ]
  %exitcond2_i2 = icmp eq i2 %i_0_i2, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_5 = add i2 %i_0_i2, 1
  br i1 %exitcond2_i2, label %.preheader.i168, label %16

; <label>:16                                      ; preds = %.preheader7.i165
  %tmp_139 = zext i2 %i_0_i2 to i64
  %F_addr_5 = getelementptr inbounds [2 x float]* @F, i64 0, i64 %tmp_139
  %sorted_F_0 = load float* %F_addr_5, align 4
  %tmp_286 = trunc i2 %i_0_i2 to i1
  %sorted_F_1_4 = select i1 %tmp_286, float %sorted_F_0, float %sorted_F_1_1_2
  %sorted_F_1_5 = select i1 %tmp_286, float %sorted_F_1_0_2, float %sorted_F_0
  br label %.preheader7.i165

.preheader.i168:                                  ; preds = %.preheader7.i165, %17
  %sorted_weight_1_1_2 = phi float [ %sorted_weight_1_4, %17 ], [ %sorted_weight_1_17_load, %.preheader7.i165 ]
  %sorted_weight_1_0_2 = phi float [ %sorted_weight_1_5, %17 ], [ %sorted_weight_1_14_load, %.preheader7.i165 ]
  %tmp_284 = phi i2 [ %i_7, %17 ], [ 0, %.preheader7.i165 ]
  %exitcond1_i2 = icmp eq i2 %tmp_284, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_7 = add i2 %tmp_284, 1
  br i1 %exitcond1_i2, label %.preheader506, label %17

; <label>:17                                      ; preds = %.preheader.i168
  %tmp_312 = call i19 @_ssdm_op_PartSelect.i19.i21.i32.i32(i21 %tmp_19, i32 2, i32 20)
  %tmp_313 = call i21 @_ssdm_op_BitConcatenate.i21.i19.i2(i19 %tmp_312, i2 %tmp_284)
  %tmp_316 = sext i21 %tmp_313 to i32
  %tmp_317 = zext i32 %tmp_316 to i33
  %tmp_319 = add i33 %tmp_5_cast, %tmp_317
  %tmp_322 = zext i33 %tmp_319 to i64
  %gmem_offset1_addr_25 = getelementptr float* %gmem_offset1, i64 %tmp_322
  %sorted_weight_0_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_25, i32 1)
  %sorted_weight_0 = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_25)
  %tmp_323 = trunc i2 %tmp_284 to i1
  %sorted_weight_1_4 = select i1 %tmp_323, float %sorted_weight_0, float %sorted_weight_1_1_2
  %sorted_weight_1_5 = select i1 %tmp_323, float %sorted_weight_1_0_2, float %sorted_weight_0
  br label %.preheader.i168

.preheader506:                                    ; preds = %.preheader.i168, %18
  %temp_index = phi i32 [ %index_1_6, %18 ], [ 1, %.preheader.i168 ]
  %index_1 = phi i32 [ %index_1_7, %18 ], [ 0, %.preheader.i168 ]
  %temp_W = phi float [ %sorted_weight_1_33, %18 ], [ %sorted_weight_1_1_2, %.preheader.i168 ]
  %sorted_weight_1_0_4 = phi float [ %sorted_weight_1_34, %18 ], [ %sorted_weight_1_0_2, %.preheader.i168 ]
  %temp_F = phi float [ %sorted_F_1_33, %18 ], [ %sorted_F_1_1_2, %.preheader.i168 ]
  %sorted_F_1_0_4 = phi float [ %sorted_F_1_34, %18 ], [ %sorted_F_1_0_2, %.preheader.i168 ]
  %i6_0_i2 = phi i2 [ %i_9, %18 ], [ 1, %.preheader.i168 ]
  %i6_0_i2_cast = zext i2 %i6_0_i2 to i32
  %exitcond_i2 = icmp eq i2 %i6_0_i2, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  br i1 %exitcond_i2, label %19, label %branch13.preheader

branch13.preheader:                               ; preds = %.preheader506
  %temp_F_to_int = bitcast float %temp_F to i32
  %tmp_328 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp_F_to_int, i32 23, i32 30)
  %tmp_329 = trunc i32 %temp_F_to_int to i23
  %notlhs14 = icmp ne i8 %tmp_328, -1
  %notrhs14 = icmp eq i23 %tmp_329, 0
  %tmp_330 = or i1 %notrhs14, %notlhs14
  br label %branch13

branch13:                                         ; preds = %branch13.preheader, %branch9
  %index_1_1_1 = phi i32 [ %index_1_4, %branch9 ], [ %temp_index, %branch13.preheader ]
  %sorted_weight_1_1_5 = phi float [ %sorted_weight_1_31, %branch9 ], [ %temp_W, %branch13.preheader ]
  %sorted_F_1_1_5 = phi float [ %sorted_F_1_31, %branch9 ], [ %temp_F, %branch13.preheader ]
  %j5_0_in_i2 = phi i32 [ %j_9, %branch9 ], [ %i6_0_i2_cast, %branch13.preheader ]
  %j_9 = add nsw i32 -1, %j5_0_in_i2
  %tmp_340 = trunc i32 %j_9 to i1
  %sorted_F_1_31 = select i1 %tmp_340, float %sorted_F_1_1_5, float %sorted_F_1_0_4
  %sorted_F_1_10_to_int = bitcast float %sorted_F_1_31 to i32
  %tmp_341 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sorted_F_1_10_to_int, i32 23, i32 30)
  %tmp_342 = trunc i32 %sorted_F_1_10_to_int to i23
  %notlhs16 = icmp ne i8 %tmp_341, -1
  %notrhs16 = icmp eq i23 %tmp_342, 0
  %tmp_343 = or i1 %notrhs16, %notlhs16
  %tmp_344 = and i1 %tmp_330, %tmp_343
  %tmp_345 = fcmp ogt float %temp_F, %sorted_F_1_31
  %tmp_346 = and i1 %tmp_344, %tmp_345
  %tmp_162 = icmp sgt i32 %j5_0_in_i2, 0
  %tmp_163 = and i1 %tmp_346, %tmp_162
  br i1 %tmp_163, label %branch9, label %18

branch9:                                          ; preds = %branch13
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1810) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 4, i32 2, [1 x i8]* @p_str1806) nounwind
  %sorted_weight_1_31 = select i1 %tmp_340, float %sorted_weight_1_1_5, float %sorted_weight_1_0_4
  %index_1_4 = select i1 %tmp_340, i32 %index_1_1_1, i32 %index_1
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1810, i32 %tmp_3) nounwind
  br label %branch13

; <label>:18                                      ; preds = %branch13
  %tmp_368 = trunc i32 %j5_0_in_i2 to i1
  %sorted_F_1_33 = select i1 %tmp_368, float %temp_F, float %sorted_F_1_1_5
  %sorted_F_1_34 = select i1 %tmp_368, float %sorted_F_1_0_4, float %temp_F
  %sorted_weight_1_33 = select i1 %tmp_368, float %temp_W, float %sorted_weight_1_1_5
  %sorted_weight_1_34 = select i1 %tmp_368, float %sorted_weight_1_0_4, float %temp_W
  %index_1_6 = select i1 %tmp_368, i32 %temp_index, i32 %index_1_1_1
  %index_1_7 = select i1 %tmp_368, i32 %index_1, i32 %temp_index
  %i_9 = add i2 1, %i6_0_i2
  br label %.preheader506

; <label>:19                                      ; preds = %.preheader506
  store i1 false, i1* %back_gauss_addr_6, align 4
  store i1 false, i1* %back_gauss_addr_7, align 1
  br label %20

; <label>:20                                      ; preds = %21, %19
  %B_0_i2 = phi float [ 0.000000e+00, %19 ], [ %B_1, %21 ]
  %ind_0_i2 = phi i2 [ 0, %19 ], [ %ind_1, %21 ]
  %tmp_339 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %ind_0_i2, i32 1)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %ind_1 = add i2 %ind_0_i2, 1
  br i1 %tmp_339, label %.critedge, label %21

; <label>:21                                      ; preds = %20
  %tmp_358 = trunc i2 %ind_0_i2 to i1
  %sorted_weight_1_load_phi = select i1 %tmp_358, float %temp_W, float %sorted_weight_1_0_4
  %B_1 = fadd float %B_0_i2, %sorted_weight_1_load_phi
  %tmp_359 = trunc i32 %temp_index to i19
  %tmp_360 = trunc i32 %index_1 to i19
  %tmp_361 = select i1 %tmp_358, i19 %tmp_359, i19 %tmp_360
  %tmp_362 = add i19 %tmp_361, %tmp_268_cast
  %tmp_492_cast = sext i19 %tmp_362 to i64
  %back_gauss_addr_9 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_492_cast
  store i1 true, i1* %back_gauss_addr_9, align 1
  %B_1_to_int = bitcast float %B_1 to i32
  %tmp_363 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %B_1_to_int, i32 23, i32 30)
  %tmp_364 = trunc i32 %B_1_to_int to i23
  %notlhs17 = icmp ne i8 %tmp_363, -1
  %notrhs17 = icmp eq i23 %tmp_364, 0
  %tmp_365 = or i1 %notrhs17, %notlhs17
  %tmp_366 = fcmp oge float %B_1, 0x3FE6666660000000
  %tmp_367 = and i1 %tmp_365, %tmp_366
  br i1 %tmp_367, label %.critedge, label %20

.critedge:                                        ; preds = %20, %21
  %out_frame5_sum3 = add i33 %tmp_9_cast, %tmp_18_cast
  %out_frame5_sum3_cast = sext i33 %out_frame5_sum3 to i64
  %gmem_offset_addr_3 = getelementptr i8* %gmem_offset, i64 %out_frame5_sum3_cast
  %gmem_offset_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %gmem_offset_addr_3, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %gmem_offset_addr_3, i8 0, i1 true)
  %gmem_offset_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %gmem_offset_addr_3)
  store float %temp_W, float* %sorted_weight_1_17
  store float %sorted_weight_1_0_4, float* %sorted_weight_1_14
  store float %temp_F, float* %sorted_F_1_17
  store float %sorted_F_1_0_4, float* %sorted_F_1_14
  br label %22

; <label>:22                                      ; preds = %.critedge, %EM_ALGO.exit184
  %pos_assign_3 = or i17 %pos_assign_1, 1
  br label %meminst.i78

meminst.i78:                                      ; preds = %meminst.i78, %22
  %M_3_1_2 = phi i1 [ %M_3_1_load, %22 ], [ %M_3_1_3, %meminst.i78 ]
  %M_3_0_2 = phi i1 [ %M_3_load, %22 ], [ %M_3_0_3, %meminst.i78 ]
  %invdar_i3 = phi i1 [ false, %22 ], [ %not_invdar_i3, %meminst.i78 ]
  %not_invdar_i3 = xor i1 %invdar_i3, true
  %M_3_1_3 = and i1 %M_3_1_2, %not_invdar_i3
  %M_3_0_3 = and i1 %invdar_i3, %M_3_0_2
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopName([9 x i8]* @memset_M_str) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  br i1 %invdar_i3, label %23, label %meminst.i78

; <label>:23                                      ; preds = %meminst.i78
  %tmp_176 = zext i8 %pixel_assign_3 to i32
  %tmp_177 = sitofp i32 %tmp_176 to float
  %p_shl10 = call i20 @_ssdm_op_BitConcatenate.i20.i17.i3(i17 %pos_assign_3, i3 0)
  %p_shl10_cast = zext i20 %p_shl10 to i21
  %p_shl11 = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %pos_assign_3, i1 false)
  %p_shl11_cast = zext i18 %p_shl11 to i21
  %tmp_178 = sub i21 %p_shl10_cast, %p_shl11_cast
  %tmp_178_cast = sext i21 %tmp_178 to i32
  %tmp_179 = add i21 %tmp_178, 2
  %tmp_179_cast = sext i21 %tmp_179 to i32
  %tmp_180_cast = zext i17 %pos_assign_3 to i33
  %tmp_372 = zext i18 %p_shl11 to i64
  %tmp_498_cast = zext i18 %p_shl11 to i19
  %back_gauss_addr_14 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_372
  %tmp_373 = or i18 %p_shl11, 1
  %tmp_374 = call i64 @_ssdm_op_BitConcatenate.i64.i46.i18(i46 0, i18 %tmp_373)
  %back_gauss_addr_15 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_374
  %tmp_181 = add i21 %tmp_178, 4
  %tmp_181_cast = sext i21 %tmp_181 to i32
  br label %24

; <label>:24                                      ; preds = %_ifconv17, %23
  %M_3_1_4 = phi i1 [ %M_3_1_3, %23 ], [ %M_3_1_6, %_ifconv17 ]
  %M_3_0_4 = phi i1 [ %M_3_0_3, %23 ], [ %M_3_0_6, %_ifconv17 ]
  %j_0_i3 = phi i2 [ 0, %23 ], [ %j_10, %_ifconv17 ]
  %j_0_i3_cast = zext i2 %j_0_i3 to i21
  %exitcond6_i3 = icmp eq i2 %j_0_i3, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_10 = add i2 %j_0_i3, 1
  br i1 %exitcond6_i3, label %.preheader8.i91, label %_ifconv17

_ifconv17:                                        ; preds = %24
  %tmp_193 = add i21 %j_0_i3_cast, %tmp_178
  %tmp_193_cast = sext i21 %tmp_193 to i32
  %tmp_194_cast = zext i32 %tmp_193_cast to i33
  %parameters7_sum36 = add i33 %tmp_5_cast, %tmp_194_cast
  %parameters7_sum39_cast = zext i33 %parameters7_sum36 to i64
  %gmem_offset1_addr_29 = getelementptr float* %gmem_offset1, i64 %parameters7_sum39_cast
  %gmem_offset1_load_21_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_29, i32 1)
  %gmem_offset1_addr_29_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_29)
  %x_assign_3 = fsub float %tmp_177, %gmem_offset1_addr_29_read
  %p_Val2_18 = bitcast float %x_assign_3 to i32
  %p_Result_2 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_18, i32 31)
  %loc_V_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_18, i32 23, i32 30) nounwind
  %loc_V_5 = trunc i32 %p_Val2_18 to i23
  %p_Result_3 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_5) nounwind
  %tmp_2_i_i3 = zext i24 %p_Result_3 to i78
  %tmp_i_i_i77_cast = zext i8 %loc_V_4 to i9
  %sh_assign_6 = add i9 -127, %tmp_i_i_i77_cast
  %isNeg_3 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_6, i32 8)
  %tmp_4_i_i3 = sub i8 127, %loc_V_4
  %tmp_4_i_i80_cast = sext i8 %tmp_4_i_i3 to i9
  %sh_assign_7 = select i1 %isNeg_3, i9 %tmp_4_i_i80_cast, i9 %sh_assign_6
  %sh_assign_1_i81_cast = sext i9 %sh_assign_7 to i32
  %sh_assign_1_i81_cast_cast = sext i9 %sh_assign_7 to i24
  %tmp_6_i_i3 = zext i32 %sh_assign_1_i81_cast to i78
  %tmp_7_i_i3 = lshr i24 %p_Result_3, %sh_assign_1_i81_cast_cast
  %tmp_9_i_i3 = shl i78 %tmp_2_i_i3, %tmp_6_i_i3
  %tmp_392 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_7_i_i3, i32 23)
  %tmp_389 = zext i1 %tmp_392 to i32
  %tmp_390 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_9_i_i3, i32 23, i32 54)
  %p_Val2_21 = select i1 %isNeg_3, i32 %tmp_389, i32 %tmp_390
  %p_Val2_7_i_i3 = sub i32 0, %p_Val2_21
  %p_Val2_23 = select i1 %p_Result_2, i32 %p_Val2_7_i_i3, i32 %p_Val2_21
  %neg_i3 = sub i32 0, %p_Val2_23
  %abscond_i3 = icmp sgt i32 %p_Val2_23, 0
  %abs_i3 = select i1 %abscond_i3, i32 %p_Val2_23, i32 %neg_i3
  %tmp_197 = sitofp i32 %abs_i3 to double
  %tmp_198 = add i21 %j_0_i3_cast, %tmp_179
  %tmp_198_cast = sext i21 %tmp_198 to i32
  %tmp_199_cast = zext i32 %tmp_198_cast to i33
  %parameters7_sum37 = add i33 %tmp_5_cast, %tmp_199_cast
  %parameters7_sum40_cast = zext i33 %parameters7_sum37 to i64
  %gmem_offset1_addr_30 = getelementptr float* %gmem_offset1, i64 %parameters7_sum40_cast
  %gmem_offset1_load_22_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_30, i32 1)
  %gmem_offset1_addr_30_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_30)
  %tmp_i3 = call float @llvm.sqrt.f32(float %gmem_offset1_addr_30_read) nounwind
  %tmp_200 = fpext float %tmp_i3 to double
  %tmp_201 = fmul double %tmp_200, 2.500000e+00
  %tmp_197_to_int = bitcast double %tmp_197 to i64
  %tmp_391 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_197_to_int, i32 52, i32 62)
  %tmp_393 = trunc i64 %tmp_197_to_int to i52
  %tmp_201_to_int = bitcast double %tmp_201 to i64
  %tmp_394 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_201_to_int, i32 52, i32 62)
  %tmp_395 = trunc i64 %tmp_201_to_int to i52
  %notlhs20 = icmp ne i11 %tmp_391, -1
  %notrhs20 = icmp eq i52 %tmp_393, 0
  %tmp_396 = or i1 %notrhs20, %notlhs20
  %notlhs21 = icmp ne i11 %tmp_394, -1
  %notrhs21 = icmp eq i52 %tmp_395, 0
  %tmp_397 = or i1 %notrhs21, %notlhs21
  %tmp_398 = and i1 %tmp_396, %tmp_397
  %tmp_399 = fcmp olt double %tmp_197, %tmp_201
  %tmp_400 = and i1 %tmp_398, %tmp_399
  %tmp_211 = zext i2 %j_0_i3 to i64
  %tmp_211_cast = zext i2 %j_0_i3 to i19
  %tmp_401 = add i19 %tmp_498_cast, %tmp_211_cast
  %tmp_510_cast = zext i19 %tmp_401 to i64
  %back_gauss_addr_11 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_510_cast
  %back_gauss_load_3 = load i1* %back_gauss_addr_11, align 1
  %tmp_402 = trunc i2 %j_0_i3 to i1
  %not_j_0_i3_t = xor i1 %tmp_402, true
  %sel_tmp11 = and i1 %back_gauss_load_3, %tmp_400
  %sel_tmp12 = and i1 %sel_tmp11, %tmp_402
  %M_3_1_6 = or i1 %sel_tmp12, %M_3_1_4
  %sel_tmp13 = and i1 %sel_tmp11, %not_j_0_i3_t
  %M_3_0_6 = or i1 %sel_tmp13, %M_3_0_4
  %alpha_w_load_9 = load float* @alpha_w, align 4
  %tmp_239 = add i21 %j_0_i3_cast, %tmp_181
  %tmp_239_cast = sext i21 %tmp_239 to i32
  %tmp_240_cast = zext i32 %tmp_239_cast to i33
  %parameters7_sum38 = add i33 %tmp_5_cast, %tmp_240_cast
  %parameters7_sum41_cast = zext i33 %parameters7_sum38 to i64
  %gmem_offset1_addr_31 = getelementptr float* %gmem_offset1, i64 %parameters7_sum41_cast
  %gmem_offset1_load_23_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_31, i32 1)
  %gmem_offset1_addr_31_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_31)
  %tmp_241 = fdiv float %alpha_w_load_9, %gmem_offset1_addr_31_read
  %akt_addr_6 = getelementptr inbounds [2 x float]* @akt, i64 0, i64 %tmp_211
  store float %tmp_241, float* %akt_addr_6, align 4
  %tmp_269 = fdiv float %gmem_offset1_addr_31_read, %gmem_offset1_addr_30_read
  %F_addr_7 = getelementptr inbounds [2 x float]* @F, i64 0, i64 %tmp_211
  store float %tmp_269, float* %F_addr_7, align 4
  br label %24

.preheader8.i91:                                  ; preds = %24, %_ifconv26
  %max_val_2 = phi i2 [ %j_13, %_ifconv26 ], [ 0, %24 ]
  %min_val_0_i3 = phi i32 [ %min_val_7, %_ifconv26 ], [ 10, %24 ]
  %max_val_0_i3 = phi i32 [ %min_val_14, %_ifconv26 ], [ 10, %24 ]
  %min_F_0_i3 = phi float [ %min_F_7, %_ifconv26 ], [ 1.000000e+03, %24 ]
  %max_F_0_i3 = phi float [ %max_F_9, %_ifconv26 ], [ 0.000000e+00, %24 ]
  %max_val_2_cast = zext i2 %max_val_2 to i32
  %exitcond5_i3 = icmp eq i2 %max_val_2, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_13 = add i2 %max_val_2, 1
  br i1 %exitcond5_i3, label %25, label %_ifconv26

_ifconv26:                                        ; preds = %.preheader8.i91
  %tmp_210 = zext i2 %max_val_2 to i64
  %tmp_421 = trunc i2 %max_val_2 to i1
  %M_3_load_phi = select i1 %tmp_421, i1 %M_3_1_4, i1 %M_3_0_4
  %F_addr_9 = getelementptr inbounds [2 x float]* @F, i64 0, i64 %tmp_210
  %max_F_10 = load float* %F_addr_9, align 4
  %max_F_3_to_int = bitcast float %max_F_10 to i32
  %tmp_422 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_F_3_to_int, i32 23, i32 30)
  %tmp_423 = trunc i32 %max_F_3_to_int to i23
  %max_F_0_i3_to_int = bitcast float %max_F_0_i3 to i32
  %tmp_424 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_F_0_i3_to_int, i32 23, i32 30)
  %tmp_425 = trunc i32 %max_F_0_i3_to_int to i23
  %notlhs25 = icmp ne i8 %tmp_422, -1
  %notrhs25 = icmp eq i23 %tmp_423, 0
  %tmp_426 = or i1 %notrhs25, %notlhs25
  %notlhs26 = icmp ne i8 %tmp_424, -1
  %notrhs26 = icmp eq i23 %tmp_425, 0
  %tmp_427 = or i1 %notrhs26, %notlhs26
  %tmp_428 = and i1 %tmp_426, %tmp_427
  %tmp_429 = fcmp ogt float %max_F_10, %max_F_0_i3
  %tmp_430 = and i1 %tmp_428, %tmp_429
  %sel_tmp15 = and i1 %M_3_load_phi, %tmp_430
  %min_val_13 = select i1 %sel_tmp15, i32 %max_val_2_cast, i32 %max_val_0_i3
  %min_val_14 = select i1 %M_3_load_phi, i32 %min_val_13, i32 %max_val_0_i3
  %max_F_8 = select i1 %sel_tmp15, float %max_F_10, float %max_F_0_i3
  %max_F_9 = select i1 %M_3_load_phi, float %max_F_8, float %max_F_0_i3
  %min_F_0_i3_to_int = bitcast float %min_F_0_i3 to i32
  %tmp_431 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %min_F_0_i3_to_int, i32 23, i32 30)
  %tmp_432 = trunc i32 %min_F_0_i3_to_int to i23
  %notlhs27 = icmp ne i8 %tmp_431, -1
  %notrhs27 = icmp eq i23 %tmp_432, 0
  %tmp_433 = or i1 %notrhs27, %notlhs27
  %tmp_434 = and i1 %tmp_426, %tmp_433
  %tmp_435 = fcmp olt float %max_F_10, %min_F_0_i3
  %tmp_436 = and i1 %tmp_434, %tmp_435
  %min_val_7 = select i1 %tmp_436, i32 %max_val_2_cast, i32 %min_val_0_i3
  %min_F_7 = select i1 %tmp_436, float %max_F_10, float %min_F_0_i3
  br label %.preheader8.i91

; <label>:25                                      ; preds = %.preheader8.i91
  %tmp_420 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %max_val_0_i3, i32 1, i32 31)
  %icmp3 = icmp slt i31 %tmp_420, 1
  br i1 %icmp3, label %26, label %30

; <label>:26                                      ; preds = %25
  %tmp_243 = add nsw i32 %max_val_0_i3, %tmp_178_cast
  %tmp_244_cast = sext i32 %tmp_243 to i33
  %parameters7_sum39 = add i33 %tmp_5_cast, %tmp_244_cast
  %parameters7_sum42_cast = sext i33 %parameters7_sum39 to i64
  %gmem_offset1_addr_37 = getelementptr float* %gmem_offset1, i64 %parameters7_sum42_cast
  %gmem_offset1_load_27_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_37, i32 1)
  %gmem_offset1_addr_37_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_37)
  %tmp_245 = sext i32 %max_val_0_i3 to i64
  %tmp_443 = trunc i32 %max_val_0_i3 to i19
  %tmp_444 = add i19 %tmp_443, %tmp_498_cast
  %tmp_513_cast = sext i19 %tmp_444 to i64
  %matchsum_addr_10 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_513_cast
  %akt_addr_7 = getelementptr inbounds [2 x float]* @akt, i64 0, i64 %tmp_245
  %akt_load_3 = load float* %akt_addr_7, align 4
  %tmp_246 = fsub float %tmp_177, %gmem_offset1_addr_37_read
  %tmp_247 = fmul float %akt_load_3, %tmp_246
  %tmp_248 = fadd float %gmem_offset1_addr_37_read, %tmp_247
  %gmem_offset1_addr_37_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_37, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_37, float %tmp_248, i4 -1)
  %gmem_offset1_addr_37_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_37)
  %tmp_249 = add i32 %max_val_0_i3, %tmp_179_cast
  %tmp_250_cast = sext i32 %tmp_249 to i33
  %parameters7_sum40 = add i33 %tmp_5_cast, %tmp_250_cast
  %parameters7_sum43_cast = sext i33 %parameters7_sum40 to i64
  %gmem_offset1_addr_38 = getelementptr float* %gmem_offset1, i64 %parameters7_sum43_cast
  %gmem_offset1_load_28_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_38, i32 1)
  %gmem_offset1_addr_38_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_38)
  %tmp_251 = fsub float %tmp_177, %tmp_248
  %tmp_252 = fmul float %tmp_251, %tmp_251
  %tmp_253 = fsub float %tmp_252, %gmem_offset1_addr_38_read
  %tmp_254 = fmul float %akt_load_3, %tmp_253
  %tmp_255 = fadd float %gmem_offset1_addr_38_read, %tmp_254
  %gmem_offset1_addr_38_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_38, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_38, float %tmp_255, i4 -1)
  %gmem_offset1_addr_38_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_38)
  %tmp_256 = add i32 %max_val_0_i3, %tmp_181_cast
  %tmp_257_cast = sext i32 %tmp_256 to i33
  %parameters7_sum41 = add i33 %tmp_5_cast, %tmp_257_cast
  %parameters7_sum44_cast = sext i33 %parameters7_sum41 to i64
  %gmem_offset1_addr_39 = getelementptr float* %gmem_offset1, i64 %parameters7_sum44_cast
  %gmem_offset1_load_29_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_39, i32 1)
  %gmem_offset1_addr_39_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_39)
  %alpha_w_load_8 = load float* @alpha_w, align 4
  %tmp_258 = fmul float %alpha_w_load_8, %gmem_offset1_addr_39_read
  %tmp_259 = fsub float %gmem_offset1_addr_39_read, %tmp_258
  %tmp_260 = fadd float %tmp_259, %alpha_w_load_8
  %gmem_offset1_addr_39_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_39, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_39, float %tmp_260, i4 -1)
  %gmem_offset1_addr_39_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_39)
  %matchsum_load_5 = load i8* %matchsum_addr_10, align 1
  %tmp_261 = add i8 1, %matchsum_load_5
  store i8 %tmp_261, i8* %matchsum_addr_10, align 1
  br label %27

; <label>:27                                      ; preds = %._crit_edge13.i100, %26
  %j2_0_i3 = phi i2 [ 0, %26 ], [ %j_15, %._crit_edge13.i100 ]
  %j2_0_i3_cast = zext i2 %j2_0_i3 to i21
  %j2_0_i3_cast1 = zext i2 %j2_0_i3 to i32
  %exitcond4_i3 = icmp eq i2 %j2_0_i3, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_15 = add i2 %j2_0_i3, 1
  br i1 %exitcond4_i3, label %.preheader7.i108, label %28

; <label>:28                                      ; preds = %27
  %tmp_279 = icmp eq i32 %j2_0_i3_cast1, %max_val_0_i3
  br i1 %tmp_279, label %._crit_edge13.i100, label %29

; <label>:29                                      ; preds = %28
  %tmp_293 = add i21 %j2_0_i3_cast, %tmp_181
  %tmp_293_cast = sext i21 %tmp_293 to i32
  %tmp_294_cast = zext i32 %tmp_293_cast to i33
  %parameters7_sum44 = add i33 %tmp_294_cast, %tmp_5_cast
  %parameters7_sum47_cast = zext i33 %parameters7_sum44 to i64
  %gmem_offset1_addr_46 = getelementptr float* %gmem_offset1, i64 %parameters7_sum47_cast
  %gmem_offset1_load_32_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_46, i32 1)
  %gmem_offset1_addr_46_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_46)
  %tmp_295 = fsub float %gmem_offset1_addr_46_read, %alpha_w_load_8
  %gmem_offset1_addr_46_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_46, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_46, float %tmp_295, i4 -1)
  %gmem_offset1_addr_46_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_46)
  br label %._crit_edge13.i100

._crit_edge13.i100:                               ; preds = %29, %28
  br label %27

; <label>:30                                      ; preds = %25
  %tmp_263 = add nsw i32 %min_val_0_i3, %tmp_178_cast
  %tmp_264_cast = sext i32 %tmp_263 to i33
  %parameters7_sum42 = add i33 %tmp_5_cast, %tmp_264_cast
  %parameters7_sum45_cast = sext i33 %parameters7_sum42 to i64
  %gmem_offset1_addr_40 = getelementptr float* %gmem_offset1, i64 %parameters7_sum45_cast
  %gmem_offset1_addr_40_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_40, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_40, float %tmp_177, i4 -1)
  %gmem_offset1_addr_40_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_40)
  %vinit_load_3 = load float* @vinit, align 4
  %tmp_265 = add i32 %min_val_0_i3, %tmp_179_cast
  %tmp_266_cast = sext i32 %tmp_265 to i33
  %parameters7_sum43 = add i33 %tmp_5_cast, %tmp_266_cast
  %parameters7_sum46_cast = sext i33 %parameters7_sum43 to i64
  %gmem_offset1_addr_41 = getelementptr float* %gmem_offset1, i64 %parameters7_sum46_cast
  %gmem_offset1_addr_41_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_41, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_41, float %vinit_load_3, i4 -1)
  %gmem_offset1_addr_41_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_41)
  %tmp_448 = trunc i32 %min_val_0_i3 to i19
  %tmp_453 = add i19 %tmp_448, %tmp_498_cast
  %tmp_514_cast = sext i19 %tmp_453 to i64
  %matchsum_addr_11 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_514_cast
  store i8 1, i8* %matchsum_addr_11, align 1
  br label %._crit_edge14.i105

._crit_edge14.i105:                               ; preds = %31, %32, %30
  %j3_0_i3 = phi i2 [ 0, %30 ], [ %j_16, %32 ], [ %j_16, %31 ]
  %matchsumtot_0_i3 = phi float [ 0.000000e+00, %30 ], [ %matchsumtot_3, %32 ], [ %matchsumtot_0_i3, %31 ]
  %j3_0_i3_cast = zext i2 %j3_0_i3 to i21
  %j3_0_i3_cast1 = zext i2 %j3_0_i3 to i32
  %exitcond3_i3 = icmp eq i2 %j3_0_i3, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_16 = add i2 %j3_0_i3, 1
  br i1 %exitcond3_i3, label %33, label %31

; <label>:31                                      ; preds = %._crit_edge14.i105
  %tmp_281 = icmp eq i32 %j3_0_i3_cast1, %min_val_0_i3
  br i1 %tmp_281, label %._crit_edge14.i105, label %32

; <label>:32                                      ; preds = %31
  %tmp_302 = add i21 %j3_0_i3_cast, %tmp_181
  %tmp_302_cast = sext i21 %tmp_302 to i32
  %tmp_303_cast = zext i32 %tmp_302_cast to i33
  %parameters7_sum47 = add i33 %tmp_303_cast, %tmp_5_cast
  %parameters7_sum50_cast = zext i33 %parameters7_sum47 to i64
  %gmem_offset1_addr_49 = getelementptr float* %gmem_offset1, i64 %parameters7_sum50_cast
  %gmem_offset1_load_33_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_49, i32 1)
  %gmem_offset1_addr_49_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_49)
  %alpha_w_load_11 = load float* @alpha_w, align 4
  %tmp_304 = fsub float %gmem_offset1_addr_49_read, %alpha_w_load_11
  %gmem_offset1_addr_49_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_49, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_49, float %tmp_304, i4 -1)
  %gmem_offset1_addr_49_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_49)
  %tmp_305_cast = zext i2 %j3_0_i3 to i19
  %tmp_486 = add i19 %tmp_498_cast, %tmp_305_cast
  %tmp_516_cast = zext i19 %tmp_486 to i64
  %matchsum_addr_13 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_516_cast
  %matchsum_load_7 = load i8* %matchsum_addr_13, align 1
  %tmp_306 = zext i8 %matchsum_load_7 to i32
  %tmp_307 = sitofp i32 %tmp_306 to float
  %matchsumtot_3 = fadd float %matchsumtot_0_i3, %tmp_307
  br label %._crit_edge14.i105

; <label>:33                                      ; preds = %._crit_edge14.i105
  %matchsumtot_0_i3_to_int = bitcast float %matchsumtot_0_i3 to i32
  %tmp_447 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %matchsumtot_0_i3_to_int, i32 23, i32 30)
  %tmp_462 = trunc i32 %matchsumtot_0_i3_to_int to i23
  %notlhs29 = icmp ne i8 %tmp_447, -1
  %notrhs29 = icmp eq i23 %tmp_462, 0
  %tmp_449 = or i1 %notrhs29, %notlhs29
  %tmp_450 = fcmp oeq float %matchsumtot_0_i3, 0.000000e+00
  %tmp_451 = and i1 %tmp_449, %tmp_450
  br i1 %tmp_451, label %35, label %34

; <label>:34                                      ; preds = %33
  %tmp_296 = fdiv float 1.000000e+00, %matchsumtot_0_i3
  %tmp_298 = add i32 %tmp_181_cast, %min_val_0_i3
  %tmp_299_cast = sext i32 %tmp_298 to i33
  %parameters7_sum46 = add i33 %tmp_299_cast, %tmp_5_cast
  %parameters7_sum49_cast = sext i33 %parameters7_sum46 to i64
  %gmem_offset1_addr_48 = getelementptr float* %gmem_offset1, i64 %parameters7_sum49_cast
  %gmem_offset1_addr_48_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_48, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_48, float %tmp_296, i4 -1)
  %gmem_offset1_addr_48_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_48)
  br label %EM_ALGO.exit127

; <label>:35                                      ; preds = %33
  %tmp_300 = add i32 %tmp_181_cast, %min_val_0_i3
  %tmp_301_cast = sext i32 %tmp_300 to i33
  %parameters7_sum45 = add i33 %tmp_301_cast, %tmp_5_cast
  %parameters7_sum48_cast = sext i33 %parameters7_sum45 to i64
  %gmem_offset1_addr_47 = getelementptr float* %gmem_offset1, i64 %parameters7_sum48_cast
  %gmem_offset1_addr_47_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_47, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_47, float 0x3FC99999A0000000, i4 -1)
  %gmem_offset1_addr_47_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_47)
  br label %EM_ALGO.exit127

EM_ALGO.exit127:                                  ; preds = %35, %34
  %out_frame5_sum5 = add i33 %tmp_9_cast, %tmp_180_cast
  %out_frame5_sum5_cast = sext i33 %out_frame5_sum5 to i64
  %gmem_offset_addr_5 = getelementptr i8* %gmem_offset, i64 %out_frame5_sum5_cast
  %gmem_offset_addr_5_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %gmem_offset_addr_5, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %gmem_offset_addr_5, i8 -1, i1 true)
  %gmem_offset_addr_5_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %gmem_offset_addr_5)
  br label %.preheader6.backedge

.preheader7.i108:                                 ; preds = %27, %36
  %sorted_F_3_1_2 = phi float [ %sorted_F_1_39, %36 ], [ %sorted_F_1_22_load, %27 ]
  %sorted_F_3_0_2 = phi float [ %sorted_F_1_40, %36 ], [ %sorted_F_1_20_load, %27 ]
  %i_0_i3 = phi i2 [ %i_10, %36 ], [ 0, %27 ]
  %exitcond2_i3 = icmp eq i2 %i_0_i3, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_10 = add i2 %i_0_i3, 1
  br i1 %exitcond2_i3, label %.preheader.i111.preheader, label %36

.preheader.i111.preheader:                        ; preds = %.preheader7.i108
  %tmp_482 = zext i32 %tmp_181_cast to i33
  %tmp_483 = add i33 %tmp_482, %tmp_5_cast
  %tmp_484 = zext i33 %tmp_483 to i64
  %gmem_offset1_addr_51 = getelementptr float* %gmem_offset1, i64 %tmp_484
  %p_rd_req71 = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_51, i32 2)
  br label %.preheader.i111

; <label>:36                                      ; preds = %.preheader7.i108
  %tmp_297 = zext i2 %i_0_i3 to i64
  %F_addr_11 = getelementptr inbounds [2 x float]* @F, i64 0, i64 %tmp_297
  %sorted_F_0_2 = load float* %F_addr_11, align 4
  %tmp_485 = trunc i2 %i_0_i3 to i1
  %sorted_F_1_39 = select i1 %tmp_485, float %sorted_F_0_2, float %sorted_F_3_1_2
  %sorted_F_1_40 = select i1 %tmp_485, float %sorted_F_3_0_2, float %sorted_F_0_2
  br label %.preheader7.i108

.preheader.i111:                                  ; preds = %.preheader.i111.preheader, %37
  %sorted_weight_3_1_2 = phi float [ %sorted_weight_1_39, %37 ], [ %sorted_weight_1_25_load, %.preheader.i111.preheader ]
  %sorted_weight_3_0_2 = phi float [ %sorted_weight_1_40, %37 ], [ %sorted_weight_1_21_load, %.preheader.i111.preheader ]
  %i4_0_i3 = phi i2 [ %i_12, %37 ], [ 0, %.preheader.i111.preheader ]
  %exitcond1_i3 = icmp eq i2 %i4_0_i3, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_12 = add i2 %i4_0_i3, 1
  br i1 %exitcond1_i3, label %.preheader505, label %37

; <label>:37                                      ; preds = %.preheader.i111
  %sorted_weight_0_2 = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_51)
  %tmp_488 = trunc i2 %i4_0_i3 to i1
  %sorted_weight_1_39 = select i1 %tmp_488, float %sorted_weight_0_2, float %sorted_weight_3_1_2
  %sorted_weight_1_40 = select i1 %tmp_488, float %sorted_weight_3_0_2, float %sorted_weight_0_2
  br label %.preheader.i111

.preheader505:                                    ; preds = %.preheader.i111, %38
  %temp_index_3 = phi i32 [ %index_1_14, %38 ], [ 1, %.preheader.i111 ]
  %index_3 = phi i32 [ %index_1_15, %38 ], [ 0, %.preheader.i111 ]
  %temp_W_3 = phi float [ %sorted_weight_1_47, %38 ], [ %sorted_weight_3_1_2, %.preheader.i111 ]
  %sorted_weight_3_0_4 = phi float [ %sorted_weight_1_48, %38 ], [ %sorted_weight_3_0_2, %.preheader.i111 ]
  %temp_F_3 = phi float [ %sorted_F_1_46, %38 ], [ %sorted_F_3_1_2, %.preheader.i111 ]
  %sorted_F_3_0_4 = phi float [ %sorted_F_1_47, %38 ], [ %sorted_F_3_0_2, %.preheader.i111 ]
  %i6_0_i3 = phi i2 [ %i_15, %38 ], [ 1, %.preheader.i111 ]
  %i6_0_i3_cast = zext i2 %i6_0_i3 to i32
  %exitcond_i3 = icmp eq i2 %i6_0_i3, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  br i1 %exitcond_i3, label %39, label %branch51.preheader

branch51.preheader:                               ; preds = %.preheader505
  %temp_F_3_to_int = bitcast float %temp_F_3 to i32
  %tmp_461 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp_F_3_to_int, i32 23, i32 30)
  %tmp_490 = trunc i32 %temp_F_3_to_int to i23
  %notlhs32 = icmp ne i8 %tmp_461, -1
  %notrhs32 = icmp eq i23 %tmp_490, 0
  %tmp_463 = or i1 %notrhs32, %notlhs32
  br label %branch51

branch51:                                         ; preds = %branch51.preheader, %branch47
  %index_3_1_1 = phi i32 [ %index_1_12, %branch47 ], [ %temp_index_3, %branch51.preheader ]
  %sorted_weight_3_1_5 = phi float [ %sorted_weight_1_45, %branch47 ], [ %temp_W_3, %branch51.preheader ]
  %sorted_F_3_1_5 = phi float [ %sorted_F_1_10, %branch47 ], [ %temp_F_3, %branch51.preheader ]
  %j5_0_in_i3 = phi i32 [ %j_19, %branch47 ], [ %i6_0_i3_cast, %branch51.preheader ]
  %j_19 = add nsw i32 -1, %j5_0_in_i3
  %tmp_495 = trunc i32 %j_19 to i1
  %sorted_F_1_10 = select i1 %tmp_495, float %sorted_F_3_1_5, float %sorted_F_3_0_4
  %sorted_F_1_24_to_int = bitcast float %sorted_F_1_10 to i32
  %tmp_466 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sorted_F_1_24_to_int, i32 23, i32 30)
  %tmp_496 = trunc i32 %sorted_F_1_24_to_int to i23
  %notlhs34 = icmp ne i8 %tmp_466, -1
  %notrhs34 = icmp eq i23 %tmp_496, 0
  %tmp_469 = or i1 %notrhs34, %notlhs34
  %tmp_470 = and i1 %tmp_463, %tmp_469
  %tmp_471 = fcmp ogt float %temp_F_3, %sorted_F_1_10
  %tmp_472 = and i1 %tmp_470, %tmp_471
  %tmp_320 = icmp sgt i32 %j5_0_in_i3, 0
  %tmp_321 = and i1 %tmp_472, %tmp_320
  br i1 %tmp_321, label %branch47, label %38

branch47:                                         ; preds = %branch51
  %tmp_325 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1810) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 4, i32 2, [1 x i8]* @p_str1806) nounwind
  %sorted_weight_1_45 = select i1 %tmp_495, float %sorted_weight_3_1_5, float %sorted_weight_3_0_4
  %index_1_12 = select i1 %tmp_495, i32 %index_3_1_1, i32 %index_3
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1810, i32 %tmp_325) nounwind
  br label %branch51

; <label>:38                                      ; preds = %branch51
  %tmp_510 = trunc i32 %j5_0_in_i3 to i1
  %sorted_F_1_46 = select i1 %tmp_510, float %temp_F_3, float %sorted_F_3_1_5
  %sorted_F_1_47 = select i1 %tmp_510, float %sorted_F_3_0_4, float %temp_F_3
  %sorted_weight_1_47 = select i1 %tmp_510, float %temp_W_3, float %sorted_weight_3_1_5
  %sorted_weight_1_48 = select i1 %tmp_510, float %sorted_weight_3_0_4, float %temp_W_3
  %index_1_14 = select i1 %tmp_510, i32 %temp_index_3, i32 %index_3_1_1
  %index_1_15 = select i1 %tmp_510, i32 %index_3, i32 %temp_index_3
  %i_15 = add i2 1, %i6_0_i3
  br label %.preheader505

; <label>:39                                      ; preds = %.preheader505
  store i1 false, i1* %back_gauss_addr_14, align 2
  store i1 false, i1* %back_gauss_addr_15, align 1
  br label %40

; <label>:40                                      ; preds = %41, %39
  %B_0_i3 = phi float [ 0.000000e+00, %39 ], [ %B_3, %41 ]
  %ind_0_i3 = phi i2 [ 0, %39 ], [ %ind_3, %41 ]
  %tmp_494 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %ind_0_i3, i32 1)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %ind_3 = add i2 %ind_0_i3, 1
  br i1 %tmp_494, label %.critedge185, label %41

; <label>:41                                      ; preds = %40
  %tmp_504 = trunc i2 %ind_0_i3 to i1
  %sorted_weight_3_load_phi = select i1 %tmp_504, float %temp_W_3, float %sorted_weight_3_0_4
  %B_3 = fadd float %B_0_i3, %sorted_weight_3_load_phi
  %tmp_505 = trunc i32 %temp_index_3 to i19
  %tmp_506 = trunc i32 %index_3 to i19
  %tmp_507 = select i1 %tmp_504, i19 %tmp_505, i19 %tmp_506
  %tmp_508 = add i19 %tmp_507, %tmp_498_cast
  %tmp_518_cast = sext i19 %tmp_508 to i64
  %back_gauss_addr_17 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_518_cast
  store i1 true, i1* %back_gauss_addr_17, align 1
  %B_3_to_int = bitcast float %B_3 to i32
  %tmp_475 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %B_3_to_int, i32 23, i32 30)
  %tmp_509 = trunc i32 %B_3_to_int to i23
  %notlhs35 = icmp ne i8 %tmp_475, -1
  %notrhs35 = icmp eq i23 %tmp_509, 0
  %tmp_477 = or i1 %notrhs35, %notlhs35
  %tmp_478 = fcmp oge float %B_3, 0x3FE6666660000000
  %tmp_479 = and i1 %tmp_477, %tmp_478
  br i1 %tmp_479, label %.critedge185, label %40

.critedge185:                                     ; preds = %40, %41
  %out_frame5_sum7 = add i33 %tmp_9_cast, %tmp_180_cast
  %out_frame5_sum7_cast = sext i33 %out_frame5_sum7 to i64
  %gmem_offset_addr_7 = getelementptr i8* %gmem_offset, i64 %out_frame5_sum7_cast
  %gmem_offset_addr_7_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %gmem_offset_addr_7, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %gmem_offset_addr_7, i8 0, i1 true)
  %gmem_offset_addr_7_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %gmem_offset_addr_7)
  store float %temp_W_3, float* %sorted_weight_1_25
  store float %sorted_weight_3_0_4, float* %sorted_weight_1_21
  store float %temp_F_3, float* %sorted_F_1_22
  store float %sorted_F_3_0_4, float* %sorted_F_1_20
  br label %.preheader6.backedge

.preheader6.backedge:                             ; preds = %.critedge185, %EM_ALGO.exit127
  store i1 %M_3_1_4, i1* %M_3_1
  store i1 %M_3_0_4, i1* %M_3
  store i1 %M_1_1_4, i1* %M_1_1
  store i1 %M_1_0_4, i1* %M_1
  br label %.preheader6

.preheader5:                                      ; preds = %.preheader, %.preheader5.preheader
  %idxRow2 = phi i8 [ 0, %.preheader5.preheader ], [ %idxRow_1, %.preheader ]
  %exitcond1 = icmp eq i8 %idxRow2, -16
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 240, i64 240, i64 240)
  %idxRow_1 = add i8 %idxRow2, 1
  br i1 %exitcond1, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader5
  %p_shl1 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %idxRow2, i8 0)
  %p_shl1_cast = zext i16 %p_shl1 to i17
  %p_shl2 = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %idxRow2, i6 0)
  %p_shl2_cast = zext i14 %p_shl2 to i17
  %tmp_4 = add i17 %p_shl1_cast, %p_shl2_cast
  %p_lshr_f1_cast = call i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17 %tmp_4, i32 1, i32 16)
  %tmp_21 = zext i16 %p_lshr_f1_cast to i31
  %tmp_25 = add i31 %tmp_21, %tmp_39_cast
  %tmp_28 = zext i31 %tmp_25 to i64
  %gmem_addr = getelementptr i32* %gmem, i64 %tmp_28
  %p_rd_req72 = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %gmem_addr, i32 160)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %idxCols3 = phi i8 [ 0, %.preheader.preheader ], [ %idxCols_1, %.preheader.backedge ]
  %M_load = load i1* %M
  %M_load_16 = load i1* %M_s
  %sorted_F_1_load = load float* %sorted_F_1
  %sorted_F_1_3_load = load float* %sorted_F_1_3
  %sorted_weight_1_load = load float* %sorted_weight_1
  %sorted_weight_1_3_load = load float* %sorted_weight_1_3
  %M_2_load = load i1* %M_2
  %M_2_1_load = load i1* %M_2_1
  %sorted_F_1_7_load = load float* %sorted_F_1_7
  %sorted_F_1_11_load = load float* %sorted_F_1_11
  %sorted_weight_1_7_load = load float* %sorted_weight_1_7
  %sorted_weight_1_11_load = load float* %sorted_weight_1_11
  %idxCols3_cast = zext i8 %idxCols3 to i16
  %exitcond = icmp eq i8 %idxCols3, -96
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 160, i64 160, i64 160)
  %idxCols_1 = add i8 %idxCols3, 1
  br i1 %exitcond, label %.preheader5, label %42

; <label>:42                                      ; preds = %.preheader
  %i_2 = add i16 %idxCols3_cast, %p_lshr_f1_cast
  %val_1 = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %gmem_addr)
  %tmp_43 = trunc i32 %val_1 to i8
  %pixel_assign_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %val_1, i32 16, i32 23)
  %pos_assign = call i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16 %i_2, i1 false)
  br label %meminst.i21

meminst.i21:                                      ; preds = %meminst.i21, %42
  %M_1299_2 = phi i1 [ %M_load_16, %42 ], [ %M_1299_3, %meminst.i21 ]
  %M_0_2 = phi i1 [ %M_load, %42 ], [ %M_0_3, %meminst.i21 ]
  %invdar_i1 = phi i1 [ false, %42 ], [ %not_invdar_i1, %meminst.i21 ]
  %not_invdar_i1 = xor i1 %invdar_i1, true
  %M_1299_3 = and i1 %M_1299_2, %not_invdar_i1
  %M_0_3 = and i1 %invdar_i1, %M_0_2
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopName([9 x i8]* @memset_M_str) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  br i1 %invdar_i1, label %43, label %meminst.i21

; <label>:43                                      ; preds = %meminst.i21
  %tmp_7 = zext i8 %tmp_43 to i32
  %tmp_s = sitofp i32 %tmp_7 to float
  %p_shl4 = call i20 @_ssdm_op_BitConcatenate.i20.i16.i4(i16 %i_2, i4 0)
  %p_shl4_cast = zext i20 %p_shl4 to i21
  %p_shl5 = call i18 @_ssdm_op_BitConcatenate.i18.i16.i2(i16 %i_2, i2 0)
  %p_shl5_cast = zext i18 %p_shl5 to i21
  %tmp_10 = sub i21 %p_shl4_cast, %p_shl5_cast
  %tmp_16_cast = sext i21 %tmp_10 to i32
  %tmp_11 = or i21 %tmp_10, 2
  %tmp_17_cast = sext i21 %tmp_11 to i32
  %tmp_17_cast_cast_cast = sext i21 %tmp_11 to i22
  %tmp_12_cast = zext i17 %pos_assign to i33
  %tmp_49 = zext i18 %p_shl5 to i64
  %tmp_195_cast = zext i18 %p_shl5 to i19
  %back_gauss_addr_4 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_49
  %tmp_51 = or i18 %p_shl5, 1
  %tmp_55 = call i64 @_ssdm_op_BitConcatenate.i64.i46.i18(i46 0, i18 %tmp_51)
  %back_gauss_addr_5 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_55
  %tmp_13 = add i21 %tmp_10, 4
  %tmp_19_cast = sext i21 %tmp_13 to i32
  br label %44

; <label>:44                                      ; preds = %_ifconv35, %43
  %M_1299_4 = phi i1 [ %M_1299_3, %43 ], [ %M_1299_6, %_ifconv35 ]
  %M_0_4 = phi i1 [ %M_0_3, %43 ], [ %M_0_6, %_ifconv35 ]
  %j_0_i1 = phi i2 [ 0, %43 ], [ %j, %_ifconv35 ]
  %j_0_i1_cast157_cast_cast = zext i2 %j_0_i1 to i22
  %exitcond6_i1 = icmp eq i2 %j_0_i1, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j = add i2 %j_0_i1, 1
  br i1 %exitcond6_i1, label %.preheader8.i34, label %_ifconv35

_ifconv35:                                        ; preds = %44
  %tmp = call i19 @_ssdm_op_PartSelect.i19.i21.i32.i32(i21 %tmp_10, i32 2, i32 20)
  %tmp_20 = call i21 @_ssdm_op_BitConcatenate.i21.i19.i2(i19 %tmp, i2 %j_0_i1)
  %tmp_26_cast = sext i21 %tmp_20 to i32
  %tmp_21_cast = zext i32 %tmp_26_cast to i33
  %parameters7_sum = add i33 %tmp_5_cast, %tmp_21_cast
  %parameters7_sum_cast = zext i33 %parameters7_sum to i64
  %gmem_offset1_addr = getelementptr float* %gmem_offset1, i64 %parameters7_sum_cast
  %gmem_offset1_load_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr, i32 1)
  %gmem_offset1_addr_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr)
  %x_assign_s = fsub float %tmp_s, %gmem_offset1_addr_read
  %p_Val2_s = bitcast float %x_assign_s to i32
  %p_Result_4 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %loc_V_6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_7 = trunc i32 %p_Val2_s to i23
  %p_Result_5 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_7) nounwind
  %tmp_2_i_i1 = zext i24 %p_Result_5 to i78
  %tmp_i_i_i96_cast = zext i8 %loc_V_6 to i9
  %sh_assign = add i9 -127, %tmp_i_i_i96_cast
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_4_i_i1 = sub i8 127, %loc_V_6
  %tmp_4_i_i99_cast = sext i8 %tmp_4_i_i1 to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_4_i_i99_cast, i9 %sh_assign
  %sh_assign_1_i100_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_i100_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_6_i_i1 = zext i32 %sh_assign_1_i100_cast to i78
  %tmp_7_i_i1 = lshr i24 %p_Result_5, %sh_assign_1_i100_cast_cast
  %tmp_9_i_i1 = shl i78 %tmp_2_i_i1, %tmp_6_i_i1
  %tmp_82 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_7_i_i1, i32 23)
  %tmp_78 = zext i1 %tmp_82 to i32
  %tmp_80 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_9_i_i1, i32 23, i32 54)
  %p_Val2_3 = select i1 %isNeg, i32 %tmp_78, i32 %tmp_80
  %p_Val2_7_i_i1 = sub i32 0, %p_Val2_3
  %p_Val2_5 = select i1 %p_Result_4, i32 %p_Val2_7_i_i1, i32 %p_Val2_3
  %neg_i1 = sub i32 0, %p_Val2_5
  %abscond_i1 = icmp sgt i32 %p_Val2_5, 0
  %abs_i1 = select i1 %abscond_i1, i32 %p_Val2_5, i32 %neg_i1
  %tmp_22 = sitofp i32 %abs_i1 to double
  %tmp_24 = add i22 %tmp_17_cast_cast_cast, %j_0_i1_cast157_cast_cast
  %tmp_31_cast = sext i22 %tmp_24 to i32
  %tmp_25_cast1 = zext i32 %tmp_31_cast to i33
  %parameters7_sum8 = add i33 %tmp_5_cast, %tmp_25_cast1
  %parameters7_sum8_cast = zext i33 %parameters7_sum8 to i64
  %gmem_offset1_addr_1 = getelementptr float* %gmem_offset1, i64 %parameters7_sum8_cast
  %gmem_offset1_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_1, i32 1)
  %gmem_offset1_addr_1_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_1)
  %tmp_i1 = call float @llvm.sqrt.f32(float %gmem_offset1_addr_1_read) nounwind
  %tmp_26 = fpext float %tmp_i1 to double
  %tmp_27 = fmul double %tmp_26, 2.500000e+00
  %tmp_30_to_int = bitcast double %tmp_22 to i64
  %tmp_23 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_30_to_int, i32 52, i32 62)
  %tmp_84 = trunc i64 %tmp_30_to_int to i52
  %tmp_34_to_int = bitcast double %tmp_27 to i64
  %tmp_29 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_34_to_int, i32 52, i32 62)
  %tmp_86 = trunc i64 %tmp_34_to_int to i52
  %notlhs = icmp ne i11 %tmp_23, -1
  %notrhs = icmp eq i52 %tmp_84, 0
  %tmp_31 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i11 %tmp_29, -1
  %notrhs1 = icmp eq i52 %tmp_86, 0
  %tmp_32 = or i1 %notrhs1, %notlhs1
  %tmp_33 = and i1 %tmp_31, %tmp_32
  %tmp_34 = fcmp olt double %tmp_22, %tmp_27
  %tmp_35 = and i1 %tmp_33, %tmp_34
  %tmp_36 = zext i2 %j_0_i1 to i64
  %tmp_81 = call i18 @_ssdm_op_BitConcatenate.i18.i16.i2(i16 %i_2, i2 %j_0_i1)
  %tmp_92 = zext i18 %tmp_81 to i64
  %back_gauss_addr_2 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_92
  %back_gauss_load = load i1* %back_gauss_addr_2, align 1
  %tmp_102 = trunc i2 %j_0_i1 to i1
  %not_j_0_i1_t = xor i1 %tmp_102, true
  %sel_tmp2 = and i1 %back_gauss_load, %tmp_35
  %sel_tmp3 = and i1 %sel_tmp2, %tmp_102
  %M_1299_6 = or i1 %sel_tmp3, %M_1299_4
  %sel_tmp4 = and i1 %sel_tmp2, %not_j_0_i1_t
  %M_0_6 = or i1 %sel_tmp4, %M_0_4
  %alpha_w_load = load float* @alpha_w, align 4
  %tmp_40 = call i19 @_ssdm_op_PartSelect.i19.i21.i32.i32(i21 %tmp_13, i32 2, i32 20)
  %tmp_46 = call i21 @_ssdm_op_BitConcatenate.i21.i19.i2(i19 %tmp_40, i2 %j_0_i1)
  %tmp_49_cast = sext i21 %tmp_46 to i32
  %tmp_49_cast1 = zext i32 %tmp_49_cast to i33
  %parameters7_sum9 = add i33 %tmp_5_cast, %tmp_49_cast1
  %parameters7_sum9_cast = zext i33 %parameters7_sum9 to i64
  %gmem_offset1_addr_2 = getelementptr float* %gmem_offset1, i64 %parameters7_sum9_cast
  %gmem_offset1_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_2, i32 1)
  %gmem_offset1_addr_2_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_2)
  %tmp_50 = fdiv float %alpha_w_load, %gmem_offset1_addr_2_read
  %akt_addr = getelementptr inbounds [2 x float]* @akt, i64 0, i64 %tmp_36
  store float %tmp_50, float* %akt_addr, align 4
  %tmp_65 = fdiv float %gmem_offset1_addr_2_read, %gmem_offset1_addr_1_read
  %F_addr = getelementptr inbounds [2 x float]* @F, i64 0, i64 %tmp_36
  store float %tmp_65, float* %F_addr, align 4
  br label %44

.preheader8.i34:                                  ; preds = %44, %_ifconv44
  %max_val_3 = phi i2 [ %j_2, %_ifconv44 ], [ 0, %44 ]
  %min_val_0_i1 = phi i32 [ %min_val_1, %_ifconv44 ], [ 10, %44 ]
  %max_val_0_i1 = phi i32 [ %min_val_2, %_ifconv44 ], [ 10, %44 ]
  %min_F_0_i1 = phi float [ %min_F_1, %_ifconv44 ], [ 1.000000e+03, %44 ]
  %max_F_0_i1 = phi float [ %max_F_3, %_ifconv44 ], [ 0.000000e+00, %44 ]
  %max_val_3_cast = zext i2 %max_val_3 to i32
  %exitcond5_i1 = icmp eq i2 %max_val_3, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_2 = add i2 %max_val_3, 1
  br i1 %exitcond5_i1, label %45, label %_ifconv44

_ifconv44:                                        ; preds = %.preheader8.i34
  %tmp_48 = zext i2 %max_val_3 to i64
  %tmp_143 = trunc i2 %max_val_3 to i1
  %M_load_phi = select i1 %tmp_143, i1 %M_1299_4, i1 %M_0_4
  %F_addr_1 = getelementptr inbounds [2 x float]* @F, i64 0, i64 %tmp_48
  %max_F_11 = load float* %F_addr_1, align 4
  %max_F_to_int = bitcast float %max_F_11 to i32
  %tmp_145 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_F_to_int, i32 23, i32 30)
  %tmp_147 = trunc i32 %max_F_to_int to i23
  %max_F_0_i1_to_int = bitcast float %max_F_0_i1 to i32
  %tmp_149 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_F_0_i1_to_int, i32 23, i32 30)
  %tmp_152 = trunc i32 %max_F_0_i1_to_int to i23
  %notlhs4 = icmp ne i8 %tmp_145, -1
  %notrhs4 = icmp eq i23 %tmp_147, 0
  %tmp_153 = or i1 %notrhs4, %notlhs4
  %notlhs5 = icmp ne i8 %tmp_149, -1
  %notrhs5 = icmp eq i23 %tmp_152, 0
  %tmp_154 = or i1 %notrhs5, %notlhs5
  %tmp_155 = and i1 %tmp_153, %tmp_154
  %tmp_156 = fcmp ogt float %max_F_11, %max_F_0_i1
  %tmp_157 = and i1 %tmp_155, %tmp_156
  %sel_tmp6 = and i1 %M_load_phi, %tmp_157
  %min_val = select i1 %sel_tmp6, i32 %max_val_3_cast, i32 %max_val_0_i1
  %min_val_2 = select i1 %M_load_phi, i32 %min_val, i32 %max_val_0_i1
  %max_F_2 = select i1 %sel_tmp6, float %max_F_11, float %max_F_0_i1
  %max_F_3 = select i1 %M_load_phi, float %max_F_2, float %max_F_0_i1
  %min_F_0_i1_to_int = bitcast float %min_F_0_i1 to i32
  %tmp_160 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %min_F_0_i1_to_int, i32 23, i32 30)
  %tmp_161 = trunc i32 %min_F_0_i1_to_int to i23
  %notlhs7 = icmp ne i8 %tmp_160, -1
  %notrhs7 = icmp eq i23 %tmp_161, 0
  %tmp_164 = or i1 %notrhs7, %notlhs7
  %tmp_165 = and i1 %tmp_153, %tmp_164
  %tmp_166 = fcmp olt float %max_F_11, %min_F_0_i1
  %tmp_167 = and i1 %tmp_165, %tmp_166
  %min_val_1 = select i1 %tmp_167, i32 %max_val_3_cast, i32 %min_val_0_i1
  %min_F_1 = select i1 %tmp_167, float %max_F_11, float %min_F_0_i1
  br label %.preheader8.i34

; <label>:45                                      ; preds = %.preheader8.i34
  %tmp_138 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %max_val_0_i1, i32 1, i32 31)
  %icmp1 = icmp slt i31 %tmp_138, 1
  br i1 %icmp1, label %46, label %50

; <label>:46                                      ; preds = %45
  %tmp_54 = add nsw i32 %max_val_0_i1, %tmp_16_cast
  %tmp_55_cast = sext i32 %tmp_54 to i33
  %parameters7_sum4 = add i33 %tmp_5_cast, %tmp_55_cast
  %parameters7_sum4_cast = sext i33 %parameters7_sum4 to i64
  %gmem_offset1_addr_6 = getelementptr float* %gmem_offset1, i64 %parameters7_sum4_cast
  %gmem_offset1_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_6, i32 1)
  %gmem_offset1_addr_6_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_6)
  %tmp_56 = sext i32 %max_val_0_i1 to i64
  %tmp_209 = trunc i32 %max_val_0_i1 to i19
  %tmp_213 = add i19 %tmp_209, %tmp_195_cast
  %tmp_483_cast = sext i19 %tmp_213 to i64
  %matchsum_addr_2 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_483_cast
  %akt_addr_1 = getelementptr inbounds [2 x float]* @akt, i64 0, i64 %tmp_56
  %akt_load = load float* %akt_addr_1, align 4
  %tmp_57 = fsub float %tmp_s, %gmem_offset1_addr_6_read
  %tmp_58 = fmul float %akt_load, %tmp_57
  %tmp_59 = fadd float %gmem_offset1_addr_6_read, %tmp_58
  %gmem_offset1_addr_6_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_6, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_6, float %tmp_59, i4 -1)
  %gmem_offset1_addr_6_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_6)
  %tmp_60 = add i32 %max_val_0_i1, %tmp_17_cast
  %tmp_61_cast = sext i32 %tmp_60 to i33
  %parameters7_sum5 = add i33 %tmp_5_cast, %tmp_61_cast
  %parameters7_sum5_cast = sext i33 %parameters7_sum5 to i64
  %gmem_offset1_addr_7 = getelementptr float* %gmem_offset1, i64 %parameters7_sum5_cast
  %gmem_offset1_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_7, i32 1)
  %gmem_offset1_addr_7_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_7)
  %tmp_62 = fsub float %tmp_s, %tmp_59
  %tmp_63 = fmul float %tmp_62, %tmp_62
  %tmp_64 = fsub float %tmp_63, %gmem_offset1_addr_7_read
  %tmp_68 = fmul float %akt_load, %tmp_64
  %tmp_69 = fadd float %gmem_offset1_addr_7_read, %tmp_68
  %gmem_offset1_addr_7_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_7, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_7, float %tmp_69, i4 -1)
  %gmem_offset1_addr_7_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_7)
  %tmp_70 = add i32 %max_val_0_i1, %tmp_19_cast
  %tmp_71_cast = sext i32 %tmp_70 to i33
  %parameters7_sum6 = add i33 %tmp_5_cast, %tmp_71_cast
  %parameters7_sum6_cast = sext i33 %parameters7_sum6 to i64
  %gmem_offset1_addr_8 = getelementptr float* %gmem_offset1, i64 %parameters7_sum6_cast
  %gmem_offset1_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_8, i32 1)
  %gmem_offset1_addr_8_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_8)
  %alpha_w_load_1 = load float* @alpha_w, align 4
  %tmp_72 = fmul float %alpha_w_load_1, %gmem_offset1_addr_8_read
  %tmp_73 = fsub float %gmem_offset1_addr_8_read, %tmp_72
  %tmp_74 = fadd float %tmp_73, %alpha_w_load_1
  %gmem_offset1_addr_8_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_8, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_8, float %tmp_74, i4 -1)
  %gmem_offset1_addr_8_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_8)
  %matchsum_load = load i8* %matchsum_addr_2, align 1
  %tmp_75 = add i8 1, %matchsum_load
  store i8 %tmp_75, i8* %matchsum_addr_2, align 1
  br label %47

; <label>:47                                      ; preds = %._crit_edge13.i43, %46
  %j2_0_i1 = phi i2 [ 0, %46 ], [ %j_4, %._crit_edge13.i43 ]
  %j2_0_i1_cast = zext i2 %j2_0_i1 to i32
  %exitcond4_i1 = icmp eq i2 %j2_0_i1, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_4 = add i2 %j2_0_i1, 1
  br i1 %exitcond4_i1, label %.preheader7.i51, label %48

; <label>:48                                      ; preds = %47
  %tmp_115 = icmp eq i32 %j2_0_i1_cast, %max_val_0_i1
  br i1 %tmp_115, label %._crit_edge13.i43, label %49

; <label>:49                                      ; preds = %48
  %tmp_272 = call i19 @_ssdm_op_PartSelect.i19.i21.i32.i32(i21 %tmp_13, i32 2, i32 20)
  %tmp_119 = call i21 @_ssdm_op_BitConcatenate.i21.i19.i2(i19 %tmp_272, i2 %j2_0_i1)
  %tmp_119_cast = sext i21 %tmp_119 to i32
  %tmp_120_cast = zext i32 %tmp_119_cast to i33
  %parameters7_sum31 = add i33 %tmp_120_cast, %tmp_5_cast
  %parameters7_sum32_cast = zext i33 %parameters7_sum31 to i64
  %gmem_offset1_addr_16 = getelementptr float* %gmem_offset1, i64 %parameters7_sum32_cast
  %gmem_offset1_load_12_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_16, i32 1)
  %gmem_offset1_addr_16_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_16)
  %tmp_125 = fsub float %gmem_offset1_addr_16_read, %alpha_w_load_1
  %gmem_offset1_addr_16_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_16, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_16, float %tmp_125, i4 -1)
  %gmem_offset1_addr_16_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_16)
  br label %._crit_edge13.i43

._crit_edge13.i43:                                ; preds = %49, %48
  br label %47

; <label>:50                                      ; preds = %45
  %tmp_77 = add nsw i32 %min_val_0_i1, %tmp_16_cast
  %tmp_78_cast = sext i32 %tmp_77 to i33
  %parameters7_sum7 = add i33 %tmp_5_cast, %tmp_78_cast
  %parameters7_sum7_cast = sext i33 %parameters7_sum7 to i64
  %gmem_offset1_addr_9 = getelementptr float* %gmem_offset1, i64 %parameters7_sum7_cast
  %gmem_offset1_addr_9_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_9, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_9, float %tmp_s, i4 -1)
  %gmem_offset1_addr_9_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_9)
  %vinit_load = load float* @vinit, align 4
  %tmp_79 = add i32 %min_val_0_i1, %tmp_17_cast
  %tmp_80_cast = sext i32 %tmp_79 to i33
  %parameters7_sum10 = add i33 %tmp_5_cast, %tmp_80_cast
  %parameters7_sum10_cast = sext i33 %parameters7_sum10 to i64
  %gmem_offset1_addr_10 = getelementptr float* %gmem_offset1, i64 %parameters7_sum10_cast
  %gmem_offset1_addr_10_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_10, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_10, float %vinit_load, i4 -1)
  %gmem_offset1_addr_10_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_10)
  %tmp_219 = trunc i32 %min_val_0_i1 to i19
  %tmp_226 = add i19 %tmp_219, %tmp_195_cast
  %tmp_484_cast = sext i19 %tmp_226 to i64
  %matchsum_addr_3 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_484_cast
  store i8 1, i8* %matchsum_addr_3, align 1
  br label %._crit_edge14.i48

._crit_edge14.i48:                                ; preds = %51, %52, %50
  %j3_0_i1 = phi i2 [ 0, %50 ], [ %j_5, %52 ], [ %j_5, %51 ]
  %matchsumtot_0_i1 = phi float [ 0.000000e+00, %50 ], [ %matchsumtot, %52 ], [ %matchsumtot_0_i1, %51 ]
  %j3_0_i1_cast = zext i2 %j3_0_i1 to i32
  %exitcond3_i1 = icmp eq i2 %j3_0_i1, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_5 = add i2 %j3_0_i1, 1
  br i1 %exitcond3_i1, label %53, label %51

; <label>:51                                      ; preds = %._crit_edge14.i48
  %tmp_118 = icmp eq i32 %j3_0_i1_cast, %min_val_0_i1
  br i1 %tmp_118, label %._crit_edge14.i48, label %52

; <label>:52                                      ; preds = %51
  %tmp_274 = call i19 @_ssdm_op_PartSelect.i19.i21.i32.i32(i21 %tmp_13, i32 2, i32 20)
  %tmp_131 = call i21 @_ssdm_op_BitConcatenate.i21.i19.i2(i19 %tmp_274, i2 %j3_0_i1)
  %tmp_131_cast = sext i21 %tmp_131 to i32
  %tmp_132_cast = zext i32 %tmp_131_cast to i33
  %parameters7_sum12 = add i33 %tmp_132_cast, %tmp_5_cast
  %parameters7_sum12_cast = zext i33 %parameters7_sum12 to i64
  %gmem_offset1_addr_19 = getelementptr float* %gmem_offset1, i64 %parameters7_sum12_cast
  %gmem_offset1_load_13_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_19, i32 1)
  %gmem_offset1_addr_19_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_19)
  %alpha_w_load_4 = load float* @alpha_w, align 4
  %tmp_133 = fsub float %gmem_offset1_addr_19_read, %alpha_w_load_4
  %gmem_offset1_addr_19_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_19, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_19, float %tmp_133, i4 -1)
  %gmem_offset1_addr_19_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_19)
  %tmp_276 = call i18 @_ssdm_op_BitConcatenate.i18.i16.i2(i16 %i_2, i2 %j3_0_i1)
  %tmp_280 = zext i18 %tmp_276 to i64
  %matchsum_addr_6 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_280
  %matchsum_load_2 = load i8* %matchsum_addr_6, align 1
  %tmp_135 = zext i8 %matchsum_load_2 to i32
  %tmp_136 = sitofp i32 %tmp_135 to float
  %matchsumtot = fadd float %matchsumtot_0_i1, %tmp_136
  br label %._crit_edge14.i48

; <label>:53                                      ; preds = %._crit_edge14.i48
  %matchsumtot_0_i1_to_int = bitcast float %matchsumtot_0_i1 to i32
  %tmp_238 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %matchsumtot_0_i1_to_int, i32 23, i32 30)
  %tmp_240 = trunc i32 %matchsumtot_0_i1_to_int to i23
  %notlhs10 = icmp ne i8 %tmp_238, -1
  %notrhs10 = icmp eq i23 %tmp_240, 0
  %tmp_242 = or i1 %notrhs10, %notlhs10
  %tmp_244 = fcmp oeq float %matchsumtot_0_i1, 0.000000e+00
  %tmp_250 = and i1 %tmp_242, %tmp_244
  br i1 %tmp_250, label %55, label %54

; <label>:54                                      ; preds = %53
  %tmp_126 = fdiv float 1.000000e+00, %matchsumtot_0_i1
  %tmp_127 = add i32 %tmp_19_cast, %min_val_0_i1
  %tmp_128_cast = sext i32 %tmp_127 to i33
  %parameters7_sum13 = add i33 %tmp_128_cast, %tmp_5_cast
  %parameters7_sum13_cast = sext i33 %parameters7_sum13 to i64
  %gmem_offset1_addr_18 = getelementptr float* %gmem_offset1, i64 %parameters7_sum13_cast
  %gmem_offset1_addr_18_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_18, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_18, float %tmp_126, i4 -1)
  %gmem_offset1_addr_18_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_18)
  br label %EM_ALGO.exit70

; <label>:55                                      ; preds = %53
  %tmp_129 = add i32 %tmp_19_cast, %min_val_0_i1
  %tmp_130_cast = sext i32 %tmp_129 to i33
  %parameters7_sum29 = add i33 %tmp_130_cast, %tmp_5_cast
  %parameters7_sum29_cast = sext i33 %parameters7_sum29 to i64
  %gmem_offset1_addr_17 = getelementptr float* %gmem_offset1, i64 %parameters7_sum29_cast
  %gmem_offset1_addr_17_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_17, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_17, float 0x3FC99999A0000000, i4 -1)
  %gmem_offset1_addr_17_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_17)
  br label %EM_ALGO.exit70

EM_ALGO.exit70:                                   ; preds = %55, %54
  %out_frame5_sum = add i33 %tmp_9_cast, %tmp_12_cast
  %out_frame5_sum_cast = sext i33 %out_frame5_sum to i64
  %gmem_offset_addr = getelementptr i8* %gmem_offset, i64 %out_frame5_sum_cast
  %gmem_offset_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %gmem_offset_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %gmem_offset_addr, i8 -1, i1 true)
  %gmem_offset_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %gmem_offset_addr)
  br label %62

.preheader7.i51:                                  ; preds = %47, %56
  %sorted_F_1309_2 = phi float [ %sorted_F_1_1, %56 ], [ %sorted_F_1_3_load, %47 ]
  %sorted_F_0_2_18 = phi float [ %sorted_F_1_2, %56 ], [ %sorted_F_1_load, %47 ]
  %i_0_i1 = phi i2 [ %i_4, %56 ], [ 0, %47 ]
  %exitcond2_i1 = icmp eq i2 %i_0_i1, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_4 = add i2 %i_0_i1, 1
  br i1 %exitcond2_i1, label %.preheader.i54, label %56

; <label>:56                                      ; preds = %.preheader7.i51
  %tmp_124 = zext i2 %i_0_i1 to i64
  %F_addr_4 = getelementptr inbounds [2 x float]* @F, i64 0, i64 %tmp_124
  %sorted_F_0_3 = load float* %F_addr_4, align 4
  %tmp_270 = trunc i2 %i_0_i1 to i1
  %sorted_F_1_1 = select i1 %tmp_270, float %sorted_F_0_3, float %sorted_F_1309_2
  %sorted_F_1_2 = select i1 %tmp_270, float %sorted_F_0_2_18, float %sorted_F_0_3
  br label %.preheader7.i51

.preheader.i54:                                   ; preds = %.preheader7.i51, %57
  %sorted_weight_1325_2 = phi float [ %sorted_weight_1_1, %57 ], [ %sorted_weight_1_3_load, %.preheader7.i51 ]
  %sorted_weight_0_2_19 = phi float [ %sorted_weight_1_2, %57 ], [ %sorted_weight_1_load, %.preheader7.i51 ]
  %tmp_268 = phi i2 [ %i_6, %57 ], [ 0, %.preheader7.i51 ]
  %exitcond1_i1 = icmp eq i2 %tmp_268, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_6 = add i2 %tmp_268, 1
  br i1 %exitcond1_i1, label %.preheader504, label %57

; <label>:57                                      ; preds = %.preheader.i54
  %tmp_301 = call i19 @_ssdm_op_PartSelect.i19.i21.i32.i32(i21 %tmp_13, i32 2, i32 20)
  %tmp_303 = call i21 @_ssdm_op_BitConcatenate.i21.i19.i2(i19 %tmp_301, i2 %tmp_268)
  %tmp_305 = sext i21 %tmp_303 to i32
  %tmp_308 = zext i32 %tmp_305 to i33
  %tmp_309 = add i33 %tmp_5_cast, %tmp_308
  %tmp_310 = zext i33 %tmp_309 to i64
  %gmem_offset1_addr_24 = getelementptr float* %gmem_offset1, i64 %tmp_310
  %sorted_weight_0_3_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_24, i32 1)
  %sorted_weight_0_3 = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_24)
  %tmp_311 = trunc i2 %tmp_268 to i1
  %sorted_weight_1_1 = select i1 %tmp_311, float %sorted_weight_0_3, float %sorted_weight_1325_2
  %sorted_weight_1_2 = select i1 %tmp_311, float %sorted_weight_0_2_19, float %sorted_weight_0_3
  br label %.preheader.i54

.preheader504:                                    ; preds = %.preheader.i54, %58
  %temp_index_4 = phi i32 [ %index_1_2, %58 ], [ 1, %.preheader.i54 ]
  %index = phi i32 [ %index_1_3, %58 ], [ 0, %.preheader.i54 ]
  %temp_W_4 = phi float [ %sorted_weight_1_8, %58 ], [ %sorted_weight_1325_2, %.preheader.i54 ]
  %sorted_weight_0_4 = phi float [ %sorted_weight_1_9, %58 ], [ %sorted_weight_0_2_19, %.preheader.i54 ]
  %temp_F_4 = phi float [ %sorted_F_1_8, %58 ], [ %sorted_F_1309_2, %.preheader.i54 ]
  %sorted_F_0_4 = phi float [ %sorted_F_1_9, %58 ], [ %sorted_F_0_2_18, %.preheader.i54 ]
  %i6_0_i1 = phi i2 [ %i_8, %58 ], [ 1, %.preheader.i54 ]
  %i6_0_i1_cast = zext i2 %i6_0_i1 to i32
  %exitcond_i1 = icmp eq i2 %i6_0_i1, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  br i1 %exitcond_i1, label %59, label %branch89.preheader

branch89.preheader:                               ; preds = %.preheader504
  %temp_F_4_to_int = bitcast float %temp_F_4 to i32
  %tmp_324 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp_F_4_to_int, i32 23, i32 30)
  %tmp_326 = trunc i32 %temp_F_4_to_int to i23
  %notlhs12 = icmp ne i8 %tmp_324, -1
  %notrhs12 = icmp eq i23 %tmp_326, 0
  %tmp_327 = or i1 %notrhs12, %notlhs12
  br label %branch89

branch89:                                         ; preds = %branch89.preheader, %branch85
  %index_1348_1 = phi i32 [ %index_1_20, %branch85 ], [ %temp_index_4, %branch89.preheader ]
  %sorted_weight_1325_5 = phi float [ %sorted_weight_1_6, %branch85 ], [ %temp_W_4, %branch89.preheader ]
  %sorted_F_1309_5 = phi float [ %sorted_F_1_6, %branch85 ], [ %temp_F_4, %branch89.preheader ]
  %j5_0_in_i1 = phi i32 [ %j_8, %branch85 ], [ %i6_0_i1_cast, %branch89.preheader ]
  %j_8 = add nsw i32 -1, %j5_0_in_i1
  %tmp_332 = trunc i32 %j_8 to i1
  %sorted_F_1_6 = select i1 %tmp_332, float %sorted_F_1309_5, float %sorted_F_0_4
  %sorted_F_1_6_to_int = bitcast float %sorted_F_1_6 to i32
  %tmp_333 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sorted_F_1_6_to_int, i32 23, i32 30)
  %tmp_334 = trunc i32 %sorted_F_1_6_to_int to i23
  %notlhs13 = icmp ne i8 %tmp_333, -1
  %notrhs13 = icmp eq i23 %tmp_334, 0
  %tmp_335 = or i1 %notrhs13, %notlhs13
  %tmp_336 = and i1 %tmp_327, %tmp_335
  %tmp_337 = fcmp ogt float %temp_F_4, %sorted_F_1_6
  %tmp_338 = and i1 %tmp_336, %tmp_337
  %tmp_158 = icmp sgt i32 %j5_0_in_i1, 0
  %tmp_159 = and i1 %tmp_338, %tmp_158
  br i1 %tmp_159, label %branch85, label %58

branch85:                                         ; preds = %branch89
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1810) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 4, i32 2, [1 x i8]* @p_str1806) nounwind
  %sorted_weight_1_6 = select i1 %tmp_332, float %sorted_weight_1325_5, float %sorted_weight_0_4
  %index_1_20 = select i1 %tmp_332, i32 %index_1348_1, i32 %index
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1810, i32 %tmp_2) nounwind
  br label %branch89

; <label>:58                                      ; preds = %branch89
  %tmp_357 = trunc i32 %j5_0_in_i1 to i1
  %sorted_F_1_8 = select i1 %tmp_357, float %temp_F_4, float %sorted_F_1309_5
  %sorted_F_1_9 = select i1 %tmp_357, float %sorted_F_0_4, float %temp_F_4
  %sorted_weight_1_8 = select i1 %tmp_357, float %temp_W_4, float %sorted_weight_1325_5
  %sorted_weight_1_9 = select i1 %tmp_357, float %sorted_weight_0_4, float %temp_W_4
  %index_1_2 = select i1 %tmp_357, i32 %temp_index_4, i32 %index_1348_1
  %index_1_3 = select i1 %tmp_357, i32 %index, i32 %temp_index_4
  %i_8 = add i2 1, %i6_0_i1
  br label %.preheader504

; <label>:59                                      ; preds = %.preheader504
  store i1 false, i1* %back_gauss_addr_4, align 4
  store i1 false, i1* %back_gauss_addr_5, align 1
  br label %60

; <label>:60                                      ; preds = %61, %59
  %B_0_i1 = phi float [ 0.000000e+00, %59 ], [ %B, %61 ]
  %ind_0_i1 = phi i2 [ 0, %59 ], [ %ind, %61 ]
  %tmp_331 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %ind_0_i1, i32 1)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %ind = add i2 %ind_0_i1, 1
  br i1 %tmp_331, label %.critedge186, label %61

; <label>:61                                      ; preds = %60
  %tmp_347 = trunc i2 %ind_0_i1 to i1
  %sorted_weight_load_phi = select i1 %tmp_347, float %temp_W_4, float %sorted_weight_0_4
  %B = fadd float %B_0_i1, %sorted_weight_load_phi
  %tmp_348 = trunc i32 %temp_index_4 to i19
  %tmp_349 = trunc i32 %index to i19
  %tmp_350 = select i1 %tmp_347, i19 %tmp_348, i19 %tmp_349
  %tmp_351 = add i19 %tmp_350, %tmp_195_cast
  %tmp_491_cast = sext i19 %tmp_351 to i64
  %back_gauss_addr_8 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_491_cast
  store i1 true, i1* %back_gauss_addr_8, align 1
  %B_to_int = bitcast float %B to i32
  %tmp_352 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %B_to_int, i32 23, i32 30)
  %tmp_353 = trunc i32 %B_to_int to i23
  %notlhs15 = icmp ne i8 %tmp_352, -1
  %notrhs15 = icmp eq i23 %tmp_353, 0
  %tmp_354 = or i1 %notrhs15, %notlhs15
  %tmp_355 = fcmp oge float %B, 0x3FE6666660000000
  %tmp_356 = and i1 %tmp_354, %tmp_355
  br i1 %tmp_356, label %.critedge186, label %60

.critedge186:                                     ; preds = %60, %61
  %out_frame5_sum2 = add i33 %tmp_9_cast, %tmp_12_cast
  %out_frame5_sum2_cast = sext i33 %out_frame5_sum2 to i64
  %gmem_offset_addr_2 = getelementptr i8* %gmem_offset, i64 %out_frame5_sum2_cast
  %gmem_offset_addr_2_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %gmem_offset_addr_2, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %gmem_offset_addr_2, i8 0, i1 true)
  %gmem_offset_addr_2_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %gmem_offset_addr_2)
  store float %temp_W_4, float* %sorted_weight_1_3
  store float %sorted_weight_0_4, float* %sorted_weight_1
  store float %temp_F_4, float* %sorted_F_1_3
  store float %sorted_F_0_4, float* %sorted_F_1
  br label %62

; <label>:62                                      ; preds = %.critedge186, %EM_ALGO.exit70
  %pos_assign_2 = or i17 %pos_assign, 1
  br label %meminst.i

meminst.i:                                        ; preds = %meminst.i, %62
  %M_2_1_2 = phi i1 [ %M_2_1_load, %62 ], [ %M_2_1_3, %meminst.i ]
  %M_2_0_2 = phi i1 [ %M_2_load, %62 ], [ %M_2_0_3, %meminst.i ]
  %invdar_i = phi i1 [ false, %62 ], [ %not_invdar_i, %meminst.i ]
  %not_invdar_i = xor i1 %invdar_i, true
  %M_2_1_3 = and i1 %M_2_1_2, %not_invdar_i
  %M_2_0_3 = and i1 %invdar_i, %M_2_0_2
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopName([9 x i8]* @memset_M_str) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  br i1 %invdar_i, label %63, label %meminst.i

; <label>:63                                      ; preds = %meminst.i
  %tmp_169 = zext i8 %pixel_assign_2 to i32
  %tmp_170 = sitofp i32 %tmp_169 to float
  %p_shl8 = call i20 @_ssdm_op_BitConcatenate.i20.i17.i3(i17 %pos_assign_2, i3 0)
  %p_shl8_cast = zext i20 %p_shl8 to i21
  %p_shl9 = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %pos_assign_2, i1 false)
  %p_shl9_cast = zext i18 %p_shl9 to i21
  %tmp_172 = sub i21 %p_shl8_cast, %p_shl9_cast
  %tmp_172_cast = sext i21 %tmp_172 to i32
  %tmp_173 = add i21 %tmp_172, 2
  %tmp_173_cast = sext i21 %tmp_173 to i32
  %tmp_174_cast = zext i17 %pos_assign_2 to i33
  %tmp_369 = zext i18 %p_shl9 to i64
  %tmp_494_cast = zext i18 %p_shl9 to i19
  %back_gauss_addr_12 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_369
  %tmp_370 = or i18 %p_shl9, 1
  %tmp_371 = call i64 @_ssdm_op_BitConcatenate.i64.i46.i18(i46 0, i18 %tmp_370)
  %back_gauss_addr_13 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_371
  %tmp_175 = add i21 %tmp_172, 4
  %tmp_175_cast = sext i21 %tmp_175 to i32
  br label %64

; <label>:64                                      ; preds = %_ifconv53, %63
  %M_2_1_4 = phi i1 [ %M_2_1_3, %63 ], [ %M_2_1_6, %_ifconv53 ]
  %M_2_0_4 = phi i1 [ %M_2_0_3, %63 ], [ %M_2_0_6, %_ifconv53 ]
  %j_0_i = phi i2 [ 0, %63 ], [ %j_12, %_ifconv53 ]
  %j_0_i_cast = zext i2 %j_0_i to i21
  %exitcond6_i = icmp eq i2 %j_0_i, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_12 = add i2 %j_0_i, 1
  br i1 %exitcond6_i, label %.preheader8.i, label %_ifconv53

_ifconv53:                                        ; preds = %64
  %tmp_182 = add i21 %j_0_i_cast, %tmp_172
  %tmp_182_cast = sext i21 %tmp_182 to i32
  %tmp_183_cast = zext i32 %tmp_182_cast to i33
  %parameters7_sum14 = add i33 %tmp_5_cast, %tmp_183_cast
  %parameters7_sum14_cast = zext i33 %parameters7_sum14 to i64
  %gmem_offset1_addr_26 = getelementptr float* %gmem_offset1, i64 %parameters7_sum14_cast
  %gmem_offset1_load_18_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_26, i32 1)
  %gmem_offset1_addr_26_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_26)
  %x_assign_2 = fsub float %tmp_170, %gmem_offset1_addr_26_read
  %p_Val2_12 = bitcast float %x_assign_2 to i32
  %p_Result_6 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_12, i32 31)
  %loc_V_8 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_12, i32 23, i32 30) nounwind
  %loc_V_9 = trunc i32 %p_Val2_12 to i23
  %p_Result_7 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_9) nounwind
  %tmp_2_i_i2 = zext i24 %p_Result_7 to i78
  %tmp_i_i_i115_cast = zext i8 %loc_V_8 to i9
  %sh_assign_4 = add i9 -127, %tmp_i_i_i115_cast
  %isNeg_2 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_4, i32 8)
  %tmp_4_i_i2 = sub i8 127, %loc_V_8
  %tmp_4_i_i118_cast = sext i8 %tmp_4_i_i2 to i9
  %sh_assign_5 = select i1 %isNeg_2, i9 %tmp_4_i_i118_cast, i9 %sh_assign_4
  %sh_assign_1_i119_cast = sext i9 %sh_assign_5 to i32
  %sh_assign_1_i119_cast_cast = sext i9 %sh_assign_5 to i24
  %tmp_6_i_i2 = zext i32 %sh_assign_1_i119_cast to i78
  %tmp_7_i_i2 = lshr i24 %p_Result_7, %sh_assign_1_i119_cast_cast
  %tmp_9_i_i2 = shl i78 %tmp_2_i_i2, %tmp_6_i_i2
  %tmp_378 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_7_i_i2, i32 23)
  %tmp_375 = zext i1 %tmp_378 to i32
  %tmp_376 = call i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78 %tmp_9_i_i2, i32 23, i32 54)
  %p_Val2_15 = select i1 %isNeg_2, i32 %tmp_375, i32 %tmp_376
  %p_Val2_7_i_i2 = sub i32 0, %p_Val2_15
  %p_Val2_17 = select i1 %p_Result_6, i32 %p_Val2_7_i_i2, i32 %p_Val2_15
  %neg_i = sub i32 0, %p_Val2_17
  %abscond_i = icmp sgt i32 %p_Val2_17, 0
  %abs_i = select i1 %abscond_i, i32 %p_Val2_17, i32 %neg_i
  %tmp_186 = sitofp i32 %abs_i to double
  %tmp_187 = add i21 %j_0_i_cast, %tmp_173
  %tmp_187_cast = sext i21 %tmp_187 to i32
  %tmp_188_cast = zext i32 %tmp_187_cast to i33
  %parameters7_sum15 = add i33 %tmp_5_cast, %tmp_188_cast
  %parameters7_sum15_cast = zext i33 %parameters7_sum15 to i64
  %gmem_offset1_addr_27 = getelementptr float* %gmem_offset1, i64 %parameters7_sum15_cast
  %gmem_offset1_load_19_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_27, i32 1)
  %gmem_offset1_addr_27_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_27)
  %tmp_i2 = call float @llvm.sqrt.f32(float %gmem_offset1_addr_27_read) nounwind
  %tmp_189 = fpext float %tmp_i2 to double
  %tmp_190 = fmul double %tmp_189, 2.500000e+00
  %tmp_186_to_int = bitcast double %tmp_186 to i64
  %tmp_377 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_186_to_int, i32 52, i32 62)
  %tmp_379 = trunc i64 %tmp_186_to_int to i52
  %tmp_190_to_int = bitcast double %tmp_190 to i64
  %tmp_380 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_190_to_int, i32 52, i32 62)
  %tmp_381 = trunc i64 %tmp_190_to_int to i52
  %notlhs18 = icmp ne i11 %tmp_377, -1
  %notrhs18 = icmp eq i52 %tmp_379, 0
  %tmp_382 = or i1 %notrhs18, %notlhs18
  %notlhs19 = icmp ne i11 %tmp_380, -1
  %notrhs19 = icmp eq i52 %tmp_381, 0
  %tmp_383 = or i1 %notrhs19, %notlhs19
  %tmp_384 = and i1 %tmp_382, %tmp_383
  %tmp_385 = fcmp olt double %tmp_186, %tmp_190
  %tmp_386 = and i1 %tmp_384, %tmp_385
  %tmp_192 = zext i2 %j_0_i to i64
  %tmp_192_cast = zext i2 %j_0_i to i19
  %tmp_387 = add i19 %tmp_494_cast, %tmp_192_cast
  %tmp_505_cast = zext i19 %tmp_387 to i64
  %back_gauss_addr_10 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_505_cast
  %back_gauss_load_2 = load i1* %back_gauss_addr_10, align 1
  %tmp_388 = trunc i2 %j_0_i to i1
  %not_j_0_i_t = xor i1 %tmp_388, true
  %sel_tmp7 = and i1 %back_gauss_load_2, %tmp_386
  %sel_tmp8 = and i1 %sel_tmp7, %tmp_388
  %M_2_1_6 = or i1 %sel_tmp8, %M_2_1_4
  %sel_tmp10 = and i1 %sel_tmp7, %not_j_0_i_t
  %M_2_0_6 = or i1 %sel_tmp10, %M_2_0_4
  %alpha_w_load_7 = load float* @alpha_w, align 4
  %tmp_205 = add i21 %j_0_i_cast, %tmp_175
  %tmp_205_cast = sext i21 %tmp_205 to i32
  %tmp_206_cast = zext i32 %tmp_205_cast to i33
  %parameters7_sum16 = add i33 %tmp_5_cast, %tmp_206_cast
  %parameters7_sum16_cast = zext i33 %parameters7_sum16 to i64
  %gmem_offset1_addr_28 = getelementptr float* %gmem_offset1, i64 %parameters7_sum16_cast
  %gmem_offset1_load_20_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_28, i32 1)
  %gmem_offset1_addr_28_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_28)
  %tmp_207 = fdiv float %alpha_w_load_7, %gmem_offset1_addr_28_read
  %akt_addr_4 = getelementptr inbounds [2 x float]* @akt, i64 0, i64 %tmp_192
  store float %tmp_207, float* %akt_addr_4, align 4
  %tmp_237 = fdiv float %gmem_offset1_addr_28_read, %gmem_offset1_addr_27_read
  %F_addr_6 = getelementptr inbounds [2 x float]* @F, i64 0, i64 %tmp_192
  store float %tmp_237, float* %F_addr_6, align 4
  br label %64

.preheader8.i:                                    ; preds = %64, %_ifconv62
  %max_val_4 = phi i2 [ %j_11, %_ifconv62 ], [ 0, %64 ]
  %min_val_0_i = phi i32 [ %min_val_5, %_ifconv62 ], [ 10, %64 ]
  %max_val_0_i = phi i32 [ %min_val_11, %_ifconv62 ], [ 10, %64 ]
  %min_F_0_i = phi float [ %min_F_5, %_ifconv62 ], [ 1.000000e+03, %64 ]
  %max_F_0_i = phi float [ %max_F_7, %_ifconv62 ], [ 0.000000e+00, %64 ]
  %max_val_4_cast = zext i2 %max_val_4 to i32
  %exitcond5_i = icmp eq i2 %max_val_4, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_11 = add i2 %max_val_4, 1
  br i1 %exitcond5_i, label %65, label %_ifconv62

_ifconv62:                                        ; preds = %.preheader8.i
  %tmp_204 = zext i2 %max_val_4 to i64
  %tmp_404 = trunc i2 %max_val_4 to i1
  %M_2_load_phi = select i1 %tmp_404, i1 %M_2_1_4, i1 %M_2_0_4
  %F_addr_8 = getelementptr inbounds [2 x float]* @F, i64 0, i64 %tmp_204
  %max_F_12 = load float* %F_addr_8, align 4
  %max_F_2_to_int = bitcast float %max_F_12 to i32
  %tmp_405 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_F_2_to_int, i32 23, i32 30)
  %tmp_406 = trunc i32 %max_F_2_to_int to i23
  %max_F_0_i_to_int = bitcast float %max_F_0_i to i32
  %tmp_407 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %max_F_0_i_to_int, i32 23, i32 30)
  %tmp_408 = trunc i32 %max_F_0_i_to_int to i23
  %notlhs22 = icmp ne i8 %tmp_405, -1
  %notrhs22 = icmp eq i23 %tmp_406, 0
  %tmp_409 = or i1 %notrhs22, %notlhs22
  %notlhs23 = icmp ne i8 %tmp_407, -1
  %notrhs23 = icmp eq i23 %tmp_408, 0
  %tmp_410 = or i1 %notrhs23, %notlhs23
  %tmp_411 = and i1 %tmp_409, %tmp_410
  %tmp_412 = fcmp ogt float %max_F_12, %max_F_0_i
  %tmp_413 = and i1 %tmp_411, %tmp_412
  %sel_tmp14 = and i1 %M_2_load_phi, %tmp_413
  %min_val_10 = select i1 %sel_tmp14, i32 %max_val_4_cast, i32 %max_val_0_i
  %min_val_11 = select i1 %M_2_load_phi, i32 %min_val_10, i32 %max_val_0_i
  %max_F_6 = select i1 %sel_tmp14, float %max_F_12, float %max_F_0_i
  %max_F_7 = select i1 %M_2_load_phi, float %max_F_6, float %max_F_0_i
  %min_F_0_i_to_int = bitcast float %min_F_0_i to i32
  %tmp_414 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %min_F_0_i_to_int, i32 23, i32 30)
  %tmp_415 = trunc i32 %min_F_0_i_to_int to i23
  %notlhs24 = icmp ne i8 %tmp_414, -1
  %notrhs24 = icmp eq i23 %tmp_415, 0
  %tmp_416 = or i1 %notrhs24, %notlhs24
  %tmp_417 = and i1 %tmp_409, %tmp_416
  %tmp_418 = fcmp olt float %max_F_12, %min_F_0_i
  %tmp_419 = and i1 %tmp_417, %tmp_418
  %min_val_5 = select i1 %tmp_419, i32 %max_val_4_cast, i32 %min_val_0_i
  %min_F_5 = select i1 %tmp_419, float %max_F_12, float %min_F_0_i
  br label %.preheader8.i

; <label>:65                                      ; preds = %.preheader8.i
  %tmp_403 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %max_val_0_i, i32 1, i32 31)
  %icmp2 = icmp slt i31 %tmp_403, 1
  br i1 %icmp2, label %66, label %70

; <label>:66                                      ; preds = %65
  %tmp_212 = add nsw i32 %max_val_0_i, %tmp_172_cast
  %tmp_213_cast = sext i32 %tmp_212 to i33
  %parameters7_sum23 = add i33 %tmp_5_cast, %tmp_213_cast
  %parameters7_sum23_cast = sext i33 %parameters7_sum23 to i64
  %gmem_offset1_addr_32 = getelementptr float* %gmem_offset1, i64 %parameters7_sum23_cast
  %gmem_offset1_load_24_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_32, i32 1)
  %gmem_offset1_addr_32_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_32)
  %tmp_214 = sext i32 %max_val_0_i to i64
  %tmp_437 = trunc i32 %max_val_0_i to i19
  %tmp_438 = add i19 %tmp_437, %tmp_494_cast
  %tmp_511_cast = sext i19 %tmp_438 to i64
  %matchsum_addr_8 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_511_cast
  %akt_addr_5 = getelementptr inbounds [2 x float]* @akt, i64 0, i64 %tmp_214
  %akt_load_2 = load float* %akt_addr_5, align 4
  %tmp_215 = fsub float %tmp_170, %gmem_offset1_addr_32_read
  %tmp_216 = fmul float %akt_load_2, %tmp_215
  %tmp_217 = fadd float %gmem_offset1_addr_32_read, %tmp_216
  %gmem_offset1_addr_32_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_32, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_32, float %tmp_217, i4 -1)
  %gmem_offset1_addr_32_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_32)
  %tmp_218 = add i32 %max_val_0_i, %tmp_173_cast
  %tmp_219_cast = sext i32 %tmp_218 to i33
  %parameters7_sum24 = add i33 %tmp_5_cast, %tmp_219_cast
  %parameters7_sum24_cast = sext i33 %parameters7_sum24 to i64
  %gmem_offset1_addr_33 = getelementptr float* %gmem_offset1, i64 %parameters7_sum24_cast
  %gmem_offset1_load_25_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_33, i32 1)
  %gmem_offset1_addr_33_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_33)
  %tmp_220 = fsub float %tmp_170, %tmp_217
  %tmp_221 = fmul float %tmp_220, %tmp_220
  %tmp_222 = fsub float %tmp_221, %gmem_offset1_addr_33_read
  %tmp_223 = fmul float %akt_load_2, %tmp_222
  %tmp_224 = fadd float %gmem_offset1_addr_33_read, %tmp_223
  %gmem_offset1_addr_33_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_33, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_33, float %tmp_224, i4 -1)
  %gmem_offset1_addr_33_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_33)
  %tmp_225 = add i32 %max_val_0_i, %tmp_175_cast
  %tmp_226_cast = sext i32 %tmp_225 to i33
  %parameters7_sum25 = add i33 %tmp_5_cast, %tmp_226_cast
  %parameters7_sum25_cast = sext i33 %parameters7_sum25 to i64
  %gmem_offset1_addr_34 = getelementptr float* %gmem_offset1, i64 %parameters7_sum25_cast
  %gmem_offset1_load_26_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_34, i32 1)
  %gmem_offset1_addr_34_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_34)
  %alpha_w_load_6 = load float* @alpha_w, align 4
  %tmp_227 = fmul float %alpha_w_load_6, %gmem_offset1_addr_34_read
  %tmp_228 = fsub float %gmem_offset1_addr_34_read, %tmp_227
  %tmp_229 = fadd float %tmp_228, %alpha_w_load_6
  %gmem_offset1_addr_34_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_34, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_34, float %tmp_229, i4 -1)
  %gmem_offset1_addr_34_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_34)
  %matchsum_load_4 = load i8* %matchsum_addr_8, align 1
  %tmp_230 = add i8 1, %matchsum_load_4
  store i8 %tmp_230, i8* %matchsum_addr_8, align 1
  br label %67

; <label>:67                                      ; preds = %._crit_edge13.i, %66
  %j2_0_i = phi i2 [ 0, %66 ], [ %j_17, %._crit_edge13.i ]
  %j2_0_i_cast = zext i2 %j2_0_i to i21
  %j2_0_i_cast1 = zext i2 %j2_0_i to i32
  %exitcond4_i = icmp eq i2 %j2_0_i, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_17 = add i2 %j2_0_i, 1
  br i1 %exitcond4_i, label %.preheader7.i, label %68

; <label>:68                                      ; preds = %67
  %tmp_271 = icmp eq i32 %j2_0_i_cast1, %max_val_0_i
  br i1 %tmp_271, label %._crit_edge13.i, label %69

; <label>:69                                      ; preds = %68
  %tmp_275 = add i21 %j2_0_i_cast, %tmp_175
  %tmp_275_cast = sext i21 %tmp_275 to i32
  %tmp_276_cast = zext i32 %tmp_275_cast to i33
  %parameters7_sum26 = add i33 %tmp_276_cast, %tmp_5_cast
  %parameters7_sum26_cast = zext i33 %parameters7_sum26 to i64
  %gmem_offset1_addr_42 = getelementptr float* %gmem_offset1, i64 %parameters7_sum26_cast
  %gmem_offset1_load_30_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_42, i32 1)
  %gmem_offset1_addr_42_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_42)
  %tmp_277 = fsub float %gmem_offset1_addr_42_read, %alpha_w_load_6
  %gmem_offset1_addr_42_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_42, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_42, float %tmp_277, i4 -1)
  %gmem_offset1_addr_42_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_42)
  br label %._crit_edge13.i

._crit_edge13.i:                                  ; preds = %69, %68
  br label %67

; <label>:70                                      ; preds = %65
  %tmp_232 = add nsw i32 %min_val_0_i, %tmp_172_cast
  %tmp_233_cast = sext i32 %tmp_232 to i33
  %parameters7_sum17 = add i33 %tmp_5_cast, %tmp_233_cast
  %parameters7_sum17_cast = sext i33 %parameters7_sum17 to i64
  %gmem_offset1_addr_35 = getelementptr float* %gmem_offset1, i64 %parameters7_sum17_cast
  %gmem_offset1_addr_35_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_35, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_35, float %tmp_170, i4 -1)
  %gmem_offset1_addr_35_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_35)
  %vinit_load_2 = load float* @vinit, align 4
  %tmp_234 = add i32 %min_val_0_i, %tmp_173_cast
  %tmp_235_cast = sext i32 %tmp_234 to i33
  %parameters7_sum18 = add i33 %tmp_5_cast, %tmp_235_cast
  %parameters7_sum18_cast = sext i33 %parameters7_sum18 to i64
  %gmem_offset1_addr_36 = getelementptr float* %gmem_offset1, i64 %parameters7_sum18_cast
  %gmem_offset1_addr_36_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_36, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_36, float %vinit_load_2, i4 -1)
  %gmem_offset1_addr_36_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_36)
  %tmp_439 = trunc i32 %min_val_0_i to i19
  %tmp_441 = add i19 %tmp_439, %tmp_494_cast
  %tmp_512_cast = sext i19 %tmp_441 to i64
  %matchsum_addr_9 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_512_cast
  store i8 1, i8* %matchsum_addr_9, align 1
  br label %._crit_edge14.i

._crit_edge14.i:                                  ; preds = %71, %72, %70
  %j3_0_i = phi i2 [ 0, %70 ], [ %j_14, %72 ], [ %j_14, %71 ]
  %matchsumtot_0_i = phi float [ 0.000000e+00, %70 ], [ %matchsumtot_2, %72 ], [ %matchsumtot_0_i, %71 ]
  %j3_0_i_cast = zext i2 %j3_0_i to i21
  %j3_0_i_cast1 = zext i2 %j3_0_i to i32
  %exitcond3_i = icmp eq i2 %j3_0_i, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %j_14 = add i2 %j3_0_i, 1
  br i1 %exitcond3_i, label %73, label %71

; <label>:71                                      ; preds = %._crit_edge14.i
  %tmp_273 = icmp eq i32 %j3_0_i_cast1, %min_val_0_i
  br i1 %tmp_273, label %._crit_edge14.i, label %72

; <label>:72                                      ; preds = %71
  %tmp_287 = add i21 %j3_0_i_cast, %tmp_175
  %tmp_287_cast = sext i21 %tmp_287 to i32
  %tmp_288_cast = zext i32 %tmp_287_cast to i33
  %parameters7_sum19 = add i33 %tmp_288_cast, %tmp_5_cast
  %parameters7_sum19_cast = zext i33 %parameters7_sum19 to i64
  %gmem_offset1_addr_45 = getelementptr float* %gmem_offset1, i64 %parameters7_sum19_cast
  %gmem_offset1_load_31_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_45, i32 1)
  %gmem_offset1_addr_45_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_45)
  %alpha_w_load_10 = load float* @alpha_w, align 4
  %tmp_289 = fsub float %gmem_offset1_addr_45_read, %alpha_w_load_10
  %gmem_offset1_addr_45_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_45, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_45, float %tmp_289, i4 -1)
  %gmem_offset1_addr_45_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_45)
  %tmp_290_cast = zext i2 %j3_0_i to i19
  %tmp_481 = add i19 %tmp_494_cast, %tmp_290_cast
  %tmp_515_cast = zext i19 %tmp_481 to i64
  %matchsum_addr_12 = getelementptr [153600 x i8]* @matchsum, i64 0, i64 %tmp_515_cast
  %matchsum_load_6 = load i8* %matchsum_addr_12, align 1
  %tmp_291 = zext i8 %matchsum_load_6 to i32
  %tmp_292 = sitofp i32 %tmp_291 to float
  %matchsumtot_2 = fadd float %matchsumtot_0_i, %tmp_292
  br label %._crit_edge14.i

; <label>:73                                      ; preds = %._crit_edge14.i
  %matchsumtot_0_i_to_int = bitcast float %matchsumtot_0_i to i32
  %tmp_440 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %matchsumtot_0_i_to_int, i32 23, i32 30)
  %tmp_456 = trunc i32 %matchsumtot_0_i_to_int to i23
  %notlhs28 = icmp ne i8 %tmp_440, -1
  %notrhs28 = icmp eq i23 %tmp_456, 0
  %tmp_442 = or i1 %notrhs28, %notlhs28
  %tmp_445 = fcmp oeq float %matchsumtot_0_i, 0.000000e+00
  %tmp_446 = and i1 %tmp_442, %tmp_445
  br i1 %tmp_446, label %75, label %74

; <label>:74                                      ; preds = %73
  %tmp_278 = fdiv float 1.000000e+00, %matchsumtot_0_i
  %tmp_283 = add i32 %tmp_175_cast, %min_val_0_i
  %tmp_284_cast = sext i32 %tmp_283 to i33
  %parameters7_sum20 = add i33 %tmp_284_cast, %tmp_5_cast
  %parameters7_sum20_cast = sext i33 %parameters7_sum20 to i64
  %gmem_offset1_addr_44 = getelementptr float* %gmem_offset1, i64 %parameters7_sum20_cast
  %gmem_offset1_addr_44_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_44, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_44, float %tmp_278, i4 -1)
  %gmem_offset1_addr_44_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_44)
  br label %EM_ALGO.exit

; <label>:75                                      ; preds = %73
  %tmp_285 = add i32 %tmp_175_cast, %min_val_0_i
  %tmp_286_cast = sext i32 %tmp_285 to i33
  %parameters7_sum22 = add i33 %tmp_286_cast, %tmp_5_cast
  %parameters7_sum22_cast = sext i33 %parameters7_sum22 to i64
  %gmem_offset1_addr_43 = getelementptr float* %gmem_offset1, i64 %parameters7_sum22_cast
  %gmem_offset1_addr_43_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem_offset1_addr_43, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem_offset1_addr_43, float 0x3FC99999A0000000, i4 -1)
  %gmem_offset1_addr_43_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem_offset1_addr_43)
  br label %EM_ALGO.exit

EM_ALGO.exit:                                     ; preds = %75, %74
  %out_frame5_sum4 = add i33 %tmp_9_cast, %tmp_174_cast
  %out_frame5_sum4_cast = sext i33 %out_frame5_sum4 to i64
  %gmem_offset_addr_4 = getelementptr i8* %gmem_offset, i64 %out_frame5_sum4_cast
  %gmem_offset_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %gmem_offset_addr_4, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %gmem_offset_addr_4, i8 -1, i1 true)
  %gmem_offset_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %gmem_offset_addr_4)
  br label %.preheader.backedge

.preheader7.i:                                    ; preds = %67, %76
  %sorted_F_2_1_2 = phi float [ %sorted_F_1_36, %76 ], [ %sorted_F_1_11_load, %67 ]
  %sorted_F_2_0_2 = phi float [ %sorted_F_1_37, %76 ], [ %sorted_F_1_7_load, %67 ]
  %i_0_i = phi i2 [ %i_11, %76 ], [ 0, %67 ]
  %exitcond2_i = icmp eq i2 %i_0_i, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_11 = add i2 %i_0_i, 1
  br i1 %exitcond2_i, label %.preheader.i.preheader, label %76

.preheader.i.preheader:                           ; preds = %.preheader7.i
  %tmp_465 = zext i32 %tmp_175_cast to i33
  %tmp_467 = add i33 %tmp_465, %tmp_5_cast
  %tmp_476 = zext i33 %tmp_467 to i64
  %gmem_offset1_addr_50 = getelementptr float* %gmem_offset1, i64 %tmp_476
  %p_rd_req73 = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem_offset1_addr_50, i32 2)
  br label %.preheader.i

; <label>:76                                      ; preds = %.preheader7.i
  %tmp_282 = zext i2 %i_0_i to i64
  %F_addr_10 = getelementptr inbounds [2 x float]* @F, i64 0, i64 %tmp_282
  %sorted_F_0_4_23 = load float* %F_addr_10, align 4
  %tmp_480 = trunc i2 %i_0_i to i1
  %sorted_F_1_36 = select i1 %tmp_480, float %sorted_F_0_4_23, float %sorted_F_2_1_2
  %sorted_F_1_37 = select i1 %tmp_480, float %sorted_F_2_0_2, float %sorted_F_0_4_23
  br label %.preheader7.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %77
  %sorted_weight_2_1_2 = phi float [ %sorted_weight_1_36, %77 ], [ %sorted_weight_1_11_load, %.preheader.i.preheader ]
  %sorted_weight_2_0_2 = phi float [ %sorted_weight_1_37, %77 ], [ %sorted_weight_1_7_load, %.preheader.i.preheader ]
  %i4_0_i = phi i2 [ %i_13, %77 ], [ 0, %.preheader.i.preheader ]
  %exitcond1_i = icmp eq i2 %i4_0_i, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_13 = add i2 %i4_0_i, 1
  br i1 %exitcond1_i, label %.preheader503, label %77

; <label>:77                                      ; preds = %.preheader.i
  %sorted_weight_0_4_24 = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem_offset1_addr_50)
  %tmp_487 = trunc i2 %i4_0_i to i1
  %sorted_weight_1_36 = select i1 %tmp_487, float %sorted_weight_0_4_24, float %sorted_weight_2_1_2
  %sorted_weight_1_37 = select i1 %tmp_487, float %sorted_weight_2_0_2, float %sorted_weight_0_4_24
  br label %.preheader.i

.preheader503:                                    ; preds = %.preheader.i, %78
  %temp_index_5 = phi i32 [ %index_1_10, %78 ], [ 1, %.preheader.i ]
  %index_2 = phi i32 [ %index_1_11, %78 ], [ 0, %.preheader.i ]
  %temp_W_5 = phi float [ %sorted_weight_1_43, %78 ], [ %sorted_weight_2_1_2, %.preheader.i ]
  %sorted_weight_2_0_4 = phi float [ %sorted_weight_1_44, %78 ], [ %sorted_weight_2_0_2, %.preheader.i ]
  %temp_F_5 = phi float [ %sorted_F_1_43, %78 ], [ %sorted_F_2_1_2, %.preheader.i ]
  %sorted_F_2_0_4 = phi float [ %sorted_F_1_44, %78 ], [ %sorted_F_2_0_2, %.preheader.i ]
  %i6_0_i = phi i2 [ %i_14, %78 ], [ 1, %.preheader.i ]
  %i6_0_i_cast = zext i2 %i6_0_i to i32
  %exitcond_i = icmp eq i2 %i6_0_i, -2
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  br i1 %exitcond_i, label %79, label %branch127.preheader

branch127.preheader:                              ; preds = %.preheader503
  %temp_F_5_to_int = bitcast float %temp_F_5 to i32
  %tmp_452 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp_F_5_to_int, i32 23, i32 30)
  %tmp_489 = trunc i32 %temp_F_5_to_int to i23
  %notlhs30 = icmp ne i8 %tmp_452, -1
  %notrhs30 = icmp eq i23 %tmp_489, 0
  %tmp_454 = or i1 %notrhs30, %notlhs30
  br label %branch127

branch127:                                        ; preds = %branch127.preheader, %branch123
  %index_2_1_1 = phi i32 [ %index_1_8, %branch123 ], [ %temp_index_5, %branch127.preheader ]
  %sorted_weight_2_1_5 = phi float [ %sorted_weight_1_41, %branch123 ], [ %temp_W_5, %branch127.preheader ]
  %sorted_F_2_1_5 = phi float [ %sorted_F_1_41, %branch123 ], [ %temp_F_5, %branch127.preheader ]
  %j5_0_in_i = phi i32 [ %j_18, %branch123 ], [ %i6_0_i_cast, %branch127.preheader ]
  %j_18 = add nsw i32 -1, %j5_0_in_i
  %tmp_492 = trunc i32 %j_18 to i1
  %sorted_F_1_41 = select i1 %tmp_492, float %sorted_F_2_1_5, float %sorted_F_2_0_4
  %sorted_F_1_20_to_int = bitcast float %sorted_F_1_41 to i32
  %tmp_455 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %sorted_F_1_20_to_int, i32 23, i32 30)
  %tmp_493 = trunc i32 %sorted_F_1_20_to_int to i23
  %notlhs31 = icmp ne i8 %tmp_455, -1
  %notrhs31 = icmp eq i23 %tmp_493, 0
  %tmp_457 = or i1 %notrhs31, %notlhs31
  %tmp_458 = and i1 %tmp_454, %tmp_457
  %tmp_459 = fcmp ogt float %temp_F_5, %sorted_F_1_41
  %tmp_460 = and i1 %tmp_458, %tmp_459
  %tmp_314 = icmp sgt i32 %j5_0_in_i, 0
  %tmp_315 = and i1 %tmp_460, %tmp_314
  br i1 %tmp_315, label %branch123, label %78

branch123:                                        ; preds = %branch127
  %tmp_318 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1810) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 4, i32 2, [1 x i8]* @p_str1806) nounwind
  %sorted_weight_1_41 = select i1 %tmp_492, float %sorted_weight_2_1_5, float %sorted_weight_2_0_4
  %index_1_8 = select i1 %tmp_492, i32 %index_2_1_1, i32 %index_2
  %empty_25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1810, i32 %tmp_318) nounwind
  br label %branch127

; <label>:78                                      ; preds = %branch127
  %tmp_503 = trunc i32 %j5_0_in_i to i1
  %sorted_F_1_43 = select i1 %tmp_503, float %temp_F_5, float %sorted_F_2_1_5
  %sorted_F_1_44 = select i1 %tmp_503, float %sorted_F_2_0_4, float %temp_F_5
  %sorted_weight_1_43 = select i1 %tmp_503, float %temp_W_5, float %sorted_weight_2_1_5
  %sorted_weight_1_44 = select i1 %tmp_503, float %sorted_weight_2_0_4, float %temp_W_5
  %index_1_10 = select i1 %tmp_503, i32 %temp_index_5, i32 %index_2_1_1
  %index_1_11 = select i1 %tmp_503, i32 %index_2, i32 %temp_index_5
  %i_14 = add i2 1, %i6_0_i
  br label %.preheader503

; <label>:79                                      ; preds = %.preheader503
  store i1 false, i1* %back_gauss_addr_12, align 2
  store i1 false, i1* %back_gauss_addr_13, align 1
  br label %80

; <label>:80                                      ; preds = %81, %79
  %B_0_i = phi float [ 0.000000e+00, %79 ], [ %B_2, %81 ]
  %ind_0_i = phi i2 [ 0, %79 ], [ %ind_2, %81 ]
  %tmp_491 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %ind_0_i, i32 1)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 2, i64 1)
  %ind_2 = add i2 %ind_0_i, 1
  br i1 %tmp_491, label %.critedge187, label %81

; <label>:81                                      ; preds = %80
  %tmp_497 = trunc i2 %ind_0_i to i1
  %sorted_weight_2_load_phi = select i1 %tmp_497, float %temp_W_5, float %sorted_weight_2_0_4
  %B_2 = fadd float %B_0_i, %sorted_weight_2_load_phi
  %tmp_498 = trunc i32 %temp_index_5 to i19
  %tmp_499 = trunc i32 %index_2 to i19
  %tmp_500 = select i1 %tmp_497, i19 %tmp_498, i19 %tmp_499
  %tmp_501 = add i19 %tmp_500, %tmp_494_cast
  %tmp_517_cast = sext i19 %tmp_501 to i64
  %back_gauss_addr_16 = getelementptr [153600 x i1]* @back_gauss, i64 0, i64 %tmp_517_cast
  store i1 true, i1* %back_gauss_addr_16, align 1
  %B_2_to_int = bitcast float %B_2 to i32
  %tmp_464 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %B_2_to_int, i32 23, i32 30)
  %tmp_502 = trunc i32 %B_2_to_int to i23
  %notlhs33 = icmp ne i8 %tmp_464, -1
  %notrhs33 = icmp eq i23 %tmp_502, 0
  %tmp_468 = or i1 %notrhs33, %notlhs33
  %tmp_473 = fcmp oge float %B_2, 0x3FE6666660000000
  %tmp_474 = and i1 %tmp_468, %tmp_473
  br i1 %tmp_474, label %.critedge187, label %80

.critedge187:                                     ; preds = %80, %81
  %out_frame5_sum6 = add i33 %tmp_9_cast, %tmp_174_cast
  %out_frame5_sum6_cast = sext i33 %out_frame5_sum6 to i64
  %gmem_offset_addr_6 = getelementptr i8* %gmem_offset, i64 %out_frame5_sum6_cast
  %gmem_offset_addr_6_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %gmem_offset_addr_6, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %gmem_offset_addr_6, i8 0, i1 true)
  %gmem_offset_addr_6_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %gmem_offset_addr_6)
  store float %temp_W_5, float* %sorted_weight_1_11
  store float %sorted_weight_2_0_4, float* %sorted_weight_1_7
  store float %temp_F_5, float* %sorted_F_1_11
  store float %sorted_F_2_0_4, float* %sorted_F_1_7
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %.critedge187, %EM_ALGO.exit
  store i1 %M_2_1_4, i1* %M_2_1
  store i1 %M_2_0_4, i1* %M_2
  store i1 %M_1299_4, i1* %M_s
  store i1 %M_0_4, i1* %M
  br label %.preheader

.loopexit:                                        ; preds = %.preheader7, %.preheader5
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

define weak i1 @_ssdm_op_ReadReq.m_axi.i32P(i32*, i32) {
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

define weak i32 @_ssdm_op_Read.m_axi.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_26 = trunc i32 %empty to i8
  ret i8 %empty_26
}

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i78.i32.i32(i78, i32, i32) nounwind readnone {
entry:
  %empty = call i78 @llvm.part.select.i78(i78 %0, i32 %1, i32 %2)
  %empty_27 = trunc i78 %empty to i32
  ret i32 %empty_27
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_28 = trunc i32 %empty to i31
  ret i31 %empty_28
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_29 = trunc i32 %empty to i30
  ret i30 %empty_29
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i19 @_ssdm_op_PartSelect.i19.i21.i32.i32(i21, i32, i32) nounwind readnone {
entry:
  %empty = call i21 @llvm.part.select.i21(i21 %0, i32 %1, i32 %2)
  %empty_30 = trunc i21 %empty to i19
  ret i19 %empty_30
}

define weak i16 @_ssdm_op_PartSelect.i16.i17.i32.i32(i17, i32, i32) nounwind readnone {
entry:
  %empty = call i17 @llvm.part.select.i17(i17 %0, i32 %1, i32 %2)
  %empty_31 = trunc i17 %empty to i16
  ret i16 %empty_31
}

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_32 = trunc i64 %empty to i11
  ret i11 %empty_32
}

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_33 = shl i9 1, %empty
  %empty_34 = and i9 %0, %empty_33
  %empty_35 = icmp ne i9 %empty_34, 0
  ret i1 %empty_35
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_36 = and i32 %0, %empty
  %empty_37 = icmp ne i32 %empty_36, 0
  ret i1 %empty_37
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_38 = shl i24 1, %empty
  %empty_39 = and i24 %0, %empty_38
  %empty_40 = icmp ne i24 %empty_39, 0
  ret i1 %empty_40
}

define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2
  %empty_41 = shl i2 1, %empty
  %empty_42 = and i2 %0, %empty_41
  %empty_43 = icmp ne i2 %empty_42, 0
  ret i1 %empty_43
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i46.i18(i46, i18) nounwind readnone {
entry:
  %empty = zext i46 %0 to i64
  %empty_44 = zext i18 %1 to i64
  %empty_45 = shl i64 %empty, 18
  %empty_46 = or i64 %empty_45, %empty_44
  ret i64 %empty_46
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_47 = zext i23 %1 to i24
  %empty_48 = shl i24 %empty, 23
  %empty_49 = or i24 %empty_48, %empty_47
  ret i24 %empty_49
}

define weak i21 @_ssdm_op_BitConcatenate.i21.i19.i2(i19, i2) nounwind readnone {
entry:
  %empty = zext i19 %0 to i21
  %empty_50 = zext i2 %1 to i21
  %empty_51 = shl i21 %empty, 2
  %empty_52 = or i21 %empty_51, %empty_50
  ret i21 %empty_52
}

define weak i20 @_ssdm_op_BitConcatenate.i20.i17.i3(i17, i3) nounwind readnone {
entry:
  %empty = zext i17 %0 to i20
  %empty_53 = zext i3 %1 to i20
  %empty_54 = shl i20 %empty, 3
  %empty_55 = or i20 %empty_54, %empty_53
  ret i20 %empty_55
}

define weak i20 @_ssdm_op_BitConcatenate.i20.i16.i4(i16, i4) nounwind readnone {
entry:
  %empty = zext i16 %0 to i20
  %empty_56 = zext i4 %1 to i20
  %empty_57 = shl i20 %empty, 4
  %empty_58 = or i20 %empty_57, %empty_56
  ret i20 %empty_58
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17, i1) nounwind readnone {
entry:
  %empty = zext i17 %0 to i18
  %empty_59 = zext i1 %1 to i18
  %empty_60 = shl i18 %empty, 1
  %empty_61 = or i18 %empty_60, %empty_59
  ret i18 %empty_61
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i16.i2(i16, i2) nounwind readnone {
entry:
  %empty = zext i16 %0 to i18
  %empty_62 = zext i2 %1 to i18
  %empty_63 = shl i18 %empty, 2
  %empty_64 = or i18 %empty_63, %empty_62
  ret i18 %empty_64
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16, i1) nounwind readnone {
entry:
  %empty = zext i16 %0 to i17
  %empty_65 = zext i1 %1 to i17
  %empty_66 = shl i17 %empty, 1
  %empty_67 = or i17 %empty_66, %empty_65
  ret i17 %empty_67
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %0 to i16
  %empty_68 = zext i8 %1 to i16
  %empty_69 = shl i16 %empty, 8
  %empty_70 = or i16 %empty_69, %empty_68
  ret i16 %empty_70
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %0 to i14
  %empty_71 = zext i6 %1 to i14
  %empty_72 = shl i14 %empty, 6
  %empty_73 = or i14 %empty_72, %empty_71
  ret i14 %empty_73
}

declare void @_GLOBAL__I_a1938() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0, !7, !15, !21, !26, !31, !36, !41, !42}
!axi4.master.portmap = !{!43, !44, !45}
!axi4.slave.bundlemap = !{!46, !47, !48}

!0 = metadata !{metadata !1, float* @vinit}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"vinit", metadata !5, metadata !"float", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8, null}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 7, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"matchsum", metadata !12, metadata !"unsigned char", i32 0, i32 7}
!12 = metadata !{metadata !13, metadata !14}
!13 = metadata !{i32 0, i32 76799, i32 1}
!14 = metadata !{i32 0, i32 1, i32 1}
!15 = metadata !{metadata !16, [2 x i32]* @llvm_global_ctors_0}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 31, metadata !18}
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !"llvm.global_ctors.0", metadata !20, metadata !"", i32 0, i32 31}
!20 = metadata !{metadata !14}
!21 = metadata !{metadata !22, null}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 0, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"back_gauss", metadata !12, metadata !"bool", i32 0, i32 0}
!26 = metadata !{metadata !27, float* @alpha_w}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"alpha_w", metadata !5, metadata !"float", i32 0, i32 31}
!31 = metadata !{metadata !32, [2 x float]* @akt}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"akt", metadata !20, metadata !"float", i32 0, i32 31}
!36 = metadata !{metadata !37, [2 x float]* @F}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"F", metadata !20, metadata !"float", i32 0, i32 31}
!41 = metadata !{metadata !8, [153600 x i8]* @matchsum}
!42 = metadata !{metadata !22, [153600 x i1]* @back_gauss}
!43 = metadata !{metadata !"gmem", metadata !"data_array", metadata !"READONLY"}
!44 = metadata !{metadata !"gmem_offset", metadata !"out_frame", metadata !"WRITEONLY"}
!45 = metadata !{metadata !"gmem_offset", metadata !"parameters", metadata !"READWRITE"}
!46 = metadata !{metadata !"data_array", metadata !""}
!47 = metadata !{metadata !"out_frame", metadata !""}
!48 = metadata !{metadata !"parameters", metadata !""}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"parameters", metadata !53, metadata !"float", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 460799, i32 1}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 7, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"out_frame", metadata !59, metadata !"unsigned char", i32 0, i32 7}
!59 = metadata !{metadata !13}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 31, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"data_array", metadata !64, metadata !"unsigned int", i32 0, i32 31}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 38399, i32 1}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 0, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"init", metadata !70, metadata !"bool", i32 0, i32 0}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 0, i32 0}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 31, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"return", metadata !76, metadata !"int", i32 0, i32 31}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 1, i32 0}
