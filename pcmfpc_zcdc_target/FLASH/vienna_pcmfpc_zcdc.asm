;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                             PC v25.11.1.LTS *
;* Date/Time created: Mon Oct 26 09:58:51 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v25.11.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\FLASH")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("memset")
	.dwattr $C$DW$1, DW_AT_linkage_name("memset")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/string.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$1, DW_AT_decl_column(0x16)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$3)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$70)

	.dwendtag $C$DW$1

;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\opt2000.exe C:\\Users\\YAN\\AppData\\Local\\Temp\\{D41CA7BD-3A70-42C3-A884-1B969F018BC3} C:\\Users\\YAN\\AppData\\Local\\Temp\\{250738DD-AC31-49CA-BF14-D82A912EA055} --advice:performance=stdout 
;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\acia2000.exe -@C:\\Users\\YAN\\AppData\\Local\\Temp\\{4ED46043-7D34-4E39-BE52-A294C2DCA03D} 
	.sect	".text:__signbitl"
	.clink
	.global	||__signbitl||

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("__signbitl")
	.dwattr $C$DW$5, DW_AT_low_pc(||__signbitl||)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_linkage_name("__signbitl")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$5, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$5, DW_AT_decl_column(0x18)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 349,column 1,is_stmt,address ||__signbitl||,isa 0

	.dwfde $C$DW$CIE, ||__signbitl||
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("e")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __signbitl                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__signbitl||:
;* AR4   assigned to e
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("e")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 349,column 3,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |349| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |349| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |349| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |349| 
        MOVL      P,*+XAR4[0]           ; [CPU_ALU] |349| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |349| 
        AND       PL,#0                 ; [CPU_ALU] |349| 
        AND       PH,#0                 ; [CPU_ALU] |349| 
        ANDB      AL,#0                 ; [CPU_ALU] |349| 
        AND       AH,#32768             ; [CPU_ALU] |349| 
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$8, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |349| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |349| 
        MOVB      AH,#0                 ; [CPU_ALU] |349| 
        CMPB      AL,#0                 ; [CPU_ALU] |349| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |349| 
        MOV       AL,AH                 ; [CPU_ALU] |349| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text:__signbitf"
	.clink
	.global	||__signbitf||

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("__signbitf")
	.dwattr $C$DW$10, DW_AT_low_pc(||__signbitf||)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_linkage_name("__signbitf")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$10, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$10, DW_AT_decl_column(0x18)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 347,column 1,is_stmt,address ||__signbitf||,isa 0

	.dwfde $C$DW$CIE, ||__signbitf||
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("f")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __signbitf                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__signbitf||:
;* R0    assigned to f
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("f")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 347,column 3,is_stmt,isa 0
        MOV32     ACC,R0H               ; [CPU_FPU] |347| 
        MOVB      XAR6,#0               ; [CPU_ALU] |347| 
        ANDB      AL,#0                 ; [CPU_ALU] |347| 
        AND       AH,#32768             ; [CPU_ALU] |347| 
        TEST      ACC                   ; [CPU_ALU] |347| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |347| 
        MOV       AL,AR6                ; [CPU_ALU] |347| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x15b)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text:__signbit"
	.clink
	.global	||__signbit||

$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("__signbit")
	.dwattr $C$DW$14, DW_AT_low_pc(||__signbit||)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_linkage_name("__signbit")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$14, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x158)
	.dwattr $C$DW$14, DW_AT_decl_column(0x18)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 345,column 1,is_stmt,address ||__signbit||,isa 0

	.dwfde $C$DW$CIE, ||__signbit||
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("d")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __signbit                     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__signbit||:
;* AR4   assigned to d
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("d")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 345,column 3,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |345| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |345| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |345| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |345| 
        MOVL      P,*+XAR4[0]           ; [CPU_ALU] |345| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |345| 
        AND       PL,#0                 ; [CPU_ALU] |345| 
        AND       PH,#0                 ; [CPU_ALU] |345| 
        ANDB      AL,#0                 ; [CPU_ALU] |345| 
        AND       AH,#32768             ; [CPU_ALU] |345| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$17, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |345| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |345| 
        MOVB      AH,#0                 ; [CPU_ALU] |345| 
        CMPB      AL,#0                 ; [CPU_ALU] |345| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |345| 
        MOV       AL,AH                 ; [CPU_ALU] |345| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0x159)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text:__relaxed_fmodf"
	.clink
	.global	||__relaxed_fmodf||

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("__relaxed_fmodf")
	.dwattr $C$DW$19, DW_AT_low_pc(||__relaxed_fmodf||)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_linkage_name("__relaxed_fmodf")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$19, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x121)
	.dwattr $C$DW$19, DW_AT_decl_column(0x10)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 290,column 1,is_stmt,address ||__relaxed_fmodf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmodf||
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_name("y")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("x")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_regx 0x2f]


;***************************************************************
;* FNAME: __relaxed_fmodf               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_fmodf||:
;* R0    assigned to y
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("y")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("x")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 291,column 3,is_stmt,isa 0
        DIVF32    R2H,R0H,R1H           ; [CPU_FPU] |291| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        F32TOI32  R2H,R2H               ; [CPU_FPU] |291| 
        NOP       ; [CPU_ALU] 
        I32TOF32  R2H,R2H               ; [CPU_FPU] |291| 
        NOP       ; [CPU_ALU] 
        MPYF32    R1H,R1H,R2H           ; [CPU_FPU] |291| 
        NOP       ; [CPU_ALU] 
        SUBF32    R0H,R0H,R1H           ; [CPU_FPU] |291| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x124)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text:__relaxed_fminf"
	.clink
	.global	||__relaxed_fminf||

$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("__relaxed_fminf")
	.dwattr $C$DW$25, DW_AT_low_pc(||__relaxed_fminf||)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_linkage_name("__relaxed_fminf")
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$25, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$25, DW_AT_decl_column(0x10)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 244,column 1,is_stmt,address ||__relaxed_fminf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fminf||
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_name("x")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_name("y")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_regx 0x2f]


;***************************************************************
;* FNAME: __relaxed_fminf               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_fminf||:
;* R1    assigned to y
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("y")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 245,column 5,is_stmt,isa 0
        MINF32    R0H,R1H               ; [CPU_FPU] |245| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$25, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0xf6)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text:__relaxed_fmaxf"
	.clink
	.global	||__relaxed_fmaxf||

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("__relaxed_fmaxf")
	.dwattr $C$DW$30, DW_AT_low_pc(||__relaxed_fmaxf||)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_linkage_name("__relaxed_fmaxf")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$30, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0xed)
	.dwattr $C$DW$30, DW_AT_decl_column(0x10)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 238,column 1,is_stmt,address ||__relaxed_fmaxf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmaxf||
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("x")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("y")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_regx 0x2f]


;***************************************************************
;* FNAME: __relaxed_fmaxf               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_fmaxf||:
;* R1    assigned to y
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("y")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 239,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |239| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0xf0)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text:__relaxed_atanf"
	.clink
	.global	||__relaxed_atanf||

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("__relaxed_atanf")
	.dwattr $C$DW$35, DW_AT_low_pc(||__relaxed_atanf||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("__relaxed_atanf")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$35, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x117)
	.dwattr $C$DW$35, DW_AT_decl_column(0x10)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 280,column 1,is_stmt,address ||__relaxed_atanf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atanf||
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("x")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __relaxed_atanf               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_atanf||:
;* R0    assigned to x
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("x")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 281,column 3,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |281| 
        QUADF32   R1H,R0H,R0H,R1H       ; [CPU_FPU] |281| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ATANPUF32 R0H,R0H               ; [CPU_FPU] |281| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |281| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPY2PIF32 R0H,R0H               ; [CPU_FPU] |281| 
        NOP       ; [CPU_ALU] 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:__isnormall"
	.clink
	.global	||__isnormall||

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("__isnormall")
	.dwattr $C$DW$39, DW_AT_low_pc(||__isnormall||)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_linkage_name("__isnormall")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$39, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0x154)
	.dwattr $C$DW$39, DW_AT_decl_column(0x18)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 341,column 1,is_stmt,address ||__isnormall||,isa 0

	.dwfde $C$DW$CIE, ||__isnormall||
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_name("e")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isnormall                   FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isnormall||:
;* AR5   assigned to $O$C2
;* AR6   assigned to $O$S1
;* AR4   assigned to e
$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("e")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 341,column 3,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |341| 
        MOVL      XAR4,*+XAR4[2]        ; [CPU_ALU] |341| 
        MOVB      XAR6,#0               ; [CPU_ALU] |341| 
        MOV       T,#52                 ; [CPU_ALU] |341| 
        MOVL      P,XAR5                ; [CPU_ALU] |341| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |341| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |341| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |341| 
        LSR64     ACC:P,T               ; [CPU_ALU] |341| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |341| 
        ANDB      AL,#0                 ; [CPU_ALU] |341| 
        ANDB      AH,#0                 ; [CPU_ALU] |341| 
        AND       PL,#2047              ; [CPU_ALU] |341| 
        AND       PH,#0                 ; [CPU_ALU] |341| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |341| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |341| 
        MOVB      XAR6,#0               ; [CPU_ALU] |341| 
        CMPB      AL,#0                 ; [CPU_ALU] |341| 
        B         ||$C$L1||,EQ          ; [CPU_ALU] |341| 
        ; branchcc occurs ; [] |341| 
        MOVL      P,XAR5                ; [CPU_ALU] |341| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |341| 
        MOV       T,#48                 ; [CPU_ALU] |341| 
        LSR64     ACC:P,T               ; [CPU_ALU] |341| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |341| 
        MOVZ      AR7,PL                ; [CPU_ALU] |341| 
        MOV       ACC,#32752            ; [CPU_ALU] |341| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |341| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |341| 
||$C$L1||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |341| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x156)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text:__isnormalf"
	.clink
	.global	||__isnormalf||

$C$DW$44	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$44, DW_AT_name("__isnormalf")
	.dwattr $C$DW$44, DW_AT_low_pc(||__isnormalf||)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_linkage_name("__isnormalf")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$44, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x150)
	.dwattr $C$DW$44, DW_AT_decl_column(0x18)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 337,column 1,is_stmt,address ||__isnormalf||,isa 0

	.dwfde $C$DW$CIE, ||__isnormalf||
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("f")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __isnormalf                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isnormalf||:
;* PL    assigned to $O$K3
;* AR6   assigned to $O$S1
;* R0    assigned to f
$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("f")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 337,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |337| 
        MOV       T,#23                 ; [CPU_ALU] |337| 
        MOVL      ACC,P                 ; [CPU_ALU] |337| 
        MOVB      XAR6,#0               ; [CPU_ALU] |337| 
        LSRL      ACC,T                 ; [CPU_ALU] |337| 
        ANDB      AL,#0xff              ; [CPU_ALU] |337| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |337| 
        ; branchcc occurs ; [] |337| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |337| 
        MOVZ      AR7,AL                ; [CPU_ALU] |337| 
        MOV       ACC,#32640            ; [CPU_ALU] |337| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |337| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |337| 
||$C$L2||:    
        MOV       AL,AR6                ; [CPU_ALU] |337| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$44, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x152)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text:__isnormal"
	.clink
	.global	||__isnormal||

$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("__isnormal")
	.dwattr $C$DW$48, DW_AT_low_pc(||__isnormal||)
	.dwattr $C$DW$48, DW_AT_high_pc(0x00)
	.dwattr $C$DW$48, DW_AT_linkage_name("__isnormal")
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$48, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$48, DW_AT_decl_column(0x18)
	.dwattr $C$DW$48, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 333,column 1,is_stmt,address ||__isnormal||,isa 0

	.dwfde $C$DW$CIE, ||__isnormal||
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_name("d")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isnormal                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isnormal||:
;* AR5   assigned to $O$C2
;* AR6   assigned to $O$S1
;* AR4   assigned to d
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("d")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 333,column 3,is_stmt,isa 0
        MOVL      XAR5,*+XAR4[0]        ; [CPU_ALU] |333| 
        MOVL      XAR4,*+XAR4[2]        ; [CPU_ALU] |333| 
        MOVB      XAR6,#0               ; [CPU_ALU] |333| 
        MOV       T,#52                 ; [CPU_ALU] |333| 
        MOVL      P,XAR5                ; [CPU_ALU] |333| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |333| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |333| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |333| 
        LSR64     ACC:P,T               ; [CPU_ALU] |333| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |333| 
        ANDB      AL,#0                 ; [CPU_ALU] |333| 
        ANDB      AH,#0                 ; [CPU_ALU] |333| 
        AND       PL,#2047              ; [CPU_ALU] |333| 
        AND       PH,#0                 ; [CPU_ALU] |333| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$51, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |333| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |333| 
        MOVB      XAR6,#0               ; [CPU_ALU] |333| 
        CMPB      AL,#0                 ; [CPU_ALU] |333| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |333| 
        ; branchcc occurs ; [] |333| 
        MOVL      P,XAR5                ; [CPU_ALU] |333| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |333| 
        MOV       T,#48                 ; [CPU_ALU] |333| 
        LSR64     ACC:P,T               ; [CPU_ALU] |333| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |333| 
        MOVZ      AR7,PL                ; [CPU_ALU] |333| 
        MOV       ACC,#32752            ; [CPU_ALU] |333| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |333| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |333| 
||$C$L3||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |333| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$48, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$48, DW_AT_TI_end_line(0x14e)
	.dwattr $C$DW$48, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$48

	.sect	".text:__isnanl"
	.clink
	.global	||__isnanl||

$C$DW$53	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$53, DW_AT_name("__isnanl")
	.dwattr $C$DW$53, DW_AT_low_pc(||__isnanl||)
	.dwattr $C$DW$53, DW_AT_high_pc(0x00)
	.dwattr $C$DW$53, DW_AT_linkage_name("__isnanl")
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$53, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0x148)
	.dwattr $C$DW$53, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$53, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 329,column 1,is_stmt,address ||__isnanl||,isa 0

	.dwfde $C$DW$CIE, ||__isnanl||
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_name("e")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isnanl                      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isnanl||:
;* AR7   assigned to $O$C2
;* AR4   assigned to $O$S1
;* AR4   assigned to e
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("e")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 329,column 3,is_stmt,isa 0
        MOVL      XAR7,*+XAR4[0]        ; [CPU_ALU] |329| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |329| 
        MOV       T,#48                 ; [CPU_ALU] |329| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |329| 
        MOVL      P,XAR7                ; [CPU_ALU] |329| 
        MOVB      XAR4,#0               ; [CPU_ALU] |329| 
        LSR64     ACC:P,T               ; [CPU_ALU] |329| 
        MOV       PH,#0                 ; [CPU_ALU] |329| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |329| 
        MOV       ACC,#32752            ; [CPU_ALU] |329| 
        CMPL      ACC,P                 ; [CPU_ALU] |329| 
        B         ||$C$L4||,NEQ         ; [CPU_ALU] |329| 
        ; branchcc occurs ; [] |329| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |329| 
        MOVL      P,XAR7                ; [CPU_ALU] |329| 
        MOVB      XAR6,#0               ; [CPU_ALU] |329| 
        AND       AL,#65535             ; [CPU_ALU] |329| 
        ANDB      AH,#15                ; [CPU_ALU] |329| 
        AND       PL,#65535             ; [CPU_ALU] |329| 
        AND       PH,#65535             ; [CPU_ALU] |329| 
        MOVL      *-SP[4],XAR6          ; [CPU_FPU] |329| 
        MOV       *-SP[2],#0            ; [CPU_FPU] |329| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |329| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$56, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |329| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |329| 
        CMPB      AL,#0                 ; [CPU_ALU] |329| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |329| 
||$C$L4||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |329| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$53, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$53, DW_AT_TI_end_line(0x14a)
	.dwattr $C$DW$53, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$53

	.sect	".text:__isnanf"
	.clink
	.global	||__isnanf||

$C$DW$58	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$58, DW_AT_name("__isnanf")
	.dwattr $C$DW$58, DW_AT_low_pc(||__isnanf||)
	.dwattr $C$DW$58, DW_AT_high_pc(0x00)
	.dwattr $C$DW$58, DW_AT_linkage_name("__isnanf")
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$58, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0x145)
	.dwattr $C$DW$58, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$58, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 326,column 1,is_stmt,address ||__isnanf||,isa 0

	.dwfde $C$DW$CIE, ||__isnanf||
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_name("f")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __isnanf                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isnanf||:
;* PL    assigned to $O$K3
;* AR6   assigned to $O$S1
;* R0    assigned to f
$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("f")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 326,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |326| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |326| 
        MOVZ      AR7,AL                ; [CPU_ALU] |326| 
        MOVB      XAR6,#0               ; [CPU_ALU] |326| 
        MOV       ACC,#32640            ; [CPU_ALU] |326| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |326| 
        B         ||$C$L5||,NEQ         ; [CPU_ALU] |326| 
        ; branchcc occurs ; [] |326| 
        MOVL      ACC,P                 ; [CPU_ALU] |326| 
        ANDB      AH,#127               ; [CPU_ALU] |326| 
        TEST      ACC                   ; [CPU_ALU] |326| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |326| 
||$C$L5||:    
        MOV       AL,AR6                ; [CPU_ALU] |326| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$58, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$58, DW_AT_TI_end_line(0x147)
	.dwattr $C$DW$58, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$58

	.sect	".text:__isnan"
	.clink
	.global	||__isnan||

$C$DW$62	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$62, DW_AT_name("__isnan")
	.dwattr $C$DW$62, DW_AT_low_pc(||__isnan||)
	.dwattr $C$DW$62, DW_AT_high_pc(0x00)
	.dwattr $C$DW$62, DW_AT_linkage_name("__isnan")
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$62, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0x142)
	.dwattr $C$DW$62, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$62, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 323,column 1,is_stmt,address ||__isnan||,isa 0

	.dwfde $C$DW$CIE, ||__isnan||
$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_name("d")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isnan                       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isnan||:
;* AR7   assigned to $O$C2
;* AR4   assigned to $O$S1
;* AR4   assigned to d
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("d")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 323,column 3,is_stmt,isa 0
        MOVL      XAR7,*+XAR4[0]        ; [CPU_ALU] |323| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |323| 
        MOV       T,#48                 ; [CPU_ALU] |323| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |323| 
        MOVL      P,XAR7                ; [CPU_ALU] |323| 
        MOVB      XAR4,#0               ; [CPU_ALU] |323| 
        LSR64     ACC:P,T               ; [CPU_ALU] |323| 
        MOV       PH,#0                 ; [CPU_ALU] |323| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |323| 
        MOV       ACC,#32752            ; [CPU_ALU] |323| 
        CMPL      ACC,P                 ; [CPU_ALU] |323| 
        B         ||$C$L6||,NEQ         ; [CPU_ALU] |323| 
        ; branchcc occurs ; [] |323| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |323| 
        MOVL      P,XAR7                ; [CPU_ALU] |323| 
        MOVB      XAR6,#0               ; [CPU_ALU] |323| 
        AND       AL,#65535             ; [CPU_ALU] |323| 
        ANDB      AH,#15                ; [CPU_ALU] |323| 
        AND       PL,#65535             ; [CPU_ALU] |323| 
        AND       PH,#65535             ; [CPU_ALU] |323| 
        MOVL      *-SP[4],XAR6          ; [CPU_FPU] |323| 
        MOV       *-SP[2],#0            ; [CPU_FPU] |323| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |323| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$65, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |323| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |323| 
        CMPB      AL,#0                 ; [CPU_ALU] |323| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |323| 
||$C$L6||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |323| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$62, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$62, DW_AT_TI_end_line(0x144)
	.dwattr $C$DW$62, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$62

	.sect	".text:__isinfl"
	.clink
	.global	||__isinfl||

$C$DW$67	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$67, DW_AT_name("__isinfl")
	.dwattr $C$DW$67, DW_AT_low_pc(||__isinfl||)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_linkage_name("__isinfl")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$67, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0x167)
	.dwattr $C$DW$67, DW_AT_decl_column(0x18)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 360,column 1,is_stmt,address ||__isinfl||,isa 0

	.dwfde $C$DW$CIE, ||__isinfl||
$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_name("e")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isinfl                      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isinfl||:
;* AR7   assigned to $O$C2
;* AR4   assigned to $O$S1
;* AR4   assigned to e
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("e")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 360,column 3,is_stmt,isa 0
        MOVL      XAR7,*+XAR4[0]        ; [CPU_ALU] |360| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |360| 
        MOV       T,#48                 ; [CPU_ALU] |360| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |360| 
        MOVL      P,XAR7                ; [CPU_ALU] |360| 
        MOVB      XAR4,#0               ; [CPU_ALU] |360| 
        LSR64     ACC:P,T               ; [CPU_ALU] |360| 
        MOV       PH,#0                 ; [CPU_ALU] |360| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |360| 
        MOV       ACC,#32752            ; [CPU_ALU] |360| 
        CMPL      ACC,P                 ; [CPU_ALU] |360| 
        B         ||$C$L7||,NEQ         ; [CPU_ALU] |360| 
        ; branchcc occurs ; [] |360| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |360| 
        MOVL      P,XAR7                ; [CPU_ALU] |360| 
        MOVB      XAR6,#0               ; [CPU_ALU] |360| 
        AND       AL,#65535             ; [CPU_ALU] |360| 
        ANDB      AH,#15                ; [CPU_ALU] |360| 
        AND       PL,#65535             ; [CPU_ALU] |360| 
        AND       PH,#65535             ; [CPU_ALU] |360| 
        MOVL      *-SP[4],XAR6          ; [CPU_FPU] |360| 
        MOV       *-SP[2],#0            ; [CPU_FPU] |360| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |360| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$70, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |360| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |360| 
        CMPB      AL,#0                 ; [CPU_ALU] |360| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |360| 
||$C$L7||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |360| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$67, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x168)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$67

	.sect	".text:__isinff"
	.clink
	.global	||__isinff||

$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("__isinff")
	.dwattr $C$DW$72, DW_AT_low_pc(||__isinff||)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_linkage_name("__isinff")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$72, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x163)
	.dwattr $C$DW$72, DW_AT_decl_column(0x18)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 356,column 1,is_stmt,address ||__isinff||,isa 0

	.dwfde $C$DW$CIE, ||__isinff||
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("f")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __isinff                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isinff||:
;* PL    assigned to $O$K3
;* AR6   assigned to $O$S1
;* R0    assigned to f
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("f")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 356,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |356| 
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |356| 
        MOVZ      AR7,AL                ; [CPU_ALU] |356| 
        MOVB      XAR6,#0               ; [CPU_ALU] |356| 
        MOV       ACC,#32640            ; [CPU_ALU] |356| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |356| 
        B         ||$C$L8||,NEQ         ; [CPU_ALU] |356| 
        ; branchcc occurs ; [] |356| 
        MOVL      ACC,P                 ; [CPU_ALU] |356| 
        ANDB      AH,#127               ; [CPU_ALU] |356| 
        TEST      ACC                   ; [CPU_ALU] |356| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |356| 
||$C$L8||:    
        MOV       AL,AR6                ; [CPU_ALU] |356| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x164)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text:__isinf"
	.clink
	.global	||__isinf||

$C$DW$76	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$76, DW_AT_name("__isinf")
	.dwattr $C$DW$76, DW_AT_low_pc(||__isinf||)
	.dwattr $C$DW$76, DW_AT_high_pc(0x00)
	.dwattr $C$DW$76, DW_AT_linkage_name("__isinf")
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$76, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x165)
	.dwattr $C$DW$76, DW_AT_decl_column(0x18)
	.dwattr $C$DW$76, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 358,column 1,is_stmt,address ||__isinf||,isa 0

	.dwfde $C$DW$CIE, ||__isinf||
$C$DW$77	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$77, DW_AT_name("d")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isinf                       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isinf||:
;* AR7   assigned to $O$C2
;* AR4   assigned to $O$S1
;* AR4   assigned to d
$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("d")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 358,column 3,is_stmt,isa 0
        MOVL      XAR7,*+XAR4[0]        ; [CPU_ALU] |358| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |358| 
        MOV       T,#48                 ; [CPU_ALU] |358| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |358| 
        MOVL      P,XAR7                ; [CPU_ALU] |358| 
        MOVB      XAR4,#0               ; [CPU_ALU] |358| 
        LSR64     ACC:P,T               ; [CPU_ALU] |358| 
        MOV       PH,#0                 ; [CPU_ALU] |358| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |358| 
        MOV       ACC,#32752            ; [CPU_ALU] |358| 
        CMPL      ACC,P                 ; [CPU_ALU] |358| 
        B         ||$C$L9||,NEQ         ; [CPU_ALU] |358| 
        ; branchcc occurs ; [] |358| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |358| 
        MOVL      P,XAR7                ; [CPU_ALU] |358| 
        MOVB      XAR6,#0               ; [CPU_ALU] |358| 
        AND       AL,#65535             ; [CPU_ALU] |358| 
        ANDB      AH,#15                ; [CPU_ALU] |358| 
        AND       PL,#65535             ; [CPU_ALU] |358| 
        AND       PH,#65535             ; [CPU_ALU] |358| 
        MOVL      *-SP[4],XAR6          ; [CPU_FPU] |358| 
        MOV       *-SP[2],#0            ; [CPU_FPU] |358| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |358| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$79, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |358| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |358| 
        CMPB      AL,#0                 ; [CPU_ALU] |358| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |358| 
||$C$L9||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |358| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$76, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$76, DW_AT_TI_end_line(0x166)
	.dwattr $C$DW$76, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$76

	.sect	".text:__isfinitel"
	.clink
	.global	||__isfinitel||

$C$DW$81	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$81, DW_AT_name("__isfinitel")
	.dwattr $C$DW$81, DW_AT_low_pc(||__isfinitel||)
	.dwattr $C$DW$81, DW_AT_high_pc(0x00)
	.dwattr $C$DW$81, DW_AT_linkage_name("__isfinitel")
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$81, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$81, DW_AT_decl_column(0x18)
	.dwattr $C$DW$81, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 320,column 1,is_stmt,address ||__isfinitel||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitel||
$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_name("e")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isfinitel                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isfinitel||:
;* AR4   assigned to e
$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("e")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 320,column 3,is_stmt,isa 0
        MOVL      P,*+XAR4[0]           ; [CPU_ALU] |320| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |320| 
        MOV       T,#48                 ; [CPU_ALU] |320| 
        LSR64     ACC:P,T               ; [CPU_ALU] |320| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |320| 
        MOVZ      AR7,PL                ; [CPU_ALU] |320| 
        MOV       ACC,#32752            ; [CPU_ALU] |320| 
        MOVB      XAR6,#0               ; [CPU_ALU] |320| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |320| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |320| 
        MOV       AL,AR6                ; [CPU_ALU] |320| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$81, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$81, DW_AT_TI_end_line(0x140)
	.dwattr $C$DW$81, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$81

	.sect	".text:__isfinitef"
	.clink
	.global	||__isfinitef||

$C$DW$85	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$85, DW_AT_name("__isfinitef")
	.dwattr $C$DW$85, DW_AT_low_pc(||__isfinitef||)
	.dwattr $C$DW$85, DW_AT_high_pc(0x00)
	.dwattr $C$DW$85, DW_AT_linkage_name("__isfinitef")
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$85, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$85, DW_AT_decl_column(0x18)
	.dwattr $C$DW$85, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 318,column 1,is_stmt,address ||__isfinitef||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitef||
$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_name("f")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __isfinitef                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isfinitef||:
;* R0    assigned to f
$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("f")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 318,column 3,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |318| 
        AND       PH,#0x7f80            ; [CPU_ALU] |318| 
        MOVZ      AR7,PH                ; [CPU_ALU] |318| 
        MOV       ACC,#32640            ; [CPU_ALU] |318| 
        MOVB      XAR6,#0               ; [CPU_ALU] |318| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |318| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |318| 
        MOV       AL,AR6                ; [CPU_ALU] |318| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$85, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$85, DW_AT_TI_end_line(0x13e)
	.dwattr $C$DW$85, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$85

	.sect	".text:__isfinite"
	.clink
	.global	||__isfinite||

$C$DW$89	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$89, DW_AT_name("__isfinite")
	.dwattr $C$DW$89, DW_AT_low_pc(||__isfinite||)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_linkage_name("__isfinite")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$89, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$89, DW_AT_decl_column(0x18)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 316,column 1,is_stmt,address ||__isfinite||,isa 0

	.dwfde $C$DW$CIE, ||__isfinite||
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("d")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __isfinite                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__isfinite||:
;* AR4   assigned to d
$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("d")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 316,column 3,is_stmt,isa 0
        MOVL      P,*+XAR4[0]           ; [CPU_ALU] |316| 
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |316| 
        MOV       T,#48                 ; [CPU_ALU] |316| 
        LSR64     ACC:P,T               ; [CPU_ALU] |316| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |316| 
        MOVZ      AR7,PL                ; [CPU_ALU] |316| 
        MOV       ACC,#32752            ; [CPU_ALU] |316| 
        MOVB      XAR6,#0               ; [CPU_ALU] |316| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |316| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |316| 
        MOV       AL,AR6                ; [CPU_ALU] |316| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$89, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0x13c)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text:__fpclassifyl"
	.clink
	.global	||__fpclassifyl||

$C$DW$93	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$93, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$93, DW_AT_low_pc(||__fpclassifyl||)
	.dwattr $C$DW$93, DW_AT_high_pc(0x00)
	.dwattr $C$DW$93, DW_AT_linkage_name("__fpclassifyl")
	.dwattr $C$DW$93, DW_AT_external
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$93, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$93, DW_AT_decl_column(0x18)
	.dwattr $C$DW$93, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 412,column 1,is_stmt,address ||__fpclassifyl||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyl||
$C$DW$94	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$94, DW_AT_name("e")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassifyl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyl||:
$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("e")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to e
$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("e")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOVL      XAR6,*+XAR4[2]        ; [CPU_ALU] |412| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |412| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |412| 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |412| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 413,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[8]          ; [CPU_ALU] |413| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |413| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 417,column 14,is_stmt,isa 0
        MOV       T,#48                 ; [CPU_ALU] |417| 
        MOVL      P,XAR5                ; [CPU_ALU] |417| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |417| 
        LSR64     ACC:P,T               ; [CPU_ALU] |417| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |417| 
        MOVZ      AR6,PL                ; [CPU_ALU] |417| 
        MOV       ACC,#32752            ; [CPU_ALU] |417| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |417| 
        B         ||$C$L11||,NEQ        ; [CPU_ALU] |417| 
        ; branchcc occurs ; [] |417| 
        MOVB      ACC,#0                ; [CPU_ALU] |417| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |417| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |417| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |417| 
        MOVL      P,*-SP[8]             ; [CPU_ALU] |417| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |417| 
        AND       PL,#65535             ; [CPU_ALU] |417| 
        AND       PH,#65535             ; [CPU_ALU] |417| 
        AND       AL,#65535             ; [CPU_ALU] |417| 
        ANDB      AH,#15                ; [CPU_ALU] |417| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |417| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |417| 
        CMPB      AL,#0                 ; [CPU_ALU] |417| 
        B         ||$C$L10||,EQ         ; [CPU_ALU] |417| 
        ; branchcc occurs ; [] |417| 
        MOVB      AL,#2                 ; [CPU_ALU] |417| 
        B         ||$C$L14||,UNC        ; [CPU_ALU] |417| 
        ; branch occurs ; [] |417| 
||$C$L10||:    
        MOVB      AL,#1                 ; [CPU_ALU] |417| 
        B         ||$C$L14||,UNC        ; [CPU_ALU] |417| 
        ; branch occurs ; [] |417| 
||$C$L11||:    
        MOVB      XAR6,#0               ; [CPU_ALU] |417| 
        MOVL      P,XAR5                ; [CPU_ALU] |417| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |417| 
        MOV       T,#52                 ; [CPU_ALU] |417| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |417| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |417| 
        LSR64     ACC:P,T               ; [CPU_ALU] |417| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |417| 
        ANDB      AL,#0                 ; [CPU_ALU] |417| 
        ANDB      AH,#0                 ; [CPU_ALU] |417| 
        AND       PL,#2047              ; [CPU_ALU] |417| 
        AND       PH,#0                 ; [CPU_ALU] |417| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |417| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |417| 
        CMPB      AL,#0                 ; [CPU_ALU] |417| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |417| 
        ; branchcc occurs ; [] |417| 
        MOV       AL,#-1                ; [CPU_ALU] |417| 
        B         ||$C$L14||,UNC        ; [CPU_ALU] |417| 
        ; branch occurs ; [] |417| 
||$C$L12||:    
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |417| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |417| 
        MOVL      P,XAR5                ; [CPU_ALU] |417| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |417| 
        AND       AL,#65535             ; [CPU_ALU] |417| 
        ANDB      AH,#15                ; [CPU_ALU] |417| 
        AND       PL,#65535             ; [CPU_ALU] |417| 
        AND       PH,#65535             ; [CPU_ALU] |417| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |417| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |417| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |417| 
        CMPB      AL,#0                 ; [CPU_ALU] |417| 
        B         ||$C$L13||,EQ         ; [CPU_ALU] |417| 
        ; branchcc occurs ; [] |417| 
        MOV       AL,#-2                ; [CPU_ALU] |417| 
        B         ||$C$L14||,UNC        ; [CPU_ALU] |417| 
        ; branch occurs ; [] |417| 
