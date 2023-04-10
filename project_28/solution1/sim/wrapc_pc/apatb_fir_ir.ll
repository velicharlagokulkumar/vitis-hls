; ModuleID = 'C:/Users/velic/AppData/Roaming/Xilinx/Vitis/project_28/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<48, 24, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<48, 24, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<48, true>" }
%"struct.ssdm_int<48, true>" = type { i48 }
%"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<24, 12, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<24, 12, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<24, true>" }
%"struct.ssdm_int<24, true>" = type { i24 }

; Function Attrs: noinline
define void @apatb_fir_ir(%"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull %y, %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4" %c, %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"* nocapture readonly %x) local_unnamed_addr #0 {
entry:
  %y_copy = alloca i48, align 512
  %c_copy = alloca [4 x i24], align 512
  %0 = bitcast %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"* %c to [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]*
  call fastcc void @copy_in(%"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* nonnull %y, i48* nonnull align 512 %y_copy, [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* nonnull %0, [4 x i24]* nonnull align 512 %c_copy)
  %1 = getelementptr [4 x i24], [4 x i24]* %c_copy, i32 0, i32 0
  call void @apatb_fir_hw(i48* %y_copy, i24* %1, %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"* %x)
  call void @copy_back(%"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* %y, i48* %y_copy, [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %0, [4 x i24]* %c_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(%"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="0", i48* noalias nocapture align 512 "unpacked"="1.0.0.0", [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="2", [4 x i24]* noalias nocapture align 512 "unpacked"="3.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>.32"(i48* align 512 %1, %"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0a4struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"([4 x i24]* align 512 %3, [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(%"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i48* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="2", [4 x i24]* noalias nocapture readonly align 512 "unpacked"="3.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* %0, i48* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a4struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>.8"([4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %2, [4 x i24]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a4struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>.8"([4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [4 x i24]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4 x i24], [4 x i24]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"], [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i24, i24* %src.addr.0.0.05, align 4
  store i24 %3, i24* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a4struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"([4 x i24]* noalias nocapture align 512 "unpacked"="0.0.0.0", [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"], [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [4 x i24], [4 x i24]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i24, i24* %src.addr.0.0.05, align 4
  store i24 %3, i24* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>.32"(i48* noalias nocapture align 512 "unpacked"="0.0.0.0", %"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* %1, i32 0, i32 0, i32 0, i32 0
  %3 = load i48, i48* %.0.0.04, align 8
  store i48 %3, i48* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i48* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* %0, i32 0, i32 0, i32 0, i32 0
  %3 = load i48, i48* %1, align 512
  store i48 %3, i48* %.01.0.05, align 8
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_fir_hw(i48*, i24*, %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back(%"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i48* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="2", [4 x i24]* noalias nocapture readonly align 512 "unpacked"="3.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* %0, i48* align 512 %1)
  ret void
}

define void @fir_hw_stub_wrapper(i48*, i24*, %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"*) #4 {
entry:
  %3 = alloca %"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"
  %4 = alloca [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]
  %5 = bitcast i24* %1 to [4 x i24]*
  call void @copy_out(%"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* %3, i48* %0, [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %4, [4 x i24]* %5)
  %6 = bitcast [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %4 to %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"*
  call void @fir_hw_stub(%"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* %3, %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"* %6, %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"* %2)
  call void @copy_in(%"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"* %3, i48* %0, [4 x %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"]* %4, [4 x i24]* %5)
  ret void
}

declare void @fir_hw_stub(%"struct.ap_fixed<48, 24, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<24, 12, AP_TRN, AP_WRAP, 0>"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
