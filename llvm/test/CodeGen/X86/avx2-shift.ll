; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=i686-unknown-unknown -mattr=+avx2 | FileCheck %s --check-prefix=X32
; RUN: llc < %s -mtriple=x86_64-unknown-unknown -mattr=+avx2 | FileCheck %s --check-prefix=X64

define <4 x i32> @variable_shl0(<4 x i32> %x, <4 x i32> %y) {
; X32-LABEL: variable_shl0:
; X32:       # %bb.0:
; X32-NEXT:    vpsllvd %xmm1, %xmm0, %xmm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_shl0:
; X64:       # %bb.0:
; X64-NEXT:    vpsllvd %xmm1, %xmm0, %xmm0
; X64-NEXT:    retq
  %k = shl <4 x i32> %x, %y
  ret <4 x i32> %k
}

define <8 x i32> @variable_shl1(<8 x i32> %x, <8 x i32> %y) {
; X32-LABEL: variable_shl1:
; X32:       # %bb.0:
; X32-NEXT:    vpsllvd %ymm1, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_shl1:
; X64:       # %bb.0:
; X64-NEXT:    vpsllvd %ymm1, %ymm0, %ymm0
; X64-NEXT:    retq
  %k = shl <8 x i32> %x, %y
  ret <8 x i32> %k
}

define <2 x i64> @variable_shl2(<2 x i64> %x, <2 x i64> %y) {
; X32-LABEL: variable_shl2:
; X32:       # %bb.0:
; X32-NEXT:    vpsllvq %xmm1, %xmm0, %xmm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_shl2:
; X64:       # %bb.0:
; X64-NEXT:    vpsllvq %xmm1, %xmm0, %xmm0
; X64-NEXT:    retq
  %k = shl <2 x i64> %x, %y
  ret <2 x i64> %k
}

define <4 x i64> @variable_shl3(<4 x i64> %x, <4 x i64> %y) {
; X32-LABEL: variable_shl3:
; X32:       # %bb.0:
; X32-NEXT:    vpsllvq %ymm1, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_shl3:
; X64:       # %bb.0:
; X64-NEXT:    vpsllvq %ymm1, %ymm0, %ymm0
; X64-NEXT:    retq
  %k = shl <4 x i64> %x, %y
  ret <4 x i64> %k
}

define <4 x i32> @variable_srl0(<4 x i32> %x, <4 x i32> %y) {
; X32-LABEL: variable_srl0:
; X32:       # %bb.0:
; X32-NEXT:    vpsrlvd %xmm1, %xmm0, %xmm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_srl0:
; X64:       # %bb.0:
; X64-NEXT:    vpsrlvd %xmm1, %xmm0, %xmm0
; X64-NEXT:    retq
  %k = lshr <4 x i32> %x, %y
  ret <4 x i32> %k
}

define <8 x i32> @variable_srl1(<8 x i32> %x, <8 x i32> %y) {
; X32-LABEL: variable_srl1:
; X32:       # %bb.0:
; X32-NEXT:    vpsrlvd %ymm1, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_srl1:
; X64:       # %bb.0:
; X64-NEXT:    vpsrlvd %ymm1, %ymm0, %ymm0
; X64-NEXT:    retq
  %k = lshr <8 x i32> %x, %y
  ret <8 x i32> %k
}

define <2 x i64> @variable_srl2(<2 x i64> %x, <2 x i64> %y) {
; X32-LABEL: variable_srl2:
; X32:       # %bb.0:
; X32-NEXT:    vpsrlvq %xmm1, %xmm0, %xmm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_srl2:
; X64:       # %bb.0:
; X64-NEXT:    vpsrlvq %xmm1, %xmm0, %xmm0
; X64-NEXT:    retq
  %k = lshr <2 x i64> %x, %y
  ret <2 x i64> %k
}

define <4 x i64> @variable_srl3(<4 x i64> %x, <4 x i64> %y) {
; X32-LABEL: variable_srl3:
; X32:       # %bb.0:
; X32-NEXT:    vpsrlvq %ymm1, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_srl3:
; X64:       # %bb.0:
; X64-NEXT:    vpsrlvq %ymm1, %ymm0, %ymm0
; X64-NEXT:    retq
  %k = lshr <4 x i64> %x, %y
  ret <4 x i64> %k
}

