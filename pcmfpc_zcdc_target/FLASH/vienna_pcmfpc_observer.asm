;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                             PC v25.11.1.LTS *
;* Date/Time created: Mon Oct 26 09:58:50 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v25.11.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\FLASH")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("PC_fast_predict_interval")
	.dwattr $C$DW$1, DW_AT_linkage_name("PC_fast_predict_interval")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\vienna_pcmfpc_fast.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0a)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$42)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$96)

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$19)

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$19)

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$21)

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$19)

$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$19)

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$96)

$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$19)

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$47)

$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$21)

	.dwendtag $C$DW$1


$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("PC_predict_interval")
	.dwattr $C$DW$13, DW_AT_linkage_name("PC_predict_interval")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$13, DW_AT_decl_column(0x0a)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$42)

$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$96)

$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$19)

$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$19)

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$21)

$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)

$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$19)

$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$96)

$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)

$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$47)

	.dwendtag $C$DW$13


$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("expf")
	.dwattr $C$DW$24, DW_AT_linkage_name("expf")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x188)
	.dwattr $C$DW$24, DW_AT_decl_column(0x1a)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$16)

	.dwendtag $C$DW$24

;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\opt2000.exe C:\\Users\\YAN\\AppData\\Local\\Temp\\{0794EAE3-D100-44E1-8007-79A1C6C4B3E7} C:\\Users\\YAN\\AppData\\Local\\Temp\\{C2454C84-E59A-4987-80C0-7A98A643AB6C} --advice:performance=stdout 
;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\acia2000.exe -@C:\\Users\\YAN\\AppData\\Local\\Temp\\{F9B84589-7315-4538-9EB6-DD4E8CAFE255} 
	.sect	".text:__signbitl"
	.clink
	.global	||__signbitl||

$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("__signbitl")
	.dwattr $C$DW$26, DW_AT_low_pc(||__signbitl||)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_linkage_name("__signbitl")
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$26, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$26, DW_AT_decl_column(0x18)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 349,column 1,is_stmt,address ||__signbitl||,isa 0

	.dwfde $C$DW$CIE, ||__signbitl||
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_name("e")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg12]


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
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("e")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg12]

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
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |349| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |349| 
        MOVB      AH,#0                 ; [CPU_ALU] |349| 
        CMPB      AL,#0                 ; [CPU_ALU] |349| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |349| 
        MOV       AL,AH                 ; [CPU_ALU] |349| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$26, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".text:__signbitf"
	.clink
	.global	||__signbitf||

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("__signbitf")
	.dwattr $C$DW$31, DW_AT_low_pc(||__signbitf||)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_linkage_name("__signbitf")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$31, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$31, DW_AT_decl_column(0x18)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 347,column 1,is_stmt,address ||__signbitf||,isa 0

	.dwfde $C$DW$CIE, ||__signbitf||
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("f")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("f")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x15b)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text:__signbit"
	.clink
	.global	||__signbit||

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("__signbit")
	.dwattr $C$DW$35, DW_AT_low_pc(||__signbit||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("__signbit")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$35, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x158)
	.dwattr $C$DW$35, DW_AT_decl_column(0x18)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 345,column 1,is_stmt,address ||__signbit||,isa 0

	.dwfde $C$DW$CIE, ||__signbit||
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("d")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg12]


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
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("d")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg12]

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
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$38, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |345| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |345| 
        MOVB      AH,#0                 ; [CPU_ALU] |345| 
        CMPB      AL,#0                 ; [CPU_ALU] |345| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |345| 
        MOV       AL,AH                 ; [CPU_ALU] |345| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x159)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:__relaxed_sqrtf"
	.clink
	.global	||__relaxed_sqrtf||

$C$DW$40	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$40, DW_AT_name("__relaxed_sqrtf")
	.dwattr $C$DW$40, DW_AT_low_pc(||__relaxed_sqrtf||)
	.dwattr $C$DW$40, DW_AT_high_pc(0x00)
	.dwattr $C$DW$40, DW_AT_linkage_name("__relaxed_sqrtf")
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$40, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0x108)
	.dwattr $C$DW$40, DW_AT_decl_column(0x10)
	.dwattr $C$DW$40, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 265,column 1,is_stmt,address ||__relaxed_sqrtf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sqrtf||
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_name("x")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __relaxed_sqrtf               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_sqrtf||:
;* R0    assigned to x
$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("x")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        SQRTF32   R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$40, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$40, DW_AT_TI_end_line(0x10b)
	.dwattr $C$DW$40, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$40

	.sect	".text:__relaxed_fmodf"
	.clink
	.global	||__relaxed_fmodf||

$C$DW$44	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$44, DW_AT_name("__relaxed_fmodf")
	.dwattr $C$DW$44, DW_AT_low_pc(||__relaxed_fmodf||)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_linkage_name("__relaxed_fmodf")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$44, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x121)
	.dwattr $C$DW$44, DW_AT_decl_column(0x10)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 290,column 1,is_stmt,address ||__relaxed_fmodf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmodf||
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("y")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("x")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("y")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("x")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$44, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x124)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text:__relaxed_fminf"
	.clink
	.global	||__relaxed_fminf||

$C$DW$50	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$50, DW_AT_name("__relaxed_fminf")
	.dwattr $C$DW$50, DW_AT_low_pc(||__relaxed_fminf||)
	.dwattr $C$DW$50, DW_AT_high_pc(0x00)
	.dwattr $C$DW$50, DW_AT_linkage_name("__relaxed_fminf")
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$50, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$50, DW_AT_decl_column(0x10)
	.dwattr $C$DW$50, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 244,column 1,is_stmt,address ||__relaxed_fminf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fminf||
$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_name("x")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_name("y")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("y")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 245,column 5,is_stmt,isa 0
        MINF32    R0H,R1H               ; [CPU_FPU] |245| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$50, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$50, DW_AT_TI_end_line(0xf6)
	.dwattr $C$DW$50, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$50

	.sect	".text:__relaxed_fmaxf"
	.clink
	.global	||__relaxed_fmaxf||

$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("__relaxed_fmaxf")
	.dwattr $C$DW$55, DW_AT_low_pc(||__relaxed_fmaxf||)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_linkage_name("__relaxed_fmaxf")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$55, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0xed)
	.dwattr $C$DW$55, DW_AT_decl_column(0x10)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 238,column 1,is_stmt,address ||__relaxed_fmaxf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmaxf||
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_name("x")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("y")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("y")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 239,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |239| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$55, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0xf0)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text:__relaxed_atanf"
	.clink
	.global	||__relaxed_atanf||

$C$DW$60	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$60, DW_AT_name("__relaxed_atanf")
	.dwattr $C$DW$60, DW_AT_low_pc(||__relaxed_atanf||)
	.dwattr $C$DW$60, DW_AT_high_pc(0x00)
	.dwattr $C$DW$60, DW_AT_linkage_name("__relaxed_atanf")
	.dwattr $C$DW$60, DW_AT_external
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$60, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0x117)
	.dwattr $C$DW$60, DW_AT_decl_column(0x10)
	.dwattr $C$DW$60, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 280,column 1,is_stmt,address ||__relaxed_atanf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atanf||
$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_name("x")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("x")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$60, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$60, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$60, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$60

	.sect	".text:__relaxed_atan2f"
	.clink
	.global	||__relaxed_atan2f||

$C$DW$64	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$64, DW_AT_name("__relaxed_atan2f")
	.dwattr $C$DW$64, DW_AT_low_pc(||__relaxed_atan2f||)
	.dwattr $C$DW$64, DW_AT_high_pc(0x00)
	.dwattr $C$DW$64, DW_AT_linkage_name("__relaxed_atan2f")
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$64, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$64, DW_AT_decl_column(0x10)
	.dwattr $C$DW$64, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 285,column 1,is_stmt,address ||__relaxed_atan2f||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atan2f||
$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_name("y")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_name("x")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x2f]


;***************************************************************
;* FNAME: __relaxed_atan2f              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_atan2f||:
;* R0    assigned to y
$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("y")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("x")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 286,column 3,is_stmt,isa 0
        QUADF32   R1H,R0H,R0H,R1H       ; [CPU_FPU] |286| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ATANPUF32 R0H,R0H               ; [CPU_FPU] |286| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |286| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPY2PIF32 R0H,R0H               ; [CPU_FPU] |286| 
        NOP       ; [CPU_ALU] 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$64, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$64, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$64

	.sect	".text:__isnormall"
	.clink
	.global	||__isnormall||

$C$DW$70	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$70, DW_AT_name("__isnormall")
	.dwattr $C$DW$70, DW_AT_low_pc(||__isnormall||)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_linkage_name("__isnormall")
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$70, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0x154)
	.dwattr $C$DW$70, DW_AT_decl_column(0x18)
	.dwattr $C$DW$70, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 341,column 1,is_stmt,address ||__isnormall||,isa 0

	.dwfde $C$DW$CIE, ||__isnormall||
$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_name("e")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg12]


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
$C$DW$72	.dwtag  DW_TAG_variable
	.dwattr $C$DW$72, DW_AT_name("e")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg12]

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
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$73, DW_AT_TI_call

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
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$70, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x156)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$70

	.sect	".text:__isnormalf"
	.clink
	.global	||__isnormalf||

$C$DW$75	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$75, DW_AT_name("__isnormalf")
	.dwattr $C$DW$75, DW_AT_low_pc(||__isnormalf||)
	.dwattr $C$DW$75, DW_AT_high_pc(0x00)
	.dwattr $C$DW$75, DW_AT_linkage_name("__isnormalf")
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$75, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0x150)
	.dwattr $C$DW$75, DW_AT_decl_column(0x18)
	.dwattr $C$DW$75, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 337,column 1,is_stmt,address ||__isnormalf||,isa 0

	.dwfde $C$DW$CIE, ||__isnormalf||
$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_name("f")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("f")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$75, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$75, DW_AT_TI_end_line(0x152)
	.dwattr $C$DW$75, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$75

	.sect	".text:__isnormal"
	.clink
	.global	||__isnormal||

$C$DW$79	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$79, DW_AT_name("__isnormal")
	.dwattr $C$DW$79, DW_AT_low_pc(||__isnormal||)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_linkage_name("__isnormal")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$79, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$79, DW_AT_decl_column(0x18)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 333,column 1,is_stmt,address ||__isnormal||,isa 0

	.dwfde $C$DW$CIE, ||__isnormal||
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_name("d")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg12]


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
$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("d")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg12]

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
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$82, DW_AT_TI_call

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
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$79, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0x14e)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$79

	.sect	".text:__isnanl"
	.clink
	.global	||__isnanl||

$C$DW$84	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$84, DW_AT_name("__isnanl")
	.dwattr $C$DW$84, DW_AT_low_pc(||__isnanl||)
	.dwattr $C$DW$84, DW_AT_high_pc(0x00)
	.dwattr $C$DW$84, DW_AT_linkage_name("__isnanl")
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$84, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0x148)
	.dwattr $C$DW$84, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$84, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 329,column 1,is_stmt,address ||__isnanl||,isa 0

	.dwfde $C$DW$CIE, ||__isnanl||
$C$DW$85	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$85, DW_AT_name("e")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg12]


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
$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("e")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg12]

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
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$87, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |329| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |329| 
        CMPB      AL,#0                 ; [CPU_ALU] |329| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |329| 
||$C$L4||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |329| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$84, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$84, DW_AT_TI_end_line(0x14a)
	.dwattr $C$DW$84, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$84

	.sect	".text:__isnanf"
	.clink
	.global	||__isnanf||

$C$DW$89	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$89, DW_AT_name("__isnanf")
	.dwattr $C$DW$89, DW_AT_low_pc(||__isnanf||)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_linkage_name("__isnanf")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$89, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x145)
	.dwattr $C$DW$89, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 326,column 1,is_stmt,address ||__isnanf||,isa 0

	.dwfde $C$DW$CIE, ||__isnanf||
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("f")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("f")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$89, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0x147)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text:__isnan"
	.clink
	.global	||__isnan||

$C$DW$93	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$93, DW_AT_name("__isnan")
	.dwattr $C$DW$93, DW_AT_low_pc(||__isnan||)
	.dwattr $C$DW$93, DW_AT_high_pc(0x00)
	.dwattr $C$DW$93, DW_AT_linkage_name("__isnan")
	.dwattr $C$DW$93, DW_AT_external
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$93, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0x142)
	.dwattr $C$DW$93, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$93, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 323,column 1,is_stmt,address ||__isnan||,isa 0

	.dwfde $C$DW$CIE, ||__isnan||
$C$DW$94	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$94, DW_AT_name("d")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg12]


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
$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("d")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg12]

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
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |323| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |323| 
        CMPB      AL,#0                 ; [CPU_ALU] |323| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |323| 
||$C$L6||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |323| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$93, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$93, DW_AT_TI_end_line(0x144)
	.dwattr $C$DW$93, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$93

	.sect	".text:__isinfl"
	.clink
	.global	||__isinfl||

$C$DW$98	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$98, DW_AT_name("__isinfl")
	.dwattr $C$DW$98, DW_AT_low_pc(||__isinfl||)
	.dwattr $C$DW$98, DW_AT_high_pc(0x00)
	.dwattr $C$DW$98, DW_AT_linkage_name("__isinfl")
	.dwattr $C$DW$98, DW_AT_external
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$98, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x167)
	.dwattr $C$DW$98, DW_AT_decl_column(0x18)
	.dwattr $C$DW$98, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 360,column 1,is_stmt,address ||__isinfl||,isa 0

	.dwfde $C$DW$CIE, ||__isinfl||
$C$DW$99	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$99, DW_AT_name("e")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg12]


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
$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("e")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg12]

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
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$101, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |360| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |360| 
        CMPB      AL,#0                 ; [CPU_ALU] |360| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |360| 
||$C$L7||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |360| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$98, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$98, DW_AT_TI_end_line(0x168)
	.dwattr $C$DW$98, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$98

	.sect	".text:__isinff"
	.clink
	.global	||__isinff||

$C$DW$103	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$103, DW_AT_name("__isinff")
	.dwattr $C$DW$103, DW_AT_low_pc(||__isinff||)
	.dwattr $C$DW$103, DW_AT_high_pc(0x00)
	.dwattr $C$DW$103, DW_AT_linkage_name("__isinff")
	.dwattr $C$DW$103, DW_AT_external
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$103, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x163)
	.dwattr $C$DW$103, DW_AT_decl_column(0x18)
	.dwattr $C$DW$103, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 356,column 1,is_stmt,address ||__isinff||,isa 0

	.dwfde $C$DW$CIE, ||__isinff||
$C$DW$104	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$104, DW_AT_name("f")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("f")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$103, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$103, DW_AT_TI_end_line(0x164)
	.dwattr $C$DW$103, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$103

	.sect	".text:__isinf"
	.clink
	.global	||__isinf||

