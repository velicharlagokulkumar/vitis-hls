; ModuleID = 'C:/Users/velic/AppData/Roaming/Xilinx/Vitis/project_11/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<int, 0>" = type { i32 }
%"class.hls::stream<long long, 0>" = type { i64 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_multiply_ir(%"class.hls::stream<int, 0>"* noalias nocapture nonnull dereferenceable(4) %A, %"class.hls::stream<int, 0>"* noalias nocapture nonnull dereferenceable(4) %B, %"class.hls::stream<long long, 0>"* noalias nocapture nonnull dereferenceable(8) %C) local_unnamed_addr #1 {
entry:
  %A_copy = alloca i32, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i32* %A_copy, i32 0) ]
  %B_copy = alloca i32, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i32* %B_copy, i32 0) ]
  %C_copy = alloca i64, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i64* %C_copy, i32 0) ]
  call fastcc void @copy_in(%"class.hls::stream<int, 0>"* nonnull %A, i32* nonnull align 512 %A_copy, %"class.hls::stream<int, 0>"* nonnull %B, i32* nonnull align 512 %B_copy, %"class.hls::stream<long long, 0>"* nonnull %C, i64* nonnull align 512 %C_copy)
  call void @apatb_multiply_hw(i32* %A_copy, i32* %B_copy, i64* %C_copy)
  call void @copy_back(%"class.hls::stream<int, 0>"* %A, i32* %A_copy, %"class.hls::stream<int, 0>"* %B, i32* %B_copy, %"class.hls::stream<long long, 0>"* %C, i64* %C_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<int, 0>"* noalias, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<int, 0>"* noalias, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<long long, 0>"* noalias, i64* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<int, 0>"(i32* align 512 %1, %"class.hls::stream<int, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<int, 0>"(i32* align 512 %3, %"class.hls::stream<int, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<long long, 0>"(i64* align 512 %5, %"class.hls::stream<long long, 0>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<long long, 0>"(i64* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<long long, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i64* %0, null
  %3 = icmp eq %"class.hls::stream<long long, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<long long, 0>"(i64* nonnull align 512 %0, %"class.hls::stream<long long, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<long long, 0>"(i64* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<long long, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<long long, 0>"
  %3 = alloca i64
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<long long, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<long long, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<long long, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<long long, 0>", %"class.hls::stream<long long, 0>"* %2
  %9 = call i64 @"_llvm.fpga.pack.bits.i64.s_class.hls::stream<long long, 0>s"(%"class.hls::stream<long long, 0>" %8)
  store i64 %9, i64* %3
  %10 = bitcast i64* %3 to i8*
  %11 = bitcast i64* %0 to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<int, 0>"* noalias, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<int, 0>"* noalias, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<long long, 0>"* noalias, i64* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<int, 0>.23"(%"class.hls::stream<int, 0>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<int, 0>.23"(%"class.hls::stream<int, 0>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<long long, 0>.4"(%"class.hls::stream<long long, 0>"* %4, i64* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<long long, 0>.4"(%"class.hls::stream<long long, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i64* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<long long, 0>"* %0, null
  %3 = icmp eq i64* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<long long, 0>.7"(%"class.hls::stream<long long, 0>"* nonnull %0, i64* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<long long, 0>.7"(%"class.hls::stream<long long, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i64* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i64
  %3 = alloca %"class.hls::stream<long long, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i64* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i64* %2 to i8*
  %7 = bitcast i64* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile i64, i64* %2
  %oldret = insertvalue %"class.hls::stream<long long, 0>" undef, i64 %8, 0
  store %"class.hls::stream<long long, 0>" %oldret, %"class.hls::stream<long long, 0>"* %3
  %9 = bitcast %"class.hls::stream<long long, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<long long, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %9, i8* %10)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i64 @"_llvm.fpga.pack.bits.i64.s_class.hls::stream<long long, 0>s"(%"class.hls::stream<long long, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<long long, 0>" %A, 0
  ret i64 %A.0
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<int, 0>"(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<int, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq %"class.hls::stream<int, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<int, 0>.18"(i32* nonnull align 512 %0, %"class.hls::stream<int, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<int, 0>.18"(i32* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<int, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<int, 0>"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<int, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<int, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<int, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<int, 0>", %"class.hls::stream<int, 0>"* %2
  %9 = call i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::stream<int, 0>s"(%"class.hls::stream<int, 0>" %8)
  store i32 %9, i32* %3
  %10 = bitcast i32* %3 to i8*
  %11 = bitcast i32* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::stream<int, 0>s"(%"class.hls::stream<int, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<int, 0>" %A, 0
  ret i32 %A.0
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<int, 0>.23"(%"class.hls::stream<int, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<int, 0>"* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<int, 0>.26"(%"class.hls::stream<int, 0>"* nonnull %0, i32* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<int, 0>.26"(%"class.hls::stream<int, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i32* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i32
  %3 = alloca %"class.hls::stream<int, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i32* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i32* %2 to i8*
  %7 = bitcast i32* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile i32, i32* %2
  %oldret = insertvalue %"class.hls::stream<int, 0>" undef, i32 %8, 0
  store %"class.hls::stream<int, 0>" %oldret, %"class.hls::stream<int, 0>"* %3
  %9 = bitcast %"class.hls::stream<int, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<int, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %9, i8* %10)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_multiply_hw(i32*, i32*, i64*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<int, 0>"* noalias, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<int, 0>"* noalias, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<long long, 0>"* noalias, i64* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<int, 0>.23"(%"class.hls::stream<int, 0>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<int, 0>.23"(%"class.hls::stream<int, 0>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<long long, 0>.4"(%"class.hls::stream<long long, 0>"* %4, i64* align 512 %5)
  ret void
}

define void @multiply_hw_stub_wrapper(i32*, i32*, i64*) #7 {
entry:
  %3 = alloca %"class.hls::stream<int, 0>"
  %4 = alloca %"class.hls::stream<int, 0>"
  %5 = alloca %"class.hls::stream<long long, 0>"
  call void @copy_out(%"class.hls::stream<int, 0>"* %3, i32* %0, %"class.hls::stream<int, 0>"* %4, i32* %1, %"class.hls::stream<long long, 0>"* %5, i64* %2)
  call void @multiply_hw_stub(%"class.hls::stream<int, 0>"* %3, %"class.hls::stream<int, 0>"* %4, %"class.hls::stream<long long, 0>"* %5)
  call void @copy_in(%"class.hls::stream<int, 0>"* %3, i32* %0, %"class.hls::stream<int, 0>"* %4, i32* %1, %"class.hls::stream<long long, 0>"* %5, i64* %2)
  ret void
}

declare void @multiply_hw_stub(%"class.hls::stream<int, 0>"*, %"class.hls::stream<int, 0>"*, %"class.hls::stream<long long, 0>"*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

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