||$C$L13||:    
        MOVB      AL,#0                 ; [CPU_ALU] |417| 
||$C$L14||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$93, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$93, DW_AT_TI_end_line(0x1aa)
	.dwattr $C$DW$93, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$93

	.sect	".text:__fpclassifyf"
	.clink
	.global	||__fpclassifyf||

$C$DW$101	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$101, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$101, DW_AT_low_pc(||__fpclassifyf||)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_linkage_name("__fpclassifyf")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$101, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x179)
	.dwattr $C$DW$101, DW_AT_decl_column(0x18)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 378,column 1,is_stmt,address ||__fpclassifyf||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyf||
$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_name("f")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __fpclassifyf                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyf||:
;* PL    assigned to $O$K1
;* R0    assigned to f
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("f")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 379,column 5,is_stmt,isa 0
        MOV32     P,R0H                 ; [CPU_FPU] |379| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 383,column 14,is_stmt,isa 0
        AND       AL,PH,#0x7f80         ; [CPU_ALU] |383| 
        MOVZ      AR6,AL                ; [CPU_ALU] |383| 
        MOV       ACC,#32640            ; [CPU_ALU] |383| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |383| 
        B         ||$C$L16||,NEQ        ; [CPU_ALU] |383| 
        ; branchcc occurs ; [] |383| 
        MOVL      ACC,P                 ; [CPU_ALU] |383| 
        ANDB      AH,#127               ; [CPU_ALU] |383| 
        TEST      ACC                   ; [CPU_ALU] |383| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |383| 
        ; branchcc occurs ; [] |383| 
	.dwcfi	remember_state
        MOVB      AL,#2                 ; [CPU_ALU] |383| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L15||:    
	.dwcfi	remember_state
        MOVB      AL,#1                 ; [CPU_ALU] |383| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L16||:    
        MOVL      ACC,P                 ; [CPU_ALU] |383| 
        MOV       T,#23                 ; [CPU_ALU] |383| 
        LSRL      ACC,T                 ; [CPU_ALU] |383| 
        ANDB      AL,#0xff              ; [CPU_ALU] |383| 
        B         ||$C$L17||,EQ         ; [CPU_ALU] |383| 
        ; branchcc occurs ; [] |383| 
	.dwcfi	remember_state
        MOV       AL,#-1                ; [CPU_ALU] |383| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L17||:    
        MOVL      ACC,P                 ; [CPU_ALU] |383| 
        ANDB      AH,#127               ; [CPU_ALU] |383| 
        TEST      ACC                   ; [CPU_ALU] |383| 
        B         ||$C$L18||,EQ         ; [CPU_ALU] |383| 
        ; branchcc occurs ; [] |383| 
	.dwcfi	remember_state
        MOV       AL,#-2                ; [CPU_ALU] |383| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L18||:    
        MOVB      AL,#0                 ; [CPU_ALU] |383| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$101, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x188)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text:__fpclassify"
	.clink
	.global	||__fpclassify||

$C$DW$109	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$109, DW_AT_name("__fpclassify")
	.dwattr $C$DW$109, DW_AT_low_pc(||__fpclassify||)
	.dwattr $C$DW$109, DW_AT_high_pc(0x00)
	.dwattr $C$DW$109, DW_AT_linkage_name("__fpclassify")
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$109, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$109, DW_AT_decl_column(0x18)
	.dwattr $C$DW$109, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 395,column 1,is_stmt,address ||__fpclassify||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassify||
$C$DW$110	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$110, DW_AT_name("d")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassify                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassify||:
$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("d")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to d
$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("d")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOVL      XAR6,*+XAR4[2]        ; [CPU_ALU] |395| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |395| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |395| 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |395| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 396,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[8]          ; [CPU_ALU] |396| 
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] |396| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 400,column 14,is_stmt,isa 0
        MOV       T,#48                 ; [CPU_ALU] |400| 
        MOVL      P,XAR5                ; [CPU_ALU] |400| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |400| 
        LSR64     ACC:P,T               ; [CPU_ALU] |400| 
        AND       PL,#0x7ff0            ; [CPU_ALU] |400| 
        MOVZ      AR6,PL                ; [CPU_ALU] |400| 
        MOV       ACC,#32752            ; [CPU_ALU] |400| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |400| 
        B         ||$C$L20||,NEQ        ; [CPU_ALU] |400| 
        ; branchcc occurs ; [] |400| 
        MOVB      ACC,#0                ; [CPU_ALU] |400| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |400| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |400| 
        MOV       *-SP[1],#0            ; [CPU_ALU] |400| 
        MOVL      P,*-SP[8]             ; [CPU_ALU] |400| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |400| 
        AND       PL,#65535             ; [CPU_ALU] |400| 
        AND       PH,#65535             ; [CPU_ALU] |400| 
        AND       AL,#65535             ; [CPU_ALU] |400| 
        ANDB      AH,#15                ; [CPU_ALU] |400| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$113, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |400| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |400| 
        CMPB      AL,#0                 ; [CPU_ALU] |400| 
        B         ||$C$L19||,EQ         ; [CPU_ALU] |400| 
        ; branchcc occurs ; [] |400| 
        MOVB      AL,#2                 ; [CPU_ALU] |400| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] |400| 
        ; branch occurs ; [] |400| 
||$C$L19||:    
        MOVB      AL,#1                 ; [CPU_ALU] |400| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] |400| 
        ; branch occurs ; [] |400| 
||$C$L20||:    
        MOVB      XAR6,#0               ; [CPU_ALU] |400| 
        MOVL      P,XAR5                ; [CPU_ALU] |400| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |400| 
        MOV       T,#52                 ; [CPU_ALU] |400| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |400| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |400| 
        LSR64     ACC:P,T               ; [CPU_ALU] |400| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |400| 
        ANDB      AL,#0                 ; [CPU_ALU] |400| 
        ANDB      AH,#0                 ; [CPU_ALU] |400| 
        AND       PL,#2047              ; [CPU_ALU] |400| 
        AND       PH,#0                 ; [CPU_ALU] |400| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$114, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |400| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |400| 
        CMPB      AL,#0                 ; [CPU_ALU] |400| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |400| 
        ; branchcc occurs ; [] |400| 
        MOV       AL,#-1                ; [CPU_ALU] |400| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] |400| 
        ; branch occurs ; [] |400| 
||$C$L21||:    
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |400| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |400| 
        MOVL      P,XAR5                ; [CPU_ALU] |400| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |400| 
        AND       AL,#65535             ; [CPU_ALU] |400| 
        ANDB      AH,#15                ; [CPU_ALU] |400| 
        AND       PL,#65535             ; [CPU_ALU] |400| 
        AND       PH,#65535             ; [CPU_ALU] |400| 
        MOV       *-SP[1],#0            ; [CPU_FPU] |400| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$115, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |400| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |400| 
        CMPB      AL,#0                 ; [CPU_ALU] |400| 
        B         ||$C$L22||,EQ         ; [CPU_ALU] |400| 
        ; branchcc occurs ; [] |400| 
        MOV       AL,#-2                ; [CPU_ALU] |400| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] |400| 
        ; branch occurs ; [] |400| 
||$C$L22||:    
        MOVB      AL,#0                 ; [CPU_ALU] |400| 
||$C$L23||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$109, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$109, DW_AT_TI_end_line(0x199)
	.dwattr $C$DW$109, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$109

	.sect	"pcmfpc_code"
	.clink

$C$DW$117	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$117, DW_AT_name("pc_finite")
	.dwattr $C$DW$117, DW_AT_low_pc(||pc_finite||)
	.dwattr $C$DW$117, DW_AT_high_pc(0x00)
	.dwattr $C$DW$117, DW_AT_linkage_name("pc_finite")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$117, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$117, DW_AT_decl_line(0x32)
	.dwattr $C$DW$117, DW_AT_decl_column(0x11)
	.dwattr $C$DW$117, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 51,column 1,is_stmt,address ||pc_finite||,isa 0

	.dwfde $C$DW$CIE, ||pc_finite||
$C$DW$118	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$118, DW_AT_name("x")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: pc_finite                     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||pc_finite||:
$C$DW$119	.dwtag  DW_TAG_variable
	.dwattr $C$DW$119, DW_AT_name("v")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_breg20 -2]

;* R0    assigned to x
$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("x")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 55,column 5,is_stmt,isa 0
        MOV32     *-SP[2],R0H           ; [CPU_FPU] |55| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 56,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |56| 
        MOV       PH,#32640             ; [CPU_ALU] |56| 
        MOVB      XAR6,#0               ; [CPU_ALU] |56| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |56| 
        ANDB      AL,#0                 ; [CPU_ALU] |56| 
        AND       AH,#32640             ; [CPU_ALU] |56| 
        CMPL      ACC,P                 ; [CPU_ALU] |56| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |56| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |56| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$117, DW_AT_TI_end_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$117, DW_AT_TI_end_line(0x39)
	.dwattr $C$DW$117, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$117

	.sect	"pcmfpc_code"
	.clink

$C$DW$122	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$122, DW_AT_name("pc_config_valid")
	.dwattr $C$DW$122, DW_AT_low_pc(||pc_config_valid||)
	.dwattr $C$DW$122, DW_AT_high_pc(0x00)
	.dwattr $C$DW$122, DW_AT_linkage_name("pc_config_valid")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$122, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$122, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$122, DW_AT_decl_column(0x11)
	.dwattr $C$DW$122, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 107,column 1,is_stmt,address ||pc_config_valid||,isa 0

	.dwfde $C$DW$CIE, ||pc_config_valid||
$C$DW$123	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$123, DW_AT_name("c")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: pc_config_valid               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||pc_config_valid||:
;* R0    assigned to $O$C17
;* R0    assigned to $O$C18
;* R0    assigned to $O$C19
;* R0    assigned to $O$C20
;* R0    assigned to $O$C21
;* R0    assigned to $O$C22
;* R0    assigned to $O$C23
;* R0    assigned to $O$v7
;* R0    assigned to $O$v6
;* R0    assigned to $O$v5
;* R0    assigned to $O$v4
;* R0    assigned to $O$v3
;* R0    assigned to $O$v2
;* R0    assigned to $O$v1
;* AR7   assigned to $O$S1
;* AR4   assigned to c
$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("c")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 108,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |108| 
        MOVB      XAR7,#0               ; [CPU_ALU] |108| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |108| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("pc_finite")
	.dwattr $C$DW$125, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |108| 
        ; call occurs [#||pc_finite||] ; [] |108| 
        CMPB      AL,#0                 ; [CPU_ALU] |108| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        CMPF32    R0H,#0                ; [CPU_FPU] |108| 
        MOVST0    ZF, NF                ; [CPU_FPU] |108| 
        B         ||$C$L24||,LEQ        ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        MOVB      XAR0,#8               ; [CPU_ALU] |108| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |108| 
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("pc_finite")
	.dwattr $C$DW$126, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |108| 
        ; call occurs [#||pc_finite||] ; [] |108| 
        CMPB      AL,#0                 ; [CPU_ALU] |108| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        CMPF32    R0H,#0                ; [CPU_FPU] |108| 
        MOVST0    ZF, NF                ; [CPU_FPU] |108| 
        B         ||$C$L24||,LEQ        ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |108| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("pc_finite")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |108| 
        ; call occurs [#||pc_finite||] ; [] |108| 
        CMPB      AL,#0                 ; [CPU_ALU] |108| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        CMPF32    R0H,#0                ; [CPU_FPU] |108| 
        MOVST0    ZF, NF                ; [CPU_FPU] |108| 
        B         ||$C$L24||,LEQ        ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        MOV32     R0H,*+XAR4[2]         ; [CPU_FPU] |108| 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("pc_finite")
	.dwattr $C$DW$128, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |108| 
        ; call occurs [#||pc_finite||] ; [] |108| 
        CMPB      AL,#0                 ; [CPU_ALU] |108| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        CMPF32    R0H,#0                ; [CPU_FPU] |108| 
        MOVST0    ZF, NF                ; [CPU_FPU] |108| 
        B         ||$C$L24||,LEQ        ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        MOV32     R0H,*+XAR4[6]         ; [CPU_FPU] |108| 
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("pc_finite")
	.dwattr $C$DW$129, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |108| 
        ; call occurs [#||pc_finite||] ; [] |108| 
        CMPB      AL,#0                 ; [CPU_ALU] |108| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        CMPF32    R0H,#0                ; [CPU_FPU] |108| 
        MOVST0    ZF, NF                ; [CPU_FPU] |108| 
        B         ||$C$L24||,LT         ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        MOVB      XAR0,#10              ; [CPU_ALU] |108| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |108| 
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("pc_finite")
	.dwattr $C$DW$130, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |108| 
        ; call occurs [#||pc_finite||] ; [] |108| 
        CMPB      AL,#0                 ; [CPU_ALU] |108| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        CMPF32    R0H,#0                ; [CPU_FPU] |108| 
        MOVST0    ZF, NF                ; [CPU_FPU] |108| 
        B         ||$C$L24||,LT         ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        MOVB      XAR0,#12              ; [CPU_ALU] |108| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |108| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("pc_finite")
	.dwattr $C$DW$131, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |108| 
        ; call occurs [#||pc_finite||] ; [] |108| 
        CMPB      AL,#0                 ; [CPU_ALU] |108| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        CMPF32    R0H,#0                ; [CPU_FPU] |108| 
        MOVST0    ZF, NF                ; [CPU_FPU] |108| 
        B         ||$C$L24||,LEQ        ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        MOVIZ     R1H,#16134            ; [CPU_FPU] |108| 
        MOVXI     R1H,#2706             ; [CPU_FPU] |108| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |108| 
        MOVST0    ZF, NF                ; [CPU_FPU] |108| 
        B         ||$C$L24||,GEQ        ; [CPU_ALU] |108| 
        ; branchcc occurs ; [] |108| 
        MOVB      XAR0,#14              ; [CPU_ALU] |108| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |108| 
        CMPB      AL,#1                 ; [CPU_ALU] |108| 
        MOVB      XAR7,#1,LOS           ; [CPU_ALU] |108| 
||$C$L24||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR7                ; [CPU_ALU] |108| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$122, DW_AT_TI_end_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$122, DW_AT_TI_end_line(0x74)
	.dwattr $C$DW$122, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$122

	.sect	"pcmfpc_code"
	.clink
	.global	||PC_abc_to_dq||

$C$DW$133	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$133, DW_AT_name("PC_abc_to_dq")
	.dwattr $C$DW$133, DW_AT_low_pc(||PC_abc_to_dq||)
	.dwattr $C$DW$133, DW_AT_high_pc(0x00)
	.dwattr $C$DW$133, DW_AT_linkage_name("PC_abc_to_dq")
	.dwattr $C$DW$133, DW_AT_external
	.dwattr $C$DW$133, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$133, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$133, DW_AT_decl_column(0x06)
	.dwattr $C$DW$133, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 75,column 1,is_stmt,address ||PC_abc_to_dq||,isa 0

	.dwfde $C$DW$CIE, ||PC_abc_to_dq||
$C$DW$134	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$134, DW_AT_name("abc")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg12]

$C$DW$135	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$135, DW_AT_name("theta")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$136	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$136, DW_AT_name("dq")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: PC_abc_to_dq                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  8 SOE     *
;***************************************************************

||PC_abc_to_dq||:
;* R4    assigned to $O$C1
;* R6    assigned to $O$C2
;* R3    assigned to $O$C3
;* R2    assigned to $O$C4
;* R5    assigned to $O$C5
;* AR4   assigned to abc
$C$DW$137	.dwtag  DW_TAG_variable
	.dwattr $C$DW$137, DW_AT_name("abc")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg12]

;* R0    assigned to theta
$C$DW$138	.dwtag  DW_TAG_variable
	.dwattr $C$DW$138, DW_AT_name("theta")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x2b]

;* AR5   assigned to dq
$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("dq")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg14]

;* R0    assigned to a
$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("a")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to b
$C$DW$141	.dwtag  DW_TAG_variable
	.dwattr $C$DW$141, DW_AT_name("b")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 79,column 5,is_stmt,isa 0
        DIV2PIF32 R1H,R0H               ; [CPU_FPU] |79| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        SINPUF32  R4H,R1H               ; [CPU_FPU] |79| 
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        DIV2PIF32 R6H,R0H               ; [CPU_FPU] |79| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 77,column 15,is_stmt,isa 0
        MOVIZ     R1H,#16147            ; [CPU_FPU] |77| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 76,column 15,is_stmt,isa 0
        MOVIZ     R0H,#16042            ; [CPU_FPU] |76| 
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 77,column 15,is_stmt,isa 0
        MOVXI     R1H,#52538            ; [CPU_FPU] |77| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 76,column 15,is_stmt,isa 0
        MOVXI     R0H,#43691            ; [CPU_FPU] |76| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 79,column 5,is_stmt,isa 0
        COSPUF32  R6H,R6H               ; [CPU_FPU] |79| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 76,column 15,is_stmt,isa 0
        MOV32     R5H,*+XAR4[0]         ; [CPU_FPU] |76| 
        MOV32     R2H,*+XAR4[4]         ; [CPU_FPU] |76| 

        ADDF32    R5H,R5H,R5H           ; [CPU_FPU] |76| 
||      MOV32     R3H,*+XAR4[2]         ; [CPU_FPU] |76| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 77,column 15,is_stmt,isa 0
        SUBF32    R7H,R3H,R2H           ; [CPU_FPU] |77| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 76,column 15,is_stmt,isa 0
        SUBF32    R5H,R5H,R3H           ; [CPU_FPU] |76| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 77,column 15,is_stmt,isa 0
        MPYF32    R1H,R1H,R7H           ; [CPU_FPU] |77| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 76,column 15,is_stmt,isa 0
        SUBF32    R2H,R5H,R2H           ; [CPU_FPU] |76| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 80,column 5,is_stmt,isa 0
        MOV32     R3H,R4H               ; [CPU_FPU] |80| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 76,column 15,is_stmt,isa 0
        MPYF32    R0H,R0H,R2H           ; [CPU_FPU] |76| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 80,column 5,is_stmt,isa 0
        NEGF32    R3H,R3H               ; [CPU_FPU] |80| 
        MPYF32    R3H,R0H,R3H           ; [CPU_FPU] |80| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 79,column 5,is_stmt,isa 0
        MPYF32    R2H,R1H,R4H           ; [CPU_FPU] |79| 
        MPYF32    R0H,R0H,R6H           ; [CPU_FPU] |79| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 80,column 5,is_stmt,isa 0
        MPYF32    R1H,R1H,R6H           ; [CPU_FPU] |80| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 79,column 5,is_stmt,isa 0
        ADDF32    R0H,R0H,R2H           ; [CPU_FPU] |79| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 80,column 5,is_stmt,isa 0
        ADDF32    R1H,R1H,R3H           ; [CPU_FPU] |80| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 79,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |79| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 80,column 5,is_stmt,isa 0
        MOV32     *+XAR5[2],R1H         ; [CPU_FPU] |80| 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$133, DW_AT_TI_end_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$133, DW_AT_TI_end_line(0x51)
	.dwattr $C$DW$133, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$133

	.sect	"pcmfpc_code"
	.clink
	.global	||PC_dq_to_abc||

$C$DW$143	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$143, DW_AT_name("PC_dq_to_abc")
	.dwattr $C$DW$143, DW_AT_low_pc(||PC_dq_to_abc||)
	.dwattr $C$DW$143, DW_AT_high_pc(0x00)
	.dwattr $C$DW$143, DW_AT_linkage_name("PC_dq_to_abc")
	.dwattr $C$DW$143, DW_AT_external
	.dwattr $C$DW$143, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$143, DW_AT_decl_line(0x53)
	.dwattr $C$DW$143, DW_AT_decl_column(0x06)
	.dwattr $C$DW$143, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 84,column 1,is_stmt,address ||PC_dq_to_abc||,isa 0

	.dwfde $C$DW$CIE, ||PC_dq_to_abc||
$C$DW$144	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$144, DW_AT_name("dq")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg12]

$C$DW$145	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$145, DW_AT_name("theta")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$146	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$146, DW_AT_name("abc")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: PC_dq_to_abc                  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||PC_dq_to_abc||:
;* R1    assigned to $O$C1
;* R0    assigned to $O$C2
;* R4    assigned to $O$C3
;* R3    assigned to $O$C4
;* R2    assigned to $O$C5
;* R1    assigned to $O$C6
;* AR4   assigned to dq
$C$DW$147	.dwtag  DW_TAG_variable
	.dwattr $C$DW$147, DW_AT_name("dq")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg12]

;* R0    assigned to theta
$C$DW$148	.dwtag  DW_TAG_variable
	.dwattr $C$DW$148, DW_AT_name("theta")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x2b]

;* AR5   assigned to abc
$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("abc")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg14]

;* R5    assigned to a
$C$DW$150	.dwtag  DW_TAG_variable
	.dwattr $C$DW$150, DW_AT_name("a")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x3f]

;* R2    assigned to b
$C$DW$151	.dwtag  DW_TAG_variable
	.dwattr $C$DW$151, DW_AT_name("b")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 86,column 14,is_stmt,isa 0
        DIV2PIF32 R1H,R0H               ; [CPU_FPU] |86| 
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |86| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        SINPUF32  R3H,R1H               ; [CPU_FPU] |86| 
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        COSPUF32  R1H,R0H               ; [CPU_FPU] |86| 
        MOV32     R2H,*+XAR4[2]         ; [CPU_FPU] |86| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 88,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16221            ; [CPU_FPU] |88| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 86,column 14,is_stmt,isa 0

        MPYF32    R5H,R3H,R2H           ; [CPU_FPU] |86| 
||      MOV32     R4H,*+XAR4[0]         ; [CPU_FPU] |86| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 88,column 5,is_stmt,isa 0
        MOVXI     R0H,#46039            ; [CPU_FPU] |88| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 86,column 14,is_stmt,isa 0
        MPYF32    R6H,R1H,R4H           ; [CPU_FPU] |86| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 86,column 35,is_stmt,isa 0
        MPYF32    R3H,R3H,R4H           ; [CPU_FPU] |86| 
        MPYF32    R1H,R1H,R2H           ; [CPU_FPU] |86| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 86,column 14,is_stmt,isa 0
        SUBF32    R5H,R6H,R5H           ; [CPU_FPU] |86| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 86,column 35,is_stmt,isa 0
        ADDF32    R2H,R1H,R3H           ; [CPU_FPU] |86| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 88,column 5,is_stmt,isa 0
        MOV32     R1H,R5H               ; [CPU_FPU] |88| 
        MPYF32    R0H,R0H,R2H           ; [CPU_FPU] |88| 
        NEGF32    R1H,R1H               ; [CPU_FPU] |88| 
        MPYF32    R1H,R1H,#16128        ; [CPU_FPU] |88| 
        NOP       ; [CPU_ALU] 
        ADDF32    R2H,R0H,R1H           ; [CPU_FPU] |88| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 87,column 5,is_stmt,isa 0

        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |89| 
||      MOV32     *+XAR5[0],R5H         ; [CPU_FPU] |87| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 88,column 5,is_stmt,isa 0
        MOV32     *+XAR5[2],R2H         ; [CPU_FPU] |88| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 89,column 5,is_stmt,isa 0
        MOV32     *+XAR5[4],R0H         ; [CPU_FPU] |89| 
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$143, DW_AT_TI_end_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$143, DW_AT_TI_end_line(0x5a)
	.dwattr $C$DW$143, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$143

	.sect	"pcmfpc_code"
	.clink

$C$DW$153	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$153, DW_AT_name("pc_projection")
	.dwattr $C$DW$153, DW_AT_low_pc(||pc_projection||)
	.dwattr $C$DW$153, DW_AT_high_pc(0x00)
	.dwattr $C$DW$153, DW_AT_linkage_name("pc_projection")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$153, DW_AT_decl_line(0x76)
	.dwattr $C$DW$153, DW_AT_decl_column(0x10)
	.dwattr $C$DW$153, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 120,column 1,is_stmt,address ||pc_projection||,isa 0

	.dwfde $C$DW$CIE, ||pc_projection||
$C$DW$154	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$154, DW_AT_name("q")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg12]

$C$DW$155	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$155, DW_AT_name("hw")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg0]

$C$DW$156	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$156, DW_AT_name("c")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$157	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$157, DW_AT_name("up")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$158	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$158, DW_AT_name("low")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x33]

$C$DW$159	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$159, DW_AT_name("mu")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x37]

$C$DW$160	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$160, DW_AT_name("next")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: pc_projection                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  8 SOE     *
;***************************************************************

||pc_projection||:
;* R5    assigned to $O$K16
;* AR4   assigned to $O$U14
;* AR5   assigned to $O$U29
;* AL    assigned to hw
$C$DW$161	.dwtag  DW_TAG_variable
	.dwattr $C$DW$161, DW_AT_name("hw")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg0]

;* R4    assigned to c
$C$DW$162	.dwtag  DW_TAG_variable
	.dwattr $C$DW$162, DW_AT_name("c")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x3b]

;* R1    assigned to up
$C$DW$163	.dwtag  DW_TAG_variable
	.dwattr $C$DW$163, DW_AT_name("up")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to low
$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("low")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x33]

;* R3    assigned to mu
$C$DW$165	.dwtag  DW_TAG_variable
	.dwattr $C$DW$165, DW_AT_name("mu")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x37]

;* T     assigned to r
$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("r")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg22]

;* R0    assigned to sum
$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("sum")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x2b]

;* R6    assigned to z
$C$DW$168	.dwtag  DW_TAG_variable
	.dwattr $C$DW$168, DW_AT_name("z")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x43]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     R4H,R0H               ; [CPU_FPU] |120| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 123,column 9,is_stmt,isa 0
        MOV       T,#0                  ; [CPU_ALU] |123| 
        MOVB      XAR6,#2               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 122,column 16,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |122| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8

        MOV32     *SP++,R7H             ; [CPU_FPU] 
||      MPYF32    R5H,R3H,R4H           ; [CPU_FPU] 

	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
||$C$L25||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 125,column 9,is_stmt,isa 0
        MOVB      AH,#1                 ; [CPU_ALU] |125| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 124,column 18,is_stmt,isa 0
        MOV32     R3H,*XAR4++           ; [CPU_FPU] |124| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 125,column 9,is_stmt,isa 0
        LSL       AH,T                  ; [CPU_ALU] |125| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 124,column 18,is_stmt,isa 0
        ADDF32    R6H,R5H,R3H           ; [CPU_FPU] |124| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 125,column 9,is_stmt,isa 0
        AND       AH,AL                 ; [CPU_ALU] |125| 
        B         ||$C$L26||,NEQ        ; [CPU_ALU] |125| 
        ; branchcc occurs ; [] |125| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 126,column 14,is_stmt,isa 0
        MPYF32    R3H,R1H,R4H           ; [CPU_FPU] |126| 
        MPYF32    R7H,R2H,R4H           ; [CPU_FPU] |126| 
        SUBF32    R3H,R6H,R3H           ; [CPU_FPU] |126| 
        ADDF32    R6H,R6H,R7H           ; [CPU_FPU] |126| 
        MAXF32    R3H,#0                ; [CPU_FPU] |126| 
        MINF32    R6H,#0                ; [CPU_FPU] |126| 
        ADDF32    R3H,R3H,R6H           ; [CPU_FPU] |126| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR5[0],R3H         ; [CPU_FPU] |126| 
        B         ||$C$L27||,UNC        ; [CPU_ALU] |126| 
        ; branch occurs ; [] |126| 
||$C$L26||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 125,column 36,is_stmt,isa 0
        MOV32     *+XAR5[0],R6H         ; [CPU_FPU] |125| 
||$C$L27||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 127,column 9,is_stmt,isa 0
        MOV       AH,T                  ; [CPU_ALU] |127| 
        MOV32     R3H,*XAR5++           ; [CPU_FPU] |127| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 123,column 14,is_stmt,isa 0
        ADDB      AH,#1                 ; [CPU_ALU] |123| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 127,column 9,is_stmt,isa 0
        ADDF32    R0H,R0H,R3H           ; [CPU_FPU] |127| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 123,column 14,is_stmt,isa 0
        MOV       T,AH                  ; [CPU_ALU] |123| 
        BANZ      ||$C$L25||,AR6--      ; [CPU_ALU] |123| 
        ; branchcc occurs ; [] |123| 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$153, DW_AT_TI_end_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$153, DW_AT_TI_end_line(0x82)
	.dwattr $C$DW$153, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$153

	.sect	"pcmfpc_code"
	.clink

$C$DW$170	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$170, DW_AT_name("pc_root")
	.dwattr $C$DW$170, DW_AT_low_pc(||pc_root||)
	.dwattr $C$DW$170, DW_AT_high_pc(0x00)
	.dwattr $C$DW$170, DW_AT_linkage_name("pc_root")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$170, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$170, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$170, DW_AT_decl_column(0x11)
	.dwattr $C$DW$170, DW_AT_TI_max_frame_size(-64)
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 141,column 1,is_stmt,address ||pc_root||,isa 0

	.dwfde $C$DW$CIE, ||pc_root||
$C$DW$171	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$171, DW_AT_name("q")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg12]

$C$DW$172	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$172, DW_AT_name("hw")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg0]

$C$DW$173	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$173, DW_AT_name("c")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$174	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$174, DW_AT_name("up")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$175	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$175, DW_AT_name("low")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x33]

$C$DW$176	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$176, DW_AT_name("method")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg1]

$C$DW$177	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$177, DW_AT_name("mu")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg14]

$C$DW$178	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$178, DW_AT_name("width")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_breg20 -66]

$C$DW$179	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$179, DW_AT_name("iterations")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_breg20 -68]

$C$DW$180	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$180, DW_AT_name("next")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_breg20 -70]

$C$DW$181	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$181, DW_AT_name("residual")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_breg20 -72]


;***************************************************************
;* FNAME: pc_root                       FR SIZE:  62           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 46 Auto, 14 SOE     *
;***************************************************************

||pc_root||:
$C$DW$182	.dwtag  DW_TAG_variable
	.dwattr $C$DW$182, DW_AT_name("points")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_breg20 -18]

$C$DW$183	.dwtag  DW_TAG_variable
	.dwattr $C$DW$183, DW_AT_name("work")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_breg20 -24]

;* R1    assigned to $O$C7
;* R7    assigned to $O$C8
;* PH    assigned to $O$C9
;* R0    assigned to $O$C10
;* R1    assigned to $O$C11
;* R0    assigned to $O$C12
;* AL    assigned to $O$C13
;* R4    assigned to $O$C14
;* AR0   assigned to k
$C$DW$184	.dwtag  DW_TAG_variable
	.dwattr $C$DW$184, DW_AT_name("k")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg4]

;* AR4   assigned to k
$C$DW$185	.dwtag  DW_TAG_variable
	.dwattr $C$DW$185, DW_AT_name("k")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg12]

;* PL    assigned to k
$C$DW$186	.dwtag  DW_TAG_variable
	.dwattr $C$DW$186, DW_AT_name("k")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg2]

;* R7    assigned to $O$U14
;* R6    assigned to $O$U22
;* R4    assigned to $O$U29
;* R5    assigned to $O$K11
;* AR0   assigned to $O$U117
;* R0    assigned to $O$U176
;* AR3   assigned to $O$L4
;* R0    assigned to $O$S1
;* R0    assigned to $O$S2
;* R7    assigned to $O$S4
;* R6    assigned to $O$S5
;* R4    assigned to $O$S6
;* AR7   assigned to q
$C$DW$187	.dwtag  DW_TAG_variable
	.dwattr $C$DW$187, DW_AT_name("q")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg18]

;* AR1   assigned to hw
$C$DW$188	.dwtag  DW_TAG_variable
	.dwattr $C$DW$188, DW_AT_name("hw")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg6]

$C$DW$189	.dwtag  DW_TAG_variable
	.dwattr $C$DW$189, DW_AT_name("c")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_breg20 -28]

$C$DW$190	.dwtag  DW_TAG_variable
	.dwattr $C$DW$190, DW_AT_name("up")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_breg20 -30]

;* R2    assigned to low
$C$DW$191	.dwtag  DW_TAG_variable
	.dwattr $C$DW$191, DW_AT_name("low")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x33]

$C$DW$192	.dwtag  DW_TAG_variable
	.dwattr $C$DW$192, DW_AT_name("method")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_breg20 -25]

$C$DW$193	.dwtag  DW_TAG_variable
	.dwattr $C$DW$193, DW_AT_name("mu")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_breg20 -32]

$C$DW$194	.dwtag  DW_TAG_variable
	.dwattr $C$DW$194, DW_AT_name("width")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_breg20 -34]

$C$DW$195	.dwtag  DW_TAG_variable
	.dwattr $C$DW$195, DW_AT_name("iterations")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_breg20 -36]

$C$DW$196	.dwtag  DW_TAG_variable
	.dwattr $C$DW$196, DW_AT_name("next")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_breg20 -38]

$C$DW$197	.dwtag  DW_TAG_variable
	.dwattr $C$DW$197, DW_AT_name("residual")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_breg20 -40]

;* R5    assigned to lo
$C$DW$198	.dwtag  DW_TAG_variable
	.dwattr $C$DW$198, DW_AT_name("lo")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$199	.dwtag  DW_TAG_variable
	.dwattr $C$DW$199, DW_AT_name("hi")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_breg20 -42]