$C$DW$107	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$107, DW_AT_name("__isinf")
	.dwattr $C$DW$107, DW_AT_low_pc(||__isinf||)
	.dwattr $C$DW$107, DW_AT_high_pc(0x00)
	.dwattr $C$DW$107, DW_AT_linkage_name("__isinf")
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$107, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0x165)
	.dwattr $C$DW$107, DW_AT_decl_column(0x18)
	.dwattr $C$DW$107, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 358,column 1,is_stmt,address ||__isinf||,isa 0

	.dwfde $C$DW$CIE, ||__isinf||
$C$DW$108	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$108, DW_AT_name("d")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg12]


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
$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("d")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg12]

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
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$110, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |358| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |358| 
        CMPB      AL,#0                 ; [CPU_ALU] |358| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |358| 
||$C$L9||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |358| 
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$107, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$107, DW_AT_TI_end_line(0x166)
	.dwattr $C$DW$107, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$107

	.sect	".text:__isfinitel"
	.clink
	.global	||__isfinitel||

$C$DW$112	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$112, DW_AT_name("__isfinitel")
	.dwattr $C$DW$112, DW_AT_low_pc(||__isfinitel||)
	.dwattr $C$DW$112, DW_AT_high_pc(0x00)
	.dwattr $C$DW$112, DW_AT_linkage_name("__isfinitel")
	.dwattr $C$DW$112, DW_AT_external
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$112, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$112, DW_AT_decl_column(0x18)
	.dwattr $C$DW$112, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 320,column 1,is_stmt,address ||__isfinitel||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitel||
$C$DW$113	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$113, DW_AT_name("e")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg12]


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
$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("e")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg12]

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
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$112, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$112, DW_AT_TI_end_line(0x140)
	.dwattr $C$DW$112, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$112

	.sect	".text:__isfinitef"
	.clink
	.global	||__isfinitef||

$C$DW$116	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$116, DW_AT_name("__isfinitef")
	.dwattr $C$DW$116, DW_AT_low_pc(||__isfinitef||)
	.dwattr $C$DW$116, DW_AT_high_pc(0x00)
	.dwattr $C$DW$116, DW_AT_linkage_name("__isfinitef")
	.dwattr $C$DW$116, DW_AT_external
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$116, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$116, DW_AT_decl_column(0x18)
	.dwattr $C$DW$116, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 318,column 1,is_stmt,address ||__isfinitef||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitef||
$C$DW$117	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$117, DW_AT_name("f")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("f")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$116, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$116, DW_AT_TI_end_line(0x13e)
	.dwattr $C$DW$116, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$116

	.sect	".text:__isfinite"
	.clink
	.global	||__isfinite||

$C$DW$120	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$120, DW_AT_name("__isfinite")
	.dwattr $C$DW$120, DW_AT_low_pc(||__isfinite||)
	.dwattr $C$DW$120, DW_AT_high_pc(0x00)
	.dwattr $C$DW$120, DW_AT_linkage_name("__isfinite")
	.dwattr $C$DW$120, DW_AT_external
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$120, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$120, DW_AT_decl_column(0x18)
	.dwattr $C$DW$120, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 316,column 1,is_stmt,address ||__isfinite||,isa 0

	.dwfde $C$DW$CIE, ||__isfinite||
$C$DW$121	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$121, DW_AT_name("d")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg12]


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
$C$DW$122	.dwtag  DW_TAG_variable
	.dwattr $C$DW$122, DW_AT_name("d")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg12]

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
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$120, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$120, DW_AT_TI_end_line(0x13c)
	.dwattr $C$DW$120, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$120

	.sect	".text:__fpclassifyl"
	.clink
	.global	||__fpclassifyl||

$C$DW$124	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$124, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$124, DW_AT_low_pc(||__fpclassifyl||)
	.dwattr $C$DW$124, DW_AT_high_pc(0x00)
	.dwattr $C$DW$124, DW_AT_linkage_name("__fpclassifyl")
	.dwattr $C$DW$124, DW_AT_external
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$124, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$124, DW_AT_decl_column(0x18)
	.dwattr $C$DW$124, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 412,column 1,is_stmt,address ||__fpclassifyl||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyl||
$C$DW$125	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$125, DW_AT_name("e")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassifyl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyl||:
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("e")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to e
$C$DW$127	.dwtag  DW_TAG_variable
	.dwattr $C$DW$127, DW_AT_name("e")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg12]

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
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$128, DW_AT_TI_call

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
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$129, DW_AT_TI_call

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
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$130, DW_AT_TI_call

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
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$124, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$124, DW_AT_TI_end_line(0x1aa)
	.dwattr $C$DW$124, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$124

	.sect	".text:__fpclassifyf"
	.clink
	.global	||__fpclassifyf||

$C$DW$132	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$132, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$132, DW_AT_low_pc(||__fpclassifyf||)
	.dwattr $C$DW$132, DW_AT_high_pc(0x00)
	.dwattr $C$DW$132, DW_AT_linkage_name("__fpclassifyf")
	.dwattr $C$DW$132, DW_AT_external
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$132, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0x179)
	.dwattr $C$DW$132, DW_AT_decl_column(0x18)
	.dwattr $C$DW$132, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 378,column 1,is_stmt,address ||__fpclassifyf||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyf||
$C$DW$133	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$133, DW_AT_name("f")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("f")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L15||:    
	.dwcfi	remember_state
        MOVB      AL,#1                 ; [CPU_ALU] |383| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_return

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
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_return

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
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L18||:    
        MOVB      AL,#0                 ; [CPU_ALU] |383| 
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$132, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$132, DW_AT_TI_end_line(0x188)
	.dwattr $C$DW$132, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$132

	.sect	".text:__fpclassify"
	.clink
	.global	||__fpclassify||

$C$DW$140	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$140, DW_AT_name("__fpclassify")
	.dwattr $C$DW$140, DW_AT_low_pc(||__fpclassify||)
	.dwattr $C$DW$140, DW_AT_high_pc(0x00)
	.dwattr $C$DW$140, DW_AT_linkage_name("__fpclassify")
	.dwattr $C$DW$140, DW_AT_external
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$140, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$140, DW_AT_decl_column(0x18)
	.dwattr $C$DW$140, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 395,column 1,is_stmt,address ||__fpclassify||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassify||
$C$DW$141	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$141, DW_AT_name("d")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassify                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassify||:
$C$DW$142	.dwtag  DW_TAG_variable
	.dwattr $C$DW$142, DW_AT_name("d")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to d
$C$DW$143	.dwtag  DW_TAG_variable
	.dwattr $C$DW$143, DW_AT_name("d")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg12]

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
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$144, DW_AT_TI_call

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
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$145, DW_AT_TI_call

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
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$146, DW_AT_TI_call

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
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$140, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$140, DW_AT_TI_end_line(0x199)
	.dwattr $C$DW$140, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$140

	.sect	".text"
	.clink

$C$DW$148	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$148, DW_AT_name("vo_finite")
	.dwattr $C$DW$148, DW_AT_low_pc(||vo_finite||)
	.dwattr $C$DW$148, DW_AT_high_pc(0x00)
	.dwattr $C$DW$148, DW_AT_linkage_name("vo_finite")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$148, DW_AT_decl_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$148, DW_AT_decl_line(0x10)
	.dwattr $C$DW$148, DW_AT_decl_column(0x11)
	.dwattr $C$DW$148, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 17,column 1,is_stmt,address ||vo_finite||,isa 0

	.dwfde $C$DW$CIE, ||vo_finite||
$C$DW$149	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$149, DW_AT_name("x")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: vo_finite                     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||vo_finite||:
$C$DW$150	.dwtag  DW_TAG_variable
	.dwattr $C$DW$150, DW_AT_name("v")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_breg20 -2]

;* R0    assigned to x
$C$DW$151	.dwtag  DW_TAG_variable
	.dwattr $C$DW$151, DW_AT_name("x")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     *-SP[2],R0H           ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 20,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |20| 
        MOV       PH,#32640             ; [CPU_ALU] |20| 
        MOVB      XAR6,#0               ; [CPU_ALU] |20| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |20| 
        ANDB      AL,#0                 ; [CPU_ALU] |20| 
        AND       AH,#32640             ; [CPU_ALU] |20| 
        CMPL      ACC,P                 ; [CPU_ALU] |20| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |20| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |20| 
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$148, DW_AT_TI_end_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$148, DW_AT_TI_end_line(0x15)
	.dwattr $C$DW$148, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$148

	.sect	"pcmfpc_code"
	.clink
	.global	||VO_reset||

$C$DW$153	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$153, DW_AT_name("VO_reset")
	.dwattr $C$DW$153, DW_AT_low_pc(||VO_reset||)
	.dwattr $C$DW$153, DW_AT_high_pc(0x00)
	.dwattr $C$DW$153, DW_AT_linkage_name("VO_reset")
	.dwattr $C$DW$153, DW_AT_external
	.dwattr $C$DW$153, DW_AT_decl_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$153, DW_AT_decl_line(0x20)
	.dwattr $C$DW$153, DW_AT_decl_column(0x06)
	.dwattr $C$DW$153, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 33,column 1,is_stmt,address ||VO_reset||,isa 0

	.dwfde $C$DW$CIE, ||VO_reset||
$C$DW$154	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$154, DW_AT_name("s")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: VO_reset                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VO_reset||:
;* AR4   assigned to s
$C$DW$155	.dwtag  DW_TAG_variable
	.dwattr $C$DW$155, DW_AT_name("s")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |33| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 35,column 5,is_stmt,isa 0
        B         ||$C$L24||,EQ         ; [CPU_ALU] |35| 
        ; branchcc occurs ; [] |35| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 39,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |39| 
        MOVB      ACC,#0                ; [CPU_ALU] |39| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 37,column 9,is_stmt,isa 0
        ZERO      R2H                   ; [CPU_FPU] |37| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 37,column 28,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |37| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 37,column 49,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |37| 
        ZERO      R0H                   ; [CPU_FPU] |37| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 39,column 5,is_stmt,isa 0
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |39| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 37,column 49,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |37| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 37,column 9,is_stmt,isa 0
        MOV32     *+XAR4[0],R2H         ; [CPU_FPU] |37| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 37,column 28,is_stmt,isa 0
        MOV32     *+XAR4[4],R1H         ; [CPU_FPU] |37| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 37,column 9,is_stmt,isa 0
        MOV32     *+XAR4[2],R3H         ; [CPU_FPU] |37| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 37,column 28,is_stmt,isa 0
        MOV32     *+XAR4[6],R2H         ; [CPU_FPU] |37| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 37,column 49,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |37| 
        MOVB      XAR0,#10              ; [CPU_ALU] |37| 
        MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |37| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 39,column 25,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |39| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |39| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 39,column 43,is_stmt,isa 0
        MOVB      XAR0,#15              ; [CPU_ALU] |39| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |39| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 40,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |40| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |40| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 40,column 30,is_stmt,isa 0
        MOVB      XAR0,#17              ; [CPU_ALU] |40| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |40| 
||$C$L24||:    
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$153, DW_AT_TI_end_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$153, DW_AT_TI_end_line(0x29)
	.dwattr $C$DW$153, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$153

	.sect	"pcmfpc_code"
	.clink

$C$DW$157	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$157, DW_AT_name("vo_fail")
	.dwattr $C$DW$157, DW_AT_low_pc(||vo_fail||)
	.dwattr $C$DW$157, DW_AT_high_pc(0x00)
	.dwattr $C$DW$157, DW_AT_linkage_name("vo_fail")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$157, DW_AT_decl_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$157, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$157, DW_AT_decl_column(0x11)
	.dwattr $C$DW$157, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 43,column 1,is_stmt,address ||vo_fail||,isa 0

	.dwfde $C$DW$CIE, ||vo_fail||
$C$DW$158	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$158, DW_AT_name("s")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg12]

$C$DW$159	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$159, DW_AT_name("fault")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: vo_fail                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||vo_fail||:
;* AR4   assigned to s
$C$DW$160	.dwtag  DW_TAG_variable
	.dwattr $C$DW$160, DW_AT_name("s")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg12]

;* AR6   assigned to fault
$C$DW$161	.dwtag  DW_TAG_variable
	.dwattr $C$DW$161, DW_AT_name("fault")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AL                ; [CPU_ALU] |43| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 44,column 5,is_stmt,isa 0
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("VO_reset")
	.dwattr $C$DW$162, DW_AT_TI_call

        LCR       #||VO_reset||         ; [CPU_ALU] |44| 
        ; call occurs [#||VO_reset||] ; [] |44| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 44,column 17,is_stmt,isa 0
        MOVB      XAR0,#17              ; [CPU_ALU] |44| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 44,column 33,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |44| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 44,column 17,is_stmt,isa 0
        MOV       *+XAR4[AR0],AR6       ; [CPU_ALU] |44| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$157, DW_AT_TI_end_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$157, DW_AT_TI_end_line(0x2d)
	.dwattr $C$DW$157, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$157

	.sect	"pcmfpc_code"
	.clink
	.global	||VO_update_delta||

$C$DW$164	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$164, DW_AT_name("VO_update_delta")
	.dwattr $C$DW$164, DW_AT_low_pc(||VO_update_delta||)
	.dwattr $C$DW$164, DW_AT_high_pc(0x00)
	.dwattr $C$DW$164, DW_AT_linkage_name("VO_update_delta")
	.dwattr $C$DW$164, DW_AT_external
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$164, DW_AT_decl_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$164, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$164, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$164, DW_AT_TI_max_frame_size(-58)
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 49,column 1,is_stmt,address ||VO_update_delta||,isa 0

	.dwfde $C$DW$CIE, ||VO_update_delta||
$C$DW$165	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$165, DW_AT_name("c")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg12]

$C$DW$166	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$166, DW_AT_name("s")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg14]

$C$DW$167	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$167, DW_AT_name("current")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_breg20 -60]

$C$DW$168	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$168, DW_AT_name("grid")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_breg20 -62]

$C$DW$169	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$169, DW_AT_name("delta")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_breg20 -64]

$C$DW$170	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$170, DW_AT_name("sequence")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg0]

$C$DW$171	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$171, DW_AT_name("source")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_breg20 -65]


;***************************************************************
;* FNAME: VO_update_delta               FR SIZE:  56           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 40 Auto, 14 SOE     *
;***************************************************************

||VO_update_delta||:
$C$DW$172	.dwtag  DW_TAG_variable
	.dwattr $C$DW$172, DW_AT_name("nextI")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_breg20 -6]

$C$DW$173	.dwtag  DW_TAG_variable
	.dwattr $C$DW$173, DW_AT_name("nextF")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_breg20 -10]

