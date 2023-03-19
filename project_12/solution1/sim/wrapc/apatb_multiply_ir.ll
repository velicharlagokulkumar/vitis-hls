; ModuleID = 'C:/Users/velic/AppData/Roaming/Xilinx/Vitis/project_12/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>" = type { %"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<28, 4, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<28, 4, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<28, true>" }
%"struct.ssdm_int<28, true>" = type { i28 }
%"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>" = type { %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<56, 8, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<56, 8, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<56, true>" }
%"struct.ssdm_int<56, true>" = type { i56 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_multiply_ir(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(4) %A, %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(4) %B, %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(8) %C) local_unnamed_addr #1 {
entry:
  %A_copy = alloca i28, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i28* %A_copy, i32 0) ]
  %B_copy = alloca i28, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i28* %B_copy, i32 0) ]
  %C_copy = alloca i56, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i56* %C_copy, i32 0) ]
  call fastcc void @copy_in(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %A, i28* nonnull align 512 %A_copy, %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %B, i28* nonnull align 512 %B_copy, %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %C, i56* nonnull align 512 %C_copy)
  call void @apatb_multiply_hw(i28* %A_copy, i28* %B_copy, i56* %C_copy)
  call void @copy_back(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %A, i28* %A_copy, %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %B, i28* %B_copy, %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %C, i56* %C_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias, i28* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias, i28* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias, i56* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"(i28* align 512 %1, %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"(i28* align 512 %3, %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"(i56* align 512 %5, %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"(i56* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i56* %0, null
  %3 = icmp eq %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"(i56* nonnull align 512 %0, %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"(i56* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"
  %3 = alloca i56
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>", %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %2
  %9 = call i56 @"_llvm.fpga.pack.bits.i56.s_class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>s"(%"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>" %8)
  store i56 %9, i56* %3
  %10 = bitcast i56* %3 to i8*
  %11 = bitcast i56* %0 to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias, i28* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias, i28* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias, i56* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>.23"(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %0, i28* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>.23"(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %2, i28* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>.4"(%"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %4, i56* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>.4"(%"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i56* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %0, null
  %3 = icmp eq i56* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>.7"(%"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %0, i56* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>.7"(%"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i56* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i56
  %3 = alloca %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i56* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i56* %2 to i8*
  %7 = bitcast i56* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile i56, i56* %2
  %9 = call %"struct.ssdm_int<56, true>" @"_llvm.fpga.unpack.bits.s_class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>s.i56"(i56 %8)
  %oldret2 = insertvalue %"struct.ap_fixed_base<56, 8, true, AP_TRN, AP_WRAP, 0>" undef, %"struct.ssdm_int<56, true>" %9, 0
  %oldret1 = insertvalue %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>" undef, %"struct.ap_fixed_base<56, 8, true, AP_TRN, AP_WRAP, 0>" %oldret2, 0
  %oldret = insertvalue %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>" undef, %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>" %oldret1, 0
  store %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>" %oldret, %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %3
  %10 = bitcast %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal %"struct.ssdm_int<56, true>" @"_llvm.fpga.unpack.bits.s_class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>s.i56"(i56 %A) #6 {
  %.0 = insertvalue %"struct.ssdm_int<56, true>" undef, i56 %A, 0
  %.01 = insertvalue %"struct.ap_fixed_base<56, 8, true, AP_TRN, AP_WRAP, 0>" undef, %"struct.ssdm_int<56, true>" %.0, 0
  %oldret = extractvalue %"struct.ap_fixed_base<56, 8, true, AP_TRN, AP_WRAP, 0>" %.01, 0
  ret %"struct.ssdm_int<56, true>" %oldret
}

; Function Attrs: alwaysinline nounwind readnone
define internal i56 @"_llvm.fpga.pack.bits.i56.s_class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>s"(%"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>" %A, 0
  %A.0.0 = extractvalue %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_fixed_base<56, 8, true, AP_TRN, AP_WRAP, 0>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ssdm_int<56, true>" %A.0.0.0, 0
  ret i56 %A.0.0.0.0
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"(i28* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i28* %0, null
  %3 = icmp eq %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>.18"(i28* nonnull align 512 %0, %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>.18"(i28* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"
  %3 = alloca i28
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>", %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %2
  %9 = call i28 @"_llvm.fpga.pack.bits.i28.s_class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>s"(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>" %8)
  store i28 %9, i28* %3
  %10 = bitcast i28* %3 to i8*
  %11 = bitcast i28* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i28 @"_llvm.fpga.pack.bits.i28.s_class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>s"(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>" %A, 0
  %A.0.0 = extractvalue %"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_fixed_base<28, 4, true, AP_TRN, AP_WRAP, 0>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ssdm_int<28, true>" %A.0.0.0, 0
  ret i28 %A.0.0.0.0
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>.23"(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i28* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %0, null
  %3 = icmp eq i28* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>.26"(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %0, i28* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>.26"(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i28* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i28
  %3 = alloca %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i28* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i28* %2 to i8*
  %7 = bitcast i28* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = bitcast i28* %2 to i32*
  %9 = load i32, i32* %8
  %10 = trunc i32 %9 to i28
  %11 = call %"struct.ssdm_int<28, true>" @"_llvm.fpga.unpack.bits.s_class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>s.i28"(i28 %10)
  %oldret2 = insertvalue %"struct.ap_fixed_base<28, 4, true, AP_TRN, AP_WRAP, 0>" undef, %"struct.ssdm_int<28, true>" %11, 0
  %oldret1 = insertvalue %"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>" undef, %"struct.ap_fixed_base<28, 4, true, AP_TRN, AP_WRAP, 0>" %oldret2, 0
  %oldret = insertvalue %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>" undef, %"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>" %oldret1, 0
  store %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>" %oldret, %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %3
  %12 = bitcast %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %3 to i8*
  %13 = bitcast %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %12, i8* %13)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal %"struct.ssdm_int<28, true>" @"_llvm.fpga.unpack.bits.s_class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>s.i28"(i28 %A) #6 {
  %.0 = insertvalue %"struct.ssdm_int<28, true>" undef, i28 %A, 0
  %.01 = insertvalue %"struct.ap_fixed_base<28, 4, true, AP_TRN, AP_WRAP, 0>" undef, %"struct.ssdm_int<28, true>" %.0, 0
  %oldret = extractvalue %"struct.ap_fixed_base<28, 4, true, AP_TRN, AP_WRAP, 0>" %.01, 0
  ret %"struct.ssdm_int<28, true>" %oldret
}

declare void @apatb_multiply_hw(i28*, i28*, i56*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias, i28* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* noalias, i28* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* noalias, i56* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>.23"(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %0, i28* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>.23"(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %2, i28* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>.4"(%"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %4, i56* align 512 %5)
  ret void
}

define void @multiply_hw_stub_wrapper(i28*, i28*, i56*) #7 {
entry:
  %3 = alloca %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"
  %4 = alloca %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"
  %5 = alloca %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"
  call void @copy_out(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %3, i28* %0, %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %4, i28* %1, %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %5, i56* %2)
  call void @multiply_hw_stub(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %3, %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %4, %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %5)
  call void @copy_in(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %3, i28* %0, %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"* %4, i28* %1, %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"* %5, i56* %2)
  ret void
}

declare void @multiply_hw_stub(%"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>, 0>"*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { alwaysinline nounwind readnone }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="64" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