$C$DW$200	.dwtag  DW_TAG_variable
	.dwattr $C$DW$200, DW_AT_name("hl")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_breg20 -44]

$C$DW$201	.dwtag  DW_TAG_variable
	.dwattr $C$DW$201, DW_AT_name("hh")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_breg20 -46]

$C$DW$202	.dwtag  DW_TAG_variable
	.dwattr $C$DW$202, DW_AT_name("tolerance")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_breg20 -48]

;* R4    assigned to mid
$C$DW$203	.dwtag  DW_TAG_variable
	.dwattr $C$DW$203, DW_AT_name("mid")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x3b]

;* R0    assigned to h
$C$DW$204	.dwtag  DW_TAG_variable
	.dwattr $C$DW$204, DW_AT_name("h")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x2b]

;* R6    assigned to a
$C$DW$205	.dwtag  DW_TAG_variable
	.dwattr $C$DW$205, DW_AT_name("a")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x43]

;* R4    assigned to ha
$C$DW$206	.dwtag  DW_TAG_variable
	.dwattr $C$DW$206, DW_AT_name("ha")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x3b]

;* AR3   assigned to count
$C$DW$207	.dwtag  DW_TAG_variable
	.dwattr $C$DW$207, DW_AT_name("count")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg10]

;* T     assigned to r
$C$DW$208	.dwtag  DW_TAG_variable
	.dwattr $C$DW$208, DW_AT_name("r")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg22]

;* PL    assigned to j
$C$DW$209	.dwtag  DW_TAG_variable
	.dwattr $C$DW$209, DW_AT_name("j")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg2]

;* PL    assigned to found
$C$DW$210	.dwtag  DW_TAG_variable
	.dwattr $C$DW$210, DW_AT_name("found")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg2]

;* R0    assigned to y
$C$DW$211	.dwtag  DW_TAG_variable
	.dwattr $C$DW$211, DW_AT_name("y")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to key
$C$DW$212	.dwtag  DW_TAG_variable
	.dwattr $C$DW$212, DW_AT_name("key")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x2f]

;* R7    assigned to b
$C$DW$213	.dwtag  DW_TAG_variable
	.dwattr $C$DW$213, DW_AT_name("b")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x47]

;* R0    assigned to hb
$C$DW$214	.dwtag  DW_TAG_variable
	.dwattr $C$DW$214, DW_AT_name("hb")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 8
	.dwcfi	cfa_offset, -10
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 10
	.dwcfi	cfa_offset, -12
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 12
	.dwcfi	cfa_offset, -14
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 14
	.dwcfi	cfa_offset, -16
        MOVZ      AR2,SP                ; [CPU_ALU] 
        SUBB      FP,#24                ; [CPU_ARAU] 
        ADDB      SP,#48                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -64
        MOVL      XAR7,XAR4             ; [CPU_ALU] |141| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 142,column 15,is_stmt,isa 0
        MOV32     R5H,R2H               ; [CPU_FPU] |142| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 141,column 1,is_stmt,isa 0
        MOVL      XAR6,*+FP[0]          ; [CPU_ALU] |141| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 142,column 15,is_stmt,isa 0
        NEGF32    R5H,R5H               ; [CPU_FPU] |142| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 143,column 19,is_stmt,isa 0
        MOV32     R7H,*+XAR7[0]         ; [CPU_FPU] |143| 
        CMPF32    R7H,#0                ; [CPU_FPU] |143| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 141,column 1,is_stmt,isa 0
        MOVL      *-SP[40],XAR6         ; [CPU_ALU] |141| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 143,column 19,is_stmt,isa 0
        NEGF32    R7H,R7H,LT            ; [CPU_FPU] |143| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 141,column 1,is_stmt,isa 0
        MOVL      XAR6,*+FP[2]          ; [CPU_ALU] |141| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 143,column 19,is_stmt,isa 0
        MOV32     R6H,*+XAR7[2]         ; [CPU_FPU] |143| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 141,column 1,is_stmt,isa 0
        MOV32     *-SP[30],R1H          ; [CPU_FPU] |141| 
        MOV32     *-SP[28],R0H          ; [CPU_FPU] |141| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 142,column 23,is_stmt,isa 0
        MOV32     *-SP[42],R1H          ; [CPU_FPU] |142| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 143,column 19,is_stmt,isa 0
        CMPF32    R6H,#0                ; [CPU_FPU] |143| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 141,column 1,is_stmt,isa 0
        MOVL      *-SP[38],XAR6         ; [CPU_ALU] |141| 
        MOVL      XAR6,*+FP[4]          ; [CPU_ALU] |141| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 143,column 19,is_stmt,isa 0
        NEGF32    R6H,R6H,LT            ; [CPU_FPU] |143| 
        MOV32     R4H,*+XAR7[4]         ; [CPU_FPU] |143| 
        CMPF32    R4H,#0                ; [CPU_FPU] |143| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 141,column 1,is_stmt,isa 0
        MOVL      *-SP[36],XAR6         ; [CPU_ALU] |141| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 143,column 19,is_stmt,isa 0
        NEGF32    R4H,R4H,LT            ; [CPU_FPU] |143| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 141,column 1,is_stmt,isa 0
        MOVL      XAR6,*+FP[6]          ; [CPU_ALU] |141| 
        MOVL      *-SP[32],XAR5         ; [CPU_ALU] |141| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 146,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |146| 
        MOV32     R3H,R5H               ; [CPU_FPU] |146| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 141,column 1,is_stmt,isa 0
        MOV       *-SP[25],AH           ; [CPU_ALU] |141| 
        MOVL      *-SP[34],XAR6         ; [CPU_ALU] |141| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 146,column 5,is_stmt,isa 0
        SUBB      XAR5,#24              ; [CPU_ARAU] |146| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |146| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("pc_projection")
	.dwattr $C$DW$215, DW_AT_TI_call

        LCR       #||pc_projection||    ; [CPU_ALU] |146| 
        ; call occurs [#||pc_projection||] ; [] |146| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 147,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |147| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 146,column 5,is_stmt,isa 0
        MOV32     *-SP[44],R0H          ; [CPU_FPU] |146| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 147,column 5,is_stmt,isa 0
        MOV32     R3H,*-SP[42]          ; [CPU_FPU] |147| 
        SUBB      XAR5,#24              ; [CPU_ARAU] |147| 
        MOVL      XAR4,XAR7             ; [CPU_ALU] |147| 
        MOV32     R0H,*-SP[28]          ; [CPU_FPU] |147| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |147| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("pc_projection")
	.dwattr $C$DW$216, DW_AT_TI_call

        LCR       #||pc_projection||    ; [CPU_ALU] |147| 
        ; call occurs [#||pc_projection||] ; [] |147| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 141,column 1,is_stmt,isa 0
        MOVZ      AR1,AL                ; [CPU_ALU] |141| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 147,column 5,is_stmt,isa 0
        MOV32     R1H,R0H               ; [CPU_FPU] |147| 
        MOV32     R0H,*-SP[44]          ; [CPU_FPU] |147| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 148,column 5,is_stmt,isa 0
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("pc_finite")
	.dwattr $C$DW$217, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |148| 
        ; call occurs [#||pc_finite||] ; [] |148| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 144,column 22,is_stmt,isa 0

        MOV32     R0H,*-SP[30]          ; [CPU_FPU] |144| 
||      ADDF32    R3H,R6H,R7H           ; [CPU_FPU] |144| 

        ADDF32    R0H,R0H,R2H           ; [CPU_FPU] |144| 

        MOV32     R4H,*-SP[28]          ; [CPU_FPU] |144| 
||      ADDF32    R3H,R3H,R4H           ; [CPU_FPU] |144| 

        MPYF32    R0H,R4H,R0H           ; [CPU_FPU] |144| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R3H           ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 148,column 5,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |148| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 144,column 22,is_stmt,isa 0
        MAXF32    R0H,#16256            ; [CPU_FPU] |144| 
        MPYF32    R0H,R0H,#13952        ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 147,column 5,is_stmt,isa 0
        MOV32     *-SP[46],R1H          ; [CPU_FPU] |147| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 144,column 22,is_stmt,isa 0
        MOV32     *-SP[48],R0H          ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 148,column 5,is_stmt,isa 0
        B         ||$C$L52||,EQ         ; [CPU_ALU] |148| 
        ; branchcc occurs ; [] |148| 
        MOV32     R0H,*-SP[46]          ; [CPU_FPU] 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("pc_finite")
	.dwattr $C$DW$218, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |148| 
        ; call occurs [#||pc_finite||] ; [] |148| 
        CMPB      AL,#0                 ; [CPU_ALU] |148| 
        B         ||$C$L52||,EQ         ; [CPU_ALU] |148| 
        ; branchcc occurs ; [] |148| 
        MOV32     R1H,*-SP[48]          ; [CPU_FPU] 
        MOV32     R0H,*-SP[44]          ; [CPU_FPU] 
        CMPF32    R0H,R1H               ; [CPU_FPU] |148| 
        MOVST0    ZF, NF                ; [CPU_FPU] |148| 
        B         ||$C$L52||,GT         ; [CPU_ALU] |148| 
        ; branchcc occurs ; [] |148| 
        MOV32     R0H,*-SP[48]          ; [CPU_FPU] 
        MOV32     R1H,*-SP[46]          ; [CPU_FPU] |148| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |148| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |148| 
        MOVST0    ZF, NF                ; [CPU_FPU] |148| 
        B         ||$C$L52||,LT         ; [CPU_ALU] |148| 
        ; branchcc occurs ; [] |148| 
        MOVL      XAR4,*-SP[36]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 150,column 5,is_stmt,isa 0
        MOV       AL,*-SP[25]           ; [CPU_ALU] |150| 
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |150| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 151,column 5,is_stmt,isa 0
        B         ||$C$L30||,NEQ        ; [CPU_ALU] |151| 
        ; branchcc occurs ; [] |151| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 152,column 13,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |152| 
||$C$L28||:    
        MOV32     R0H,*-SP[42]          ; [CPU_FPU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 154,column 22,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |154| 
        MOV       AL,AR1                ; [CPU_ALU] |154| 
        MOVL      XAR4,XAR7             ; [CPU_ALU] |154| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 153,column 24,is_stmt,isa 0

        MOV32     R1H,*-SP[30]          ; [CPU_FPU] |154| 
||      ADDF32    R0H,R0H,R5H           ; [CPU_FPU] |153| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 154,column 22,is_stmt,isa 0
        SUBB      XAR5,#24              ; [CPU_ARAU] |154| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 153,column 24,is_stmt,isa 0
        MPYF32    R4H,R0H,#16128        ; [CPU_FPU] |153| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 154,column 22,is_stmt,isa 0
        MOVZ      AR5,AR5               ; [CPU_ALU] |154| 
        MOV32     R3H,R4H               ; [CPU_FPU] |154| 
        MOV32     R0H,*-SP[28]          ; [CPU_FPU] |154| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("pc_projection")
	.dwattr $C$DW$219, DW_AT_TI_call

        LCR       #||pc_projection||    ; [CPU_ALU] |154| 
        ; call occurs [#||pc_projection||] ; [] |154| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 156,column 13,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |156| 
        MOVST0    ZF, NF                ; [CPU_FPU] |156| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 156,column 43,is_stmt,isa 0
        MOV32     R5H,R4H,LEQ           ; [CPU_FPU] |156| 
        B         ||$C$L29||,LEQ        ; [CPU_ALU] |156| 
        ; branchcc occurs ; [] |156| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 156,column 30,is_stmt,isa 0
        MOV32     *-SP[42],R4H          ; [CPU_FPU] |156| 
||$C$L29||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 157,column 13,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |157| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 152,column 18,is_stmt,isa 0
        MOVL      XAR4,*-SP[36]         ; [CPU_ALU] |152| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 157,column 13,is_stmt,isa 0
        ADD       AL,PL                 ; [CPU_ALU] |157| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 152,column 18,is_stmt,isa 0
        CMPB      AL,#32                ; [CPU_ALU] |152| 
        MOV       PL,AL                 ; [CPU_FPU] |152| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 157,column 13,is_stmt,isa 0
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |157| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 152,column 18,is_stmt,isa 0
        B         ||$C$L28||,LO         ; [CPU_ALU] |152| 
        ; branchcc occurs ; [] |152| 
        MOV32     R0H,*-SP[42]          ; [CPU_FPU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 159,column 9,is_stmt,isa 0
        ADDF32    R1H,R0H,R5H           ; [CPU_FPU] |159| 
        NOP       ; [CPU_ALU] 
        MPYF32    R1H,R1H,#16128        ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 160,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[32]         ; [CPU_ALU] |160| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 159,column 9,is_stmt,isa 0

        MOV32     *+XAR4[0],R1H         ; [CPU_FPU] |159| 
||      SUBF32    R0H,R0H,R5H           ; [CPU_FPU] |160| 

        B         ||$C$L49||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L30||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 164,column 9,is_stmt,isa 0
        MOV32     R0H,*-SP[42]          ; [CPU_FPU] |164| 
        MOV32     *-SP[18],R5H          ; [CPU_FPU] |164| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 163,column 23,is_stmt,isa 0
        MOVB      XAR3,#2               ; [CPU_ALU] |163| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 165,column 13,is_stmt,isa 0
        MOV       T,#0                  ; [CPU_ALU] |165| 
        MOVB      XAR6,#2               ; [CPU_ALU] 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 164,column 22,is_stmt,isa 0
        MOV32     *-SP[16],R0H          ; [CPU_FPU] |164| 
||$C$L31||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 165,column 28,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |165| 
        LSL       AL,T                  ; [CPU_ALU] |165| 
        AND       AL,AR1                ; [CPU_ALU] |165| 
        B         ||$C$L33||,NEQ        ; [CPU_ALU] |165| 
        ; branchcc occurs ; [] |165| 
        MOV       AL,T                  ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 166,column 37,is_stmt,isa 0
        MOV       ACC,AL << 1           ; [CPU_ALU] |166| 
        ADDL      ACC,XAR7              ; [CPU_ALU] |166| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |166| 
        MOV32     R1H,*-SP[28]          ; [CPU_FPU] |166| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |166| 
        DIVF32    R0H,R0H,R1H           ; [CPU_FPU] |166| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 167,column 13,is_stmt,isa 0

        SUBF32    R1H,R5H,R0H           ; [CPU_FPU] |167| 
||      MOV32     R3H,*-SP[30]          ; [CPU_FPU] |167| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 166,column 37,is_stmt,isa 0
        SUBF32    R0H,R3H,R0H           ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 167,column 13,is_stmt,isa 0
        CMPF32    R1H,R5H               ; [CPU_FPU] |167| 
        MOVST0    ZF, NF                ; [CPU_FPU] |167| 
        B         ||$C$L32||,LEQ        ; [CPU_ALU] |167| 
        ; branchcc occurs ; [] |167| 
        CMPF32    R1H,R3H               ; [CPU_FPU] |167| 
        MOVST0    ZF, NF                ; [CPU_FPU] |167| 
        B         ||$C$L32||,GEQ        ; [CPU_ALU] |167| 
        ; branchcc occurs ; [] |167| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 167,column 30,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |167| 
        SUBB      XAR4,#18              ; [CPU_ARAU] |167| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |167| 
        MOV       AL,AR3                ; [CPU_ALU] 
        MOV       ACC,AL << 1           ; [CPU_ALU] |167| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |167| 
        ADDB      XAR3,#1               ; [CPU_ALU] |167| 
        MOV32     *+XAR4[0],R1H         ; [CPU_FPU] |167| 
||$C$L32||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 168,column 13,is_stmt,isa 0
        CMPF32    R0H,R5H               ; [CPU_FPU] |168| 
        MOVST0    ZF, NF                ; [CPU_FPU] |168| 
        B         ||$C$L33||,LEQ        ; [CPU_ALU] |168| 
        ; branchcc occurs ; [] |168| 
        MOV32     R1H,*-SP[42]          ; [CPU_FPU] 
        CMPF32    R0H,R1H               ; [CPU_FPU] |168| 
        MOVST0    ZF, NF                ; [CPU_FPU] |168| 
        B         ||$C$L33||,GEQ        ; [CPU_ALU] |168| 
        ; branchcc occurs ; [] |168| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 168,column 30,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |168| 
        SUBB      XAR4,#18              ; [CPU_ARAU] |168| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |168| 
        MOV       AL,AR3                ; [CPU_ALU] 
        MOV       ACC,AL << 1           ; [CPU_ALU] |168| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |168| 
        ADDB      XAR3,#1               ; [CPU_ALU] |168| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |168| 
||$C$L33||:    
        MOV       AL,T                  ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 165,column 18,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |165| 
        MOV       T,AL                  ; [CPU_ALU] |165| 
        BANZ      ||$C$L31||,AR6--      ; [CPU_ALU] |165| 
        ; branchcc occurs ; [] |165| 
        MOV       AL,AR3                ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 170,column 18,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |170| 
        B         ||$C$L37||,LOS        ; [CPU_ALU] |170| 
        ; branchcc occurs ; [] |170| 
        MOVZ      AR5,SP                ; [CPU_ALU] 
        MOVZ      AR6,AR3               ; [CPU_ALU] 
        SUBB      XAR5,#16              ; [CPU_ARAU] 
        SUBB      XAR6,#2               ; [CPU_ARAU] 
        MOVZ      AR0,AR5               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 170,column 13,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |170| 
||$C$L34||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 171,column 35,is_stmt,isa 0
        MOV       PL,AR4                ; [CPU_ALU] |171| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 171,column 24,is_stmt,isa 0
        MOV       AL,PL                 ; [CPU_ALU] |171| 
        MOV32     R1H,*+XAR0[0]         ; [CPU_FPU] |171| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 171,column 35,is_stmt,isa 0
        B         ||$C$L36||,EQ         ; [CPU_ALU] |171| 
        ; branchcc occurs ; [] |171| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L35||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 172,column 19,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |172| 
        SUBB      XAR5,#18              ; [CPU_ARAU] |172| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |172| 
        ADDB      AL,#-1                ; [CPU_ALU] |172| 
        MOV       PH,AL                 ; [CPU_ALU] |172| 
        MOV       ACC,PH << 1           ; [CPU_ALU] |172| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |172| 
        MOV32     R0H,*+XAR5[0]         ; [CPU_FPU] |172| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |172| 
        MOVST0    ZF, NF                ; [CPU_FPU] |172| 
        B         ||$C$L36||,GEQ        ; [CPU_ALU] |172| 
        ; branchcc occurs ; [] |172| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 172,column 46,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |172| 
        SUBB      XAR5,#18              ; [CPU_ARAU] |172| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |172| 
        MOV       ACC,PL << 1           ; [CPU_ALU] |172| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |172| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 172,column 19,is_stmt,isa 0
        MOV       PL,PH                 ; [CPU_ALU] |172| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 172,column 46,is_stmt,isa 0
        MOV       AL,PL                 ; [CPU_ALU] |172| 
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |172| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 172,column 19,is_stmt,isa 0
        B         ||$C$L35||,NEQ        ; [CPU_ALU] |172| 
        ; branchcc occurs ; [] |172| 
||$C$L36||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 173,column 13,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |173| 
        SUBB      XAR5,#18              ; [CPU_ARAU] |173| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |173| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PL << 1           ; [CPU_ALU] |173| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |173| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 170,column 18,is_stmt,isa 0
        ADDB      XAR4,#1               ; [CPU_ALU] |170| 
        ADDB      XAR0,#2               ; [CPU_ALU] |170| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 173,column 13,is_stmt,isa 0
        MOV32     *+XAR5[0],R1H         ; [CPU_FPU] |173| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 170,column 18,is_stmt,isa 0
        BANZ      ||$C$L34||,AR6--      ; [CPU_ALU] |170| 
        ; branchcc occurs ; [] |170| 
||$C$L37||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 175,column 9,is_stmt,isa 0
        MOV32     R6H,*-SP[18]          ; [CPU_FPU] |175| 
        MOV32     R4H,*-SP[44]          ; [CPU_FPU] |175| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 176,column 9,is_stmt,isa 0
        CMPF32    R4H,#0                ; [CPU_FPU] |176| 
        MOVST0    ZF, NF                ; [CPU_FPU] |176| 
        B         ||$C$L39||,EQ         ; [CPU_ALU] |176| 
        ; branchcc occurs ; [] |176| 
        MOV       AL,AR3                ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 177,column 18,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |177| 
        B         ||$C$L38||,HI         ; [CPU_ALU] |177| 
        ; branchcc occurs ; [] |177| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 191,column 13,is_stmt,isa 0
        CMPF32    R4H,#0                ; [CPU_FPU] |191| 
        MOVST0    ZF, NF                ; [CPU_FPU] |191| 
        B         ||$C$L43||,GEQ        ; [CPU_ALU] |191| 
        ; branchcc occurs ; [] |191| 
        B         ||$C$L44||,UNC        ; [CPU_ALU] |191| 
        ; branch occurs ; [] |191| 
||$C$L38||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 163,column 36,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |163| 
        B         ||$C$L40||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L39||:    
        MOVL      XAR4,*-SP[32]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 176,column 29,is_stmt,isa 0
        MOV32     *+XAR4[0],R6H         ; [CPU_FPU] |176| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 176,column 35,is_stmt,isa 0
        MOVL      XAR4,*-SP[34]         ; [CPU_ALU] |176| 
        MOV       AL,AR3                ; [CPU_ALU] |176| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 177,column 18,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |177| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 176,column 35,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |176| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |176| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 177,column 18,is_stmt,isa 0
        B         ||$C$L50||,LOS        ; [CPU_ALU] |177| 
        ; branchcc occurs ; [] |177| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 176,column 53,is_stmt,isa 0
        MOV       PL,#1                 ; [CPU_ALU] |176| 
||$C$L40||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 177,column 13,is_stmt,isa 0
        MOVB      XAR0,#1               ; [CPU_ALU] |177| 
        SUB       AL,AR0                ; [CPU_ALU] 
        CLRC      SXM                   ; [CPU_FPU] 
        ADDB      AL,#-1                ; [CPU_ALU] 
        MOVZ      AR3,AL                ; [CPU_ALU] 
||$C$L41||:    
        MOV       AL,PL                 ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 177,column 18,is_stmt,isa 0
        B         ||$C$L50||,NEQ        ; [CPU_ALU] |177| 
        ; branchcc occurs ; [] |177| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 178,column 22,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |178| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 179,column 23,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |179| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 178,column 22,is_stmt,isa 0
        SUBB      XAR4,#18              ; [CPU_ARAU] |178| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |178| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 179,column 23,is_stmt,isa 0
        SUBB      XAR5,#24              ; [CPU_ARAU] |179| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 178,column 22,is_stmt,isa 0
        MOV       ACC,AR0 << 1          ; [CPU_ALU] |178| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 179,column 23,is_stmt,isa 0
        MOVZ      AR5,AR5               ; [CPU_ALU] |179| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 178,column 22,is_stmt,isa 0
        ADDL      XAR4,ACC              ; [CPU_ALU] |178| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 179,column 23,is_stmt,isa 0
        MOV32     R0H,*-SP[28]          ; [CPU_FPU] |179| 
        MOV32     R1H,*-SP[30]          ; [CPU_FPU] |179| 
        MOV       AL,AR1                ; [CPU_ALU] |179| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 178,column 22,is_stmt,isa 0
        MOV32     R7H,*+XAR4[0]         ; [CPU_FPU] |178| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 179,column 23,is_stmt,isa 0
        MOV32     R3H,R7H               ; [CPU_FPU] |179| 
        MOVL      XAR4,XAR7             ; [CPU_ALU] |179| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("pc_projection")
	.dwattr $C$DW$220, DW_AT_TI_call

        LCR       #||pc_projection||    ; [CPU_ALU] |179| 
        ; call occurs [#||pc_projection||] ; [] |179| 
        MOVL      XAR4,*-SP[36]         ; [CPU_ALU] |179| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 181,column 13,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |181| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 180,column 13,is_stmt,isa 0
        INC       *+XAR4[0]             ; [CPU_ALU] |180| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 181,column 13,is_stmt,isa 0
        MOVST0    ZF, NF                ; [CPU_FPU] |181| 
        B         ||$C$L47||,EQ         ; [CPU_ALU] |181| 
        ; branchcc occurs ; [] |181| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 182,column 18,is_stmt,isa 0
        CMPF32    R4H,#0                ; [CPU_FPU] |182| 
        MOVST0    ZF, NF                ; [CPU_FPU] |182| 
        B         ||$C$L42||,GT         ; [CPU_ALU] |182| 
        ; branchcc occurs ; [] |182| 
        CMPF32    R0H,#0                ; [CPU_FPU] |182| 
        MOVST0    ZF, NF                ; [CPU_FPU] |182| 
        B         ||$C$L42||,LEQ        ; [CPU_ALU] |182| 
        ; branchcc occurs ; [] |182| 
        CMPF32    R0H,R4H               ; [CPU_FPU] |182| 
        MOVST0    ZF, NF                ; [CPU_FPU] |182| 
        B         ||$C$L42||,LEQ        ; [CPU_ALU] |182| 
        ; branchcc occurs ; [] |182| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 184,column 17,is_stmt,isa 0
        SUBF32    R1H,R7H,R6H           ; [CPU_FPU] |184| 
        SUBF32    R3H,R0H,R4H           ; [CPU_FPU] |184| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIVF32    R3H,R1H,R3H           ; [CPU_FPU] |184| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPYF32    R4H,R4H,R3H           ; [CPU_FPU] |184| 
        MOVL      XAR4,*-SP[32]         ; [CPU_ALU] |184| 
        SUBF32    R4H,R6H,R4H           ; [CPU_FPU] |184| 
        MOV32     R3H,R7H               ; [CPU_FPU] |184| 
        MINF32    R3H,R4H               ; [CPU_FPU] |184| 
        MAXF32    R6H,R3H               ; [CPU_FPU] |184| 
        MOV32     *+XAR4[0],R6H         ; [CPU_FPU] |184| 
        MOVL      XAR4,*-SP[34]         ; [CPU_ALU] |184| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 184,column 57,is_stmt,isa 0
        MOV       PL,#1                 ; [CPU_ALU] |184| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 184,column 46,is_stmt,isa 0
        MOV32     *+XAR4[0],R1H         ; [CPU_FPU] |184| 
||$C$L42||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 177,column 18,is_stmt,isa 0
        ADDB      XAR0,#1               ; [CPU_ALU] |177| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 186,column 13,is_stmt,isa 0
        MOV32     R6H,R7H               ; [CPU_FPU] |186| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 186,column 17,is_stmt,isa 0
        MOV32     R4H,R0H               ; [CPU_FPU] |186| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 177,column 18,is_stmt,isa 0
        BANZ      ||$C$L41||,AR3--      ; [CPU_ALU] |177| 
        ; branchcc occurs ; [] |177| 
        MOV       AL,PL                 ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 188,column 9,is_stmt,isa 0
        B         ||$C$L50||,NEQ        ; [CPU_ALU] |188| 
        ; branchcc occurs ; [] |188| 
        MOV32     R0H,*-SP[44]          ; [CPU_FPU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 191,column 13,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |191| 
        MOVST0    ZF, NF                ; [CPU_FPU] |191| 
        B         ||$C$L44||,LT         ; [CPU_ALU] |191| 
        ; branchcc occurs ; [] |191| 
||$C$L43||:    
        MOV32     R1H,*-SP[48]          ; [CPU_FPU] 
        MOV32     R0H,*-SP[44]          ; [CPU_FPU] 
        CMPF32    R0H,R1H               ; [CPU_FPU] |191| 
        MOVST0    ZF, NF                ; [CPU_FPU] |191| 
        B         ||$C$L45||,GT         ; [CPU_ALU] |191| 
        ; branchcc occurs ; [] |191| 
        B         ||$C$L46||,UNC        ; [CPU_ALU] |191| 
        ; branch occurs ; [] |191| 
||$C$L44||:    
        MOV32     R0H,*-SP[44]          ; [CPU_FPU] 
        MOV32     R1H,*-SP[48]          ; [CPU_FPU] |191| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |191| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |191| 
        MOVST0    ZF, NF                ; [CPU_FPU] |191| 
        B         ||$C$L46||,LEQ        ; [CPU_ALU] |191| 
        ; branchcc occurs ; [] |191| 
||$C$L45||:    
        MOV32     R0H,*-SP[46]          ; [CPU_FPU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 192,column 18,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |192| 
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |192| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |192| 
        MOVST0    ZF, NF                ; [CPU_FPU] |192| 
        B         ||$C$L52||,GT         ; [CPU_ALU] |192| 
        ; branchcc occurs ; [] |192| 
        MOVL      XAR4,*-SP[32]         ; [CPU_ALU] 
        MOV32     R0H,*-SP[42]          ; [CPU_FPU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 192,column 44,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |192| 
        B         ||$C$L48||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L46||:    
        MOVL      XAR4,*-SP[32]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 191,column 39,is_stmt,isa 0
        MOV32     *+XAR4[0],R5H         ; [CPU_FPU] |191| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 194,column 13,is_stmt,isa 0
        B         ||$C$L48||,UNC        ; [CPU_ALU] |194| 
        ; branch occurs ; [] |194| 
||$C$L47||:    
        MOVL      XAR4,*-SP[32]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 181,column 33,is_stmt,isa 0
        MOV32     *+XAR4[0],R7H         ; [CPU_FPU] |181| 
||$C$L48||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 181,column 39,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |181| 
||$C$L49||:    
        MOVL      XAR4,*-SP[34]         ; [CPU_ALU] |181| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |181| 
||$C$L50||:    
        MOVL      XAR4,*-SP[32]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 197,column 5,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_ALU] |197| 
        MOV32     R0H,*-SP[28]          ; [CPU_FPU] |197| 
        MOV32     R1H,*-SP[30]          ; [CPU_FPU] |197| 
        MOVL      XAR5,*-SP[38]         ; [CPU_ALU] |197| 
        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |197| 
        MOVL      XAR4,XAR7             ; [CPU_ALU] |197| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("pc_projection")
	.dwattr $C$DW$221, DW_AT_TI_call

        LCR       #||pc_projection||    ; [CPU_ALU] |197| 
        ; call occurs [#||pc_projection||] ; [] |197| 
        MOVL      XAR4,*-SP[40]         ; [CPU_ALU] |197| 
        MOV       AL,*-SP[25]           ; [CPU_ALU] |197| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |197| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 200,column 5,is_stmt,isa 0
        B         ||$C$L51||,NEQ        ; [CPU_ALU] |200| 
        ; branchcc occurs ; [] |200| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 200,column 37,is_stmt,isa 0
        MOVL      XAR4,*-SP[34]         ; [CPU_ALU] |200| 
        MOV32     R1H,*-SP[28]          ; [CPU_FPU] 
        MPYF32    R1H,R1H,#16320        ; [CPU_FPU] |200| 
        MOV32     R2H,*+XAR4[0]         ; [CPU_FPU] |200| 
        MPYF32    R2H,R2H,R1H           ; [CPU_FPU] |200| 
        MOV32     R7H,*-SP[48]          ; [CPU_FPU] 
        ADDF32    R1H,R2H,R7H           ; [CPU_FPU] |200| 
        NOP       ; [CPU_ALU] 
        MOV32     *-SP[48],R1H          ; [CPU_FPU] |200| 
||$C$L51||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 201,column 5,is_stmt,isa 0
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("pc_finite")
	.dwattr $C$DW$222, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |201| 
        ; call occurs [#||pc_finite||] ; [] |201| 
        CMPB      AL,#0                 ; [CPU_ALU] |201| 
        B         ||$C$L52||,EQ         ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
        CMPF32    R0H,#0                ; [CPU_FPU] |201| 
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |201| 
        MOV32     R1H,*-SP[48]          ; [CPU_FPU] 
        CMPF32    R0H,R1H               ; [CPU_FPU] |201| 
        MOVST0    ZF, NF                ; [CPU_FPU] |201| 
        B         ||$C$L53||,LEQ        ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
||$C$L52||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 201,column 62,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |201| 
        B         ||$C$L54||,UNC        ; [CPU_ALU] |201| 
        ; branch occurs ; [] |201| 
||$C$L53||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 202,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |202| 
||$C$L54||:    
        SUBB      SP,#48                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -16
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -14
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 59
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$170, DW_AT_TI_end_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$170, DW_AT_TI_end_line(0xcb)
	.dwattr $C$DW$170, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$170

	.sect	"pcmfpc_code"
	.clink
	.global	||PC_predict_interval||

$C$DW$224	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$224, DW_AT_name("PC_predict_interval")
	.dwattr $C$DW$224, DW_AT_low_pc(||PC_predict_interval||)
	.dwattr $C$DW$224, DW_AT_high_pc(0x00)
	.dwattr $C$DW$224, DW_AT_linkage_name("PC_predict_interval")
	.dwattr $C$DW$224, DW_AT_external
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$224, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$224, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$224, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$224, DW_AT_TI_max_frame_size(-58)
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 208,column 1,is_stmt,address ||PC_predict_interval||,isa 0

	.dwfde $C$DW$CIE, ||PC_predict_interval||
$C$DW$225	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$225, DW_AT_name("cfg")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg12]

$C$DW$226	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$226, DW_AT_name("dq0")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg14]

$C$DW$227	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$227, DW_AT_name("up")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$228	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$228, DW_AT_name("low")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$229	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$229, DW_AT_name("hw")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg0]

$C$DW$230	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$230, DW_AT_name("theta")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x33]

$C$DW$231	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$231, DW_AT_name("omega")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x37]

$C$DW$232	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$232, DW_AT_name("f")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_breg20 -60]

$C$DW$233	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$233, DW_AT_name("duration")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_breg20 -62]

$C$DW$234	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$234, DW_AT_name("out")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_breg20 -64]


;***************************************************************
;* FNAME: PC_predict_interval           FR SIZE:  56           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter, 34 Auto, 14 SOE     *
;***************************************************************

||PC_predict_interval||:
$C$DW$235	.dwtag  DW_TAG_variable
	.dwattr $C$DW$235, DW_AT_name("dq")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_breg20 -12]

$C$DW$236	.dwtag  DW_TAG_variable
	.dwattr $C$DW$236, DW_AT_name("free_dq")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_breg20 -16]

$C$DW$237	.dwtag  DW_TAG_variable
	.dwattr $C$DW$237, DW_AT_name("pole_dq")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_breg20 -20]

;* R7    assigned to $O$C20
;* R7    assigned to $O$C22
;* R6    assigned to $O$C23
;* R0    assigned to $O$C24
;* R0    assigned to $O$C25
;* R4    assigned to $O$K15
;* R2    assigned to $O$U48
;* R1    assigned to $O$U53
;* AR3   assigned to $O$U97
;* AR4   assigned to $O$U153
;* R0    assigned to $O$U161
;* R5    assigned to $O$S1
;* AH    assigned to $O$S2
;* R0    assigned to $O$S3
$C$DW$238	.dwtag  DW_TAG_variable
	.dwattr $C$DW$238, DW_AT_name("cfg")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_breg20 -30]