$C$DW$174	.dwtag  DW_TAG_variable
	.dwattr $C$DW$174, DW_AT_name("innovation")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_breg20 -14]

$C$DW$175	.dwtag  DW_TAG_variable
	.dwattr $C$DW$175, DW_AT_name("v")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_breg20 -16]

$C$DW$176	.dwtag  DW_TAG_variable
	.dwattr $C$DW$176, DW_AT_name("v")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_breg20 -18]

$C$DW$177	.dwtag  DW_TAG_variable
	.dwattr $C$DW$177, DW_AT_name("v")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_breg20 -20]

$C$DW$178	.dwtag  DW_TAG_variable
	.dwattr $C$DW$178, DW_AT_name("v")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_breg20 -22]

$C$DW$179	.dwtag  DW_TAG_variable
	.dwattr $C$DW$179, DW_AT_name("v")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_breg20 -24]

$C$DW$180	.dwtag  DW_TAG_variable
	.dwattr $C$DW$180, DW_AT_name("v")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_breg20 -26]

$C$DW$181	.dwtag  DW_TAG_variable
	.dwattr $C$DW$181, DW_AT_name("v")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_breg20 -28]

$C$DW$182	.dwtag  DW_TAG_variable
	.dwattr $C$DW$182, DW_AT_name("v")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_breg20 -30]

$C$DW$183	.dwtag  DW_TAG_variable
	.dwattr $C$DW$183, DW_AT_name("v")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_breg20 -32]

$C$DW$184	.dwtag  DW_TAG_variable
	.dwattr $C$DW$184, DW_AT_name("v")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_breg20 -34]

;* R0    assigned to $O$C116
;* R1    assigned to $O$C117
;* R2    assigned to $O$C118
;* R1    assigned to $O$C119
;* R0    assigned to $O$C120
;* R2    assigned to $O$C121
;* AR4   assigned to $O$C122
;* AR7   assigned to $O$U65
;* AR0   assigned to $O$U65
;* AR5   assigned to $O$U64
;* AR1   assigned to $O$U64
;* AR1   assigned to $O$U129
;* AR0   assigned to $O$U129
;* AR3   assigned to $O$U129
;* AR5   assigned to $O$U106
;* AR5   assigned to $O$U106
;* AR0   assigned to $O$U98
;* R0    assigned to $O$U99
;* AR1   assigned to $O$U123
;* AR7   assigned to $O$U117
;* AR7   assigned to $O$U73
;* R7    assigned to $O$v4
;* R6    assigned to $O$v3
;* R3    assigned to $O$v2
;* R5    assigned to $O$v1
;* AR4   assigned to c
$C$DW$185	.dwtag  DW_TAG_variable
	.dwattr $C$DW$185, DW_AT_name("c")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg12]

$C$DW$186	.dwtag  DW_TAG_variable
	.dwattr $C$DW$186, DW_AT_name("s")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_breg20 -38]

$C$DW$187	.dwtag  DW_TAG_variable
	.dwattr $C$DW$187, DW_AT_name("current")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_breg20 -40]

;* AR3   assigned to grid
$C$DW$188	.dwtag  DW_TAG_variable
	.dwattr $C$DW$188, DW_AT_name("grid")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg10]

$C$DW$189	.dwtag  DW_TAG_variable
	.dwattr $C$DW$189, DW_AT_name("delta")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_breg20 -42]

;* XT    assigned to sequence
$C$DW$190	.dwtag  DW_TAG_variable
	.dwattr $C$DW$190, DW_AT_name("sequence")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg21]

$C$DW$191	.dwtag  DW_TAG_variable
	.dwattr $C$DW$191, DW_AT_name("source")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_breg20 -35]

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
        SUBB      FP,#23                ; [CPU_ARAU] 
        ADDB      SP,#42                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -58
        MOVL      XAR6,*+FP[1]          ; [CPU_ALU] |49| 
        MOVL      *-SP[42],XAR6         ; [CPU_ALU] |49| 
        MOVZ      AR6,*+FP[0]           ; [CPU_ALU] |49| 
        MOVL      XT,ACC                ; [CPU_ALU] |49| 
        MOV       *-SP[35],AR6          ; [CPU_ALU] |49| 
        MOVL      XAR6,*+FP[5]          ; [CPU_ALU] |49| 
        MOVL      XAR3,*+FP[3]          ; [CPU_ALU] |49| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |49| 
        MOVL      *-SP[38],XAR5         ; [CPU_ALU] |49| 
        MOVL      *-SP[40],XAR6         ; [CPU_ALU] |49| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 52,column 5,is_stmt,isa 0
        B         ||$C$L25||,EQ         ; [CPU_ALU] |52| 
        ; branchcc occurs ; [] |52| 
        MOVL      ACC,*-SP[38]          ; [CPU_ALU] 
        B         ||$C$L25||,EQ         ; [CPU_ALU] |52| 
        ; branchcc occurs ; [] |52| 
        MOVL      ACC,*-SP[40]          ; [CPU_ALU] 
        B         ||$C$L25||,EQ         ; [CPU_ALU] |52| 
        ; branchcc occurs ; [] |52| 
        MOVL      ACC,XAR3              ; [CPU_ALU] 
        B         ||$C$L26||,NEQ        ; [CPU_ALU] |52| 
        ; branchcc occurs ; [] |52| 
||$C$L25||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 52,column 58,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |52| 
        B         ||$C$L43||,UNC        ; [CPU_ALU] |52| 
        ; branch occurs ; [] |52| 
||$C$L26||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 17,column 1,is_stmt,isa 0
        MOV32     R5H,*+XAR4[0]         ; [CPU_FPU] |17| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 53,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |53| 
        MOV       PH,#32640             ; [CPU_ALU] |53| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     *-SP[16],R5H          ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 53,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |53| 
        ANDB      AL,#0                 ; [CPU_ALU] |53| 
        AND       AH,#32640             ; [CPU_ALU] |53| 
        CMPL      ACC,P                 ; [CPU_ALU] |53| 
        B         ||$C$L38||,EQ         ; [CPU_ALU] |53| 
        ; branchcc occurs ; [] |53| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 17,column 1,is_stmt,isa 0
        MOV32     R3H,*+XAR4[2]         ; [CPU_FPU] |17| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     *-SP[18],R3H          ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 53,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[18]          ; [CPU_ALU] |53| 
        ANDB      AL,#0                 ; [CPU_ALU] |53| 
        AND       AH,#32640             ; [CPU_ALU] |53| 
        CMPL      ACC,P                 ; [CPU_ALU] |53| 
        B         ||$C$L38||,EQ         ; [CPU_ALU] |53| 
        ; branchcc occurs ; [] |53| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 17,column 1,is_stmt,isa 0
        MOV32     R6H,*+XAR4[6]         ; [CPU_FPU] |17| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     *-SP[20],R6H          ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 53,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[20]          ; [CPU_ALU] |53| 
        ANDB      AL,#0                 ; [CPU_ALU] |53| 
        AND       AH,#32640             ; [CPU_ALU] |53| 
        CMPL      ACC,P                 ; [CPU_ALU] |53| 
        B         ||$C$L38||,EQ         ; [CPU_ALU] |53| 
        ; branchcc occurs ; [] |53| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 17,column 1,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |17| 
        MOV32     R7H,*+XAR4[AR0]       ; [CPU_FPU] |17| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     *-SP[22],R7H          ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 53,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[22]          ; [CPU_ALU] |53| 
        ANDB      AL,#0                 ; [CPU_ALU] |53| 
        AND       AH,#32640             ; [CPU_ALU] |53| 
        CMPL      ACC,P                 ; [CPU_ALU] |53| 
        B         ||$C$L38||,EQ         ; [CPU_ALU] |53| 
        ; branchcc occurs ; [] |53| 
        CMPF32    R5H,#0                ; [CPU_FPU] |53| 
        MOVST0    ZF, NF                ; [CPU_FPU] |53| 
        B         ||$C$L38||,LEQ        ; [CPU_ALU] |53| 
        ; branchcc occurs ; [] |53| 
        CMPF32    R3H,#0                ; [CPU_FPU] |53| 
        MOVST0    ZF, NF                ; [CPU_FPU] |53| 
        B         ||$C$L38||,LEQ        ; [CPU_ALU] |53| 
        ; branchcc occurs ; [] |53| 
        MOV       AL,*-SP[35]           ; [CPU_ALU] 
        CMPB      AL,#1                 ; [CPU_ALU] |53| 
        B         ||$C$L27||,EQ         ; [CPU_ALU] |53| 
        ; branchcc occurs ; [] |53| 
        CMPB      AL,#2                 ; [CPU_ALU] |53| 
        B         ||$C$L38||,NEQ        ; [CPU_ALU] |53| 
        ; branchcc occurs ; [] |53| 
||$C$L27||:    
        MOVL      XAR0,*-SP[40]         ; [CPU_ALU] 
        MOVB      XAR1,#0               ; [CPU_ALU] 
        MOVB      XAR6,#1               ; [CPU_ALU] 