define <4 x i32> @variable_sra0(<4 x i32> %x, <4 x i32> %y) {
; X32-LABEL: variable_sra0:
; X32:       # %bb.0:
; X32-NEXT:    vpsravd %xmm1, %xmm0, %xmm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_sra0:
; X64:       # %bb.0:
; X64-NEXT:    vpsravd %xmm1, %xmm0, %xmm0
; X64-NEXT:    retq
  %k = ashr <4 x i32> %x, %y
  ret <4 x i32> %k
}

define <8 x i32> @variable_sra1(<8 x i32> %x, <8 x i32> %y) {
; X32-LABEL: variable_sra1:
; X32:       # %bb.0:
; X32-NEXT:    vpsravd %ymm1, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_sra1:
; X64:       # %bb.0:
; X64-NEXT:    vpsravd %ymm1, %ymm0, %ymm0
; X64-NEXT:    retq
  %k = ashr <8 x i32> %x, %y
  ret <8 x i32> %k
}

;;; Shift left

define <8 x i32> @vshift00(<8 x i32> %a) nounwind readnone {
; X32-LABEL: vshift00:
; X32:       # %bb.0:
; X32-NEXT:    vpslld $2, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: vshift00:
; X64:       # %bb.0:
; X64-NEXT:    vpslld $2, %ymm0, %ymm0
; X64-NEXT:    retq
  %s = shl <8 x i32> %a, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  ret <8 x i32> %s
}

define <16 x i16> @vshift01(<16 x i16> %a) nounwind readnone {
; X32-LABEL: vshift01:
; X32:       # %bb.0:
; X32-NEXT:    vpsllw $2, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: vshift01:
; X64:       # %bb.0:
; X64-NEXT:    vpsllw $2, %ymm0, %ymm0
; X64-NEXT:    retq
  %s = shl <16 x i16> %a, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  ret <16 x i16> %s
}

define <4 x i64> @vshift02(<4 x i64> %a) nounwind readnone {
; X32-LABEL: vshift02:
; X32:       # %bb.0:
; X32-NEXT:    vpsllq $2, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: vshift02:
; X64:       # %bb.0:
; X64-NEXT:    vpsllq $2, %ymm0, %ymm0
; X64-NEXT:    retq
  %s = shl <4 x i64> %a, <i64 2, i64 2, i64 2, i64 2>
  ret <4 x i64> %s
}

;;; Logical Shift right

define <8 x i32> @vshift03(<8 x i32> %a) nounwind readnone {
; X32-LABEL: vshift03:
; X32:       # %bb.0:
; X32-NEXT:    vpsrld $2, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: vshift03:
; X64:       # %bb.0:
; X64-NEXT:    vpsrld $2, %ymm0, %ymm0
; X64-NEXT:    retq
  %s = lshr <8 x i32> %a, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  ret <8 x i32> %s
}

define <16 x i16> @vshift04(<16 x i16> %a) nounwind readnone {
; X32-LABEL: vshift04:
; X32:       # %bb.0:
; X32-NEXT:    vpsrlw $2, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: vshift04:
; X64:       # %bb.0:
; X64-NEXT:    vpsrlw $2, %ymm0, %ymm0
; X64-NEXT:    retq
  %s = lshr <16 x i16> %a, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  ret <16 x i16> %s
}

define <4 x i64> @vshift05(<4 x i64> %a) nounwind readnone {
; X32-LABEL: vshift05:
; X32:       # %bb.0:
; X32-NEXT:    vpsrlq $2, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: vshift05:
; X64:       # %bb.0:
; X64-NEXT:    vpsrlq $2, %ymm0, %ymm0
; X64-NEXT:    retq
  %s = lshr <4 x i64> %a, <i64 2, i64 2, i64 2, i64 2>
  ret <4 x i64> %s
}

;;; Arithmetic Shift right

define <8 x i32> @vshift06(<8 x i32> %a) nounwind readnone {
; X32-LABEL: vshift06:
; X32:       # %bb.0:
; X32-NEXT:    vpsrad $2, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: vshift06:
; X64:       # %bb.0:
; X64-NEXT:    vpsrad $2, %ymm0, %ymm0
; X64-NEXT:    retq
  %s = ashr <8 x i32> %a, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  ret <8 x i32> %s
}