;* AR5   assigned to dq0
$C$DW$239	.dwtag  DW_TAG_variable
	.dwattr $C$DW$239, DW_AT_name("dq0")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg14]

;* R2    assigned to up
$C$DW$240	.dwtag  DW_TAG_variable
	.dwattr $C$DW$240, DW_AT_name("up")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x33]

;* R6    assigned to low
$C$DW$241	.dwtag  DW_TAG_variable
	.dwattr $C$DW$241, DW_AT_name("low")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x43]

$C$DW$242	.dwtag  DW_TAG_variable
	.dwattr $C$DW$242, DW_AT_name("hw")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_breg20 -21]

$C$DW$243	.dwtag  DW_TAG_variable
	.dwattr $C$DW$243, DW_AT_name("theta")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_breg20 -32]

$C$DW$244	.dwtag  DW_TAG_variable
	.dwattr $C$DW$244, DW_AT_name("omega")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_breg20 -34]

$C$DW$245	.dwtag  DW_TAG_variable
	.dwattr $C$DW$245, DW_AT_name("f")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_breg20 -36]

;* R3    assigned to duration
$C$DW$246	.dwtag  DW_TAG_variable
	.dwattr $C$DW$246, DW_AT_name("duration")
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x37]

$C$DW$247	.dwtag  DW_TAG_variable
	.dwattr $C$DW$247, DW_AT_name("out")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_breg20 -38]

;* R5    assigned to np
$C$DW$248	.dwtag  DW_TAG_variable
	.dwattr $C$DW$248, DW_AT_name("np")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$249	.dwtag  DW_TAG_variable
	.dwattr $C$DW$249, DW_AT_name("dc")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_breg20 -40]

;* R4    assigned to h
$C$DW$250	.dwtag  DW_TAG_variable
	.dwattr $C$DW$250, DW_AT_name("h")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x3b]

;* R6    assigned to c
$C$DW$251	.dwtag  DW_TAG_variable
	.dwattr $C$DW$251, DW_AT_name("c")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x43]

$C$DW$252	.dwtag  DW_TAG_variable
	.dwattr $C$DW$252, DW_AT_name("step")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_breg20 -22]

;* T     assigned to r
$C$DW$253	.dwtag  DW_TAG_variable
	.dwattr $C$DW$253, DW_AT_name("r")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_reg22]

;* AL    assigned to status
$C$DW$254	.dwtag  DW_TAG_variable
	.dwattr $C$DW$254, DW_AT_name("status")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_reg0]

;* AR3   assigned to s
$C$DW$255	.dwtag  DW_TAG_variable
	.dwattr $C$DW$255, DW_AT_name("s")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg10]

$C$DW$256	.dwtag  DW_TAG_variable
	.dwattr $C$DW$256, DW_AT_name("th1")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_breg20 -42]

;* R7    assigned to neutral
$C$DW$257	.dwtag  DW_TAG_variable
	.dwattr $C$DW$257, DW_AT_name("neutral")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x47]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 8
	.dwcfi	cfa_offset, -10
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 10
	.dwcfi	cfa_offset, -12
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 12
	.dwcfi	cfa_offset, -14
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 14
	.dwcfi	cfa_offset, -16
        MOVZ      AR2,SP                ; [CPU_ALU] 
        SUBB      FP,#22                ; [CPU_ARAU] 
        ADDB      SP,#42                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -58
        MOV32     R4H,R0H               ; [CPU_FPU] |208| 
        MOV32     R5H,R2H               ; [CPU_FPU] |208| 
        MOV32     R0H,R3H               ; [CPU_FPU] |208| 
        MOV32     R2H,R4H               ; [CPU_FPU] |208| 
        MOVL      XAR6,*+FP[0]          ; [CPU_ALU] |208| 
        MOV32     R6H,R1H               ; [CPU_FPU] |208| 
        MOV32     R3H,*+FP[2]           ; [CPU_FPU] |208| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 209,column 40,is_stmt,isa 0
        MPYF32    R4H,R3H,#16128        ; [CPU_FPU] |209| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 208,column 1,is_stmt,isa 0
        MOVL      *-SP[38],XAR6         ; [CPU_ALU] |208| 
        MOVL      XAR6,*+FP[4]          ; [CPU_ALU] |208| 
        MOV       *-SP[21],AL           ; [CPU_ALU] |208| 
        MOV32     *-SP[32],R5H          ; [CPU_FPU] |208| 
        MOVL      *-SP[30],XAR4         ; [CPU_ALU] |208| 

        MOV32     *-SP[34],R0H          ; [CPU_FPU] |208| 
||      ADDF32    R7H,R6H,R2H           ; [CPU_FPU] |209| 

        MOVL      *-SP[36],XAR6         ; [CPU_ALU] |208| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 209,column 21,is_stmt,isa 0

        SUBF32    R5H,R6H,R2H           ; [CPU_FPU] |209| 
||      MOV32     *-SP[40],R7H          ; [CPU_FPU] |209| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 209,column 31,is_stmt,isa 0
        MOVL      ACC,*-SP[38]          ; [CPU_ALU] |209| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 211,column 5,is_stmt,isa 0
        B         ||$C$L56||,EQ         ; [CPU_ALU] |211| 
        ; branchcc occurs ; [] |211| 
        MOVL      XAR4,*-SP[38]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 212,column 5,is_stmt,isa 0
        RPT       #91