||$C$L28||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOVL      XAR7,*+XAR0[0]        ; [CPU_ALU] |19| 
        MOVL      *-SP[24],XAR7         ; [CPU_ALU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 58,column 23,is_stmt,isa 0
        MOVL      ACC,*-SP[24]          ; [CPU_ALU] |58| 
        ANDB      AL,#0                 ; [CPU_ALU] |58| 
        AND       AH,#32640             ; [CPU_ALU] |58| 
        CMPL      ACC,P                 ; [CPU_ALU] |58| 
        B         ||$C$L38||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
        MOVL      XAR7,XAR3             ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |19| 
        ADDL      XAR7,ACC              ; [CPU_ALU] |19| 
        MOVL      XAR7,*+XAR7[0]        ; [CPU_ALU] |19| 
        MOVL      *-SP[26],XAR7         ; [CPU_ALU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 58,column 23,is_stmt,isa 0
        MOVL      ACC,*-SP[26]          ; [CPU_ALU] |58| 
        ANDB      AL,#0                 ; [CPU_ALU] |58| 
        AND       AH,#32640             ; [CPU_ALU] |58| 
        CMPL      ACC,P                 ; [CPU_ALU] |58| 
        B         ||$C$L38||,EQ         ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 58,column 14,is_stmt,isa 0
        ADDB      XAR1,#2               ; [CPU_ALU] |58| 
        ADDB      XAR0,#2               ; [CPU_ALU] |58| 
        BANZ      ||$C$L28||,AR6--      ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 60,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |60| 
        MOV       AL,*+XAR5[AR0]        ; [CPU_ALU] |60| 
        B         ||$C$L36||,EQ         ; [CPU_ALU] |60| 
        ; branchcc occurs ; [] |60| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 74,column 5,is_stmt,isa 0
        MOVB      XAR6,#1               ; [CPU_ALU] |74| 
        MOVB      XAR0,#12              ; [CPU_ALU] |74| 
        MOVL      ACC,XT                ; [CPU_ALU] |74| 
        SUBL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |74| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |74| 
        B         ||$C$L29||,NEQ        ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
        MOVZ      AR6,*-SP[35]          ; [CPU_ALU] |74| 
        MOVB      XAR0,#16              ; [CPU_ALU] |74| 
        MOVU      ACC,*+XAR5[AR0]       ; [CPU_ALU] |74| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |74| 
        B         ||$C$L31||,EQ         ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
||$C$L29||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 75,column 9,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |75| 
||$C$L30||:    
        MOVL      XAR4,*-SP[38]         ; [CPU_ALU] 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("vo_fail")
	.dwattr $C$DW$192, DW_AT_TI_call

        LCR       #||vo_fail||          ; [CPU_ALU] |75| 
        ; call occurs [#||vo_fail||] ; [] |75| 
        B         ||$C$L43||,UNC        ; [CPU_ALU] |75| 
        ; branch occurs ; [] |75| 
||$C$L31||:    
        MOVL      ACC,*-SP[42]          ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 76,column 5,is_stmt,isa 0
        B         ||$C$L32||,NEQ        ; [CPU_ALU] |76| 
        ; branchcc occurs ; [] |76| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 76,column 20,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_ALU] |76| 
        B         ||$C$L30||,UNC        ; [CPU_ALU] |76| 
        ; branch occurs ; [] |76| 
||$C$L32||:    
        MOVL      XAR0,*-SP[42]         ; [CPU_ALU] 
        MOVB      XAR5,#0               ; [CPU_ALU] 
        MOVB      XAR6,#1               ; [CPU_ALU] 
||$C$L33||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR0[0]         ; [CPU_FPU] |19| 
        MOV32     *-SP[28],R0H          ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 78,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[28]          ; [CPU_ALU] |78| 
        ANDB      AL,#0                 ; [CPU_ALU] |78| 
        AND       AH,#32640             ; [CPU_ALU] |78| 
        CMPL      ACC,P                 ; [CPU_ALU] |78| 
        B         ||$C$L38||,EQ         ; [CPU_ALU] |78| 
        ; branchcc occurs ; [] |78| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 80,column 9,is_stmt,isa 0
        MOVZ      AR1,SP                ; [CPU_ALU] |80| 
        MOVL      P,*-SP[38]            ; [CPU_ALU] 
        MOVL      ACC,XAR5              ; [CPU_ALU] |80| 
        MOVL      XAR7,*-SP[40]         ; [CPU_ALU] |80| 
        SUBB      XAR1,#14              ; [CPU_ARAU] |80| 
        MOVZ      AR3,AR1               ; [CPU_ALU] |80| 
        ADDL      P,ACC                 ; [CPU_ALU] |80| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 81,column 9,is_stmt,isa 0
        MOVZ      AR1,SP                ; [CPU_ALU] |81| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 80,column 9,is_stmt,isa 0
        ADDL      XAR7,ACC              ; [CPU_ALU] |80| 
        MOVL      XAR4,P                ; [CPU_ALU] |80| 
        DIVF32    R0H,R0H,R3H           ; [CPU_FPU] |80| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 81,column 9,is_stmt,isa 0
        SUBB      XAR1,#6               ; [CPU_ARAU] |81| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 80,column 9,is_stmt,isa 0
        MOV32     R4H,*+XAR7[0]         ; [CPU_FPU] |80| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |80| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 82,column 9,is_stmt,isa 0
        MOVZ      AR7,SP                ; [CPU_ALU] |82| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 81,column 9,is_stmt,isa 0
        MOVZ      AR1,AR1               ; [CPU_ALU] |81| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 83,column 9,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |83| 
        MOV       PH,#32640             ; [CPU_ALU] |83| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 80,column 9,is_stmt,isa 0
        ADDL      XAR3,ACC              ; [CPU_ALU] |80| 

        MOV32     R1H,*+XAR4[4]         ; [CPU_FPU] |80| 
||      SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |80| 

        MPYF32    R2H,R5H,R1H           ; [CPU_FPU] |80| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 82,column 9,is_stmt,isa 0
        SUBB      XAR7,#10              ; [CPU_ARAU] |82| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 80,column 9,is_stmt,isa 0
        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |80| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 82,column 9,is_stmt,isa 0
        MOVZ      AR7,AR7               ; [CPU_ALU] |82| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 80,column 9,is_stmt,isa 0
        SUBF32    R0H,R4H,R2H           ; [CPU_FPU] |80| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 81,column 9,is_stmt,isa 0
        ADDL      XAR1,ACC              ; [CPU_ALU] |81| 
        MPYF32    R4H,R6H,R0H           ; [CPU_FPU] |81| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 82,column 9,is_stmt,isa 0
        ADDL      XAR7,ACC              ; [CPU_ALU] |82| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 81,column 9,is_stmt,isa 0
        ADDF32    R2H,R2H,R4H           ; [CPU_FPU] |81| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 80,column 9,is_stmt,isa 0
        MOV32     *+XAR3[0],R0H         ; [CPU_FPU] |80| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0

        MPYF32    R4H,R7H,R0H           ; [CPU_FPU] |82| 
||      MOV32     *-SP[30],R2H          ; [CPU_FPU] |19| 

	.dwpsn	file "../vienna_pcmfpc_observer.c",line 83,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[30]          ; [CPU_ALU] |83| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 81,column 9,is_stmt,isa 0

        ADDF32    R1H,R1H,R4H           ; [CPU_FPU] |82| 
||      MOV32     *+XAR1[0],R2H         ; [CPU_FPU] |81| 

	.dwpsn	file "../vienna_pcmfpc_observer.c",line 83,column 9,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |83| 
        AND       AH,#32640             ; [CPU_ALU] |83| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 82,column 9,is_stmt,isa 0
        MOV32     *+XAR7[0],R1H         ; [CPU_FPU] |82| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 83,column 9,is_stmt,isa 0
        CMPL      ACC,P                 ; [CPU_ALU] |83| 
        B         ||$C$L38||,EQ         ; [CPU_ALU] |83| 
        ; branchcc occurs ; [] |83| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     *-SP[32],R1H          ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 83,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[32]          ; [CPU_ALU] |83| 
        ANDB      AL,#0                 ; [CPU_ALU] |83| 
        AND       AH,#32640             ; [CPU_ALU] |83| 
        CMPL      ACC,P                 ; [CPU_ALU] |83| 
        B         ||$C$L38||,EQ         ; [CPU_ALU] |83| 
        ; branchcc occurs ; [] |83| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 77,column 14,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |77| 
        ADDB      XAR0,#2               ; [CPU_ALU] |77| 
        BANZ      ||$C$L33||,AR6--      ; [CPU_ALU] |77| 
        ; branchcc occurs ; [] |77| 
        MOVZ      AR6,SP                ; [CPU_ALU] 
        MOVZ      AR7,SP                ; [CPU_ALU] 
        SUBB      XAR6,#10              ; [CPU_ARAU] 
        MOVZ      AR3,AR6               ; [CPU_ALU] 
        MOVZ      AR6,SP                ; [CPU_ALU] 
        SUBB      XAR7,#14              ; [CPU_ARAU] 
        MOVL      XAR5,*-SP[38]         ; [CPU_ALU] 
        MOVZ      AR7,AR7               ; [CPU_ALU] 
        SUBB      XAR6,#6               ; [CPU_ARAU] 
        MOVZ      AR1,AR6               ; [CPU_ALU] 
        MOVB      XAR6,#1               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 85,column 14,is_stmt,isa 0
        RPTB      ||$C$L35||,AR6        ; [CPU_ALU] |85| 
        ; repeat block starts ; [] 
||$C$L34||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 86,column 32,is_stmt,isa 0
        MOVL      ACC,*XAR3++           ; [CPU_ALU] |86| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 86,column 57,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |86| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 86,column 9,is_stmt,isa 0
        MOVL      XAR4,*XAR1++          ; [CPU_ALU] |86| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 86,column 57,is_stmt,isa 0
        MOVL      P,*XAR7++             ; [CPU_ALU] |86| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 86,column 32,is_stmt,isa 0
        MOVL      *+XAR5[4],ACC         ; [CPU_ALU] |86| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 86,column 57,is_stmt,isa 0
        MOVL      *+XAR5[AR0],P         ; [CPU_ALU] |86| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 86,column 9,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR4        ; [CPU_ALU] |86| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 85,column 14,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |85| 
        NOP       ; [CPU_ALU] 
        ; repeat block ends ; [] 
||$C$L35||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 88,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[38]         ; [CPU_ALU] |88| 
        MOVB      XAR0,#12              ; [CPU_ALU] |88| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 88,column 31,is_stmt,isa 0
        MOVB      XAR1,#15              ; [CPU_ALU] |88| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 88,column 5,is_stmt,isa 0
        MOVL      *+XAR5[AR0],XT        ; [CPU_ALU] |88| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 88,column 31,is_stmt,isa 0
        MOVB      *+XAR5[AR1],#1,UNC    ; [CPU_ALU] |88| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 88,column 67,is_stmt,isa 0
        B         ||$C$L42||,UNC        ; [CPU_ALU] |88| 
        ; branch occurs ; [] |88| 
||$C$L36||:    
        MOVZ      AR0,SP                ; [CPU_ALU] 
        MOVL      XAR7,XAR3             ; [CPU_ALU] 
        MOVB      XAR6,#1               ; [CPU_ALU] 
        SUBB      XAR0,#10              ; [CPU_ARAU] 
        MOVZ      AR0,AR0               ; [CPU_ALU] 
||$C$L37||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 62,column 13,is_stmt,isa 0
        MOV32     R0H,*+XAR7[0]         ; [CPU_FPU] |62| 
        DIVF32    R0H,R0H,R3H           ; [CPU_FPU] |62| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     *-SP[34],R0H          ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 63,column 13,is_stmt,isa 0
        MOVL      ACC,*-SP[34]          ; [CPU_ALU] |63| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 62,column 13,is_stmt,isa 0
        MOV32     *+XAR0[0],R0H         ; [CPU_FPU] |62| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 63,column 13,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |63| 
        AND       AH,#32640             ; [CPU_ALU] |63| 
        CMPL      ACC,P                 ; [CPU_ALU] |63| 
        B         ||$C$L39||,NEQ        ; [CPU_ALU] |63| 
        ; branchcc occurs ; [] |63| 
||$C$L38||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 63,column 37,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |63| 
        B         ||$C$L30||,UNC        ; [CPU_ALU] |63| 
        ; branch occurs ; [] |63| 
||$C$L39||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 61,column 18,is_stmt,isa 0
        ADDB      XAR7,#2               ; [CPU_ALU] |61| 
        ADDB      XAR0,#2               ; [CPU_ALU] |61| 
        BANZ      ||$C$L37||,AR6--      ; [CPU_ALU] |61| 
        ; branchcc occurs ; [] |61| 
        MOVZ      AR0,SP                ; [CPU_ALU] 
        MOVB      XAR6,#1               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 67,column 13,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |67| 
        MOVL      XAR7,*-SP[40]         ; [CPU_ALU] 
        SUBB      XAR0,#10              ; [CPU_ARAU] 
        MOVZ      AR1,AR0               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 65,column 18,is_stmt,isa 0
        RPTB      ||$C$L41||,AR6        ; [CPU_ALU] |65| 
        ; repeat block starts ; [] 
||$C$L40||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 66,column 13,is_stmt,isa 0
        MOVL      XAR3,*XAR7++          ; [CPU_ALU] |66| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 67,column 13,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |67| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 66,column 38,is_stmt,isa 0
        MOVL      P,*XAR1++             ; [CPU_ALU] |66| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 67,column 13,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |67| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 66,column 38,is_stmt,isa 0
        MOVL      *+XAR5[4],P           ; [CPU_ALU] |66| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 66,column 13,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR3        ; [CPU_ALU] |66| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 65,column 18,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |65| 
        NOP       ; [CPU_ALU] 
        ; repeat block ends ; [] 
||$C$L41||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 69,column 9,is_stmt,isa 0
        MOVL      XAR5,*-SP[38]         ; [CPU_ALU] |69| 
        MOVB      XAR0,#12              ; [CPU_ALU] |69| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 70,column 50,is_stmt,isa 0
        MOVZ      AR6,*-SP[35]          ; [CPU_ALU] |70| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 70,column 9,is_stmt,isa 0
        MOVB      XAR1,#16              ; [CPU_ALU] |70| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 69,column 9,is_stmt,isa 0
        MOVL      *+XAR5[AR0],XT        ; [CPU_ALU] |69| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 69,column 35,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |69| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 70,column 9,is_stmt,isa 0
        MOV       *+XAR5[AR1],AR6       ; [CPU_ALU] |70| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 69,column 35,is_stmt,isa 0
        MOVB      *+XAR5[AR0],#1,UNC    ; [CPU_ALU] |69| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 69,column 53,is_stmt,isa 0
        MOVB      XAR0,#15              ; [CPU_ALU] |69| 
        MOVB      *+XAR5[AR0],#1,UNC    ; [CPU_ALU] |69| 
||$C$L42||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 70,column 26,is_stmt,isa 0
        MOVB      XAR0,#17              ; [CPU_ALU] |70| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 70,column 50,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |70| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 70,column 26,is_stmt,isa 0
        MOV       *+XAR5[AR0],#0        ; [CPU_ALU] |70| 
||$C$L43||:    
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
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$164, DW_AT_TI_end_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$164, DW_AT_TI_end_line(0x59)
	.dwattr $C$DW$164, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$164

	.sect	"pcmfpc_code"
	.clink
	.global	||VO_integrate_pole_segment||

$C$DW$194	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$194, DW_AT_name("VO_integrate_pole_segment")
	.dwattr $C$DW$194, DW_AT_low_pc(||VO_integrate_pole_segment||)
	.dwattr $C$DW$194, DW_AT_high_pc(0x00)
	.dwattr $C$DW$194, DW_AT_linkage_name("VO_integrate_pole_segment")
	.dwattr $C$DW$194, DW_AT_external
	.dwattr $C$DW$194, DW_AT_decl_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$194, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$194, DW_AT_decl_column(0x06)
	.dwattr $C$DW$194, DW_AT_TI_max_frame_size(-16)
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 92,column 1,is_stmt,address ||VO_integrate_pole_segment||,isa 0

	.dwfde $C$DW$CIE, ||VO_integrate_pole_segment||
$C$DW$195	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$195, DW_AT_name("pole")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg12]

$C$DW$196	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$196, DW_AT_name("theta")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$197	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$197, DW_AT_name("omega")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$198	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$198, DW_AT_name("dt")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x33]

$C$DW$199	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$199, DW_AT_name("integral")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: VO_integrate_pole_segment     FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  4 Auto,  8 SOE     *
;***************************************************************

||VO_integrate_pole_segment||:
;* R6    assigned to $O$C2
;* R4    assigned to $O$C3
;* R2    assigned to $O$C4
;* R1    assigned to $O$C5
;* R3    assigned to $O$C6
;* R4    assigned to $O$C7
;* R3    assigned to $O$C8
;* R1    assigned to $O$K24
;* AR4   assigned to pole
$C$DW$200	.dwtag  DW_TAG_variable
	.dwattr $C$DW$200, DW_AT_name("pole")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg12]

$C$DW$201	.dwtag  DW_TAG_variable
	.dwattr $C$DW$201, DW_AT_name("theta")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_breg20 -4]

;* R1    assigned to omega
$C$DW$202	.dwtag  DW_TAG_variable
	.dwattr $C$DW$202, DW_AT_name("omega")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to dt
$C$DW$203	.dwtag  DW_TAG_variable
	.dwattr $C$DW$203, DW_AT_name("dt")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x33]

;* AR5   assigned to integral
$C$DW$204	.dwtag  DW_TAG_variable
	.dwattr $C$DW$204, DW_AT_name("integral")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg14]

;* R3    assigned to alpha
$C$DW$205	.dwtag  DW_TAG_variable
	.dwattr $C$DW$205, DW_AT_name("alpha")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x37]

;* R0    assigned to beta
$C$DW$206	.dwtag  DW_TAG_variable
	.dwattr $C$DW$206, DW_AT_name("beta")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$207	.dwtag  DW_TAG_variable
	.dwattr $C$DW$207, DW_AT_name("x")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x2f]

;* R6    assigned to x2
$C$DW$208	.dwtag  DW_TAG_variable
	.dwattr $C$DW$208, DW_AT_name("x2")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x43]

;* R5    assigned to sinc
$C$DW$209	.dwtag  DW_TAG_variable
	.dwattr $C$DW$209, DW_AT_name("sinc")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x3f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -16
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 96,column 5,is_stmt,isa 0
        MPYF32    R1H,R1H,#16128        ; [CPU_FPU] |96| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 94,column 5,is_stmt,isa 0
        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |94| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 92,column 1,is_stmt,isa 0

        MPYF32    R1H,R2H,R1H           ; [CPU_FPU] |96| 
||      MOV32     *-SP[4],R0H           ; [CPU_FPU] |92| 

	.dwpsn	file "../vienna_pcmfpc_observer.c",line 95,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16147            ; [CPU_FPU] |95| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 99,column 5,is_stmt,isa 0
        MOV32     R7H,R1H               ; [CPU_FPU] |99| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 94,column 5,is_stmt,isa 0

        MOV32     R3H,*+XAR4[2]         ; [CPU_FPU] |94| 
||      ADDF32    R4H,R3H,R3H           ; [CPU_FPU] |94| 

	.dwpsn	file "../vienna_pcmfpc_observer.c",line 95,column 5,is_stmt,isa 0
        MOVXI     R0H,#52538            ; [CPU_FPU] |95| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 99,column 5,is_stmt,isa 0
        ABSF32    R7H,R7H               ; [CPU_FPU] |99| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 94,column 5,is_stmt,isa 0

        MOV32     R4H,*+XAR4[4]         ; [CPU_FPU] |94| 
||      SUBF32    R5H,R4H,R3H           ; [CPU_FPU] |94| 

	.dwpsn	file "../vienna_pcmfpc_observer.c",line 95,column 5,is_stmt,isa 0
        SUBF32    R3H,R3H,R4H           ; [CPU_FPU] |95| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 94,column 5,is_stmt,isa 0
        SUBF32    R4H,R5H,R4H           ; [CPU_FPU] |94| 
        MOVIZ     R5H,#16042            ; [CPU_FPU] |94| 

        MOV32     *-SP[6],R4H           ; [CPU_FPU] |94| 
