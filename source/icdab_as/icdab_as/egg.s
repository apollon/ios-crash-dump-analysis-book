//
//  egg.s
//  icdab_as
//
//  Created by Faisal Memon on 20/07/2018.
//  Copyright © 2018 Faisal Memon. All rights reserved.
//

.section    __TEXT,__text,regular,pure_instructions
.ios_version_min 11, 3
.globl    _bad_instruction_egg               ; -- Begin function bad_instruction_egg
.p2align    2
_bad_instruction_egg:                              ; @bad_instruction_egg
Lfunc_begin0:
.cfi_startproc
; BB#0:
sub    sp, sp, #16             ; =16
Lcfi0:
.cfi_def_cfa_offset 16
str    w0, [sp, #12]
str    w1, [sp, #8]
Ltmp1:
.loc    2 12 18 prologue_end
ldr    w0, [sp, #12]
.loc    2 12 9 is_stmt 0
str    w0, [sp, #4]
.loc    2 13 15 is_stmt 1
ldr    w0, [sp, #8]
.loc    2 13 21 is_stmt 0
add    w1, w0, #1              ; =1
cmp        w0, #0          ; =0
csel    w0, w1, w0, lt
asr    w0, w0, #1
.loc    2 13 12
ldr    w1, [sp, #4]
add        w0, w1, w0
str    w0, [sp, #4]
.loc    2 14 12 is_stmt 1
ldr    w0, [sp, #4]
.loc    2 14 5 is_stmt 0        
add    sp, sp, #16             ; =16
ret
Ltmp2:
Lfunc_end0:
.cfi_endproc