||     MOV       *XAR4++,#0            ; [CPU_ALU] |212| 
        MOVL      XAR4,*-SP[30]         ; [CPU_ALU] |212| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 213,column 5,is_stmt,isa 0
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("pc_config_valid")
	.dwattr $C$DW$258, DW_AT_TI_call

        LCR       #||pc_config_valid||  ; [CPU_ALU] |213| 
        ; call occurs [#||pc_config_valid||] ; [] |213| 
        CMPB      AL,#0                 ; [CPU_ALU] |213| 
        B         ||$C$L55||,NEQ        ; [CPU_ALU] |213| 
        ; branchcc occurs ; [] |213| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 213,column 31,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |213| 
        B         ||$C$L67||,UNC        ; [CPU_ALU] |213| 
        ; branch occurs ; [] |213| 
||$C$L55||:    
        MOVL      ACC,XAR5              ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 214,column 5,is_stmt,isa 0
        B         ||$C$L56||,EQ         ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
        MOVL      ACC,*-SP[36]          ; [CPU_ALU] 
        B         ||$C$L56||,EQ         ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
        MOV       AL,*-SP[21]           ; [CPU_ALU] 
        CMPB      AL,#7                 ; [CPU_ALU] |214| 
        B         ||$C$L56||,HI         ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
        MOV32     R0H,R3H               ; [CPU_FPU] |214| 
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("pc_finite")
	.dwattr $C$DW$259, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |214| 
        ; call occurs [#||pc_finite||] ; [] |214| 
        CMPB      AL,#0                 ; [CPU_ALU] |214| 
        B         ||$C$L56||,EQ         ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
        CMPF32    R3H,#0                ; [CPU_FPU] |214| 
        MOVST0    ZF, NF                ; [CPU_FPU] |214| 
        B         ||$C$L56||,LEQ        ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
        MOV32     R0H,R2H               ; [CPU_FPU] |214| 
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("pc_finite")
	.dwattr $C$DW$260, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |214| 
        ; call occurs [#||pc_finite||] ; [] |214| 
        CMPB      AL,#0                 ; [CPU_ALU] |214| 
        B         ||$C$L56||,EQ         ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
        MOV32     R0H,R6H               ; [CPU_FPU] |214| 
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("pc_finite")
	.dwattr $C$DW$261, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |214| 
        ; call occurs [#||pc_finite||] ; [] |214| 
        CMPB      AL,#0                 ; [CPU_ALU] |214| 
        B         ||$C$L56||,EQ         ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
        CMPF32    R2H,#0                ; [CPU_FPU] |214| 
        MOVST0    ZF, NF                ; [CPU_FPU] |214| 
        B         ||$C$L56||,LEQ        ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
        CMPF32    R6H,#0                ; [CPU_FPU] |214| 
        MOVST0    ZF, NF                ; [CPU_FPU] |214| 
        B         ||$C$L56||,LEQ        ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
        MOV32     R0H,*+XAR5[0]         ; [CPU_FPU] |214| 
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("pc_finite")
	.dwattr $C$DW$262, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |214| 
        ; call occurs [#||pc_finite||] ; [] |214| 
        MOV32     R2H,R0H               ; [CPU_FPU] |214| 
        CMPB      AL,#0                 ; [CPU_ALU] |214| 
        B         ||$C$L56||,EQ         ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
        MOV32     R0H,*+XAR5[2]         ; [CPU_FPU] |214| 
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("pc_finite")
	.dwattr $C$DW$263, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |214| 
        ; call occurs [#||pc_finite||] ; [] |214| 
        MOV32     R1H,R0H               ; [CPU_FPU] |214| 
        CMPB      AL,#0                 ; [CPU_ALU] |214| 
        B         ||$C$L56||,EQ         ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
        MOVL      XAR4,*-SP[36]         ; [CPU_ALU] 
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |214| 
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("pc_finite")
	.dwattr $C$DW$264, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |214| 
        ; call occurs [#||pc_finite||] ; [] |214| 
        CMPB      AL,#0                 ; [CPU_ALU] |214| 
        B         ||$C$L56||,EQ         ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
        MOV32     R0H,*+XAR4[2]         ; [CPU_FPU] |214| 
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("pc_finite")
	.dwattr $C$DW$265, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |214| 
        ; call occurs [#||pc_finite||] ; [] |214| 
        CMPB      AL,#0                 ; [CPU_ALU] |214| 
        B         ||$C$L56||,EQ         ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
        MOV32     R0H,*-SP[32]          ; [CPU_FPU] 
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_name("pc_finite")
	.dwattr $C$DW$266, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |214| 
        ; call occurs [#||pc_finite||] ; [] |214| 
        CMPB      AL,#0                 ; [CPU_ALU] |214| 
        B         ||$C$L56||,EQ         ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
        MOV32     R0H,*-SP[34]          ; [CPU_FPU] 
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_name("pc_finite")
	.dwattr $C$DW$267, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |214| 
        ; call occurs [#||pc_finite||] ; [] |214| 
        CMPB      AL,#0                 ; [CPU_ALU] |214| 
        B         ||$C$L57||,NEQ        ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
||$C$L56||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 217,column 68,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |217| 
        B         ||$C$L67||,UNC        ; [CPU_ALU] |217| 
        ; branch occurs ; [] |217| 
||$C$L57||:    
        MOVL      XAR4,*-SP[30]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 218,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |218| 
        DIVF32    R6H,R4H,R0H           ; [CPU_FPU] |218| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 218,column 18,is_stmt,isa 0
        MOV32     *-SP[12],R2H          ; [CPU_FPU] |218| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 218,column 31,is_stmt,isa 0
        MOV32     *-SP[10],R1H          ; [CPU_FPU] |218| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 219,column 5,is_stmt,isa 0
        MOV32     R0H,R6H               ; [CPU_FPU] |219| 
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_name("pc_finite")
	.dwattr $C$DW$268, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |219| 
        ; call occurs [#||pc_finite||] ; [] |219| 
        CMPB      AL,#0                 ; [CPU_ALU] |219| 
        B         ||$C$L63||,EQ         ; [CPU_ALU] |219| 
        ; branchcc occurs ; [] |219| 
        CMPF32    R6H,#0                ; [CPU_FPU] |219| 
        MOVST0    ZF, NF                ; [CPU_FPU] |219| 
        B         ||$C$L63||,LEQ        ; [CPU_ALU] |219| 
        ; branchcc occurs ; [] |219| 
        MOV32     R0H,R7H               ; [CPU_FPU] |219| 
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("pc_finite")
	.dwattr $C$DW$269, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |219| 
        ; call occurs [#||pc_finite||] ; [] |219| 
        CMPB      AL,#0                 ; [CPU_ALU] |219| 
        B         ||$C$L63||,EQ         ; [CPU_ALU] |219| 
        ; branchcc occurs ; [] |219| 
        MOVL      XAR6,*-SP[38]         ; [CPU_ALU] 
        MOVL      XAR3,*-SP[38]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 220,column 9,is_stmt,isa 0
        MOV       *-SP[22],#0           ; [CPU_ALU] |220| 
        ADDB      XAR6,#18              ; [CPU_ALU] 
        ADDB      XAR3,#12              ; [CPU_ALU] 
        MOVL      *-SP[28],XAR6         ; [CPU_ALU] 
||$C$L58||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 223,column 20,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |223| 
        ADD       AL,*-SP[22]           ; [CPU_ALU] |223| 
        MOVU      ACC,AL                ; [CPU_ALU] |223| 
        MOV32     R0H,ACC               ; [CPU_FPU] |223| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI32TOF32 R1H,R0H               ; [CPU_FPU] |223| 
        MOV32     R7H,*-SP[34]          ; [CPU_FPU] 
        MPYF32    R0H,R7H,R1H           ; [CPU_FPU] |223| 
        NOP       ; [CPU_ALU] 
        MPYF32    R1H,R4H,R0H           ; [CPU_FPU] |223| 
        MOV32     R3H,*-SP[32]          ; [CPU_FPU] 
        ADDF32    R0H,R1H,R3H           ; [CPU_FPU] |223| 
        MOV32     R2H,*-SP[40]          ; [CPU_FPU] 

        SUBF32    R0H,R2H,R5H           ; [CPU_FPU] |226| 
||      MOV32     *-SP[26],R0H          ; [CPU_FPU] |223| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 226,column 9,is_stmt,isa 0
        MOV32     R7H,*-SP[26]          ; [CPU_FPU] |226| 
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |226| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 223,column 20,is_stmt,isa 0
        MOV32     *-SP[42],R7H          ; [CPU_FPU] |223| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 226,column 9,is_stmt,isa 0
        MOV32     *-SP[24],R0H          ; [CPU_FPU] |226| 
        CMPF32    R0H,#0                ; [CPU_FPU] |226| 
        MOVST0    ZF, NF                ; [CPU_FPU] |226| 
        B         ||$C$L65||,LEQ        ; [CPU_ALU] |226| 
        ; branchcc occurs ; [] |226| 
        MOV32     R0H,*-SP[40]          ; [CPU_FPU] 
        ADDF32    R0H,R0H,R5H           ; [CPU_FPU] |226| 
        NOP       ; [CPU_ALU] 
        MPYF32    R7H,R0H,#16128        ; [CPU_FPU] |226| 
        NOP       ; [CPU_ALU] 
        CMPF32    R7H,#0                ; [CPU_FPU] |226| 
        MOVST0    ZF, NF                ; [CPU_FPU] |226| 
        B         ||$C$L65||,LEQ        ; [CPU_ALU] |226| 
        ; branchcc occurs ; [] |226| 
        MOV32     R0H,*-SP[24]          ; [CPU_FPU] 
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("pc_finite")
	.dwattr $C$DW$270, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |226| 
        ; call occurs [#||pc_finite||] ; [] |226| 
        CMPB      AL,#0                 ; [CPU_ALU] |226| 
        B         ||$C$L65||,EQ         ; [CPU_ALU] |226| 
        ; branchcc occurs ; [] |226| 
        MOV32     R0H,R7H               ; [CPU_FPU] |226| 
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_name("pc_finite")
	.dwattr $C$DW$271, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |226| 
        ; call occurs [#||pc_finite||] ; [] |226| 
        CMPB      AL,#0                 ; [CPU_ALU] |226| 
        B         ||$C$L65||,EQ         ; [CPU_ALU] |226| 
        ; branchcc occurs ; [] |226| 
        MOV       AL,*-SP[22]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 228,column 9,is_stmt,isa 0
        MOVU      ACC,AL                ; [CPU_ALU] |228| 
        MOV32     R0H,ACC               ; [CPU_FPU] |228| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     R3H,*-SP[34]          ; [CPU_FPU] 
        MOVZ      AR4,SP                ; [CPU_ALU] |228| 
        UI32TOF32 R1H,R0H               ; [CPU_FPU] |228| 
        MOVL      XAR5,XAR3             ; [CPU_ALU] |228| 
        MPYF32    R0H,R3H,R1H           ; [CPU_FPU] |228| 
        SUBB      XAR4,#12              ; [CPU_ARAU] |228| 

        MPYF32    R1H,R4H,R0H           ; [CPU_FPU] |228| 
||      MOV32     R2H,*-SP[32]          ; [CPU_FPU] 

        MOVZ      AR4,AR4               ; [CPU_ALU] |228| 
        ADDF32    R0H,R1H,R2H           ; [CPU_FPU] |228| 
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("PC_dq_to_abc")
	.dwattr $C$DW$272, DW_AT_TI_call

        LCR       #||PC_dq_to_abc||     ; [CPU_ALU] |228| 
        ; call occurs [#||PC_dq_to_abc||] ; [] |228| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 230,column 9,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |230| 
        MOVL      XAR5,*-SP[36]         ; [CPU_ALU] |230| 
        SUBB      XAR4,#16              ; [CPU_ARAU] |230| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 229,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR5[0]         ; [CPU_FPU] |229| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 230,column 9,is_stmt,isa 0
        MOVZ      AR4,AR4               ; [CPU_ALU] |230| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 229,column 9,is_stmt,isa 0

        MPYF32    R3H,R4H,R0H           ; [CPU_FPU] |229| 
||      MOV32     R1H,*+XAR5[2]         ; [CPU_FPU] |229| 

        MPYF32    R1H,R4H,R1H           ; [CPU_FPU] |229| 
||      MOV32     R2H,*-SP[12]          ; [CPU_FPU] |229| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 230,column 9,is_stmt,isa 0
        MOVL      XAR5,*-SP[28]         ; [CPU_ALU] |230| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 229,column 9,is_stmt,isa 0

        MOV32     R3H,*-SP[10]          ; [CPU_FPU] |229| 
||      ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |229| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 229,column 33,is_stmt,isa 0
        ADDF32    R0H,R1H,R3H           ; [CPU_FPU] |229| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 229,column 9,is_stmt,isa 0
        MOV32     *-SP[16],R2H          ; [CPU_FPU] |229| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 229,column 33,is_stmt,isa 0
        MOV32     *-SP[14],R0H          ; [CPU_FPU] |229| 
        MOV32     R0H,*-SP[26]          ; [CPU_FPU] |229| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 230,column 9,is_stmt,isa 0
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_name("PC_dq_to_abc")
	.dwattr $C$DW$273, DW_AT_TI_call

        LCR       #||PC_dq_to_abc||     ; [CPU_ALU] |230| 
        ; call occurs [#||PC_dq_to_abc||] ; [] |230| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 231,column 9,is_stmt,isa 0
        MOVL      XAR0,XAR5             ; [CPU_ALU] |231| 
        MOVL      XAR6,XAR5             ; [CPU_ALU] |231| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |231| 
        MOVL      XAR7,XAR5             ; [CPU_ALU] |231| 
        ADDB      ACC,#33               ; [CPU_ALU] |231| 
        ADDB      XAR0,#30              ; [CPU_ALU] |231| 
        ADDB      XAR6,#24              ; [CPU_ALU] |231| 
        MOVL      *-SP[2],XAR0          ; [CPU_ALU] |231| 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |231| 
        MOVL      XAR4,XAR5             ; [CPU_ALU] |231| 
        MOVB      XAR0,#14              ; [CPU_ALU] |231| 
        MOV32     R0H,R6H               ; [CPU_FPU] |231| 
        MOV32     R2H,R7H               ; [CPU_FPU] |231| 
        ADDB      XAR4,#28              ; [CPU_ALU] |231| 
        ADDB      XAR5,#6               ; [CPU_ALU] |231| 
        MOVL      *-SP[6],XAR5          ; [CPU_FPU] |231| 
        MOVL      XAR5,XAR6             ; [CPU_ALU] |231| 
        MOVL      *-SP[8],XAR4          ; [CPU_ALU] |231| 
        MOVL      XAR6,*-SP[30]         ; [CPU_ALU] |231| 
        MOV       AL,*-SP[21]           ; [CPU_ALU] |231| 
        MOV32     R1H,*-SP[24]          ; [CPU_FPU] |231| 
        MOVL      XAR4,XAR7             ; [CPU_ALU] |231| 
        MOV       AH,*+XAR6[AR0]        ; [CPU_ALU] |231| 
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("pc_root")
	.dwattr $C$DW$274, DW_AT_TI_call

        LCR       #||pc_root||          ; [CPU_ALU] |231| 
        ; call occurs [#||pc_root||] ; [] |231| 
        CMPB      AL,#0                 ; [CPU_ALU] |231| 
        B         ||$C$L67||,NEQ        ; [CPU_ALU] |231| 
        ; branchcc occurs ; [] |231| 
        MOVL      XAR4,XAR3             ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 224,column 46,is_stmt,isa 0
        ZERO      R7H                   ; [CPU_FPU] |224| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 234,column 13,is_stmt,isa 0
        MOV       T,#0                  ; [CPU_ALU] |234| 
        MOVB      XAR6,#2               ; [CPU_ALU] 
||$C$L59||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 236,column 13,is_stmt,isa 0
        MOVB      XAR1,#30              ; [CPU_ALU] |236| 
        MOV32     R0H,*+XAR3[AR1]       ; [CPU_FPU] |236| 

        MPYF32    R1H,R6H,R0H           ; [CPU_FPU] |236| 
||      MOV32     R3H,*+XAR4[6]         ; [CPU_FPU] |236| 

        MOVB      XAR0,#12              ; [CPU_ALU] |236| 
        ADDF32    R1H,R1H,R3H           ; [CPU_FPU] |236| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |236| 
        SUBF32    R0H,R1H,R2H           ; [CPU_FPU] |236| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIVF32    R0H,R0H,R6H           ; [CPU_FPU] |236| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 237,column 13,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |237| 
        LSL       AL,T                  ; [CPU_ALU] |237| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 236,column 13,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_FPU] |236| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 237,column 13,is_stmt,isa 0
        AND       AL,*-SP[21]           ; [CPU_ALU] |237| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 236,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |236| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 237,column 13,is_stmt,isa 0
        B         ||$C$L60||,NEQ        ; [CPU_ALU] |237| 
        ; branchcc occurs ; [] |237| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 241,column 20,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |241| 
        MOVIZ     R1H,#11148            ; [CPU_FPU] |241| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |241| 
        CMPF32    R0H,#0                ; [CPU_FPU] |241| 
        MOVXI     R1H,#48332            ; [CPU_FPU] |241| 
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |241| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |241| 
        MOVST0    ZF, NF                ; [CPU_FPU] |241| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 241,column 64,is_stmt,isa 0
        MOVB      XAR0,#38,LT           ; [CPU_ALU] |241| 
        MOVB      *+XAR3[AR0],#1,LT     ; [CPU_ALU] |241| 
        B         ||$C$L61||,UNC        ; [CPU_ALU] |241| 
        ; branch occurs ; [] |241| 
||$C$L60||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 240,column 17,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |240| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |240| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |240| 
        ADDF32    R1H,R1H,R0H           ; [CPU_FPU] |240| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 239,column 17,is_stmt,isa 0
        MOVB      XAR1,#18              ; [CPU_ALU] |239| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 240,column 17,is_stmt,isa 0
        MPYF32    R2H,R1H,#16128        ; [CPU_FPU] |240| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 239,column 17,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |239| 

        ADDF32    R7H,R7H,R2H           ; [CPU_FPU] |240| 
||      MOV32     *+XAR4[AR1],R3H       ; [CPU_FPU] |239| 

||$C$L61||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 234,column 18,is_stmt,isa 0
        MOV       AL,T                  ; [CPU_ALU] |234| 
        ADDB      XAR4,#2               ; [CPU_ALU] |234| 
        ADDB      AL,#1                 ; [CPU_ALU] |234| 
        MOV       T,AL                  ; [CPU_FPU] |234| 
        BANZ      ||$C$L59||,AR6--      ; [CPU_ALU] |234| 
        ; branchcc occurs ; [] |234| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 243,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[38]         ; [CPU_ALU] |243| 
        MOVB      XAR0,#10              ; [CPU_ALU] |243| 
        MOVB      AH,#1                 ; [CPU_ALU] |243| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |243| 
        CMPB      AL,#0                 ; [CPU_ALU] |243| 
        B         ||$C$L62||,NEQ        ; [CPU_ALU] |243| 
        ; branchcc occurs ; [] |243| 
        MOVB      XAR0,#38              ; [CPU_ALU] |243| 
        MOV       AL,*+XAR3[AR0]        ; [CPU_ALU] |243| 
        MOVB      AH,#0,EQ              ; [CPU_ALU] |243| 
||$C$L62||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 244,column 9,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |244| 
        MOVL      XAR6,*-SP[38]         ; [CPU_ALU] |244| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 243,column 9,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |243| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 244,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR3             ; [CPU_ALU] |244| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 243,column 9,is_stmt,isa 0
        MOV32     R0H,*-SP[42]          ; [CPU_FPU] |243| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 244,column 9,is_stmt,isa 0
        SUBB      XAR5,#20              ; [CPU_ARAU] |244| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 243,column 9,is_stmt,isa 0
        MOV       *+XAR6[AR0],AH        ; [CPU_ALU] |243| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 244,column 9,is_stmt,isa 0
        MOVZ      AR5,AR5               ; [CPU_ALU] |244| 
        ADDB      XAR4,#18              ; [CPU_ALU] |244| 
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_name("PC_abc_to_dq")
	.dwattr $C$DW$275, DW_AT_TI_call

        LCR       #||PC_abc_to_dq||     ; [CPU_ALU] |244| 
        ; call occurs [#||PC_abc_to_dq||] ; [] |244| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 247,column 9,is_stmt,isa 0
        MOVZ      AR6,SP                ; [CPU_ALU] |247| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 245,column 9,is_stmt,isa 0
        MOVL      XAR7,*-SP[38]         ; [CPU_ALU] |245| 
        MOV32     R1H,*-SP[20]          ; [CPU_FPU] |245| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 247,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR3             ; [CPU_ALU] |247| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 244,column 9,is_stmt,isa 0
        MOVL      XAR5,*-SP[38]         ; [CPU_ALU] |244| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 247,column 9,is_stmt,isa 0
        SUBB      XAR6,#12              ; [CPU_ARAU] |247| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 245,column 9,is_stmt,isa 0

        MPYF32    R3H,R4H,R1H           ; [CPU_FPU] |245| 
||      MOV32     R0H,*-SP[18]          ; [CPU_FPU] |246| 

        MOV32     R2H,*+XAR7[6]         ; [CPU_FPU] |245| 
||      MPYF32    R1H,R4H,R0H           ; [CPU_FPU] |246| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 246,column 9,is_stmt,isa 0
        ADDB      XAR5,#8               ; [CPU_ALU] |246| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 247,column 9,is_stmt,isa 0
        ADDB      XAR4,#12              ; [CPU_ALU] |247| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 245,column 9,is_stmt,isa 0

        MOV32     R0H,*+XAR5[0]         ; [CPU_FPU] |246| 
||      ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |245| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 246,column 9,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |246| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 245,column 9,is_stmt,isa 0
        MOV32     *+XAR7[6],R2H         ; [CPU_FPU] |245| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 246,column 9,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |246| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 247,column 9,is_stmt,isa 0
        MOVZ      AR5,AR6               ; [CPU_FPU] |247| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 246,column 9,is_stmt,isa 0
        MOV32     R0H,*-SP[42]          ; [CPU_FPU] |246| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 247,column 9,is_stmt,isa 0
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_name("PC_abc_to_dq")
	.dwattr $C$DW$276, DW_AT_TI_call

        LCR       #||PC_abc_to_dq||     ; [CPU_ALU] |247| 
        ; call occurs [#||PC_abc_to_dq||] ; [] |247| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 248,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[30]         ; [CPU_ALU] |248| 
        MOVB      XAR1,#8               ; [CPU_ALU] |248| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 249,column 9,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |249| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 248,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |248| 
        DIVF32    R0H,R4H,R0H           ; [CPU_FPU] |248| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 249,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |249| 
        MOVL      *+XAR3[AR0],ACC       ; [CPU_ALU] |249| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 249,column 45,is_stmt,isa 0
        MOVB      XAR1,#28              ; [CPU_ALU] |249| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 249,column 27,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_ALU] |249| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 248,column 9,is_stmt,isa 0
        MPYF32    R2H,R7H,R0H           ; [CPU_FPU] |248| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 249,column 27,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |249| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 248,column 9,is_stmt,isa 0

        ADDF32    R5H,R5H,R2H           ; [CPU_FPU] |248| 
||      MOV32     R3H,*-SP[42]          ; [CPU_FPU] |249| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 249,column 27,is_stmt,isa 0
        MOVL      *+XAR3[AR0],ACC       ; [CPU_ALU] |249| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 249,column 56,is_stmt,isa 0
        MOVB      XAR0,#32              ; [CPU_ALU] |249| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 249,column 45,is_stmt,isa 0
        MOV32     *+XAR3[AR1],R5H       ; [CPU_FPU] |249| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 249,column 56,is_stmt,isa 0
        MOV32     *+XAR3[AR0],R3H       ; [CPU_FPU] |249| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 250,column 9,is_stmt,isa 0
        MOV32     R0H,R5H               ; [CPU_FPU] |250| 
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_name("pc_finite")
	.dwattr $C$DW$277, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |250| 
        ; call occurs [#||pc_finite||] ; [] |250| 
        CMPB      AL,#0                 ; [CPU_ALU] |250| 
        B         ||$C$L63||,EQ         ; [CPU_ALU] |250| 
        ; branchcc occurs ; [] |250| 
        MOV32     R0H,*-SP[12]          ; [CPU_FPU] |250| 
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_name("pc_finite")
	.dwattr $C$DW$278, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |250| 
        ; call occurs [#||pc_finite||] ; [] |250| 
        CMPB      AL,#0                 ; [CPU_ALU] |250| 
        B         ||$C$L63||,EQ         ; [CPU_ALU] |250| 
        ; branchcc occurs ; [] |250| 
        MOV32     R0H,*-SP[10]          ; [CPU_FPU] |250| 
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_name("pc_finite")
	.dwattr $C$DW$279, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |250| 
        ; call occurs [#||pc_finite||] ; [] |250| 
        CMPB      AL,#0                 ; [CPU_ALU] |250| 
        B         ||$C$L64||,NEQ        ; [CPU_ALU] |250| 
        ; branchcc occurs ; [] |250| 
||$C$L63||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 250,column 70,is_stmt,isa 0
        MOVB      AL,#6                 ; [CPU_ALU] |250| 
        B         ||$C$L67||,UNC        ; [CPU_ALU] |250| 
        ; branch occurs ; [] |250| 
||$C$L64||:    
        MOVL      ACC,*-SP[28]          ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 220,column 17,is_stmt,isa 0
        INC       *-SP[22]              ; [CPU_ALU] |220| 
        ADDB      XAR3,#40              ; [CPU_ALU] |220| 
        ADDB      ACC,#40               ; [CPU_ALU] |220| 
        MOVL      *-SP[28],ACC          ; [CPU_ALU] |220| 
        MOV       AL,*-SP[22]           ; [CPU_FPU] |220| 
        CMPB      AL,#2                 ; [CPU_ALU] |220| 
        B         ||$C$L58||,LO         ; [CPU_ALU] |220| 
        ; branchcc occurs ; [] |220| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 252,column 25,is_stmt,isa 0
        MOVL      XAR4,*-SP[38]         ; [CPU_ALU] |252| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 253,column 5,is_stmt,isa 0
        CMPF32    R5H,#0                ; [CPU_FPU] |253| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 252,column 25,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |252| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 252,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[12]         ; [CPU_ALU] |252| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 252,column 45,is_stmt,isa 0
        MOV32     *+XAR4[4],R5H         ; [CPU_FPU] |252| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 253,column 5,is_stmt,isa 0
        NEGF32    R5H,R5H,LT            ; [CPU_FPU] |253| 
        MOV32     R0H,*-SP[40]          ; [CPU_FPU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 252,column 25,is_stmt,isa 0
        MOVL      *+XAR4[2],ACC         ; [CPU_ALU] |252| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 252,column 5,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |252| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 253,column 5,is_stmt,isa 0
        CMPF32    R5H,R0H               ; [CPU_FPU] |253| 
        MOVST0    ZF, NF                ; [CPU_FPU] |253| 
        B         ||$C$L66||,LT         ; [CPU_ALU] |253| 
        ; branchcc occurs ; [] |253| 
||$C$L65||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 253,column 24,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_ALU] |253| 
        B         ||$C$L67||,UNC        ; [CPU_ALU] |253| 
        ; branch occurs ; [] |253| 
||$C$L66||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 254,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |254| 
||$C$L67||:    
        SUBB      SP,#42                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -16
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -14
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 59
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$280	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$280, DW_AT_low_pc(0x00)
	.dwattr $C$DW$280, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$224, DW_AT_TI_end_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$224, DW_AT_TI_end_line(0xff)
	.dwattr $C$DW$224, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$224

	.sect	"pcmfpc_code"
	.clink
	.global	||PC_id_to_hw||

$C$DW$281	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$281, DW_AT_name("PC_id_to_hw")
	.dwattr $C$DW$281, DW_AT_low_pc(||PC_id_to_hw||)
	.dwattr $C$DW$281, DW_AT_high_pc(0x00)
	.dwattr $C$DW$281, DW_AT_linkage_name("PC_id_to_hw")
	.dwattr $C$DW$281, DW_AT_external
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$281, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$281, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$281, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$281, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 93,column 1,is_stmt,address ||PC_id_to_hw||,isa 0

	.dwfde $C$DW$CIE, ||PC_id_to_hw||
$C$DW$282	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$282, DW_AT_name("id")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: PC_id_to_hw                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||PC_id_to_hw||:
;* AR6   assigned to $O$K2
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 95,column 24,is_stmt,isa 0
        ADDB      AL,#-1                ; [CPU_ALU] |95| 
        CMPB      AL,#8                 ; [CPU_ALU] |95| 
        MOVZ      AR6,AL                ; [CPU_FPU] |95| 
        B         ||$C$L68||,LO         ; [CPU_ALU] |95| 
        ; branchcc occurs ; [] |95| 
	.dwcfi	remember_state
        MOVB      AL,#0                 ; [CPU_ALU] |95| 
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L68||:    
        MOV       AH,AR6                ; [CPU_ALU] |95| 
        ANDB      AH,#2                 ; [CPU_ALU] |95| 
        MOVZ      AR7,AH                ; [CPU_ALU] |95| 
        LSR       AL,2                  ; [CPU_ALU] |95| 
        ANDB      AL,#0x01              ; [CPU_ALU] |95| 
        OR        AR7,AL                ; [CPU_ALU] |95| 
        MOV       ACC,AR6 << #2         ; [CPU_ALU] |95| 
        ANDB      AL,#0x07              ; [CPU_ALU] |95| 
        OR        AL,AR7                ; [CPU_ALU] |95| 
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$281, DW_AT_TI_end_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$281, DW_AT_TI_end_line(0x62)
	.dwattr $C$DW$281, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$281

	.sect	"pcmfpc_code"
	.clink

$C$DW$285	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$285, DW_AT_name("pc_less")
	.dwattr $C$DW$285, DW_AT_low_pc(||pc_less||)
	.dwattr $C$DW$285, DW_AT_high_pc(0x00)
	.dwattr $C$DW$285, DW_AT_linkage_name("pc_less")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$285, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$285, DW_AT_decl_line(0x101)
	.dwattr $C$DW$285, DW_AT_decl_column(0x11)
	.dwattr $C$DW$285, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 259,column 1,is_stmt,address ||pc_less||,isa 0

	.dwfde $C$DW$CIE, ||pc_less||
$C$DW$286	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$286, DW_AT_name("x")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_reg0]

$C$DW$287	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$287, DW_AT_name("y")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg1]

$C$DW$288	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$288, DW_AT_name("a")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg12]

$C$DW$289	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$289, DW_AT_name("b")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_reg14]

$C$DW$290	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$290, DW_AT_name("sw")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: pc_less                       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||pc_less||:
;* AR6   assigned to $O$C3
;* AH    assigned to $O$C4
;* R1    assigned to $O$C5
;* R0    assigned to $O$C6
;* R1    assigned to $O$C7
;* R0    assigned to $O$C8
;* XT    assigned to $O$K13
;* PL    assigned to $O$K9
;* AR7   assigned to $O$S2
;* AR1   assigned to x
$C$DW$291	.dwtag  DW_TAG_variable
	.dwattr $C$DW$291, DW_AT_name("x")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg6]

;* AR0   assigned to y
$C$DW$292	.dwtag  DW_TAG_variable
	.dwattr $C$DW$292, DW_AT_name("y")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg4]

;* AR4   assigned to a
$C$DW$293	.dwtag  DW_TAG_variable
	.dwattr $C$DW$293, DW_AT_name("a")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to b
$C$DW$294	.dwtag  DW_TAG_variable
	.dwattr $C$DW$294, DW_AT_name("b")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg14]

;* AR6   assigned to sw
$C$DW$295	.dwtag  DW_TAG_variable
	.dwattr $C$DW$295, DW_AT_name("sw")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOVZ      AR0,AH                ; [CPU_ALU] |259| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVZ      AR1,AL                ; [CPU_ALU] |259| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 260,column 5,is_stmt,isa 0
        MOVL      XAR7,XAR4             ; [CPU_ALU] |260| 
        MOV       ACC,AR0 << 1          ; [CPU_ALU] |260| 
        MOVL      XT,ACC                ; [CPU_ALU] |260| 
        MOV       ACC,AR1 << 1          ; [CPU_ALU] |260| 
        MOVL      P,ACC                 ; [CPU_ALU] |260| 
        MOVL      ACC,XT                ; [CPU_ALU] |260| 
        ADDL      XAR7,ACC              ; [CPU_ALU] |260| 
        MOVL      ACC,P                 ; [CPU_ALU] |260| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |260| 
        MOV32     R0H,*+XAR7[0]         ; [CPU_FPU] |260| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 259,column 1,is_stmt,isa 0
        MOVL      XAR6,*-SP[8]          ; [CPU_ALU] |259| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 260,column 5,is_stmt,isa 0
        MOVB      XAR7,#1               ; [CPU_ALU] |260| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |260| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |260| 
        MOVST0    ZF, NF                ; [CPU_FPU] |260| 
        B         ||$C$L70||,LT         ; [CPU_ALU] |260| 
        ; branchcc occurs ; [] |260| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |260| 
        MOVST0    ZF, NF                ; [CPU_FPU] |260| 
        B         ||$C$L69||,NEQ        ; [CPU_ALU] |260| 
        ; branchcc occurs ; [] |260| 
        MOVL      XAR4,XAR5             ; [CPU_ALU] |260| 
        MOVL      ACC,XT                ; [CPU_ALU] |260| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |260| 
        MOVL      ACC,P                 ; [CPU_ALU] |260| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |260| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |260| 
        MOV32     R1H,*+XAR5[0]         ; [CPU_FPU] |260| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |260| 
        MOVST0    ZF, NF                ; [CPU_FPU] |260| 
        B         ||$C$L70||,LT         ; [CPU_ALU] |260| 
        ; branchcc occurs ; [] |260| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |260| 
        MOVST0    ZF, NF                ; [CPU_FPU] |260| 
        B         ||$C$L69||,NEQ        ; [CPU_ALU] |260| 
        ; branchcc occurs ; [] |260| 
        MOV       AH,*+XAR6[AR0]        ; [CPU_ALU] |260| 
        MOVZ      AR6,*+XAR6[AR1]       ; [CPU_ALU] |260| 
        CMP       AH,AR6                ; [CPU_ALU] |260| 
        B         ||$C$L70||,HI         ; [CPU_ALU] |260| 
        ; branchcc occurs ; [] |260| 
        MOVZ      AR6,AR6               ; [CPU_ALU] |260| 
        MOVU      ACC,AH                ; [CPU_ALU] |260| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |260| 
        B         ||$C$L69||,NEQ        ; [CPU_ALU] |260| 
        ; branchcc occurs ; [] |260| 
        MOV       AH,AR0                ; [CPU_ALU] 
        CMP       AH,AR1                ; [CPU_ALU] |260| 
        B         ||$C$L70||,HI         ; [CPU_ALU] |260| 
        ; branchcc occurs ; [] |260| 
||$C$L69||:    
        MOVB      XAR7,#0               ; [CPU_ALU] |260| 
||$C$L70||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOV       AL,AR7                ; [CPU_ALU] |260| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$296	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$296, DW_AT_low_pc(0x00)
	.dwattr $C$DW$296, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$285, DW_AT_TI_end_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$285, DW_AT_TI_end_line(0x106)
	.dwattr $C$DW$285, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$285

	.sect	"pcmfpc_code"
	.clink

$C$DW$297	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$297, DW_AT_name("pc_rank")
	.dwattr $C$DW$297, DW_AT_low_pc(||pc_rank||)
	.dwattr $C$DW$297, DW_AT_high_pc(0x00)
	.dwattr $C$DW$297, DW_AT_linkage_name("pc_rank")
	.dwattr $C$DW$297, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$297, DW_AT_decl_line(0x108)
	.dwattr $C$DW$297, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$297, DW_AT_TI_max_frame_size(-22)
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 265,column 1,is_stmt,address ||pc_rank||,isa 0

	.dwfde $C$DW$CIE, ||pc_rank||
$C$DW$298	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$298, DW_AT_name("a")
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$298, DW_AT_location[DW_OP_reg12]

$C$DW$299	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$299, DW_AT_name("b")
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$299, DW_AT_location[DW_OP_reg14]

$C$DW$300	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$300, DW_AT_name("sw")
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$300, DW_AT_location[DW_OP_breg20 -24]

$C$DW$301	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$301, DW_AT_name("order")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$301, DW_AT_location[DW_OP_breg20 -26]


;***************************************************************
;* FNAME: pc_rank                       FR SIZE:  20           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 12 Auto,  6 SOE     *
;***************************************************************

||pc_rank||:
;* AR1   assigned to $O$C1
;* AR3   assigned to $O$U37
;* AR2   assigned to $O$U40
$C$DW$302	.dwtag  DW_TAG_variable
	.dwattr $C$DW$302, DW_AT_name("a")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_breg20 -8]

$C$DW$303	.dwtag  DW_TAG_variable
	.dwattr $C$DW$303, DW_AT_name("b")
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$303, DW_AT_location[DW_OP_breg20 -10]

$C$DW$304	.dwtag  DW_TAG_variable
	.dwattr $C$DW$304, DW_AT_name("sw")
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$304, DW_AT_location[DW_OP_breg20 -12]

$C$DW$305	.dwtag  DW_TAG_variable
	.dwattr $C$DW$305, DW_AT_name("order")
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$305, DW_AT_location[DW_OP_breg20 -14]

$C$DW$306	.dwtag  DW_TAG_variable
	.dwattr $C$DW$306, DW_AT_name("k")
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$306, DW_AT_location[DW_OP_breg20 -3]

;* AR1   assigned to j
$C$DW$307	.dwtag  DW_TAG_variable
	.dwattr $C$DW$307, DW_AT_name("j")
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$307, DW_AT_location[DW_OP_reg6]

$C$DW$308	.dwtag  DW_TAG_variable
	.dwattr $C$DW$308, DW_AT_name("key")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_breg20 -4]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        ADDB      SP,#14                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -22
        MOVL      *-SP[8],XAR4          ; [CPU_ALU] |265| 
        MOVL      ACC,*-SP[24]          ; [CPU_ALU] |265| 
        MOVL      XAR4,*-SP[26]         ; [CPU_ALU] |265| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 268,column 9,is_stmt,isa 0
        MOV       *-SP[3],#1            ; [CPU_ALU] |268| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 265,column 1,is_stmt,isa 0
        MOVL      *-SP[10],XAR5         ; [CPU_ALU] |265| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |265| 
        MOVL      XAR6,XAR4             ; [CPU_ALU] 
        MOVL      *-SP[14],XAR4         ; [CPU_ALU] |265| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 267,column 24,is_stmt,isa 0
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |267| 
        MOVB      *+XAR4[1],#1,UNC      ; [CPU_ALU] |267| 
        MOVB      *+XAR4[2],#2,UNC      ; [CPU_ALU] |267| 
        MOVB      *+XAR4[3],#3,UNC      ; [CPU_ALU] |267| 
        MOVB      *+XAR4[4],#4,UNC      ; [CPU_ALU] |267| 
        MOVB      *+XAR4[5],#5,UNC      ; [CPU_ALU] |267| 
        MOVB      *+XAR4[6],#6,UNC      ; [CPU_ALU] |267| 
        MOVB      *+XAR4[7],#7,UNC      ; [CPU_ALU] |267| 
        ADDB      XAR6,#1               ; [CPU_ALU] 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] 
||$C$L71||:    
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] 
        MOVZ      AR1,*-SP[3]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 269,column 9,is_stmt,isa 0
        MOVZ      AR6,*+XAR4[0]         ; [CPU_ALU] |269| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 269,column 22,is_stmt,isa 0
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |269| 
        ADDU      ACC,AR1               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 269,column 9,is_stmt,isa 0
        MOV       *-SP[4],AR6           ; [CPU_FPU] |269| 
        MOVL      XAR2,ACC              ; [CPU_ALU] 
||$C$L72||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 270,column 15,is_stmt,isa 0
        MOVL      XAR4,*-SP[14]         ; [CPU_ALU] |270| 
        SUBB      XAR1,#1               ; [CPU_ARAU] |270| 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |270| 
        MOVZ      AR3,*+XAR4[AR1]       ; [CPU_ALU] |270| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |270| 
        MOVL      XAR5,*-SP[10]         ; [CPU_ALU] |270| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |270| 
        MOVL      XAR4,*-SP[8]          ; [CPU_ALU] |270| 
        MOV       AH,AR3                ; [CPU_ALU] |270| 
$C$DW$309	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$309, DW_AT_low_pc(0x00)
	.dwattr $C$DW$309, DW_AT_name("pc_less")
	.dwattr $C$DW$309, DW_AT_TI_call

        LCR       #||pc_less||          ; [CPU_ALU] |270| 
        ; call occurs [#||pc_less||] ; [] |270| 
        CMPB      AL,#0                 ; [CPU_ALU] |270| 
        B         ||$C$L73||,EQ         ; [CPU_ALU] |270| 
        ; branchcc occurs ; [] |270| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 270,column 57,is_stmt,isa 0
        MOV       *+XAR2[0],AR3         ; [CPU_ALU] |270| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 270,column 15,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_ALU] |270| 
        SUBB      XAR2,#1               ; [CPU_ALU] |270| 
        B         ||$C$L72||,NEQ        ; [CPU_ALU] |270| 
        ; branchcc occurs ; [] |270| 
||$C$L73||:    
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 268,column 14,is_stmt,isa 0
        INC       *-SP[3]               ; [CPU_ALU] |268| 
        ADDB      ACC,#1                ; [CPU_ALU] |268| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |268| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |268| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 271,column 9,is_stmt,isa 0
        MOV       *+XAR2[0],AL          ; [CPU_ALU] |271| 
        MOV       AL,*-SP[3]            ; [CPU_ALU] |271| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 268,column 14,is_stmt,isa 0
        CMPB      AL,#8                 ; [CPU_ALU] |268| 
        B         ||$C$L71||,LO         ; [CPU_ALU] |268| 
        ; branchcc occurs ; [] |268| 
        SUBB      SP,#14                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$297, DW_AT_TI_end_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$297, DW_AT_TI_end_line(0x111)
	.dwattr $C$DW$297, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$297

	.sect	"pcmfpc_code"
	.clink

$C$DW$311	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$311, DW_AT_name("pc_angle_cost")
	.dwattr $C$DW$311, DW_AT_low_pc(||pc_angle_cost||)
	.dwattr $C$DW$311, DW_AT_high_pc(0x00)
	.dwattr $C$DW$311, DW_AT_linkage_name("pc_angle_cost")
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$311, DW_AT_decl_line(0x113)
	.dwattr $C$DW$311, DW_AT_decl_column(0x10)
	.dwattr $C$DW$311, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 276,column 1,is_stmt,address ||pc_angle_cost||,isa 0

	.dwfde $C$DW$CIE, ||pc_angle_cost||
$C$DW$312	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$312, DW_AT_name("rd")
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$313	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$313, DW_AT_name("rq")
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$314	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$314, DW_AT_name("dq")
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$314, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: pc_angle_cost                 FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||pc_angle_cost||:
;* R0    assigned to $O$C2
;* R3    assigned to $O$C3
;* R2    assigned to $O$C4
;* R0    assigned to rd
$C$DW$315	.dwtag  DW_TAG_variable
	.dwattr $C$DW$315, DW_AT_name("rd")
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to rq
$C$DW$316	.dwtag  DW_TAG_variable
	.dwattr $C$DW$316, DW_AT_name("rq")
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x2f]

;* AR4   assigned to dq
$C$DW$317	.dwtag  DW_TAG_variable
	.dwattr $C$DW$317, DW_AT_name("dq")
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$317, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 278,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR4[0]         ; [CPU_FPU] |278| 

        MPYF32    R4H,R2H,R2H           ; [CPU_FPU] |278| 
||      MOV32     R3H,*+XAR4[2]         ; [CPU_FPU] |278| 

        MPYF32    R5H,R3H,R3H           ; [CPU_FPU] |278| 
        NOP       ; [CPU_ALU] 
        ADDF32    R4H,R4H,R5H           ; [CPU_FPU] |278| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        SQRTF32   R5H,R4H               ; [CPU_FPU] |278| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVIZ     R4H,#11148            ; [CPU_FPU] |278| 
        MOVXI     R4H,#48332            ; [CPU_FPU] |278| 
        CMPF32    R5H,R4H               ; [CPU_FPU] |278| 
        MOVST0    ZF, NF                ; [CPU_FPU] |278| 
        B         ||$C$L74||,GEQ        ; [CPU_ALU] |278| 
        ; branchcc occurs ; [] |278| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 278,column 57,is_stmt,isa 0
        MOVIZ     R0H,#16669            ; [CPU_FPU] |278| 
        MOVXI     R0H,#59879            ; [CPU_FPU] |278| 
        B         ||$C$L75||,UNC        ; [CPU_ALU] |278| 
        ; branch occurs ; [] |278| 
||$C$L74||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 280,column 5,is_stmt,isa 0
        MPYF32    R5H,R1H,R3H           ; [CPU_FPU] |280| 
        MPYF32    R4H,R0H,R2H           ; [CPU_FPU] |280| 
        MPYF32    R1H,R1H,R2H           ; [CPU_FPU] |280| 
        MPYF32    R0H,R0H,R3H           ; [CPU_FPU] |280| 
        ADDF32    R2H,R5H,R4H           ; [CPU_FPU] |280| 
        SUBF32    R0H,R0H,R1H           ; [CPU_FPU] |280| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        QUADF32   R1H,R0H,R0H,R2H       ; [CPU_FPU] |280| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ATANPUF32 R0H,R0H               ; [CPU_FPU] |280| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |280| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPY2PIF32 R0H,R0H               ; [CPU_FPU] |280| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R0H,R0H           ; [CPU_FPU] |280| 
        NOP       ; [CPU_ALU] 
||$C$L75||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$318	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$318, DW_AT_low_pc(0x00)
	.dwattr $C$DW$318, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$311, DW_AT_TI_end_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$311, DW_AT_TI_end_line(0x119)
	.dwattr $C$DW$311, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$311

	.sect	"pcmfpc_code"
	.clink
	.global	||PC_run||

$C$DW$319	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$319, DW_AT_name("PC_run")
	.dwattr $C$DW$319, DW_AT_low_pc(||PC_run||)
	.dwattr $C$DW$319, DW_AT_high_pc(0x00)
	.dwattr $C$DW$319, DW_AT_linkage_name("PC_run")
	.dwattr $C$DW$319, DW_AT_external
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$319, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$319, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$319, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$319, DW_AT_TI_max_frame_size(-84)
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 284,column 1,is_stmt,address ||PC_run||,isa 0

	.dwfde $C$DW$CIE, ||PC_run||
$C$DW$320	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$320, DW_AT_name("cfg")
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$320, DW_AT_location[DW_OP_reg12]

$C$DW$321	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$321, DW_AT_name("in")
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$321, DW_AT_location[DW_OP_reg14]

$C$DW$322	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$322, DW_AT_name("out")
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$322, DW_AT_location[DW_OP_breg20 -86]


;***************************************************************
;* FNAME: PC_run                        FR SIZE:  82           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 62 Auto, 14 SOE     *
;***************************************************************

||PC_run||:
$C$DW$323	.dwtag  DW_TAG_variable
	.dwattr $C$DW$323, DW_AT_name("iref")
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$323, DW_AT_location[DW_OP_breg20 -12]

$C$DW$324	.dwtag  DW_TAG_variable
	.dwattr $C$DW$324, DW_AT_name("uref")
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$324, DW_AT_location[DW_OP_breg20 -18]

$C$DW$325	.dwtag  DW_TAG_variable
	.dwattr $C$DW$325, DW_AT_name("dq")
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$325, DW_AT_location[DW_OP_breg20 -22]

$C$DW$326	.dwtag  DW_TAG_variable
	.dwattr $C$DW$326, DW_AT_name("edq")
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$326, DW_AT_location[DW_OP_breg20 -26]

$C$DW$327	.dwtag  DW_TAG_variable
	.dwattr $C$DW$327, DW_AT_name("udq")
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$327, DW_AT_location[DW_OP_breg20 -30]

$C$DW$328	.dwtag  DW_TAG_variable
	.dwattr $C$DW$328, DW_AT_name("oi")
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$328, DW_AT_location[DW_OP_breg20 -38]

$C$DW$329	.dwtag  DW_TAG_variable
	.dwattr $C$DW$329, DW_AT_name("ou")
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$329, DW_AT_location[DW_OP_breg20 -46]

;* AL    assigned to $O$C116
;* R0    assigned to $O$C117
;* R1    assigned to $O$C118
;* R3    assigned to $O$C121
;* R2    assigned to $O$C122
;* R7    assigned to $O$C123
;* R6    assigned to $O$C124
;* PH    assigned to $O$C125
;* PH    assigned to $O$C126
;* AR4   assigned to $O$C127
;* R1    assigned to $O$C128
;* AL    assigned to $O$C129
;* R3    assigned to $O$C130
;* AR6   assigned to $O$C131
;* AR5   assigned to $O$C132
;* R0    assigned to $O$C133
;* AR5   assigned to $O$C134
;* R7    assigned to $O$C135
;* R3    assigned to $O$C136
;* R0    assigned to $O$C137
;* R5    assigned to $O$C138
;* R4    assigned to $O$C139
;* R0    assigned to $O$C140
;* R0    assigned to $O$C141
;* R0    assigned to $O$C142
;* AR4   assigned to $O$U157
;* AR4   assigned to $O$U157
;* AR5   assigned to $O$U150
;* AR5   assigned to $O$U150
;* T     assigned to $O$U252
;* AL    assigned to status
$C$DW$330	.dwtag  DW_TAG_variable
	.dwattr $C$DW$330, DW_AT_name("status")
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$330, DW_AT_location[DW_OP_reg0]

;* AL    assigned to status
$C$DW$331	.dwtag  DW_TAG_variable
	.dwattr $C$DW$331, DW_AT_name("status")
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$331, DW_AT_location[DW_OP_reg0]

;* PL    assigned to j
$C$DW$332	.dwtag  DW_TAG_variable
	.dwattr $C$DW$332, DW_AT_name("j")
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$332, DW_AT_location[DW_OP_reg2]

;* T     assigned to j
$C$DW$333	.dwtag  DW_TAG_variable
	.dwattr $C$DW$333, DW_AT_name("j")
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$333, DW_AT_location[DW_OP_reg22]

;* AR3   assigned to j
$C$DW$334	.dwtag  DW_TAG_variable
	.dwattr $C$DW$334, DW_AT_name("j")
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$334, DW_AT_location[DW_OP_reg10]

;* AR0   assigned to k
$C$DW$335	.dwtag  DW_TAG_variable
	.dwattr $C$DW$335, DW_AT_name("k")
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$335, DW_AT_location[DW_OP_reg4]

;* AR0   assigned to k
$C$DW$336	.dwtag  DW_TAG_variable
	.dwattr $C$DW$336, DW_AT_name("k")
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$336, DW_AT_location[DW_OP_reg4]

;* R1    assigned to $O$U22
;* R0    assigned to $O$U26
;* AR5   assigned to $O$U66
;* R1    assigned to $O$U35
;* AR5   assigned to $O$U251
;* AR4   assigned to $O$U362
;* R1    assigned to $O$U363
;* AR5   assigned to $O$U369
;* AR7   assigned to $O$U498
;* AR6   assigned to $O$U504
;* AR3   assigned to $O$U439
;* AR4   assigned to $O$L5
;* AR7   assigned to $O$V0
;* R0    assigned to $O$S1
;* AR6   assigned to $O$S2
;* R1    assigned to $O$S3
;* R2    assigned to $O$S5
;* AH    assigned to $O$S6
;* AH    assigned to $O$S7
$C$DW$337	.dwtag  DW_TAG_variable
	.dwattr $C$DW$337, DW_AT_name("cfg")
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$337, DW_AT_location[DW_OP_breg20 -62]

$C$DW$338	.dwtag  DW_TAG_variable
	.dwattr $C$DW$338, DW_AT_name("in")
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$338, DW_AT_location[DW_OP_breg20 -64]

$C$DW$339	.dwtag  DW_TAG_variable
	.dwattr $C$DW$339, DW_AT_name("out")
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$339, DW_AT_location[DW_OP_breg20 -66]

;* R2    assigned to dc
$C$DW$340	.dwtag  DW_TAG_variable
	.dwattr $C$DW$340, DW_AT_name("dc")
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_location[DW_OP_regx 0x33]

;* R5    assigned to up1
$C$DW$341	.dwtag  DW_TAG_variable
	.dwattr $C$DW$341, DW_AT_name("up1")
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_location[DW_OP_regx 0x3f]

;* R4    assigned to low1
$C$DW$342	.dwtag  DW_TAG_variable
	.dwattr $C$DW$342, DW_AT_name("low1")
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_location[DW_OP_regx 0x3b]

;* R6    assigned to theta1
$C$DW$343	.dwtag  DW_TAG_variable
	.dwattr $C$DW$343, DW_AT_name("theta1")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_regx 0x43]

$C$DW$344	.dwtag  DW_TAG_variable
	.dwattr $C$DW$344, DW_AT_name("theta2")
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_location[DW_OP_breg20 -68]

;* R3    assigned to amp
$C$DW$345	.dwtag  DW_TAG_variable
	.dwattr $C$DW$345, DW_AT_name("amp")
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_location[DW_OP_regx 0x37]

;* R6    assigned to lo
$C$DW$346	.dwtag  DW_TAG_variable
	.dwattr $C$DW$346, DW_AT_name("lo")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_regx 0x43]

;* R2    assigned to hi
$C$DW$347	.dwtag  DW_TAG_variable
	.dwattr $C$DW$347, DW_AT_name("hi")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_regx 0x33]

;* R0    assigned to budget
$C$DW$348	.dwtag  DW_TAG_variable
	.dwattr $C$DW$348, DW_AT_name("budget")
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_location[DW_OP_regx 0x2b]

;* R2    assigned to spreadLo
$C$DW$349	.dwtag  DW_TAG_variable
	.dwattr $C$DW$349, DW_AT_name("spreadLo")
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_location[DW_OP_regx 0x33]

;* R1    assigned to spreadHi
$C$DW$350	.dwtag  DW_TAG_variable
	.dwattr $C$DW$350, DW_AT_name("spreadHi")
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x2f]

;* R3    assigned to gzLo
$C$DW$351	.dwtag  DW_TAG_variable
	.dwattr $C$DW$351, DW_AT_name("gzLo")
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x37]

;* R4    assigned to gzHi
$C$DW$352	.dwtag  DW_TAG_variable
	.dwattr $C$DW$352, DW_AT_name("gzHi")
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x3b]

;* AR7   assigned to m
$C$DW$353	.dwtag  DW_TAG_variable
	.dwattr $C$DW$353, DW_AT_name("m")
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$353, DW_AT_location[DW_OP_reg18]

;* AL    assigned to n
$C$DW$354	.dwtag  DW_TAG_variable
	.dwattr $C$DW$354, DW_AT_name("n")
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$354, DW_AT_location[DW_OP_reg0]

;* PH    assigned to chosen
$C$DW$355	.dwtag  DW_TAG_variable
	.dwattr $C$DW$355, DW_AT_name("chosen")
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$355, DW_AT_location[DW_OP_reg3]

$C$DW$356	.dwtag  DW_TAG_variable
	.dwattr $C$DW$356, DW_AT_name("pcOff")
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$356, DW_AT_location[DW_OP_breg20 -47]

$C$DW$357	.dwtag  DW_TAG_variable
	.dwattr $C$DW$357, DW_AT_name("mask")
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$357, DW_AT_location[DW_OP_breg20 -48]

;* PL    assigned to cmask
$C$DW$358	.dwtag  DW_TAG_variable
	.dwattr $C$DW$358, DW_AT_name("cmask")
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$358, DW_AT_location[DW_OP_reg2]

$C$DW$359	.dwtag  DW_TAG_variable
	.dwattr $C$DW$359, DW_AT_name("hw")
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$359, DW_AT_location[DW_OP_breg20 -50]

;* R0    assigned to lower
$C$DW$360	.dwtag  DW_TAG_variable
	.dwattr $C$DW$360, DW_AT_name("lower")
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_location[DW_OP_regx 0x2b]

;* R7    assigned to upper
$C$DW$361	.dwtag  DW_TAG_variable
	.dwattr $C$DW$361, DW_AT_name("upper")
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_location[DW_OP_regx 0x47]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 8
	.dwcfi	cfa_offset, -10
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 10
	.dwcfi	cfa_offset, -12
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 12
	.dwcfi	cfa_offset, -14
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 14
	.dwcfi	cfa_offset, -16
        MOVZ      AR2,SP                ; [CPU_ALU] 
        SUBB      FP,#18                ; [CPU_ARAU] 
        ADDB      SP,#68                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -84
        MOVL      XAR0,#20              ; [CPU_ALU] |284| 
        MOVL      ACC,*+FP[0]           ; [CPU_ALU] |284| 
        MOVL      *+FP[AR0],ACC         ; [CPU_ALU] |284| 
        MOVL      *-SP[62],XAR4         ; [CPU_ALU] |284| 
        MOVL      XAR0,#22              ; [CPU_ALU] |284| 
        MOVL      *+FP[AR0],XAR5        ; [CPU_ALU] |284| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 288,column 5,is_stmt,isa 0
        B         ||$C$L76||,NEQ        ; [CPU_ALU] |288| 
        ; branchcc occurs ; [] |288| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 288,column 14,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |288| 
        B         ||$C$L136||,UNC       ; [CPU_ALU] |288| 
        ; branch occurs ; [] |288| 
||$C$L76||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 289,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |289| 
        MOV       ACC,#998              ; [CPU_ALU] |289| 
        MOVB      XAR5,#0               ; [CPU_ALU] |289| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |289| 
$C$DW$362	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$362, DW_AT_low_pc(0x00)
	.dwattr $C$DW$362, DW_AT_name("memset")
	.dwattr $C$DW$362, DW_AT_TI_call

        LCR       #||memset||           ; [CPU_ALU] |289| 
        ; call occurs [#||memset||] ; [] |289| 
        MOVL      XAR0,#20              ; [CPU_ALU] |289| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |289| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 291,column 5,is_stmt,isa 0
        MOVB      *+XAR4[1],#1,UNC      ; [CPU_ALU] |291| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 291,column 25,is_stmt,isa 0
        MOVB      *+XAR4[2],#1,UNC      ; [CPU_ALU] |291| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 291,column 43,is_stmt,isa 0
        MOVB      *+XAR4[0],#1,UNC      ; [CPU_ALU] |291| 
        MOVL      XAR4,*-SP[62]         ; [CPU_ALU] |291| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 292,column 5,is_stmt,isa 0
$C$DW$363	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$363, DW_AT_low_pc(0x00)
	.dwattr $C$DW$363, DW_AT_name("pc_config_valid")
	.dwattr $C$DW$363, DW_AT_TI_call

        LCR       #||pc_config_valid||  ; [CPU_ALU] |292| 
        ; call occurs [#||pc_config_valid||] ; [] |292| 
        CMPB      AL,#0                 ; [CPU_ALU] |292| 
        B         ||$C$L77||,NEQ        ; [CPU_ALU] |292| 
        ; branchcc occurs ; [] |292| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 292,column 58,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |292| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |292| 
        MOVB      AL,#2                 ; [CPU_ALU] |292| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 292,column 32,is_stmt,isa 0
        MOVB      *+XAR4[0],#2,UNC      ; [CPU_ALU] |292| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 292,column 58,is_stmt,isa 0
        B         ||$C$L136||,UNC       ; [CPU_ALU] |292| 
        ; branch occurs ; [] |292| 
||$C$L77||:    
        MOVL      XAR0,#22              ; [CPU_ALU] 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 293,column 5,is_stmt,isa 0
        B         ||$C$L79||,EQ         ; [CPU_ALU] |293| 
        ; branchcc occurs ; [] |293| 
        MOVL      XAR0,#22              ; [CPU_ALU] |293| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |293| 
        MOVB      XAR1,#28              ; [CPU_ALU] |293| 
        MOV       AL,*+XAR4[AR1]        ; [CPU_ALU] |293| 
        CMPB      AL,#7                 ; [CPU_ALU] |293| 
        B         ||$C$L79||,HI         ; [CPU_ALU] |293| 
        ; branchcc occurs ; [] |293| 
        MOVB      XAR1,#12              ; [CPU_ALU] |293| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |293| 
$C$DW$364	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$364, DW_AT_low_pc(0x00)
	.dwattr $C$DW$364, DW_AT_name("pc_finite")
	.dwattr $C$DW$364, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |293| 
        ; call occurs [#||pc_finite||] ; [] |293| 
        MOV32     R1H,R0H               ; [CPU_FPU] |293| 
        CMPB      AL,#0                 ; [CPU_ALU] |293| 
        B         ||$C$L79||,EQ         ; [CPU_ALU] |293| 
        ; branchcc occurs ; [] |293| 
        MOVB      XAR1,#14              ; [CPU_ALU] |293| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |293| 
$C$DW$365	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$365, DW_AT_low_pc(0x00)
	.dwattr $C$DW$365, DW_AT_name("pc_finite")
	.dwattr $C$DW$365, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |293| 
        ; call occurs [#||pc_finite||] ; [] |293| 
        CMPB      AL,#0                 ; [CPU_ALU] |293| 
        B         ||$C$L79||,EQ         ; [CPU_ALU] |293| 
        ; branchcc occurs ; [] |293| 
        CMPF32    R1H,#0                ; [CPU_FPU] |293| 
        MOVST0    ZF, NF                ; [CPU_FPU] |293| 
        B         ||$C$L79||,LEQ        ; [CPU_ALU] |293| 
        ; branchcc occurs ; [] |293| 
        CMPF32    R0H,#0                ; [CPU_FPU] |293| 
        MOVST0    ZF, NF                ; [CPU_FPU] |293| 
        B         ||$C$L79||,LEQ        ; [CPU_ALU] |293| 
        ; branchcc occurs ; [] |293| 
        MOVB      XAR1,#20              ; [CPU_ALU] |293| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |293| 
$C$DW$366	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$366, DW_AT_low_pc(0x00)
	.dwattr $C$DW$366, DW_AT_name("pc_finite")
	.dwattr $C$DW$366, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |293| 
        ; call occurs [#||pc_finite||] ; [] |293| 
        MOV32     R1H,R0H               ; [CPU_FPU] |293| 
        CMPB      AL,#0                 ; [CPU_ALU] |293| 
        B         ||$C$L79||,EQ         ; [CPU_ALU] |293| 
        ; branchcc occurs ; [] |293| 
        MOVB      XAR1,#22              ; [CPU_ALU] |293| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |293| 
$C$DW$367	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$367, DW_AT_low_pc(0x00)
	.dwattr $C$DW$367, DW_AT_name("pc_finite")
	.dwattr $C$DW$367, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |293| 
        ; call occurs [#||pc_finite||] ; [] |293| 
        CMPB      AL,#0                 ; [CPU_ALU] |293| 
        B         ||$C$L79||,EQ         ; [CPU_ALU] |293| 
        ; branchcc occurs ; [] |293| 
        MOVB      XAR1,#16              ; [CPU_ALU] |293| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |293| 
$C$DW$368	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$368, DW_AT_low_pc(0x00)
	.dwattr $C$DW$368, DW_AT_name("pc_finite")
	.dwattr $C$DW$368, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |293| 
        ; call occurs [#||pc_finite||] ; [] |293| 
        CMPB      AL,#0                 ; [CPU_ALU] |293| 
        B         ||$C$L79||,EQ         ; [CPU_ALU] |293| 
        ; branchcc occurs ; [] |293| 
        MOVB      XAR1,#18              ; [CPU_ALU] |293| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |293| 
$C$DW$369	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$369, DW_AT_low_pc(0x00)
	.dwattr $C$DW$369, DW_AT_name("pc_finite")
	.dwattr $C$DW$369, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |293| 
        ; call occurs [#||pc_finite||] ; [] |293| 
        CMPB      AL,#0                 ; [CPU_ALU] |293| 
        B         ||$C$L79||,EQ         ; [CPU_ALU] |293| 
        ; branchcc occurs ; [] |293| 
        MOVB      XAR1,#24              ; [CPU_ALU] |293| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |293| 
$C$DW$370	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$370, DW_AT_low_pc(0x00)
	.dwattr $C$DW$370, DW_AT_name("pc_finite")
	.dwattr $C$DW$370, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |293| 
        ; call occurs [#||pc_finite||] ; [] |293| 
        ADDB      XAR4,#24              ; [CPU_ALU] |293| 
        CMPB      AL,#0                 ; [CPU_ALU] |293| 
        MOVL      *-SP[54],XAR4         ; [CPU_FPU] |293| 
        B         ||$C$L79||,EQ         ; [CPU_ALU] |293| 
        ; branchcc occurs ; [] |293| 
        MOVL      XAR0,#22              ; [CPU_ALU] |293| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |293| 
        MOVB      XAR1,#26              ; [CPU_ALU] |293| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |293| 
$C$DW$371	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$371, DW_AT_low_pc(0x00)
	.dwattr $C$DW$371, DW_AT_name("pc_finite")
	.dwattr $C$DW$371, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |293| 
        ; call occurs [#||pc_finite||] ; [] |293| 
        CMPB      AL,#0                 ; [CPU_ALU] |293| 
        B         ||$C$L79||,EQ         ; [CPU_ALU] |293| 
        ; branchcc occurs ; [] |293| 
        MOVL      XAR0,#22              ; [CPU_ALU] 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] 
        MOVB      XAR4,#2               ; [CPU_ALU] 
||$C$L78||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 297,column 24,is_stmt,isa 0
        MOV32     R0H,*+XAR5[0]         ; [CPU_FPU] |297| 
$C$DW$372	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$372, DW_AT_low_pc(0x00)
	.dwattr $C$DW$372, DW_AT_name("pc_finite")
	.dwattr $C$DW$372, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |297| 
        ; call occurs [#||pc_finite||] ; [] |297| 
        CMPB      AL,#0                 ; [CPU_ALU] |297| 
        B         ||$C$L79||,EQ         ; [CPU_ALU] |297| 
        ; branchcc occurs ; [] |297| 
        MOV32     R0H,*+XAR5[6]         ; [CPU_FPU] |297| 
$C$DW$373	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$373, DW_AT_low_pc(0x00)
	.dwattr $C$DW$373, DW_AT_name("pc_finite")
	.dwattr $C$DW$373, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |297| 
        ; call occurs [#||pc_finite||] ; [] |297| 
        CMPB      AL,#0                 ; [CPU_ALU] |297| 
        B         ||$C$L80||,NEQ        ; [CPU_ALU] |297| 
        ; branchcc occurs ; [] |297| 
||$C$L79||:    
        MOVL      XAR0,#20              ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 297,column 83,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |297| 
        B         ||$C$L136||,UNC       ; [CPU_ALU] |297| 
        ; branch occurs ; [] |297| 
||$C$L80||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 297,column 14,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |297| 
        BANZ      ||$C$L78||,AR4--      ; [CPU_ALU] |297| 
        ; branchcc occurs ; [] |297| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 298,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |298| 
        MOVL      XAR0,#22              ; [CPU_ALU] |298| 
        MOV32     R0H,R1H               ; [CPU_FPU] |298| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |298| 
        SUBB      XAR5,#22              ; [CPU_ARAU] |298| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |298| 
$C$DW$374	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$374, DW_AT_low_pc(0x00)
	.dwattr $C$DW$374, DW_AT_name("PC_abc_to_dq")
	.dwattr $C$DW$374, DW_AT_TI_call

        LCR       #||PC_abc_to_dq||     ; [CPU_ALU] |298| 
        ; call occurs [#||PC_abc_to_dq||] ; [] |298| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 299,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |299| 
        MOVL      XAR0,#22              ; [CPU_ALU] |299| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |299| 
        MOVB      XAR1,#20              ; [CPU_ALU] |299| 
        SUBB      XAR5,#26              ; [CPU_ARAU] |299| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |299| 
        MOV32     R0H,*+XAR6[AR1]       ; [CPU_FPU] |299| 
        ADDB      XAR4,#6               ; [CPU_ALU] |299| 
$C$DW$375	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$375, DW_AT_low_pc(0x00)
	.dwattr $C$DW$375, DW_AT_name("PC_abc_to_dq")
	.dwattr $C$DW$375, DW_AT_TI_call

        LCR       #||PC_abc_to_dq||     ; [CPU_ALU] |299| 
        ; call occurs [#||PC_abc_to_dq||] ; [] |299| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 300,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |300| 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |300| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 301,column 5,is_stmt,isa 0
        MOVL      XAR0,#22              ; [CPU_ALU] |301| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |301| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 300,column 5,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |300| 
        MOVL      XAR6,*-SP[54]         ; [CPU_ALU] |300| 
        MOVB      XAR0,#14              ; [CPU_ALU] |300| 
        MOV32     R5H,*+XAR4[AR1]       ; [CPU_FPU] |300| 
        MOV32     R4H,*+XAR4[AR0]       ; [CPU_FPU] |300| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 301,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[62]         ; [CPU_ALU] |301| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |301| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_ALU] |301| 
        ADDB      ACC,#170              ; [CPU_ALU] |301| 
        MOVL      XAR0,#22              ; [CPU_FPU] |301| 
        MOVL      *-SP[4],XAR6          ; [CPU_FPU] |301| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |301| 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |301| 
        MOVB      XAR1,#28              ; [CPU_ALU] |301| 
        MOV       AL,*+XAR5[AR1]        ; [CPU_ALU] |301| 
        MOVB      XAR1,#20              ; [CPU_ALU] |301| 
        MOV32     R2H,*+XAR5[AR1]       ; [CPU_FPU] |301| 
        MOVB      XAR1,#22              ; [CPU_ALU] |301| 
        MOV32     R3H,*+XAR5[AR1]       ; [CPU_FPU] |301| 
        MOVZ      AR5,SP                ; [CPU_ALU] |301| 
        MOV32     R1H,R4H               ; [CPU_FPU] |301| 
        MOV32     R0H,R5H               ; [CPU_FPU] |301| 
        SUBB      XAR5,#22              ; [CPU_ARAU] |301| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |301| 
$C$DW$376	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$376, DW_AT_low_pc(0x00)
	.dwattr $C$DW$376, DW_AT_name("PC_predict_interval")
	.dwattr $C$DW$376, DW_AT_TI_call

        LCR       #||PC_predict_interval|| ; [CPU_ALU] |301| 
        ; call occurs [#||PC_predict_interval||] ; [] |301| 
        CMPB      AL,#0                 ; [CPU_ALU] |301| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 300,column 5,is_stmt,isa 0
        ADDF32    R2H,R4H,R5H           ; [CPU_FPU] |300| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 301,column 5,is_stmt,isa 0
        B         ||$C$L82||,NEQ        ; [CPU_ALU] |301| 
        ; branchcc occurs ; [] |301| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 305,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |305| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |305| 
        MOVB      XAR1,#174             ; [CPU_ALU] |305| 
        MOVB      XAR0,#144             ; [CPU_ALU] |305| 
        MOVL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |305| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 304,column 49,is_stmt,isa 0
        MOVB      XAR1,#172             ; [CPU_ALU] |304| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 305,column 5,is_stmt,isa 0
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |305| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 304,column 49,is_stmt,isa 0
        MOVB      XAR0,#142             ; [CPU_ALU] |304| 
        MOVL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |304| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 304,column 5,is_stmt,isa 0
        MOVB      XAR1,#170             ; [CPU_ALU] |304| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 304,column 49,is_stmt,isa 0
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |304| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 304,column 5,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[AR1]      ; [CPU_ALU] |304| 
        MOVL      XAR0,#20              ; [CPU_ALU] |304| 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |304| 
        MOVL      XAR0,#20              ; [CPU_ALU] |304| 
        ADDB      ACC,#140              ; [CPU_ALU] |304| 
        MOVL      *-SP[58],ACC          ; [CPU_ALU] |304| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 306,column 5,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |306| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 308,column 5,is_stmt,isa 0
        MOVB      XAR1,#144             ; [CPU_ALU] |308| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 304,column 5,is_stmt,isa 0
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |304| 
        MOVL      XAR0,#20              ; [CPU_ALU] 
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |304| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 306,column 5,is_stmt,isa 0
        MOVL      XAR0,#22              ; [CPU_ALU] |306| 
        ADD       ACC,#131 << 1         ; [CPU_ALU] 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |306| 
        MOVB      XAR0,#22              ; [CPU_ALU] |306| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 308,column 5,is_stmt,isa 0
        MOV32     R3H,*+XAR4[AR1]       ; [CPU_FPU] |308| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 306,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[62]         ; [CPU_FPU] |306| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |306| 
        MOVB      XAR1,#20              ; [CPU_FPU] |306| 
        MOVL      XAR0,#22              ; [CPU_FPU] |306| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |306| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 307,column 5,is_stmt,isa 0

        MOV32     R5H,*+XAR4[2]         ; [CPU_FPU] |307| 
||      SUBF32    R4H,R2H,R3H           ; [CPU_FPU] |308| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 306,column 5,is_stmt,isa 0
        MOVL      XAR4,*+FP[AR0]        ; [CPU_FPU] |306| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 307,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_FPU] |307| 
        MACF32    R3H,R2H,R2H,R0H,R1H   ; [CPU_FPU] 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_FPU] |307| 
        MOVL      *-SP[56],ACC          ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 309,column 9,is_stmt,isa 0
        MOVB      XAR3,#0               ; [CPU_ALU] |309| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 307,column 5,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |307| 
        MOVL      *-SP[60],XAR6         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 306,column 5,is_stmt,isa 0

        MOV32     R1H,*+XAR4[AR1]       ; [CPU_FPU] |306| 
||      MPYF32    R0H,R0H,R5H           ; [CPU_FPU] |307| 

        ADDF32    R6H,R2H,R1H           ; [CPU_FPU] |306| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 308,column 5,is_stmt,isa 0
        MPYF32    R5H,R4H,#16128        ; [CPU_FPU] |308| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 307,column 5,is_stmt,isa 0
        ADDF32    R0H,R0H,R6H           ; [CPU_FPU] |307| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 308,column 36,is_stmt,isa 0
        MPYF32    R4H,R3H,#16128        ; [CPU_FPU] |308| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 307,column 5,is_stmt,isa 0
        MOV32     *+FP[AR0],R0H         ; [CPU_FPU] |307| 
||$C$L81||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 310,column 20,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |310| 
        ADD       AL,AR3                ; [CPU_ALU] |310| 
$C$DW$377	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$377, DW_AT_low_pc(0x00)
	.dwattr $C$DW$377, DW_AT_name("PC_id_to_hw")
	.dwattr $C$DW$377, DW_AT_TI_call

        LCR       #||PC_id_to_hw||      ; [CPU_ALU] |310| 
        ; call occurs [#||PC_id_to_hw||] ; [] |310| 
        MOVL      XAR6,*-SP[54]         ; [CPU_ALU] |310| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 312,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[62]         ; [CPU_ALU] |312| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |312| 
        MOVL      XAR6,*+XAR4[2]        ; [CPU_ALU] |312| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |312| 
        MOVL      XAR6,*-SP[56]         ; [CPU_ALU] |312| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 310,column 20,is_stmt,isa 0
        MOV       *-SP[50],AL           ; [CPU_ALU] |310| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 312,column 9,is_stmt,isa 0
        MOV32     R0H,R5H               ; [CPU_FPU] |312| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 310,column 20,is_stmt,isa 0
        MOVL      XAR0,#22              ; [CPU_ALU] |310| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 312,column 9,is_stmt,isa 0
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |312| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 310,column 20,is_stmt,isa 0
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |310| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 312,column 9,is_stmt,isa 0
        MOVB      XAR1,#22              ; [CPU_ALU] |312| 
        MOV32     R1H,R4H               ; [CPU_FPU] |312| 
        MOV32     R2H,R6H               ; [CPU_FPU] |312| 
        MOV32     R3H,*+XAR5[AR1]       ; [CPU_FPU] |312| 
        MOVL      XAR5,*-SP[58]         ; [CPU_ALU] |312| 
$C$DW$378	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$378, DW_AT_low_pc(0x00)
	.dwattr $C$DW$378, DW_AT_name("PC_predict_interval")
	.dwattr $C$DW$378, DW_AT_TI_call

        LCR       #||PC_predict_interval|| ; [CPU_ALU] |312| 
        ; call occurs [#||PC_predict_interval||] ; [] |312| 
        CMPB      AL,#0                 ; [CPU_ALU] |312| 
        B         ||$C$L83||,EQ         ; [CPU_ALU] |312| 
        ; branchcc occurs ; [] |312| 
||$C$L82||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 314,column 47,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |314| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |314| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 314,column 28,is_stmt,isa 0
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |314| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 314,column 47,is_stmt,isa 0
        B         ||$C$L136||,UNC       ; [CPU_ALU] |314| 
        ; branch occurs ; [] |314| 
||$C$L83||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 315,column 9,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |315| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |315| 
        MOV       ACC,AR3 << 2          ; [CPU_ALU] |315| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 318,column 9,is_stmt,isa 0
        MOVL      XAR7,*-SP[56]         ; [CPU_ALU] |318| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 317,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[60]         ; [CPU_ALU] |317| 
        MOVL      XAR1,#266             ; [CPU_ALU] |317| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 315,column 9,is_stmt,isa 0
        ADDL      ACC,XAR6              ; [CPU_ALU] |315| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |315| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 317,column 9,is_stmt,isa 0
        MOV       ACC,AR3 << 1          ; [CPU_ALU] |317| 
        ADDL      XAR6,ACC              ; [CPU_ALU] |317| 
        MOVB      XAR0,#124             ; [CPU_ALU] |317| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 315,column 9,is_stmt,isa 0
        MOVL      XAR7,*+XAR7[0]        ; [CPU_ALU] |315| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 317,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |317| 
        MOVL      *+XAR6[AR0],ACC       ; [CPU_ALU] |317| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 316,column 9,is_stmt,isa 0
        MOVL      XAR0,#264             ; [CPU_ALU] |316| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |316| 
        MOVB      XAR0,#94              ; [CPU_ALU] |316| 
        MOVL      *+XAR5[AR0],ACC       ; [CPU_ALU] |316| 
        MOVL      XAR0,#20              ; [CPU_ALU] |316| 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |316| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 315,column 9,is_stmt,isa 0
        MOVB      XAR0,#92              ; [CPU_ALU] |315| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 318,column 9,is_stmt,isa 0
        ADDU      ACC,AR3               ; [CPU_ALU] |318| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 315,column 9,is_stmt,isa 0
        MOVL      *+XAR5[AR0],XAR7      ; [CPU_FPU] |315| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 318,column 9,is_stmt,isa 0
        MOVL      XAR7,ACC              ; [CPU_ALU] |318| 
        MOVL      XAR0,#272             ; [CPU_ALU] |318| 
        MOV       PL,*+XAR4[AR0]        ; [CPU_ALU] |318| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 320,column 9,is_stmt,isa 0
        MOVL      XAR0,#22              ; [CPU_ALU] |320| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 318,column 9,is_stmt,isa 0
        ADDB      XAR7,#36              ; [CPU_ALU] |318| 
        MOVL      XAR4,ACC              ; [CPU_ALU] 
        MOV       *+XAR7[0],P           ; [CPU_ALU] |318| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 320,column 9,is_stmt,isa 0
        MOVL      XAR7,*+FP[AR0]        ; [CPU_ALU] |320| 
        MOVB      XAR1,#18              ; [CPU_ALU] |320| 
        MOVB      XAR0,#94              ; [CPU_ALU] |320| 
        MOV32     R3H,*+XAR5[AR0]       ; [CPU_FPU] |320| 
        MOV32     R2H,*+XAR7[AR1]       ; [CPU_FPU] |320| 
        MOVB      XAR0,#92              ; [CPU_ALU] |320| 
        ADDB      XAR4,#28              ; [CPU_ALU] 
        MOVB      XAR1,#16              ; [CPU_FPU] |320| 

        MOV32     R1H,*+XAR5[AR0]       ; [CPU_FPU] |320| 
||      SUBF32    R7H,R3H,R2H           ; [CPU_FPU] |320| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 320,column 32,is_stmt,isa 0
        MOVB      XAR0,#124             ; [CPU_FPU] |320| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 320,column 9,is_stmt,isa 0

        MPYF32    R2H,R7H,R7H           ; [CPU_FPU] |320| 
||      MOV32     R0H,*+XAR7[AR1]       ; [CPU_FPU] |320| 

        MOV32     R3H,*+XAR6[AR0]       ; [CPU_FPU] |320| 
||      SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |320| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 321,column 28,is_stmt,isa 0
        MOVB      XAR1,#28              ; [CPU_FPU] |321| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 320,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR6             ; [CPU_FPU] |320| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 320,column 32,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_FPU] |320| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 320,column 9,is_stmt,isa 0
        MPYF32    R0H,R0H,R0H           ; [CPU_FPU] |320| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 320,column 32,is_stmt,isa 0
        MPYF32    R1H,R3H,R3H           ; [CPU_FPU] |320| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 320,column 9,is_stmt,isa 0
        ADDB      XAR5,#44              ; [CPU_ALU] |320| 

        MOV32     *+XAR5[AR0],R1H       ; [CPU_FPU] |320| 
||      ADDF32    R0H,R0H,R2H           ; [CPU_FPU] |320| 

        MOVL      XAR0,#22              ; [CPU_FPU] |320| 
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |320| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_FPU] |320| 
        MOVZ      AR7,*+XAR4[0]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 321,column 28,is_stmt,isa 0
        MOV       PH,#0                 ; [CPU_ALU] |321| 
        MOVB      XAR0,#0               ; [CPU_ALU] |321| 
        MOV       AL,*+XAR6[AR1]        ; [CPU_ALU] |321| 
        ANDB      AL,#0x01              ; [CPU_ALU] |321| 
        MOVZ      AR6,AL                ; [CPU_ALU] |321| 
        MOV       AL,*-SP[50]           ; [CPU_ALU] |321| 
        ANDB      AL,#1                 ; [CPU_ALU] |321| 
        MOV       PL,AL                 ; [CPU_ALU] |321| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |321| 
        CMPL      ACC,P                 ; [CPU_ALU] |321| 
        MOVB      XAR0,#1,NEQ           ; [CPU_ALU] |321| 
        MOV       AL,AR7                ; [CPU_ALU] 
        ADD       AL,AR0                ; [CPU_ALU] |321| 
        MOVL      XAR0,#22              ; [CPU_FPU] |321| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |321| 
        MOVB      XAR1,#28              ; [CPU_ALU] |321| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |321| 
        MOVZ      AR7,AL                ; [CPU_ALU] |321| 
        AND       AL,*+XAR6[AR1],#0x0002 ; [CPU_ALU] |321| 
        LSR       AL,1                  ; [CPU_ALU] |321| 
        MOVU      ACC,AL                ; [CPU_ALU] |321| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |321| 
        AND       AL,*-SP[50],#0x0002   ; [CPU_ALU] |321| 
        LSR       AL,1                  ; [CPU_ALU] |321| 
        MOVZ      AR0,AL                ; [CPU_ALU] |321| 
        MOV       PL,#0                 ; [CPU_ALU] |321| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |321| 
        CMPL      ACC,XAR0              ; [CPU_ALU] |321| 
        B         ||$C$L84||,EQ         ; [CPU_ALU] |321| 
        ; branchcc occurs ; [] |321| 
        MOV       PL,#1                 ; [CPU_ALU] |321| 
||$C$L84||:    
        MOVL      XAR0,#22              ; [CPU_ALU] |321| 
        MOV       AL,AR7                ; [CPU_ALU] 
        MOVB      XAR1,#28              ; [CPU_ALU] |321| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |321| 
        ADD       AL,PL                 ; [CPU_ALU] |321| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |321| 
        MOVZ      AR7,AL                ; [CPU_ALU] |321| 
        AND       AL,*+XAR6[AR1],#0x0004 ; [CPU_ALU] |321| 
        LSR       AL,2                  ; [CPU_ALU] |321| 
        MOVU      ACC,AL                ; [CPU_ALU] |321| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |321| 
        AND       AL,*-SP[50],#0x0004   ; [CPU_ALU] |321| 
        LSR       AL,2                  ; [CPU_ALU] |321| 
        MOVZ      AR0,AL                ; [CPU_ALU] |321| 
        MOV       PL,#0                 ; [CPU_ALU] |321| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |321| 
        CMPL      ACC,XAR0              ; [CPU_ALU] |321| 
        B         ||$C$L85||,EQ         ; [CPU_ALU] |321| 
        ; branchcc occurs ; [] |321| 
        MOV       PL,#1                 ; [CPU_ALU] |321| 
||$C$L85||:    
        MOV       AL,AR7                ; [CPU_ALU] 
        ADD       AL,PL                 ; [CPU_ALU] |321| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 322,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR5[0]         ; [CPU_FPU] |322| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 321,column 28,is_stmt,isa 0
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |321| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 322,column 9,is_stmt,isa 0
$C$DW$379	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$379, DW_AT_low_pc(0x00)
	.dwattr $C$DW$379, DW_AT_name("pc_finite")
	.dwattr $C$DW$379, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |322| 
        ; call occurs [#||pc_finite||] ; [] |322| 
        CMPB      AL,#0                 ; [CPU_ALU] |322| 
        B         ||$C$L86||,EQ         ; [CPU_ALU] |322| 
        ; branchcc occurs ; [] |322| 
        MOV32     R0H,R1H               ; [CPU_FPU] |322| 
$C$DW$380	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$380, DW_AT_low_pc(0x00)
	.dwattr $C$DW$380, DW_AT_name("pc_finite")
	.dwattr $C$DW$380, DW_AT_TI_call

        LCR       #||pc_finite||        ; [CPU_ALU] |322| 
        ; call occurs [#||pc_finite||] ; [] |322| 
        CMPB      AL,#0                 ; [CPU_ALU] |322| 
        B         ||$C$L87||,NEQ        ; [CPU_ALU] |322| 
        ; branchcc occurs ; [] |322| 
||$C$L86||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 322,column 90,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |322| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |322| 
        MOVB      AL,#6                 ; [CPU_ALU] |322| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 322,column 63,is_stmt,isa 0
        MOVB      *+XAR4[0],#6,UNC      ; [CPU_ALU] |322| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 322,column 90,is_stmt,isa 0
        B         ||$C$L136||,UNC       ; [CPU_ALU] |322| 
        ; branch occurs ; [] |322| 
||$C$L87||:    
        MOVL      ACC,*-SP[60]          ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 309,column 14,is_stmt,isa 0
        ADDB      XAR3,#1               ; [CPU_ALU] |309| 
        ADDB      ACC,#92               ; [CPU_ALU] |309| 
        MOVL      *-SP[60],ACC          ; [CPU_FPU] |309| 
        MOVL      ACC,*-SP[56]          ; [CPU_FPU] |309| 
        ADDB      ACC,#92               ; [CPU_ALU] |309| 
        MOVL      *-SP[56],ACC          ; [CPU_FPU] |309| 
        MOV       AL,AR3                ; [CPU_ALU] |309| 
        CMPB      AL,#8                 ; [CPU_ALU] |309| 
        B         ||$C$L81||,LO         ; [CPU_ALU] |309| 
        ; branchcc occurs ; [] |309| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 324,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |324| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |324| 
        MOVZ      AR6,SP                ; [CPU_ALU] |324| 
        MOVL      XAR0,#20              ; [CPU_ALU] |324| 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |324| 
        MOVL      XAR0,#20              ; [CPU_ALU] |324| 
        SUBB      XAR6,#38              ; [CPU_ARAU] |324| 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |324| 
        MOVZ      AR6,AR6               ; [CPU_ALU] |324| 
        ADDB      ACC,#28               ; [CPU_ALU] |324| 
        ADDB      XAR4,#44              ; [CPU_ALU] |324| 
        MOVL      *-SP[2],ACC           ; [CPU_FPU] |324| 
        ADDB      XAR5,#60              ; [CPU_ALU] |324| 
        MOVL      *-SP[4],XAR6          ; [CPU_FPU] |324| 
$C$DW$381	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$381, DW_AT_low_pc(0x00)
	.dwattr $C$DW$381, DW_AT_name("pc_rank")
	.dwattr $C$DW$381, DW_AT_TI_call

        LCR       #||pc_rank||          ; [CPU_ALU] |324| 
        ; call occurs [#||pc_rank||] ; [] |324| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 325,column 5,is_stmt,isa 0
        MOVZ      AR6,SP                ; [CPU_ALU] |325| 
        MOVL      XAR0,#20              ; [CPU_ALU] |325| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |325| 
        MOVL      XAR0,#20              ; [CPU_ALU] |325| 
        SUBB      XAR6,#46              ; [CPU_ARAU] |325| 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |325| 
        MOVZ      AR6,AR6               ; [CPU_ALU] |325| 
        MOVL      XAR0,#20              ; [CPU_ALU] |325| 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |325| 
        ADDB      XAR4,#60              ; [CPU_ALU] |325| 
        ADDB      ACC,#28               ; [CPU_ALU] |325| 
        ADDB      XAR5,#44              ; [CPU_ALU] |325| 
        MOVL      *-SP[2],ACC           ; [CPU_FPU] |325| 
        MOVL      *-SP[4],XAR6          ; [CPU_FPU] |325| 
$C$DW$382	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$382, DW_AT_low_pc(0x00)
	.dwattr $C$DW$382, DW_AT_name("pc_rank")
	.dwattr $C$DW$382, DW_AT_TI_call

        LCR       #||pc_rank||          ; [CPU_ALU] |325| 
        ; call occurs [#||pc_rank||] ; [] |325| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 326,column 25,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |326| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |326| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*-SP[38] << 1     ; [CPU_ALU] |326| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |326| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |326| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 327,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[62]         ; [CPU_ALU] |327| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 326,column 25,is_stmt,isa 0
        MOVB      XAR0,#44              ; [CPU_ALU] |326| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |326| 
        MOVB      XAR0,#10              ; [CPU_ALU] |326| 
        SQRTF32   R0H,R0H               ; [CPU_FPU] |326| 
        MOV32     R1H,*+XAR5[AR0]       ; [CPU_FPU] |326| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 265,column 1,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |265| 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |265| 
        MOVB      XAR1,#44              ; [CPU_ALU] |265| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 326,column 25,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |326| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 327,column 5,is_stmt,isa 0
        MOVB      XAR0,#146             ; [CPU_ALU] |327| 
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |327| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 265,column 1,is_stmt,isa 0
        MOV32     R1H,*+XAR4[AR1]       ; [CPU_FPU] |265| 
        SQRTF32   R1H,R1H               ; [CPU_FPU] |265| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        CMPF32    R1H,R0H               ; [CPU_FPU] |265| 
        MOVST0    ZF, NF                ; [CPU_FPU] |265| 
        B         ||$C$L88||,LEQ        ; [CPU_ALU] |265| 
        ; branchcc occurs ; [] |265| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 287,column 69,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |287| 
        B         ||$C$L89||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L88||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 332,column 9,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |332| 
        MOV       T,*-SP[38]            ; [CPU_ALU] |332| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |332| 
        MOVB      AL,#1                 ; [CPU_ALU] |332| 
        LSL       AL,T                  ; [CPU_ALU] |332| 
        MOV       PL,AL                 ; [CPU_ALU] |332| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 332,column 38,is_stmt,isa 0
        INC       *+XAR4[7]             ; [CPU_ALU] |332| 
||$C$L89||:    
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 265,column 1,is_stmt,isa 0
        MOV       ACC,*-SP[37] << 1     ; [CPU_ALU] |265| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |265| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |265| 
        MOVB      XAR0,#44              ; [CPU_ALU] |265| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |265| 
        SQRTF32   R1H,R1H               ; [CPU_FPU] |265| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        CMPF32    R1H,R0H               ; [CPU_FPU] |265| 
        MOVST0    ZF, NF                ; [CPU_FPU] |265| 
        B         ||$C$L90||,GT         ; [CPU_ALU] |265| 
        ; branchcc occurs ; [] |265| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 332,column 9,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |332| 
        MOV       T,*-SP[37]            ; [CPU_ALU] |332| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |332| 
        MOVB      AL,#1                 ; [CPU_ALU] |332| 
        LSL       AL,T                  ; [CPU_ALU] |332| 
        OR        PL,AL                 ; [CPU_ALU] |332| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 332,column 38,is_stmt,isa 0
        INC       *+XAR4[7]             ; [CPU_FPU] |332| 
||$C$L90||:    
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 265,column 1,is_stmt,isa 0
        MOV       ACC,*-SP[36] << 1     ; [CPU_ALU] |265| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |265| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |265| 
        MOVB      XAR0,#44              ; [CPU_ALU] |265| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |265| 
        SQRTF32   R1H,R1H               ; [CPU_FPU] |265| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        CMPF32    R1H,R0H               ; [CPU_FPU] |265| 
        MOVST0    ZF, NF                ; [CPU_FPU] |265| 
        B         ||$C$L91||,GT         ; [CPU_ALU] |265| 
        ; branchcc occurs ; [] |265| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 332,column 9,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |332| 
        MOV       T,*-SP[36]            ; [CPU_ALU] |332| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |332| 
        MOVB      AL,#1                 ; [CPU_ALU] |332| 
        LSL       AL,T                  ; [CPU_ALU] |332| 
        OR        PL,AL                 ; [CPU_ALU] |332| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 332,column 38,is_stmt,isa 0
        INC       *+XAR4[7]             ; [CPU_FPU] |332| 
||$C$L91||:    
        MOVL      XAR0,#20              ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
        MOVB      XAR6,#7               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 334,column 29,is_stmt,isa 0
        MOVB      XAR7,#3               ; [CPU_ALU] |334| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 334,column 5,is_stmt,isa 0
        MOVB      XAR1,#27              ; [CPU_ALU] |334| 
        MOV       *+XAR4[AR1],P         ; [CPU_ALU] |334| 
||$C$L92||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 336,column 9,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |336| 
        MOV       AH,AR7                ; [CPU_ALU] |336| 
        MOV       *-SP[48],#0           ; [CPU_ALU] |336| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 337,column 18,is_stmt,isa 0
        B         ||$C$L97||,EQ         ; [CPU_ALU] |337| 
        ; branchcc occurs ; [] |337| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 337,column 27,is_stmt,isa 0
        AND       AH,AH,#0xfffe         ; [CPU_ALU] |337| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 337,column 13,is_stmt,isa 0
        MOVB      XAR0,#0               ; [CPU_ALU] |337| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 337,column 27,is_stmt,isa 0
        B         ||$C$L96||,EQ         ; [CPU_ALU] |337| 
        ; branchcc occurs ; [] |337| 
        MOVZ      AR5,SP                ; [CPU_ALU] 
        MOV       AH,AR7                ; [CPU_ALU] 
        SUBB      XAR5,#46              ; [CPU_ARAU] 
        MOVZ      AR5,AR5               ; [CPU_ALU] 
        LSR       AH,1                  ; [CPU_ALU] 
        ADDB      AH,#-1                ; [CPU_ALU] 
        MOVZ      AR4,AH                ; [CPU_ALU] 
||$C$L93||:    
        MOV       T,*XAR5++             ; [CPU_ALU] |337| 
        MOVB      AH,#1                 ; [CPU_ALU] |337| 
        LSL       AH,T                  ; [CPU_ALU] |337| 
        MOV       PH,AH                 ; [CPU_ALU] |337| 
        MOV       AH,PL                 ; [CPU_ALU] |337| 
        AND       AH,PH                 ; [CPU_ALU] |337| 
        B         ||$C$L94||,EQ         ; [CPU_ALU] |337| 
        ; branchcc occurs ; [] |337| 
        MOV       AH,*-SP[48]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 337,column 90,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |337| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 337,column 62,is_stmt,isa 0
        OR        AH,PH                 ; [CPU_ALU] |337| 
        MOV       *-SP[48],AH           ; [CPU_FPU] |337| 
||$C$L94||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 337,column 27,is_stmt,isa 0
        MOV       T,*XAR5++             ; [CPU_ALU] |337| 
        MOVB      AH,#1                 ; [CPU_ALU] |337| 
        LSL       AH,T                  ; [CPU_ALU] |337| 
        MOV       PH,AH                 ; [CPU_ALU] |337| 
        MOV       AH,PL                 ; [CPU_ALU] |337| 
        AND       AH,PH                 ; [CPU_ALU] |337| 
        B         ||$C$L95||,EQ         ; [CPU_ALU] |337| 
        ; branchcc occurs ; [] |337| 
        MOV       AH,*-SP[48]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 337,column 90,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |337| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 337,column 62,is_stmt,isa 0
        OR        AH,PH                 ; [CPU_ALU] |337| 
        MOV       *-SP[48],AH           ; [CPU_FPU] |337| 
||$C$L95||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 337,column 27,is_stmt,isa 0
        ADDB      XAR0,#2               ; [CPU_ALU] |337| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 337,column 18,is_stmt,isa 0
        BANZ      ||$C$L93||,AR4--      ; [CPU_ALU] |337| 
        ; branchcc occurs ; [] |337| 
||$C$L96||:    
        TBIT      AR7,#0                ; [CPU_ALU] 
        B         ||$C$L97||,NTC        ; [CPU_ALU] 
        ; branchcc occurs ; [] 
; Peeled loop iterations for unrolled loop:
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 337,column 27,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |337| 
        SUBB      XAR4,#46              ; [CPU_ARAU] |337| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |337| 
        MOVB      AH,#1                 ; [CPU_ALU] |337| 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] |337| 
        LSL       AH,T                  ; [CPU_ALU] |337| 
        AND       AH,PL                 ; [CPU_ALU] |337| 
        B         ||$C$L98||,NEQ        ; [CPU_ALU] |337| 
        ; branchcc occurs ; [] |337| 
||$C$L97||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 338,column 28,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |338| 
        B         ||$C$L99||,NEQ        ; [CPU_ALU] |338| 
        ; branchcc occurs ; [] |338| 
        B         ||$C$L100||,UNC       ; [CPU_ALU] |338| 
        ; branch occurs ; [] |338| 
||$C$L98||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 337,column 62,is_stmt,isa 0
        MOVB      AH,#1                 ; [CPU_ALU] |337| 
        LSL       AH,T                  ; [CPU_ALU] |337| 
        OR        *-SP[48],AH           ; [CPU_ALU] |337| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 338,column 28,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |338| 
        B         ||$C$L100||,EQ        ; [CPU_ALU] |338| 
        ; branchcc occurs ; [] |338| 
||$C$L99||:    
        CMPB      AL,#2                 ; [CPU_ALU] |338| 
        B         ||$C$L103||,LOS       ; [CPU_ALU] |338| 
        ; branchcc occurs ; [] |338| 
        MOV       AH,AR7                ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 339,column 40,is_stmt,isa 0
        CMPB      AH,#1                 ; [CPU_ALU] |339| 
        B         ||$C$L102||,LOS       ; [CPU_ALU] |339| 
        ; branchcc occurs ; [] |339| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 339,column 48,is_stmt,isa 0
        SUBB      XAR7,#1               ; [CPU_ARAU] |339| 
        B         ||$C$L102||,UNC       ; [CPU_ALU] |339| 
        ; branch occurs ; [] |339| 
||$C$L100||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 339,column 28,is_stmt,isa 0
        MOV       AH,AR7                ; [CPU_ALU] |339| 
        MOV       PH,#0                 ; [CPU_ALU] |339| 
        CMPB      AH,#8                 ; [CPU_ALU] |339| 
        B         ||$C$L101||,HIS       ; [CPU_ALU] |339| 
        ; branchcc occurs ; [] |339| 
        MOV       PH,#1                 ; [CPU_ALU] |339| 
||$C$L101||:    
        ADD       AH,PH                 ; [CPU_ALU] |339| 
        MOVZ      AR7,AH                ; [CPU_ALU] |339| 
||$C$L102||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 335,column 22,is_stmt,isa 0
        BANZ      ||$C$L92||,AR6--      ; [CPU_ALU] |335| 
        ; branchcc occurs ; [] |335| 
||$C$L103||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 341,column 5,is_stmt,isa 0
        MOV       AH,AL                 ; [CPU_ALU] |341| 
        ADDB      AH,#-1                ; [CPU_ALU] |341| 
        CMPB      AH,#2                 ; [CPU_ALU] |341| 
        B         ||$C$L104||,LO        ; [CPU_ALU] |341| 
        ; branchcc occurs ; [] |341| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 341,column 55,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |341| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |341| 
        MOVB      AL,#5                 ; [CPU_ALU] |341| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 341,column 23,is_stmt,isa 0
        MOVB      *+XAR4[0],#5,UNC      ; [CPU_ALU] |341| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 341,column 55,is_stmt,isa 0
        B         ||$C$L136||,UNC       ; [CPU_ALU] |341| 
        ; branch occurs ; [] |341| 
||$C$L104||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 342,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |342| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 343,column 5,is_stmt,isa 0
        MOV       T,*-SP[38]            ; [CPU_ALU] |343| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 344,column 24,is_stmt,isa 0
        MOVB      AH,#1                 ; [CPU_ALU] |344| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 342,column 5,is_stmt,isa 0
        MOVB      XAR1,#10              ; [CPU_ALU] |342| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |342| 
        MOVZ      AR6,*-SP[48]          ; [CPU_ALU] |342| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 344,column 24,is_stmt,isa 0
        LSL       AH,T                  ; [CPU_ALU] |344| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 342,column 33,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |342| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 343,column 5,is_stmt,isa 0
        MOV       *-SP[47],T            ; [CPU_ALU] |343| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 342,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR1],AR6       ; [CPU_ALU] |342| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 344,column 24,is_stmt,isa 0
        AND       AH,AR6                ; [CPU_ALU] |344| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 342,column 59,is_stmt,isa 0
        MOVB      XAR1,#9               ; [CPU_ALU] |342| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 342,column 33,is_stmt,isa 0
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |342| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 342,column 59,is_stmt,isa 0
        MOV       *+XAR4[AR1],AR7       ; [CPU_ALU] |342| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 344,column 24,is_stmt,isa 0
        B         ||$C$L111||,NEQ       ; [CPU_ALU] |344| 
        ; branchcc occurs ; [] |344| 
        MOV       T,*-SP[37]            ; [CPU_ALU] |344| 
        MOVB      AL,#1                 ; [CPU_ALU] |344| 
        MOV       AH,*-SP[48]           ; [CPU_ALU] |344| 
        LSL       AL,T                  ; [CPU_ALU] |344| 
        AND       AL,AH                 ; [CPU_ALU] |344| 
        B         ||$C$L110||,NEQ       ; [CPU_ALU] |344| 
        ; branchcc occurs ; [] |344| 
        MOV       T,*-SP[36]            ; [CPU_ALU] |344| 
        MOVB      AL,#1                 ; [CPU_ALU] |344| 
        LSL       AL,T                  ; [CPU_ALU] |344| 
        AND       AL,AH                 ; [CPU_ALU] |344| 
        B         ||$C$L109||,NEQ       ; [CPU_ALU] |344| 
        ; branchcc occurs ; [] |344| 
        MOV       T,*-SP[35]            ; [CPU_ALU] |344| 
        MOVB      AL,#1                 ; [CPU_ALU] |344| 
        LSL       AL,T                  ; [CPU_ALU] |344| 
        AND       AL,AH                 ; [CPU_ALU] |344| 
        B         ||$C$L108||,NEQ       ; [CPU_ALU] |344| 
        ; branchcc occurs ; [] |344| 
        MOV       T,*-SP[34]            ; [CPU_ALU] |344| 
        MOVB      AL,#1                 ; [CPU_ALU] |344| 
        LSL       AL,T                  ; [CPU_ALU] |344| 
        AND       AL,AH                 ; [CPU_ALU] |344| 
        B         ||$C$L107||,NEQ       ; [CPU_ALU] |344| 
        ; branchcc occurs ; [] |344| 
        MOV       T,*-SP[33]            ; [CPU_ALU] |344| 
        MOVB      AL,#1                 ; [CPU_ALU] |344| 
        LSL       AL,T                  ; [CPU_ALU] |344| 
        AND       AL,AH                 ; [CPU_ALU] |344| 
        B         ||$C$L106||,NEQ       ; [CPU_ALU] |344| 
        ; branchcc occurs ; [] |344| 
        MOV       T,*-SP[32]            ; [CPU_ALU] |344| 
        MOVB      AL,#1                 ; [CPU_ALU] |344| 
        LSL       AL,T                  ; [CPU_ALU] |344| 
        AND       AL,AH                 ; [CPU_ALU] |344| 
        B         ||$C$L105||,NEQ       ; [CPU_ALU] |344| 
        ; branchcc occurs ; [] |344| 
        MOV       T,*-SP[31]            ; [CPU_ALU] |344| 
        MOVB      AL,#1                 ; [CPU_ALU] |344| 
        LSL       AL,T                  ; [CPU_ALU] |344| 
        AND       AL,AH                 ; [CPU_ALU] |344| 
        B         ||$C$L113||,EQ        ; [CPU_ALU] |344| 
        ; branchcc occurs ; [] |344| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 344,column 19,is_stmt,isa 0
        MOVB      XAR0,#7               ; [CPU_ALU] |344| 
        B         ||$C$L112||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L105||:    
        MOVB      XAR0,#6               ; [CPU_ALU] |344| 
        B         ||$C$L112||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L106||:    
        MOVB      XAR0,#5               ; [CPU_ALU] |344| 
        B         ||$C$L112||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L107||:    
        MOVB      XAR0,#4               ; [CPU_ALU] |344| 
        B         ||$C$L112||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L108||:    
        MOVB      XAR0,#3               ; [CPU_ALU] |344| 
        B         ||$C$L112||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L109||:    
        MOVB      XAR0,#2               ; [CPU_ALU] |344| 
        B         ||$C$L112||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L110||:    
        MOVB      XAR0,#1               ; [CPU_ALU] |344| 
        B         ||$C$L112||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L111||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 344,column 9,is_stmt,isa 0
        MOVB      XAR0,#0               ; [CPU_ALU] |344| 
||$C$L112||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 344,column 58,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |344| 
        SUBB      XAR4,#38              ; [CPU_ARAU] |344| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |344| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |344| 
        MOV       *-SP[47],AL           ; [CPU_ALU] |344| 
||$C$L113||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 346,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |346| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |346| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 345,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |345| 
        ADD       AL,*-SP[47]           ; [CPU_ALU] |345| 
        MOVL      XAR0,#22              ; [CPU_FPU] |345| 
        MOV       *+XAR4[2],AL          ; [CPU_ALU] |345| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |345| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 346,column 5,is_stmt,isa 0
        MOVB      XAR1,#22              ; [CPU_ALU] |346| 
        MOVB      AH,#0                 ; [CPU_ALU] |346| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |346| 
        CMPF32    R0H,#0                ; [CPU_FPU] |346| 
        MOVST0    ZF, NF                ; [CPU_FPU] |346| 
        B         ||$C$L114||,LEQ       ; [CPU_ALU] |346| 
        ; branchcc occurs ; [] |346| 
        MOVIZ     R0H,#12425            ; [CPU_FPU] |346| 
        MOV32     R1H,*-SP[26]          ; [CPU_FPU] |346| 
        MOVXI     R0H,#28767            ; [CPU_FPU] |346| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |346| 
        MOVST0    ZF, NF                ; [CPU_FPU] |346| 
        B         ||$C$L114||,LEQ       ; [CPU_ALU] |346| 
        ; branchcc occurs ; [] |346| 
        CMPF32    R5H,#0                ; [CPU_FPU] |346| 
        MOVST0    ZF, NF                ; [CPU_FPU] |346| 
        B         ||$C$L114||,LEQ       ; [CPU_ALU] |346| 
        ; branchcc occurs ; [] |346| 
        CMPF32    R4H,#0                ; [CPU_FPU] |346| 
        MOVST0    ZF, NF                ; [CPU_FPU] |346| 
        MOVB      AH,#1,GT              ; [CPU_ALU] |346| 
||$C$L114||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 348,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |348| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |348| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 346,column 5,is_stmt,isa 0
        MOVL      XAR0,#22              ; [CPU_ALU] |346| 
        MOV       *+XAR4[4],AH          ; [CPU_ALU] |346| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |346| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 348,column 5,is_stmt,isa 0
        MOVB      XAR1,#29              ; [CPU_ALU] |348| 
        MOVB      AH,#0                 ; [CPU_ALU] |348| 
        MOV       AL,*+XAR4[AR1]        ; [CPU_ALU] |348| 
        CMPB      AL,#0                 ; [CPU_ALU] |348| 
        B         ||$C$L115||,EQ        ; [CPU_ALU] |348| 
        ; branchcc occurs ; [] |348| 
        MOVB      XAR1,#30              ; [CPU_ALU] |348| 
        MOV       AL,*+XAR4[AR1]        ; [CPU_ALU] |348| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |348| 
||$C$L115||:    
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |266| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |266| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 350,column 45,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |350| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 348,column 5,is_stmt,isa 0
        MOVL      XAR0,#22              ; [CPU_ALU] |348| 
        MOV       *+XAR4[5],AH          ; [CPU_ALU] |348| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 350,column 45,is_stmt,isa 0
        SUBB      XAR5,#12              ; [CPU_ARAU] |350| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 348,column 5,is_stmt,isa 0
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |348| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        MOVB      XAR1,#16              ; [CPU_ALU] |266| 
        MOVB      XAR0,#18              ; [CPU_ALU] |266| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 350,column 45,is_stmt,isa 0
        MOVZ      AR5,AR5               ; [CPU_ALU] |350| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        MOV32     R6H,*+XAR4[AR1]       ; [CPU_FPU] |266| 
        MOV32     R7H,*+XAR4[AR0]       ; [CPU_FPU] |266| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 350,column 45,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |350| 
        MOVZ      AR4,SP                ; [CPU_ALU] |350| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 350,column 5,is_stmt,isa 0
        MOV32     *-SP[30],R6H          ; [CPU_FPU] |350| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 350,column 25,is_stmt,isa 0
        MOV32     *-SP[28],R7H          ; [CPU_FPU] |350| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 350,column 45,is_stmt,isa 0
        MOV32     R0H,*+FP[AR0]         ; [CPU_FPU] |350| 
        SUBB      XAR4,#30              ; [CPU_ARAU] |350| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |350| 
$C$DW$383	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$383, DW_AT_low_pc(0x00)
	.dwattr $C$DW$383, DW_AT_name("PC_dq_to_abc")
	.dwattr $C$DW$383, DW_AT_TI_call

        LCR       #||PC_dq_to_abc||     ; [CPU_ALU] |350| 
        ; call occurs [#||PC_dq_to_abc||] ; [] |350| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 351,column 5,is_stmt,isa 0
        MOVL      XAR0,#22              ; [CPU_ALU] |351| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |351| 
        MOVB      XAR1,#18              ; [CPU_ALU] |351| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |351| 
        MOVB      XAR1,#16              ; [CPU_ALU] |351| 
        MOV32     *-SP[50],R0H          ; [CPU_FPU] |351| 
        MOV32     R2H,*+XAR4[AR1]       ; [CPU_FPU] |351| 
        MOVL      XAR4,*-SP[62]         ; [CPU_ALU] |351| 
        MOVL      XAR0,#22              ; [CPU_ALU] |351| 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |351| 
        MOVB      XAR1,#22              ; [CPU_ALU] |351| 
        MOV32     R3H,*+XAR4[4]         ; [CPU_FPU] |351| 
        MOV32     R0H,*+XAR4[6]         ; [CPU_FPU] |351| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 353,column 5,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |353| 
        MOVL      XAR0,#18              ; [CPU_ALU] |353| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 351,column 5,is_stmt,isa 0
        MOV32     R1H,*-SP[26]          ; [CPU_FPU] |351| 

        MPYF32    R0H,R0H,R2H           ; [CPU_FPU] |351| 
||      MOV32     *-SP[52],R0H          ; [CPU_FPU] |351| 

	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 353,column 5,is_stmt,isa 0
        SUBB      XAR4,#30              ; [CPU_ARAU] |353| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 351,column 5,is_stmt,isa 0

        MOV32     R0H,*+XAR5[AR1]       ; [CPU_FPU] |351| 
||      SUBF32    R1H,R1H,R0H           ; [CPU_FPU] |351| 

        MPYF32    R3H,R3H,R0H           ; [CPU_FPU] |351| 
        MOV32     R0H,*-SP[50]          ; [CPU_FPU] 
        MPYF32    R0H,R0H,R3H           ; [CPU_FPU] |351| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 353,column 5,is_stmt,isa 0
        MOVZ      AR4,AR4               ; [CPU_ALU] |353| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 351,column 5,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |351| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 353,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |353| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 351,column 5,is_stmt,isa 0
        MOV32     *-SP[30],R0H          ; [CPU_FPU] |351| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 352,column 5,is_stmt,isa 0
        MOV32     R1H,*-SP[50]          ; [CPU_FPU] |352| 
        MOV32     R0H,*-SP[52]          ; [CPU_FPU] |352| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |352| 

        MOV32     R1H,*-SP[24]          ; [CPU_FPU] |352| 
||      MPYF32    R2H,R2H,R3H           ; [CPU_FPU] |352| 

        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |352| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 353,column 5,is_stmt,isa 0
        SUBB      XAR5,#18              ; [CPU_ARAU] |353| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 352,column 5,is_stmt,isa 0
        SUBF32    R0H,R0H,R2H           ; [CPU_FPU] |352| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 353,column 5,is_stmt,isa 0
        MOVZ      AR5,AR5               ; [CPU_ALU] |353| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 352,column 5,is_stmt,isa 0
        MOV32     *-SP[28],R0H          ; [CPU_FPU] |352| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 353,column 5,is_stmt,isa 0
        MOV32     R0H,*+FP[AR0]         ; [CPU_FPU] |353| 
$C$DW$384	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$384, DW_AT_low_pc(0x00)
	.dwattr $C$DW$384, DW_AT_name("PC_dq_to_abc")
	.dwattr $C$DW$384, DW_AT_TI_call

        LCR       #||PC_dq_to_abc||     ; [CPU_ALU] |353| 
        ; call occurs [#||PC_dq_to_abc||] ; [] |353| 
        MOVZ      AR4,SP                ; [CPU_ALU] 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        MPYF32    R1H,R7H,R7H           ; [CPU_FPU] |266| 
        MPYF32    R0H,R6H,R6H           ; [CPU_FPU] |266| 
        SUBB      XAR4,#18              ; [CPU_ARAU] 
        MOVZ      AR5,AR4               ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |266| 
        MOVZ      AR4,SP                ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 354,column 5,is_stmt,isa 0
        MOVIZ     R6H,#65407            ; [CPU_FPU] |354| 
        MOVXI     R6H,#65535            ; [CPU_FPU] |354| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        SQRTF32   R3H,R0H               ; [CPU_FPU] |266| 
        SUBB      XAR4,#12              ; [CPU_ARAU] 
        MOVZ      AR4,AR4               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 354,column 26,is_stmt,isa 0
        MOVIZ     R2H,#32639            ; [CPU_FPU] |354| 
        MOVXI     R2H,#65535            ; [CPU_FPU] |354| 
        MOVB      XAR6,#2               ; [CPU_ALU] 
||$C$L116||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 356,column 22,is_stmt,isa 0
        MOV32     R1H,*XAR4++           ; [CPU_FPU] |356| 
        CMPF32    R1H,#0                ; [CPU_FPU] |356| 
        MOVST0    ZF, NF                ; [CPU_FPU] |356| 
        B         ||$C$L117||,LT        ; [CPU_ALU] |356| 
        ; branchcc occurs ; [] |356| 
        ZERO      R0H                   ; [CPU_FPU] |356| 
        B         ||$C$L118||,UNC       ; [CPU_ALU] |356| 
        ; branch occurs ; [] |356| 
||$C$L117||:    
        MOV32     R0H,R4H               ; [CPU_FPU] |356| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |356| 
||$C$L118||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 357,column 22,is_stmt,isa 0
        CMPF32    R1H,#0                ; [CPU_FPU] |357| 
        MOVST0    ZF, NF                ; [CPU_FPU] |357| 
        MOV32     R7H,R5H,GEQ           ; [CPU_FPU] |357| 
        B         ||$C$L119||,GEQ       ; [CPU_ALU] |357| 
        ; branchcc occurs ; [] |357| 
        ZERO      R7H                   ; [CPU_FPU] |357| 
||$C$L119||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 358,column 9,is_stmt,isa 0
        MOV32     R1H,*XAR5++           ; [CPU_FPU] |358| 
        SUBF32    R0H,R0H,R1H           ; [CPU_FPU] |358| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 358,column 37,is_stmt,isa 0
        SUBF32    R1H,R7H,R1H           ; [CPU_FPU] |358| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 358,column 9,is_stmt,isa 0
        MAXF32    R6H,R0H               ; [CPU_FPU] |358| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 358,column 37,is_stmt,isa 0
        MINF32    R2H,R1H               ; [CPU_FPU] |358| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 355,column 14,is_stmt,isa 0
        BANZ      ||$C$L116||,AR6--     ; [CPU_ALU] |355| 
        ; branchcc occurs ; [] |355| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 360,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |360| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |360| 
        SUBF32    R0H,R2H,R6H           ; [CPU_FPU] |360| 
        MOVB      XAR1,#148             ; [CPU_ALU] |360| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 361,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |361| 
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |361| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 360,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |360| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 361,column 5,is_stmt,isa 0
        B         ||$C$L121||,EQ        ; [CPU_ALU] |361| 
        ; branchcc occurs ; [] |361| 
        MOV       AL,*+XAR4[5]          ; [CPU_ALU] |361| 
        B         ||$C$L121||,EQ        ; [CPU_ALU] |361| 
        ; branchcc occurs ; [] |361| 
        MOVIZ     R0H,#15820            ; [CPU_FPU] |361| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |361| 
        CMPF32    R3H,R0H               ; [CPU_FPU] |361| 
        MOVST0    ZF, NF                ; [CPU_FPU] |361| 
        B         ||$C$L121||,LT        ; [CPU_ALU] |361| 
        ; branchcc occurs ; [] |361| 
        MOV32     R0H,*-SP[12]          ; [CPU_FPU] |361| 
        CMPF32    R0H,#0                ; [CPU_FPU] |361| 
        MOVB      XAR0,#12              ; [CPU_ALU] |361| 
        MOVL      XAR4,*-SP[62]         ; [CPU_ALU] |361| 
        MOV32     R1H,*-SP[12],GEQ      ; [CPU_FPU] |361| 
        MOV32     R1H,*-SP[12],LT       ; [CPU_FPU] |361| 
        NEGF32    R1H,R1H,LT            ; [CPU_FPU] |361| 
        MOV32     R0H,*-SP[10]          ; [CPU_FPU] |361| 
        CMPF32    R0H,#0                ; [CPU_FPU] |361| 
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |361| 
        MOV32     R2H,*-SP[8]           ; [CPU_FPU] |361| 
        CMPF32    R2H,#0                ; [CPU_FPU] |361| 
        NEGF32    R2H,R2H,LT            ; [CPU_FPU] |361| 
        MOV32     R4H,*+XAR4[AR0]       ; [CPU_FPU] |361| 
        DIV2PIF32 R4H,R4H               ; [CPU_FPU] |361| 
        NOP       ; [CPU_ALU] 
        SINPUF32  R4H,R4H               ; [CPU_FPU] |361| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MINF32    R0H,R2H               ; [CPU_FPU] |361| 
        MPYF32    R2H,R3H,R4H           ; [CPU_FPU] |361| 
        MINF32    R1H,R0H               ; [CPU_FPU] |361| 
        CMPF32    R1H,R2H               ; [CPU_FPU] |361| 
        MOVST0    ZF, NF                ; [CPU_FPU] |361| 
        B         ||$C$L121||,GT        ; [CPU_ALU] |361| 
        ; branchcc occurs ; [] |361| 
        MOVL      XAR0,#20              ; [CPU_ALU] |361| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |361| 
        MOVB      XAR1,#148             ; [CPU_ALU] |361| 
        MOVIZ     R0H,#46470            ; [CPU_FPU] |361| 
        MOVXI     R0H,#14269            ; [CPU_FPU] |361| 
        MOV32     R1H,*+XAR4[AR1]       ; [CPU_FPU] |361| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |361| 
        MOVST0    ZF, NF                ; [CPU_FPU] |361| 
        B         ||$C$L120||,LT        ; [CPU_ALU] |361| 
        ; branchcc occurs ; [] |361| 
        MOVB      XAR1,#180             ; [CPU_ALU] |361| 
        MOV       AL,*+XAR4[AR1]        ; [CPU_ALU] |361| 
        B         ||$C$L120||,NEQ       ; [CPU_ALU] |361| 
        ; branchcc occurs ; [] |361| 
        MOVL      XAR0,#20              ; [CPU_ALU] 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] 
        ADDU      ACC,*-SP[47]          ; [CPU_ALU] |361| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |361| 
        MOVB      XAR0,#36              ; [CPU_ALU] |361| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |361| 
        B         ||$C$L121||,EQ        ; [CPU_ALU] |361| 
        ; branchcc occurs ; [] |361| 
||$C$L120||:    
        MOVB      XAR6,#1               ; [CPU_ALU] |361| 
||$C$L121||:    
        MOVL      XAR0,#20              ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 364,column 5,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |364| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 361,column 5,is_stmt,isa 0
        MOV       PH,*-SP[47]           ; [CPU_ALU] |361| 
        MOV       *+XAR4[6],AR6         ; [CPU_ALU] |361| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 365,column 5,is_stmt,isa 0
        B         ||$C$L131||,EQ        ; [CPU_ALU] |365| 
        ; branchcc occurs ; [] |365| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 366,column 13,is_stmt,isa 0
        MOV       T,#0                  ; [CPU_ALU] |366| 
||$C$L122||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 366,column 28,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |366| 
        MOVL      XAR4,*-SP[62]         ; [CPU_ALU] |366| 
        MOVB      XAR0,#15              ; [CPU_ALU] |366| 
        LSL       AL,T                  ; [CPU_ALU] |366| 
        AND       AL,*-SP[48]           ; [CPU_ALU] |366| 
        OR        AL,*+XAR4[AR0]        ; [CPU_ALU] |366| 
        B         ||$C$L123||,EQ        ; [CPU_ALU] |366| 
        ; branchcc occurs ; [] |366| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 367,column 13,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |367| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |367| 
        MOV       AL,T                  ; [CPU_ALU] 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR0,#22              ; [CPU_ALU] |367| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |367| 
        MOVB      XAR1,#18              ; [CPU_ALU] |367| 
        MOV       ACC,AL << 2           ; [CPU_ALU] |367| 
        MOVB      XAR0,#16              ; [CPU_ALU] |367| 
        MOV32     R1H,*+XAR4[AR1]       ; [CPU_FPU] |367| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |367| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |367| 
        ADDB      ACC,#92               ; [CPU_ALU] |367| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |367| 
$C$DW$385	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$385, DW_AT_low_pc(0x00)
	.dwattr $C$DW$385, DW_AT_name("pc_angle_cost")
	.dwattr $C$DW$385, DW_AT_TI_call

        LCR       #||pc_angle_cost||    ; [CPU_ALU] |367| 
        ; call occurs [#||pc_angle_cost||] ; [] |367| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       AL,T                  ; [CPU_ALU] |367| 
        MOV       ACC,AL << 1           ; [CPU_ALU] |367| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |367| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |367| 
        MOVB      XAR0,#76              ; [CPU_ALU] |367| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |367| 
||$C$L123||:    
        MOV       AL,T                  ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 366,column 18,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |366| 
        CMPB      AL,#8                 ; [CPU_ALU] |366| 
        MOV       T,AL                  ; [CPU_FPU] |366| 
        B         ||$C$L122||,LO        ; [CPU_ALU] |366| 
        ; branchcc occurs ; [] |366| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 37,is_stmt,isa 0
        MOV       T,*-SP[38]            ; [CPU_ALU] |368| 
        MOVB      AL,#1                 ; [CPU_ALU] |368| 
        LSL       AL,T                  ; [CPU_ALU] |368| 
        AND       AL,*-SP[48]           ; [CPU_ALU] |368| 
        B         ||$C$L124||,EQ        ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
        MOVL      XAR0,#20              ; [CPU_ALU] |368| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |368| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PH << 1           ; [CPU_ALU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV       ACC,*-SP[38] << 1     ; [CPU_ALU] |368| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |368| 
        MOVST0    ZF, NF                ; [CPU_FPU] |368| 
        B         ||$C$L124||,GEQ       ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 98,is_stmt,isa 0
        MOV       PH,*-SP[38]           ; [CPU_ALU] |368| 
||$C$L124||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 37,is_stmt,isa 0
        MOV       T,*-SP[37]            ; [CPU_ALU] |368| 
        MOVB      AL,#1                 ; [CPU_ALU] |368| 
        LSL       AL,T                  ; [CPU_ALU] |368| 
        AND       AL,*-SP[48]           ; [CPU_ALU] |368| 
        B         ||$C$L125||,EQ        ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
        MOVL      XAR0,#20              ; [CPU_ALU] |368| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |368| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PH << 1           ; [CPU_ALU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV       ACC,*-SP[37] << 1     ; [CPU_ALU] |368| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |368| 
        MOVST0    ZF, NF                ; [CPU_FPU] |368| 
        B         ||$C$L125||,GEQ       ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 98,is_stmt,isa 0
        MOV       PH,*-SP[37]           ; [CPU_ALU] |368| 
||$C$L125||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 37,is_stmt,isa 0
        MOV       T,*-SP[36]            ; [CPU_ALU] |368| 
        MOVB      AL,#1                 ; [CPU_ALU] |368| 
        LSL       AL,T                  ; [CPU_ALU] |368| 
        AND       AL,*-SP[48]           ; [CPU_ALU] |368| 
        B         ||$C$L126||,EQ        ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
        MOVL      XAR0,#20              ; [CPU_ALU] |368| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |368| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PH << 1           ; [CPU_ALU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV       ACC,*-SP[36] << 1     ; [CPU_ALU] |368| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |368| 
        MOVST0    ZF, NF                ; [CPU_FPU] |368| 
        B         ||$C$L126||,GEQ       ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 98,is_stmt,isa 0
        MOV       PH,*-SP[36]           ; [CPU_ALU] |368| 
||$C$L126||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 37,is_stmt,isa 0
        MOV       T,*-SP[35]            ; [CPU_ALU] |368| 
        MOVB      AL,#1                 ; [CPU_ALU] |368| 
        LSL       AL,T                  ; [CPU_ALU] |368| 
        AND       AL,*-SP[48]           ; [CPU_ALU] |368| 
        B         ||$C$L127||,EQ        ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
        MOVL      XAR0,#20              ; [CPU_ALU] |368| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |368| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PH << 1           ; [CPU_ALU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV       ACC,*-SP[35] << 1     ; [CPU_ALU] |368| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |368| 
        MOVST0    ZF, NF                ; [CPU_FPU] |368| 
        B         ||$C$L127||,GEQ       ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 98,is_stmt,isa 0
        MOV       PH,*-SP[35]           ; [CPU_ALU] |368| 
||$C$L127||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 37,is_stmt,isa 0
        MOV       T,*-SP[34]            ; [CPU_ALU] |368| 
        MOVB      AL,#1                 ; [CPU_ALU] |368| 
        LSL       AL,T                  ; [CPU_ALU] |368| 
        AND       AL,*-SP[48]           ; [CPU_ALU] |368| 
        B         ||$C$L128||,EQ        ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
        MOVL      XAR0,#20              ; [CPU_ALU] |368| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |368| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PH << 1           ; [CPU_ALU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV       ACC,*-SP[34] << 1     ; [CPU_ALU] |368| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |368| 
        MOVST0    ZF, NF                ; [CPU_FPU] |368| 
        B         ||$C$L128||,GEQ       ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 98,is_stmt,isa 0
        MOV       PH,*-SP[34]           ; [CPU_ALU] |368| 
||$C$L128||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 37,is_stmt,isa 0
        MOV       T,*-SP[33]            ; [CPU_ALU] |368| 
        MOVB      AL,#1                 ; [CPU_ALU] |368| 
        LSL       AL,T                  ; [CPU_ALU] |368| 
        AND       AL,*-SP[48]           ; [CPU_ALU] |368| 
        B         ||$C$L129||,EQ        ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
        MOVL      XAR0,#20              ; [CPU_ALU] |368| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |368| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PH << 1           ; [CPU_ALU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV       ACC,*-SP[33] << 1     ; [CPU_ALU] |368| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |368| 
        MOVST0    ZF, NF                ; [CPU_FPU] |368| 
        B         ||$C$L129||,GEQ       ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 98,is_stmt,isa 0
        MOV       PH,*-SP[33]           ; [CPU_ALU] |368| 
||$C$L129||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 37,is_stmt,isa 0
        MOV       T,*-SP[32]            ; [CPU_ALU] |368| 
        MOVB      AL,#1                 ; [CPU_ALU] |368| 
        LSL       AL,T                  ; [CPU_ALU] |368| 
        AND       AL,*-SP[48]           ; [CPU_ALU] |368| 
        B         ||$C$L130||,EQ        ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
        MOVL      XAR0,#20              ; [CPU_ALU] |368| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |368| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PH << 1           ; [CPU_ALU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV       ACC,*-SP[32] << 1     ; [CPU_ALU] |368| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |368| 
        MOVST0    ZF, NF                ; [CPU_FPU] |368| 
        B         ||$C$L130||,GEQ       ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 98,is_stmt,isa 0
        MOV       PH,*-SP[32]           ; [CPU_ALU] |368| 
||$C$L130||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 37,is_stmt,isa 0
        MOV       T,*-SP[31]            ; [CPU_ALU] |368| 
        MOVB      AL,#1                 ; [CPU_ALU] |368| 
        LSL       AL,T                  ; [CPU_ALU] |368| 
        AND       AL,*-SP[48]           ; [CPU_ALU] |368| 
        B         ||$C$L131||,EQ        ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
        MOVL      XAR0,#20              ; [CPU_ALU] |368| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |368| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PH << 1           ; [CPU_ALU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV       ACC,*-SP[31] << 1     ; [CPU_ALU] |368| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#76              ; [CPU_ALU] |368| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |368| 
        MOVST0    ZF, NF                ; [CPU_FPU] |368| 
        B         ||$C$L131||,GEQ       ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 368,column 98,is_stmt,isa 0
        MOV       PH,*-SP[31]           ; [CPU_ALU] |368| 
||$C$L131||:    
        MOVL      XAR0,#20              ; [CPU_ALU] 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] 
        MOVZ      AR7,SP                ; [CPU_ALU] 
        MOVZ      AR4,SP                ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 370,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |370| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 370,column 63,is_stmt,isa 0
        MOVIZ     R1H,#65407            ; [CPU_FPU] |370| 
        MOV       ACC,PH << 1           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 370,column 5,is_stmt,isa 0
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |370| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 370,column 37,is_stmt,isa 0
        MOVIZ     R2H,#32639            ; [CPU_FPU] |370| 
        SUBB      XAR7,#38              ; [CPU_ARAU] 
        SUBB      XAR4,#46              ; [CPU_ARAU] 
        MOVL      XAR0,#20              ; [CPU_ALU] 
        ADDL      ACC,XAR6              ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 370,column 63,is_stmt,isa 0
        MOVXI     R1H,#65535            ; [CPU_FPU] |370| 
        MOVZ      AR7,AR7               ; [CPU_ALU] 
        MOVZ      AR6,AR4               ; [CPU_ALU] 
        ADDB      ACC,#76               ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 370,column 37,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |370| 
        ADDB      XAR5,#76              ; [CPU_ALU] 
        MOVL      XAR3,ACC              ; [CPU_ALU] 
        MOVL      XAR0,*+FP[AR0]        ; [CPU_ALU] |370| 
        MOVXI     R2H,#65535            ; [CPU_FPU] |370| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 371,column 9,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |371| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 370,column 5,is_stmt,isa 0
        MOVB      XAR1,#76              ; [CPU_ALU] |370| 
        MOV32     R3H,*+XAR0[AR1]       ; [CPU_FPU] |370| 
        ADDB      XAR4,#11              ; [CPU_ALU] 
        MOVB      XAR1,#7               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 370,column 21,is_stmt,isa 0
        MOV32     R4H,R3H               ; [CPU_FPU] |370| 
||$C$L132||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 373,column 9,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |373| 
        MOV       T,PL                  ; [CPU_ALU] |373| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 372,column 9,is_stmt,isa 0
        MOV32     R0H,*XAR5++           ; [CPU_FPU] |372| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 373,column 9,is_stmt,isa 0
        LSL       AL,T                  ; [CPU_ALU] |373| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 372,column 9,is_stmt,isa 0
        MINF32    R3H,R0H               ; [CPU_FPU] |372| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 372,column 38,is_stmt,isa 0
        MAXF32    R4H,R0H               ; [CPU_FPU] |372| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 373,column 9,is_stmt,isa 0
        AND       AL,*-SP[48]           ; [CPU_ALU] |373| 
        B         ||$C$L133||,EQ        ; [CPU_ALU] |373| 
        ; branchcc occurs ; [] |373| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 373,column 39,is_stmt,isa 0
        MINF32    R2H,R0H               ; [CPU_FPU] |373| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 373,column 76,is_stmt,isa 0
        MAXF32    R1H,R0H               ; [CPU_FPU] |373| 
||$C$L133||:    
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 374,column 9,is_stmt,isa 0
        MOV       AL,*XAR7++            ; [CPU_ALU] |374| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 374,column 46,is_stmt,isa 0
        MOV       AH,*XAR6++            ; [CPU_ALU] |374| 
        MOVB      XAR0,#8               ; [CPU_ALU] |374| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 374,column 9,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |374| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 374,column 46,is_stmt,isa 0
        ADDB      AH,#1                 ; [CPU_ALU] |374| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 374,column 9,is_stmt,isa 0
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |374| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 374,column 46,is_stmt,isa 0
        MOV       AL,PL                 ; [CPU_ALU] |374| 
        MOV       *+XAR4[AR0],AH        ; [CPU_ALU] |374| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 371,column 14,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |371| 
        ADDB      XAR4,#1               ; [CPU_ALU] |371| 
        MOV       PL,AL                 ; [CPU_FPU] |371| 
        BANZ      ||$C$L132||,AR1--     ; [CPU_ALU] |371| 
        ; branchcc occurs ; [] |371| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 376,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |376| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |376| 
        MOVB      AL,#1                 ; [CPU_ALU] |376| 
        ADD       AL,PH                 ; [CPU_ALU] |376| 
        MOV       *+XAR4[1],AL          ; [CPU_ALU] |376| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 376,column 44,is_stmt,isa 0
$C$DW$386	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$386, DW_AT_low_pc(0x00)
	.dwattr $C$DW$386, DW_AT_name("PC_id_to_hw")
	.dwattr $C$DW$386, DW_AT_TI_call

        LCR       #||PC_id_to_hw||      ; [CPU_ALU] |376| 
        ; call occurs [#||PC_id_to_hw||] ; [] |376| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 377,column 5,is_stmt,isa 0
        MOVB      XAR1,#150             ; [CPU_ALU] |377| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 378,column 44,is_stmt,isa 0
        MOVIZ     R7H,#16608            ; [CPU_FPU] |378| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 377,column 5,is_stmt,isa 0
        UI16TOF32 R0H,*+XAR4[4]         ; [CPU_FPU] |377| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 376,column 44,is_stmt,isa 0
        MOV       *+XAR4[3],AL          ; [CPU_ALU] |376| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 377,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |377| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 377,column 43,is_stmt,isa 0
        UI16TOF32 R0H,*+XAR4[5]         ; [CPU_FPU] |377| 
        MOVB      XAR1,#152             ; [CPU_ALU] |377| 
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |377| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 378,column 5,is_stmt,isa 0
        UI16TOF32 R0H,*+XAR4[6]         ; [CPU_FPU] |378| 
        MOVB      XAR1,#154             ; [CPU_ALU] |378| 
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |378| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 378,column 44,is_stmt,isa 0
        MOVB      XAR1,#156             ; [CPU_ALU] |378| 
        MOV32     *+XAR4[AR1],R7H       ; [CPU_FPU] |378| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 379,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[62]         ; [CPU_ALU] |379| 
        MOVB      XAR0,#15              ; [CPU_ALU] |379| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |379| 
        B         ||$C$L134||,NEQ       ; [CPU_ALU] |379| 
        ; branchcc occurs ; [] |379| 
        MOVIZ     R0H,#49024            ; [CPU_FPU] |379| 
        B         ||$C$L135||,UNC       ; [CPU_ALU] |379| 
        ; branch occurs ; [] |379| 
||$C$L134||:    
        SUBF32    R0H,R4H,R3H           ; [CPU_FPU] |379| 
||$C$L135||:    
        MOVL      XAR0,#20              ; [CPU_ALU] 
        MOV       AL,*-SP[47]           ; [CPU_ALU] |379| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 380,column 5,is_stmt,isa 0
        MOVB      XAR1,#160             ; [CPU_ALU] |380| 
        SUBF32    R1H,R1H,R2H           ; [CPU_FPU] |380| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 381,column 49,is_stmt,isa 0
        MOVZ      AR7,PH                ; [CPU_ALU] |381| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
        MOVB      XAR6,#0               ; [CPU_ALU] |381| 
        MOVU      ACC,AL                ; [CPU_ALU] |381| 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 380,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |380| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 381,column 49,is_stmt,isa 0
        CMPL      ACC,XAR7              ; [CPU_ALU] |381| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 379,column 5,is_stmt,isa 0
        MOVB      XAR1,#158             ; [CPU_ALU] |379| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 381,column 49,is_stmt,isa 0
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |381| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 379,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |379| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 381,column 5,is_stmt,isa 0
        MOVB      XAR1,#164             ; [CPU_ALU] |381| 
        UI16TOF32 R0H,*+XAR4[1]         ; [CPU_FPU] |381| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 381,column 49,is_stmt,isa 0
        MOV       ACC,AR6               ; [CPU_ALU] |381| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 381,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |381| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 381,column 49,is_stmt,isa 0
        MOV32     R0H,ACC               ; [CPU_FPU] |381| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 380,column 41,is_stmt,isa 0
        UI16TOF32 R1H,*+XAR4[2]         ; [CPU_FPU] |380| 
        MOVB      XAR0,#162             ; [CPU_ALU] |380| 
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |380| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 381,column 49,is_stmt,isa 0
        I32TOF32  R0H,R0H               ; [CPU_FPU] |381| 
        MOVB      XAR0,#166             ; [CPU_ALU] |381| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |381| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 382,column 5,is_stmt,isa 0
        MOVL      XAR6,*+XAR3[0]        ; [CPU_ALU] |382| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 383,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |383| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 382,column 5,is_stmt,isa 0
        MOVB      XAR1,#168             ; [CPU_ALU] |382| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 382,column 39,is_stmt,isa 0
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |382| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 382,column 5,is_stmt,isa 0
        MOVL      *+XAR4[AR1],XAR6      ; [CPU_ALU] |382| 
||$C$L136||:    
        SUBB      SP,#68                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -16
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -14
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 59
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$387	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$387, DW_AT_low_pc(0x00)
	.dwattr $C$DW$387, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$319, DW_AT_TI_end_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$319, DW_AT_TI_end_line(0x180)
	.dwattr $C$DW$319, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$319

	.sect	"pcmfpc_code"
	.clink
	.global	||PC_hw_to_id||

$C$DW$388	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$388, DW_AT_name("PC_hw_to_id")
	.dwattr $C$DW$388, DW_AT_low_pc(||PC_hw_to_id||)
	.dwattr $C$DW$388, DW_AT_high_pc(0x00)
	.dwattr $C$DW$388, DW_AT_linkage_name("PC_hw_to_id")
	.dwattr $C$DW$388, DW_AT_external
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$388, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$388, DW_AT_decl_line(0x64)
	.dwattr $C$DW$388, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$388, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 101,column 1,is_stmt,address ||PC_hw_to_id||,isa 0

	.dwfde $C$DW$CIE, ||PC_hw_to_id||
$C$DW$389	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$389, DW_AT_name("hw")
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$389, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: PC_hw_to_id                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||PC_hw_to_id||:
;* AR6   assigned to hw
$C$DW$390	.dwtag  DW_TAG_variable
	.dwattr $C$DW$390, DW_AT_name("hw")
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$390, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 102,column 15,is_stmt,isa 0
        CMPB      AL,#7                 ; [CPU_ALU] |102| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 101,column 1,is_stmt,isa 0
        MOVZ      AR6,AL                ; [CPU_FPU] |101| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 102,column 15,is_stmt,isa 0
        B         ||$C$L137||,LOS       ; [CPU_ALU] |102| 
        ; branchcc occurs ; [] |102| 
	.dwcfi	remember_state
        MOVB      AL,#0                 ; [CPU_ALU] |102| 
$C$DW$391	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$391, DW_AT_low_pc(0x00)
	.dwattr $C$DW$391, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L137||:    
        MOV       ACC,AR6 << #2         ; [CPU_ALU] |102| 
        MOV       AH,AR6                ; [CPU_ALU] |102| 
        ANDB      AL,#0x07              ; [CPU_ALU] |102| 
        ANDB      AH,#2                 ; [CPU_ALU] |102| 
        ADD       AH,AL                 ; [CPU_ALU] |102| 
        MOV       AL,AR6                ; [CPU_FPU] |102| 
        LSR       AL,2                  ; [CPU_ALU] |102| 
        ANDB      AL,#0x01              ; [CPU_ALU] |102| 
        ADD       AL,AH                 ; [CPU_ALU] |102| 
        ADDB      AL,#1                 ; [CPU_ALU] |102| 
$C$DW$392	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$392, DW_AT_low_pc(0x00)
	.dwattr $C$DW$392, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$388, DW_AT_TI_end_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$388, DW_AT_TI_end_line(0x68)
	.dwattr $C$DW$388, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$388

	.sect	".text"
	.clink
	.global	||PC_default_config||

$C$DW$393	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$393, DW_AT_name("PC_default_config")
	.dwattr $C$DW$393, DW_AT_low_pc(||PC_default_config||)
	.dwattr $C$DW$393, DW_AT_high_pc(0x00)
	.dwattr $C$DW$393, DW_AT_linkage_name("PC_default_config")
	.dwattr $C$DW$393, DW_AT_external
	.dwattr $C$DW$393, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$393, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$393, DW_AT_decl_column(0x06)
	.dwattr $C$DW$393, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 60,column 1,is_stmt,address ||PC_default_config||,isa 0

	.dwfde $C$DW$CIE, ||PC_default_config||
$C$DW$394	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$394, DW_AT_name("cfg")
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$394, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: PC_default_config             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||PC_default_config||:
;* AR4   assigned to cfg
$C$DW$395	.dwtag  DW_TAG_variable
	.dwattr $C$DW$395, DW_AT_name("cfg")
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$395, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 65,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14822            ; [CPU_FPU] |65| 
        MOVB      XAR0,#8               ; [CPU_ALU] |65| 
        MOVXI     R0H,#45005            ; [CPU_FPU] |65| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |65| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 66,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |66| 
        MOVIZ     R0H,#15523            ; [CPU_FPU] |66| 
        MOVXI     R0H,#55050            ; [CPU_FPU] |66| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |66| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 70,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |70| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |70| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 61,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14119            ; [CPU_FPU] |61| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 71,column 5,is_stmt,isa 0
        MOVB      XAR0,#15              ; [CPU_ALU] |71| 
        MOVB      *+XAR4[AR0],#1,UNC    ; [CPU_ALU] |71| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 61,column 5,is_stmt,isa 0
        MOVXI     R0H,#50604            ; [CPU_FPU] |61| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |61| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 62,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14247            ; [CPU_FPU] |62| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 67,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |67| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 62,column 5,is_stmt,isa 0
        MOVXI     R0H,#50604            ; [CPU_FPU] |62| 
        MOV32     *+XAR4[2],R0H         ; [CPU_FPU] |62| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 63,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15172            ; [CPU_FPU] |63| 
        MOVXI     R0H,#39846            ; [CPU_FPU] |63| 
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |63| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 64,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15948            ; [CPU_FPU] |64| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |64| 
        MOV32     *+XAR4[6],R0H         ; [CPU_FPU] |64| 
	.dwpsn	file "../vienna_pcmfpc_zcdc.c",line 67,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15922            ; [CPU_FPU] |67| 
        MOVXI     R0H,#47299            ; [CPU_FPU] |67| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |67| 
$C$DW$396	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$396, DW_AT_low_pc(0x00)
	.dwattr $C$DW$396, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$393, DW_AT_TI_end_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$393, DW_AT_TI_end_line(0x48)
	.dwattr $C$DW$393, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$393

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||memset||
	.global	||__c28xabi_cmpull||
;**************************************************************
;* SECTION GROUPS                                             *
;**************************************************************
	.group    "__fpclassify", 1
	.gmember  ".text:__fpclassify"
	.endgroup
	.group    "__fpclassifyf", 1
	.gmember  ".text:__fpclassifyf"
	.endgroup
	.group    "__fpclassifyl", 1
	.gmember  ".text:__fpclassifyl"
	.endgroup
	.group    "__isfinite", 1
	.gmember  ".text:__isfinite"
	.endgroup
	.group    "__isfinitef", 1
	.gmember  ".text:__isfinitef"
	.endgroup
	.group    "__isfinitel", 1
	.gmember  ".text:__isfinitel"
	.endgroup
	.group    "__isinf", 1
	.gmember  ".text:__isinf"
	.endgroup
	.group    "__isinff", 1
	.gmember  ".text:__isinff"
	.endgroup
	.group    "__isinfl", 1
	.gmember  ".text:__isinfl"
	.endgroup
	.group    "__isnan", 1
	.gmember  ".text:__isnan"
	.endgroup
	.group    "__isnanf", 1
	.gmember  ".text:__isnanf"
	.endgroup
	.group    "__isnanl", 1
	.gmember  ".text:__isnanl"
	.endgroup
	.group    "__isnormal", 1
	.gmember  ".text:__isnormal"
	.endgroup
	.group    "__isnormalf", 1
	.gmember  ".text:__isnormalf"
	.endgroup
	.group    "__isnormall", 1
	.gmember  ".text:__isnormall"
	.endgroup
	.group    "__relaxed_atanf", 1
	.gmember  ".text:__relaxed_atanf"
	.endgroup
	.group    "__relaxed_fmaxf", 1
	.gmember  ".text:__relaxed_fmaxf"
	.endgroup
	.group    "__relaxed_fminf", 1
	.gmember  ".text:__relaxed_fminf"
	.endgroup
	.group    "__relaxed_fmodf", 1
	.gmember  ".text:__relaxed_fmodf"
	.endgroup
	.group    "__signbit", 1
	.gmember  ".text:__signbit"
	.endgroup
	.group    "__signbitf", 1
	.gmember  ".text:__signbitf"
	.endgroup
	.group    "__signbitl", 1
	.gmember  ".text:__signbitl"
	.endgroup


;***************************************************************
;* BUILD ATTRIBUTES                                            *
;***************************************************************
	.battr "c28xabi", Tag_File, 1, Tag_float_args(1)
	.battr "c28xabi", Tag_File, 1, Tag_double_args(1)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 26
	.dwcfi	cfa_register, 20
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 28
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 59
	.dwcfi	same_value, 63
	.dwcfi	same_value, 67
	.dwcfi	same_value, 71
	.dwendentry
	.dwendtag $C$DW$CU


;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x10)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("first_duration_s")
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$397, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x19)
	.dwattr $C$DW$397, DW_AT_decl_column(0x0d)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("candidate_duration_s")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$398, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x19)
	.dwattr $C$DW$398, DW_AT_decl_column(0x1f)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("L_H")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$399, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$399, DW_AT_decl_column(0x0d)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("R_ohm")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$400, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$400, DW_AT_decl_column(0x12)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("C_half_F")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$401, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$401, DW_AT_decl_column(0x19)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("delta_i_A")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$402, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$402, DW_AT_decl_column(0x0d)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("zero_window_rad")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$403, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$403, DW_AT_decl_column(0x18)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$404, DW_AT_name("root_method")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$404, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$404, DW_AT_decl_column(0x0e)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$405, DW_AT_name("diagnostic_all_angles")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$405, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$405, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$22, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x18)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43
$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("PC_Config")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$43, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x20)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$406	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$43)

$C$DW$T$44	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$406)

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$407	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$45)

$C$DW$T$46	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$407)

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47
$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48
$C$DW$408	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$47)

$C$DW$T$48	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$408)

	.dwendtag $C$DW$TU$48


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x28)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$409, DW_AT_name("old_abc_A")
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$409, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$409, DW_AT_decl_column(0x0d)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$410, DW_AT_name("free_abc_A")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$410, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$410, DW_AT_decl_column(0x1b)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$411, DW_AT_name("next_abc_A")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$411, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$411, DW_AT_decl_column(0x2a)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$412, DW_AT_name("pole_abc_V")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$412, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$412, DW_AT_decl_column(0x39)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$413, DW_AT_name("idq_A")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$413, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$413, DW_AT_decl_column(0x0d)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("np_V")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$414, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$414, DW_AT_decl_column(0x17)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("mu_V")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$415, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$415, DW_AT_decl_column(0x1d)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("theta_end_rad")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$416, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$416, DW_AT_decl_column(0x23)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("root_residual_A")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$417, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$417, DW_AT_decl_column(0x0d)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("root_bracket_width_V")
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$418, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$418, DW_AT_decl_column(0x1e)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$419, DW_AT_name("blocked")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$419, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$419, DW_AT_decl_column(0x0e)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$420, DW_AT_name("root_iterations")
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$420, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$420, DW_AT_decl_column(0x17)

	.dwattr $C$DW$T$25, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("PC_Substep")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x50)
$C$DW$421	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$421, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$51


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x5c)
$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$422, DW_AT_name("idq_A")
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$422, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x32)
	.dwattr $C$DW$422, DW_AT_decl_column(0x0d)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("np_V")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$423, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x32)
	.dwattr $C$DW$423, DW_AT_decl_column(0x17)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$424, DW_AT_name("u_integral_dq_V_s")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$424, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x32)
	.dwattr $C$DW$424, DW_AT_decl_column(0x1d)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$425, DW_AT_name("blocked")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$425, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x33)
	.dwattr $C$DW$425, DW_AT_decl_column(0x0e)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$426, DW_AT_name("substep")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$426, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x34)
	.dwattr $C$DW$426, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$28, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("PC_Interval")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$34, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x2e0)
$C$DW$427	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$427, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53
$C$DW$T$53	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54
$C$DW$428	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$53)

$C$DW$T$54	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$428)

	.dwendtag $C$DW$TU$54


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x20)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$429, DW_AT_name("iabc_A")
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$429, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x23)
	.dwattr $C$DW$429, DW_AT_decl_column(0x0d)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$430, DW_AT_name("eabc_V")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$430, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x23)
	.dwattr $C$DW$430, DW_AT_decl_column(0x18)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("up_V")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$431, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x24)
	.dwattr $C$DW$431, DW_AT_decl_column(0x0d)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("low_V")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$432, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x24)
	.dwattr $C$DW$432, DW_AT_decl_column(0x13)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("id_ref_A")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$433, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x25)
	.dwattr $C$DW$433, DW_AT_decl_column(0x0d)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("iq_ref_A")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$434, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x25)
	.dwattr $C$DW$434, DW_AT_decl_column(0x17)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_name("theta_rad")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$435, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x26)
	.dwattr $C$DW$435, DW_AT_decl_column(0x0d)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_name("omega_rad_s")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$436, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x26)
	.dwattr $C$DW$436, DW_AT_decl_column(0x18)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$437, DW_AT_name("fhat_A_s")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$437, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x26)
	.dwattr $C$DW$437, DW_AT_decl_column(0x25)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$438, DW_AT_name("applied_hw_state")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$438, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x27)
	.dwattr $C$DW$438, DW_AT_decl_column(0x0e)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$439, DW_AT_name("zcdc_enable")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$439, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x27)
	.dwattr $C$DW$439, DW_AT_decl_column(0x20)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$440, DW_AT_name("terminal_enable")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$440, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0x27)
	.dwattr $C$DW$440, DW_AT_decl_column(0x2d)

	.dwattr $C$DW$T$29, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x22)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60