||      MPYF32    R6H,R1H,R1H           ; [CPU_FPU] |96| 

        MOVXI     R5H,#43691            ; [CPU_FPU] |94| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 99,column 5,is_stmt,isa 0
        MOVIZ     R4H,#14979            ; [CPU_FPU] |99| 
        MOVXI     R4H,#4719             ; [CPU_FPU] |99| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 92,column 1,is_stmt,isa 0

        MOV32     R3H,*-SP[6]           ; [CPU_FPU] |92| 
||      MPYF32    R0H,R0H,R3H           ; [CPU_FPU] |95| 

	.dwpsn	file "../vienna_pcmfpc_observer.c",line 94,column 5,is_stmt,isa 0
        MPYF32    R3H,R5H,R3H           ; [CPU_FPU] |94| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 99,column 5,is_stmt,isa 0
        CMPF32    R7H,R4H               ; [CPU_FPU] |99| 
        MOVST0    ZF, NF                ; [CPU_FPU] |99| 
        B         ||$C$L44||,GEQ        ; [CPU_ALU] |99| 
        ; branchcc occurs ; [] |99| 
        MOVIZ     R4H,#15914            ; [CPU_FPU] |99| 
        MOVIZ     R5H,#15368            ; [CPU_FPU] |99| 
        MPYF32    R7H,R6H,R6H           ; [CPU_FPU] |99| 
        MOVXI     R4H,#43691            ; [CPU_FPU] |99| 
        MOVXI     R5H,#34953            ; [CPU_FPU] |99| 
        MPYF32    R4H,R4H,R6H           ; [CPU_FPU] |99| 
        MPYF32    R5H,R5H,R7H           ; [CPU_FPU] |99| 
        SUBF32    R4H,#16256,R4H        ; [CPU_FPU] |99| 
        NOP       ; [CPU_ALU] 
        ADDF32    R5H,R5H,R4H           ; [CPU_FPU] |99| 
        B         ||$C$L45||,UNC        ; [CPU_ALU] |99| 
        ; branch occurs ; [] |99| 
||$C$L44||:    
        DIV2PIF32 R4H,R1H               ; [CPU_FPU] |99| 
        NOP       ; [CPU_ALU] 
        SINPUF32  R4H,R4H               ; [CPU_FPU] |99| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIVF32    R5H,R4H,R1H           ; [CPU_FPU] |99| 
        NOP       ; [CPU_ALU] 
||$C$L45||:    
        MOV32     R4H,*-SP[4]           ; [CPU_FPU] 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 101,column 5,is_stmt,isa 0
        ADDF32    R1H,R1H,R4H           ; [CPU_FPU] |101| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIV2PIF32 R4H,R1H               ; [CPU_FPU] |101| 
        MPYF32    R2H,R2H,R5H           ; [CPU_FPU] |101| 
        SINPUF32  R6H,R4H               ; [CPU_FPU] |101| 
        DIV2PIF32 R1H,R1H               ; [CPU_FPU] |101| 
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        COSPUF32  R4H,R1H               ; [CPU_FPU] |101| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 102,column 5,is_stmt,isa 0
        MOV32     R1H,R6H               ; [CPU_FPU] |102| 
        NEGF32    R1H,R1H               ; [CPU_FPU] |102| 
        MPYF32    R1H,R3H,R1H           ; [CPU_FPU] |102| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 101,column 5,is_stmt,isa 0
        MPYF32    R6H,R0H,R6H           ; [CPU_FPU] |101| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 102,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,R4H           ; [CPU_FPU] |102| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 101,column 5,is_stmt,isa 0
        MPYF32    R7H,R3H,R4H           ; [CPU_FPU] |101| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 102,column 5,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |102| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 101,column 5,is_stmt,isa 0
        ADDF32    R3H,R6H,R7H           ; [CPU_FPU] |101| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 102,column 5,is_stmt,isa 0
        MPYF32    R0H,R2H,R0H           ; [CPU_FPU] |102| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 101,column 5,is_stmt,isa 0
        MPYF32    R1H,R2H,R3H           ; [CPU_FPU] |101| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 102,column 5,is_stmt,isa 0
        MOV32     *+XAR5[2],R0H         ; [CPU_FPU] |102| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 101,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R1H         ; [CPU_FPU] |101| 
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
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$194, DW_AT_TI_end_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$194, DW_AT_TI_end_line(0x67)
	.dwattr $C$DW$194, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$194

	.sect	"pcmfpc_code"
	.clink
	.global	||VO_reconstruct||

$C$DW$211	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$211, DW_AT_name("VO_reconstruct")
	.dwattr $C$DW$211, DW_AT_low_pc(||VO_reconstruct||)
	.dwattr $C$DW$211, DW_AT_high_pc(0x00)
	.dwattr $C$DW$211, DW_AT_linkage_name("VO_reconstruct")
	.dwattr $C$DW$211, DW_AT_external
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$211, DW_AT_decl_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$211, DW_AT_decl_line(0x68)
	.dwattr $C$DW$211, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$211, DW_AT_TI_max_frame_size(-164)
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 106,column 1,is_stmt,address ||VO_reconstruct||,isa 0

	.dwfde $C$DW$CIE, ||VO_reconstruct||
$C$DW$212	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$212, DW_AT_name("cfg")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg12]

$C$DW$213	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$213, DW_AT_name("in")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg14]

$C$DW$214	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$214, DW_AT_name("out")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_breg20 -166]


;***************************************************************
;* FNAME: VO_reconstruct                FR SIZE: 162           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 142 Auto, 14 SOE     *
;***************************************************************

||VO_reconstruct||:
$C$DW$215	.dwtag  DW_TAG_variable
	.dwattr $C$DW$215, DW_AT_name("interval")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_breg20 -98]

$C$DW$216	.dwtag  DW_TAG_variable
	.dwattr $C$DW$216, DW_AT_name("pole")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_breg20 -104]

$C$DW$217	.dwtag  DW_TAG_variable
	.dwattr $C$DW$217, DW_AT_name("dq")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_breg20 -108]

$C$DW$218	.dwtag  DW_TAG_variable
	.dwattr $C$DW$218, DW_AT_name("fhat")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_breg20 -112]

$C$DW$219	.dwtag  DW_TAG_variable
	.dwattr $C$DW$219, DW_AT_name("duration")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_breg20 -116]

$C$DW$220	.dwtag  DW_TAG_variable
	.dwattr $C$DW$220, DW_AT_name("integral")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_breg20 -120]

$C$DW$221	.dwtag  DW_TAG_variable
	.dwattr $C$DW$221, DW_AT_name("v")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_breg20 -122]

$C$DW$222	.dwtag  DW_TAG_variable
	.dwattr $C$DW$222, DW_AT_name("v")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_breg20 -124]

$C$DW$223	.dwtag  DW_TAG_variable
	.dwattr $C$DW$223, DW_AT_name("v")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_breg20 -126]

$C$DW$224	.dwtag  DW_TAG_variable
	.dwattr $C$DW$224, DW_AT_name("v")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_breg20 -128]

$C$DW$225	.dwtag  DW_TAG_variable
	.dwattr $C$DW$225, DW_AT_name("v")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_breg20 -130]

$C$DW$226	.dwtag  DW_TAG_variable
	.dwattr $C$DW$226, DW_AT_name("v")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_breg20 -132]

$C$DW$227	.dwtag  DW_TAG_variable
	.dwattr $C$DW$227, DW_AT_name("v")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_breg20 -134]

$C$DW$228	.dwtag  DW_TAG_variable
	.dwattr $C$DW$228, DW_AT_name("v")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_breg20 -136]

$C$DW$229	.dwtag  DW_TAG_variable
	.dwattr $C$DW$229, DW_AT_name("gates")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_breg20 -138]

;* R1    assigned to $O$C9
;* AR4   assigned to $O$C10
;* R2    assigned to $O$C11
;* R3    assigned to $O$C12
;* R3    assigned to $O$C13
;* AR4   assigned to $O$U202
;* AR4   assigned to $O$U202
;* AR5   assigned to $O$U123
;* AR5   assigned to $O$U123
;* R0    assigned to $O$U38
;* R1    assigned to $O$U46
;* R7    assigned to $O$U71
;* R6    assigned to $O$U78
;* AR4   assigned to $O$U105
;* R2    assigned to $O$U114
;* R4    assigned to $O$U57
;* R5    assigned to $O$U64
;* AR3   assigned to $O$U95
;* T     assigned to $O$U99
;* AR3   assigned to $O$U151
;* R2    assigned to $O$U152
;* AR4   assigned to $O$U161
;* AR4   assigned to $O$U182
;* AR5   assigned to $O$U186
;* AR7   assigned to $O$U199
;* AR7   assigned to $O$U178
$C$DW$230	.dwtag  DW_TAG_variable
	.dwattr $C$DW$230, DW_AT_name("cfg")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_breg20 -144]

$C$DW$231	.dwtag  DW_TAG_variable
	.dwattr $C$DW$231, DW_AT_name("in")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_breg20 -146]

$C$DW$232	.dwtag  DW_TAG_variable
	.dwattr $C$DW$232, DW_AT_name("out")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_breg20 -148]

;* R0    assigned to up
$C$DW$233	.dwtag  DW_TAG_variable
	.dwattr $C$DW$233, DW_AT_name("up")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to low
$C$DW$234	.dwtag  DW_TAG_variable
	.dwattr $C$DW$234, DW_AT_name("low")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x2f]

;* R4    assigned to theta
$C$DW$235	.dwtag  DW_TAG_variable
	.dwattr $C$DW$235, DW_AT_name("theta")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x3b]

;* R5    assigned to omega
$C$DW$236	.dwtag  DW_TAG_variable
	.dwattr $C$DW$236, DW_AT_name("omega")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x3f]

;* R6    assigned to dc
$C$DW$237	.dwtag  DW_TAG_variable
	.dwattr $C$DW$237, DW_AT_name("dc")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x43]

;* AL    assigned to step
$C$DW$238	.dwtag  DW_TAG_variable
	.dwattr $C$DW$238, DW_AT_name("step")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg0]

;* AL    assigned to status
$C$DW$239	.dwtag  DW_TAG_variable
	.dwattr $C$DW$239, DW_AT_name("status")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg0]

;* R7    assigned to dt
$C$DW$240	.dwtag  DW_TAG_variable
	.dwattr $C$DW$240, DW_AT_name("dt")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x47]

