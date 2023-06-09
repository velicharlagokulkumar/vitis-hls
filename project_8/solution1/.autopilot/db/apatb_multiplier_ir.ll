; ModuleID = 'C:/Users/velic/AppData/Roaming/Xilinx/Vitis/project_8/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<28, 4, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<28, 4, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<28, true>" }
%"struct.ssdm_int<28, true>" = type { i28 }
%"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<56, 8, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<56, 8, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<56, true>" }
%"struct.ssdm_int<56, true>" = type { i56 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_multiplier_ir(%"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>"* nocapture readonly %a, %"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>"* nocapture readonly %b, %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull %c) local_unnamed_addr #0 {
entry:
  %c_copy = alloca i56, align 512
  call fastcc void @copy_in(%"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* nonnull %c, i56* nonnull align 512 %c_copy)
  call void @apatb_multiplier_hw(%"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>"* %a, %"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>"* %b, i56* %c_copy)
  call void @copy_back(%"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* %c, i56* %c_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(%"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="0", i56* noalias nocapture align 512 "unpacked"="1.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"(i56* align 512 %1, %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* %0)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(%"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i56* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>.4"(%"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* %0, i56* align 512 %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>.4"(%"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i56* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* %0, i32 0, i32 0, i32 0, i32 0
  %3 = load i56, i56* %1, align 512
  store i56 %3, i56* %.01.0.05, align 8
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"(i56* noalias nocapture align 512 "unpacked"="0.0.0.0", %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* %1, i32 0, i32 0, i32 0, i32 0
  %3 = load i56, i56* %.0.0.04, align 8
  store i56 %3, i56* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_multiplier_hw(%"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>"*, i56*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back(%"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i56* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>.4"(%"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* %0, i56* align 512 %1)
  ret void
}

define void @multiplier_hw_stub_wrapper(%"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>"*, i56*) #4 {
entry:
  %3 = alloca %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"
  call void @copy_out(%"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* %3, i56* %2)
  call void @multiplier_hw_stub(%"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>"* %0, %"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>"* %1, %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* %3)
  call void @copy_in(%"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"* %3, i56* %2)
  ret void
}

declare void @multiplier_hw_stub(%"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<28, 4, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<56, 8, AP_TRN, AP_WRAP, 0>"*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