$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("PC_Input")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$60, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x28)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61
$C$DW$441	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$60)

$C$DW$T$61	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$441)

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62
$C$DW$T$62	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63
$C$DW$442	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$62)

$C$DW$T$63	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$442)

	.dwendtag $C$DW$TU$63


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x3e6)
$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$443, DW_AT_name("status")
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$443, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0x38)
	.dwattr $C$DW$443, DW_AT_decl_column(0x0e)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$444, DW_AT_name("selected_id")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$444, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0x38)
	.dwattr $C$DW$444, DW_AT_decl_column(0x16)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$445, DW_AT_name("pc_off_id")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$445, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0x38)
	.dwattr $C$DW$445, DW_AT_decl_column(0x23)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$446, DW_AT_name("hw_state")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$446, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0x38)
	.dwattr $C$DW$446, DW_AT_decl_column(0x2e)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$447, DW_AT_name("valid")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$447, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0x39)
	.dwattr $C$DW$447, DW_AT_decl_column(0x0e)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$448, DW_AT_name("requested")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$448, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x39)
	.dwattr $C$DW$448, DW_AT_decl_column(0x15)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$449, DW_AT_name("active")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$449, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x39)
	.dwattr $C$DW$449, DW_AT_decl_column(0x20)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$450, DW_AT_name("current_count")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$450, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0x39)
	.dwattr $C$DW$450, DW_AT_decl_column(0x28)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$451, DW_AT_name("intersection_count")
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$451, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$451, DW_AT_decl_column(0x0e)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$452, DW_AT_name("midpoint_prefix")
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$452, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$452, DW_AT_decl_column(0x22)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$453, DW_AT_name("intersection_mask")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$453, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$453, DW_AT_decl_column(0x33)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$454, DW_AT_name("order_i")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$454, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$454, DW_AT_decl_column(0x0e)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$455, DW_AT_name("order_u")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$455, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$455, DW_AT_decl_column(0x1a)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$456, DW_AT_name("current_mask")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$456, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$456, DW_AT_decl_column(0x0e)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$457, DW_AT_name("switch_count")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$457, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$457, DW_AT_decl_column(0x1c)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$458, DW_AT_name("blocked_candidate")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$458, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$458, DW_AT_decl_column(0x2d)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$459, DW_AT_name("gi")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$459, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$459, DW_AT_decl_column(0x0d)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$460, DW_AT_name("gu")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$460, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$460, DW_AT_decl_column(0x14)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$461, DW_AT_name("gz")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$461, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$461, DW_AT_decl_column(0x1b)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$462, DW_AT_name("idq2_A")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$462, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$462, DW_AT_decl_column(0x22)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$463, DW_AT_name("np2_V")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$463, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$463, DW_AT_decl_column(0x30)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$464, DW_AT_name("idq1_A")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$464, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$464, DW_AT_decl_column(0x0d)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("np1_V")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$465, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$465, DW_AT_decl_column(0x18)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("budget_limit_A")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x92]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$466, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$466, DW_AT_decl_column(0x1f)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("voltage_margin_V")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$467, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$467, DW_AT_decl_column(0x2f)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$468, DW_AT_name("zcdc_diag")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$468, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$468, DW_AT_decl_column(0x0d)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$469, DW_AT_name("first_interval")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0xaa]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$469, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x40)
	.dwattr $C$DW$469, DW_AT_decl_column(0x11)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$470, DW_AT_name("candidate_interval")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x106]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$470, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x40)
	.dwattr $C$DW$470, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$36, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65