;* R0    assigned to thetaStep
$C$DW$241	.dwtag  DW_TAG_variable
	.dwattr $C$DW$241, DW_AT_name("thetaStep")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x2b]

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
        ADD       SP,#148               ; [CPU_ALU] 
	.dwcfi	cfa_offset, -164
        MOVL      XAR0,#18              ; [CPU_ALU] |106| 
        MOVL      ACC,*+FP[0]           ; [CPU_ALU] |106| 
        MOVL      *+FP[AR0],ACC         ; [CPU_ALU] |106| 
        MOVL      XAR0,#20              ; [CPU_ALU] |106| 
        MOVL      *+FP[AR0],XAR5        ; [CPU_ALU] |106| 
        MOVL      XAR0,#22              ; [CPU_ALU] |106| 
        MOVL      *+FP[AR0],XAR4        ; [CPU_ALU] |106| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 111,column 5,is_stmt,isa 0
        B         ||$C$L50||,EQ         ; [CPU_ALU] |111| 
        ; branchcc occurs ; [] |111| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 116,column 52,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |116| 
        MOVB      XAR1,#16              ; [CPU_ALU] |116| 
        MOVB      ACC,#0                ; [CPU_ALU] |116| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |116| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 113,column 9,is_stmt,isa 0
        ZERO      R4H                   ; [CPU_FPU] |113| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 114,column 9,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |114| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 113,column 9,is_stmt,isa 0
        ZERO      R2H                   ; [CPU_FPU] |113| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 114,column 9,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |114| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 113,column 37,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |113| 
        ZERO      R7H                   ; [CPU_FPU] |113| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 116,column 5,is_stmt,isa 0
        ZERO      R6H                   ; [CPU_FPU] |116| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 116,column 29,is_stmt,isa 0
        ZERO      R5H                   ; [CPU_FPU] |116| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 118,column 5,is_stmt,isa 0
        MOVL      XAR0,#22              ; [CPU_ALU] |118| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 116,column 52,is_stmt,isa 0
        MOVL      *+XAR4[AR1],ACC       ; [CPU_ALU] |116| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 113,column 37,is_stmt,isa 0
        MOVB      XAR1,#10              ; [CPU_ALU] |113| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 113,column 9,is_stmt,isa 0
        MOV32     *+XAR4[0],R4H         ; [CPU_FPU] |113| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 114,column 9,is_stmt,isa 0
        MOV32     *+XAR4[4],R3H         ; [CPU_FPU] |114| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 113,column 9,is_stmt,isa 0
        MOV32     *+XAR4[2],R2H         ; [CPU_FPU] |113| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 114,column 9,is_stmt,isa 0
        MOV32     *+XAR4[6],R1H         ; [CPU_FPU] |114| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 113,column 37,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |113| 
        MOVB      XAR1,#12              ; [CPU_ALU] |113| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 118,column 5,is_stmt,isa 0
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |118| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 113,column 37,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R7H       ; [CPU_FPU] |113| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 116,column 5,is_stmt,isa 0
        MOVB      XAR1,#8               ; [CPU_ALU] |116| 
        MOV32     *+XAR4[AR1],R6H       ; [CPU_FPU] |116| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 116,column 29,is_stmt,isa 0
        MOVB      XAR1,#14              ; [CPU_ALU] |116| 
        MOV32     *+XAR4[AR1],R5H       ; [CPU_FPU] |116| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 117,column 5,is_stmt,isa 0
        MOVB      XAR1,#18              ; [CPU_ALU] |117| 
        MOV       *+XAR4[AR1],#0        ; [CPU_ALU] |117| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 117,column 19,is_stmt,isa 0
        MOVB      XAR1,#19              ; [CPU_ALU] |117| 
        MOV       *+XAR4[AR1],#0        ; [CPU_ALU] |117| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 117,column 35,is_stmt,isa 0
        MOVB      XAR1,#20              ; [CPU_ALU] |117| 
        MOVB      *+XAR4[AR1],#2,UNC    ; [CPU_ALU] |117| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 118,column 5,is_stmt,isa 0
        MOVB      XAR1,#21              ; [CPU_ALU] |118| 
        MOVB      *+XAR4[AR1],#1,UNC    ; [CPU_ALU] |118| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 119,column 5,is_stmt,isa 0
        B         ||$C$L50||,EQ         ; [CPU_ALU] |119| 
        ; branchcc occurs ; [] |119| 
        MOVL      XAR0,#20              ; [CPU_ALU] 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |119| 
        ; branchcc occurs ; [] |119| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |19| 
        MOVB      XAR1,#8               ; [CPU_ALU] |19| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 120,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |120| 
        MOV       PH,#32640             ; [CPU_ALU] |120| 
        MOVL      XAR0,#44              ; [CPU_ALU] |120| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |19| 
        MOVL      XAR1,#44              ; [CPU_ALU] |19| 
        MOV32     *+FP[AR1],R0H         ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 120,column 5,is_stmt,isa 0
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |120| 
        ANDB      AL,#0                 ; [CPU_ALU] |120| 
        AND       AH,#32640             ; [CPU_ALU] |120| 
        CMPL      ACC,P                 ; [CPU_ALU] |120| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOVB      XAR1,#10              ; [CPU_ALU] |19| 
        MOV32     R1H,*+XAR4[AR1]       ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 120,column 5,is_stmt,isa 0
        MOVL      XAR0,#42              ; [CPU_ALU] |120| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOVL      XAR1,#42              ; [CPU_ALU] |19| 
        MOV32     *+FP[AR1],R1H         ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 120,column 5,is_stmt,isa 0
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |120| 
        ANDB      AL,#0                 ; [CPU_ALU] |120| 
        AND       AH,#32640             ; [CPU_ALU] |120| 
        CMPL      ACC,P                 ; [CPU_ALU] |120| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
        CMPF32    R0H,#0                ; [CPU_FPU] |120| 
        MOVST0    ZF, NF                ; [CPU_FPU] |120| 
        B         ||$C$L50||,LEQ        ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
        CMPF32    R1H,#0                ; [CPU_FPU] |120| 
        MOVST0    ZF, NF                ; [CPU_FPU] |120| 
        B         ||$C$L50||,LEQ        ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |19| 
        MOV32     R4H,*+XAR4[AR1]       ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 120,column 5,is_stmt,isa 0
        MOVL      XAR0,#40              ; [CPU_ALU] |120| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOVL      XAR1,#40              ; [CPU_ALU] |19| 
        MOV32     *+FP[AR1],R4H         ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 120,column 5,is_stmt,isa 0
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |120| 
        ANDB      AL,#0                 ; [CPU_ALU] |120| 
        AND       AH,#32640             ; [CPU_ALU] |120| 
        CMPL      ACC,P                 ; [CPU_ALU] |120| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOVB      XAR1,#14              ; [CPU_ALU] |19| 
        MOV32     R5H,*+XAR4[AR1]       ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 120,column 5,is_stmt,isa 0
        MOVL      XAR0,#38              ; [CPU_ALU] |120| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOVL      XAR1,#38              ; [CPU_ALU] |19| 
        MOV32     *+FP[AR1],R5H         ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 120,column 5,is_stmt,isa 0
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |120| 
        ANDB      AL,#0                 ; [CPU_ALU] |120| 
        AND       AH,#32640             ; [CPU_ALU] |120| 
        CMPL      ACC,P                 ; [CPU_ALU] |120| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOVB      XAR1,#16              ; [CPU_ALU] |19| 
        MOV32     R7H,*+XAR4[AR1]       ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 120,column 5,is_stmt,isa 0
        MOVL      XAR0,#36              ; [CPU_ALU] |120| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOVL      XAR1,#36              ; [CPU_ALU] |19| 
        MOV32     *+FP[AR1],R7H         ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 120,column 5,is_stmt,isa 0
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |120| 
        ANDB      AL,#0                 ; [CPU_ALU] |120| 
        AND       AH,#32640             ; [CPU_ALU] |120| 
        CMPL      ACC,P                 ; [CPU_ALU] |120| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOVB      XAR1,#18              ; [CPU_ALU] |19| 
        MOV32     R6H,*+XAR4[AR1]       ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 120,column 5,is_stmt,isa 0
        MOVL      XAR0,#34              ; [CPU_ALU] |120| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOVL      XAR1,#34              ; [CPU_ALU] |19| 
        MOV32     *+FP[AR1],R6H         ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 120,column 5,is_stmt,isa 0
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |120| 
        ANDB      AL,#0                 ; [CPU_ALU] |120| 
        AND       AH,#32640             ; [CPU_ALU] |120| 
        CMPL      ACC,P                 ; [CPU_ALU] |120| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
        CMPF32    R7H,#0                ; [CPU_FPU] |120| 
        MOVST0    ZF, NF                ; [CPU_FPU] |120| 
        B         ||$C$L50||,LT         ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
        CMPF32    R6H,#0                ; [CPU_FPU] |120| 
        MOVST0    ZF, NF                ; [CPU_FPU] |120| 
        B         ||$C$L50||,LT         ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
        ADDF32    R3H,R6H,R7H           ; [CPU_FPU] |120| 
        NOP       ; [CPU_ALU] 
        CMPF32    R3H,#0                ; [CPU_FPU] |120| 
        MOVST0    ZF, NF                ; [CPU_FPU] |120| 
        B         ||$C$L50||,LEQ        ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
        MOVIZ     R2H,#14979            ; [CPU_FPU] |120| 
        MOVXI     R2H,#4719             ; [CPU_FPU] |120| 
        CMPF32    R3H,R2H               ; [CPU_FPU] |120| 
        MOVST0    ZF, NF                ; [CPU_FPU] |120| 
        B         ||$C$L50||,GT         ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
        MOVB      XAR1,#20              ; [CPU_ALU] |120| 
        MOVZ      AR3,*+XAR4[AR1]       ; [CPU_ALU] |120| 
        MOV       AL,AR3                ; [CPU_ALU] |120| 
        CMPB      AL,#7                 ; [CPU_ALU] |120| 
        B         ||$C$L50||,HI         ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
        MOVB      XAR1,#21              ; [CPU_ALU] |120| 
        MOV       T,*+XAR4[AR1]         ; [CPU_ALU] |120| 
        MOV       AL,T                  ; [CPU_ALU] |120| 
        CMPB      AL,#7                 ; [CPU_ALU] |120| 
        B         ||$C$L50||,HI         ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
        MOVB      ACC,#0                ; [CPU_ALU] 
        MOVL      XAR0,#24              ; [CPU_ALU] 
        MOVB      XAR6,#1               ; [CPU_ALU] 
        MOVL      *+FP[AR0],ACC         ; [CPU_ALU] 
||$C$L46||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |19| 
        MOVL      XAR1,#32              ; [CPU_ALU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 128,column 9,is_stmt,isa 0
        MOVL      XAR0,#32              ; [CPU_ALU] |128| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     *+FP[AR1],R3H         ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 128,column 9,is_stmt,isa 0
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |128| 
        ANDB      AL,#0                 ; [CPU_ALU] |128| 
        AND       AH,#32640             ; [CPU_ALU] |128| 
        CMPL      ACC,P                 ; [CPU_ALU] |128| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |128| 
        ; branchcc occurs ; [] |128| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR4[4]         ; [CPU_FPU] |19| 
        MOVL      XAR1,#30              ; [CPU_ALU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 128,column 9,is_stmt,isa 0
        MOVL      XAR0,#30              ; [CPU_ALU] |128| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     *+FP[AR1],R2H         ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 128,column 9,is_stmt,isa 0
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |128| 
        ANDB      AL,#0                 ; [CPU_ALU] |128| 
        AND       AH,#32640             ; [CPU_ALU] |128| 
        CMPL      ACC,P                 ; [CPU_ALU] |128| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |128| 
        ; branchcc occurs ; [] |128| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 129,column 9,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |129| 
        SUBB      XAR5,#108             ; [CPU_ARAU] |129| 
        MOVZ      AR7,AR5               ; [CPU_ALU] |129| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 129,column 43,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |129| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 129,column 9,is_stmt,isa 0
        MOVL      XAR0,#24              ; [CPU_ALU] |129| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 129,column 43,is_stmt,isa 0
        SUBB      XAR5,#112             ; [CPU_ARAU] |129| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |129| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 129,column 9,is_stmt,isa 0
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |129| 
        ADDL      XAR7,ACC              ; [CPU_ALU] |129| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 127,column 14,is_stmt,isa 0
        MOVL      XAR0,#24              ; [CPU_ALU] |127| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 129,column 43,is_stmt,isa 0
        ADDL      XAR5,ACC              ; [CPU_ALU] |129| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 127,column 14,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |127| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 129,column 9,is_stmt,isa 0
        MOV32     *+XAR7[0],R3H         ; [CPU_FPU] |129| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 127,column 14,is_stmt,isa 0
        ADDB      ACC,#2                ; [CPU_ALU] |127| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 129,column 43,is_stmt,isa 0
        MOV32     *+XAR5[0],R2H         ; [CPU_FPU] |129| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 127,column 14,is_stmt,isa 0
        MOVL      *+FP[AR0],ACC         ; [CPU_FPU] |127| 
        BANZ      ||$C$L46||,AR6--      ; [CPU_ALU] |127| 
        ; branchcc occurs ; [] |127| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 133,column 5,is_stmt,isa 0
        MOVL      XAR0,#50              ; [CPU_ALU] |133| 
        MOV32     *+FP[AR0],R7H         ; [CPU_FPU] |133| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 134,column 5,is_stmt,isa 0
        MOVL      XAR1,#28              ; [CPU_ALU] |134| 
        MOVZ      AR4,SP                ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 133,column 50,is_stmt,isa 0
        MOVL      XAR0,#52              ; [CPU_ALU] |133| 
        MOVB      ACC,#0                ; [CPU_ALU] 
        MOV32     *+FP[AR0],R6H         ; [CPU_FPU] |133| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 134,column 5,is_stmt,isa 0
        MOV       *+FP[AR1],AR3         ; [CPU_ALU] |134| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 134,column 33,is_stmt,isa 0
        MOVL      XAR0,#29              ; [CPU_ALU] |134| 
        SUBB      XAR4,#116             ; [CPU_ARAU] 
        MOV       *+FP[AR0],T           ; [CPU_ALU] |134| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 131,column 49,is_stmt,isa 0
        ADDF32    R6H,R1H,R0H           ; [CPU_FPU] |131| 
        MOVL      XAR0,#24              ; [CPU_ALU] 
        MOVZ      AR3,AR4               ; [CPU_ALU] 
        MOVL      *+FP[AR0],ACC         ; [CPU_ALU] 
        MOVL      XAR0,#27              ; [CPU_ALU] 
        MOV       *+FP[AR0],#1          ; [CPU_ALU] 