define <16 x i16> @vshift07(<16 x i16> %a) nounwind readnone {
; X32-LABEL: vshift07:
; X32:       # %bb.0:
; X32-NEXT:    vpsraw $2, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: vshift07:
; X64:       # %bb.0:
; X64-NEXT:    vpsraw $2, %ymm0, %ymm0
; X64-NEXT:    retq
  %s = ashr <16 x i16> %a, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  ret <16 x i16> %s
}

define <4 x i32> @variable_sra0_load(<4 x i32> %x, ptr %y) {
; X32-LABEL: variable_sra0_load:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vpsravd (%eax), %xmm0, %xmm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_sra0_load:
; X64:       # %bb.0:
; X64-NEXT:    vpsravd (%rdi), %xmm0, %xmm0
; X64-NEXT:    retq
  %y1 = load <4 x i32>, ptr %y
  %k = ashr <4 x i32> %x, %y1
  ret <4 x i32> %k
}

define <8 x i32> @variable_sra1_load(<8 x i32> %x, ptr %y) {
; X32-LABEL: variable_sra1_load:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vpsravd (%eax), %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_sra1_load:
; X64:       # %bb.0:
; X64-NEXT:    vpsravd (%rdi), %ymm0, %ymm0
; X64-NEXT:    retq
  %y1 = load <8 x i32>, ptr %y
  %k = ashr <8 x i32> %x, %y1
  ret <8 x i32> %k
}

define <4 x i32> @variable_shl0_load(<4 x i32> %x, ptr %y) {
; X32-LABEL: variable_shl0_load:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vpsllvd (%eax), %xmm0, %xmm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_shl0_load:
; X64:       # %bb.0:
; X64-NEXT:    vpsllvd (%rdi), %xmm0, %xmm0
; X64-NEXT:    retq
  %y1 = load <4 x i32>, ptr %y
  %k = shl <4 x i32> %x, %y1
  ret <4 x i32> %k
}

define <8 x i32> @variable_shl1_load(<8 x i32> %x, ptr %y) {
; X32-LABEL: variable_shl1_load:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vpsllvd (%eax), %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_shl1_load:
; X64:       # %bb.0:
; X64-NEXT:    vpsllvd (%rdi), %ymm0, %ymm0
; X64-NEXT:    retq
  %y1 = load <8 x i32>, ptr %y
  %k = shl <8 x i32> %x, %y1
  ret <8 x i32> %k
}

define <2 x i64> @variable_shl2_load(<2 x i64> %x, ptr %y) {
; X32-LABEL: variable_shl2_load:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vpsllvq (%eax), %xmm0, %xmm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_shl2_load:
; X64:       # %bb.0:
; X64-NEXT:    vpsllvq (%rdi), %xmm0, %xmm0
; X64-NEXT:    retq
  %y1 = load <2 x i64>, ptr %y
  %k = shl <2 x i64> %x, %y1
  ret <2 x i64> %k
}

define <4 x i64> @variable_shl3_load(<4 x i64> %x, ptr %y) {
; X32-LABEL: variable_shl3_load:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vpsllvq (%eax), %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_shl3_load:
; X64:       # %bb.0:
; X64-NEXT:    vpsllvq (%rdi), %ymm0, %ymm0
; X64-NEXT:    retq
  %y1 = load <4 x i64>, ptr %y
  %k = shl <4 x i64> %x, %y1
  ret <4 x i64> %k
}

define <4 x i32> @variable_srl0_load(<4 x i32> %x, ptr %y) {
; X32-LABEL: variable_srl0_load:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vpsrlvd (%eax), %xmm0, %xmm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_srl0_load:
; X64:       # %bb.0:
; X64-NEXT:    vpsrlvd (%rdi), %xmm0, %xmm0
; X64-NEXT:    retq
  %y1 = load <4 x i32>, ptr %y
  %k = lshr <4 x i32> %x, %y1
  ret <4 x i32> %k
}

define <8 x i32> @variable_srl1_load(<8 x i32> %x, ptr %y) {
; X32-LABEL: variable_srl1_load:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vpsrlvd (%eax), %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_srl1_load:
; X64:       # %bb.0:
; X64-NEXT:    vpsrlvd (%rdi), %ymm0, %ymm0
; X64-NEXT:    retq
  %y1 = load <8 x i32>, ptr %y
  %k = lshr <8 x i32> %x, %y1
  ret <8 x i32> %k
}