$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("PC_Output")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$65, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66
$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67
$C$DW$471	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$66)

$C$DW$T$67	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$471)

	.dwendtag $C$DW$TU$67


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x02)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$472, DW_AT_name("f")
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$472, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$472, DW_AT_decl_line(0x36)
	.dwattr $C$DW$472, DW_AT_decl_column(0x13)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$473, DW_AT_name("u")
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$473, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$473, DW_AT_decl_line(0x36)
	.dwattr $C$DW$473, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$39, DW_AT_decl_file("../vienna_pcmfpc_zcdc.c")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x0b)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$2	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$2
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

	.dwendtag $C$DW$TU$2


$C$DW$TU$3	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$3
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$3


$C$DW$TU$4	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$4
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$4


$C$DW$TU$5	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$5
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$5


$C$DW$TU$6	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$6
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$6


$C$DW$TU$7	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$7
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$7


$C$DW$TU$8	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$8
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$8


$C$DW$TU$9	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$9
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$9


$C$DW$TU$10	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$10
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$10


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x1b)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$21


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x08)
$C$DW$474	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$474, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81
$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$81


$C$DW$TU$106	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$106
$C$DW$475	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$81)

$C$DW$T$106	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$475)

	.dwendtag $C$DW$TU$106


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79
$C$DW$476	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$21)

