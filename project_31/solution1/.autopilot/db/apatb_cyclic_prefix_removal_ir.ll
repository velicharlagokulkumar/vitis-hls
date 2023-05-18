; ModuleID = 'C:/Users/velic/OneDrive/Desktop/vitis-hls/project_31/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.std::complex<float>" = type { { float, float } }

; Function Attrs: noinline
define void @apatb_cyclic_prefix_removal_ir(%"struct.std::complex<float>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8800" %in_samples, %"struct.std::complex<float>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="8192" %out_samples) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 70400)
  %in_samples_copy = bitcast i8* %malloccall to [8800 x %"struct.std::complex<float>"]*
  %malloccall1 = tail call i8* @malloc(i64 65536)
  %out_samples_copy = bitcast i8* %malloccall1 to [8192 x %"struct.std::complex<float>"]*
  %0 = bitcast %"struct.std::complex<float>"* %in_samples to [8800 x %"struct.std::complex<float>"]*
  %1 = bitcast %"struct.std::complex<float>"* %out_samples to [8192 x %"struct.std::complex<float>"]*
  call fastcc void @copy_in([8800 x %"struct.std::complex<float>"]* nonnull %0, [8800 x %"struct.std::complex<float>"]* %in_samples_copy, [8192 x %"struct.std::complex<float>"]* nonnull %1, [8192 x %"struct.std::complex<float>"]* %out_samples_copy)
  %2 = getelementptr inbounds [8800 x %"struct.std::complex<float>"], [8800 x %"struct.std::complex<float>"]* %in_samples_copy, i32 0, i32 0
  %3 = getelementptr inbounds [8192 x %"struct.std::complex<float>"], [8192 x %"struct.std::complex<float>"]* %out_samples_copy, i32 0, i32 0
  call void @apatb_cyclic_prefix_removal_hw(%"struct.std::complex<float>"* %2, %"struct.std::complex<float>"* %3)
  call void @copy_back([8800 x %"struct.std::complex<float>"]* %0, [8800 x %"struct.std::complex<float>"]* %in_samples_copy, [8192 x %"struct.std::complex<float>"]* %1, [8192 x %"struct.std::complex<float>"]* %out_samples_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([8800 x %"struct.std::complex<float>"]* noalias readonly, [8800 x %"struct.std::complex<float>"]* noalias, [8192 x %"struct.std::complex<float>"]* noalias readonly, [8192 x %"struct.std::complex<float>"]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8800struct.std::complex<float>"([8800 x %"struct.std::complex<float>"]* %1, [8800 x %"struct.std::complex<float>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a8192struct.std::complex<float>"([8192 x %"struct.std::complex<float>"]* %3, [8192 x %"struct.std::complex<float>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a8800struct.std::complex<float>"([8800 x %"struct.std::complex<float>"]* noalias, [8800 x %"struct.std::complex<float>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [8800 x %"struct.std::complex<float>"]* %0, null
  %3 = icmp eq [8800 x %"struct.std::complex<float>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.03 = getelementptr [8800 x %"struct.std::complex<float>"], [8800 x %"struct.std::complex<float>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [8800 x %"struct.std::complex<float>"], [8800 x %"struct.std::complex<float>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0
  %5 = load float, float* %src.addr.0.03, align 4
  store float %5, float* %dst.addr.0.04, align 4
  %src.addr.0.15 = getelementptr [8800 x %"struct.std::complex<float>"], [8800 x %"struct.std::complex<float>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 1
  %dst.addr.0.16 = getelementptr [8800 x %"struct.std::complex<float>"], [8800 x %"struct.std::complex<float>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 1
  %6 = load float, float* %src.addr.0.15, align 4
  store float %6, float* %dst.addr.0.16, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8800
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a8192struct.std::complex<float>"([8192 x %"struct.std::complex<float>"]* noalias, [8192 x %"struct.std::complex<float>"]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [8192 x %"struct.std::complex<float>"]* %0, null
  %3 = icmp eq [8192 x %"struct.std::complex<float>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.03 = getelementptr [8192 x %"struct.std::complex<float>"], [8192 x %"struct.std::complex<float>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [8192 x %"struct.std::complex<float>"], [8192 x %"struct.std::complex<float>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0
  %5 = load float, float* %src.addr.0.03, align 4
  store float %5, float* %dst.addr.0.04, align 4
  %src.addr.0.15 = getelementptr [8192 x %"struct.std::complex<float>"], [8192 x %"struct.std::complex<float>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 1
  %dst.addr.0.16 = getelementptr [8192 x %"struct.std::complex<float>"], [8192 x %"struct.std::complex<float>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 1
  %6 = load float, float* %src.addr.0.15, align 4
  store float %6, float* %dst.addr.0.16, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8192
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([8800 x %"struct.std::complex<float>"]* noalias, [8800 x %"struct.std::complex<float>"]* noalias readonly, [8192 x %"struct.std::complex<float>"]* noalias, [8192 x %"struct.std::complex<float>"]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8800struct.std::complex<float>"([8800 x %"struct.std::complex<float>"]* %0, [8800 x %"struct.std::complex<float>"]* %1)
  call fastcc void @"onebyonecpy_hls.p0a8192struct.std::complex<float>"([8192 x %"struct.std::complex<float>"]* %2, [8192 x %"struct.std::complex<float>"]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_cyclic_prefix_removal_hw(%"struct.std::complex<float>"*, %"struct.std::complex<float>"*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([8800 x %"struct.std::complex<float>"]* noalias, [8800 x %"struct.std::complex<float>"]* noalias readonly, [8192 x %"struct.std::complex<float>"]* noalias, [8192 x %"struct.std::complex<float>"]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8192struct.std::complex<float>"([8192 x %"struct.std::complex<float>"]* %2, [8192 x %"struct.std::complex<float>"]* %3)
  ret void
}

define void @cyclic_prefix_removal_hw_stub_wrapper(%"struct.std::complex<float>"*, %"struct.std::complex<float>"*) #4 {
entry:
  %2 = bitcast %"struct.std::complex<float>"* %0 to [8800 x %"struct.std::complex<float>"]*
  %3 = bitcast %"struct.std::complex<float>"* %1 to [8192 x %"struct.std::complex<float>"]*
  call void @copy_out([8800 x %"struct.std::complex<float>"]* null, [8800 x %"struct.std::complex<float>"]* %2, [8192 x %"struct.std::complex<float>"]* null, [8192 x %"struct.std::complex<float>"]* %3)
  %4 = bitcast [8800 x %"struct.std::complex<float>"]* %2 to %"struct.std::complex<float>"*
  %5 = bitcast [8192 x %"struct.std::complex<float>"]* %3 to %"struct.std::complex<float>"*
  call void @cyclic_prefix_removal_hw_stub(%"struct.std::complex<float>"* %4, %"struct.std::complex<float>"* %5)
  call void @copy_in([8800 x %"struct.std::complex<float>"]* null, [8800 x %"struct.std::complex<float>"]* %2, [8192 x %"struct.std::complex<float>"]* null, [8192 x %"struct.std::complex<float>"]* %3)
  ret void
}

declare void @cyclic_prefix_removal_hw_stub(%"struct.std::complex<float>"*, %"struct.std::complex<float>"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
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
