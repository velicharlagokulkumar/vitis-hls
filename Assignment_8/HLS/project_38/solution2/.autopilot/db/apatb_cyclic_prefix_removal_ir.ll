; ModuleID = 'C:/Users/velic/OneDrive/Desktop/project_38/solution2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ComplexT, 0>" = type { %struct.ComplexT }
%struct.ComplexT = type { float, float }
%"class.hls::stream<bool, 0>" = type { i1 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_cyclic_prefix_removal_ir(%"class.hls::stream<ComplexT, 0>"* noalias nocapture nonnull dereferenceable(8) %in_samples, %"class.hls::stream<ComplexT, 0>"* noalias nocapture nonnull dereferenceable(8) %out_samples, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull dereferenceable(1) %t_last) local_unnamed_addr #1 {
entry:
  %in_samples_copy = alloca %"class.hls::stream<ComplexT, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<ComplexT, 0>"* %in_samples_copy, i32 0) ]
  %out_samples_copy = alloca %"class.hls::stream<ComplexT, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<ComplexT, 0>"* %out_samples_copy, i32 0) ]
  %t_last_copy = alloca i1, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i1* %t_last_copy, i32 0) ]
  call fastcc void @copy_in(%"class.hls::stream<ComplexT, 0>"* nonnull %in_samples, %"class.hls::stream<ComplexT, 0>"* nonnull align 512 %in_samples_copy, %"class.hls::stream<ComplexT, 0>"* nonnull %out_samples, %"class.hls::stream<ComplexT, 0>"* nonnull align 512 %out_samples_copy, %"class.hls::stream<bool, 0>"* nonnull %t_last, i1* nonnull align 512 %t_last_copy)
  call void @apatb_cyclic_prefix_removal_hw(%"class.hls::stream<ComplexT, 0>"* %in_samples_copy, %"class.hls::stream<ComplexT, 0>"* %out_samples_copy, i1* %t_last_copy)
  call void @copy_back(%"class.hls::stream<ComplexT, 0>"* %in_samples, %"class.hls::stream<ComplexT, 0>"* %in_samples_copy, %"class.hls::stream<ComplexT, 0>"* %out_samples, %"class.hls::stream<ComplexT, 0>"* %out_samples_copy, %"class.hls::stream<bool, 0>"* %t_last, i1* %t_last_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<ComplexT, 0>"* noalias, %"class.hls::stream<ComplexT, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ComplexT, 0>"* noalias, %"class.hls::stream<ComplexT, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<bool, 0>"* noalias, i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ComplexT, 0>"(%"class.hls::stream<ComplexT, 0>"* align 512 %1, %"class.hls::stream<ComplexT, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ComplexT, 0>"(%"class.hls::stream<ComplexT, 0>"* align 512 %3, %"class.hls::stream<ComplexT, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(i1* align 512 %5, %"class.hls::stream<bool, 0>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ComplexT, 0>"(%"class.hls::stream<ComplexT, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ComplexT, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ComplexT, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ComplexT, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ComplexT, 0>"(%"class.hls::stream<ComplexT, 0>"* nonnull align 512 %0, %"class.hls::stream<ComplexT, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ComplexT, 0>"(%"class.hls::stream<ComplexT, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ComplexT, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ComplexT, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ComplexT, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ComplexT, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ComplexT, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ComplexT, 0>", %"class.hls::stream<ComplexT, 0>"* %2
  %8 = bitcast %"class.hls::stream<ComplexT, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ComplexT, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<bool, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i1* %0, null
  %3 = icmp eq %"class.hls::stream<bool, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>"(i1* nonnull align 512 %0, %"class.hls::stream<bool, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>"(i1* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<bool, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<bool, 0>"
  %3 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<bool, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<bool, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<bool, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<bool, 0>", %"class.hls::stream<bool, 0>"* %2
  %9 = call i1 @"_llvm.fpga.pack.bits.i1.s_class.hls::stream<bool, 0>s"(%"class.hls::stream<bool, 0>" %8)
  store i1 %9, i1* %3
  %10 = bitcast i1* %3 to i8*
  %11 = bitcast i1* %0 to i8*
  call void @fpga_fifo_push_1(i8* %10, i8* %11)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<ComplexT, 0>"* noalias, %"class.hls::stream<ComplexT, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ComplexT, 0>"* noalias, %"class.hls::stream<ComplexT, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<bool, 0>"* noalias, i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ComplexT, 0>"(%"class.hls::stream<ComplexT, 0>"* %0, %"class.hls::stream<ComplexT, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ComplexT, 0>"(%"class.hls::stream<ComplexT, 0>"* %2, %"class.hls::stream<ComplexT, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.4"(%"class.hls::stream<bool, 0>"* %4, i1* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.4"(%"class.hls::stream<bool, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<bool, 0>"* %0, null
  %3 = icmp eq i1* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.7"(%"class.hls::stream<bool, 0>"* nonnull %0, i1* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.7"(%"class.hls::stream<bool, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i1* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca i1
  %3 = alloca %"class.hls::stream<bool, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i1* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i1* %2 to i8*
  %7 = bitcast i1* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = bitcast i1* %2 to i8*
  %9 = load i8, i8* %8
  %10 = trunc i8 %9 to i1
  %oldret = insertvalue %"class.hls::stream<bool, 0>" undef, i1 %10, 0
  store %"class.hls::stream<bool, 0>" %oldret, %"class.hls::stream<bool, 0>"* %3
  %11 = bitcast %"class.hls::stream<bool, 0>"* %3 to i8*
  %12 = bitcast %"class.hls::stream<bool, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %11, i8* %12)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i1 @"_llvm.fpga.pack.bits.i1.s_class.hls::stream<bool, 0>s"(%"class.hls::stream<bool, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<bool, 0>" %A, 0
  ret i1 %A.0
}

declare void @apatb_cyclic_prefix_removal_hw(%"class.hls::stream<ComplexT, 0>"*, %"class.hls::stream<ComplexT, 0>"*, i1*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<ComplexT, 0>"* noalias, %"class.hls::stream<ComplexT, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ComplexT, 0>"* noalias, %"class.hls::stream<ComplexT, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<bool, 0>"* noalias, i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ComplexT, 0>"(%"class.hls::stream<ComplexT, 0>"* %0, %"class.hls::stream<ComplexT, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ComplexT, 0>"(%"class.hls::stream<ComplexT, 0>"* %2, %"class.hls::stream<ComplexT, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.4"(%"class.hls::stream<bool, 0>"* %4, i1* align 512 %5)
  ret void
}

define void @cyclic_prefix_removal_hw_stub_wrapper(%"class.hls::stream<ComplexT, 0>"*, %"class.hls::stream<ComplexT, 0>"*, i1*) #7 {
entry:
  %3 = alloca %"class.hls::stream<bool, 0>"
  call void @copy_out(%"class.hls::stream<ComplexT, 0>"* null, %"class.hls::stream<ComplexT, 0>"* %0, %"class.hls::stream<ComplexT, 0>"* null, %"class.hls::stream<ComplexT, 0>"* %1, %"class.hls::stream<bool, 0>"* %3, i1* %2)
  call void @cyclic_prefix_removal_hw_stub(%"class.hls::stream<ComplexT, 0>"* %0, %"class.hls::stream<ComplexT, 0>"* %1, %"class.hls::stream<bool, 0>"* %3)
  call void @copy_in(%"class.hls::stream<ComplexT, 0>"* null, %"class.hls::stream<ComplexT, 0>"* %0, %"class.hls::stream<ComplexT, 0>"* null, %"class.hls::stream<ComplexT, 0>"* %1, %"class.hls::stream<bool, 0>"* %3, i1* %2)
  ret void
}

declare void @cyclic_prefix_removal_hw_stub(%"class.hls::stream<ComplexT, 0>"*, %"class.hls::stream<ComplexT, 0>"*, %"class.hls::stream<bool, 0>"*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { alwaysinline nounwind readnone }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="64" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="8" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