$C$DW$T$79	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$476)

	.dwendtag $C$DW$TU$79


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80
$C$DW$T$80	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$80, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$80


$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114
$C$DW$477	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$80)

$C$DW$T$114	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$477)

	.dwendtag $C$DW$TU$114


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37
$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$37, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$38


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70
$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("size_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$70, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/string.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x19)

	.dwendtag $C$DW$TU$70


$C$DW$TU$14	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$14
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$14


$C$DW$TU$15	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$15
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$15


$C$DW$TU$16	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$16
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$16


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("PC_Real")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x0f)

	.dwendtag $C$DW$TU$19


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74
$C$DW$478	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)

$C$DW$T$74	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$478)

	.dwendtag $C$DW$TU$74


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75
$C$DW$T$75	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$75


$C$DW$TU$115	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$115
$C$DW$479	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$75)

$C$DW$T$115	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$479)

	.dwendtag $C$DW$TU$115


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x06)
$C$DW$480	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$480, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x04)
$C$DW$481	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$481, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x20)
$C$DW$482	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$482, DW_AT_upper_bound(0x07)

$C$DW$483	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$483, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x10)
$C$DW$484	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$484, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x14)
$C$DW$485	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$485, DW_AT_upper_bound(0x09)

	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76
$C$DW$T$76	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$76, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$76


$C$DW$TU$116	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$116
$C$DW$486	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$76)

$C$DW$T$116	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$486)

	.dwendtag $C$DW$TU$116


$C$DW$TU$127	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$127
$C$DW$487	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$16)

$C$DW$T$127	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$487)

	.dwendtag $C$DW$TU$127


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$134	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$134
$C$DW$T$134	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$134, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$134


$C$DW$TU$135	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$135
$C$DW$488	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$134)

$C$DW$T$135	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$488)

	.dwendtag $C$DW$TU$135


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$136	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$136
$C$DW$T$136	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$136, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$136


$C$DW$TU$137	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$137
$C$DW$489	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$136)

$C$DW$T$137	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$489)

	.dwendtag $C$DW$TU$137