||$C$L47||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 136,column 36,is_stmt,isa 0
        MOV32     R2H,*+XAR3[0]         ; [CPU_FPU] |136| 
        CMPF32    R2H,#0                ; [CPU_FPU] |136| 
        MOVST0    ZF, NF                ; [CPU_FPU] |136| 
        B         ||$C$L56||,LEQ        ; [CPU_ALU] |136| 
        ; branchcc occurs ; [] |136| 
        MOVZ      AR4,SP                ; [CPU_ALU] 
        MOVL      XAR0,#24              ; [CPU_ALU] 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] 
        ADD       AR4,#-138             ; [CPU_ALU] 
        MOVL      XAR0,#22              ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 139,column 9,is_stmt,isa 0
        MOVB      XAR1,#14              ; [CPU_ALU] |139| 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] 
        MOVU      ACC,AR4               ; [CPU_ALU] 
        ADDL      ACC,XAR6              ; [CPU_ALU] 
        MOVL      XAR4,ACC              ; [CPU_ALU] 
        MOV       AL,*+XAR5[AR1]        ; [CPU_ALU] |139| 
        CMPB      AL,#1                 ; [CPU_ALU] |139| 
        B         ||$C$L48||,EQ         ; [CPU_ALU] |139| 
        ; branchcc occurs ; [] |139| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 143,column 13,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |143| 
        SUBB      XAR5,#112             ; [CPU_ARAU] |143| 
        MOVZ      AR6,AR5               ; [CPU_ALU] |143| 
        MOVZ      AR5,SP                ; [CPU_ALU] |143| 
        MOV32     R3H,R5H               ; [CPU_FPU] |143| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |143| 
        SUBB      XAR5,#98              ; [CPU_ARAU] |143| 
        MOVU      ACC,AR5               ; [CPU_ALU] |143| 
        MOV32     *-SP[4],R2H           ; [CPU_FPU] |143| 
        MOVZ      AR5,SP                ; [CPU_ALU] |143| 
        MOVL      XAR0,#22              ; [CPU_ALU] |143| 
        MOV32     R2H,R4H               ; [CPU_FPU] |143| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |143| 
        SUBB      XAR5,#108             ; [CPU_ARAU] |143| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |143| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |143| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |143| 
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("PC_predict_interval")
	.dwattr $C$DW$242, DW_AT_TI_call

        LCR       #||PC_predict_interval|| ; [CPU_ALU] |143| 
        ; call occurs [#||PC_predict_interval||] ; [] |143| 
        B         ||$C$L49||,UNC        ; [CPU_ALU] |143| 
        ; branch occurs ; [] |143| 
||$C$L48||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 140,column 13,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |140| 
        SUBB      XAR5,#112             ; [CPU_ARAU] |140| 
        MOVZ      AR6,AR5               ; [CPU_ALU] |140| 
        MOVZ      AR5,SP                ; [CPU_ALU] |140| 
        MOV32     R3H,R5H               ; [CPU_FPU] |140| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |140| 
        SUBB      XAR5,#98              ; [CPU_ARAU] |140| 
        MOVU      ACC,AR5               ; [CPU_ALU] |140| 
        MOV32     *-SP[4],R2H           ; [CPU_FPU] |140| 
        MOVZ      AR5,SP                ; [CPU_ALU] |140| 
        MOVL      XAR0,#22              ; [CPU_ALU] |140| 
        MOV32     R2H,R4H               ; [CPU_FPU] |140| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |140| 
        SUBB      XAR5,#108             ; [CPU_ARAU] |140| 
        MOVB      AH,#1                 ; [CPU_ALU] |140| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |140| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |140| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |140| 
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("PC_fast_predict_interval")
	.dwattr $C$DW$243, DW_AT_TI_call

        LCR       #||PC_fast_predict_interval|| ; [CPU_ALU] |140| 
        ; call occurs [#||PC_fast_predict_interval||] ; [] |140| 
||$C$L49||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 145,column 9,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |145| 
        B         ||$C$L51||,EQ         ; [CPU_ALU] |145| 
        ; branchcc occurs ; [] |145| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 145,column 63,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |145| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |145| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 145,column 27,is_stmt,isa 0
        MOVB      XAR1,#21              ; [CPU_ALU] |145| 
        MOVB      *+XAR4[AR1],#8,UNC    ; [CPU_ALU] |145| 
||$C$L50||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 145,column 63,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |145| 
        B         ||$C$L58||,UNC        ; [CPU_ALU] |145| 
        ; branch occurs ; [] |145| 
||$C$L51||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 146,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR3[0]         ; [CPU_FPU] |146| 
        MOVB      XAR7,#0               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 147,column 13,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |147| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 146,column 9,is_stmt,isa 0
        MPYF32    R7H,R0H,#16128        ; [CPU_FPU] |146| 
||$C$L52||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 148,column 13,is_stmt,isa 0
        MOVZ      AR6,AL                ; [CPU_ALU] |148| 
        MOVZ      AR4,SP                ; [CPU_ALU] 
        MOVZ      AR5,SP                ; [CPU_ALU] 
        MOV       PH,#0                 ; [CPU_ALU] 
        MOV32     R0H,XAR6              ; [CPU_FPU] |148| 
        SUBB      XAR4,#68              ; [CPU_ARAU] 
        MOV       PL,AR4                ; [CPU_ALU] 
        SUBB      XAR5,#104             ; [CPU_ARAU] 
        ADDUL     P,XAR7                ; [CPU_ALU] 
        UI32TOF32 R0H,R0H               ; [CPU_FPU] |148| 
        MOVB      XAR6,#2               ; [CPU_ALU] 
        MPYF32    R0H,R5H,R0H           ; [CPU_FPU] |148| 
        MOVL      XAR4,P                ; [CPU_ALU] 
        MPYF32    R0H,R7H,R0H           ; [CPU_FPU] |148| 
        MOVZ      AR5,AR5               ; [CPU_ALU] 
        ADDF32    R0H,R0H,R4H           ; [CPU_FPU] |148| 
||$C$L53||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 149,column 31,is_stmt,isa 0
        MOVL      P,*XAR4++             ; [CPU_ALU] |149| 
        MOVL      *XAR5++,P             ; [CPU_ALU] |149| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 149,column 22,is_stmt,isa 0
        BANZ      ||$C$L53||,AR6--      ; [CPU_ALU] |149| 
        ; branchcc occurs ; [] |149| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 150,column 13,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |150| 
        MOVZ      AR5,SP                ; [CPU_ALU] |150| 
        MOV32     R1H,R5H               ; [CPU_FPU] |150| 
        MOV32     R2H,R7H               ; [CPU_FPU] |150| 
        SUBB      XAR4,#104             ; [CPU_ARAU] |150| 
        SUBB      XAR5,#120             ; [CPU_ARAU] |150| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |150| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |150| 
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("VO_integrate_pole_segment")
	.dwattr $C$DW$244, DW_AT_TI_call

        LCR       #||VO_integrate_pole_segment|| ; [CPU_ALU] |150| 
        ; call occurs [#||VO_integrate_pole_segment||] ; [] |150| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 151,column 31,is_stmt,isa 0
        MOVL      XAR0,#46              ; [CPU_ALU] |151| 
        MOV       AH,AR0                ; [CPU_ALU] |151| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 147,column 21,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |147| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 151,column 31,is_stmt,isa 0
        MOVL      XAR1,#48              ; [CPU_FPU] |151| 
        MOVL      XAR0,#18              ; [CPU_FPU] |151| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_FPU] |151| 
        MOVZ      AR0,AH                ; [CPU_FPU] |151| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 147,column 21,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |147| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 151,column 31,is_stmt,isa 0
        MOV32     R1H,*+FP[AR1]         ; [CPU_FPU] |151| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 147,column 21,is_stmt,isa 0
        ADDB      XAR7,#40              ; [CPU_ALU] |147| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 151,column 31,is_stmt,isa 0
        MOV32     R3H,*+FP[AR0]         ; [CPU_FPU] |151| 
        MOV32     R2H,*+XAR4[0]         ; [CPU_FPU] |151| 

        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |151| 
||      MOV32     R0H,*+XAR4[2]         ; [CPU_FPU] |151| 

        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |151| 
        MOV32     *+XAR4[0],R2H         ; [CPU_FPU] |151| 
        MOV32     *+XAR4[2],R0H         ; [CPU_FPU] |151| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 147,column 21,is_stmt,isa 0
        B         ||$C$L52||,LO         ; [CPU_ALU] |147| 
        ; branchcc occurs ; [] |147| 
        MOVZ      AR4,SP                ; [CPU_ALU] 
        MOVL      XAR0,#18              ; [CPU_ALU] 
        MOVZ      AR5,SP                ; [CPU_ALU] 
        SUBB      XAR4,#98              ; [CPU_ARAU] 
        MOVZ      AR7,AR4               ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
        SUBB      XAR5,#108             ; [CPU_ARAU] 
        MOVB      XAR6,#1               ; [CPU_ALU] 
        MOVZ      AR5,AR5               ; [CPU_ALU] 
        ADDB      XAR4,#10              ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 153,column 18,is_stmt,isa 0
        RPTB      ||$C$L55||,AR6        ; [CPU_ALU] |153| 
        ; repeat block starts ; [] 
||$C$L54||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 154,column 13,is_stmt,isa 0
        MOV32     R1H,*+XAR7[6]         ; [CPU_FPU] |154| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |154| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 155,column 13,is_stmt,isa 0
        MOVL      ACC,*XAR7++           ; [CPU_ALU] |155| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 154,column 13,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |154| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 155,column 13,is_stmt,isa 0
        MOVL      *XAR5++,ACC           ; [CPU_ALU] |155| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 154,column 13,is_stmt,isa 0
        MOV32     *XAR4++,R0H           ; [CPU_FPU] |154| 
        ; repeat block ends ; [] 
||$C$L55||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 158,column 9,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |158| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 158,column 40,is_stmt,isa 0
        MOVL      XAR1,#72              ; [CPU_ALU] |158| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 158,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR3[0]         ; [CPU_FPU] |158| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |158| 

        MPYF32    R2H,R5H,R0H           ; [CPU_FPU] |158| 
||      MOV32     R1H,*+FP[AR1]         ; [CPU_FPU] |158| 

	.dwpsn	file "../vienna_pcmfpc_observer.c",line 157,column 9,is_stmt,isa 0
        MOVL      XAR0,#78              ; [CPU_ALU] |157| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 158,column 40,is_stmt,isa 0
        SUBF32    R0H,R6H,R1H           ; [CPU_FPU] |158| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 157,column 9,is_stmt,isa 0
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] |157| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 158,column 9,is_stmt,isa 0
        ADDF32    R4H,R4H,R2H           ; [CPU_FPU] |158| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 158,column 67,is_stmt,isa 0
        ADDF32    R1H,R1H,R6H           ; [CPU_FPU] |158| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 158,column 40,is_stmt,isa 0
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |158| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 157,column 9,is_stmt,isa 0
        ADDB      XAR4,#19              ; [CPU_ALU] |157| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 158,column 67,is_stmt,isa 0
        MPYF32    R1H,R1H,#16128        ; [CPU_FPU] |158| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 157,column 9,is_stmt,isa 0
        OR        *+XAR4[0],AL          ; [CPU_ALU] |157| 
||$C$L56||:    
        MOVL      XAR0,#24              ; [CPU_ALU] 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 135,column 20,is_stmt,isa 0
        MOVL      XAR0,#24              ; [CPU_ALU] |135| 
        ADDB      ACC,#1                ; [CPU_ALU] |135| 
        MOVL      *+FP[AR0],ACC         ; [CPU_ALU] |135| 
        MOVL      XAR0,#27              ; [CPU_ALU] |135| 
        MOVZ      AR6,*+FP[AR0]         ; [CPU_ALU] |135| 
        MOVL      XAR0,#27              ; [CPU_ALU] |135| 
        SUBB      XAR6,#1               ; [CPU_ARAU] |135| 
        MOV       *+FP[AR0],AR6         ; [CPU_ALU] |135| 
        MOVZ      AR0,AR6               ; [CPU_ALU] |135| 
        ADDB      XAR3,#2               ; [CPU_ALU] |135| 
        CMP       AR0,#-1               ; [CPU_ALU] |135| 
        B         ||$C$L47||,NEQ        ; [CPU_ALU] |135| 
        ; branchcc occurs ; [] |135| 
        MOVZ      AR5,SP                ; [CPU_ALU] 
        MOVL      XAR0,#18              ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
        SUBB      XAR5,#108             ; [CPU_ARAU] 
        MOVZ      AR5,AR5               ; [CPU_ALU] 
        MOVB      XAR6,#1               ; [CPU_ALU] 
        ADDB      XAR4,#4               ; [CPU_ALU] 
||$C$L57||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 160,column 23,is_stmt,isa 0
        MOVL      ACC,*XAR5++           ; [CPU_ALU] |160| 
        MOVL      *XAR4++,ACC           ; [CPU_ALU] |160| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 160,column 14,is_stmt,isa 0
        BANZ      ||$C$L57||,AR6--      ; [CPU_ALU] |160| 
        ; branchcc occurs ; [] |160| 
        MOVL      XAR0,#18              ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 161,column 5,is_stmt,isa 0
        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |161| 
        MOVB      XAR1,#8               ; [CPU_ALU] |161| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 162,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |162| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 161,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 162,column 5,is_stmt,isa 0
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |162| 
        MOVB      XAR1,#16              ; [CPU_ALU] |162| 
        MOVB      XAR0,#18              ; [CPU_ALU] |162| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |162| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |162| 
        MOVL      XAR0,#18              ; [CPU_ALU] |162| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |162| 
        MOVB      XAR1,#14              ; [CPU_ALU] |162| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |162| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 163,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |163| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 162,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |162| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 163,column 5,is_stmt,isa 0
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |163| 
        MOVB      XAR1,#22              ; [CPU_ALU] |163| 
        MOVL      XAR0,#18              ; [CPU_ALU] |163| 
        MOVL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |163| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |163| 
        MOVB      XAR1,#16              ; [CPU_ALU] |163| 
        MOVL      *+XAR4[AR1],ACC       ; [CPU_ALU] |163| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 163,column 32,is_stmt,isa 0
        MOVB      XAR1,#21              ; [CPU_ALU] |163| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 164,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |164| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 163,column 32,is_stmt,isa 0
        MOV       *+XAR4[AR1],#0        ; [CPU_ALU] |163| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 163,column 58,is_stmt,isa 0
        MOVB      XAR1,#18              ; [CPU_ALU] |163| 
        MOVB      *+XAR4[AR1],#1,UNC    ; [CPU_ALU] |163| 
||$C$L58||:    
        ADD       SP,#-148              ; [CPU_ALU] 
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
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$211, DW_AT_TI_end_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$211, DW_AT_TI_end_line(0xa5)
	.dwattr $C$DW$211, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$211

	.sect	"pcmfpc_code"
	.clink
	.global	||VO_configure||

$C$DW$246	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$246, DW_AT_name("VO_configure")
	.dwattr $C$DW$246, DW_AT_low_pc(||VO_configure||)
	.dwattr $C$DW$246, DW_AT_high_pc(0x00)
	.dwattr $C$DW$246, DW_AT_linkage_name("VO_configure")
	.dwattr $C$DW$246, DW_AT_external
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$246, DW_AT_decl_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$246, DW_AT_decl_line(0x16)
	.dwattr $C$DW$246, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$246, DW_AT_TI_max_frame_size(-18)
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 23,column 1,is_stmt,address ||VO_configure||,isa 0

	.dwfde $C$DW$CIE, ||VO_configure||
$C$DW$247	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$247, DW_AT_name("c")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_reg12]

$C$DW$248	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$248, DW_AT_name("dt")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$249	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$249, DW_AT_name("L")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$250	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$250, DW_AT_name("bandwidth")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x33]


;***************************************************************
;* FNAME: VO_configure                  FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  6 Auto,  8 SOE     *
;***************************************************************

||VO_configure||:
$C$DW$251	.dwtag  DW_TAG_variable
	.dwattr $C$DW$251, DW_AT_name("v")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_breg20 -4]

$C$DW$252	.dwtag  DW_TAG_variable
	.dwattr $C$DW$252, DW_AT_name("v")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_breg20 -6]

$C$DW$253	.dwtag  DW_TAG_variable
	.dwattr $C$DW$253, DW_AT_name("v")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_breg20 -8]

;* R1    assigned to $O$C4
;* AL    assigned to c
$C$DW$254	.dwtag  DW_TAG_variable
	.dwattr $C$DW$254, DW_AT_name("c")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_reg0]

;* R4    assigned to dt
$C$DW$255	.dwtag  DW_TAG_variable
	.dwattr $C$DW$255, DW_AT_name("dt")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x3b]

;* R6    assigned to L
$C$DW$256	.dwtag  DW_TAG_variable
	.dwattr $C$DW$256, DW_AT_name("L")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x43]

;* R5    assigned to bandwidth
$C$DW$257	.dwtag  DW_TAG_variable
	.dwattr $C$DW$257, DW_AT_name("bandwidth")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x3f]

;* R0    assigned to rho
$C$DW$258	.dwtag  DW_TAG_variable
	.dwattr $C$DW$258, DW_AT_name("rho")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 8
	.dwcfi	cfa_offset, -10
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -18
        MOVL      ACC,XAR4              ; [CPU_ALU] |23| 
        MOV32     R5H,R2H               ; [CPU_FPU] |23| 
        MOV32     R6H,R1H               ; [CPU_FPU] |23| 
        MOV32     R4H,R0H               ; [CPU_FPU] |23| 
        MOVL      XAR1,XAR4             ; [CPU_ALU] |23| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 25,column 5,is_stmt,isa 0
        B         ||$C$L59||,EQ         ; [CPU_ALU] |25| 
        ; branchcc occurs ; [] |25| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     *-SP[4],R4H           ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 25,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |25| 
        MOV       PH,#32640             ; [CPU_ALU] |25| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |25| 
        ANDB      AL,#0                 ; [CPU_ALU] |25| 
        AND       AH,#32640             ; [CPU_ALU] |25| 
        CMPL      ACC,P                 ; [CPU_ALU] |25| 
        B         ||$C$L59||,EQ         ; [CPU_ALU] |25| 
        ; branchcc occurs ; [] |25| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     *-SP[6],R6H           ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 25,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |25| 
        ANDB      AL,#0                 ; [CPU_ALU] |25| 
        AND       AH,#32640             ; [CPU_ALU] |25| 
        CMPL      ACC,P                 ; [CPU_ALU] |25| 
        B         ||$C$L59||,EQ         ; [CPU_ALU] |25| 
        ; branchcc occurs ; [] |25| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 19,column 5,is_stmt,isa 0
        MOV32     *-SP[8],R5H           ; [CPU_FPU] |19| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 25,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |25| 
        ANDB      AL,#0                 ; [CPU_ALU] |25| 
        AND       AH,#32640             ; [CPU_ALU] |25| 
        CMPL      ACC,P                 ; [CPU_ALU] |25| 
        B         ||$C$L59||,EQ         ; [CPU_ALU] |25| 
        ; branchcc occurs ; [] |25| 
        MOVIZ     R0H,#13270            ; [CPU_FPU] |25| 
        MOVXI     R0H,#49045            ; [CPU_FPU] |25| 
        CMPF32    R4H,R0H               ; [CPU_FPU] |25| 
        MOVST0    ZF, NF                ; [CPU_FPU] |25| 
        B         ||$C$L59||,LT         ; [CPU_ALU] |25| 
        ; branchcc occurs ; [] |25| 
        MOVIZ     R0H,#14979            ; [CPU_FPU] |25| 
        MOVXI     R0H,#4719             ; [CPU_FPU] |25| 
        CMPF32    R4H,R0H               ; [CPU_FPU] |25| 
        MOVST0    ZF, NF                ; [CPU_FPU] |25| 
        B         ||$C$L59||,GT         ; [CPU_ALU] |25| 
        ; branchcc occurs ; [] |25| 
        CMPF32    R6H,#0                ; [CPU_FPU] |25| 
        MOVST0    ZF, NF                ; [CPU_FPU] |25| 
        B         ||$C$L59||,LEQ        ; [CPU_ALU] |25| 
        ; branchcc occurs ; [] |25| 
        CMPF32    R5H,#0                ; [CPU_FPU] |25| 
        MOVST0    ZF, NF                ; [CPU_FPU] |25| 
        B         ||$C$L60||,GT         ; [CPU_ALU] |25| 
        ; branchcc occurs ; [] |25| 