define <2 x i64> @variable_srl2_load(<2 x i64> %x, ptr %y) {
; X32-LABEL: variable_srl2_load:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vpsrlvq (%eax), %xmm0, %xmm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_srl2_load:
; X64:       # %bb.0:
; X64-NEXT:    vpsrlvq (%rdi), %xmm0, %xmm0
; X64-NEXT:    retq
  %y1 = load <2 x i64>, ptr %y
  %k = lshr <2 x i64> %x, %y1
  ret <2 x i64> %k
}

define <4 x i64> @variable_srl3_load(<4 x i64> %x, ptr %y) {
; X32-LABEL: variable_srl3_load:
; X32:       # %bb.0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    vpsrlvq (%eax), %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: variable_srl3_load:
; X64:       # %bb.0:
; X64-NEXT:    vpsrlvq (%rdi), %ymm0, %ymm0
; X64-NEXT:    retq
  %y1 = load <4 x i64>, ptr %y
  %k = lshr <4 x i64> %x, %y1
  ret <4 x i64> %k
}

define <32 x i8> @shl9(<32 x i8> %A) nounwind {
; X32-LABEL: shl9:
; X32:       # %bb.0:
; X32-NEXT:    vpsllw $3, %ymm0, %ymm0
; X32-NEXT:    vpand {{\.?LCPI[0-9]+_[0-9]+}}, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: shl9:
; X64:       # %bb.0:
; X64-NEXT:    vpsllw $3, %ymm0, %ymm0
; X64-NEXT:    vpand {{\.?LCPI[0-9]+_[0-9]+}}(%rip), %ymm0, %ymm0
; X64-NEXT:    retq
  %B = shl <32 x i8> %A, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>
  ret <32 x i8> %B
}

define <32 x i8> @shr9(<32 x i8> %A) nounwind {
; X32-LABEL: shr9:
; X32:       # %bb.0:
; X32-NEXT:    vpsrlw $3, %ymm0, %ymm0
; X32-NEXT:    vpand {{\.?LCPI[0-9]+_[0-9]+}}, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: shr9:
; X64:       # %bb.0:
; X64-NEXT:    vpsrlw $3, %ymm0, %ymm0
; X64-NEXT:    vpand {{\.?LCPI[0-9]+_[0-9]+}}(%rip), %ymm0, %ymm0
; X64-NEXT:    retq
  %B = lshr <32 x i8> %A, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>
  ret <32 x i8> %B
}

define <32 x i8> @sra_v32i8_7(<32 x i8> %A) nounwind {
; X32-LABEL: sra_v32i8_7:
; X32:       # %bb.0:
; X32-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; X32-NEXT:    vpcmpgtb %ymm0, %ymm1, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: sra_v32i8_7:
; X64:       # %bb.0:
; X64-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; X64-NEXT:    vpcmpgtb %ymm0, %ymm1, %ymm0
; X64-NEXT:    retq
  %B = ashr <32 x i8> %A, <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7>
  ret <32 x i8> %B
}

define <32 x i8> @sra_v32i8(<32 x i8> %A) nounwind {
; X32-LABEL: sra_v32i8:
; X32:       # %bb.0:
; X32-NEXT:    vpsrlw $3, %ymm0, %ymm0
; X32-NEXT:    vpand {{\.?LCPI[0-9]+_[0-9]+}}, %ymm0, %ymm0
; X32-NEXT:    vmovdqa {{.*#+}} ymm1 = [16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16]
; X32-NEXT:    vpxor %ymm1, %ymm0, %ymm0
; X32-NEXT:    vpsubb %ymm1, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: sra_v32i8:
; X64:       # %bb.0:
; X64-NEXT:    vpsrlw $3, %ymm0, %ymm0
; X64-NEXT:    vpand {{\.?LCPI[0-9]+_[0-9]+}}(%rip), %ymm0, %ymm0
; X64-NEXT:    vmovdqa {{.*#+}} ymm1 = [16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16]
; X64-NEXT:    vpxor %ymm1, %ymm0, %ymm0
; X64-NEXT:    vpsubb %ymm1, %ymm0, %ymm0
; X64-NEXT:    retq
  %B = ashr <32 x i8> %A, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>
  ret <32 x i8> %B
}

define <16 x i16> @sext_v16i16(<16 x i16> %a) nounwind {
; X32-LABEL: sext_v16i16:
; X32:       # %bb.0:
; X32-NEXT:    vpsllw $8, %ymm0, %ymm0
; X32-NEXT:    vpsraw $8, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: sext_v16i16:
; X64:       # %bb.0:
; X64-NEXT:    vpsllw $8, %ymm0, %ymm0
; X64-NEXT:    vpsraw $8, %ymm0, %ymm0
; X64-NEXT:    retq
  %b = trunc <16 x i16> %a to <16 x i8>
  %c = sext <16 x i8> %b to <16 x i16>
  ret <16 x i16> %c
}

define <8 x i32> @sext_v8i32(<8 x i32> %a) nounwind {
; X32-LABEL: sext_v8i32:
; X32:       # %bb.0:
; X32-NEXT:    vpslld $16, %ymm0, %ymm0
; X32-NEXT:    vpsrad $16, %ymm0, %ymm0
; X32-NEXT:    retl
;
; X64-LABEL: sext_v8i32:
; X64:       # %bb.0:
; X64-NEXT:    vpslld $16, %ymm0, %ymm0
; X64-NEXT:    vpsrad $16, %ymm0, %ymm0
; X64-NEXT:    retq
  %b = trunc <8 x i32> %a to <8 x i16>
  %c = sext <8 x i16> %b to <8 x i32>
  ret <8 x i32> %c
}

define <8 x i16> @variable_shl16(<8 x i16> %lhs, <8  x i16> %rhs) {
; X32-LABEL: variable_shl16:
; X32:       # %bb.0:
; X32-NEXT:    vpxor %xmm2, %xmm2, %xmm2
; X32-NEXT:    vpblendw {{.*#+}} xmm3 = xmm2[0],xmm0[1],xmm2[2],xmm0[3],xmm2[4],xmm0[5],xmm2[6],xmm0[7]
; X32-NEXT:    vpsrld $16, %xmm1, %xmm4
; X32-NEXT:    vpsllvd %xmm4, %xmm3, %xmm3
; X32-NEXT:    vpblendw {{.*#+}} xmm1 = xmm1[0],xmm2[1],xmm1[2],xmm2[3],xmm1[4],xmm2[5],xmm1[6],xmm2[7]
; X32-NEXT:    vpsllvd %xmm1, %xmm0, %xmm0
; X32-NEXT:    vpblendw {{.*#+}} xmm0 = xmm0[0],xmm3[1],xmm0[2],xmm3[3],xmm0[4],xmm3[5],xmm0[6],xmm3[7]
; X32-NEXT:    retl
;
; X64-LABEL: variable_shl16:
; X64:       # %bb.0:
; X64-NEXT:    vpxor %xmm2, %xmm2, %xmm2
; X64-NEXT:    vpblendw {{.*#+}} xmm3 = xmm2[0],xmm0[1],xmm2[2],xmm0[3],xmm2[4],xmm0[5],xmm2[6],xmm0[7]
; X64-NEXT:    vpsrld $16, %xmm1, %xmm4
; X64-NEXT:    vpsllvd %xmm4, %xmm3, %xmm3
; X64-NEXT:    vpblendw {{.*#+}} xmm1 = xmm1[0],xmm2[1],xmm1[2],xmm2[3],xmm1[4],xmm2[5],xmm1[6],xmm2[7]
; X64-NEXT:    vpsllvd %xmm1, %xmm0, %xmm0
; X64-NEXT:    vpblendw {{.*#+}} xmm0 = xmm0[0],xmm3[1],xmm0[2],xmm3[3],xmm0[4],xmm3[5],xmm0[6],xmm3[7]
; X64-NEXT:    retq
  %res = shl <8 x i16> %lhs, %rhs
  ret <8 x i16> %res
}

define <8 x i16> @variable_ashr16(<8 x i16> %lhs, <8  x i16> %rhs) {
; X32-LABEL: variable_ashr16:
; X32:       # %bb.0:
; X32-NEXT:    vpsrld $16, %xmm1, %xmm2
; X32-NEXT:    vpsravd %xmm2, %xmm0, %xmm2
; X32-NEXT:    vpxor %xmm3, %xmm3, %xmm3
; X32-NEXT:    vpblendw {{.*#+}} xmm1 = xmm1[0],xmm3[1],xmm1[2],xmm3[3],xmm1[4],xmm3[5],xmm1[6],xmm3[7]
; X32-NEXT:    vpslld $16, %xmm0, %xmm0
; X32-NEXT:    vpsravd %xmm1, %xmm0, %xmm0
; X32-NEXT:    vpsrld $16, %xmm0, %xmm0
; X32-NEXT:    vpblendw {{.*#+}} xmm0 = xmm0[0],xmm2[1],xmm0[2],xmm2[3],xmm0[4],xmm2[5],xmm0[6],xmm2[7]
; X32-NEXT:    retl
;
; X64-LABEL: variable_ashr16:
; X64:       # %bb.0:
; X64-NEXT:    vpsrld $16, %xmm1, %xmm2
; X64-NEXT:    vpsravd %xmm2, %xmm0, %xmm2
; X64-NEXT:    vpxor %xmm3, %xmm3, %xmm3
; X64-NEXT:    vpblendw {{.*#+}} xmm1 = xmm1[0],xmm3[1],xmm1[2],xmm3[3],xmm1[4],xmm3[5],xmm1[6],xmm3[7]
; X64-NEXT:    vpslld $16, %xmm0, %xmm0
; X64-NEXT:    vpsravd %xmm1, %xmm0, %xmm0
; X64-NEXT:    vpsrld $16, %xmm0, %xmm0
; X64-NEXT:    vpblendw {{.*#+}} xmm0 = xmm0[0],xmm2[1],xmm0[2],xmm2[3],xmm0[4],xmm2[5],xmm0[6],xmm2[7]
; X64-NEXT:    retq
  %res = ashr <8 x i16> %lhs, %rhs
  ret <8 x i16> %res
}

define <8 x i16> @variable_lshr16(<8 x i16> %lhs, <8  x i16> %rhs) {
; X32-LABEL: variable_lshr16:
; X32:       # %bb.0:
; X32-NEXT:    vpxor %xmm2, %xmm2, %xmm2
; X32-NEXT:    vpblendw {{.*#+}} xmm3 = xmm1[0],xmm2[1],xmm1[2],xmm2[3],xmm1[4],xmm2[5],xmm1[6],xmm2[7]
; X32-NEXT:    vpblendw {{.*#+}} xmm2 = xmm0[0],xmm2[1],xmm0[2],xmm2[3],xmm0[4],xmm2[5],xmm0[6],xmm2[7]
; X32-NEXT:    vpsrlvd %xmm3, %xmm2, %xmm2
; X32-NEXT:    vpsrld $16, %xmm1, %xmm1
; X32-NEXT:    vpsrlvd %xmm1, %xmm0, %xmm0
; X32-NEXT:    vpblendw {{.*#+}} xmm0 = xmm2[0],xmm0[1],xmm2[2],xmm0[3],xmm2[4],xmm0[5],xmm2[6],xmm0[7]
; X32-NEXT:    retl
;
; X64-LABEL: variable_lshr16:
; X64:       # %bb.0:
; X64-NEXT:    vpxor %xmm2, %xmm2, %xmm2
; X64-NEXT:    vpblendw {{.*#+}} xmm3 = xmm1[0],xmm2[1],xmm1[2],xmm2[3],xmm1[4],xmm2[5],xmm1[6],xmm2[7]
; X64-NEXT:    vpblendw {{.*#+}} xmm2 = xmm0[0],xmm2[1],xmm0[2],xmm2[3],xmm0[4],xmm2[5],xmm0[6],xmm2[7]
; X64-NEXT:    vpsrlvd %xmm3, %xmm2, %xmm2
; X64-NEXT:    vpsrld $16, %xmm1, %xmm1
; X64-NEXT:    vpsrlvd %xmm1, %xmm0, %xmm0
; X64-NEXT:    vpblendw {{.*#+}} xmm0 = xmm2[0],xmm0[1],xmm2[2],xmm0[3],xmm2[4],xmm0[5],xmm2[6],xmm0[7]
; X64-NEXT:    retq
  %res = lshr <8 x i16> %lhs, %rhs
  ret <8 x i16> %res
}