||$C$L59||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 26,column 65,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |26| 
        B         ||$C$L61||,UNC        ; [CPU_ALU] |26| 
        ; branch occurs ; [] |26| 
||$C$L60||:    
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 27,column 5,is_stmt,isa 0
        MOV32     R0H,R5H               ; [CPU_FPU] |27| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |27| 
        MPYF32    R0H,R4H,R0H           ; [CPU_FPU] |27| 
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("expf")
	.dwattr $C$DW$259, DW_AT_TI_call

        LCR       #||expf||             ; [CPU_ALU] |27| 
        ; call occurs [#||expf||] ; [] |27| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 29,column 31,is_stmt,isa 0
        SUBF32    R1H,#16256,R0H        ; [CPU_FPU] |29| 
        MOVB      XAR0,#8               ; [CPU_ALU] |29| 
        MPYF32    R1H,R1H,R1H           ; [CPU_FPU] |29| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 30,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |30| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 28,column 5,is_stmt,isa 0

        MPYF32    R0H,R0H,R0H           ; [CPU_FPU] |29| 
||      MOV32     *+XAR1[0],R4H         ; [CPU_FPU] |28| 

	.dwpsn	file "../vienna_pcmfpc_observer.c",line 29,column 31,is_stmt,isa 0
        DIVF32    R1H,R1H,R4H           ; [CPU_FPU] |29| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 28,column 22,is_stmt,isa 0
        MOV32     *+XAR1[2],R6H         ; [CPU_FPU] |28| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 29,column 5,is_stmt,isa 0
        SUBF32    R0H,#16256,R0H        ; [CPU_FPU] |29| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 28,column 40,is_stmt,isa 0
        MOV32     *+XAR1[4],R5H         ; [CPU_FPU] |28| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 29,column 5,is_stmt,isa 0
        MOV32     *+XAR1[6],R0H         ; [CPU_FPU] |29| 
	.dwpsn	file "../vienna_pcmfpc_observer.c",line 29,column 31,is_stmt,isa 0
        MOV32     *+XAR1[AR0],R1H       ; [CPU_FPU] |29| 
||$C$L61||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 59
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$246, DW_AT_TI_end_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$246, DW_AT_TI_end_line(0x1f)
	.dwattr $C$DW$246, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$246

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||PC_fast_predict_interval||
	.global	||PC_predict_interval||
	.global	||expf||
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
	.group    "__relaxed_atan2f", 1
	.gmember  ".text:__relaxed_atan2f"
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
	.group    "__relaxed_sqrtf", 1
	.gmember  ".text:__relaxed_sqrtf"
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
$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("first_duration_s")
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$261, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0x19)
	.dwattr $C$DW$261, DW_AT_decl_column(0x0d)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("candidate_duration_s")
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$262, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0x19)
	.dwattr $C$DW$262, DW_AT_decl_column(0x1f)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("L_H")
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$263, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$263, DW_AT_decl_column(0x0d)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("R_ohm")
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$264, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$264, DW_AT_decl_column(0x12)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("C_half_F")
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$265, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$265, DW_AT_decl_column(0x19)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_name("delta_i_A")
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$266, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$266, DW_AT_decl_column(0x0d)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_name("zero_window_rad")
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$267, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$267, DW_AT_decl_column(0x18)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$268, DW_AT_name("root_method")
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$268, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$268, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$268, DW_AT_decl_column(0x0e)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$269, DW_AT_name("diagnostic_all_angles")
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$269, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$269, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$22, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x18)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("PC_Config")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$40, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x20)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$270	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$40)

$C$DW$T$41	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$270)

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42
$C$DW$T$42	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43
$C$DW$271	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$42)

$C$DW$T$43	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$271)

	.dwendtag $C$DW$TU$43


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x28)
$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$272, DW_AT_name("old_abc_A")
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$272, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$272, DW_AT_decl_column(0x0d)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$273, DW_AT_name("free_abc_A")
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$273, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$273, DW_AT_decl_column(0x1b)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$274, DW_AT_name("next_abc_A")
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$274, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$274, DW_AT_decl_column(0x2a)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$275, DW_AT_name("pole_abc_V")
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$275, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$275, DW_AT_decl_column(0x39)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$276, DW_AT_name("idq_A")
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$276, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$276, DW_AT_decl_column(0x0d)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$277, DW_AT_name("np_V")
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$277, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$277, DW_AT_decl_column(0x17)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$278, DW_AT_name("mu_V")
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$278, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$278, DW_AT_decl_column(0x1d)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("theta_end_rad")
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$279, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$279, DW_AT_decl_column(0x23)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_name("root_residual_A")
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$280, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$280, DW_AT_decl_column(0x0d)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("root_bracket_width_V")
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$281, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$281, DW_AT_decl_column(0x1e)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$282, DW_AT_name("blocked")
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$282, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$282, DW_AT_decl_column(0x0e)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$283, DW_AT_name("root_iterations")
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$283, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$283, DW_AT_decl_column(0x17)

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
$C$DW$284	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$284, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x5c)
$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$285, DW_AT_name("idq_A")
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$285, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0x32)
	.dwattr $C$DW$285, DW_AT_decl_column(0x0d)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("np_V")
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$286, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0x32)
	.dwattr $C$DW$286, DW_AT_decl_column(0x17)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$287, DW_AT_name("u_integral_dq_V_s")
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$287, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0x32)
	.dwattr $C$DW$287, DW_AT_decl_column(0x1d)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$288, DW_AT_name("blocked")
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$288, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0x33)
	.dwattr $C$DW$288, DW_AT_decl_column(0x0e)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$289, DW_AT_name("substep")
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$289, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0x34)
	.dwattr $C$DW$289, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$28, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("PC_Interval")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$46, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47
$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$47


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x0a)
$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$290, DW_AT_name("sample_sec")
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$290, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$290, DW_AT_decl_column(0x0b)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$291, DW_AT_name("inductance_H")
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$291, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$291, DW_AT_decl_column(0x17)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$292, DW_AT_name("omega_eso_rad_s")
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$292, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$292, DW_AT_decl_column(0x25)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$293, DW_AT_name("k_current")
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$293, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$293, DW_AT_decl_column(0x0b)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$294, DW_AT_name("k_disturbance")
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$294, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$294, DW_AT_decl_column(0x16)

	.dwattr $C$DW$T$29, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52
$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("VO_Config")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$52, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53
$C$DW$295	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$52)

$C$DW$T$53	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$295)

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54
$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55
$C$DW$296	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$54)

$C$DW$T$55	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$296)

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56
$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57
$C$DW$297	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$56)

$C$DW$T$57	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$297)

	.dwendtag $C$DW$TU$57


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x12)
$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$298, DW_AT_name("i_hat_A")
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$298, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0x10)
	.dwattr $C$DW$298, DW_AT_decl_column(0x0b)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$299, DW_AT_name("f_hat_A_s")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$299, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0x10)
	.dwattr $C$DW$299, DW_AT_decl_column(0x17)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$300, DW_AT_name("innovation_A")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$300, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0x10)
	.dwattr $C$DW$300, DW_AT_decl_column(0x25)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$301, DW_AT_name("last_sequence")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$301, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0x11)
	.dwattr $C$DW$301, DW_AT_decl_column(0x0e)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$302, DW_AT_name("initialized")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$302, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x12)
	.dwattr $C$DW$302, DW_AT_decl_column(0x0e)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$303, DW_AT_name("valid")
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$303, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x12)
	.dwattr $C$DW$303, DW_AT_decl_column(0x1b)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$304, DW_AT_name("source")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$304, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x12)
	.dwattr $C$DW$304, DW_AT_decl_column(0x22)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$305, DW_AT_name("faults")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$305, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0x12)
	.dwattr $C$DW$305, DW_AT_decl_column(0x2a)

	.dwattr $C$DW$T$33, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60
$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("VO_State")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$60, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61
$C$DW$T$61	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62
$C$DW$306	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$61)

$C$DW$T$62	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$306)

	.dwendtag $C$DW$TU$62


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x18)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$307, DW_AT_name("idq_start_A")
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$307, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x15)
	.dwattr $C$DW$307, DW_AT_decl_column(0x0b)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$308, DW_AT_name("fhat_A_s")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$308, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x15)
	.dwattr $C$DW$308, DW_AT_decl_column(0x1b)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$309, DW_AT_name("up_V")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$309, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x15)
	.dwattr $C$DW$309, DW_AT_decl_column(0x28)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$310, DW_AT_name("low_V")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$310, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0x15)
	.dwattr $C$DW$310, DW_AT_decl_column(0x2e)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$311, DW_AT_name("theta_start_rad")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$311, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x16)
	.dwattr $C$DW$311, DW_AT_decl_column(0x0b)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$312, DW_AT_name("omega_rad_s")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$312, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x16)
	.dwattr $C$DW$312, DW_AT_decl_column(0x1c)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$313, DW_AT_name("duration_before_sec")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$313, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x17)
	.dwattr $C$DW$313, DW_AT_decl_column(0x0b)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$314, DW_AT_name("duration_after_sec")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$314, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x17)
	.dwattr $C$DW$314, DW_AT_decl_column(0x20)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$315, DW_AT_name("gate_before_hw")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$315, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x18)
	.dwattr $C$DW$315, DW_AT_decl_column(0x0e)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$316, DW_AT_name("gate_after_hw")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$316, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x18)
	.dwattr $C$DW$316, DW_AT_decl_column(0x1e)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$317, DW_AT_name("sequence")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$317, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0x19)
	.dwattr $C$DW$317, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$34, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x14)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68
$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("VO_ReconstructInput")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$68, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69
$C$DW$318	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$68)

$C$DW$T$69	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$318)

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70
$C$DW$T$70	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71
$C$DW$319	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$70)

$C$DW$T$71	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$319)

	.dwendtag $C$DW$TU$71


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x16)
$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$320, DW_AT_name("delta_u_dq_V_s")
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$320, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$320, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$320, DW_AT_decl_column(0x0b)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$321, DW_AT_name("model_end_idq_A")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$321, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$321, DW_AT_decl_column(0x1e)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$322, DW_AT_name("model_end_n_V")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$322, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$322, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$322, DW_AT_decl_column(0x32)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$323, DW_AT_name("endpoint_quadrature_dq_V_s")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$323, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$323, DW_AT_decl_column(0x0b)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$324, DW_AT_name("duration_sec")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$324, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$324, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$324, DW_AT_decl_column(0x0b)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$325, DW_AT_name("sequence")
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$325, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$325, DW_AT_decl_column(0x0e)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$326, DW_AT_name("valid")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$326, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0x20)
	.dwattr $C$DW$326, DW_AT_decl_column(0x0e)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$327, DW_AT_name("blocked")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$327, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0x20)
	.dwattr $C$DW$327, DW_AT_decl_column(0x15)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$328, DW_AT_name("source")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$328, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x20)
	.dwattr $C$DW$328, DW_AT_decl_column(0x1e)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$329, DW_AT_name("faults")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$329, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x20)
	.dwattr $C$DW$329, DW_AT_decl_column(0x26)

	.dwattr $C$DW$T$35, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73
$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("VO_ReconstructOutput")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$73, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x21)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74
$C$DW$T$74	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$74


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75
$C$DW$330	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$74)

$C$DW$T$75	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$330)

	.dwendtag $C$DW$TU$75


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x02)
$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$331, DW_AT_name("f")
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$331, DW_AT_decl_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$331, DW_AT_decl_line(0x12)
	.dwattr $C$DW$331, DW_AT_decl_column(0x13)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$332, DW_AT_name("u")
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$332, DW_AT_decl_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$332, DW_AT_decl_line(0x12)
	.dwattr $C$DW$332, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$36, DW_AT_decl_file("../vienna_pcmfpc_observer.c")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x12)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x0b)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$2	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$2
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

	.dwendtag $C$DW$TU$2


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


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110

$C$DW$T$110	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x02)
$C$DW$333	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$333, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$110

	.dwendtag $C$DW$TU$110


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111
$C$DW$334	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$21)

$C$DW$T$111	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$334)

	.dwendtag $C$DW$TU$111


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


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$31, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$32


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113
$C$DW$335	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$32)

$C$DW$T$113	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$335)

	.dwendtag $C$DW$TU$113


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


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95
$C$DW$336	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)

$C$DW$T$95	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$336)

	.dwendtag $C$DW$TU$95


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96
$C$DW$T$96	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$96


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x06)
$C$DW$337	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$337, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x04)
$C$DW$338	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$338, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x04)
$C$DW$339	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$339, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80
$C$DW$340	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$16)

$C$DW$T$80	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$340)

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81
$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$81


$C$DW$TU$115	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$115
$C$DW$341	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$81)

$C$DW$T$115	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$341)

	.dwendtag $C$DW$TU$115


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82
$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$82


$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114
$C$DW$342	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$82)

$C$DW$T$114	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$342)

	.dwendtag $C$DW$TU$114


$C$DW$TU$119	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$119

$C$DW$T$119	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x06)
$C$DW$343	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$343, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$119

	.dwendtag $C$DW$TU$119


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120
$C$DW$T$120	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$120, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$120


$C$DW$TU$121	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$121
$C$DW$344	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$120)

$C$DW$T$121	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$344)

	.dwendtag $C$DW$TU$121


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$122	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$122
$C$DW$T$122	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$122, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$122


$C$DW$TU$123	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$123
$C$DW$345	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$122)

$C$DW$T$123	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$345)

	.dwendtag $C$DW$TU$123

