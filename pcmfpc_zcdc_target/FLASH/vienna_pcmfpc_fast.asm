;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                             PC v25.11.1.LTS *
;* Date/Time created: Mon Oct 26 10:09:39 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v25.11.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\FLASH")
	.global	||PC_fast_output_substeps_available||
	.data
	.align	1
	.elfsym	||PC_fast_output_substeps_available||,SYM_SIZE(1),SYM_BLOCKED(1)
||PC_fast_output_substeps_available||:
	.bits		0,16
			; PC_fast_output_substeps_available @ 0

$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("PC_fast_output_substeps_available")
	.dwattr $C$DW$1, DW_AT_linkage_name("PC_fast_output_substeps_available")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr ||PC_fast_output_substeps_available||]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x88)
	.dwattr $C$DW$1, DW_AT_decl_column(0x13)

	.global	||PC_fast_output_summaries_available||
	.data
	.align	1
	.elfsym	||PC_fast_output_summaries_available||,SYM_SIZE(1),SYM_BLOCKED(1)
||PC_fast_output_summaries_available||:
	.bits		0,16
			; PC_fast_output_summaries_available @ 0

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("PC_fast_output_summaries_available")
	.dwattr $C$DW$2, DW_AT_linkage_name("PC_fast_output_summaries_available")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr ||PC_fast_output_summaries_available||]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x89)
	.dwattr $C$DW$2, DW_AT_decl_column(0x13)

	.global	||PC_fast_output_integrals_available||
	.data
	.align	1
	.elfsym	||PC_fast_output_integrals_available||,SYM_SIZE(1),SYM_BLOCKED(1)
||PC_fast_output_integrals_available||:
	.bits		0,16
			; PC_fast_output_integrals_available @ 0

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("PC_fast_output_integrals_available")
	.dwattr $C$DW$3, DW_AT_linkage_name("PC_fast_output_integrals_available")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr ||PC_fast_output_integrals_available||]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$3, DW_AT_decl_column(0x13)

	.global	||PC_fast_kernel_revision||
	.data
	.align	1
	.elfsym	||PC_fast_kernel_revision||,SYM_SIZE(1),SYM_BLOCKED(1)
||PC_fast_kernel_revision||:
	.bits		0x5,16
			; PC_fast_kernel_revision @ 0

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("PC_fast_kernel_revision")
	.dwattr $C$DW$4, DW_AT_linkage_name("PC_fast_kernel_revision")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr ||PC_fast_kernel_revision||]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$4, DW_AT_decl_column(0x13)

	.bss	||pf_input_rotation||,6,0,1
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("pf_input_rotation")
	.dwattr $C$DW$5, DW_AT_linkage_name("pf_input_rotation")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr ||pf_input_rotation||]
	.dwattr $C$DW$5, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x80)
	.dwattr $C$DW$5, DW_AT_decl_column(0x14)

	.bss	||pf_reference_rotation||,6,0,1
$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("pf_reference_rotation")
	.dwattr $C$DW$6, DW_AT_linkage_name("pf_reference_rotation")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr ||pf_reference_rotation||]
	.dwattr $C$DW$6, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x80)
	.dwattr $C$DW$6, DW_AT_decl_column(0x26)

	.bss	||pf_first_plan||,24,0,1
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("pf_first_plan")
	.dwattr $C$DW$7, DW_AT_linkage_name("pf_first_plan")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr ||pf_first_plan||]
	.dwattr $C$DW$7, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$7, DW_AT_decl_column(0x10)

	.bss	||pf_candidate_plan||,24,0,1
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("pf_candidate_plan")
	.dwattr $C$DW$8, DW_AT_linkage_name("pf_candidate_plan")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr ||pf_candidate_plan||]
	.dwattr $C$DW$8, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$8, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$8, DW_AT_decl_column(0x1e)

	.bss	||pf_standalone_plan||,24,0,1
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("pf_standalone_plan")
	.dwattr $C$DW$9, DW_AT_linkage_name("pf_standalone_plan")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr ||pf_standalone_plan||]
	.dwattr $C$DW$9, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$9, DW_AT_decl_column(0x30)

	.bss	||pf_lambda_work||,40,0,1
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("pf_lambda_work")
	.dwattr $C$DW$10, DW_AT_linkage_name("pf_lambda_work")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr ||pf_lambda_work||]
	.dwattr $C$DW$10, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0x84)
	.dwattr $C$DW$10, DW_AT_decl_column(0x16)

	.bss	||pf_select_work||,40,0,1
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("pf_select_work")
	.dwattr $C$DW$11, DW_AT_linkage_name("pf_select_work")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr ||pf_select_work||]
	.dwattr $C$DW$11, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x87)
	.dwattr $C$DW$11, DW_AT_decl_column(0x16)

	.bss	||pf_root_work||,54,0,1
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("pf_root_work")
	.dwattr $C$DW$12, DW_AT_linkage_name("pf_root_work")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr ||pf_root_work||]
	.dwattr $C$DW$12, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x82)
	.dwattr $C$DW$12, DW_AT_decl_column(0x14)

	.bss	||pf_control_work||,56,0,1
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("pf_control_work")
	.dwattr $C$DW$13, DW_AT_linkage_name("pf_control_work")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr ||pf_control_work||]
	.dwattr $C$DW$13, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0x86)
	.dwattr $C$DW$13, DW_AT_decl_column(0x17)

	.bss	||pf_candidate_seed||,88,0,1
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("pf_candidate_seed")
	.dwattr $C$DW$14, DW_AT_linkage_name("pf_candidate_seed")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr ||pf_candidate_seed||]
	.dwattr $C$DW$14, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0x81)
	.dwattr $C$DW$14, DW_AT_decl_column(0x10)

	.sblock	".bss"
	.sblock	".data"
;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\opt2000.exe C:\\Users\\YAN\\AppData\\Local\\Temp\\{B892BC60-4969-4EAD-9474-9F5C94E0DB56} C:\\Users\\YAN\\AppData\\Local\\Temp\\{8FBDF5F6-4E2A-4449-8A2E-FC11F13611BB} --advice:performance=stdout 
;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\acia2000.exe -@C:\\Users\\YAN\\AppData\\Local\\Temp\\{F516CA10-3529-4243-A34E-8A2AC3CF8CAD} 
	.sect	".text:__signbitl"
	.clink
	.global	||__signbitl||

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("__signbitl")
	.dwattr $C$DW$15, DW_AT_low_pc(||__signbitl||)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_linkage_name("__signbitl")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$15, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$15, DW_AT_decl_column(0x18)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 349,column 1,is_stmt,address ||__signbitl||,isa 0

	.dwfde $C$DW$CIE, ||__signbitl||
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("e")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg12]


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
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("e")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg12]

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
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$18, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |349| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |349| 
        MOVB      AH,#0                 ; [CPU_ALU] |349| 
        CMPB      AL,#0                 ; [CPU_ALU] |349| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |349| 
        MOV       AL,AH                 ; [CPU_ALU] |349| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text:__signbitf"
	.clink
	.global	||__signbitf||

$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("__signbitf")
	.dwattr $C$DW$20, DW_AT_low_pc(||__signbitf||)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_linkage_name("__signbitf")
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$20, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$20, DW_AT_decl_column(0x18)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 347,column 1,is_stmt,address ||__signbitf||,isa 0

	.dwfde $C$DW$CIE, ||__signbitf||
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("f")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("f")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$20, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x15b)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$20

	.sect	".text:__signbit"
	.clink
	.global	||__signbit||

$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("__signbit")
	.dwattr $C$DW$24, DW_AT_low_pc(||__signbit||)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_linkage_name("__signbit")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$24, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x158)
	.dwattr $C$DW$24, DW_AT_decl_column(0x18)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 345,column 1,is_stmt,address ||__signbit||,isa 0

	.dwfde $C$DW$CIE, ||__signbit||
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("d")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg12]


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
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("d")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg12]

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
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |345| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |345| 
        MOVB      AH,#0                 ; [CPU_ALU] |345| 
        CMPB      AL,#0                 ; [CPU_ALU] |345| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |345| 
        MOV       AL,AH                 ; [CPU_ALU] |345| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$24, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x159)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text:__relaxed_fmodf"
	.clink
	.global	||__relaxed_fmodf||

$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("__relaxed_fmodf")
	.dwattr $C$DW$29, DW_AT_low_pc(||__relaxed_fmodf||)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_linkage_name("__relaxed_fmodf")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$29, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x121)
	.dwattr $C$DW$29, DW_AT_decl_column(0x10)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 290,column 1,is_stmt,address ||__relaxed_fmodf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmodf||
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("y")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("x")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("y")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("x")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x124)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text:__relaxed_fminf"
	.clink
	.global	||__relaxed_fminf||

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("__relaxed_fminf")
	.dwattr $C$DW$35, DW_AT_low_pc(||__relaxed_fminf||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("__relaxed_fminf")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$35, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$35, DW_AT_decl_column(0x10)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 244,column 1,is_stmt,address ||__relaxed_fminf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fminf||
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("x")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("y")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("y")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 245,column 5,is_stmt,isa 0
        MINF32    R0H,R1H               ; [CPU_FPU] |245| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0xf6)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:__relaxed_fmaxf"
	.clink
	.global	||__relaxed_fmaxf||

$C$DW$40	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$40, DW_AT_name("__relaxed_fmaxf")
	.dwattr $C$DW$40, DW_AT_low_pc(||__relaxed_fmaxf||)
	.dwattr $C$DW$40, DW_AT_high_pc(0x00)
	.dwattr $C$DW$40, DW_AT_linkage_name("__relaxed_fmaxf")
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$40, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0xed)
	.dwattr $C$DW$40, DW_AT_decl_column(0x10)
	.dwattr $C$DW$40, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 238,column 1,is_stmt,address ||__relaxed_fmaxf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmaxf||
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_name("x")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_name("y")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("y")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 239,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |239| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$40, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$40, DW_AT_TI_end_line(0xf0)
	.dwattr $C$DW$40, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$40

	.sect	".text:__relaxed_atanf"
	.clink
	.global	||__relaxed_atanf||

$C$DW$45	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$45, DW_AT_name("__relaxed_atanf")
	.dwattr $C$DW$45, DW_AT_low_pc(||__relaxed_atanf||)
	.dwattr $C$DW$45, DW_AT_high_pc(0x00)
	.dwattr $C$DW$45, DW_AT_linkage_name("__relaxed_atanf")
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$45, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x117)
	.dwattr $C$DW$45, DW_AT_decl_column(0x10)
	.dwattr $C$DW$45, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 280,column 1,is_stmt,address ||__relaxed_atanf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atanf||
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("x")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("x")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$45, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$45, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$45, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$45

	.sect	".text:__isnormall"
	.clink
	.global	||__isnormall||

$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("__isnormall")
	.dwattr $C$DW$49, DW_AT_low_pc(||__isnormall||)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_linkage_name("__isnormall")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$49, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x154)
	.dwattr $C$DW$49, DW_AT_decl_column(0x18)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 341,column 1,is_stmt,address ||__isnormall||,isa 0

	.dwfde $C$DW$CIE, ||__isnormall||
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_name("e")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg12]


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
$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("e")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg12]

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
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$52, DW_AT_TI_call

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
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$49, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x156)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text:__isnormalf"
	.clink
	.global	||__isnormalf||

$C$DW$54	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$54, DW_AT_name("__isnormalf")
	.dwattr $C$DW$54, DW_AT_low_pc(||__isnormalf||)
	.dwattr $C$DW$54, DW_AT_high_pc(0x00)
	.dwattr $C$DW$54, DW_AT_linkage_name("__isnormalf")
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$54, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x150)
	.dwattr $C$DW$54, DW_AT_decl_column(0x18)
	.dwattr $C$DW$54, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 337,column 1,is_stmt,address ||__isnormalf||,isa 0

	.dwfde $C$DW$CIE, ||__isnormalf||
$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_name("f")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("f")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$54, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x152)
	.dwattr $C$DW$54, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$54

	.sect	".text:__isnormal"
	.clink
	.global	||__isnormal||

$C$DW$58	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$58, DW_AT_name("__isnormal")
	.dwattr $C$DW$58, DW_AT_low_pc(||__isnormal||)
	.dwattr $C$DW$58, DW_AT_high_pc(0x00)
	.dwattr $C$DW$58, DW_AT_linkage_name("__isnormal")
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$58, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$58, DW_AT_decl_column(0x18)
	.dwattr $C$DW$58, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 333,column 1,is_stmt,address ||__isnormal||,isa 0

	.dwfde $C$DW$CIE, ||__isnormal||
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_name("d")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg12]


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
$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("d")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg12]

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
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$61, DW_AT_TI_call

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
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$58, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$58, DW_AT_TI_end_line(0x14e)
	.dwattr $C$DW$58, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$58

	.sect	".text:__isnanl"
	.clink
	.global	||__isnanl||

$C$DW$63	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$63, DW_AT_name("__isnanl")
	.dwattr $C$DW$63, DW_AT_low_pc(||__isnanl||)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_linkage_name("__isnanl")
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$63, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0x148)
	.dwattr $C$DW$63, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$63, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 329,column 1,is_stmt,address ||__isnanl||,isa 0

	.dwfde $C$DW$CIE, ||__isnanl||
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_name("e")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg12]


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
$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("e")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg12]

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
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$66, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |329| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |329| 
        CMPB      AL,#0                 ; [CPU_ALU] |329| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |329| 
||$C$L4||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |329| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$63, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x14a)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$63

	.sect	".text:__isnanf"
	.clink
	.global	||__isnanf||

$C$DW$68	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$68, DW_AT_name("__isnanf")
	.dwattr $C$DW$68, DW_AT_low_pc(||__isnanf||)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_linkage_name("__isnanf")
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$68, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0x145)
	.dwattr $C$DW$68, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$68, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 326,column 1,is_stmt,address ||__isnanf||,isa 0

	.dwfde $C$DW$CIE, ||__isnanf||
$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_name("f")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("f")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$68, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x147)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$68

	.sect	".text:__isnan"
	.clink
	.global	||__isnan||

$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("__isnan")
	.dwattr $C$DW$72, DW_AT_low_pc(||__isnan||)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_linkage_name("__isnan")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$72, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x142)
	.dwattr $C$DW$72, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 323,column 1,is_stmt,address ||__isnan||,isa 0

	.dwfde $C$DW$CIE, ||__isnan||
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("d")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg12]


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
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("d")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg12]

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
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$75, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |323| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |323| 
        CMPB      AL,#0                 ; [CPU_ALU] |323| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |323| 
||$C$L6||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |323| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x144)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text:__isinfl"
	.clink
	.global	||__isinfl||

$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("__isinfl")
	.dwattr $C$DW$77, DW_AT_low_pc(||__isinfl||)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_linkage_name("__isinfl")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$77, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x167)
	.dwattr $C$DW$77, DW_AT_decl_column(0x18)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 360,column 1,is_stmt,address ||__isinfl||,isa 0

	.dwfde $C$DW$CIE, ||__isinfl||
$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_name("e")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg12]


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
$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("e")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg12]

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
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$80, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |360| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |360| 
        CMPB      AL,#0                 ; [CPU_ALU] |360| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |360| 
||$C$L7||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |360| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x168)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text:__isinff"
	.clink
	.global	||__isinff||

$C$DW$82	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$82, DW_AT_name("__isinff")
	.dwattr $C$DW$82, DW_AT_low_pc(||__isinff||)
	.dwattr $C$DW$82, DW_AT_high_pc(0x00)
	.dwattr $C$DW$82, DW_AT_linkage_name("__isinff")
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$82, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x163)
	.dwattr $C$DW$82, DW_AT_decl_column(0x18)
	.dwattr $C$DW$82, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 356,column 1,is_stmt,address ||__isinff||,isa 0

	.dwfde $C$DW$CIE, ||__isinff||
$C$DW$83	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$83, DW_AT_name("f")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("f")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$82, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$82, DW_AT_TI_end_line(0x164)
	.dwattr $C$DW$82, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$82

	.sect	".text:__isinf"
	.clink
	.global	||__isinf||

$C$DW$86	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$86, DW_AT_name("__isinf")
	.dwattr $C$DW$86, DW_AT_low_pc(||__isinf||)
	.dwattr $C$DW$86, DW_AT_high_pc(0x00)
	.dwattr $C$DW$86, DW_AT_linkage_name("__isinf")
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$86, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0x165)
	.dwattr $C$DW$86, DW_AT_decl_column(0x18)
	.dwattr $C$DW$86, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 358,column 1,is_stmt,address ||__isinf||,isa 0

	.dwfde $C$DW$CIE, ||__isinf||
$C$DW$87	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$87, DW_AT_name("d")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg12]


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
$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("d")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg12]

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
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$89, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |358| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |358| 
        CMPB      AL,#0                 ; [CPU_ALU] |358| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |358| 
||$C$L9||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |358| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$86, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$86, DW_AT_TI_end_line(0x166)
	.dwattr $C$DW$86, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$86

	.sect	".text:__isfinitel"
	.clink
	.global	||__isfinitel||

$C$DW$91	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$91, DW_AT_name("__isfinitel")
	.dwattr $C$DW$91, DW_AT_low_pc(||__isfinitel||)
	.dwattr $C$DW$91, DW_AT_high_pc(0x00)
	.dwattr $C$DW$91, DW_AT_linkage_name("__isfinitel")
	.dwattr $C$DW$91, DW_AT_external
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$91, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$91, DW_AT_decl_column(0x18)
	.dwattr $C$DW$91, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 320,column 1,is_stmt,address ||__isfinitel||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitel||
$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_name("e")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg12]


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
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("e")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg12]

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
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$91, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$91, DW_AT_TI_end_line(0x140)
	.dwattr $C$DW$91, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$91

	.sect	".text:__isfinitef"
	.clink
	.global	||__isfinitef||

$C$DW$95	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$95, DW_AT_name("__isfinitef")
	.dwattr $C$DW$95, DW_AT_low_pc(||__isfinitef||)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_linkage_name("__isfinitef")
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$95, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$95, DW_AT_decl_column(0x18)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 318,column 1,is_stmt,address ||__isfinitef||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitef||
$C$DW$96	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$96, DW_AT_name("f")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$97	.dwtag  DW_TAG_variable
	.dwattr $C$DW$97, DW_AT_name("f")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$95, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x13e)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$95

	.sect	".text:__isfinite"
	.clink
	.global	||__isfinite||

$C$DW$99	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$99, DW_AT_name("__isfinite")
	.dwattr $C$DW$99, DW_AT_low_pc(||__isfinite||)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_linkage_name("__isfinite")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$99, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$99, DW_AT_decl_column(0x18)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 316,column 1,is_stmt,address ||__isfinite||,isa 0

	.dwfde $C$DW$CIE, ||__isfinite||
$C$DW$100	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$100, DW_AT_name("d")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg12]


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
$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("d")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg12]

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
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$99, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x13c)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$99

	.sect	".text:__fpclassifyl"
	.clink
	.global	||__fpclassifyl||

$C$DW$103	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$103, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$103, DW_AT_low_pc(||__fpclassifyl||)
	.dwattr $C$DW$103, DW_AT_high_pc(0x00)
	.dwattr $C$DW$103, DW_AT_linkage_name("__fpclassifyl")
	.dwattr $C$DW$103, DW_AT_external
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$103, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$103, DW_AT_decl_column(0x18)
	.dwattr $C$DW$103, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 412,column 1,is_stmt,address ||__fpclassifyl||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyl||
$C$DW$104	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$104, DW_AT_name("e")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassifyl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyl||:
$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("e")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to e
$C$DW$106	.dwtag  DW_TAG_variable
	.dwattr $C$DW$106, DW_AT_name("e")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg12]

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
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$107, DW_AT_TI_call

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
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$108, DW_AT_TI_call

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
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$109, DW_AT_TI_call

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
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$103, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$103, DW_AT_TI_end_line(0x1aa)
	.dwattr $C$DW$103, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$103

	.sect	".text:__fpclassifyf"
	.clink
	.global	||__fpclassifyf||

$C$DW$111	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$111, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$111, DW_AT_low_pc(||__fpclassifyf||)
	.dwattr $C$DW$111, DW_AT_high_pc(0x00)
	.dwattr $C$DW$111, DW_AT_linkage_name("__fpclassifyf")
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$111, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0x179)
	.dwattr $C$DW$111, DW_AT_decl_column(0x18)
	.dwattr $C$DW$111, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 378,column 1,is_stmt,address ||__fpclassifyf||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyf||
$C$DW$112	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$112, DW_AT_name("f")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("f")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L15||:    
	.dwcfi	remember_state
        MOVB      AL,#1                 ; [CPU_ALU] |383| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_TI_return

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
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_return

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
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L18||:    
        MOVB      AL,#0                 ; [CPU_ALU] |383| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$111, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$111, DW_AT_TI_end_line(0x188)
	.dwattr $C$DW$111, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$111

	.sect	".text:__fpclassify"
	.clink
	.global	||__fpclassify||

$C$DW$119	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$119, DW_AT_name("__fpclassify")
	.dwattr $C$DW$119, DW_AT_low_pc(||__fpclassify||)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_linkage_name("__fpclassify")
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$119, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$119, DW_AT_decl_column(0x18)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 395,column 1,is_stmt,address ||__fpclassify||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassify||
$C$DW$120	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$120, DW_AT_name("d")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassify                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassify||:
$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("d")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to d
$C$DW$122	.dwtag  DW_TAG_variable
	.dwattr $C$DW$122, DW_AT_name("d")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg12]

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
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$123, DW_AT_TI_call

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
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$124, DW_AT_TI_call

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
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$125, DW_AT_TI_call

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
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$119, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0x199)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$119

	.sect	"pcmfpc_code"
	.clink

$C$DW$127	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$127, DW_AT_name("pf_output_init")
	.dwattr $C$DW$127, DW_AT_low_pc(||pf_output_init||)
	.dwattr $C$DW$127, DW_AT_high_pc(0x00)
	.dwattr $C$DW$127, DW_AT_linkage_name("pf_output_init")
	.dwattr $C$DW$127, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$127, DW_AT_decl_line(0x22a)
	.dwattr $C$DW$127, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$127, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 555,column 1,is_stmt,address ||pf_output_init||,isa 0

	.dwfde $C$DW$CIE, ||pf_output_init||
$C$DW$128	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$128, DW_AT_name("out")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: pf_output_init                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||pf_output_init||:
;* AR4   assigned to out
$C$DW$129	.dwtag  DW_TAG_variable
	.dwattr $C$DW$129, DW_AT_name("out")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 562,column 5,is_stmt,isa 0
        MOVB      XAR0,#140             ; [CPU_ALU] |562| 
        ZERO      R0H                   ; [CPU_FPU] |562| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |562| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 562,column 31,is_stmt,isa 0
        MOVB      XAR0,#142             ; [CPU_ALU] |562| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |562| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 562,column 57,is_stmt,isa 0
        MOVB      XAR0,#144             ; [CPU_ALU] |562| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |562| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 563,column 5,is_stmt,isa 0
        MOVB      XAR0,#146             ; [CPU_ALU] |563| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 569,column 24,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |569| 
        MOVB      XAR1,#166             ; [CPU_ALU] |569| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 563,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |563| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 563,column 36,is_stmt,isa 0
        MOVB      XAR0,#148             ; [CPU_ALU] |563| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |563| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 9,is_stmt,isa 0
        MOVB      XAR0,#44              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 31,is_stmt,isa 0
        MOVB      XAR0,#60              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 53,is_stmt,isa 0
        MOVB      XAR0,#76              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 9,is_stmt,isa 0
        MOVB      XAR0,#92              ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 38,is_stmt,isa 0
        MOVB      XAR0,#94              ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 67,is_stmt,isa 0
        MOVB      XAR0,#124             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 9,is_stmt,isa 0
        MOVB      XAR0,#46              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 31,is_stmt,isa 0
        MOVB      XAR0,#62              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 53,is_stmt,isa 0
        MOVB      XAR0,#78              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 9,is_stmt,isa 0
        MOVB      XAR0,#96              ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 38,is_stmt,isa 0
        MOVB      XAR0,#98              ; [CPU_ALU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 559,column 5,is_stmt,isa 0
        MOVB      *+XAR4[0],#1,UNC      ; [CPU_ALU] |559| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 559,column 30,is_stmt,isa 0
        MOVB      *+XAR4[1],#1,UNC      ; [CPU_ALU] |559| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 559,column 50,is_stmt,isa 0
        MOVB      *+XAR4[2],#1,UNC      ; [CPU_ALU] |559| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 559,column 68,is_stmt,isa 0
        MOV       *+XAR4[3],#0          ; [CPU_ALU] |559| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 560,column 5,is_stmt,isa 0
        MOV       *+XAR4[4],#0          ; [CPU_ALU] |560| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 560,column 19,is_stmt,isa 0
        MOV       *+XAR4[5],#0          ; [CPU_ALU] |560| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 560,column 37,is_stmt,isa 0
        MOV       *+XAR4[6],#0          ; [CPU_ALU] |560| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 560,column 52,is_stmt,isa 0
        MOV       *+XAR4[7],#0          ; [CPU_ALU] |560| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 38,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 569,column 24,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |569| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 67,is_stmt,isa 0
        MOVB      XAR0,#126             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 9,is_stmt,isa 0
        MOVB      XAR0,#48              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 31,is_stmt,isa 0
        MOVB      XAR0,#64              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 53,is_stmt,isa 0
        MOVB      XAR0,#80              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 9,is_stmt,isa 0
        MOVB      XAR0,#100             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 38,is_stmt,isa 0
        MOVB      XAR0,#102             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 67,is_stmt,isa 0
        MOVB      XAR0,#128             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 9,is_stmt,isa 0
        MOVB      XAR0,#50              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 31,is_stmt,isa 0
        MOVB      XAR0,#66              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 53,is_stmt,isa 0
        MOVB      XAR0,#82              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 9,is_stmt,isa 0
        MOVB      XAR0,#104             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 38,is_stmt,isa 0
        MOVB      XAR0,#106             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 67,is_stmt,isa 0
        MOVB      XAR0,#130             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 9,is_stmt,isa 0
        MOVB      XAR0,#52              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 31,is_stmt,isa 0
        MOVB      XAR0,#68              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 53,is_stmt,isa 0
        MOVB      XAR0,#84              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 9,is_stmt,isa 0
        MOVB      XAR0,#108             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 38,is_stmt,isa 0
        MOVB      XAR0,#110             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 67,is_stmt,isa 0
        MOVB      XAR0,#132             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 9,is_stmt,isa 0
        MOVB      XAR0,#54              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 31,is_stmt,isa 0
        MOVB      XAR0,#70              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 53,is_stmt,isa 0
        MOVB      XAR0,#86              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 9,is_stmt,isa 0
        MOVB      XAR0,#112             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 38,is_stmt,isa 0
        MOVB      XAR0,#114             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 67,is_stmt,isa 0
        MOVB      XAR0,#134             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 9,is_stmt,isa 0
        MOVB      XAR0,#56              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 31,is_stmt,isa 0
        MOVB      XAR0,#72              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 53,is_stmt,isa 0
        MOVB      XAR0,#88              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 9,is_stmt,isa 0
        MOVB      XAR0,#116             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 38,is_stmt,isa 0
        MOVB      XAR0,#118             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 67,is_stmt,isa 0
        MOVB      XAR0,#136             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 9,is_stmt,isa 0
        MOVB      XAR0,#58              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 31,is_stmt,isa 0
        MOVB      XAR0,#74              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 566,column 53,is_stmt,isa 0
        MOVB      XAR0,#90              ; [CPU_ALU] |566| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |566| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 9,is_stmt,isa 0
        MOVB      XAR0,#120             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 38,is_stmt,isa 0
        MOVB      XAR0,#122             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 567,column 67,is_stmt,isa 0
        MOVB      XAR0,#138             ; [CPU_ALU] |567| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |567| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 569,column 24,is_stmt,isa 0
        MOVB      XAR0,#150             ; [CPU_ALU] |569| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |569| 
        MOVB      XAR0,#152             ; [CPU_ALU] |569| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |569| 
        MOVB      XAR0,#154             ; [CPU_ALU] |569| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |569| 
        MOVB      XAR0,#156             ; [CPU_ALU] |569| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |569| 
        MOVB      XAR0,#158             ; [CPU_ALU] |569| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |569| 
        MOVB      XAR0,#160             ; [CPU_ALU] |569| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |569| 
        MOVB      XAR0,#162             ; [CPU_ALU] |569| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |569| 
        MOVB      XAR0,#164             ; [CPU_ALU] |569| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |569| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 561,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |561| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |561| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 561,column 32,is_stmt,isa 0
        MOVB      XAR0,#9               ; [CPU_ALU] |561| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |561| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 561,column 56,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |561| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |561| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 561,column 82,is_stmt,isa 0
        MOVB      XAR0,#27              ; [CPU_ALU] |561| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |561| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 9,is_stmt,isa 0
        MOVB      XAR0,#11              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 28,is_stmt,isa 0
        MOVB      XAR0,#19              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 47,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 71,is_stmt,isa 0
        MOVB      XAR0,#36              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 9,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 28,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 47,is_stmt,isa 0
        MOVB      XAR0,#29              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 71,is_stmt,isa 0
        MOVB      XAR0,#37              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 9,is_stmt,isa 0
        MOVB      XAR0,#13              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 28,is_stmt,isa 0
        MOVB      XAR0,#21              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 47,is_stmt,isa 0
        MOVB      XAR0,#30              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 71,is_stmt,isa 0
        MOVB      XAR0,#38              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 9,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 28,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 47,is_stmt,isa 0
        MOVB      XAR0,#31              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 71,is_stmt,isa 0
        MOVB      XAR0,#39              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 9,is_stmt,isa 0
        MOVB      XAR0,#15              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 28,is_stmt,isa 0
        MOVB      XAR0,#23              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 47,is_stmt,isa 0
        MOVB      XAR0,#32              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 71,is_stmt,isa 0
        MOVB      XAR0,#40              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 9,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 28,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 47,is_stmt,isa 0
        MOVB      XAR0,#33              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 71,is_stmt,isa 0
        MOVB      XAR0,#41              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 9,is_stmt,isa 0
        MOVB      XAR0,#17              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 28,is_stmt,isa 0
        MOVB      XAR0,#25              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 47,is_stmt,isa 0
        MOVB      XAR0,#34              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 71,is_stmt,isa 0
        MOVB      XAR0,#42              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 9,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 28,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 47,is_stmt,isa 0
        MOVB      XAR0,#35              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 565,column 71,is_stmt,isa 0
        MOVB      XAR0,#43              ; [CPU_ALU] |565| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |565| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 569,column 24,is_stmt,isa 0
        MOVB      XAR0,#168             ; [CPU_ALU] |569| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |569| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$127, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$127, DW_AT_TI_end_line(0x23a)
	.dwattr $C$DW$127, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$127

	.sect	".text"
	.clink

$C$DW$131	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$131, DW_AT_name("pf_finite")
	.dwattr $C$DW$131, DW_AT_low_pc(||pf_finite||)
	.dwattr $C$DW$131, DW_AT_high_pc(0x00)
	.dwattr $C$DW$131, DW_AT_linkage_name("pf_finite")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$131, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$131, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$131, DW_AT_decl_column(0x11)
	.dwattr $C$DW$131, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 64,column 1,is_stmt,address ||pf_finite||,isa 0

	.dwfde $C$DW$CIE, ||pf_finite||
$C$DW$132	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$132, DW_AT_name("x")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: pf_finite                     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||pf_finite||:
$C$DW$133	.dwtag  DW_TAG_variable
	.dwattr $C$DW$133, DW_AT_name("v")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_breg20 -2]

;* R0    assigned to x
$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("x")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[2],R0H           ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 69,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |69| 
        MOV       PH,#32640             ; [CPU_ALU] |69| 
        MOVB      XAR6,#0               ; [CPU_ALU] |69| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |69| 
        ANDB      AL,#0                 ; [CPU_ALU] |69| 
        AND       AH,#32640             ; [CPU_ALU] |69| 
        CMPL      ACC,P                 ; [CPU_ALU] |69| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |69| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |69| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$131, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$131, DW_AT_TI_end_line(0x46)
	.dwattr $C$DW$131, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$131

	.sect	"pcmfpc_code"
	.clink

$C$DW$136	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$136, DW_AT_name("pf_config_valid")
	.dwattr $C$DW$136, DW_AT_low_pc(||pf_config_valid||)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_linkage_name("pf_config_valid")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$136, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$136, DW_AT_decl_line(0x48)
	.dwattr $C$DW$136, DW_AT_decl_column(0x11)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(-18)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 73,column 1,is_stmt,address ||pf_config_valid||,isa 0

	.dwfde $C$DW$CIE, ||pf_config_valid||
$C$DW$137	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$137, DW_AT_name("c")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: pf_config_valid               FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 14 Auto,  0 SOE     *
;***************************************************************

||pf_config_valid||:
$C$DW$138	.dwtag  DW_TAG_variable
	.dwattr $C$DW$138, DW_AT_name("v")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_breg20 -4]

$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("v")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_breg20 -6]

$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("v")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_breg20 -8]

$C$DW$141	.dwtag  DW_TAG_variable
	.dwattr $C$DW$141, DW_AT_name("v")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_breg20 -10]

$C$DW$142	.dwtag  DW_TAG_variable
	.dwattr $C$DW$142, DW_AT_name("v")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_breg20 -12]

$C$DW$143	.dwtag  DW_TAG_variable
	.dwattr $C$DW$143, DW_AT_name("v")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_breg20 -14]

$C$DW$144	.dwtag  DW_TAG_variable
	.dwattr $C$DW$144, DW_AT_name("v")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_breg20 -16]

;* R1    assigned to $O$C24
;* R0    assigned to $O$C25
;* R0    assigned to $O$C26
;* R0    assigned to $O$C27
;* R0    assigned to $O$C28
;* R0    assigned to $O$C29
;* R0    assigned to $O$C30
;* AR6   assigned to $O$S1
;* AR4   assigned to c
$C$DW$145	.dwtag  DW_TAG_variable
	.dwattr $C$DW$145, DW_AT_name("c")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#16                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -18
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 74,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |74| 
        MOVB      XAR6,#0               ; [CPU_ALU] |74| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 74,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |74| 
        MOV       PH,#32640             ; [CPU_ALU] |74| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[4],R0H           ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 74,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |74| 
        ANDB      AL,#0                 ; [CPU_ALU] |74| 
        AND       AH,#32640             ; [CPU_ALU] |74| 
        CMPL      ACC,P                 ; [CPU_ALU] |74| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
        CMPF32    R0H,#0                ; [CPU_FPU] |74| 
        MOVST0    ZF, NF                ; [CPU_FPU] |74| 
        B         ||$C$L24||,LEQ        ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |68| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |68| 
        MOV32     *-SP[6],R0H           ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 74,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |74| 
        ANDB      AL,#0                 ; [CPU_ALU] |74| 
        AND       AH,#32640             ; [CPU_ALU] |74| 
        CMPL      ACC,P                 ; [CPU_ALU] |74| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
        CMPF32    R0H,#0                ; [CPU_FPU] |74| 
        MOVST0    ZF, NF                ; [CPU_FPU] |74| 
        B         ||$C$L24||,LEQ        ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |68| 
        MOV32     *-SP[8],R0H           ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 74,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |74| 
        ANDB      AL,#0                 ; [CPU_ALU] |74| 
        AND       AH,#32640             ; [CPU_ALU] |74| 
        CMPL      ACC,P                 ; [CPU_ALU] |74| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
        CMPF32    R0H,#0                ; [CPU_FPU] |74| 
        MOVST0    ZF, NF                ; [CPU_FPU] |74| 
        B         ||$C$L24||,LEQ        ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR4[2]         ; [CPU_FPU] |68| 
        MOV32     *-SP[10],R0H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 74,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |74| 
        ANDB      AL,#0                 ; [CPU_ALU] |74| 
        AND       AH,#32640             ; [CPU_ALU] |74| 
        CMPL      ACC,P                 ; [CPU_ALU] |74| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
        CMPF32    R0H,#0                ; [CPU_FPU] |74| 
        MOVST0    ZF, NF                ; [CPU_FPU] |74| 
        B         ||$C$L24||,LEQ        ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR4[6]         ; [CPU_FPU] |68| 
        MOV32     *-SP[12],R0H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 74,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |74| 
        ANDB      AL,#0                 ; [CPU_ALU] |74| 
        AND       AH,#32640             ; [CPU_ALU] |74| 
        CMPL      ACC,P                 ; [CPU_ALU] |74| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
        CMPF32    R0H,#0                ; [CPU_FPU] |74| 
        MOVST0    ZF, NF                ; [CPU_FPU] |74| 
        B         ||$C$L24||,LT         ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |68| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |68| 
        MOV32     *-SP[14],R0H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 74,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |74| 
        ANDB      AL,#0                 ; [CPU_ALU] |74| 
        AND       AH,#32640             ; [CPU_ALU] |74| 
        CMPL      ACC,P                 ; [CPU_ALU] |74| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
        CMPF32    R0H,#0                ; [CPU_FPU] |74| 
        MOVST0    ZF, NF                ; [CPU_FPU] |74| 
        B         ||$C$L24||,LT         ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |68| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |68| 
        MOV32     *-SP[16],R1H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 74,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[16]          ; [CPU_ALU] |74| 
        ANDB      AL,#0                 ; [CPU_ALU] |74| 
        AND       AH,#32640             ; [CPU_ALU] |74| 
        CMPL      ACC,P                 ; [CPU_ALU] |74| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
        CMPF32    R1H,#0                ; [CPU_FPU] |74| 
        MOVST0    ZF, NF                ; [CPU_FPU] |74| 
        B         ||$C$L24||,LEQ        ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
        MOVIZ     R0H,#16134            ; [CPU_FPU] |74| 
        MOVXI     R0H,#2706             ; [CPU_FPU] |74| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |74| 
        MOVST0    ZF, NF                ; [CPU_FPU] |74| 
        B         ||$C$L24||,GEQ        ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
        MOVB      XAR0,#14              ; [CPU_ALU] |74| 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |74| 
        CMPB      AH,#1                 ; [CPU_ALU] |74| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |74| 
||$C$L24||:    
        SUBB      SP,#16                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |74| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$136, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x52)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text"
	.clink

$C$DW$147	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$147, DW_AT_name("pf_rotation")
	.dwattr $C$DW$147, DW_AT_low_pc(||pf_rotation||)
	.dwattr $C$DW$147, DW_AT_high_pc(0x00)
	.dwattr $C$DW$147, DW_AT_linkage_name("pf_rotation")
	.dwattr $C$DW$147, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$147, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$147, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$147, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 143,column 1,is_stmt,address ||pf_rotation||,isa 0

	.dwfde $C$DW$CIE, ||pf_rotation||
$C$DW$148	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$148, DW_AT_name("theta")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$149	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$149, DW_AT_name("r")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: pf_rotation                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||pf_rotation||:
;* R0    assigned to theta
$C$DW$150	.dwtag  DW_TAG_variable
	.dwattr $C$DW$150, DW_AT_name("theta")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x2b]

;* AR4   assigned to r
$C$DW$151	.dwtag  DW_TAG_variable
	.dwattr $C$DW$151, DW_AT_name("r")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        DIV2PIF32 R2H,R0H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        DIV2PIF32 R1H,R0H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        COSPUF32  R2H,R2H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        SINPUF32  R1H,R1H               ; [CPU_FPU] |144| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        MOV32     *+XAR4[2],R2H         ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        MOV32     *+XAR4[4],R1H         ; [CPU_FPU] |144| 
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$147, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$147, DW_AT_TI_end_line(0x91)
	.dwattr $C$DW$147, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$147

	.sect	".text"
	.clink

$C$DW$153	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$153, DW_AT_name("pf_abc_to_dq")
	.dwattr $C$DW$153, DW_AT_low_pc(||pf_abc_to_dq||)
	.dwattr $C$DW$153, DW_AT_high_pc(0x00)
	.dwattr $C$DW$153, DW_AT_linkage_name("pf_abc_to_dq")
	.dwattr $C$DW$153, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$153, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$153, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$153, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 158,column 1,is_stmt,address ||pf_abc_to_dq||,isa 0

	.dwfde $C$DW$CIE, ||pf_abc_to_dq||
$C$DW$154	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$154, DW_AT_name("abc")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg12]

$C$DW$155	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$155, DW_AT_name("r")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg14]

$C$DW$156	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$156, DW_AT_name("dq")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: pf_abc_to_dq                  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||pf_abc_to_dq||:
;* R4    assigned to $O$C1
;* R2    assigned to $O$C2
;* R0    assigned to $O$C3
;* AR4   assigned to abc
$C$DW$157	.dwtag  DW_TAG_variable
	.dwattr $C$DW$157, DW_AT_name("abc")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to r
$C$DW$158	.dwtag  DW_TAG_variable
	.dwattr $C$DW$158, DW_AT_name("r")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to dq
$C$DW$159	.dwtag  DW_TAG_variable
	.dwattr $C$DW$159, DW_AT_name("dq")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg12]

;* R1    assigned to a
$C$DW$160	.dwtag  DW_TAG_variable
	.dwattr $C$DW$160, DW_AT_name("a")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to b
$C$DW$161	.dwtag  DW_TAG_variable
	.dwattr $C$DW$161, DW_AT_name("b")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |159| 

        ADDF32    R1H,R0H,R0H           ; [CPU_FPU] |159| 
||      MOV32     R4H,*+XAR4[2]         ; [CPU_FPU] |159| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        MOVIZ     R0H,#16147            ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0

        SUBF32    R3H,R1H,R4H           ; [CPU_FPU] |159| 
||      MOV32     R2H,*+XAR4[4]         ; [CPU_FPU] |159| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        MOVXI     R0H,#52538            ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        MOVIZ     R1H,#16042            ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        SUBF32    R4H,R4H,R2H           ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        SUBF32    R5H,R3H,R2H           ; [CPU_FPU] |159| 
        MOVXI     R1H,#43691            ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        MPYF32    R0H,R0H,R4H           ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0

        MPYF32    R1H,R1H,R5H           ; [CPU_FPU] |159| 
||      MOV32     R3H,*+XAR5[4]         ; [CPU_FPU] |161| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0

        MPYF32    R3H,R0H,R3H           ; [CPU_FPU] |161| 
||      MOV32     R2H,*+XAR5[2]         ; [CPU_FPU] |161| 

        MPYF32    R2H,R1H,R2H           ; [CPU_FPU] |161| 
        NOP       ; [CPU_ALU] 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 158,column 1,is_stmt,isa 0
        MOVL      XAR4,*-SP[8]          ; [CPU_ALU] |158| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R2H         ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        MOV32     R2H,*+XAR5[4]         ; [CPU_FPU] |161| 
        MOV32     R3H,*+XAR5[2]         ; [CPU_FPU] |161| 
        NEGF32    R2H,R2H               ; [CPU_FPU] |161| 
        MPYF32    R0H,R0H,R3H           ; [CPU_FPU] |161| 
        MPYF32    R1H,R1H,R2H           ; [CPU_FPU] |161| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |161| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR4[2],R0H         ; [CPU_FPU] |161| 
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$153, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$153, DW_AT_TI_end_line(0xa2)
	.dwattr $C$DW$153, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$153

	.sect	"pcmfpc_code"
	.clink

$C$DW$163	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$163, DW_AT_name("pf_plan")
	.dwattr $C$DW$163, DW_AT_low_pc(||pf_plan||)
	.dwattr $C$DW$163, DW_AT_high_pc(0x00)
	.dwattr $C$DW$163, DW_AT_linkage_name("pf_plan")
	.dwattr $C$DW$163, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$163, DW_AT_decl_line(0x92)
	.dwattr $C$DW$163, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$163, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 148,column 1,is_stmt,address ||pf_plan||,isa 0

	.dwfde $C$DW$CIE, ||pf_plan||
$C$DW$164	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$164, DW_AT_name("cfg")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg12]

$C$DW$165	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$165, DW_AT_name("theta")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$166	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$166, DW_AT_name("omega")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$167	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$167, DW_AT_name("duration")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x33]

$C$DW$168	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$168, DW_AT_name("p")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: pf_plan                       FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 10 SOE     *
;***************************************************************

||pf_plan||:
;* R3    assigned to $O$C3
;* AR4   assigned to $O$U28
;* AR4   assigned to cfg
$C$DW$169	.dwtag  DW_TAG_variable
	.dwattr $C$DW$169, DW_AT_name("cfg")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg12]

;* R0    assigned to theta
$C$DW$170	.dwtag  DW_TAG_variable
	.dwattr $C$DW$170, DW_AT_name("theta")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to omega
$C$DW$171	.dwtag  DW_TAG_variable
	.dwattr $C$DW$171, DW_AT_name("omega")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to duration
$C$DW$172	.dwtag  DW_TAG_variable
	.dwattr $C$DW$172, DW_AT_name("duration")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x33]

;* AR5   assigned to p
$C$DW$173	.dwtag  DW_TAG_variable
	.dwattr $C$DW$173, DW_AT_name("p")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg14]

;* R2    assigned to theta
$C$DW$174	.dwtag  DW_TAG_variable
	.dwattr $C$DW$174, DW_AT_name("theta")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 150,column 5,is_stmt,isa 0
        MPYF32    R3H,R2H,#16128        ; [CPU_FPU] |150| 
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 143,column 1,is_stmt,isa 0
        MPYF32    R2H,R1H,#0            ; [CPU_FPU] |143| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 6
	.dwcfi	cfa_offset, -8
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 151,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |151| 
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 8
	.dwcfi	cfa_offset, -10
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 10
	.dwcfi	cfa_offset, -12
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 150,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R3H         ; [CPU_FPU] |150| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 143,column 1,is_stmt,isa 0
        MOV32     R4H,*+XAR5[0]         ; [CPU_FPU] |143| 

        MPYF32    R2H,R4H,R2H           ; [CPU_FPU] |143| 
||      MOV32     R5H,*+XAR4[4]         ; [CPU_FPU] |150| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 150,column 30,is_stmt,isa 0
        DIVF32    R3H,R3H,R5H           ; [CPU_FPU] |150| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 143,column 1,is_stmt,isa 0
        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |143| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        MOVB      XAR1,#8               ; [CPU_ALU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 151,column 5,is_stmt,isa 0
        MOV32     R7H,*+XAR5[0]         ; [CPU_FPU] |151| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        DIV2PIF32 R5H,R2H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        DIV2PIF32 R4H,R2H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 150,column 30,is_stmt,isa 0
        MOV32     *+XAR5[2],R3H         ; [CPU_FPU] |150| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        COSPUF32  R5H,R5H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        SINPUF32  R4H,R4H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 151,column 5,is_stmt,isa 0
        MOV32     R6H,*+XAR4[AR0]       ; [CPU_FPU] |151| 
        MOVL      XAR4,XAR5             ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 143,column 1,is_stmt,isa 0
        MOV32     R3H,*+XAR5[0]         ; [CPU_FPU] |143| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 151,column 5,is_stmt,isa 0
        DIVF32    R7H,R7H,R6H           ; [CPU_FPU] |151| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 143,column 1,is_stmt,isa 0

        MOV32     *+XAR5[6],R2H         ; [CPU_FPU] |144| 
||      MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |143| 

        ADDB      XAR4,#6               ; [CPU_ALU] 

        ADDF32    R2H,R3H,R0H           ; [CPU_FPU] |143| 
||      MOV32     *+XAR5[AR1],R5H       ; [CPU_FPU] |144| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R4H       ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 5,is_stmt,isa 0
        ADDB      XAR4,#6               ; [CPU_ALU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        DIV2PIF32 R3H,R2H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        DIV2PIF32 R6H,R2H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        SINPUF32  R3H,R3H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        COSPUF32  R4H,R6H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 151,column 5,is_stmt,isa 0
        MOV32     *+XAR5[4],R7H         ; [CPU_FPU] |151| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R2H         ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        MOV32     *+XAR4[4],R3H         ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 143,column 1,is_stmt,isa 0

        MOV32     *+XAR4[2],R4H         ; [CPU_FPU] |144| 
||      ADDF32    R1H,R1H,R1H           ; [CPU_FPU] |143| 

        MOV32     R2H,*+XAR5[0]         ; [CPU_FPU] |143| 
        MPYF32    R1H,R2H,R1H           ; [CPU_FPU] |143| 
        NOP       ; [CPU_ALU] 
        ADDF32    R2H,R1H,R0H           ; [CPU_FPU] |143| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        DIV2PIF32 R1H,R2H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        DIV2PIF32 R0H,R2H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        COSPUF32  R1H,R1H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        SINPUF32  R0H,R0H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 5,is_stmt,isa 0
        ADDB      XAR4,#6               ; [CPU_ALU] |144| 
        MOV32     *+XAR4[0],R2H         ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        MOV32     *+XAR4[2],R1H         ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |144| 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 71
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
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$163, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$163, DW_AT_TI_end_line(0x9c)
	.dwattr $C$DW$163, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$163

	.sect	".text"
	.clink

$C$DW$176	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$176, DW_AT_name("pf_dq_to_abc")
	.dwattr $C$DW$176, DW_AT_low_pc(||pf_dq_to_abc||)
	.dwattr $C$DW$176, DW_AT_high_pc(0x00)
	.dwattr $C$DW$176, DW_AT_linkage_name("pf_dq_to_abc")
	.dwattr $C$DW$176, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$176, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$176, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$176, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 164,column 1,is_stmt,address ||pf_dq_to_abc||,isa 0

	.dwfde $C$DW$CIE, ||pf_dq_to_abc||
$C$DW$177	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$177, DW_AT_name("dq")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg12]

$C$DW$178	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$178, DW_AT_name("r")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg14]

$C$DW$179	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$179, DW_AT_name("abc")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_breg20 -10]


;***************************************************************
;* FNAME: pf_dq_to_abc                  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||pf_dq_to_abc||:
;* R1    assigned to $O$C1
;* R0    assigned to $O$C2
;* R4    assigned to $O$C3
;* R3    assigned to $O$C4
;* R2    assigned to $O$C5
;* R1    assigned to $O$C6
;* AR4   assigned to dq
$C$DW$180	.dwtag  DW_TAG_variable
	.dwattr $C$DW$180, DW_AT_name("dq")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to r
$C$DW$181	.dwtag  DW_TAG_variable
	.dwattr $C$DW$181, DW_AT_name("r")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to abc
$C$DW$182	.dwtag  DW_TAG_variable
	.dwattr $C$DW$182, DW_AT_name("abc")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg12]

;* R5    assigned to a
$C$DW$183	.dwtag  DW_TAG_variable
	.dwattr $C$DW$183, DW_AT_name("a")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x3f]

;* R2    assigned to b
$C$DW$184	.dwtag  DW_TAG_variable
	.dwattr $C$DW$184, DW_AT_name("b")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVIZ     R0H,#16221            ; [CPU_FPU] |166| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        MOVXI     R0H,#46039            ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOV32     R3H,*+XAR5[4]         ; [CPU_FPU] |165| 
        MOV32     R2H,*+XAR4[2]         ; [CPU_FPU] |165| 
        MOV32     R1H,*+XAR5[2]         ; [CPU_FPU] |165| 

        MPYF32    R5H,R3H,R2H           ; [CPU_FPU] |165| 
||      MOV32     R4H,*+XAR4[0]         ; [CPU_FPU] |165| 

        MPYF32    R6H,R1H,R4H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0
        MPYF32    R3H,R3H,R4H           ; [CPU_FPU] |165| 
        MPYF32    R1H,R1H,R2H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        SUBF32    R5H,R6H,R5H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0
        ADDF32    R2H,R1H,R3H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOV32     R1H,R5H               ; [CPU_FPU] |166| 
        MPYF32    R0H,R0H,R2H           ; [CPU_FPU] |166| 
        NEGF32    R1H,R1H               ; [CPU_FPU] |166| 
        MPYF32    R1H,R1H,#16128        ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 164,column 1,is_stmt,isa 0
        MOVL      XAR4,*-SP[10]         ; [CPU_ALU] |164| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        ADDF32    R2H,R0H,R1H           ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0

        SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |167| 
||      MOV32     *+XAR4[0],R5H         ; [CPU_FPU] |166| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOV32     *+XAR4[2],R2H         ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |167| 
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$176, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$176, DW_AT_TI_end_line(0xa8)
	.dwattr $C$DW$176, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$176

	.sect	"pcmfpc_code"
	.clink

$C$DW$186	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$186, DW_AT_name("pf_lambda_plan")
	.dwattr $C$DW$186, DW_AT_low_pc(||pf_lambda_plan||)
	.dwattr $C$DW$186, DW_AT_high_pc(0x00)
	.dwattr $C$DW$186, DW_AT_linkage_name("pf_lambda_plan")
	.dwattr $C$DW$186, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$186, DW_AT_decl_line(0xae)
	.dwattr $C$DW$186, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$186, DW_AT_TI_max_frame_size(-22)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 176,column 1,is_stmt,address ||pf_lambda_plan||,isa 0

	.dwfde $C$DW$CIE, ||pf_lambda_plan||
$C$DW$187	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$187, DW_AT_name("q")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg12]

$C$DW$188	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$188, DW_AT_name("c")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$189	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$189, DW_AT_name("up")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$190	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$190, DW_AT_name("low")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x33]

$C$DW$191	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$191, DW_AT_name("p")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: pf_lambda_plan                FR SIZE:  20           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  8 Auto, 10 SOE     *
;***************************************************************

||pf_lambda_plan||:
$C$DW$192	.dwtag  DW_TAG_variable
	.dwattr $C$DW$192, DW_AT_name("v")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_breg20 -4]

$C$DW$193	.dwtag  DW_TAG_variable
	.dwattr $C$DW$193, DW_AT_name("v")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_breg20 -6]

$C$DW$194	.dwtag  DW_TAG_variable
	.dwattr $C$DW$194, DW_AT_name("v")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_breg20 -8]

$C$DW$195	.dwtag  DW_TAG_variable
	.dwattr $C$DW$195, DW_AT_name("v")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_breg20 -10]

;* PL    assigned to $O$C8
;* R0    assigned to $O$C9
;* R1    assigned to $O$C10
;* R0    assigned to $O$C11
;* R3    assigned to $O$C12
;* R1    assigned to $O$C13
;* R0    assigned to $O$C14
;* R3    assigned to $O$C15
;* R1    assigned to $O$U79
;* R0    assigned to $O$U79
;* T     assigned to phase
$C$DW$196	.dwtag  DW_TAG_variable
	.dwattr $C$DW$196, DW_AT_name("phase")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg22]

;* PL    assigned to phase
$C$DW$197	.dwtag  DW_TAG_variable
	.dwattr $C$DW$197, DW_AT_name("phase")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg2]

;* R5    assigned to $O$U17
;* R4    assigned to $O$U25
;* R3    assigned to $O$U32
;* R6    assigned to $O$U12
;* AR4   assigned to $O$U78
;* AR7   assigned to $O$U84
;* R0    assigned to $O$U88
;* R5    assigned to $O$S1
;* R4    assigned to $O$S2
;* R3    assigned to $O$S3
;* AR4   assigned to q
$C$DW$198	.dwtag  DW_TAG_variable
	.dwattr $C$DW$198, DW_AT_name("q")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg12]

;* R0    assigned to c
$C$DW$199	.dwtag  DW_TAG_variable
	.dwattr $C$DW$199, DW_AT_name("c")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to up
$C$DW$200	.dwtag  DW_TAG_variable
	.dwattr $C$DW$200, DW_AT_name("up")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to low
$C$DW$201	.dwtag  DW_TAG_variable
	.dwattr $C$DW$201, DW_AT_name("low")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x33]

;* AR5   assigned to p
$C$DW$202	.dwtag  DW_TAG_variable
	.dwattr $C$DW$202, DW_AT_name("p")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg14]

;* R7    assigned to span
$C$DW$203	.dwtag  DW_TAG_variable
	.dwattr $C$DW$203, DW_AT_name("span")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x47]

;* R2    assigned to x
$C$DW$204	.dwtag  DW_TAG_variable
	.dwattr $C$DW$204, DW_AT_name("x")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x33]

;* R1    assigned to key
$C$DW$205	.dwtag  DW_TAG_variable
	.dwattr $C$DW$205, DW_AT_name("key")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x2f]

;* T     assigned to r
$C$DW$206	.dwtag  DW_TAG_variable
	.dwattr $C$DW$206, DW_AT_name("r")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg22]

;* AR4   assigned to k
$C$DW$207	.dwtag  DW_TAG_variable
	.dwattr $C$DW$207, DW_AT_name("k")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg12]

;* PH    assigned to j
$C$DW$208	.dwtag  DW_TAG_variable
	.dwattr $C$DW$208, DW_AT_name("j")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg3]

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
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 10
	.dwcfi	cfa_offset, -12
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -22
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 179,column 5,is_stmt,isa 0
        MOVB      XAR0,#23              ; [CPU_ALU] |179| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 179,column 30,is_stmt,isa 0
        MOVB      XAR1,#21              ; [CPU_ALU] |179| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 180,column 5,is_stmt,isa 0
        MPYF32    R4H,R1H,R0H           ; [CPU_FPU] |180| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 180,column 16,is_stmt,isa 0
        MPYF32    R3H,R2H,R0H           ; [CPU_FPU] |180| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 182,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |182| 
        MOV       PH,#32640             ; [CPU_ALU] |182| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 179,column 5,is_stmt,isa 0
        MOVB      *+XAR5[AR0],#6,UNC    ; [CPU_ALU] |179| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 179,column 30,is_stmt,isa 0
        MOV       *+XAR5[AR1],#0        ; [CPU_ALU] |179| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 179,column 47,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |179| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 180,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R4H         ; [CPU_FPU] |180| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 180,column 16,is_stmt,isa 0
        MOV32     *+XAR5[2],R3H         ; [CPU_FPU] |180| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 179,column 47,is_stmt,isa 0
        MOV       *+XAR5[AR0],#0        ; [CPU_ALU] |179| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 180,column 28,is_stmt,isa 0
        MOV32     R6H,*+XAR5[0]         ; [CPU_FPU] |180| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[4],R6H           ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 180,column 28,is_stmt,isa 0

        MOV32     R5H,*+XAR4[0]         ; [CPU_FPU] |181| 
||      ADDF32    R7H,R3H,R6H           ; [CPU_FPU] |180| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 182,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |182| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 181,column 5,is_stmt,isa 0
        CMPF32    R5H,#0                ; [CPU_FPU] |181| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 182,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |182| 
        AND       AH,#32640             ; [CPU_ALU] |182| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 181,column 5,is_stmt,isa 0
        NEGF32    R5H,R5H,LT            ; [CPU_FPU] |181| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 182,column 5,is_stmt,isa 0
        CMPL      ACC,P                 ; [CPU_ALU] |182| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 181,column 5,is_stmt,isa 0
        MOV32     R4H,*+XAR4[2]         ; [CPU_FPU] |181| 
        CMPF32    R4H,#0                ; [CPU_FPU] |181| 
        NEGF32    R4H,R4H,LT            ; [CPU_FPU] |181| 
        MOV32     R3H,*+XAR4[4]         ; [CPU_FPU] |181| 
        CMPF32    R3H,#0                ; [CPU_FPU] |181| 
        NEGF32    R3H,R3H,LT            ; [CPU_FPU] |181| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 182,column 5,is_stmt,isa 0
        B         ||$C$L34||,EQ         ; [CPU_ALU] |182| 
        ; branchcc occurs ; [] |182| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR5[2]         ; [CPU_ALU] |68| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 182,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |182| 
        AND       AH,#32640             ; [CPU_ALU] |182| 
        CMPL      ACC,P                 ; [CPU_ALU] |182| 
        B         ||$C$L34||,EQ         ; [CPU_ALU] |182| 
        ; branchcc occurs ; [] |182| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[8],R7H           ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 182,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |182| 
        ANDB      AL,#0                 ; [CPU_ALU] |182| 
        AND       AH,#32640             ; [CPU_ALU] |182| 
        CMPL      ACC,P                 ; [CPU_ALU] |182| 
        B         ||$C$L34||,EQ         ; [CPU_ALU] |182| 
        ; branchcc occurs ; [] |182| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        ADDF32    R1H,R1H,R2H           ; [CPU_FPU] |68| 
        ADDF32    R4H,R4H,R5H           ; [CPU_FPU] |68| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |68| 
        ADDF32    R2H,R3H,R4H           ; [CPU_FPU] |68| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R2H           ; [CPU_FPU] |68| 
        NOP       ; [CPU_ALU] 
        MOV32     *-SP[10],R0H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 182,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |182| 
        ANDB      AL,#0                 ; [CPU_ALU] |182| 
        AND       AH,#32640             ; [CPU_ALU] |182| 
        CMPL      ACC,P                 ; [CPU_ALU] |182| 
        B         ||$C$L34||,EQ         ; [CPU_ALU] |182| 
        ; branchcc occurs ; [] |182| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 184,column 5,is_stmt,isa 0
        MAXF32    R0H,#16256            ; [CPU_FPU] |184| 
        MOVL      XAR7,XAR5             ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 185,column 9,is_stmt,isa 0
        MOV       T,#0                  ; [CPU_ALU] |185| 
        MOVB      XAR6,#2               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 184,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,#13952        ; [CPU_FPU] |184| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV32     *+XAR5[4],R0H         ; [CPU_FPU] |184| 
        ADDB      XAR7,#6               ; [CPU_ALU] 
||$C$L25||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 186,column 9,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |186| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 187,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |187| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 186,column 9,is_stmt,isa 0
        LSL       AL,T                  ; [CPU_ALU] |186| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 187,column 9,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |187| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 186,column 9,is_stmt,isa 0
        MOV       PL,AL                 ; [CPU_ALU] |186| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 187,column 9,is_stmt,isa 0
        MOVST0    ZF, NF                ; [CPU_FPU] |187| 
        B         ||$C$L26||,LT         ; [CPU_ALU] |187| 
        ; branchcc occurs ; [] |187| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 192,column 13,is_stmt,isa 0
        MOV32     R1H,*+XAR5[0]         ; [CPU_FPU] |192| 
        SUBF32    R0H,R0H,R1H           ; [CPU_FPU] |192| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR7[0],R0H         ; [CPU_FPU] |192| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 193,column 13,is_stmt,isa 0
        MOV32     R3H,*+XAR5[0]         ; [CPU_FPU] |193| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |193| 
        SUBF32    R2H,R3H,R1H           ; [CPU_FPU] |193| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 194,column 13,is_stmt,isa 0

        SUBF32    R3H,R3H,R1H           ; [CPU_FPU] |194| 
||      MOV32     R0H,*+XAR5[2]         ; [CPU_FPU] |194| 

        NEGF32    R0H,R0H               ; [CPU_FPU] |194| 
        CMPF32    R3H,R0H               ; [CPU_FPU] |194| 
        MOVST0    ZF, NF                ; [CPU_FPU] |194| 
        B         ||$C$L27||,GT         ; [CPU_ALU] |194| 
        ; branchcc occurs ; [] |194| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 194,column 26,is_stmt,isa 0
        MOVL      XAR0,XAR5             ; [CPU_ALU] |194| 
        ADDB      XAR0,#21              ; [CPU_ALU] |194| 
        OR        *+XAR0[0],AL          ; [CPU_ALU] |194| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 196,column 9,is_stmt,isa 0
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |196| 
        CMPF32    R1H,#0                ; [CPU_FPU] |196| 
        MOVST0    ZF, NF                ; [CPU_FPU] |196| 
        B         ||$C$L28||,NEQ        ; [CPU_ALU] |196| 
        ; branchcc occurs ; [] |196| 
        B         ||$C$L29||,UNC        ; [CPU_ALU] |196| 
        ; branch occurs ; [] |196| 
||$C$L26||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 188,column 13,is_stmt,isa 0
        MOV32     R1H,*+XAR5[2]         ; [CPU_FPU] |188| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |188| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR7[0],R0H         ; [CPU_FPU] |188| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 189,column 13,is_stmt,isa 0
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |189| 
        MOV32     R0H,*+XAR5[2]         ; [CPU_FPU] |189| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |189| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 190,column 13,is_stmt,isa 0
        SUBF32    R3H,R0H,R1H           ; [CPU_FPU] |190| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 189,column 13,is_stmt,isa 0
        SUBF32    R2H,R0H,R1H           ; [CPU_FPU] |189| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 190,column 13,is_stmt,isa 0
        CMPF32    R3H,R0H               ; [CPU_FPU] |190| 
        MOVST0    ZF, NF                ; [CPU_FPU] |190| 
        B         ||$C$L27||,LEQ        ; [CPU_ALU] |190| 
        ; branchcc occurs ; [] |190| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 190,column 25,is_stmt,isa 0
        MOVL      XAR0,XAR5             ; [CPU_ALU] |190| 
        ADDB      XAR0,#21              ; [CPU_ALU] |190| 
        OR        *+XAR0[0],AL          ; [CPU_ALU] |190| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] 
||$C$L27||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 196,column 9,is_stmt,isa 0
        CMPF32    R1H,#0                ; [CPU_FPU] |196| 
        MOVST0    ZF, NF                ; [CPU_FPU] |196| 
        B         ||$C$L29||,EQ         ; [CPU_ALU] |196| 
        ; branchcc occurs ; [] |196| 
||$C$L28||:    
        CMPF32    R2H,R0H               ; [CPU_FPU] |196| 
        MOVST0    ZF, NF                ; [CPU_FPU] |196| 
        B         ||$C$L29||,LEQ        ; [CPU_ALU] |196| 
        ; branchcc occurs ; [] |196| 
        MOV32     R0H,*+XAR5[0]         ; [CPU_FPU] |196| 
        CMPF32    R2H,R0H               ; [CPU_FPU] |196| 
        MOVST0    ZF, NF                ; [CPU_FPU] |196| 
        B         ||$C$L29||,GEQ        ; [CPU_ALU] |196| 
        ; branchcc occurs ; [] |196| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 197,column 13,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |197| 
        MOV       ACC,*+XAR5[AR0] << 1  ; [CPU_ALU] |197| 
        ADDL      ACC,XAR5              ; [CPU_ALU] |197| 
        MOVL      XAR1,ACC              ; [CPU_ALU] |197| 
        MOVB      XAR0,#12              ; [CPU_ALU] |197| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 197,column 34,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |197| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 197,column 13,is_stmt,isa 0
        MOV32     *+XAR1[AR0],R2H       ; [CPU_FPU] |197| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 197,column 34,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |197| 
        ADDU      ACC,*+XAR5[AR0]       ; [CPU_ALU] |197| 
        MOVL      XAR1,ACC              ; [CPU_ALU] |197| 
        MOVB      XAR0,#18              ; [CPU_ALU] |197| 
        MOV       *+XAR1[AR0],P         ; [CPU_ALU] |197| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 197,column 59,is_stmt,isa 0
        MOVL      XAR0,XAR5             ; [CPU_ALU] |197| 
        ADDB      XAR0,#22              ; [CPU_ALU] |197| 
        INC       *+XAR0[0]             ; [CPU_ALU] |197| 
||$C$L29||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 185,column 14,is_stmt,isa 0
        MOV       AL,T                  ; [CPU_ALU] |185| 
        ADDB      XAR4,#2               ; [CPU_ALU] |185| 
        ADDB      XAR7,#2               ; [CPU_ALU] |185| 
        ADDB      AL,#1                 ; [CPU_ALU] |185| 
        MOV       T,AL                  ; [CPU_FPU] |185| 
        BANZ      ||$C$L25||,AR6--      ; [CPU_ALU] |185| 
        ; branchcc occurs ; [] |185| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 200,column 14,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |200| 
        MOV       AL,*+XAR5[AR0]        ; [CPU_ALU] |200| 
        CMPB      AL,#1                 ; [CPU_ALU] |200| 
        B         ||$C$L33||,LOS        ; [CPU_ALU] |200| 
        ; branchcc occurs ; [] |200| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 200,column 9,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |200| 
||$C$L30||:    
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 201,column 9,is_stmt,isa 0
        MOV       ACC,AR4 << 1          ; [CPU_ALU] |201| 
        ADDL      ACC,XAR5              ; [CPU_ALU] |201| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |201| 
        MOVB      XAR0,#12              ; [CPU_ALU] |201| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 201,column 25,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |201| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 201,column 9,is_stmt,isa 0
        MOV32     R1H,*+XAR6[AR0]       ; [CPU_FPU] |201| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 201,column 25,is_stmt,isa 0
        ADDU      ACC,AR4               ; [CPU_ALU] |201| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |201| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 201,column 43,is_stmt,isa 0
        MOV       PH,AR4                ; [CPU_ALU] |201| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 201,column 25,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |201| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 201,column 43,is_stmt,isa 0
        MOV       AL,PH                 ; [CPU_ALU] |201| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 201,column 25,is_stmt,isa 0
        MOV       T,*+XAR6[AR0]         ; [CPU_ALU] |201| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 201,column 43,is_stmt,isa 0
        B         ||$C$L32||,EQ         ; [CPU_ALU] |201| 
        ; branchcc occurs ; [] |201| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L31||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 202,column 15,is_stmt,isa 0
        ADDB      AL,#-1                ; [CPU_ALU] |202| 
        MOV       PL,AL                 ; [CPU_ALU] |202| 
        MOV       ACC,PL << 1           ; [CPU_ALU] |202| 
        ADDL      ACC,XAR5              ; [CPU_ALU] |202| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |202| 
        MOVB      XAR0,#12              ; [CPU_ALU] |202| 
        MOV32     R0H,*+XAR6[AR0]       ; [CPU_FPU] |202| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |202| 
        MOVST0    ZF, NF                ; [CPU_FPU] |202| 
        B         ||$C$L32||,GEQ        ; [CPU_ALU] |202| 
        ; branchcc occurs ; [] |202| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 203,column 13,is_stmt,isa 0
        MOV       ACC,PH << 1           ; [CPU_ALU] |203| 
        MOVB      XAR0,#12              ; [CPU_ALU] |203| 
        ADDL      ACC,XAR5              ; [CPU_ALU] |203| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |203| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 203,column 40,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |203| 
        ADDU      ACC,PL                ; [CPU_ALU] |203| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |203| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 203,column 13,is_stmt,isa 0
        MOV32     *+XAR6[AR0],R0H       ; [CPU_FPU] |203| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 203,column 40,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |203| 
        ADDU      ACC,PH                ; [CPU_ALU] |203| 
        ADDB      XAR7,#18              ; [CPU_ALU] |203| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |203| 
        MOVB      XAR0,#18              ; [CPU_FPU] |203| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 202,column 15,is_stmt,isa 0
        MOV       PH,PL                 ; [CPU_ALU] |202| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 203,column 40,is_stmt,isa 0
        MOV       AL,*+XAR7[0]          ; [CPU_ALU] |203| 
        MOV       *+XAR6[AR0],AL        ; [CPU_ALU] |203| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 202,column 15,is_stmt,isa 0
        MOV       AL,PH                 ; [CPU_ALU] |202| 
        B         ||$C$L31||,NEQ        ; [CPU_ALU] |202| 
        ; branchcc occurs ; [] |202| 
||$C$L32||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 205,column 9,is_stmt,isa 0
        MOV       ACC,PH << 1           ; [CPU_ALU] |205| 
        ADDL      ACC,XAR5              ; [CPU_ALU] |205| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |205| 
        MOVB      XAR0,#12              ; [CPU_ALU] |205| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 205,column 25,is_stmt,isa 0
        MOVL      ACC,XAR5              ; [CPU_ALU] |205| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 205,column 9,is_stmt,isa 0
        MOV32     *+XAR6[AR0],R1H       ; [CPU_FPU] |205| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 205,column 25,is_stmt,isa 0
        ADDU      ACC,PH                ; [CPU_ALU] |205| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |205| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 200,column 14,is_stmt,isa 0
        ADDB      XAR4,#1               ; [CPU_ALU] |200| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 205,column 25,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_FPU] |205| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 200,column 14,is_stmt,isa 0
        MOV       AL,AR4                ; [CPU_ALU] |200| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 205,column 25,is_stmt,isa 0
        MOV       *+XAR6[AR0],T         ; [CPU_ALU] |205| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 200,column 14,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |200| 
        CMP       AL,*+XAR5[AR0]        ; [CPU_ALU] |200| 
        B         ||$C$L30||,LO         ; [CPU_ALU] |200| 
        ; branchcc occurs ; [] |200| 
||$C$L33||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 207,column 5,is_stmt,isa 0
        MOVB      XAR0,#23              ; [CPU_ALU] |207| 
        MOV       *+XAR5[AR0],#0        ; [CPU_ALU] |207| 
||$C$L34||:    
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 71
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
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$186, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$186, DW_AT_TI_end_line(0xd0)
	.dwattr $C$DW$186, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$186

	.sect	".text"
	.clink

$C$DW$210	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$210, DW_AT_name("pf_lambda_projection")
	.dwattr $C$DW$210, DW_AT_low_pc(||pf_lambda_projection||)
	.dwattr $C$DW$210, DW_AT_high_pc(0x00)
	.dwattr $C$DW$210, DW_AT_linkage_name("pf_lambda_projection")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$210, DW_AT_decl_line(0x164)
	.dwattr $C$DW$210, DW_AT_decl_column(0x10)
	.dwattr $C$DW$210, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 358,column 1,is_stmt,address ||pf_lambda_projection||,isa 0

	.dwfde $C$DW$CIE, ||pf_lambda_projection||
$C$DW$211	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$211, DW_AT_name("q")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg12]

$C$DW$212	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$212, DW_AT_name("hw")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg0]

$C$DW$213	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$213, DW_AT_name("cu")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$214	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$214, DW_AT_name("cl")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$215	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$215, DW_AT_name("lambda")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x33]

$C$DW$216	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$216, DW_AT_name("next")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: pf_lambda_projection          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||pf_lambda_projection||:
;* R2    assigned to z
$C$DW$217	.dwtag  DW_TAG_variable
	.dwattr $C$DW$217, DW_AT_name("z")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x33]

;* R4    assigned to z
$C$DW$218	.dwtag  DW_TAG_variable
	.dwattr $C$DW$218, DW_AT_name("z")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x3b]

;* R3    assigned to z
$C$DW$219	.dwtag  DW_TAG_variable
	.dwattr $C$DW$219, DW_AT_name("z")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x37]

;* R3    assigned to $O$U17
;* R2    assigned to $O$S1
;* R4    assigned to $O$S2
;* AR4   assigned to q
$C$DW$220	.dwtag  DW_TAG_variable
	.dwattr $C$DW$220, DW_AT_name("q")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg12]

;* AL    assigned to hw
$C$DW$221	.dwtag  DW_TAG_variable
	.dwattr $C$DW$221, DW_AT_name("hw")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg0]

;* R0    assigned to cu
$C$DW$222	.dwtag  DW_TAG_variable
	.dwattr $C$DW$222, DW_AT_name("cu")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to cl
$C$DW$223	.dwtag  DW_TAG_variable
	.dwattr $C$DW$223, DW_AT_name("cl")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to lambda
$C$DW$224	.dwtag  DW_TAG_variable
	.dwattr $C$DW$224, DW_AT_name("lambda")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x33]

;* AR5   assigned to next
$C$DW$225	.dwtag  DW_TAG_variable
	.dwattr $C$DW$225, DW_AT_name("next")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg14]

;* R3    assigned to sum
$C$DW$226	.dwtag  DW_TAG_variable
	.dwattr $C$DW$226, DW_AT_name("sum")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x37]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 360,column 19,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |360| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 360,column 5,is_stmt,isa 0
        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |360| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |360| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 360,column 19,is_stmt,isa 0
        B         ||$C$L35||,TC         ; [CPU_ALU] |360| 
        ; branchcc occurs ; [] |360| 
        SUBF32    R4H,R3H,R0H           ; [CPU_FPU] |360| 
        ADDF32    R3H,R3H,R1H           ; [CPU_FPU] |360| 
        MAXF32    R4H,#0                ; [CPU_FPU] |360| 
        MINF32    R3H,#0                ; [CPU_FPU] |360| 
        ADDF32    R3H,R3H,R4H           ; [CPU_FPU] |360| 
        NOP       ; [CPU_ALU] 
||$C$L35||:    
        MOV32     *+XAR5[0],R3H         ; [CPU_FPU] |360| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 361,column 19,is_stmt,isa 0
        TBIT      AL,#1                 ; [CPU_ALU] |361| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 361,column 5,is_stmt,isa 0
        MOV32     R4H,*+XAR4[2]         ; [CPU_FPU] |361| 
        ADDF32    R4H,R4H,R2H           ; [CPU_FPU] |361| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 361,column 19,is_stmt,isa 0
        B         ||$C$L36||,TC         ; [CPU_ALU] |361| 
        ; branchcc occurs ; [] |361| 
        SUBF32    R5H,R4H,R0H           ; [CPU_FPU] |361| 
        ADDF32    R4H,R4H,R1H           ; [CPU_FPU] |361| 
        MAXF32    R5H,#0                ; [CPU_FPU] |361| 
        MINF32    R4H,#0                ; [CPU_FPU] |361| 
        ADDF32    R4H,R4H,R5H           ; [CPU_FPU] |361| 
        NOP       ; [CPU_ALU] 
||$C$L36||:    
        MOV32     *+XAR5[2],R4H         ; [CPU_FPU] |361| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 362,column 19,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |362| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 361,column 85,is_stmt,isa 0

        ADDF32    R3H,R3H,R4H           ; [CPU_FPU] |361| 
||      MOV32     R5H,*+XAR4[4]         ; [CPU_FPU] |362| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 362,column 5,is_stmt,isa 0
        ADDF32    R2H,R2H,R5H           ; [CPU_FPU] |362| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 362,column 19,is_stmt,isa 0
        B         ||$C$L37||,TC         ; [CPU_ALU] |362| 
        ; branchcc occurs ; [] |362| 
        SUBF32    R0H,R2H,R0H           ; [CPU_FPU] |362| 
        ADDF32    R1H,R1H,R2H           ; [CPU_FPU] |362| 
        MAXF32    R0H,#0                ; [CPU_FPU] |362| 
        MINF32    R1H,#0                ; [CPU_FPU] |362| 
        ADDF32    R2H,R1H,R0H           ; [CPU_FPU] |362| 
        NOP       ; [CPU_ALU] 
||$C$L37||:    
        MOV32     *+XAR5[4],R2H         ; [CPU_FPU] |362| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 362,column 85,is_stmt,isa 0

        ADDF32    R0H,R2H,R3H           ; [CPU_FPU] |362| 
||      MOV32     R5H,*--SP             ; [CPU_FPU] 

	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$210, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$210, DW_AT_TI_end_line(0x16c)
	.dwattr $C$DW$210, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$210

	.sect	"pcmfpc_code"
	.clink

$C$DW$228	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$228, DW_AT_name("pf_lambda_root")
	.dwattr $C$DW$228, DW_AT_low_pc(||pf_lambda_root||)
	.dwattr $C$DW$228, DW_AT_high_pc(0x00)
	.dwattr $C$DW$228, DW_AT_linkage_name("pf_lambda_root")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$228, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$228, DW_AT_decl_line(0x178)
	.dwattr $C$DW$228, DW_AT_decl_column(0x11)
	.dwattr $C$DW$228, DW_AT_TI_max_frame_size(-20)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 378,column 1,is_stmt,address ||pf_lambda_root||,isa 0

	.dwfde $C$DW$CIE, ||pf_lambda_root||
$C$DW$229	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$229, DW_AT_name("q")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg12]

$C$DW$230	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$230, DW_AT_name("hw")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg0]

$C$DW$231	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$231, DW_AT_name("c")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$232	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$232, DW_AT_name("up")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$233	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$233, DW_AT_name("low")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x33]

$C$DW$234	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$234, DW_AT_name("next")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg14]

$C$DW$235	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$235, DW_AT_name("shared")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_breg20 -22]


;***************************************************************
;* FNAME: pf_lambda_root                FR SIZE:  18           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  6 Auto, 10 SOE     *
;***************************************************************

||pf_lambda_root||:
$C$DW$236	.dwtag  DW_TAG_variable
	.dwattr $C$DW$236, DW_AT_name("v")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_breg20 -4]

$C$DW$237	.dwtag  DW_TAG_variable
	.dwattr $C$DW$237, DW_AT_name("v")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_breg20 -6]

;* AL    assigned to $O$C20
;* PH    assigned to $O$C21
;* PH    assigned to $O$C22
;* AR1   assigned to $O$C23
;* AR5   assigned to $O$K12
;* AR4   assigned to $O$K12
;* R3    assigned to $O$U114
;* R3    assigned to $O$U114
;* R3    assigned to residual
$C$DW$238	.dwtag  DW_TAG_variable
	.dwattr $C$DW$238, DW_AT_name("residual")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x37]

;* R3    assigned to residual
$C$DW$239	.dwtag  DW_TAG_variable
	.dwattr $C$DW$239, DW_AT_name("residual")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to z
$C$DW$240	.dwtag  DW_TAG_variable
	.dwattr $C$DW$240, DW_AT_name("z")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x33]

;* R2    assigned to z
$C$DW$241	.dwtag  DW_TAG_variable
	.dwattr $C$DW$241, DW_AT_name("z")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x33]

;* R3    assigned to z
$C$DW$242	.dwtag  DW_TAG_variable
	.dwattr $C$DW$242, DW_AT_name("z")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to z
$C$DW$243	.dwtag  DW_TAG_variable
	.dwattr $C$DW$243, DW_AT_name("z")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x33]

;* R2    assigned to z
$C$DW$244	.dwtag  DW_TAG_variable
	.dwattr $C$DW$244, DW_AT_name("z")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x33]

;* R3    assigned to z
$C$DW$245	.dwtag  DW_TAG_variable
	.dwattr $C$DW$245, DW_AT_name("z")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x37]

;* AL    assigned to $O$U17
;* AR4   assigned to $O$U15
;* AL    assigned to $O$U31
;* AR6   assigned to $O$U30
;* PL    assigned to $O$U60
;* AR7   assigned to $O$U68
;* T     assigned to $O$U84
;* AR7   assigned to $O$K63
;* AR6   assigned to $O$K72
;* R3    assigned to $O$S1
;* R3    assigned to $O$S2
;* AR2   assigned to q
$C$DW$246	.dwtag  DW_TAG_variable
	.dwattr $C$DW$246, DW_AT_name("q")
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$246, DW_AT_location[DW_OP_reg8]

;* AR3   assigned to hw
$C$DW$247	.dwtag  DW_TAG_variable
	.dwattr $C$DW$247, DW_AT_name("hw")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_reg10]

$C$DW$248	.dwtag  DW_TAG_variable
	.dwattr $C$DW$248, DW_AT_name("next")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_breg20 -8]

;* AL    assigned to shared
$C$DW$249	.dwtag  DW_TAG_variable
	.dwattr $C$DW$249, DW_AT_name("shared")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg0]

;* R1    assigned to a
$C$DW$250	.dwtag  DW_TAG_variable
	.dwattr $C$DW$250, DW_AT_name("a")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to b
$C$DW$251	.dwtag  DW_TAG_variable
	.dwattr $C$DW$251, DW_AT_name("b")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to B
$C$DW$252	.dwtag  DW_TAG_variable
	.dwattr $C$DW$252, DW_AT_name("B")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x37]

;* R3    assigned to root
$C$DW$253	.dwtag  DW_TAG_variable
	.dwattr $C$DW$253, DW_AT_name("root")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to $O$S1
;* R2    assigned to $O$S2
;* R4    assigned to cu
$C$DW$254	.dwtag  DW_TAG_variable
	.dwattr $C$DW$254, DW_AT_name("cu")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x3b]

;* R1    assigned to cl
$C$DW$255	.dwtag  DW_TAG_variable
	.dwattr $C$DW$255, DW_AT_name("cl")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to lambda
$C$DW$256	.dwtag  DW_TAG_variable
	.dwattr $C$DW$256, DW_AT_name("lambda")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to sum
$C$DW$257	.dwtag  DW_TAG_variable
	.dwattr $C$DW$257, DW_AT_name("sum")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to $O$S1
;* R2    assigned to $O$S2
;* R4    assigned to cu
$C$DW$258	.dwtag  DW_TAG_variable
	.dwattr $C$DW$258, DW_AT_name("cu")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x3b]

;* R1    assigned to cl
$C$DW$259	.dwtag  DW_TAG_variable
	.dwattr $C$DW$259, DW_AT_name("cl")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to lambda
$C$DW$260	.dwtag  DW_TAG_variable
	.dwattr $C$DW$260, DW_AT_name("lambda")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to sum
$C$DW$261	.dwtag  DW_TAG_variable
	.dwattr $C$DW$261, DW_AT_name("sum")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x37]

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
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -20
        MOVZ      AR3,AL                ; [CPU_ALU] |378| 
        MOVL      XAR2,XAR4             ; [CPU_ALU] |378| 
        MOVL      ACC,*-SP[22]          ; [CPU_ALU] |378| 
        MOVL      *-SP[8],XAR5          ; [CPU_ALU] |378| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 383,column 5,is_stmt,isa 0
        B         ||$C$L38||,NEQ        ; [CPU_ALU] |383| 
        ; branchcc occurs ; [] |383| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 385,column 9,is_stmt,isa 0
        MOVL      XAR1,#||pf_lambda_work|| ; [CPU_ARAU] |385| 
        MOVL      XAR5,XAR1             ; [CPU_ALU] |385| 
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("pf_lambda_plan")
	.dwattr $C$DW$262, DW_AT_TI_call

        LCR       #||pf_lambda_plan||   ; [CPU_ALU] |385| 
        ; call occurs [#||pf_lambda_plan||] ; [] |385| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 385,column 46,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |385| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 387,column 5,is_stmt,isa 0
        MOVB      XAR0,#23              ; [CPU_ALU] |387| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 385,column 46,is_stmt,isa 0
        MOVB      XAR1,#24              ; [CPU_ALU] |385| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 387,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |387| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 385,column 46,is_stmt,isa 0
        MOVL      *+XAR4[AR1],XAR4      ; [CPU_ALU] |385| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 387,column 5,is_stmt,isa 0
        B         ||$C$L70||,NEQ        ; [CPU_ALU] |387| 
        ; branchcc occurs ; [] |387| 
        B         ||$C$L39||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L38||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 383,column 15,is_stmt,isa 0
        MOVB      XAR1,#24              ; [CPU_ALU] |383| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 387,column 5,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |387| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 383,column 15,is_stmt,isa 0
        MOVL      XAR5,#||pf_lambda_work|| ; [CPU_ARAU] |383| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 387,column 5,is_stmt,isa 0
        MOVB      XAR0,#23              ; [CPU_ALU] |387| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 383,column 15,is_stmt,isa 0
        MOVL      *+XAR5[AR1],ACC       ; [CPU_ALU] |383| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 387,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |387| 
        B         ||$C$L70||,NEQ        ; [CPU_ALU] |387| 
        ; branchcc occurs ; [] |387| 
||$C$L39||:    
        MOVW      DP,#||pf_lambda_work||+38 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 388,column 5,is_stmt,isa 0
        MOV       AL,AR3                ; [CPU_ALU] |388| 
        MOVB      XAR0,#21              ; [CPU_ALU] |388| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 390,column 9,is_stmt,isa 0
        MOV       @||pf_lambda_work||+38,#0 ; [CPU_ALU] |390| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 388,column 5,is_stmt,isa 0
        NOT       AL                    ; [CPU_ALU] |388| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 389,column 5,is_stmt,isa 0
        MOV32     R1H,*+XAR4[2]         ; [CPU_FPU] |389| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 388,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[AR0]        ; [CPU_ALU] |388| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 390,column 17,is_stmt,isa 0
        MOVZ      AR6,@||pf_lambda_work||+38 ; [CPU_ALU] |390| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 389,column 20,is_stmt,isa 0
        MOV       @||pf_lambda_work||+39,#0 ; [CPU_ALU] |389| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 390,column 17,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |390| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 388,column 5,is_stmt,isa 0
        OR        AL,AR3                ; [CPU_ALU] |388| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 389,column 5,is_stmt,isa 0
        NEGF32    R1H,R1H               ; [CPU_FPU] |389| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 388,column 5,is_stmt,isa 0
        MOV       @||pf_lambda_work||+36,AL ; [CPU_ALU] |388| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 390,column 17,is_stmt,isa 0
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |390| 
        CMP       AL,AR6                ; [CPU_ALU] |390| 
        B         ||$C$L58||,LO         ; [CPU_ALU] |390| 
        ; branchcc occurs ; [] |390| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L40||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 391,column 61,is_stmt,isa 0
        CMP       AL,AR6                ; [CPU_ALU] |391| 
        B         ||$C$L41||,HI         ; [CPU_ALU] |391| 
        ; branchcc occurs ; [] |391| 
        MOV       PH,@||pf_lambda_work||+36 ; [CPU_ALU] 
        MOV       AL,PH                 ; [CPU_ALU] 
        LSR       AL,1                  ; [CPU_ALU] 
        MOV       PL,AL                 ; [CPU_ALU] 
        MOV       AL,PH                 ; [CPU_ALU] 
        AND       AH,PL,#0x0001         ; [CPU_ALU] 
        LSR       AL,2                  ; [CPU_ALU] 
        MOVZ      AR7,AL                ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 392,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |392| 
        AND       AL,PH,#0x0001         ; [CPU_ALU] 
        ADD       AH,AL                 ; [CPU_ALU] 
        AND       AL,AR7,#0x0001        ; [CPU_ALU] 
        ADD       AL,AH                 ; [CPU_ALU] 
        MOV       T,AL                  ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 394,column 9,is_stmt,isa 0
        TBIT      PH,#0                 ; [CPU_ALU] |394| 
        B         ||$C$L42||,NTC        ; [CPU_ALU] |394| 
        ; branchcc occurs ; [] |394| 
        B         ||$C$L43||,UNC        ; [CPU_ALU] |394| 
        ; branch occurs ; [] |394| 
||$C$L41||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 391,column 61,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |391| 
        ADDU      ACC,AR6               ; [CPU_ALU] |391| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |391| 
        MOVB      XAR0,#18              ; [CPU_ALU] |391| 
        MOV       AL,AR3                ; [CPU_ALU] |391| 
        AND       AL,*+XAR5[AR0]        ; [CPU_ALU] |391| 
        B         ||$C$L57||,NEQ        ; [CPU_ALU] |391| 
        ; branchcc occurs ; [] |391| 
        MOV       PH,@||pf_lambda_work||+36 ; [CPU_ALU] 
        MOV       AL,PH                 ; [CPU_ALU] 
        LSR       AL,1                  ; [CPU_ALU] 
        MOV       PL,AL                 ; [CPU_ALU] 
        MOV       AL,PH                 ; [CPU_ALU] 
        LSR       AL,2                  ; [CPU_ALU] 
        MOVZ      AR7,AL                ; [CPU_ALU] 
        AND       AH,PL,#0x0001         ; [CPU_ALU] 
        AND       AL,PH,#0x0001         ; [CPU_ALU] 
        ADD       AH,AL                 ; [CPU_ALU] 
        AND       AL,AR7,#0x0001        ; [CPU_FPU] 
        ADD       AL,AH                 ; [CPU_ALU] 
        MOV       T,AL                  ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 392,column 9,is_stmt,isa 0
        MOV       ACC,AR6 << 1          ; [CPU_ALU] |392| 
        ADDL      ACC,XAR4              ; [CPU_ALU] |392| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |392| 
        MOVB      XAR0,#12              ; [CPU_ALU] |392| 
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |392| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 394,column 9,is_stmt,isa 0
        TBIT      PH,#0                 ; [CPU_ALU] |394| 
        B         ||$C$L43||,TC         ; [CPU_ALU] |394| 
        ; branchcc occurs ; [] |394| 
||$C$L42||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 393,column 9,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |393| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 395,column 9,is_stmt,isa 0
        B         ||$C$L45||,UNC        ; [CPU_ALU] |395| 
        ; branch occurs ; [] |395| 
||$C$L43||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 394,column 25,is_stmt,isa 0
        TBIT      AR3,#0                ; [CPU_ALU] |394| 
        B         ||$C$L44||,NTC        ; [CPU_ALU] |394| 
        ; branchcc occurs ; [] |394| 
        MOV32     R3H,*+XAR2[0]         ; [CPU_FPU] |394| 
        B         ||$C$L45||,UNC        ; [CPU_ALU] |394| 
        ; branch occurs ; [] |394| 
||$C$L44||:    
        MOV32     R3H,*+XAR4[6]         ; [CPU_FPU] |394| 
||$C$L45||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 395,column 9,is_stmt,isa 0
        TBIT      PL,#0                 ; [CPU_ALU] |395| 
        B         ||$C$L48||,NTC        ; [CPU_ALU] |395| 
        ; branchcc occurs ; [] |395| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 395,column 25,is_stmt,isa 0
        TBIT      AR3,#1                ; [CPU_ALU] |395| 
        B         ||$C$L46||,NTC        ; [CPU_ALU] |395| 
        ; branchcc occurs ; [] |395| 
        MOV32     R2H,*+XAR2[2]         ; [CPU_FPU] |395| 
        B         ||$C$L47||,UNC        ; [CPU_ALU] |395| 
        ; branch occurs ; [] |395| 
||$C$L46||:    
        MOVB      XAR0,#8               ; [CPU_ALU] |395| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |395| 
||$C$L47||:    
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |395| 
||$C$L48||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 396,column 9,is_stmt,isa 0
        TBIT      AR7,#0                ; [CPU_ALU] |396| 
        B         ||$C$L51||,NTC        ; [CPU_ALU] |396| 
        ; branchcc occurs ; [] |396| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 396,column 25,is_stmt,isa 0
        TBIT      AR3,#2                ; [CPU_ALU] |396| 
        B         ||$C$L49||,NTC        ; [CPU_ALU] |396| 
        ; branchcc occurs ; [] |396| 
        MOV32     R2H,*+XAR2[4]         ; [CPU_FPU] |396| 
        B         ||$C$L50||,UNC        ; [CPU_ALU] |396| 
        ; branch occurs ; [] |396| 
||$C$L49||:    
        MOVB      XAR0,#10              ; [CPU_ALU] |396| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |396| 
||$C$L50||:    
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |396| 
||$C$L51||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 397,column 9,is_stmt,isa 0
        MOV       @||pf_lambda_work||+37,T ; [CPU_ALU] |397| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 398,column 9,is_stmt,isa 0
        MOV       AL,@||pf_lambda_work||+37 ; [CPU_ALU] |398| 
        B         ||$C$L52||,NEQ        ; [CPU_ALU] |398| 
        ; branchcc occurs ; [] |398| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 398,column 21,is_stmt,isa 0
        MOV32     R3H,R1H               ; [CPU_FPU] |398| 
        B         ||$C$L55||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L52||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 399,column 26,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |399| 
        B         ||$C$L53||,NEQ        ; [CPU_ALU] |399| 
        ; branchcc occurs ; [] |399| 
        NEGF32    R3H,R3H               ; [CPU_FPU] |399| 
        B         ||$C$L55||,UNC        ; [CPU_ALU] |399| 
        ; branch occurs ; [] |399| 
||$C$L53||:    
        CMPB      AL,#2                 ; [CPU_ALU] |399| 
        B         ||$C$L54||,NEQ        ; [CPU_ALU] |399| 
        ; branchcc occurs ; [] |399| 
        NEGF32    R3H,R3H               ; [CPU_FPU] |399| 
        MPYF32    R3H,R3H,#16128        ; [CPU_FPU] |399| 
        B         ||$C$L55||,UNC        ; [CPU_ALU] |399| 
        ; branch occurs ; [] |399| 
||$C$L54||:    
        MOVIZ     R2H,#16042            ; [CPU_FPU] |399| 
        NEGF32    R3H,R3H               ; [CPU_FPU] |399| 
        MOVXI     R2H,#43691            ; [CPU_FPU] |399| 
        MPYF32    R3H,R2H,R3H           ; [CPU_FPU] |399| 
        NOP       ; [CPU_ALU] 
||$C$L55||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 402,column 9,is_stmt,isa 0
        CMPF32    R3H,R1H               ; [CPU_FPU] |402| 
        MOVST0    ZF, NF                ; [CPU_FPU] |402| 
        B         ||$C$L56||,LT         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
        CMPF32    R3H,R0H               ; [CPU_FPU] |402| 
        MOVST0    ZF, NF                ; [CPU_FPU] |402| 
        B         ||$C$L56||,GT         ; [CPU_ALU] |402| 
        ; branchcc occurs ; [] |402| 
        MOV       AL,AR3                ; [CPU_ALU] 
        LSR       AL,1                  ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 402,column 32,is_stmt,isa 0
        MOVB      @||pf_lambda_work||+39,#1,UNC ; [CPU_FPU] |402| 
        MOVZ      AR7,AL                ; [CPU_ALU] 
        MOV       AL,AR3                ; [CPU_ALU] 
        LSR       AL,2                  ; [CPU_ALU] 
        MOVZ      AR6,AL                ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 407,column 5,is_stmt,isa 0
        MOV       AH,@||pf_lambda_work||+39 ; [CPU_ALU] |407| 
        B         ||$C$L59||,EQ         ; [CPU_ALU] |407| 
        ; branchcc occurs ; [] |407| 
        B         ||$C$L64||,UNC        ; [CPU_ALU] |407| 
        ; branch occurs ; [] |407| 
||$C$L56||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 403,column 9,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |403| 
        MOV       AL,AR6                ; [CPU_ALU] |403| 
        CMP       AL,*+XAR4[AR0]        ; [CPU_ALU] |403| 
        B         ||$C$L57||,HIS        ; [CPU_ALU] |403| 
        ; branchcc occurs ; [] |403| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 404,column 13,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |404| 
        ADDU      ACC,AR6               ; [CPU_ALU] |404| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |404| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 404,column 45,is_stmt,isa 0
        MOV32     R1H,R0H               ; [CPU_FPU] |404| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 404,column 13,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |404| 
        MOV       AL,*+XAR5[AR0]        ; [CPU_ALU] |404| 
        XOR       @||pf_lambda_work||+36,AL ; [CPU_ALU] |404| 
||$C$L57||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 390,column 38,is_stmt,isa 0
        INC       @||pf_lambda_work||+38 ; [CPU_ALU] |390| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 390,column 17,is_stmt,isa 0
        MOVZ      AR6,@||pf_lambda_work||+38 ; [CPU_ALU] |390| 
        MOVB      XAR0,#22              ; [CPU_ALU] |390| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |390| 
        CMP       AL,AR6                ; [CPU_ALU] |390| 
        B         ||$C$L40||,HIS        ; [CPU_ALU] |390| 
        ; branchcc occurs ; [] |390| 
||$C$L58||:    
        MOV       AL,AR3                ; [CPU_ALU] 
        LSR       AL,1                  ; [CPU_ALU] 
        MOVZ      AR7,AL                ; [CPU_ALU] 
        MOV       AL,AR3                ; [CPU_ALU] 
        LSR       AL,2                  ; [CPU_ALU] 
        MOVZ      AR6,AL                ; [CPU_ALU] 
||$C$L59||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 358,column 1,is_stmt,isa 0
        MOV32     R1H,*+XAR4[2]         ; [CPU_FPU] |358| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 360,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR2[0]         ; [CPU_FPU] |360| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 360,column 19,is_stmt,isa 0
        TBIT      AR3,#0                ; [CPU_ALU] |360| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 358,column 1,is_stmt,isa 0
        MOV32     R0H,R1H               ; [CPU_FPU] |358| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |358| 

        ADDF32    R3H,R0H,R2H           ; [CPU_FPU] |360| 
||      MOV32     R4H,*+XAR4[0]         ; [CPU_FPU] |358| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 360,column 19,is_stmt,isa 0
        B         ||$C$L60||,TC         ; [CPU_ALU] |360| 
        ; branchcc occurs ; [] |360| 
        SUBF32    R2H,R3H,R4H           ; [CPU_FPU] |360| 
        ADDF32    R3H,R3H,R1H           ; [CPU_FPU] |360| 
        MAXF32    R2H,#0                ; [CPU_FPU] |360| 
        MINF32    R3H,#0                ; [CPU_FPU] |360| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |360| 
||$C$L60||:    
        MOVL      XAR4,*-SP[8]          ; [CPU_ALU] |360| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 361,column 19,is_stmt,isa 0
        TBIT      AR7,#0                ; [CPU_ALU] |361| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 360,column 19,is_stmt,isa 0
        MOV32     *+XAR4[0],R3H         ; [CPU_FPU] |360| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 361,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR2[2]         ; [CPU_FPU] |361| 
        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |361| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 361,column 19,is_stmt,isa 0
        B         ||$C$L61||,TC         ; [CPU_ALU] |361| 
        ; branchcc occurs ; [] |361| 
        SUBF32    R5H,R2H,R4H           ; [CPU_FPU] |361| 
        ADDF32    R2H,R2H,R1H           ; [CPU_FPU] |361| 
        MAXF32    R5H,#0                ; [CPU_FPU] |361| 
        MINF32    R2H,#0                ; [CPU_FPU] |361| 
        ADDF32    R2H,R2H,R5H           ; [CPU_FPU] |361| 
        NOP       ; [CPU_ALU] 
||$C$L61||:    
        MOV32     *+XAR4[2],R2H         ; [CPU_FPU] |361| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 362,column 19,is_stmt,isa 0
        TBIT      AR6,#0                ; [CPU_ALU] |362| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 361,column 85,is_stmt,isa 0

        MOV32     R5H,*+XAR2[4]         ; [CPU_FPU] |362| 
||      ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |361| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 362,column 5,is_stmt,isa 0
        ADDF32    R2H,R0H,R5H           ; [CPU_FPU] |362| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 362,column 19,is_stmt,isa 0
        B         ||$C$L62||,TC         ; [CPU_ALU] |362| 
        ; branchcc occurs ; [] |362| 
        SUBF32    R0H,R2H,R4H           ; [CPU_FPU] |362| 
        ADDF32    R1H,R1H,R2H           ; [CPU_FPU] |362| 
        MAXF32    R0H,#0                ; [CPU_FPU] |362| 
        MINF32    R1H,#0                ; [CPU_FPU] |362| 
        ADDF32    R2H,R1H,R0H           ; [CPU_FPU] |362| 
        NOP       ; [CPU_ALU] 
||$C$L62||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 362,column 85,is_stmt,isa 0
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |362| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 412,column 9,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |412| 
        MOV       PH,#32640             ; [CPU_ALU] |412| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[4],R3H           ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 362,column 19,is_stmt,isa 0
        MOV32     *+XAR4[4],R2H         ; [CPU_FPU] |362| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 412,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |412| 
        ANDB      AL,#0                 ; [CPU_ALU] |412| 
        AND       AH,#32640             ; [CPU_ALU] |412| 
        CMPL      ACC,P                 ; [CPU_ALU] |412| 
        B         ||$C$L63||,EQ         ; [CPU_ALU] |412| 
        ; branchcc occurs ; [] |412| 
        MOVL      XAR4,@||pf_lambda_work||+24 ; [CPU_ALU] |412| 
        CMPF32    R3H,#0                ; [CPU_FPU] |412| 
        NEGF32    R3H,R3H,LT            ; [CPU_FPU] |412| 
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |412| 
        CMPF32    R3H,R0H               ; [CPU_FPU] |412| 
        MOVST0    ZF, NF                ; [CPU_FPU] |412| 
        B         ||$C$L69||,LEQ        ; [CPU_ALU] |412| 
        ; branchcc occurs ; [] |412| 
||$C$L63||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 413,column 9,is_stmt,isa 0
        MOVL      XAR4,@||pf_lambda_work||+24 ; [CPU_ALU] |413| 
        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |413| 
||$C$L64||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 358,column 1,is_stmt,isa 0
        MOV32     R0H,R3H               ; [CPU_FPU] |358| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 360,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR2[0]         ; [CPU_FPU] |360| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 360,column 19,is_stmt,isa 0
        TBIT      AR3,#0                ; [CPU_ALU] |360| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 358,column 1,is_stmt,isa 0
        MOV32     R1H,*+XAR4[2]         ; [CPU_FPU] |358| 

        ADDF32    R3H,R0H,R2H           ; [CPU_FPU] |360| 
||      MOV32     R4H,*+XAR4[0]         ; [CPU_FPU] |358| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 360,column 19,is_stmt,isa 0
        B         ||$C$L65||,TC         ; [CPU_ALU] |360| 
        ; branchcc occurs ; [] |360| 
        SUBF32    R2H,R3H,R4H           ; [CPU_FPU] |360| 
        ADDF32    R3H,R3H,R1H           ; [CPU_FPU] |360| 
        MAXF32    R2H,#0                ; [CPU_FPU] |360| 
        MINF32    R3H,#0                ; [CPU_FPU] |360| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |360| 
||$C$L65||:    
        MOVL      XAR4,*-SP[8]          ; [CPU_ALU] |360| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 361,column 19,is_stmt,isa 0
        TBIT      AR7,#0                ; [CPU_ALU] |361| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 360,column 19,is_stmt,isa 0
        MOV32     *+XAR4[0],R3H         ; [CPU_FPU] |360| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 361,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR2[2]         ; [CPU_FPU] |361| 
        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |361| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 361,column 19,is_stmt,isa 0
        B         ||$C$L66||,TC         ; [CPU_ALU] |361| 
        ; branchcc occurs ; [] |361| 
        SUBF32    R5H,R2H,R4H           ; [CPU_FPU] |361| 
        ADDF32    R2H,R2H,R1H           ; [CPU_FPU] |361| 
        MAXF32    R5H,#0                ; [CPU_FPU] |361| 
        MINF32    R2H,#0                ; [CPU_FPU] |361| 
        ADDF32    R2H,R2H,R5H           ; [CPU_FPU] |361| 
        NOP       ; [CPU_ALU] 
||$C$L66||:    
        MOV32     *+XAR4[2],R2H         ; [CPU_FPU] |361| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 362,column 19,is_stmt,isa 0
        TBIT      AR6,#0                ; [CPU_ALU] |362| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 361,column 85,is_stmt,isa 0

        MOV32     R5H,*+XAR2[4]         ; [CPU_FPU] |362| 
||      ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |361| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 362,column 5,is_stmt,isa 0
        ADDF32    R2H,R0H,R5H           ; [CPU_FPU] |362| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 362,column 19,is_stmt,isa 0
        B         ||$C$L67||,TC         ; [CPU_ALU] |362| 
        ; branchcc occurs ; [] |362| 
        SUBF32    R0H,R2H,R4H           ; [CPU_FPU] |362| 
        ADDF32    R1H,R1H,R2H           ; [CPU_FPU] |362| 
        MAXF32    R0H,#0                ; [CPU_FPU] |362| 
        MINF32    R1H,#0                ; [CPU_FPU] |362| 
        ADDF32    R2H,R1H,R0H           ; [CPU_FPU] |362| 
        NOP       ; [CPU_ALU] 
||$C$L67||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 362,column 85,is_stmt,isa 0
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |362| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 416,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |416| 
        MOV       PH,#32640             ; [CPU_ALU] |416| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[6],R3H           ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 362,column 19,is_stmt,isa 0
        MOV32     *+XAR4[4],R2H         ; [CPU_FPU] |362| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 416,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |416| 
        ANDB      AL,#0                 ; [CPU_ALU] |416| 
        AND       AH,#32640             ; [CPU_ALU] |416| 
        CMPL      ACC,P                 ; [CPU_ALU] |416| 
        B         ||$C$L68||,EQ         ; [CPU_ALU] |416| 
        ; branchcc occurs ; [] |416| 
        MOVL      XAR4,@||pf_lambda_work||+24 ; [CPU_ALU] |416| 
        CMPF32    R3H,#0                ; [CPU_FPU] |416| 
        NEGF32    R3H,R3H,LT            ; [CPU_FPU] |416| 
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |416| 
        CMPF32    R3H,R0H               ; [CPU_FPU] |416| 
        MOVST0    ZF, NF                ; [CPU_FPU] |416| 
        B         ||$C$L69||,LEQ        ; [CPU_ALU] |416| 
        ; branchcc occurs ; [] |416| 
||$C$L68||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 416,column 68,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |416| 
        B         ||$C$L70||,UNC        ; [CPU_ALU] |416| 
        ; branch occurs ; [] |416| 
||$C$L69||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 417,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |417| 
||$C$L70||:    
        SUBB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
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
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$228, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$228, DW_AT_TI_end_line(0x1a2)
	.dwattr $C$DW$228, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$228

	.sect	"pcmfpc_code"
	.clink

$C$DW$264	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$264, DW_AT_name("pf_control_interval")
	.dwattr $C$DW$264, DW_AT_low_pc(||pf_control_interval||)
	.dwattr $C$DW$264, DW_AT_high_pc(0x00)
	.dwattr $C$DW$264, DW_AT_linkage_name("pf_control_interval")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$264, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$264, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$264, DW_AT_decl_column(0x11)
	.dwattr $C$DW$264, DW_AT_TI_max_frame_size(-36)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 426,column 1,is_stmt,address ||pf_control_interval||,isa 0

	.dwfde $C$DW$CIE, ||pf_control_interval||
$C$DW$265	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$265, DW_AT_name("cfg")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg12]

$C$DW$266	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$266, DW_AT_name("dq0")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_reg14]

$C$DW$267	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$267, DW_AT_name("up")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$268	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$268, DW_AT_name("low")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$269	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$269, DW_AT_name("hw")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_reg0]

$C$DW$270	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$270, DW_AT_name("f")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_breg20 -38]

$C$DW$271	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$271, DW_AT_name("plan")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_breg20 -40]

$C$DW$272	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$272, DW_AT_name("out")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_breg20 -42]

$C$DW$273	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$273, DW_AT_name("seed")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_breg20 -44]


;***************************************************************
;* FNAME: pf_control_interval           FR SIZE:  34           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 22 Auto, 10 SOE     *
;***************************************************************

||pf_control_interval||:
$C$DW$274	.dwtag  DW_TAG_variable
	.dwattr $C$DW$274, DW_AT_name("v")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_breg20 -4]

$C$DW$275	.dwtag  DW_TAG_variable
	.dwattr $C$DW$275, DW_AT_name("v")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_breg20 -6]

$C$DW$276	.dwtag  DW_TAG_variable
	.dwattr $C$DW$276, DW_AT_name("v")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_breg20 -8]

$C$DW$277	.dwtag  DW_TAG_variable
	.dwattr $C$DW$277, DW_AT_name("v")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_breg20 -10]

$C$DW$278	.dwtag  DW_TAG_variable
	.dwattr $C$DW$278, DW_AT_name("v")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_breg20 -12]

$C$DW$279	.dwtag  DW_TAG_variable
	.dwattr $C$DW$279, DW_AT_name("v")
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$279, DW_AT_location[DW_OP_breg20 -14]

$C$DW$280	.dwtag  DW_TAG_variable
	.dwattr $C$DW$280, DW_AT_name("v")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_breg20 -16]

;* R0    assigned to $O$C29
;* AR5   assigned to $O$C30
;* AR4   assigned to $O$C31
;* AL    assigned to $O$C32
;* AR6   assigned to $O$C33
;* R0    assigned to $O$C34
;* R1    assigned to $O$C35
;* R2    assigned to $O$C36
;* R1    assigned to $O$C37
;* AR4   assigned to $O$C38
;* R0    assigned to $O$C39
;* R1    assigned to $O$C40
;* R2    assigned to $O$C41
;* R1    assigned to $O$C42
;* AR4   assigned to $O$C43
;* AR5   assigned to $O$C44
;* R0    assigned to $O$C45
;* R1    assigned to $O$U69
;* R2    assigned to $O$U72
;* AR6   assigned to $O$U52
;* AH    assigned to $O$K190
;* AL    assigned to $O$K204
;* R0    assigned to $O$U19
;* R0    assigned to $O$S1
;* AR7   assigned to $O$S2
;* R0    assigned to $O$S3
;* R0    assigned to $O$S4
;* R0    assigned to $O$S5
;* AL    assigned to $O$S6
;* AR5   assigned to dq0
$C$DW$281	.dwtag  DW_TAG_variable
	.dwattr $C$DW$281, DW_AT_name("dq0")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg14]

;* R0    assigned to up
$C$DW$282	.dwtag  DW_TAG_variable
	.dwattr $C$DW$282, DW_AT_name("up")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to low
$C$DW$283	.dwtag  DW_TAG_variable
	.dwattr $C$DW$283, DW_AT_name("low")
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$283, DW_AT_location[DW_OP_regx 0x2f]

;* AR2   assigned to hw
$C$DW$284	.dwtag  DW_TAG_variable
	.dwattr $C$DW$284, DW_AT_name("hw")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg8]

$C$DW$285	.dwtag  DW_TAG_variable
	.dwattr $C$DW$285, DW_AT_name("f")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_breg20 -20]

;* AR3   assigned to plan
$C$DW$286	.dwtag  DW_TAG_variable
	.dwattr $C$DW$286, DW_AT_name("plan")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_reg10]

$C$DW$287	.dwtag  DW_TAG_variable
	.dwattr $C$DW$287, DW_AT_name("out")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_breg20 -22]

$C$DW$288	.dwtag  DW_TAG_variable
	.dwattr $C$DW$288, DW_AT_name("seed")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_breg20 -24]

;* R0    assigned to a
$C$DW$289	.dwtag  DW_TAG_variable
	.dwattr $C$DW$289, DW_AT_name("a")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_regx 0x2b]

;* R2    assigned to b
$C$DW$290	.dwtag  DW_TAG_variable
	.dwattr $C$DW$290, DW_AT_name("b")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_regx 0x33]

;* R0    assigned to a
$C$DW$291	.dwtag  DW_TAG_variable
	.dwattr $C$DW$291, DW_AT_name("a")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_regx 0x2b]

;* R2    assigned to b
$C$DW$292	.dwtag  DW_TAG_variable
	.dwattr $C$DW$292, DW_AT_name("b")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_regx 0x33]

;* AR5   assigned to r
$C$DW$293	.dwtag  DW_TAG_variable
	.dwattr $C$DW$293, DW_AT_name("r")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg14]

;* R1    assigned to a
$C$DW$294	.dwtag  DW_TAG_variable
	.dwattr $C$DW$294, DW_AT_name("a")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to b
$C$DW$295	.dwtag  DW_TAG_variable
	.dwattr $C$DW$295, DW_AT_name("b")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_regx 0x33]

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
        ADDB      SP,#24                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -36
        MOVZ      AR2,AL                ; [CPU_ALU] |426| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 429,column 5,is_stmt,isa 0
        MOVL      XAR4,#||pf_control_work|| ; [CPU_ARAU] |429| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 426,column 1,is_stmt,isa 0
        MOVL      XAR7,*-SP[38]         ; [CPU_ALU] |426| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 429,column 5,is_stmt,isa 0
        MOVL      P,*+XAR5[0]           ; [CPU_ALU] |429| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 426,column 1,is_stmt,isa 0
        MOVL      ACC,*-SP[44]          ; [CPU_ALU] |426| 
        MOVL      XAR3,*-SP[40]         ; [CPU_ALU] |426| 
        MOVL      *-SP[24],ACC          ; [CPU_ALU] |426| 
        MOVL      *-SP[20],XAR7         ; [CPU_ALU] |426| 
        MOVL      ACC,*-SP[42]          ; [CPU_ALU] |426| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 429,column 5,is_stmt,isa 0
        MOVL      *+XAR4[0],P           ; [CPU_ALU] |429| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 429,column 21,is_stmt,isa 0
        MOVL      XAR7,*+XAR5[2]        ; [CPU_ALU] |429| 
        MOVL      XAR5,XAR4             ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 430,column 5,is_stmt,isa 0
        SUBF32    R2H,R1H,R0H           ; [CPU_FPU] |430| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 430,column 18,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |430| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 429,column 21,is_stmt,isa 0
        MOVL      *+XAR4[2],XAR7        ; [CPU_ALU] |429| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 430,column 18,is_stmt,isa 0
        MOV32     *+XAR5[6],R0H         ; [CPU_FPU] |430| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 430,column 31,is_stmt,isa 0
        MOVL      XAR7,*+XAR3[0]        ; [CPU_ALU] |430| 
        MOVB      XAR0,#8               ; [CPU_ALU] |430| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 429,column 5,is_stmt,isa 0
        MOVL      *-SP[18],XAR4         ; [CPU_ALU] |429| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 432,column 42,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |432| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 430,column 31,is_stmt,isa 0
        MOVL      *+XAR4[AR0],XAR7      ; [CPU_ALU] |430| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 430,column 44,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |430| 
        MOVL      XAR7,*+XAR3[2]        ; [CPU_ALU] |430| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 430,column 5,is_stmt,isa 0
        MOV32     *+XAR5[4],R2H         ; [CPU_FPU] |430| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 426,column 1,is_stmt,isa 0
        MOVL      *-SP[22],ACC          ; [CPU_ALU] |426| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 433,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |433| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 430,column 44,is_stmt,isa 0
        MOVL      *+XAR4[AR0],XAR7      ; [CPU_ALU] |430| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 432,column 42,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |432| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 433,column 5,is_stmt,isa 0
        MOV       PH,#32640             ; [CPU_ALU] |433| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 432,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |432| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 432,column 42,is_stmt,isa 0
        MOVB      XAR1,#8               ; [CPU_ALU] |432| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 432,column 5,is_stmt,isa 0
        MOV32     *+XAR4[6],R1H         ; [CPU_FPU] |432| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 432,column 42,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |432| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 431,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |431| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[4],R0H           ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 433,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |433| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 431,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |431| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 433,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |433| 
        AND       AH,#32640             ; [CPU_ALU] |433| 
        CMPL      ACC,P                 ; [CPU_ALU] |433| 
        B         ||$C$L83||,EQ         ; [CPU_ALU] |433| 
        ; branchcc occurs ; [] |433| 
        CMPF32    R0H,#0                ; [CPU_FPU] |433| 
        MOVST0    ZF, NF                ; [CPU_FPU] |433| 
        B         ||$C$L83||,LEQ        ; [CPU_ALU] |433| 
        ; branchcc occurs ; [] |433| 
        MOVW      DP,#||pf_control_work||+6 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      ACC,@||pf_control_work||+6 ; [CPU_ALU] |68| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 433,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |433| 
        AND       AH,#32640             ; [CPU_ALU] |433| 
        CMPL      ACC,P                 ; [CPU_ALU] |433| 
        B         ||$C$L83||,EQ         ; [CPU_ALU] |433| 
        ; branchcc occurs ; [] |433| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 434,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[18]         ; [CPU_ALU] |434| 
        MOVB      XAR0,#50              ; [CPU_ALU] |434| 
        MOVW      DP,#||pf_control_work||+50 ; [CPU_ARAU] 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |434| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 434,column 20,is_stmt,isa 0
        MOV       AL,@||pf_control_work||+50 ; [CPU_ALU] |434| 
        CMPB      AL,#2                 ; [CPU_ALU] |434| 
        B         ||$C$L85||,HIS        ; [CPU_ALU] |434| 
        ; branchcc occurs ; [] |434| 
||$C$L71||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 436,column 9,is_stmt,isa 0
        MOV       T,#40                 ; [CPU_ALU] |436| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 435,column 9,is_stmt,isa 0
        MOVB      XAR0,#44              ; [CPU_ALU] |435| 
        MOVL      XAR5,#||pf_control_work|| ; [CPU_ARAU] |435| 
        ZERO      R0H                   ; [CPU_FPU] |435| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 436,column 9,is_stmt,isa 0
        MOVL      XAR6,*-SP[22]         ; [CPU_ALU] |436| 
        MPYXU     ACC,T,@||pf_control_work||+50 ; [CPU_ALU] |436| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 435,column 9,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |435| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 435,column 31,is_stmt,isa 0
        MOVB      XAR0,#54              ; [CPU_FPU] |435| 
        MOV       *+XAR5[AR0],#0        ; [CPU_FPU] |435| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 436,column 9,is_stmt,isa 0
        ADDL      ACC,XAR6              ; [CPU_ALU] |436| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |436| 
        MOVB      XAR0,#51              ; [CPU_ALU] |436| 
        MOVW      DP,#||pf_control_work||+4 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 437,column 9,is_stmt,isa 0
        MOVB      XAR1,#40              ; [CPU_ALU] |437| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 436,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR0],#65535    ; [CPU_ALU] |436| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 437,column 9,is_stmt,isa 0
        MOV32     R2H,@||pf_control_work||+4 ; [CPU_FPU] |437| 
        MOV32     R3H,@||pf_control_work||+6 ; [CPU_FPU] |437| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 437,column 40,is_stmt,isa 0
        MOV32     R1H,@||pf_control_work||+4 ; [CPU_FPU] |437| 
        MOVB      XAR0,#42              ; [CPU_ALU] |437| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 437,column 9,is_stmt,isa 0

        SUBF32    R2H,R3H,R2H           ; [CPU_FPU] |437| 
||      MOV32     R0H,@||pf_control_work||+6 ; [CPU_FPU] |437| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 437,column 40,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |437| 
        MOVW      DP,#||pf_control_work||+40 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 437,column 9,is_stmt,isa 0
        MPYF32    R1H,R2H,#16128        ; [CPU_FPU] |437| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 437,column 40,is_stmt,isa 0
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |437| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 437,column 9,is_stmt,isa 0
        MOV32     *+XAR5[AR1],R1H       ; [CPU_FPU] |437| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 437,column 40,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |437| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 438,column 9,is_stmt,isa 0
        MOV32     R1H,@||pf_control_work||+40 ; [CPU_FPU] |438| 
        CMPF32    R1H,#0                ; [CPU_FPU] |438| 
        MOVST0    ZF, NF                ; [CPU_FPU] |438| 
        B         ||$C$L86||,LEQ        ; [CPU_ALU] |438| 
        ; branchcc occurs ; [] |438| 
        MOV32     R2H,@||pf_control_work||+42 ; [CPU_FPU] |438| 
        CMPF32    R2H,#0                ; [CPU_FPU] |438| 
        MOVST0    ZF, NF                ; [CPU_FPU] |438| 
        B         ||$C$L86||,LEQ        ; [CPU_ALU] |438| 
        ; branchcc occurs ; [] |438| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[8],R1H           ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 438,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |438| 
        ANDB      AL,#0                 ; [CPU_ALU] |438| 
        AND       AH,#32640             ; [CPU_ALU] |438| 
        CMPL      ACC,P                 ; [CPU_ALU] |438| 
        B         ||$C$L86||,EQ         ; [CPU_ALU] |438| 
        ; branchcc occurs ; [] |438| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[10],R2H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 438,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |438| 
        ANDB      AL,#0                 ; [CPU_ALU] |438| 
        AND       AH,#32640             ; [CPU_ALU] |438| 
        CMPL      ACC,P                 ; [CPU_ALU] |438| 
        B         ||$C$L86||,EQ         ; [CPU_ALU] |438| 
        ; branchcc occurs ; [] |438| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 440,column 9,is_stmt,isa 0
        MOVZ      AR6,@||pf_control_work||+50 ; [CPU_ALU] |440| 
        ADDB      XAR5,#24              ; [CPU_ALU] 
        MOV       AL,AR6                ; [CPU_FPU] 
        B         ||$C$L72||,NEQ        ; [CPU_ALU] |440| 
        ; branchcc occurs ; [] |440| 
        MOVL      ACC,*-SP[24]          ; [CPU_ALU] 
        B         ||$C$L72||,EQ         ; [CPU_ALU] |440| 
        ; branchcc occurs ; [] |440| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 440,column 58,is_stmt,isa 0
        MOVL      XAR7,*-SP[24]         ; [CPU_ALU] |440| 
        ADDB      ACC,#6                ; [CPU_ALU] |440| 
        MOVL      @||pf_control_work||+48,ACC ; [CPU_ALU] |440| 
        MOV       AL,AR6                ; [CPU_ALU] |440| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 440,column 33,is_stmt,isa 0
        MOVL      @||pf_control_work||+46,XAR7 ; [CPU_ALU] |440| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 451,column 9,is_stmt,isa 0
        B         ||$C$L73||,EQ         ; [CPU_ALU] |451| 
        ; branchcc occurs ; [] |451| 
        B         ||$C$L74||,UNC        ; [CPU_ALU] |451| 
        ; branch occurs ; [] |451| 
||$C$L72||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOV       T,#6                  ; [CPU_ALU] |165| 
        MOVL      XAR6,#||pf_control_work|| ; [CPU_ARAU] |165| 
        MPYXU     ACC,T,@||pf_control_work||+50 ; [CPU_ALU] |165| 
        MOVB      XAR0,#8               ; [CPU_ALU] |165| 
        MOVB      XAR1,#10              ; [CPU_ALU] |165| 
        ADDL      ACC,XAR3              ; [CPU_ALU] |165| 
        MOV32     R0H,*+XAR6[2]         ; [CPU_FPU] |165| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |165| 
        MOV       AL,@||pf_control_work||+50 ; [CPU_ALU] |165| 
        ADDB      AL,#1                 ; [CPU_ALU] |165| 
        MOVW      DP,#||pf_control_work||+2 ; [CPU_ARAU] 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |165| 
        MOV32     R2H,*+XAR4[AR1]       ; [CPU_FPU] |165| 
        MPYXU     ACC,T,AL              ; [CPU_ALU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0

        MPYF32    R0H,R2H,R0H           ; [CPU_FPU] |165| 
||      MOV32     R3H,*+XAR6[0]         ; [CPU_FPU] |165| 

        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |165| 
||      MOV32     R5H,*+XAR6[0]         ; [CPU_FPU] |165| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        MOVB      XAR1,#16              ; [CPU_ALU] |167| 
        MOVL      XAR4,*-SP[20]         ; [CPU_ALU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0

        MPYF32    R2H,R2H,R5H           ; [CPU_FPU] |165| 
||      MOV32     R4H,@||pf_control_work||+2 ; [CPU_FPU] |165| 

        MPYF32    R1H,R1H,R4H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        SUBF32    R0H,R3H,R0H           ; [CPU_FPU] |165| 
        ADDL      ACC,XAR3              ; [CPU_ALU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVIZ     R3H,#16221            ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0

        MOV32     *+XAR6[AR0],R0H       ; [CPU_FPU] |166| 
||      ADDF32    R2H,R2H,R1H           ; [CPU_FPU] |165| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVXI     R3H,#46039            ; [CPU_FPU] |166| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |166| 
        MPYF32    R1H,R3H,R2H           ; [CPU_FPU] |166| 
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |166| 
        MOVB      XAR0,#14              ; [CPU_ALU] |166| 
        ADDF32    R2H,R1H,R0H           ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0

        SUBF32    R0H,R0H,R1H           ; [CPU_FPU] |167| 
||      MOV32     R5H,@||pf_control_work||+8 ; [CPU_FPU] |443| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOV32     *+XAR6[AR0],R2H       ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        MOV32     *+XAR6[AR1],R0H       ; [CPU_FPU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 443,column 13,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |443| 

        MPYF32    R1H,R0H,R5H           ; [CPU_FPU] |443| 
||      MOV32     R4H,*+XAR6[0]         ; [CPU_FPU] |443| 

        MOVB      XAR0,#30              ; [CPU_FPU] |443| 

        ADDF32    R1H,R1H,R4H           ; [CPU_FPU] |443| 
||      MOV32     R3H,@||pf_control_work||+8 ; [CPU_FPU] |443| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOVB      XAR1,#10              ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 443,column 13,is_stmt,isa 0
        MOV32     *+XAR6[AR0],R1H       ; [CPU_FPU] |443| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 443,column 46,is_stmt,isa 0
        MOVB      XAR0,#32              ; [CPU_FPU] |443| 
        MOV32     R1H,*+XAR4[2]         ; [CPU_FPU] |443| 

        MPYF32    R1H,R1H,R3H           ; [CPU_FPU] |443| 
||      MOV32     R2H,@||pf_control_work||+2 ; [CPU_FPU] |443| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[18]          ; [CPU_ALU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 443,column 46,is_stmt,isa 0
        ADDF32    R0H,R1H,R2H           ; [CPU_FPU] |443| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 445,column 13,is_stmt,isa 0
        MOVL      XAR7,ACC              ; [CPU_ALU] |445| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOV32     R3H,@||pf_control_work||+30 ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 443,column 46,is_stmt,isa 0
        MOV32     *+XAR6[AR0],R0H       ; [CPU_FPU] |443| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 445,column 37,is_stmt,isa 0
        ADDB      ACC,#18               ; [CPU_ALU] |445| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |165| 
        MOV32     R0H,@||pf_control_work||+32 ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 445,column 13,is_stmt,isa 0
        ADDB      XAR7,#12              ; [CPU_ALU] |445| 
        MOVW      DP,#||pf_control_work||+48 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOV32     R2H,*+XAR4[AR1]       ; [CPU_FPU] |165| 

        MPYF32    R0H,R2H,R0H           ; [CPU_FPU] |165| 
||      MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |165| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 445,column 37,is_stmt,isa 0
        MOVL      @||pf_control_work||+48,ACC ; [CPU_FPU] |445| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVB      XAR1,#20              ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 445,column 13,is_stmt,isa 0
        MOVL      @||pf_control_work||+46,XAR7 ; [CPU_ALU] |445| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        SUBF32    R0H,R3H,R0H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 451,column 9,is_stmt,isa 0
        MOV       AL,@||pf_control_work||+50 ; [CPU_ALU] |451| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVIZ     R3H,#16221            ; [CPU_FPU] |166| 
        MOVW      DP,#||pf_control_work||+30 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0
        MOV32     *+XAR6[AR0],R0H       ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVXI     R3H,#46039            ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0
        MOV32     R5H,@||pf_control_work||+30 ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0

        MPYF32    R2H,R2H,R5H           ; [CPU_FPU] |165| 
||      MOV32     R4H,@||pf_control_work||+32 ; [CPU_FPU] |165| 

        MPYF32    R1H,R1H,R4H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        NEGF32    R0H,R0H               ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0
        ADDF32    R2H,R2H,R1H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |166| 
        MPYF32    R1H,R3H,R2H           ; [CPU_FPU] |166| 
        MOVW      DP,#||pf_control_work||+42 ; [CPU_ARAU] 
        ADDF32    R3H,R1H,R0H           ; [CPU_FPU] |166| 
        MOV32     R2H,@||pf_control_work||+42 ; [CPU_FPU] 

        MOV32     *+XAR6[AR1],R3H       ; [CPU_FPU] |166| 
||      SUBF32    R0H,R0H,R1H           ; [CPU_FPU] |167| 

        MOV32     R1H,@||pf_control_work||+40 ; [CPU_FPU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        MOV32     *+XAR6[AR0],R0H       ; [CPU_FPU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 451,column 9,is_stmt,isa 0
        B         ||$C$L74||,NEQ        ; [CPU_ALU] |451| 
        ; branchcc occurs ; [] |451| 
||$C$L73||:    
        MOVL      ACC,*-SP[24]          ; [CPU_ALU] 
        B         ||$C$L74||,EQ         ; [CPU_ALU] |451| 
        ; branchcc occurs ; [] |451| 
        ADDB      ACC,#64               ; [CPU_ALU] |451| 
        B         ||$C$L75||,UNC        ; [CPU_ALU] |451| 
        ; branch occurs ; [] |451| 
||$C$L74||:    
        MOVB      ACC,#0                ; [CPU_ALU] |451| 
||$C$L75||:    
        MOVL      XAR4,@||pf_control_work||+48 ; [CPU_ALU] |451| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |451| 
        MOVW      DP,#||pf_control_work||+10 ; [CPU_ARAU] 
        MOV       AL,AR2                ; [CPU_ALU] |451| 
        MOV32     R0H,@||pf_control_work||+10 ; [CPU_FPU] |451| 
$C$DW$296	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$296, DW_AT_low_pc(0x00)
	.dwattr $C$DW$296, DW_AT_name("pf_lambda_root")
	.dwattr $C$DW$296, DW_AT_TI_call

        LCR       #||pf_lambda_root||   ; [CPU_ALU] |451| 
        ; call occurs [#||pf_lambda_root||] ; [] |451| 
        MOVW      DP,#||pf_control_work||+52 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 454,column 9,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |454| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 451,column 9,is_stmt,isa 0
        MOV       @||pf_control_work||+52,AL ; [CPU_FPU] |451| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 454,column 9,is_stmt,isa 0
        B         ||$C$L88||,NEQ        ; [CPU_ALU] |454| 
        ; branchcc occurs ; [] |454| 
        MOV       AL,AR2                ; [CPU_ALU] 
        LSR       AL,1                  ; [CPU_ALU] 
        MOV       AH,AL                 ; [CPU_ALU] 
        MOV       AL,AR2                ; [CPU_ALU] 
        LSR       AL,2                  ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 455,column 9,is_stmt,isa 0
        TBIT      AR2,#0                ; [CPU_ALU] |455| 
        B         ||$C$L76||,TC         ; [CPU_ALU] |455| 
        ; branchcc occurs ; [] |455| 
        MOVW      DP,#||pf_control_work||+24 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 456,column 14,is_stmt,isa 0
        MOV32     R0H,@||pf_control_work||+24 ; [CPU_FPU] |456| 
        MOVIZ     R1H,#11148            ; [CPU_FPU] |456| 
        CMPF32    R0H,#0                ; [CPU_FPU] |456| 
        MOVW      DP,#||pf_control_work||+54 ; [CPU_ARAU] 
        MOVXI     R1H,#48332            ; [CPU_FPU] |456| 
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |456| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |456| 
        MOVST0    ZF, NF                ; [CPU_FPU] |456| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 456,column 51,is_stmt,isa 0
        MOVB      @||pf_control_work||+54,#1,LT ; [CPU_ALU] |456| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 457,column 9,is_stmt,isa 0
        B         ||$C$L77||,UNC        ; [CPU_ALU] |457| 
        ; branch occurs ; [] |457| 
||$C$L76||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 455,column 18,is_stmt,isa 0
        MOVL      XAR4,@||pf_control_work||+46 ; [CPU_ALU] |455| 
        MOVW      DP,#||pf_control_work||+24 ; [CPU_ARAU] 
        MOV32     R1H,@||pf_control_work||+24 ; [CPU_FPU] |455| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |455| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |455| 
        MOVW      DP,#||pf_control_work||+44 ; [CPU_ARAU] 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |455| 
        MOV32     R5H,@||pf_control_work||+44 ; [CPU_FPU] |455| 
        ADDF32    R0H,R1H,R5H           ; [CPU_FPU] |455| 
        NOP       ; [CPU_ALU] 
        MOV32     @||pf_control_work||+44,R0H ; [CPU_FPU] |455| 
||$C$L77||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 457,column 9,is_stmt,isa 0
        TBIT      AH,#0                 ; [CPU_ALU] |457| 
        B         ||$C$L78||,TC         ; [CPU_ALU] |457| 
        ; branchcc occurs ; [] |457| 
        MOVW      DP,#||pf_control_work||+26 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 458,column 14,is_stmt,isa 0
        MOV32     R0H,@||pf_control_work||+26 ; [CPU_FPU] |458| 
        MOVIZ     R1H,#11148            ; [CPU_FPU] |458| 
        CMPF32    R0H,#0                ; [CPU_FPU] |458| 
        MOVW      DP,#||pf_control_work||+54 ; [CPU_ARAU] 
        MOVXI     R1H,#48332            ; [CPU_FPU] |458| 
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |458| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |458| 
        MOVST0    ZF, NF                ; [CPU_FPU] |458| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 458,column 51,is_stmt,isa 0
        MOVB      @||pf_control_work||+54,#1,LT ; [CPU_ALU] |458| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 459,column 9,is_stmt,isa 0
        B         ||$C$L79||,UNC        ; [CPU_ALU] |459| 
        ; branch occurs ; [] |459| 
||$C$L78||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 457,column 18,is_stmt,isa 0
        MOVL      XAR4,@||pf_control_work||+46 ; [CPU_ALU] |457| 
        MOVW      DP,#||pf_control_work||+26 ; [CPU_ARAU] 
        MOV32     R1H,@||pf_control_work||+26 ; [CPU_FPU] |457| 
        MOV32     R0H,*+XAR4[2]         ; [CPU_FPU] |457| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |457| 
        MOVW      DP,#||pf_control_work||+44 ; [CPU_ARAU] 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |457| 
        MOV32     R5H,@||pf_control_work||+44 ; [CPU_FPU] |457| 
        ADDF32    R0H,R1H,R5H           ; [CPU_FPU] |457| 
        NOP       ; [CPU_ALU] 
        MOV32     @||pf_control_work||+44,R0H ; [CPU_FPU] |457| 
||$C$L79||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 459,column 9,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |459| 
        B         ||$C$L80||,TC         ; [CPU_ALU] |459| 
        ; branchcc occurs ; [] |459| 
        MOVW      DP,#||pf_control_work||+28 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 460,column 14,is_stmt,isa 0
        MOV32     R0H,@||pf_control_work||+28 ; [CPU_FPU] |460| 
        MOVIZ     R1H,#11148            ; [CPU_FPU] |460| 
        CMPF32    R0H,#0                ; [CPU_FPU] |460| 
        MOVW      DP,#||pf_control_work||+54 ; [CPU_ARAU] 
        MOVXI     R1H,#48332            ; [CPU_FPU] |460| 
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |460| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |460| 
        MOVST0    ZF, NF                ; [CPU_FPU] |460| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 460,column 51,is_stmt,isa 0
        MOVB      @||pf_control_work||+54,#1,LT ; [CPU_ALU] |460| 
        B         ||$C$L81||,UNC        ; [CPU_ALU] |460| 
        ; branch occurs ; [] |460| 
||$C$L80||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 459,column 18,is_stmt,isa 0
        MOVL      XAR4,@||pf_control_work||+46 ; [CPU_ALU] |459| 
        MOVW      DP,#||pf_control_work||+28 ; [CPU_ARAU] 
        MOV32     R1H,@||pf_control_work||+28 ; [CPU_FPU] |459| 
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |459| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |459| 
        MOVW      DP,#||pf_control_work||+44 ; [CPU_ARAU] 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |459| 
        MOV32     R5H,@||pf_control_work||+44 ; [CPU_FPU] |459| 
        ADDF32    R0H,R1H,R5H           ; [CPU_FPU] |459| 
        NOP       ; [CPU_ALU] 
        MOV32     @||pf_control_work||+44,R0H ; [CPU_FPU] |459| 
||$C$L81||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 461,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[22]         ; [CPU_ALU] |461| 
        MOVB      XAR0,#10              ; [CPU_ALU] |461| 
        MOVB      XAR7,#1               ; [CPU_ALU] |461| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |461| 
        B         ||$C$L82||,NEQ        ; [CPU_ALU] |461| 
        ; branchcc occurs ; [] |461| 
        MOV       AL,@||pf_control_work||+54 ; [CPU_ALU] |461| 
        MOVB      XAR7,#0,EQ            ; [CPU_ALU] |461| 
||$C$L82||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 158,column 1,is_stmt,isa 0
        MOV       AL,@||pf_control_work||+50 ; [CPU_ALU] |158| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |159| 
        MOVL      XAR4,#||pf_control_work|| ; [CPU_ARAU] |159| 
        MOVW      DP,#||pf_control_work||+24 ; [CPU_ARAU] 
        MOVB      XAR1,#26              ; [CPU_ALU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 158,column 1,is_stmt,isa 0
        MOV       T,#6                  ; [CPU_ALU] |158| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |159| 
        MOV32     R1H,@||pf_control_work||+24 ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 158,column 1,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |158| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        MOV32     R3H,@||pf_control_work||+26 ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |159| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        MOVL      XAR6,*-SP[22]         ; [CPU_ALU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 158,column 1,is_stmt,isa 0
        MPYXU     ACC,T,AL              ; [CPU_ALU] |158| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0

        ADDF32    R1H,R1H,R2H           ; [CPU_FPU] |159| 
||      MOV32     R4H,*+XAR4[AR0]       ; [CPU_FPU] |159| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 158,column 1,is_stmt,isa 0
        ADDL      ACC,XAR3              ; [CPU_ALU] |158| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 461,column 9,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |461| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0

        SUBF32    R5H,R1H,R0H           ; [CPU_FPU] |159| 
||      MOV32     R2H,@||pf_control_work||+28 ; [CPU_FPU] |160| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 158,column 1,is_stmt,isa 0
        ADDB      ACC,#6                ; [CPU_ALU] |158| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        MOVIZ     R0H,#16147            ; [CPU_FPU] |160| 
        SUBF32    R2H,R3H,R2H           ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        MOVIZ     R1H,#16042            ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 158,column 1,is_stmt,isa 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |158| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 461,column 9,is_stmt,isa 0
        MOV       *+XAR6[AR0],AR7       ; [CPU_ALU] |461| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        SUBF32    R4H,R5H,R4H           ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        MOVXI     R0H,#52538            ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        MOVXI     R1H,#43691            ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        MPYF32    R2H,R0H,R2H           ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0

        MPYF32    R1H,R1H,R4H           ; [CPU_FPU] |159| 
||      MOV32     R3H,*+XAR5[4]         ; [CPU_FPU] |161| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0

        MOV32     R0H,*+XAR5[2]         ; [CPU_FPU] |161| 
||      MPYF32    R3H,R2H,R3H           ; [CPU_FPU] |161| 

        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |161| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R3H           ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 464,column 9,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |464| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        MOV32     R0H,*+XAR5[4]         ; [CPU_FPU] |161| 
        MOV32     R3H,*+XAR5[2]         ; [CPU_FPU] |161| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |161| 
        MPYF32    R2H,R2H,R3H           ; [CPU_FPU] |161| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |161| 
        MOVW      DP,#||pf_control_work||+44 ; [CPU_ARAU] 

        ADDF32    R0H,R0H,R2H           ; [CPU_FPU] |161| 
||      MOV32     R5H,@||pf_control_work||+44 ; [CPU_FPU] |463| 

        MOVW      DP,#||pf_control_work||+4 ; [CPU_ARAU] 
        MOV32     *+XAR4[2],R0H         ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 463,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR3[4]         ; [CPU_FPU] |463| 
        MPYF32    R1H,R5H,R0H           ; [CPU_FPU] |463| 
        MOV32     R4H,@||pf_control_work||+4 ; [CPU_FPU] |463| 
        ADDF32    R0H,R1H,R4H           ; [CPU_FPU] |463| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 464,column 9,is_stmt,isa 0
        MOV       PH,#32640             ; [CPU_ALU] |464| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 463,column 9,is_stmt,isa 0
        MOV32     @||pf_control_work||+4,R0H ; [CPU_FPU] |463| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      ACC,@||pf_control_work||+4 ; [CPU_ALU] |68| 
        MOVL      *-SP[12],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 464,column 9,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |464| 
        AND       AH,#32640             ; [CPU_ALU] |464| 
        CMPL      ACC,P                 ; [CPU_ALU] |464| 
        B         ||$C$L83||,EQ         ; [CPU_ALU] |464| 
        ; branchcc occurs ; [] |464| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      ACC,@||pf_control_work|| ; [CPU_ALU] |68| 
        MOVL      *-SP[14],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 464,column 9,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |464| 
        AND       AH,#32640             ; [CPU_ALU] |464| 
        CMPL      ACC,P                 ; [CPU_ALU] |464| 
        B         ||$C$L83||,EQ         ; [CPU_ALU] |464| 
        ; branchcc occurs ; [] |464| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      ACC,@||pf_control_work||+2 ; [CPU_ALU] |68| 
        MOVL      *-SP[16],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 464,column 9,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |464| 
        AND       AH,#32640             ; [CPU_ALU] |464| 
        CMPL      ACC,P                 ; [CPU_ALU] |464| 
        B         ||$C$L84||,NEQ        ; [CPU_ALU] |464| 
        ; branchcc occurs ; [] |464| 
||$C$L83||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 464,column 78,is_stmt,isa 0
        MOVB      AL,#6                 ; [CPU_ALU] |464| 
        B         ||$C$L88||,UNC        ; [CPU_ALU] |464| 
        ; branch occurs ; [] |464| 
||$C$L84||:    
        MOVW      DP,#||pf_control_work||+50 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 434,column 31,is_stmt,isa 0
        INC       @||pf_control_work||+50 ; [CPU_ALU] |434| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 434,column 20,is_stmt,isa 0
        MOV       AL,@||pf_control_work||+50 ; [CPU_ALU] |434| 
        CMPB      AL,#2                 ; [CPU_ALU] |434| 
        B         ||$C$L71||,LO         ; [CPU_ALU] |434| 
        ; branchcc occurs ; [] |434| 
||$C$L85||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 466,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[22]         ; [CPU_ALU] |466| 
        MOVL      XAR5,#||pf_control_work|| ; [CPU_ARAU] |466| 
        MOVW      DP,#||pf_control_work||+4 ; [CPU_ARAU] 
        MOVL      ACC,*+XAR5[0]         ; [CPU_ALU] |466| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |466| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 466,column 28,is_stmt,isa 0
        MOVL      ACC,*+XAR5[2]         ; [CPU_ALU] |466| 
        MOVL      *+XAR4[2],ACC         ; [CPU_ALU] |466| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 466,column 51,is_stmt,isa 0
        MOV32     R0H,@||pf_control_work||+4 ; [CPU_FPU] |466| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 467,column 5,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |467| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 466,column 51,is_stmt,isa 0
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |466| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 467,column 5,is_stmt,isa 0
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |467| 
        MOV32     R1H,@||pf_control_work||+6 ; [CPU_FPU] |467| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |467| 
        MOVST0    ZF, NF                ; [CPU_FPU] |467| 
        B         ||$C$L87||,LT         ; [CPU_ALU] |467| 
        ; branchcc occurs ; [] |467| 
||$C$L86||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 467,column 29,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_ALU] |467| 
        B         ||$C$L88||,UNC        ; [CPU_ALU] |467| 
        ; branch occurs ; [] |467| 
||$C$L87||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 468,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |468| 
||$C$L88||:    
        SUBB      SP,#24                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
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
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$264, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$264, DW_AT_TI_end_line(0x1d5)
	.dwattr $C$DW$264, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$264

	.sect	"pcmfpc_code"
	.clink

$C$DW$298	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$298, DW_AT_name("pf_seed")
	.dwattr $C$DW$298, DW_AT_low_pc(||pf_seed||)
	.dwattr $C$DW$298, DW_AT_high_pc(0x00)
	.dwattr $C$DW$298, DW_AT_linkage_name("pf_seed")
	.dwattr $C$DW$298, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$298, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$298, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$298, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 212,column 1,is_stmt,address ||pf_seed||,isa 0

	.dwfde $C$DW$CIE, ||pf_seed||
$C$DW$299	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$299, DW_AT_name("dq")
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$299, DW_AT_location[DW_OP_reg12]

$C$DW$300	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$300, DW_AT_name("f")
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$300, DW_AT_location[DW_OP_reg14]

$C$DW$301	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$301, DW_AT_name("up")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$302	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$302, DW_AT_name("low")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$303	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$303, DW_AT_name("plan")
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$303, DW_AT_location[DW_OP_breg20 -16]

$C$DW$304	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$304, DW_AT_name("seed")
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$304, DW_AT_location[DW_OP_breg20 -18]


;***************************************************************
;* FNAME: pf_seed                       FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto, 10 SOE     *
;***************************************************************

||pf_seed||:
;* R3    assigned to $O$C1
;* R2    assigned to $O$C2
;* R5    assigned to $O$C3
;* R4    assigned to $O$C4
;* R3    assigned to $O$C5
;* R2    assigned to $O$C6
;* R3    assigned to $O$C7
;* R4    assigned to $O$C8
;* R3    assigned to $O$C9
;* R6    assigned to $O$C10
;* R4    assigned to $O$C11
;* R3    assigned to $O$C12
;* R2    assigned to $O$C13
;* AR4   assigned to dq
$C$DW$305	.dwtag  DW_TAG_variable
	.dwattr $C$DW$305, DW_AT_name("dq")
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$305, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to f
$C$DW$306	.dwtag  DW_TAG_variable
	.dwattr $C$DW$306, DW_AT_name("f")
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$306, DW_AT_location[DW_OP_reg14]

;* R3    assigned to up
$C$DW$307	.dwtag  DW_TAG_variable
	.dwattr $C$DW$307, DW_AT_name("up")
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_location[DW_OP_regx 0x37]

;* R1    assigned to low
$C$DW$308	.dwtag  DW_TAG_variable
	.dwattr $C$DW$308, DW_AT_name("low")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x2f]

;* AR7   assigned to plan
$C$DW$309	.dwtag  DW_TAG_variable
	.dwattr $C$DW$309, DW_AT_name("plan")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_reg18]

;* AR6   assigned to seed
$C$DW$310	.dwtag  DW_TAG_variable
	.dwattr $C$DW$310, DW_AT_name("seed")
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$310, DW_AT_location[DW_OP_reg16]

;* R4    assigned to dc
$C$DW$311	.dwtag  DW_TAG_variable
	.dwattr $C$DW$311, DW_AT_name("dc")
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_location[DW_OP_regx 0x3b]

;* R1    assigned to np
$C$DW$312	.dwtag  DW_TAG_variable
	.dwattr $C$DW$312, DW_AT_name("np")
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$313	.dwtag  DW_TAG_variable
	.dwattr $C$DW$313, DW_AT_name("c")
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_location[DW_OP_breg20 -2]

;* R5    assigned to a
$C$DW$314	.dwtag  DW_TAG_variable
	.dwattr $C$DW$314, DW_AT_name("a")
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x3f]

;* R3    assigned to b
$C$DW$315	.dwtag  DW_TAG_variable
	.dwattr $C$DW$315, DW_AT_name("b")
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x37]

;* R6    assigned to a
$C$DW$316	.dwtag  DW_TAG_variable
	.dwattr $C$DW$316, DW_AT_name("a")
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x43]

;* R5    assigned to b
$C$DW$317	.dwtag  DW_TAG_variable
	.dwattr $C$DW$317, DW_AT_name("b")
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$317, DW_AT_location[DW_OP_regx 0x3f]

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
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 10
	.dwcfi	cfa_offset, -12
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 212,column 1,is_stmt,isa 0
        MOVL      XAR7,*-SP[16]         ; [CPU_ALU] |212| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOV32     R2H,*+XAR4[2]         ; [CPU_FPU] |165| 
        MOV32     R4H,*+XAR4[0]         ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 212,column 1,is_stmt,isa 0
        MOVL      XAR6,*-SP[18]         ; [CPU_ALU] |212| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOV32     R6H,*+XAR7[AR0]       ; [CPU_FPU] |165| 
        MOVB      XAR0,#8               ; [CPU_ALU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVB      XAR1,#8               ; [CPU_ALU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0

        MOV32     R3H,*+XAR7[AR0]       ; [CPU_FPU] |165| 
||      MPYF32    R5H,R2H,R6H           ; [CPU_FPU] |165| 

        MPYF32    R7H,R4H,R3H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0
        MPYF32    R2H,R2H,R3H           ; [CPU_FPU] |165| 
        MPYF32    R4H,R4H,R6H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        SUBF32    R5H,R7H,R5H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0
        ADDF32    R3H,R2H,R4H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVIZ     R2H,#16221            ; [CPU_FPU] |166| 
        MOVXI     R2H,#46039            ; [CPU_FPU] |166| 
        MPYF32    R3H,R2H,R3H           ; [CPU_FPU] |166| 
        MOV32     R2H,R5H               ; [CPU_FPU] |166| 
        NEGF32    R2H,R2H               ; [CPU_FPU] |166| 
        MPYF32    R4H,R2H,#16128        ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0

        MOV32     R2H,*+XAR7[2]         ; [CPU_FPU] |213| 
||      ADDF32    R6H,R3H,R4H           ; [CPU_FPU] |166| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 213,column 45,is_stmt,isa 0
        MOV32     *-SP[2],R2H           ; [CPU_FPU] |213| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0

        MOV32     *+XAR6[2],R6H         ; [CPU_FPU] |166| 
||      SUBF32    R2H,R4H,R3H           ; [CPU_FPU] |167| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0
        MOV32     *+XAR6[0],R5H         ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        MOV32     *+XAR6[4],R2H         ; [CPU_FPU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOV32     R2H,*+XAR5[2]         ; [CPU_FPU] |165| 
        MOV32     R4H,*+XAR5[0]         ; [CPU_FPU] |165| 
        MOV32     R3H,*+XAR7[0]         ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 227,column 5,is_stmt,isa 0
        MOVL      XAR5,XAR6             ; [CPU_ALU] |227| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0

        MPYF32    R2H,R3H,R2H           ; [CPU_FPU] |165| 
||      MOV32     R5H,*+XAR7[AR0]       ; [CPU_FPU] |165| 

        MOVB      XAR0,#14              ; [CPU_ALU] |165| 

        MOV32     R3H,*+XAR4[2]         ; [CPU_FPU] |165| 
||      MPYF32    R4H,R3H,R4H           ; [CPU_FPU] |165| 

        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |165| 
||      ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |165| 

        ADDF32    R4H,R4H,R3H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 227,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR6             ; [CPU_ALU] |227| 
        ADDB      XAR5,#64              ; [CPU_ALU] |227| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0

        MOV32     R3H,*+XAR7[AR0]       ; [CPU_FPU] |165| 
||      MPYF32    R6H,R2H,R5H           ; [CPU_FPU] |165| 

        MPYF32    R7H,R4H,R3H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 227,column 5,is_stmt,isa 0
        ADDB      XAR4,#6               ; [CPU_ALU] |227| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0
        MPYF32    R4H,R4H,R5H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        SUBF32    R6H,R7H,R6H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0
        MPYF32    R5H,R2H,R3H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOV32     R7H,R6H               ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 212,column 1,is_stmt,isa 0
        MOV32     R3H,R0H               ; [CPU_FPU] |212| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVIZ     R2H,#16221            ; [CPU_FPU] |166| 
        NEGF32    R7H,R7H               ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0
        ADDF32    R5H,R5H,R4H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVXI     R2H,#46039            ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 213,column 26,is_stmt,isa 0
        ADDF32    R4H,R1H,R3H           ; [CPU_FPU] |213| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MPYF32    R2H,R2H,R5H           ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 213,column 36,is_stmt,isa 0
        SUBF32    R1H,R1H,R3H           ; [CPU_FPU] |213| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MPYF32    R3H,R7H,#16128        ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 227,column 5,is_stmt,isa 0
        ADDF32    R5H,R1H,R4H           ; [CPU_FPU] |227| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        SUBF32    R7H,R3H,R2H           ; [CPU_FPU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 225,column 5,is_stmt,isa 0

        SUBF32    R4H,R4H,R1H           ; [CPU_FPU] |225| 
||      MOV32     R0H,*-SP[2]           ; [CPU_FPU] |227| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0

        ADDF32    R1H,R2H,R3H           ; [CPU_FPU] |166| 
||      MOV32     *+XAR6[6],R6H         ; [CPU_FPU] |166| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 225,column 5,is_stmt,isa 0
        MPYF32    R3H,R4H,#16128        ; [CPU_FPU] |225| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        MOV32     *+XAR6[AR0],R7H       ; [CPU_FPU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 227,column 5,is_stmt,isa 0
        MPYF32    R2H,R5H,#16128        ; [CPU_FPU] |227| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOV32     *+XAR6[AR1],R1H       ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 227,column 5,is_stmt,isa 0
        MOV32     R1H,R3H               ; [CPU_FPU] |227| 
$C$DW$318	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$318, DW_AT_low_pc(0x00)
	.dwattr $C$DW$318, DW_AT_name("pf_lambda_plan")
	.dwattr $C$DW$318, DW_AT_TI_call

        LCR       #||pf_lambda_plan||   ; [CPU_ALU] |227| 
        ; call occurs [#||pf_lambda_plan||] ; [] |227| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 71
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
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$298, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$298, DW_AT_TI_end_line(0x106)
	.dwattr $C$DW$298, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$298

	.sect	".text"
	.clink

$C$DW$320	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$320, DW_AT_name("pf_hw")
	.dwattr $C$DW$320, DW_AT_low_pc(||pf_hw||)
	.dwattr $C$DW$320, DW_AT_high_pc(0x00)
	.dwattr $C$DW$320, DW_AT_linkage_name("pf_hw")
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$320, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$320, DW_AT_decl_line(0x107)
	.dwattr $C$DW$320, DW_AT_decl_column(0x11)
	.dwattr $C$DW$320, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 264,column 1,is_stmt,address ||pf_hw||,isa 0

	.dwfde $C$DW$CIE, ||pf_hw||
$C$DW$321	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$321, DW_AT_name("zero_based_id")
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$321, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: pf_hw                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||pf_hw||:
;* AR6   assigned to zero_based_id
$C$DW$322	.dwtag  DW_TAG_variable
	.dwattr $C$DW$322, DW_AT_name("zero_based_id")
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$322, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AL                ; [CPU_ALU] |264| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 265,column 5,is_stmt,isa 0
        MOV       ACC,AR6 << #2         ; [CPU_ALU] |265| 
        ANDB      AL,#0x07              ; [CPU_ALU] |265| 
        AND       AH,AR6,#0x0002        ; [CPU_FPU] |265| 
        OR        AH,AL                 ; [CPU_ALU] |265| 
        MOV       AL,AR6                ; [CPU_FPU] |265| 
        LSR       AL,2                  ; [CPU_ALU] |265| 
        ANDB      AL,#0x01              ; [CPU_ALU] |265| 
        OR        AL,AH                 ; [CPU_ALU] |265| 
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_TI_return

        LRETR     ; [CPU_FPU] 
        ; return occurs ; [] 
	.dwattr $C$DW$320, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$320, DW_AT_TI_end_line(0x10b)
	.dwattr $C$DW$320, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$320

	.sect	".text"
	.clink

$C$DW$324	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$324, DW_AT_name("pf_less")
	.dwattr $C$DW$324, DW_AT_low_pc(||pf_less||)
	.dwattr $C$DW$324, DW_AT_high_pc(0x00)
	.dwattr $C$DW$324, DW_AT_linkage_name("pf_less")
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$324, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$324, DW_AT_decl_line(0x23c)
	.dwattr $C$DW$324, DW_AT_decl_column(0x11)
	.dwattr $C$DW$324, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 574,column 1,is_stmt,address ||pf_less||,isa 0

	.dwfde $C$DW$CIE, ||pf_less||
$C$DW$325	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$325, DW_AT_name("x")
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$325, DW_AT_location[DW_OP_reg0]

$C$DW$326	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$326, DW_AT_name("y")
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$326, DW_AT_location[DW_OP_reg1]

$C$DW$327	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$327, DW_AT_name("a")
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$327, DW_AT_location[DW_OP_reg12]

$C$DW$328	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$328, DW_AT_name("b")
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$328, DW_AT_location[DW_OP_reg14]

$C$DW$329	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$329, DW_AT_name("sw")
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$329, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: pf_less                       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||pf_less||:
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
$C$DW$330	.dwtag  DW_TAG_variable
	.dwattr $C$DW$330, DW_AT_name("x")
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$330, DW_AT_location[DW_OP_reg6]

;* AR0   assigned to y
$C$DW$331	.dwtag  DW_TAG_variable
	.dwattr $C$DW$331, DW_AT_name("y")
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$331, DW_AT_location[DW_OP_reg4]

;* AR4   assigned to a
$C$DW$332	.dwtag  DW_TAG_variable
	.dwattr $C$DW$332, DW_AT_name("a")
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$332, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to b
$C$DW$333	.dwtag  DW_TAG_variable
	.dwattr $C$DW$333, DW_AT_name("b")
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$333, DW_AT_location[DW_OP_reg14]

;* AR6   assigned to sw
$C$DW$334	.dwtag  DW_TAG_variable
	.dwattr $C$DW$334, DW_AT_name("sw")
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$334, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOVZ      AR0,AH                ; [CPU_ALU] |574| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVZ      AR1,AL                ; [CPU_ALU] |574| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 575,column 5,is_stmt,isa 0
        MOVL      XAR7,XAR4             ; [CPU_ALU] |575| 
        MOV       ACC,AR0 << 1          ; [CPU_ALU] |575| 
        MOVL      XT,ACC                ; [CPU_ALU] |575| 
        MOV       ACC,AR1 << 1          ; [CPU_ALU] |575| 
        MOVL      P,ACC                 ; [CPU_ALU] |575| 
        MOVL      ACC,XT                ; [CPU_ALU] |575| 
        ADDL      XAR7,ACC              ; [CPU_ALU] |575| 
        MOVL      ACC,P                 ; [CPU_ALU] |575| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |575| 
        MOV32     R0H,*+XAR7[0]         ; [CPU_FPU] |575| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 574,column 1,is_stmt,isa 0
        MOVL      XAR6,*-SP[8]          ; [CPU_ALU] |574| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 575,column 5,is_stmt,isa 0
        MOVB      XAR7,#1               ; [CPU_ALU] |575| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |575| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |575| 
        MOVST0    ZF, NF                ; [CPU_FPU] |575| 
        B         ||$C$L90||,LT         ; [CPU_ALU] |575| 
        ; branchcc occurs ; [] |575| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |575| 
        MOVST0    ZF, NF                ; [CPU_FPU] |575| 
        B         ||$C$L89||,NEQ        ; [CPU_ALU] |575| 
        ; branchcc occurs ; [] |575| 
        MOVL      XAR4,XAR5             ; [CPU_ALU] |575| 
        MOVL      ACC,XT                ; [CPU_ALU] |575| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |575| 
        MOVL      ACC,P                 ; [CPU_ALU] |575| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |575| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |575| 
        MOV32     R1H,*+XAR5[0]         ; [CPU_FPU] |575| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |575| 
        MOVST0    ZF, NF                ; [CPU_FPU] |575| 
        B         ||$C$L90||,LT         ; [CPU_ALU] |575| 
        ; branchcc occurs ; [] |575| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |575| 
        MOVST0    ZF, NF                ; [CPU_FPU] |575| 
        B         ||$C$L89||,NEQ        ; [CPU_ALU] |575| 
        ; branchcc occurs ; [] |575| 
        MOV       AH,*+XAR6[AR0]        ; [CPU_ALU] |575| 
        MOVZ      AR6,*+XAR6[AR1]       ; [CPU_ALU] |575| 
        CMP       AH,AR6                ; [CPU_ALU] |575| 
        B         ||$C$L90||,HI         ; [CPU_ALU] |575| 
        ; branchcc occurs ; [] |575| 
        MOVZ      AR6,AR6               ; [CPU_ALU] |575| 
        MOVU      ACC,AH                ; [CPU_ALU] |575| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |575| 
        B         ||$C$L89||,NEQ        ; [CPU_ALU] |575| 
        ; branchcc occurs ; [] |575| 
        MOV       AH,AR0                ; [CPU_ALU] 
        CMP       AH,AR1                ; [CPU_ALU] |575| 
        B         ||$C$L90||,HI         ; [CPU_ALU] |575| 
        ; branchcc occurs ; [] |575| 
||$C$L89||:    
        MOVB      XAR7,#0               ; [CPU_ALU] |575| 
||$C$L90||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOV       AL,AR7                ; [CPU_ALU] |575| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$335	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$335, DW_AT_low_pc(0x00)
	.dwattr $C$DW$335, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$324, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$324, DW_AT_TI_end_line(0x241)
	.dwattr $C$DW$324, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$324

	.sect	"pcmfpc_code"
	.clink

$C$DW$336	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$336, DW_AT_name("pf_rank")
	.dwattr $C$DW$336, DW_AT_low_pc(||pf_rank||)
	.dwattr $C$DW$336, DW_AT_high_pc(0x00)
	.dwattr $C$DW$336, DW_AT_linkage_name("pf_rank")
	.dwattr $C$DW$336, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$336, DW_AT_decl_line(0x243)
	.dwattr $C$DW$336, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$336, DW_AT_TI_max_frame_size(-18)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 580,column 1,is_stmt,address ||pf_rank||,isa 0

	.dwfde $C$DW$CIE, ||pf_rank||
$C$DW$337	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$337, DW_AT_name("a")
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$337, DW_AT_location[DW_OP_reg12]

$C$DW$338	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$338, DW_AT_name("b")
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$338, DW_AT_location[DW_OP_reg14]

$C$DW$339	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$339, DW_AT_name("sw")
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$339, DW_AT_location[DW_OP_breg20 -20]

$C$DW$340	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$340, DW_AT_name("order")
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$340, DW_AT_location[DW_OP_breg20 -22]


;***************************************************************
;* FNAME: pf_rank                       FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  8 Auto,  6 SOE     *
;***************************************************************

||pf_rank||:
;* T     assigned to $O$C2
;* AL    assigned to $O$C3
;* R1    assigned to $O$C4
;* R0    assigned to $O$C5
;* AL    assigned to $O$C6
;* R0    assigned to $O$C7
;* R2    assigned to $O$U37
;* AR0   assigned to $O$U42
;* AR2   assigned to $O$U72
$C$DW$341	.dwtag  DW_TAG_variable
	.dwattr $C$DW$341, DW_AT_name("a")
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$341, DW_AT_location[DW_OP_breg20 -10]

;* PL    assigned to b
$C$DW$342	.dwtag  DW_TAG_variable
	.dwattr $C$DW$342, DW_AT_name("b")
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$342, DW_AT_location[DW_OP_reg2]

;* AR7   assigned to sw
$C$DW$343	.dwtag  DW_TAG_variable
	.dwattr $C$DW$343, DW_AT_name("sw")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_reg18]

;* AR6   assigned to order
$C$DW$344	.dwtag  DW_TAG_variable
	.dwattr $C$DW$344, DW_AT_name("order")
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$344, DW_AT_location[DW_OP_reg16]

$C$DW$345	.dwtag  DW_TAG_variable
	.dwattr $C$DW$345, DW_AT_name("k")
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$345, DW_AT_location[DW_OP_breg20 -4]

;* AR4   assigned to j
$C$DW$346	.dwtag  DW_TAG_variable
	.dwattr $C$DW$346, DW_AT_name("j")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_reg12]

;* AR1   assigned to key
$C$DW$347	.dwtag  DW_TAG_variable
	.dwattr $C$DW$347, DW_AT_name("key")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_reg6]

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
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -18
        MOVL      XAR6,*-SP[22]         ; [CPU_ALU] |580| 
        MOVL      XAR7,*-SP[20]         ; [CPU_ALU] |580| 
        MOVL      P,XAR5                ; [CPU_ALU] |580| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 583,column 9,is_stmt,isa 0
        MOV       *-SP[4],#1            ; [CPU_ALU] |583| 
        MOV       *-SP[3],#6            ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 580,column 1,is_stmt,isa 0
        MOVL      *-SP[10],XAR4         ; [CPU_ALU] |580| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 582,column 24,is_stmt,isa 0
        MOV       *+XAR6[0],#0          ; [CPU_ALU] |582| 
        MOVB      *+XAR6[1],#1,UNC      ; [CPU_ALU] |582| 
        MOVB      *+XAR6[2],#2,UNC      ; [CPU_ALU] |582| 
        MOVB      *+XAR6[3],#3,UNC      ; [CPU_ALU] |582| 
        MOVB      *+XAR6[4],#4,UNC      ; [CPU_ALU] |582| 
        MOVB      *+XAR6[5],#5,UNC      ; [CPU_ALU] |582| 
        MOVB      *+XAR6[6],#6,UNC      ; [CPU_ALU] |582| 
        MOVB      *+XAR6[7],#7,UNC      ; [CPU_ALU] |582| 
        ADDB      ACC,#1                ; [CPU_ALU] 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] 
||$C$L91||:    
        MOVL      XAR4,*-SP[6]          ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 584,column 9,is_stmt,isa 0
        MOVZ      AR1,*+XAR4[0]         ; [CPU_ALU] |584| 
        MOVL      XAR5,*-SP[10]         ; [CPU_ALU] 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,AR1 << 1          ; [CPU_ALU] 
        MOVZ      AR4,*-SP[4]           ; [CPU_ALU] 
        ADDL      XAR5,ACC              ; [CPU_ALU] 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        MOV32     R2H,*+XAR5[0]         ; [CPU_FPU] 
        ADDU      ACC,AR4               ; [CPU_ALU] 
        MOVL      XAR2,ACC              ; [CPU_ALU] 
||$C$L92||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 575,column 5,is_stmt,isa 0
        MOVZ      AR0,AR4               ; [CPU_ALU] |575| 
        SUBB      XAR0,#1               ; [CPU_ARAU] |575| 
        MOVZ      AR0,*+XAR6[AR0]       ; [CPU_ALU] |575| 
        MOVL      XAR5,*-SP[10]         ; [CPU_ALU] |575| 
        MOV       ACC,AR0 << 1          ; [CPU_ALU] |575| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |575| 
        MOV32     R0H,*+XAR5[0]         ; [CPU_FPU] |575| 
        CMPF32    R2H,R0H               ; [CPU_FPU] |575| 
        MOVST0    ZF, NF                ; [CPU_FPU] |575| 
        B         ||$C$L93||,LT         ; [CPU_ALU] |575| 
        ; branchcc occurs ; [] |575| 
        CMPF32    R2H,R0H               ; [CPU_FPU] |575| 
        MOVST0    ZF, NF                ; [CPU_FPU] |575| 
        B         ||$C$L94||,NEQ        ; [CPU_ALU] |575| 
        ; branchcc occurs ; [] |575| 
        MOVL      XAR3,P                ; [CPU_ALU] |575| 
        MOVL      XAR5,P                ; [CPU_ALU] |575| 
        ADDL      XAR3,ACC              ; [CPU_ALU] |575| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |575| 
        ADDL      XAR5,ACC              ; [CPU_ALU] |575| 
        MOV32     R0H,*+XAR3[0]         ; [CPU_FPU] |575| 
        MOV32     R1H,*+XAR5[0]         ; [CPU_FPU] |575| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |575| 
        MOVST0    ZF, NF                ; [CPU_FPU] |575| 
        B         ||$C$L93||,LT         ; [CPU_ALU] |575| 
        ; branchcc occurs ; [] |575| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |575| 
        MOVST0    ZF, NF                ; [CPU_FPU] |575| 
        B         ||$C$L94||,NEQ        ; [CPU_ALU] |575| 
        ; branchcc occurs ; [] |575| 
        MOV       AL,*+XAR7[AR0]        ; [CPU_ALU] |575| 
        MOV       T,*+XAR7[AR1]         ; [CPU_ALU] |575| 
        CMP       AL,T                  ; [CPU_ALU] |575| 
        B         ||$C$L93||,HI         ; [CPU_ALU] |575| 
        ; branchcc occurs ; [] |575| 
        MOVZ      AR5,T                 ; [CPU_ALU] |575| 
        MOVU      ACC,AL                ; [CPU_ALU] |575| 
        CMPL      ACC,XAR5              ; [CPU_ALU] |575| 
        B         ||$C$L94||,NEQ        ; [CPU_ALU] |575| 
        ; branchcc occurs ; [] |575| 
        MOV       AL,AR0                ; [CPU_ALU] 
        CMP       AL,AR1                ; [CPU_ALU] |575| 
        B         ||$C$L94||,LOS        ; [CPU_ALU] |575| 
        ; branchcc occurs ; [] |575| 
||$C$L93||:    
        MOVB      AL,#1                 ; [CPU_ALU] |575| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 585,column 15,is_stmt,isa 0
        B         ||$C$L94||,EQ         ; [CPU_ALU] |585| 
        ; branchcc occurs ; [] |585| 
        SUBB      XAR4,#1               ; [CPU_ARAU] |585| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 585,column 57,is_stmt,isa 0
        MOV       *+XAR2[0],AR0         ; [CPU_ALU] |585| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 585,column 15,is_stmt,isa 0
        MOV       AL,AR4                ; [CPU_ALU] |585| 
        SUBB      XAR2,#1               ; [CPU_ALU] |585| 
        B         ||$C$L92||,NEQ        ; [CPU_ALU] |585| 
        ; branchcc occurs ; [] |585| 
||$C$L94||:    
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 583,column 14,is_stmt,isa 0
        MOVZ      AR0,*-SP[3]           ; [CPU_ALU] |583| 
        INC       *-SP[4]               ; [CPU_ALU] |583| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 586,column 9,is_stmt,isa 0
        MOV       *+XAR2[0],AR1         ; [CPU_ALU] |586| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 583,column 14,is_stmt,isa 0
        ADDB      ACC,#1                ; [CPU_ALU] |583| 
        SUBB      XAR0,#1               ; [CPU_ARAU] |583| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |583| 
        MOV       *-SP[3],AR0           ; [CPU_ALU] |583| 
        CMP       AR0,#-1               ; [CPU_ALU] |583| 
        B         ||$C$L91||,NEQ        ; [CPU_ALU] |583| 
        ; branchcc occurs ; [] |583| 
        SUBB      SP,#10                ; [CPU_ARAU] 
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
$C$DW$348	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$348, DW_AT_low_pc(0x00)
	.dwattr $C$DW$348, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$336, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$336, DW_AT_TI_end_line(0x24c)
	.dwattr $C$DW$336, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$336

	.sect	".text"
	.clink

$C$DW$349	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$349, DW_AT_name("pf_angle_cost")
	.dwattr $C$DW$349, DW_AT_low_pc(||pf_angle_cost||)
	.dwattr $C$DW$349, DW_AT_high_pc(0x00)
	.dwattr $C$DW$349, DW_AT_linkage_name("pf_angle_cost")
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$349, DW_AT_decl_line(0x24e)
	.dwattr $C$DW$349, DW_AT_decl_column(0x10)
	.dwattr $C$DW$349, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 591,column 1,is_stmt,address ||pf_angle_cost||,isa 0

	.dwfde $C$DW$CIE, ||pf_angle_cost||
$C$DW$350	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$350, DW_AT_name("rd")
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$351	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$351, DW_AT_name("rq")
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$352	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$352, DW_AT_name("dq")
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$352, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: pf_angle_cost                 FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||pf_angle_cost||:
;* R0    assigned to $O$C2
;* R3    assigned to $O$C3
;* R2    assigned to $O$C4
;* R0    assigned to rd
$C$DW$353	.dwtag  DW_TAG_variable
	.dwattr $C$DW$353, DW_AT_name("rd")
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to rq
$C$DW$354	.dwtag  DW_TAG_variable
	.dwattr $C$DW$354, DW_AT_name("rq")
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x2f]

;* AR4   assigned to dq
$C$DW$355	.dwtag  DW_TAG_variable
	.dwattr $C$DW$355, DW_AT_name("dq")
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$355, DW_AT_location[DW_OP_reg12]

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
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 593,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR4[0]         ; [CPU_FPU] |593| 

        MPYF32    R4H,R2H,R2H           ; [CPU_FPU] |593| 
||      MOV32     R3H,*+XAR4[2]         ; [CPU_FPU] |593| 

        MPYF32    R5H,R3H,R3H           ; [CPU_FPU] |593| 
        NOP       ; [CPU_ALU] 
        ADDF32    R4H,R4H,R5H           ; [CPU_FPU] |593| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        SQRTF32   R5H,R4H               ; [CPU_FPU] |593| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVIZ     R4H,#11148            ; [CPU_FPU] |593| 
        MOVXI     R4H,#48332            ; [CPU_FPU] |593| 
        CMPF32    R5H,R4H               ; [CPU_FPU] |593| 
        MOVST0    ZF, NF                ; [CPU_FPU] |593| 
        B         ||$C$L95||,GEQ        ; [CPU_ALU] |593| 
        ; branchcc occurs ; [] |593| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 593,column 57,is_stmt,isa 0
        MOVIZ     R0H,#16669            ; [CPU_FPU] |593| 
        MOVXI     R0H,#59879            ; [CPU_FPU] |593| 
        B         ||$C$L96||,UNC        ; [CPU_ALU] |593| 
        ; branch occurs ; [] |593| 
||$C$L95||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 595,column 5,is_stmt,isa 0
        MPYF32    R5H,R1H,R3H           ; [CPU_FPU] |595| 
        MPYF32    R4H,R0H,R2H           ; [CPU_FPU] |595| 
        MPYF32    R1H,R1H,R2H           ; [CPU_FPU] |595| 
        MPYF32    R0H,R0H,R3H           ; [CPU_FPU] |595| 
        ADDF32    R2H,R5H,R4H           ; [CPU_FPU] |595| 
        SUBF32    R0H,R0H,R1H           ; [CPU_FPU] |595| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        QUADF32   R1H,R0H,R0H,R2H       ; [CPU_FPU] |595| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ATANPUF32 R0H,R0H               ; [CPU_FPU] |595| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |595| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPY2PIF32 R0H,R0H               ; [CPU_FPU] |595| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R0H,R0H           ; [CPU_FPU] |595| 
        NOP       ; [CPU_ALU] 
||$C$L96||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$356	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$356, DW_AT_low_pc(0x00)
	.dwattr $C$DW$356, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$349, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$349, DW_AT_TI_end_line(0x254)
	.dwattr $C$DW$349, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$349

	.sect	"pcmfpc_code"
	.clink
	.global	||PC_run_fast||

$C$DW$357	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$357, DW_AT_name("PC_run_fast")
	.dwattr $C$DW$357, DW_AT_low_pc(||PC_run_fast||)
	.dwattr $C$DW$357, DW_AT_high_pc(0x00)
	.dwattr $C$DW$357, DW_AT_linkage_name("PC_run_fast")
	.dwattr $C$DW$357, DW_AT_external
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$357, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$357, DW_AT_decl_line(0x256)
	.dwattr $C$DW$357, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$357, DW_AT_TI_max_frame_size(-88)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 599,column 1,is_stmt,address ||PC_run_fast||,isa 0

	.dwfde $C$DW$CIE, ||PC_run_fast||
$C$DW$358	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$358, DW_AT_name("cfg")
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$358, DW_AT_location[DW_OP_reg12]

$C$DW$359	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$359, DW_AT_name("in")
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$359, DW_AT_location[DW_OP_reg14]

$C$DW$360	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$360, DW_AT_name("out")
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$360, DW_AT_location[DW_OP_breg20 -90]


;***************************************************************
;* FNAME: PC_run_fast                   FR SIZE:  86           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter, 64 Auto, 14 SOE     *
;***************************************************************

||PC_run_fast||:
$C$DW$361	.dwtag  DW_TAG_variable
	.dwattr $C$DW$361, DW_AT_name("v")
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$361, DW_AT_location[DW_OP_breg20 -10]

$C$DW$362	.dwtag  DW_TAG_variable
	.dwattr $C$DW$362, DW_AT_name("v")
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$362, DW_AT_location[DW_OP_breg20 -12]

$C$DW$363	.dwtag  DW_TAG_variable
	.dwattr $C$DW$363, DW_AT_name("v")
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$363, DW_AT_location[DW_OP_breg20 -14]

$C$DW$364	.dwtag  DW_TAG_variable
	.dwattr $C$DW$364, DW_AT_name("v")
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$364, DW_AT_location[DW_OP_breg20 -16]

$C$DW$365	.dwtag  DW_TAG_variable
	.dwattr $C$DW$365, DW_AT_name("v")
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$365, DW_AT_location[DW_OP_breg20 -18]

$C$DW$366	.dwtag  DW_TAG_variable
	.dwattr $C$DW$366, DW_AT_name("v")
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$366, DW_AT_location[DW_OP_breg20 -20]

$C$DW$367	.dwtag  DW_TAG_variable
	.dwattr $C$DW$367, DW_AT_name("v")
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$367, DW_AT_location[DW_OP_breg20 -22]

$C$DW$368	.dwtag  DW_TAG_variable
	.dwattr $C$DW$368, DW_AT_name("v")
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$368, DW_AT_location[DW_OP_breg20 -24]

$C$DW$369	.dwtag  DW_TAG_variable
	.dwattr $C$DW$369, DW_AT_name("v")
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$369, DW_AT_location[DW_OP_breg20 -26]

$C$DW$370	.dwtag  DW_TAG_variable
	.dwattr $C$DW$370, DW_AT_name("v")
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$370, DW_AT_location[DW_OP_breg20 -28]

$C$DW$371	.dwtag  DW_TAG_variable
	.dwattr $C$DW$371, DW_AT_name("v")
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$371, DW_AT_location[DW_OP_breg20 -30]

$C$DW$372	.dwtag  DW_TAG_variable
	.dwattr $C$DW$372, DW_AT_name("v")
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$372, DW_AT_location[DW_OP_breg20 -32]

$C$DW$373	.dwtag  DW_TAG_variable
	.dwattr $C$DW$373, DW_AT_name("v")
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$373, DW_AT_location[DW_OP_breg20 -34]

$C$DW$374	.dwtag  DW_TAG_variable
	.dwattr $C$DW$374, DW_AT_name("v")
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$374, DW_AT_location[DW_OP_breg20 -36]

$C$DW$375	.dwtag  DW_TAG_variable
	.dwattr $C$DW$375, DW_AT_name("v")
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$375, DW_AT_location[DW_OP_breg20 -38]

$C$DW$376	.dwtag  DW_TAG_variable
	.dwattr $C$DW$376, DW_AT_name("v")
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$376, DW_AT_location[DW_OP_breg20 -40]

;* R0    assigned to $O$C184
;* R0    assigned to $O$C185
;* R1    assigned to $O$C186
;* R3    assigned to $O$C187
;* R0    assigned to $O$C188
;* R2    assigned to $O$C189
;* AR4   assigned to $O$C190
;* AR4   assigned to $O$C191
;* R0    assigned to $O$C192
;* R3    assigned to $O$C193
;* AR3   assigned to $O$C194
;* R0    assigned to $O$C195
;* R3    assigned to $O$C196
;* AR6   assigned to $O$C197
;* R3    assigned to $O$C198
;* R0    assigned to $O$C199
;* R1    assigned to $O$C200
;* R0    assigned to $O$C201
;* R1    assigned to $O$C202
;* AR4   assigned to $O$C203
;* AL    assigned to $O$C204
;* AL    assigned to $O$C205
;* AR4   assigned to $O$C206
;* AR5   assigned to $O$C207
;* AR4   assigned to $O$C208
;* AR1   assigned to $O$C209
;* AR6   assigned to $O$C210
;* R0    assigned to $O$C211
;* R1    assigned to $O$C212
;* AR5   assigned to $O$C213
;* R7    assigned to $O$C214
;* AR1   assigned to $O$C215
;* R4    assigned to $O$C217
;* R7    assigned to $O$C218
;* R6    assigned to $O$C219
;* R5    assigned to $O$C220
;* R4    assigned to $O$C221
;* AR7   assigned to $O$C222
;* R0    assigned to $O$C223
;* R3    assigned to $O$C224
;* R5    assigned to $O$C225
;* R2    assigned to $O$C226
;* R1    assigned to $O$C227
;* R6    assigned to $O$C228
;* R2    assigned to $O$C229
;* R3    assigned to $O$C230
;* R0    assigned to $O$C231
;* R1    assigned to $O$C232
;* R0    assigned to $O$C233
;* AR7   assigned to $O$U259
;* AR3   assigned to $O$U259
;* AR5   assigned to $O$U259
;* T     assigned to $O$U370
;* AL    assigned to status
$C$DW$377	.dwtag  DW_TAG_variable
	.dwattr $C$DW$377, DW_AT_name("status")
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$377, DW_AT_location[DW_OP_reg0]

;* AL    assigned to status
$C$DW$378	.dwtag  DW_TAG_variable
	.dwattr $C$DW$378, DW_AT_name("status")
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$378, DW_AT_location[DW_OP_reg0]

;* T     assigned to j
$C$DW$379	.dwtag  DW_TAG_variable
	.dwattr $C$DW$379, DW_AT_name("j")
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$379, DW_AT_location[DW_OP_reg22]

;* T     assigned to j
$C$DW$380	.dwtag  DW_TAG_variable
	.dwattr $C$DW$380, DW_AT_name("j")
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$380, DW_AT_location[DW_OP_reg22]

;* AR3   assigned to j
$C$DW$381	.dwtag  DW_TAG_variable
	.dwattr $C$DW$381, DW_AT_name("j")
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$381, DW_AT_location[DW_OP_reg10]

;* AR6   assigned to k
$C$DW$382	.dwtag  DW_TAG_variable
	.dwattr $C$DW$382, DW_AT_name("k")
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$382, DW_AT_location[DW_OP_reg16]

;* AR1   assigned to k
$C$DW$383	.dwtag  DW_TAG_variable
	.dwattr $C$DW$383, DW_AT_name("k")
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$383, DW_AT_location[DW_OP_reg6]

;* AR4   assigned to $O$U91
;* R4    assigned to $O$U42
;* AR0   assigned to $O$U369
;* R0    assigned to $O$U56
;* AR4   assigned to $O$U540
;* R3    assigned to $O$U542
;* AR7   assigned to $O$U335
;* AR5   assigned to $O$U346
;* PH    assigned to $O$U427
;* AR5   assigned to $O$U695
;* AR4   assigned to $O$U266
;* AR3   assigned to $O$U636
;* AR4   assigned to $O$L4
;* R2    assigned to $O$v5
;* R1    assigned to $O$v4
;* R0    assigned to $O$R31
;* R0    assigned to $O$S1
;* AR6   assigned to $O$S2
;* R1    assigned to $O$S3
;* R2    assigned to $O$S5
;* AH    assigned to $O$S6
;* AH    assigned to $O$S7
$C$DW$384	.dwtag  DW_TAG_variable
	.dwattr $C$DW$384, DW_AT_name("cfg")
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$384, DW_AT_location[DW_OP_breg20 -68]

$C$DW$385	.dwtag  DW_TAG_variable
	.dwattr $C$DW$385, DW_AT_name("in")
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$385, DW_AT_location[DW_OP_breg20 -70]

$C$DW$386	.dwtag  DW_TAG_variable
	.dwattr $C$DW$386, DW_AT_name("out")
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$386, DW_AT_location[DW_OP_breg20 -72]

;* R5    assigned to dc
$C$DW$387	.dwtag  DW_TAG_variable
	.dwattr $C$DW$387, DW_AT_name("dc")
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_location[DW_OP_regx 0x3f]

;* R5    assigned to up1
$C$DW$388	.dwtag  DW_TAG_variable
	.dwattr $C$DW$388, DW_AT_name("up1")
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_location[DW_OP_regx 0x3f]

;* R4    assigned to low1
$C$DW$389	.dwtag  DW_TAG_variable
	.dwattr $C$DW$389, DW_AT_name("low1")
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_location[DW_OP_regx 0x3b]

;* R0    assigned to theta2
$C$DW$390	.dwtag  DW_TAG_variable
	.dwattr $C$DW$390, DW_AT_name("theta2")
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$391	.dwtag  DW_TAG_variable
	.dwattr $C$DW$391, DW_AT_name("amp")
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$391, DW_AT_location[DW_OP_breg20 -66]

;* R2    assigned to lo
$C$DW$392	.dwtag  DW_TAG_variable
	.dwattr $C$DW$392, DW_AT_name("lo")
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$392, DW_AT_location[DW_OP_regx 0x33]

;* R1    assigned to hi
$C$DW$393	.dwtag  DW_TAG_variable
	.dwattr $C$DW$393, DW_AT_name("hi")
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to budget
$C$DW$394	.dwtag  DW_TAG_variable
	.dwattr $C$DW$394, DW_AT_name("budget")
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_location[DW_OP_regx 0x2b]

;* R2    assigned to spreadLo
$C$DW$395	.dwtag  DW_TAG_variable
	.dwattr $C$DW$395, DW_AT_name("spreadLo")
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_location[DW_OP_regx 0x33]

;* R1    assigned to spreadHi
$C$DW$396	.dwtag  DW_TAG_variable
	.dwattr $C$DW$396, DW_AT_name("spreadHi")
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_location[DW_OP_regx 0x2f]

;* R3    assigned to gzLo
$C$DW$397	.dwtag  DW_TAG_variable
	.dwattr $C$DW$397, DW_AT_name("gzLo")
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_location[DW_OP_regx 0x37]

;* R4    assigned to gzHi
$C$DW$398	.dwtag  DW_TAG_variable
	.dwattr $C$DW$398, DW_AT_name("gzHi")
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_location[DW_OP_regx 0x3b]

;* PH    assigned to m
$C$DW$399	.dwtag  DW_TAG_variable
	.dwattr $C$DW$399, DW_AT_name("m")
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$399, DW_AT_location[DW_OP_reg3]

;* PL    assigned to n
$C$DW$400	.dwtag  DW_TAG_variable
	.dwattr $C$DW$400, DW_AT_name("n")
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$400, DW_AT_location[DW_OP_reg2]

;* PL    assigned to chosen
$C$DW$401	.dwtag  DW_TAG_variable
	.dwattr $C$DW$401, DW_AT_name("chosen")
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$401, DW_AT_location[DW_OP_reg2]

$C$DW$402	.dwtag  DW_TAG_variable
	.dwattr $C$DW$402, DW_AT_name("pcOff")
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$402, DW_AT_location[DW_OP_breg20 -46]

$C$DW$403	.dwtag  DW_TAG_variable
	.dwattr $C$DW$403, DW_AT_name("mask")
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$403, DW_AT_location[DW_OP_breg20 -47]

;* AR3   assigned to cmask
$C$DW$404	.dwtag  DW_TAG_variable
	.dwattr $C$DW$404, DW_AT_name("cmask")
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$404, DW_AT_location[DW_OP_reg10]

;* PL    assigned to hw
$C$DW$405	.dwtag  DW_TAG_variable
	.dwattr $C$DW$405, DW_AT_name("hw")
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$405, DW_AT_location[DW_OP_reg2]

;* R0    assigned to lower
$C$DW$406	.dwtag  DW_TAG_variable
	.dwattr $C$DW$406, DW_AT_name("lower")
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_location[DW_OP_regx 0x2b]

;* R6    assigned to upper
$C$DW$407	.dwtag  DW_TAG_variable
	.dwattr $C$DW$407, DW_AT_name("upper")
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_location[DW_OP_regx 0x43]

;* R2    assigned to a
$C$DW$408	.dwtag  DW_TAG_variable
	.dwattr $C$DW$408, DW_AT_name("a")
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_location[DW_OP_regx 0x33]

;* R1    assigned to b
$C$DW$409	.dwtag  DW_TAG_variable
	.dwattr $C$DW$409, DW_AT_name("b")
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to a
$C$DW$410	.dwtag  DW_TAG_variable
	.dwattr $C$DW$410, DW_AT_name("a")
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_location[DW_OP_regx 0x33]

;* R1    assigned to b
$C$DW$411	.dwtag  DW_TAG_variable
	.dwattr $C$DW$411, DW_AT_name("b")
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_location[DW_OP_regx 0x2f]

;* R6    assigned to a
$C$DW$412	.dwtag  DW_TAG_variable
	.dwattr $C$DW$412, DW_AT_name("a")
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_location[DW_OP_regx 0x43]

;* R7    assigned to b
$C$DW$413	.dwtag  DW_TAG_variable
	.dwattr $C$DW$413, DW_AT_name("b")
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_location[DW_OP_regx 0x47]

;* R0    assigned to a
$C$DW$414	.dwtag  DW_TAG_variable
	.dwattr $C$DW$414, DW_AT_name("a")
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_location[DW_OP_regx 0x2b]

;* R2    assigned to b
$C$DW$415	.dwtag  DW_TAG_variable
	.dwattr $C$DW$415, DW_AT_name("b")
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_location[DW_OP_regx 0x33]

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
        ADDB      SP,#72                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -88
        MOVW      DP,#||PC_fast_kernel_revision|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 604,column 5,is_stmt,isa 0
        MOVB      @||PC_fast_kernel_revision||,#5,UNC ; [CPU_ALU] |604| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 599,column 1,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |599| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 605,column 5,is_stmt,isa 0
        MOV       @||PC_fast_output_substeps_available||,#0 ; [CPU_ALU] |605| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 599,column 1,is_stmt,isa 0
        MOVL      ACC,*+FP[0]           ; [CPU_ALU] |599| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 606,column 5,is_stmt,isa 0
        MOV       @||PC_fast_output_summaries_available||,#0 ; [CPU_ALU] |606| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 599,column 1,is_stmt,isa 0
        MOVL      *+FP[AR0],ACC         ; [CPU_ALU] |599| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 607,column 5,is_stmt,isa 0
        MOV       @||PC_fast_output_integrals_available||,#0 ; [CPU_ALU] |607| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 599,column 1,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |599| 
        MOVL      *+FP[AR0],XAR5        ; [CPU_ALU] |599| 
        MOVL      XAR0,#22              ; [CPU_ALU] |599| 
        MOVL      *+FP[AR0],XAR4        ; [CPU_ALU] |599| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 608,column 5,is_stmt,isa 0
        B         ||$C$L97||,NEQ        ; [CPU_ALU] |608| 
        ; branchcc occurs ; [] |608| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 608,column 14,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |608| 
        B         ||$C$L157||,UNC       ; [CPU_ALU] |608| 
        ; branch occurs ; [] |608| 
||$C$L97||:    
        MOVL      XAR0,#18              ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 609,column 5,is_stmt,isa 0
$C$DW$416	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$416, DW_AT_low_pc(0x00)
	.dwattr $C$DW$416, DW_AT_name("pf_output_init")
	.dwattr $C$DW$416, DW_AT_TI_call

        LCR       #||pf_output_init||   ; [CPU_ALU] |609| 
        ; call occurs [#||pf_output_init||] ; [] |609| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 611,column 43,is_stmt,isa 0
        MOVL      XAR0,#22              ; [CPU_ALU] |611| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 611,column 5,is_stmt,isa 0
        MOVB      *+XAR4[1],#1,UNC      ; [CPU_ALU] |611| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 611,column 25,is_stmt,isa 0
        MOVB      *+XAR4[2],#1,UNC      ; [CPU_ALU] |611| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 611,column 43,is_stmt,isa 0
        MOVB      *+XAR4[0],#1,UNC      ; [CPU_ALU] |611| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |611| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 612,column 5,is_stmt,isa 0
$C$DW$417	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$417, DW_AT_low_pc(0x00)
	.dwattr $C$DW$417, DW_AT_name("pf_config_valid")
	.dwattr $C$DW$417, DW_AT_TI_call

        LCR       #||pf_config_valid||  ; [CPU_ALU] |612| 
        ; call occurs [#||pf_config_valid||] ; [] |612| 
        CMPB      AL,#0                 ; [CPU_ALU] |612| 
        B         ||$C$L98||,NEQ        ; [CPU_ALU] |612| 
        ; branchcc occurs ; [] |612| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 612,column 58,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |612| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |612| 
        MOVB      AL,#2                 ; [CPU_ALU] |612| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 612,column 32,is_stmt,isa 0
        MOVB      *+XAR4[0],#2,UNC      ; [CPU_ALU] |612| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 612,column 58,is_stmt,isa 0
        B         ||$C$L157||,UNC       ; [CPU_ALU] |612| 
        ; branch occurs ; [] |612| 
||$C$L98||:    
        MOVL      XAR0,#20              ; [CPU_ALU] 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 613,column 5,is_stmt,isa 0
        B         ||$C$L100||,EQ        ; [CPU_ALU] |613| 
        ; branchcc occurs ; [] |613| 
        MOVL      XAR0,#20              ; [CPU_ALU] |613| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |613| 
        MOVB      XAR1,#28              ; [CPU_ALU] |613| 
        MOV       AL,*+XAR4[AR1]        ; [CPU_ALU] |613| 
        CMPB      AL,#7                 ; [CPU_ALU] |613| 
        B         ||$C$L100||,HI        ; [CPU_ALU] |613| 
        ; branchcc occurs ; [] |613| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |68| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 613,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |613| 
        MOV       PH,#32640             ; [CPU_ALU] |613| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[10],R0H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 613,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |613| 
        ANDB      AL,#0                 ; [CPU_ALU] |613| 
        AND       AH,#32640             ; [CPU_ALU] |613| 
        CMPL      ACC,P                 ; [CPU_ALU] |613| 
        B         ||$C$L100||,EQ        ; [CPU_ALU] |613| 
        ; branchcc occurs ; [] |613| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVB      XAR1,#14              ; [CPU_ALU] |68| 
        MOV32     R1H,*+XAR4[AR1]       ; [CPU_FPU] |68| 
        MOV32     *-SP[12],R1H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 613,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |613| 
        ANDB      AL,#0                 ; [CPU_ALU] |613| 
        AND       AH,#32640             ; [CPU_ALU] |613| 
        CMPL      ACC,P                 ; [CPU_ALU] |613| 
        B         ||$C$L100||,EQ        ; [CPU_ALU] |613| 
        ; branchcc occurs ; [] |613| 
        CMPF32    R0H,#0                ; [CPU_FPU] |613| 
        MOVST0    ZF, NF                ; [CPU_FPU] |613| 
        B         ||$C$L100||,LEQ       ; [CPU_ALU] |613| 
        ; branchcc occurs ; [] |613| 
        CMPF32    R1H,#0                ; [CPU_FPU] |613| 
        MOVST0    ZF, NF                ; [CPU_FPU] |613| 
        B         ||$C$L100||,LEQ       ; [CPU_ALU] |613| 
        ; branchcc occurs ; [] |613| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVB      XAR1,#20              ; [CPU_ALU] |68| 
        MOV32     R4H,*+XAR4[AR1]       ; [CPU_FPU] |68| 
        MOV32     *-SP[14],R4H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 613,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |613| 
        ANDB      AL,#0                 ; [CPU_ALU] |613| 
        AND       AH,#32640             ; [CPU_ALU] |613| 
        CMPL      ACC,P                 ; [CPU_ALU] |613| 
        B         ||$C$L100||,EQ        ; [CPU_ALU] |613| 
        ; branchcc occurs ; [] |613| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVB      XAR1,#22              ; [CPU_ALU] |68| 
        MOVL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |68| 
        MOVL      *-SP[16],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 613,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |613| 
        AND       AH,#32640             ; [CPU_ALU] |613| 
        CMPL      ACC,P                 ; [CPU_ALU] |613| 
        B         ||$C$L100||,EQ        ; [CPU_ALU] |613| 
        ; branchcc occurs ; [] |613| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVB      XAR1,#16              ; [CPU_ALU] |68| 
        MOVL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |68| 
        MOVL      *-SP[18],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 613,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |613| 
        AND       AH,#32640             ; [CPU_ALU] |613| 
        CMPL      ACC,P                 ; [CPU_ALU] |613| 
        B         ||$C$L100||,EQ        ; [CPU_ALU] |613| 
        ; branchcc occurs ; [] |613| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVB      XAR1,#18              ; [CPU_ALU] |68| 
        MOVL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |68| 
        MOVL      *-SP[20],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 613,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |613| 
        AND       AH,#32640             ; [CPU_ALU] |613| 
        CMPL      ACC,P                 ; [CPU_ALU] |613| 
        B         ||$C$L100||,EQ        ; [CPU_ALU] |613| 
        ; branchcc occurs ; [] |613| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        ADDB      XAR4,#24              ; [CPU_ALU] |68| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |68| 
        MOVL      *-SP[22],ACC          ; [CPU_ALU] |68| 
        MOVL      *-SP[52],XAR4         ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 613,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |613| 
        AND       AH,#32640             ; [CPU_ALU] |613| 
        CMPL      ACC,P                 ; [CPU_ALU] |613| 
        B         ||$C$L100||,EQ        ; [CPU_ALU] |613| 
        ; branchcc occurs ; [] |613| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |68| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |68| 
        MOVB      XAR1,#26              ; [CPU_ALU] |68| 
        MOVL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |68| 
        MOVL      *-SP[24],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 613,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |613| 
        AND       AH,#32640             ; [CPU_ALU] |613| 
        CMPL      ACC,P                 ; [CPU_ALU] |613| 
        B         ||$C$L100||,EQ        ; [CPU_ALU] |613| 
        ; branchcc occurs ; [] |613| 
        MOVB      XAR6,#2               ; [CPU_ALU] 
||$C$L99||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |68| 
        MOVL      *-SP[26],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 617,column 24,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |617| 
        AND       AH,#32640             ; [CPU_ALU] |617| 
        CMPL      ACC,P                 ; [CPU_ALU] |617| 
        B         ||$C$L100||,EQ        ; [CPU_ALU] |617| 
        ; branchcc occurs ; [] |617| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[6]         ; [CPU_ALU] |68| 
        MOVL      *-SP[28],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 617,column 24,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |617| 
        AND       AH,#32640             ; [CPU_ALU] |617| 
        CMPL      ACC,P                 ; [CPU_ALU] |617| 
        B         ||$C$L101||,NEQ       ; [CPU_ALU] |617| 
        ; branchcc occurs ; [] |617| 
||$C$L100||:    
        MOVL      XAR0,#18              ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 617,column 83,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |617| 
        B         ||$C$L157||,UNC       ; [CPU_ALU] |617| 
        ; branch occurs ; [] |617| 
||$C$L101||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 617,column 14,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |617| 
        BANZ      ||$C$L99||,AR6--      ; [CPU_ALU] |617| 
        ; branchcc occurs ; [] |617| 
        MOVL      XAR0,#20              ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        DIV2PIF32 R1H,R4H               ; [CPU_FPU] |144| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        MOVL      XAR6,#||pf_select_work|| ; [CPU_ARAU] |161| 
        MOVL      XAR0,#26              ; [CPU_ALU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        SINPUF32  R5H,R1H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        DIV2PIF32 R7H,R4H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        MOVL      *+FP[AR0],XAR6        ; [CPU_ALU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        MOVIZ     R1H,#16147            ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0

        ADDF32    R0H,R0H,R0H           ; [CPU_FPU] |159| 
||      MOV32     R2H,*+XAR4[2]         ; [CPU_FPU] |159| 

        MOVB      XAR1,#8               ; [CPU_ALU] |159| 

        SUBF32    R6H,R0H,R2H           ; [CPU_FPU] |159| 
||      MOV32     R3H,*+XAR4[4]         ; [CPU_FPU] |159| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        MOVXI     R1H,#52538            ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        SUBF32    R2H,R2H,R3H           ; [CPU_FPU] |160| 
        MOVW      DP,#||pf_input_rotation||+2 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        SUBF32    R6H,R6H,R3H           ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 621,column 5,is_stmt,isa 0
        MOVL      XAR7,#||pf_first_plan|| ; [CPU_ARAU] |621| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        MOV32     R0H,R5H               ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        MPYF32    R1H,R1H,R2H           ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        COSPUF32  R3H,R7H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        NEGF32    R0H,R0H               ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        MOVIZ     R7H,#16042            ; [CPU_FPU] |159| 
        MOVXI     R7H,#43691            ; [CPU_FPU] |159| 
        MPYF32    R2H,R7H,R6H           ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        MPYF32    R7H,R5H,R1H           ; [CPU_FPU] |161| 
        MPYF32    R6H,R3H,R2H           ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        MPYF32    R2H,R2H,R0H           ; [CPU_FPU] |161| 
        MPYF32    R1H,R1H,R3H           ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        ADDF32    R6H,R6H,R7H           ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        ADDF32    R1H,R1H,R2H           ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        MOV32     *+XAR6[0],R6H         ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        MOV32     *+XAR6[2],R1H         ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        MOV32     R6H,*+XAR4[6]         ; [CPU_FPU] |159| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |159| 

        ADDF32    R6H,R6H,R6H           ; [CPU_FPU] |159| 
||      MOV32     R2H,*+XAR4[AR1]       ; [CPU_FPU] |159| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 621,column 5,is_stmt,isa 0
        MOVL      XAR0,#22              ; [CPU_ALU] |621| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        SUBF32    R6H,R6H,R2H           ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 621,column 5,is_stmt,isa 0
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |621| 
        MOVL      XAR0,#20              ; [CPU_ALU] |621| 
        MOVB      XAR1,#22              ; [CPU_ALU] |621| 
        MOVL      XAR3,*+FP[AR0]        ; [CPU_ALU] |621| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        SUBF32    R7H,R6H,R1H           ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 621,column 5,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |621| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        SUBF32    R6H,R2H,R1H           ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        MOVIZ     R2H,#16042            ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        MOVIZ     R1H,#16147            ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        MOVXI     R2H,#43691            ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        MOVXI     R1H,#52538            ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 159,column 14,is_stmt,isa 0
        MPYF32    R2H,R2H,R7H           ; [CPU_FPU] |159| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 160,column 14,is_stmt,isa 0
        MPYF32    R1H,R1H,R6H           ; [CPU_FPU] |160| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        MPYF32    R0H,R2H,R0H           ; [CPU_FPU] |161| 
        MPYF32    R6H,R1H,R3H           ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        MPYF32    R2H,R3H,R2H           ; [CPU_FPU] |161| 
        MPYF32    R1H,R5H,R1H           ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        ADDF32    R0H,R0H,R6H           ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0

        ADDF32    R1H,R1H,R2H           ; [CPU_FPU] |161| 
||      MOV32     @||pf_input_rotation||+2,R3H ; [CPU_FPU] |144| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        MOV32     *+XAR6[6],R0H         ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        MOV32     *+XAR6[4],R1H         ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 621,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR3[AR0]       ; [CPU_FPU] |621| 
        MOVL      XAR0,#20              ; [CPU_ALU] |621| 
        MOV32     R2H,*+XAR4[0]         ; [CPU_FPU] |621| 
        MOVL      XAR0,*+FP[AR0]        ; [CPU_ALU] |621| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 5,is_stmt,isa 0
        MOV32     @||pf_input_rotation||,R4H ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 621,column 5,is_stmt,isa 0
        MOVL      XAR5,XAR7             ; [CPU_ALU] |621| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        MOV32     @||pf_input_rotation||+4,R5H ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 621,column 5,is_stmt,isa 0
        MOV32     R1H,*+XAR0[AR1]       ; [CPU_FPU] |621| 
$C$DW$418	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$418, DW_AT_low_pc(0x00)
	.dwattr $C$DW$418, DW_AT_name("pf_plan")
	.dwattr $C$DW$418, DW_AT_TI_call

        LCR       #||pf_plan||          ; [CPU_ALU] |621| 
        ; call occurs [#||pf_plan||] ; [] |621| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 622,column 5,is_stmt,isa 0
        MOVB      XAR1,#14              ; [CPU_ALU] |622| 
        MOVL      XAR0,#20              ; [CPU_ALU] |622| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |622| 
        MOVL      XAR0,#18              ; [CPU_ALU] |622| 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |622| 
        MOVB      XAR0,#12              ; [CPU_ALU] |622| 
        MOV32     R4H,*+XAR4[AR1]       ; [CPU_FPU] |622| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 623,column 5,is_stmt,isa 0
        ADDB      ACC,#170              ; [CPU_ALU] |623| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 622,column 5,is_stmt,isa 0
        MOV32     R5H,*+XAR4[AR0]       ; [CPU_FPU] |622| 
        MOVL      XAR4,*-SP[52]         ; [CPU_FPU] |622| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 623,column 5,is_stmt,isa 0
        MOV       P,#0                  ; [CPU_FPU] |623| 
        MOVL      XAR0,#20              ; [CPU_ALU] |623| 
        MOV32     R0H,R5H               ; [CPU_FPU] |623| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |623| 
        MOVL      *-SP[4],XAR7          ; [CPU_ALU] |623| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |623| 
        MOVL      *-SP[8],P             ; [CPU_ALU] |623| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |623| 
        MOV32     R1H,R4H               ; [CPU_FPU] |623| 
        MOVB      XAR1,#28              ; [CPU_ALU] |623| 
        MOVL      XAR5,XAR6             ; [CPU_ALU] |623| 
        MOV       AL,*+XAR4[AR1]        ; [CPU_ALU] |623| 
$C$DW$419	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$419, DW_AT_low_pc(0x00)
	.dwattr $C$DW$419, DW_AT_name("pf_control_interval")
	.dwattr $C$DW$419, DW_AT_TI_call

        LCR       #||pf_control_interval|| ; [CPU_ALU] |623| 
        ; call occurs [#||pf_control_interval||] ; [] |623| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 622,column 5,is_stmt,isa 0
        ADDF32    R5H,R5H,R4H           ; [CPU_FPU] |622| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 623,column 5,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |623| 
        B         ||$C$L103||,NEQ       ; [CPU_ALU] |623| 
        ; branchcc occurs ; [] |623| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 626,column 5,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |626| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |626| 
        MOVB      XAR1,#170             ; [CPU_ALU] |626| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 626,column 49,is_stmt,isa 0
        MOVB      XAR0,#142             ; [CPU_ALU] |626| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 626,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |626| 
        MOVB      XAR1,#140             ; [CPU_ALU] |626| 
        MOVL      *+XAR4[AR1],ACC       ; [CPU_ALU] |626| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 626,column 49,is_stmt,isa 0
        MOVB      XAR1,#172             ; [CPU_ALU] |626| 
        MOVL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |626| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 627,column 5,is_stmt,isa 0
        MOVB      XAR1,#174             ; [CPU_ALU] |627| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 626,column 49,is_stmt,isa 0
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |626| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 627,column 5,is_stmt,isa 0
        MOVB      XAR0,#144             ; [CPU_ALU] |627| 
        MOVL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |627| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |627| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 629,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |629| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |629| 
        MOVB      XAR1,#22              ; [CPU_ALU] |629| 
        MOVL      XAR0,#22              ; [CPU_ALU] |629| 
        MOV32     R4H,*+XAR4[AR1]       ; [CPU_FPU] |629| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |629| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 630,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |630| 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |630| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 629,column 5,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |629| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |629| 

        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |629| 
||      MPYF32    R1H,R4H,R1H           ; [CPU_FPU] |629| 

        MOVL      XAR0,#18              ; [CPU_ALU] |629| 

        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |629| 
||      MOV32     R7H,*+XAR4[2]         ; [CPU_FPU] |629| 

        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |629| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 631,column 5,is_stmt,isa 0
        MOV32     R2H,R7H               ; [CPU_FPU] |631| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 630,column 5,is_stmt,isa 0
        MOVB      XAR1,#144             ; [CPU_ALU] |630| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 629,column 5,is_stmt,isa 0
        MOV32     *-SP[50],R0H          ; [CPU_FPU] |629| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 630,column 5,is_stmt,isa 0
        MOV32     R6H,*+XAR5[AR1]       ; [CPU_FPU] |630| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 631,column 5,is_stmt,isa 0
        MOV32     R1H,R4H               ; [CPU_FPU] |631| 
        MOVL      XAR5,#||pf_candidate_plan|| ; [CPU_ARAU] |631| 
        MOVL      *-SP[58],XAR5         ; [CPU_ALU] |631| 
$C$DW$420	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$420, DW_AT_low_pc(0x00)
	.dwattr $C$DW$420, DW_AT_name("pf_plan")
	.dwattr $C$DW$420, DW_AT_TI_call

        LCR       #||pf_plan||          ; [CPU_ALU] |631| 
        ; call occurs [#||pf_plan||] ; [] |631| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 633,column 5,is_stmt,isa 0
        MOVL      XAR6,#||pf_candidate_seed|| ; [CPU_ARAU] |633| 
        MOVW      DP,#||pf_reference_rotation|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 629,column 5,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |629| 
        MPYF32    R1H,R7H,R4H           ; [CPU_FPU] |629| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 630,column 5,is_stmt,isa 0
        SUBF32    R3H,R5H,R6H           ; [CPU_FPU] |630| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 629,column 5,is_stmt,isa 0
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |629| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 630,column 36,is_stmt,isa 0

        ADDF32    R7H,R6H,R5H           ; [CPU_FPU] |630| 
||      MOV32     R0H,*-SP[50]          ; [CPU_FPU] 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 633,column 5,is_stmt,isa 0
        ADDB      ACC,#140              ; [CPU_ALU] |633| 
        MOVL      XAR0,#18              ; [CPU_ALU] |633| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 629,column 5,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |629| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 633,column 5,is_stmt,isa 0
        MOVL      *-SP[54],XAR6         ; [CPU_ALU] |633| 
        MOVL      *-SP[60],ACC          ; [CPU_ALU] |633| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 630,column 5,is_stmt,isa 0
        MPYF32    R5H,R3H,#16128        ; [CPU_FPU] |630| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        DIV2PIF32 R1H,R0H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        DIV2PIF32 R2H,R0H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 5,is_stmt,isa 0
        MOV32     @||pf_reference_rotation||,R0H ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 630,column 36,is_stmt,isa 0
        MPYF32    R4H,R7H,#16128        ; [CPU_FPU] |630| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 633,column 5,is_stmt,isa 0
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |633| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        SINPUF32  R1H,R1H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        COSPUF32  R2H,R2H               ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 633,column 5,is_stmt,isa 0
        ADDB      ACC,#140              ; [CPU_ALU] |633| 
        MOVL      *-SP[2],XAR5          ; [CPU_ALU] |633| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 40,is_stmt,isa 0
        MOV32     @||pf_reference_rotation||+4,R1H ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 633,column 5,is_stmt,isa 0
        MOV32     R0H,R5H               ; [CPU_FPU] |633| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 144,column 20,is_stmt,isa 0
        MOV32     @||pf_reference_rotation||+2,R2H ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 633,column 5,is_stmt,isa 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |633| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |633| 
        MOVL      XAR5,*-SP[52]         ; [CPU_ALU] |633| 
        MOV32     R1H,R4H               ; [CPU_FPU] |633| 
$C$DW$421	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$421, DW_AT_low_pc(0x00)
	.dwattr $C$DW$421, DW_AT_name("pf_seed")
	.dwattr $C$DW$421, DW_AT_TI_call

        LCR       #||pf_seed||          ; [CPU_ALU] |633| 
        ; call occurs [#||pf_seed||] ; [] |633| 
        MOVL      XAR0,#18              ; [CPU_ALU] |633| 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |633| 
        MOVL      XAR0,#18              ; [CPU_ALU] 
        ADD       ACC,#131 << 1         ; [CPU_ALU] 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_FPU] 
        MOV       *-SP[50],#0           ; [CPU_FPU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 634,column 9,is_stmt,isa 0
        MOVB      XAR3,#0               ; [CPU_ALU] |634| 
        MOVL      *-SP[56],ACC          ; [CPU_ALU] 
        MOVL      *-SP[62],XAR6         ; [CPU_ALU] 
||$C$L102||:    
        MOV       AL,*-SP[50]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 265,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[52]         ; [CPU_ALU] |265| 
        AND       AH,AR3,#0x0002        ; [CPU_ALU] |265| 
        ANDB      AL,#7                 ; [CPU_ALU] |265| 
        OR        AH,AL                 ; [CPU_ALU] |265| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 637,column 9,is_stmt,isa 0
        MOVL      *-SP[2],XAR6          ; [CPU_FPU] |637| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 265,column 5,is_stmt,isa 0
        MOV       AL,AR3                ; [CPU_FPU] |265| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 637,column 9,is_stmt,isa 0
        MOV32     R0H,R5H               ; [CPU_FPU] |637| 
        MOVL      XAR6,*-SP[58]         ; [CPU_ALU] |637| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 265,column 5,is_stmt,isa 0
        LSR       AL,2                  ; [CPU_ALU] |265| 
        ANDB      AL,#0x01              ; [CPU_ALU] |265| 
        OR        AL,AH                 ; [CPU_ALU] |265| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 637,column 9,is_stmt,isa 0
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |637| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 265,column 5,is_stmt,isa 0
        MOVZ      AR1,AL                ; [CPU_ALU] |265| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 637,column 9,is_stmt,isa 0
        MOVL      XAR6,*-SP[56]         ; [CPU_ALU] |637| 
        MOVL      XAR5,*-SP[60]         ; [CPU_ALU] |637| 
        MOV32     R1H,R4H               ; [CPU_FPU] |637| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 265,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[54]          ; [CPU_ALU] |265| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 637,column 9,is_stmt,isa 0
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |637| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |637| 
        MOV       AL,AR1                ; [CPU_ALU] |637| 
$C$DW$422	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$422, DW_AT_low_pc(0x00)
	.dwattr $C$DW$422, DW_AT_name("pf_control_interval")
	.dwattr $C$DW$422, DW_AT_TI_call

        LCR       #||pf_control_interval|| ; [CPU_ALU] |637| 
        ; call occurs [#||pf_control_interval||] ; [] |637| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 265,column 5,is_stmt,isa 0
        MOV       PL,AR1                ; [CPU_ALU] |265| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 637,column 9,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |637| 
        B         ||$C$L104||,EQ        ; [CPU_ALU] |637| 
        ; branchcc occurs ; [] |637| 
||$C$L103||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 639,column 47,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |639| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |639| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 639,column 28,is_stmt,isa 0
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |639| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 639,column 47,is_stmt,isa 0
        B         ||$C$L157||,UNC       ; [CPU_ALU] |639| 
        ; branch occurs ; [] |639| 
||$C$L104||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 640,column 9,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |640| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |640| 
        MOV       ACC,AR3 << 2          ; [CPU_ALU] |640| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 642,column 9,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |642| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 643,column 9,is_stmt,isa 0
        MOVL      XAR1,*-SP[62]         ; [CPU_ALU] |643| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 640,column 9,is_stmt,isa 0
        ADDL      ACC,XAR6              ; [CPU_ALU] |640| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |640| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 642,column 9,is_stmt,isa 0
        MOV       ACC,AR3 << 1          ; [CPU_ALU] |642| 
        ADDL      XAR6,ACC              ; [CPU_ALU] |642| 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |642| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 643,column 9,is_stmt,isa 0
        ADDU      ACC,AR3               ; [CPU_ALU] |643| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |643| 
        MOVL      XAR0,#272             ; [CPU_ALU] |643| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |643| 
        MOV       AL,*+XAR1[AR0]        ; [CPU_ALU] |643| 
        ADDB      XAR7,#36              ; [CPU_ALU] |643| 
        MOV       *+XAR7[0],AL          ; [CPU_ALU] |643| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 642,column 9,is_stmt,isa 0
        MOVL      XAR7,*-SP[62]         ; [CPU_ALU] |642| 
        MOVL      XAR1,#266             ; [CPU_ALU] |642| 
        MOVL      ACC,*+XAR7[AR1]       ; [CPU_ALU] |642| 
        MOVL      XAR7,*-SP[56]         ; [CPU_ALU] |642| 
        MOVB      XAR0,#124             ; [CPU_ALU] |642| 
        MOVL      *+XAR6[AR0],ACC       ; [CPU_ALU] |642| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 640,column 9,is_stmt,isa 0
        MOVB      XAR0,#92              ; [CPU_ALU] |640| 
        MOVL      ACC,*+XAR7[0]         ; [CPU_ALU] |640| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 641,column 9,is_stmt,isa 0
        MOVL      XAR7,*-SP[62]         ; [CPU_ALU] |641| 
        MOVL      XAR1,#264             ; [CPU_ALU] |641| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 640,column 9,is_stmt,isa 0
        MOVL      *+XAR5[AR0],ACC       ; [CPU_ALU] |640| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 641,column 9,is_stmt,isa 0
        MOVB      XAR0,#94              ; [CPU_ALU] |641| 
        MOVL      ACC,*+XAR7[AR1]       ; [CPU_ALU] |641| 
        MOVL      *+XAR5[AR0],ACC       ; [CPU_ALU] |641| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 645,column 9,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |645| 
        MOVL      XAR7,*+FP[AR0]        ; [CPU_ALU] |645| 
        MOVB      XAR1,#18              ; [CPU_ALU] |645| 
        MOVB      XAR0,#92              ; [CPU_ALU] |645| 
        MOV32     R2H,*+XAR5[AR0]       ; [CPU_FPU] |645| 
        MOV32     R3H,*+XAR7[AR1]       ; [CPU_FPU] |645| 
        MOVB      XAR0,#94              ; [CPU_ALU] |645| 
        MOVB      XAR1,#16              ; [CPU_ALU] |645| 
        MOV32     R6H,*+XAR5[AR0]       ; [CPU_FPU] |645| 
        MOVL      XAR0,#20              ; [CPU_ALU] |645| 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |645| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 645,column 32,is_stmt,isa 0
        MOVB      XAR0,#124             ; [CPU_ALU] |645| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 645,column 9,is_stmt,isa 0

        MOV32     R0H,*+XAR6[AR0]       ; [CPU_FPU] |645| 
||      SUBF32    R7H,R6H,R3H           ; [CPU_FPU] |645| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 645,column 32,is_stmt,isa 0
        MOVB      XAR0,#60              ; [CPU_ALU] |645| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 645,column 9,is_stmt,isa 0

        MPYF32    R0H,R0H,R0H           ; [CPU_FPU] |645| 
||      MOV32     R1H,*+XAR5[AR1]       ; [CPU_FPU] |645| 

        SUBF32    R1H,R2H,R1H           ; [CPU_FPU] |645| 
        MOVL      XAR5,XAR6             ; [CPU_ALU] |645| 
        MPYF32    R2H,R7H,R7H           ; [CPU_FPU] |645| 

        MOV32     *+XAR6[AR0],R0H       ; [CPU_FPU] |645| 
||      MPYF32    R1H,R1H,R1H           ; [CPU_FPU] |645| 

        MOVL      XAR0,#20              ; [CPU_ALU] |645| 
        ADDF32    R1H,R1H,R2H           ; [CPU_FPU] |645| 
        ADDB      XAR5,#44              ; [CPU_ALU] |645| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |645| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 647,column 9,is_stmt,isa 0
        MOV       AL,PL                 ; [CPU_ALU] |647| 
        MOVB      XAR1,#28              ; [CPU_ALU] |647| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 645,column 9,is_stmt,isa 0
        MOV32     *+XAR5[0],R1H         ; [CPU_FPU] |645| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 647,column 9,is_stmt,isa 0
        XOR       AL,*+XAR6[AR1]        ; [CPU_ALU] |647| 
        MOVZ      AR1,AL                ; [CPU_ALU] |647| 
        MOVB      XAR0,#28              ; [CPU_ALU] |647| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 648,column 9,is_stmt,isa 0
        MOV       PH,#32640             ; [CPU_ALU] |648| 
        MOV       PL,#0                 ; [CPU_ALU] |648| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 647,column 9,is_stmt,isa 0
        MOV       AH,AR1                ; [CPU_ALU] |647| 
        AND       AL,AR1,#0x0001        ; [CPU_ALU] |647| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      XAR6,*+XAR5[0]        ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 647,column 9,is_stmt,isa 0
        LSR       AH,1                  ; [CPU_ALU] |647| 
        ANDB      AH,#0x01              ; [CPU_ALU] |647| 
        ADD       AH,AL                 ; [CPU_ALU] |647| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      *-SP[30],XAR6         ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 647,column 9,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_ALU] |647| 
        LSR       AL,2                  ; [CPU_ALU] |647| 
        ANDB      AL,#0x01              ; [CPU_ALU] |647| 
        ADD       AL,AH                 ; [CPU_ALU] |647| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |647| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 648,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[30]          ; [CPU_ALU] |648| 
        ANDB      AL,#0                 ; [CPU_ALU] |648| 
        AND       AH,#32640             ; [CPU_ALU] |648| 
        CMPL      ACC,P                 ; [CPU_ALU] |648| 
        B         ||$C$L132||,EQ        ; [CPU_ALU] |648| 
        ; branchcc occurs ; [] |648| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |68| 
        MOVL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |68| 
        MOVL      *-SP[32],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 648,column 9,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |648| 
        AND       AH,#32640             ; [CPU_ALU] |648| 
        CMPL      ACC,P                 ; [CPU_ALU] |648| 
        B         ||$C$L132||,EQ        ; [CPU_ALU] |648| 
        ; branchcc occurs ; [] |648| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 634,column 14,is_stmt,isa 0
        MOVL      ACC,*-SP[62]          ; [CPU_ALU] |634| 
        ADDB      XAR3,#1               ; [CPU_ALU] |634| 
        ADD       *-SP[50],#4           ; [CPU_ALU] |634| 
        ADDB      ACC,#92               ; [CPU_ALU] |634| 
        MOVL      *-SP[62],ACC          ; [CPU_FPU] |634| 
        MOVL      ACC,*-SP[56]          ; [CPU_FPU] |634| 
        ADDB      ACC,#92               ; [CPU_ALU] |634| 
        MOVL      *-SP[56],ACC          ; [CPU_FPU] |634| 
        MOV       AL,AR3                ; [CPU_ALU] |634| 
        CMPB      AL,#8                 ; [CPU_ALU] |634| 
        B         ||$C$L102||,LO        ; [CPU_ALU] |634| 
        ; branchcc occurs ; [] |634| 
        MOVL      XAR0,#18              ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 650,column 5,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |650| 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |650| 
        MOVL      XAR0,#18              ; [CPU_ALU] |650| 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |650| 
        MOVL      XAR0,#26              ; [CPU_ALU] |650| 
        MOVL      XAR1,*+FP[AR0]        ; [CPU_ALU] |650| 
        ADDB      ACC,#28               ; [CPU_ALU] |650| 
        MOVL      XAR6,XAR1             ; [CPU_FPU] |650| 
        ADDB      XAR4,#44              ; [CPU_ALU] |650| 
        MOVL      *-SP[2],ACC           ; [CPU_FPU] |650| 
        ADDB      XAR5,#60              ; [CPU_ALU] |650| 
        ADDB      XAR6,#24              ; [CPU_ALU] |650| 
        MOVL      *-SP[4],XAR6          ; [CPU_FPU] |650| 
$C$DW$423	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$423, DW_AT_low_pc(0x00)
	.dwattr $C$DW$423, DW_AT_name("pf_rank")
	.dwattr $C$DW$423, DW_AT_TI_call

        LCR       #||pf_rank||          ; [CPU_ALU] |650| 
        ; call occurs [#||pf_rank||] ; [] |650| 
        MOVL      XAR0,#18              ; [CPU_ALU] |650| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |650| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 651,column 5,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |651| 
        MOVL      XAR6,XAR1             ; [CPU_ALU] |651| 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |651| 
        MOVL      XAR0,#18              ; [CPU_ALU] |651| 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] |651| 
        ADDB      XAR6,#32              ; [CPU_ALU] |651| 
        ADDB      XAR4,#60              ; [CPU_ALU] |651| 
        ADDB      ACC,#28               ; [CPU_ALU] |651| 
        ADDB      XAR5,#44              ; [CPU_ALU] |651| 
        MOVL      *-SP[2],ACC           ; [CPU_FPU] |651| 
        MOVL      *-SP[4],XAR6          ; [CPU_FPU] |651| 
$C$DW$424	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$424, DW_AT_low_pc(0x00)
	.dwattr $C$DW$424, DW_AT_name("pf_rank")
	.dwattr $C$DW$424, DW_AT_TI_call

        LCR       #||pf_rank||          ; [CPU_ALU] |651| 
        ; call occurs [#||pf_rank||] ; [] |651| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 652,column 28,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |652| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,*+XAR1[AR0] << 1  ; [CPU_ALU] |652| 
        MOVL      XAR0,#18              ; [CPU_ALU] |652| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |652| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |652| 
        ADDB      ACC,#44               ; [CPU_ALU] |652| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |652| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 653,column 5,is_stmt,isa 0
        MOVL      XAR0,#22              ; [CPU_ALU] |653| 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |653| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 652,column 28,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |652| 
        SQRTF32   R0H,R0H               ; [CPU_FPU] |652| 
        MOVB      XAR0,#10              ; [CPU_ALU] |652| 
        MOV32     R1H,*+XAR5[AR0]       ; [CPU_FPU] |652| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 265,column 1,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |265| 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |265| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 652,column 28,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |652| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 653,column 5,is_stmt,isa 0
        MOVB      XAR1,#146             ; [CPU_ALU] |653| 
        MOV32     *+XAR5[AR1],R0H       ; [CPU_FPU] |653| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 265,column 1,is_stmt,isa 0
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |265| 
        SQRTF32   R1H,R1H               ; [CPU_FPU] |265| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVL      *-SP[52],ACC          ; [CPU_ALU] |265| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |265| 
        MOVST0    ZF, NF                ; [CPU_FPU] |265| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 603,column 57,is_stmt,isa 0
        MOVB      XAR3,#0,GT            ; [CPU_ALU] |603| 
        B         ||$C$L105||,GT        ; [CPU_ALU] 
        ; branchcc occurs ; [] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 658,column 9,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |658| 
        MOVW      DP,#||pf_select_work||+24 ; [CPU_ARAU] 
        MOVB      AL,#1                 ; [CPU_ALU] |658| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |658| 
        MOV       T,@||pf_select_work||+24 ; [CPU_ALU] |658| 
        LSL       AL,T                  ; [CPU_ALU] |658| 
        MOVZ      AR3,AL                ; [CPU_ALU] |658| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 658,column 41,is_stmt,isa 0
        INC       *+XAR4[7]             ; [CPU_ALU] |658| 
||$C$L105||:    
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 265,column 1,is_stmt,isa 0
        MOVL      XAR0,#26              ; [CPU_ALU] |265| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |265| 
        MOVB      XAR1,#25              ; [CPU_ALU] |265| 
        MOV       ACC,*+XAR4[AR1] << 1  ; [CPU_ALU] |265| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |265| 
        ADDB      ACC,#44               ; [CPU_ALU] |265| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |265| 
        MOV32     R1H,*+XAR7[0]         ; [CPU_FPU] |265| 
        SQRTF32   R1H,R1H               ; [CPU_FPU] |265| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        CMPF32    R1H,R0H               ; [CPU_FPU] |265| 
        MOVST0    ZF, NF                ; [CPU_FPU] |265| 
        B         ||$C$L106||,GT        ; [CPU_ALU] |265| 
        ; branchcc occurs ; [] |265| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 658,column 9,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |658| 
        MOVW      DP,#||pf_select_work||+25 ; [CPU_ARAU] 
        MOVB      AL,#1                 ; [CPU_ALU] |658| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |658| 
        MOV       T,@||pf_select_work||+25 ; [CPU_ALU] |658| 
        LSL       AL,T                  ; [CPU_ALU] |658| 
        OR        AR3,AL                ; [CPU_ALU] |658| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 658,column 41,is_stmt,isa 0
        INC       *+XAR4[7]             ; [CPU_FPU] |658| 
||$C$L106||:    
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 265,column 1,is_stmt,isa 0
        MOVL      XAR0,#26              ; [CPU_ALU] |265| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |265| 
        MOVB      XAR1,#26              ; [CPU_ALU] |265| 
        MOV       ACC,*+XAR4[AR1] << 1  ; [CPU_ALU] |265| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |265| 
        ADDB      ACC,#44               ; [CPU_ALU] |265| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |265| 
        MOV32     R1H,*+XAR5[0]         ; [CPU_FPU] |265| 
        SQRTF32   R1H,R1H               ; [CPU_FPU] |265| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        CMPF32    R1H,R0H               ; [CPU_FPU] |265| 
        MOVST0    ZF, NF                ; [CPU_FPU] |265| 
        B         ||$C$L107||,GT        ; [CPU_ALU] |265| 
        ; branchcc occurs ; [] |265| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 658,column 9,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |658| 
        MOVW      DP,#||pf_select_work||+26 ; [CPU_ARAU] 
        MOVB      AL,#1                 ; [CPU_ALU] |658| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |658| 
        MOV       T,@||pf_select_work||+26 ; [CPU_ALU] |658| 
        LSL       AL,T                  ; [CPU_ALU] |658| 
        OR        AR3,AL                ; [CPU_ALU] |658| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 658,column 41,is_stmt,isa 0
        INC       *+XAR4[7]             ; [CPU_FPU] |658| 
||$C$L107||:    
        MOVL      XAR0,#18              ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
        MOVB      XAR6,#7               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 660,column 29,is_stmt,isa 0
        MOV       PH,#3                 ; [CPU_ALU] |660| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 660,column 5,is_stmt,isa 0
        MOVB      XAR1,#27              ; [CPU_ALU] |660| 
        MOV       *+XAR4[AR1],AR3       ; [CPU_ALU] |660| 
||$C$L108||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 662,column 9,is_stmt,isa 0
        MOV       AL,PH                 ; [CPU_ALU] |662| 
        MOV       PL,#0                 ; [CPU_ALU] |662| 
        MOV       *-SP[47],#0           ; [CPU_ALU] |662| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 663,column 18,is_stmt,isa 0
        B         ||$C$L113||,EQ        ; [CPU_ALU] |663| 
        ; branchcc occurs ; [] |663| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 663,column 27,is_stmt,isa 0
        AND       AL,AL,#0xfffe         ; [CPU_ALU] |663| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 663,column 13,is_stmt,isa 0
        MOVB      XAR1,#0               ; [CPU_ALU] |663| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 663,column 27,is_stmt,isa 0
        B         ||$C$L112||,EQ        ; [CPU_ALU] |663| 
        ; branchcc occurs ; [] |663| 
        MOVL      XAR0,#26              ; [CPU_ALU] 
        MOV       AL,PH                 ; [CPU_ALU] 
        MOVL      XAR0,*+FP[AR0]        ; [CPU_ALU] 
        LSR       AL,1                  ; [CPU_ALU] 
        ADDB      AL,#-1                ; [CPU_ALU] 
        MOVZ      AR4,AL                ; [CPU_ALU] 
        ADDB      XAR0,#32              ; [CPU_ALU] 
||$C$L109||:    
        MOV       T,*XAR0++             ; [CPU_ALU] |663| 
        MOVB      AL,#1                 ; [CPU_ALU] |663| 
        MOV       AH,AR3                ; [CPU_ALU] |663| 
        LSL       AL,T                  ; [CPU_ALU] |663| 
        AND       AH,AL                 ; [CPU_ALU] |663| 
        B         ||$C$L110||,EQ        ; [CPU_ALU] |663| 
        ; branchcc occurs ; [] |663| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 663,column 65,is_stmt,isa 0
        OR        *-SP[47],AL           ; [CPU_ALU] |663| 
        MOV       AL,PL                 ; [CPU_ALU] |663| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 663,column 96,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |663| 
        MOV       PL,AL                 ; [CPU_ALU] |663| 
||$C$L110||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 663,column 27,is_stmt,isa 0
        MOV       T,*XAR0++             ; [CPU_ALU] |663| 
        MOVB      AL,#1                 ; [CPU_ALU] |663| 
        MOV       AH,AR3                ; [CPU_ALU] |663| 
        LSL       AL,T                  ; [CPU_ALU] |663| 
        AND       AH,AL                 ; [CPU_ALU] |663| 
        B         ||$C$L111||,EQ        ; [CPU_ALU] |663| 
        ; branchcc occurs ; [] |663| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 663,column 65,is_stmt,isa 0
        OR        *-SP[47],AL           ; [CPU_ALU] |663| 
        MOV       AL,PL                 ; [CPU_ALU] |663| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 663,column 96,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |663| 
        MOV       PL,AL                 ; [CPU_ALU] |663| 
||$C$L111||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 663,column 27,is_stmt,isa 0
        ADDB      XAR1,#2               ; [CPU_ALU] |663| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 663,column 18,is_stmt,isa 0
        BANZ      ||$C$L109||,AR4--     ; [CPU_ALU] |663| 
        ; branchcc occurs ; [] |663| 
||$C$L112||:    
        TBIT      PH,#0                 ; [CPU_ALU] 
        B         ||$C$L113||,NTC       ; [CPU_ALU] 
        ; branchcc occurs ; [] 
; Peeled loop iterations for unrolled loop:
        MOVL      XAR0,#26              ; [CPU_ALU] 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 663,column 27,is_stmt,isa 0
        ADDU      ACC,AR1               ; [CPU_ALU] |663| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |663| 
        MOVB      XAR0,#32              ; [CPU_ALU] |663| 
        MOVB      AL,#1                 ; [CPU_ALU] |663| 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] |663| 
        LSL       AL,T                  ; [CPU_ALU] |663| 
        AND       AL,AR3                ; [CPU_ALU] |663| 
        B         ||$C$L114||,NEQ       ; [CPU_ALU] |663| 
        ; branchcc occurs ; [] |663| 
||$C$L113||:    
        MOV       AL,PL                 ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 664,column 28,is_stmt,isa 0
        B         ||$C$L115||,NEQ       ; [CPU_ALU] |664| 
        ; branchcc occurs ; [] |664| 
        B         ||$C$L116||,UNC       ; [CPU_ALU] |664| 
        ; branch occurs ; [] |664| 
||$C$L114||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 663,column 65,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |663| 
        LSL       AL,T                  ; [CPU_ALU] |663| 
        OR        *-SP[47],AL           ; [CPU_ALU] |663| 
        MOV       AL,PL                 ; [CPU_ALU] |663| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 664,column 28,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |664| 
        MOV       PL,AL                 ; [CPU_ALU] |664| 
        B         ||$C$L116||,EQ        ; [CPU_ALU] |664| 
        ; branchcc occurs ; [] |664| 
||$C$L115||:    
        CMPB      AL,#2                 ; [CPU_ALU] |664| 
        B         ||$C$L119||,LOS       ; [CPU_ALU] |664| 
        ; branchcc occurs ; [] |664| 
        MOV       AL,PH                 ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 665,column 40,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |665| 
        B         ||$C$L118||,LOS       ; [CPU_ALU] |665| 
        ; branchcc occurs ; [] |665| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 665,column 48,is_stmt,isa 0
        ADDB      AL,#-1                ; [CPU_ALU] |665| 
        B         ||$C$L117||,UNC       ; [CPU_ALU] |665| 
        ; branch occurs ; [] |665| 
||$C$L116||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 665,column 28,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |665| 
        MOV       AL,PH                 ; [CPU_ALU] |665| 
        CMPB      AL,#8                 ; [CPU_ALU] |665| 
        MOVB      AH,#1,LO              ; [CPU_ALU] |665| 
        ADD       AL,AH                 ; [CPU_ALU] |665| 
||$C$L117||:    
        MOV       PH,AL                 ; [CPU_ALU] |665| 
||$C$L118||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 661,column 22,is_stmt,isa 0
        BANZ      ||$C$L108||,AR6--     ; [CPU_ALU] |661| 
        ; branchcc occurs ; [] |661| 
||$C$L119||:    
        MOV       AL,PL                 ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 667,column 5,is_stmt,isa 0
        ADDB      AL,#-1                ; [CPU_ALU] |667| 
        CMPB      AL,#2                 ; [CPU_ALU] |667| 
        B         ||$C$L120||,LO        ; [CPU_ALU] |667| 
        ; branchcc occurs ; [] |667| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 667,column 55,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |667| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |667| 
        MOVB      AL,#5                 ; [CPU_ALU] |667| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 667,column 23,is_stmt,isa 0
        MOVB      *+XAR4[0],#5,UNC      ; [CPU_ALU] |667| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 667,column 55,is_stmt,isa 0
        B         ||$C$L157||,UNC       ; [CPU_ALU] |667| 
        ; branch occurs ; [] |667| 
||$C$L120||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 668,column 5,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |668| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |668| 
        MOVB      XAR1,#10              ; [CPU_ALU] |668| 
        MOV       AL,*-SP[47]           ; [CPU_ALU] |668| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 669,column 5,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |669| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 668,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |668| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 668,column 59,is_stmt,isa 0
        MOVB      XAR1,#9               ; [CPU_ALU] |668| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 669,column 5,is_stmt,isa 0
        MOVL      XAR4,#||pf_select_work|| ; [CPU_ARAU] |669| 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] |669| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 668,column 59,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |668| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |668| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 670,column 24,is_stmt,isa 0
        LSR       AL,T                  ; [CPU_ALU] |670| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 669,column 5,is_stmt,isa 0
        MOV       *-SP[46],T            ; [CPU_ALU] |669| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 668,column 33,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |668| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 670,column 24,is_stmt,isa 0
        MOV       *-SP[50],AL           ; [CPU_ALU] |670| 
        TBIT      AL,#0                 ; [CPU_ALU] |670| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 668,column 59,is_stmt,isa 0
        MOVH      *+XAR6[AR1],P         ; [CPU_ALU] |668| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 668,column 33,is_stmt,isa 0
        MOV       *+XAR6[AR0],P         ; [CPU_ALU] |668| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 670,column 24,is_stmt,isa 0
        B         ||$C$L127||,TC        ; [CPU_ALU] |670| 
        ; branchcc occurs ; [] |670| 
        MOVB      XAR0,#25              ; [CPU_ALU] |670| 
        MOVB      AL,#1                 ; [CPU_ALU] |670| 
        MOV       AH,*-SP[47]           ; [CPU_ALU] |670| 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] |670| 
        LSL       AL,T                  ; [CPU_ALU] |670| 
        AND       AL,AH                 ; [CPU_ALU] |670| 
        B         ||$C$L126||,NEQ       ; [CPU_ALU] |670| 
        ; branchcc occurs ; [] |670| 
        MOVB      XAR0,#26              ; [CPU_ALU] |670| 
        MOVB      AL,#1                 ; [CPU_ALU] |670| 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] |670| 
        LSL       AL,T                  ; [CPU_ALU] |670| 
        AND       AL,AH                 ; [CPU_ALU] |670| 
        B         ||$C$L125||,NEQ       ; [CPU_ALU] |670| 
        ; branchcc occurs ; [] |670| 
        MOVB      XAR0,#27              ; [CPU_ALU] |670| 
        MOVB      AL,#1                 ; [CPU_ALU] |670| 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] |670| 
        LSL       AL,T                  ; [CPU_ALU] |670| 
        AND       AL,AH                 ; [CPU_ALU] |670| 
        B         ||$C$L124||,NEQ       ; [CPU_ALU] |670| 
        ; branchcc occurs ; [] |670| 
        MOVB      XAR0,#28              ; [CPU_ALU] |670| 
        MOVB      AL,#1                 ; [CPU_ALU] |670| 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] |670| 
        LSL       AL,T                  ; [CPU_ALU] |670| 
        AND       AL,AH                 ; [CPU_ALU] |670| 
        B         ||$C$L123||,NEQ       ; [CPU_ALU] |670| 
        ; branchcc occurs ; [] |670| 
        MOVB      XAR0,#29              ; [CPU_ALU] |670| 
        MOVB      AL,#1                 ; [CPU_ALU] |670| 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] |670| 
        LSL       AL,T                  ; [CPU_ALU] |670| 
        AND       AL,AH                 ; [CPU_ALU] |670| 
        B         ||$C$L122||,NEQ       ; [CPU_ALU] |670| 
        ; branchcc occurs ; [] |670| 
        MOVB      XAR0,#30              ; [CPU_ALU] |670| 
        MOVB      AL,#1                 ; [CPU_ALU] |670| 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] |670| 
        LSL       AL,T                  ; [CPU_ALU] |670| 
        AND       AL,AH                 ; [CPU_ALU] |670| 
        B         ||$C$L121||,NEQ       ; [CPU_ALU] |670| 
        ; branchcc occurs ; [] |670| 
        MOVB      XAR0,#31              ; [CPU_ALU] |670| 
        MOVB      AL,#1                 ; [CPU_ALU] |670| 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] |670| 
        LSL       AL,T                  ; [CPU_ALU] |670| 
        AND       AL,AH                 ; [CPU_ALU] |670| 
        B         ||$C$L129||,EQ        ; [CPU_ALU] |670| 
        ; branchcc occurs ; [] |670| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 670,column 19,is_stmt,isa 0
        MOVB      XAR6,#7               ; [CPU_ALU] |670| 
        B         ||$C$L128||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L121||:    
        MOVB      XAR6,#6               ; [CPU_ALU] |670| 
        B         ||$C$L128||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L122||:    
        MOVB      XAR6,#5               ; [CPU_ALU] |670| 
        B         ||$C$L128||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L123||:    
        MOVB      XAR6,#4               ; [CPU_ALU] |670| 
        B         ||$C$L128||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L124||:    
        MOVB      XAR6,#3               ; [CPU_ALU] |670| 
        B         ||$C$L128||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L125||:    
        MOVB      XAR6,#2               ; [CPU_ALU] |670| 
        B         ||$C$L128||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L126||:    
        MOVB      XAR6,#1               ; [CPU_ALU] |670| 
        B         ||$C$L128||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L127||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 670,column 9,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |670| 
||$C$L128||:    
        MOVL      XAR0,#26              ; [CPU_ALU] 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 670,column 61,is_stmt,isa 0
        ADDU      ACC,AR6               ; [CPU_ALU] |670| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |670| 
        MOVB      XAR0,#24              ; [CPU_ALU] |670| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |670| 
        MOV       *-SP[46],AL           ; [CPU_ALU] |670| 
||$C$L129||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 672,column 5,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |672| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |672| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 671,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |671| 
        ADD       AL,*-SP[46]           ; [CPU_ALU] |671| 
        MOVL      XAR0,#20              ; [CPU_FPU] |671| 
        MOV       *+XAR4[2],AL          ; [CPU_ALU] |671| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |671| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 672,column 5,is_stmt,isa 0
        MOVB      XAR1,#22              ; [CPU_ALU] |672| 
        MOVB      AH,#0                 ; [CPU_ALU] |672| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |672| 
        CMPF32    R0H,#0                ; [CPU_FPU] |672| 
        MOVST0    ZF, NF                ; [CPU_FPU] |672| 
        B         ||$C$L130||,LEQ       ; [CPU_ALU] |672| 
        ; branchcc occurs ; [] |672| 
        MOVW      DP,#||pf_select_work||+4 ; [CPU_ARAU] 
        MOVIZ     R0H,#12425            ; [CPU_FPU] |672| 
        MOV32     R1H,@||pf_select_work||+4 ; [CPU_FPU] |672| 
        MOVXI     R0H,#28767            ; [CPU_FPU] |672| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |672| 
        MOVST0    ZF, NF                ; [CPU_FPU] |672| 
        B         ||$C$L130||,LEQ       ; [CPU_ALU] |672| 
        ; branchcc occurs ; [] |672| 
        CMPF32    R5H,#0                ; [CPU_FPU] |672| 
        MOVST0    ZF, NF                ; [CPU_FPU] |672| 
        B         ||$C$L130||,LEQ       ; [CPU_ALU] |672| 
        ; branchcc occurs ; [] |672| 
        CMPF32    R4H,#0                ; [CPU_FPU] |672| 
        MOVST0    ZF, NF                ; [CPU_FPU] |672| 
        MOVB      AH,#1,GT              ; [CPU_ALU] |672| 
||$C$L130||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 674,column 5,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |674| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |674| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 672,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |672| 
        MOV       *+XAR4[4],AH          ; [CPU_ALU] |672| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |672| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 674,column 5,is_stmt,isa 0
        MOVB      XAR1,#29              ; [CPU_ALU] |674| 
        MOVB      AH,#0                 ; [CPU_ALU] |674| 
        MOV       AL,*+XAR4[AR1]        ; [CPU_ALU] |674| 
        CMPB      AL,#0                 ; [CPU_ALU] |674| 
        B         ||$C$L131||,EQ        ; [CPU_ALU] |674| 
        ; branchcc occurs ; [] |674| 
        MOVB      XAR1,#30              ; [CPU_ALU] |674| 
        MOV       AL,*+XAR4[AR1]        ; [CPU_ALU] |674| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |674| 
||$C$L131||:    
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |266| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |266| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 674,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |674| 
        MOV       *+XAR4[5],AH          ; [CPU_ALU] |674| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |674| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        MOVB      XAR1,#16              ; [CPU_ALU] |266| 
        MOVB      XAR0,#18              ; [CPU_ALU] |266| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |266| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0

        MPYF32    R2H,R0H,R0H           ; [CPU_FPU] |68| 
||      MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |266| 

	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        MPYF32    R1H,R1H,R1H           ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        ADDF32    R2H,R2H,R1H           ; [CPU_FPU] |68| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 676,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |676| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        SQRTF32   R2H,R2H               ; [CPU_FPU] |68| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        MPYF32    R3H,R0H,R0H           ; [CPU_FPU] |266| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 676,column 5,is_stmt,isa 0
        MOV       PH,#32640             ; [CPU_ALU] |676| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        ADDF32    R1H,R1H,R3H           ; [CPU_FPU] |266| 
        MOVL      XAR0,#24              ; [CPU_ALU] |266| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[34],R2H          ; [CPU_FPU] |68| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        SQRTF32   R1H,R1H               ; [CPU_FPU] |266| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 676,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[34]          ; [CPU_ALU] |676| 
        ANDB      AL,#0                 ; [CPU_ALU] |676| 
        AND       AH,#32640             ; [CPU_ALU] |676| 
        CMPL      ACC,P                 ; [CPU_ALU] |676| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        MOV32     *+FP[AR0],R1H         ; [CPU_FPU] |266| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 676,column 5,is_stmt,isa 0
        B         ||$C$L132||,EQ        ; [CPU_ALU] |676| 
        ; branchcc occurs ; [] |676| 
        MOVW      DP,#||pf_reference_rotation||+4 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 677,column 5,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |677| 
        MOVL      XAR6,#||pf_select_work|| ; [CPU_ARAU] |677| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOV32     R1H,@||pf_reference_rotation||+4 ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 677,column 28,is_stmt,isa 0
        MOVB      XAR1,#18              ; [CPU_ALU] |677| 
        MOVW      DP,#||pf_select_work||+20 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 677,column 5,is_stmt,isa 0
        MOV32     *+XAR6[AR0],R0H       ; [CPU_FPU] |677| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOV32     R0H,@||pf_select_work||+20 ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 677,column 28,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |677| 
        MOVL      ACC,*+XAR4[AR1]       ; [CPU_ALU] |677| 
        MOVW      DP,#||pf_reference_rotation||+2 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOV32     R2H,@||pf_reference_rotation||+2 ; [CPU_FPU] |165| 
        MOVW      DP,#||pf_select_work||+20 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 677,column 28,is_stmt,isa 0
        MOVL      *+XAR6[AR0],ACC       ; [CPU_ALU] |677| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0

        MPYF32    R7H,R2H,R0H           ; [CPU_FPU] |165| 
||      MOV32     R3H,@||pf_select_work||+20 ; [CPU_FPU] |165| 

        MPYF32    R3H,R1H,R3H           ; [CPU_FPU] |165| 
||      MOV32     R0H,@||pf_select_work||+22 ; [CPU_FPU] |165| 

        MPYF32    R6H,R1H,R0H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVIZ     R0H,#16221            ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0

        MOV32     R7H,@||pf_select_work||+22 ; [CPU_FPU] |165| 
||      SUBF32    R6H,R7H,R6H           ; [CPU_FPU] |165| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0
        MPYF32    R7H,R2H,R7H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVXI     R0H,#46039            ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0
        ADDF32    R7H,R7H,R3H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOV32     R3H,R6H               ; [CPU_FPU] |166| 
        MPYF32    R0H,R0H,R7H           ; [CPU_FPU] |166| 
        NEGF32    R3H,R3H               ; [CPU_FPU] |166| 
        MPYF32    R3H,R3H,#16128        ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 678,column 5,is_stmt,isa 0
        MOVB      XAR1,#22              ; [CPU_ALU] |678| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        ADDF32    R7H,R0H,R3H           ; [CPU_FPU] |166| 
        MOVB      XAR0,#10              ; [CPU_ALU] |166| 

        SUBF32    R0H,R3H,R0H           ; [CPU_FPU] |167| 
||      MOV32     *+XAR6[AR0],R7H       ; [CPU_FPU] |166| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |167| 
        MOV32     *+XAR6[AR0],R0H       ; [CPU_FPU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |166| 
        MOV32     *+XAR6[AR0],R6H       ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 678,column 5,is_stmt,isa 0
        MOVL      XAR0,#22              ; [CPU_ALU] |678| 
        MOV32     R0H,*+XAR4[AR1]       ; [CPU_FPU] |678| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |678| 
        MOVL      XAR0,#20              ; [CPU_ALU] |678| 
        MOVL      XAR0,*+FP[AR0]        ; [CPU_ALU] |678| 
        MOVB      XAR1,#18              ; [CPU_ALU] |678| 
        MOV32     R3H,*+XAR4[4]         ; [CPU_FPU] |678| 

        MOV32     R3H,*+XAR0[AR1]       ; [CPU_FPU] |678| 
||      MPYF32    R0H,R3H,R0H           ; [CPU_FPU] |678| 

        MOVL      XAR0,#20              ; [CPU_ALU] |678| 
        MOVL      XAR0,*+FP[AR0]        ; [CPU_ALU] |678| 
        MOVB      XAR1,#16              ; [CPU_ALU] |678| 
        MOV32     R7H,*+XAR4[6]         ; [CPU_FPU] |678| 

        MOV32     R3H,*+XAR0[AR1]       ; [CPU_FPU] |678| 
||      MPYF32    R6H,R3H,R0H           ; [CPU_FPU] |678| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 679,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |679| 
        MOVB      XAR1,#18              ; [CPU_ALU] |679| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 678,column 5,is_stmt,isa 0
        MPYF32    R0H,R3H,R7H           ; [CPU_FPU] |678| 
        MOV32     R7H,*+XAR6[4]         ; [CPU_FPU] |678| 
        SUBF32    R0H,R7H,R0H           ; [CPU_FPU] |678| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 679,column 5,is_stmt,isa 0
        MOVL      XAR0,*+FP[AR0]        ; [CPU_ALU] |679| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 678,column 5,is_stmt,isa 0
        ADDF32    R0H,R0H,R6H           ; [CPU_FPU] |678| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 679,column 5,is_stmt,isa 0
        MOV32     R7H,*+XAR6[6]         ; [CPU_FPU] |679| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 678,column 5,is_stmt,isa 0
        MOV32     @||pf_select_work||+20,R0H ; [CPU_FPU] |678| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      ACC,@||pf_select_work||+20 ; [CPU_ALU] |68| 
        MOVL      *-SP[36],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 679,column 5,is_stmt,isa 0
        MOV32     R3H,*+XAR0[AR1]       ; [CPU_FPU] |679| 
        MOV32     R0H,*+XAR4[6]         ; [CPU_FPU] |679| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 683,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |683| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 679,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |679| 
        MOVB      XAR1,#22              ; [CPU_ALU] |679| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |679| 
        MOVL      XAR0,#20              ; [CPU_FPU] |679| 

        MOV32     R3H,*+XAR4[4]         ; [CPU_FPU] |679| 
||      MPYF32    R0H,R3H,R0H           ; [CPU_FPU] |679| 

        MOVL      XAR4,*+FP[AR0]        ; [CPU_FPU] |679| 

        MOV32     R0H,*+XAR6[AR1]       ; [CPU_FPU] |679| 
||      SUBF32    R6H,R7H,R0H           ; [CPU_FPU] |679| 

        MOVB      XAR1,#16              ; [CPU_FPU] |679| 
        MPYF32    R0H,R3H,R0H           ; [CPU_FPU] |679| 
        MOV32     R3H,*+XAR4[AR1]       ; [CPU_FPU] |679| 
        MPYF32    R0H,R3H,R0H           ; [CPU_FPU] |679| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 683,column 5,is_stmt,isa 0
        AND       AH,#32640             ; [CPU_ALU] |683| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 679,column 5,is_stmt,isa 0
        SUBF32    R0H,R6H,R0H           ; [CPU_FPU] |679| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 683,column 5,is_stmt,isa 0
        CMPL      ACC,P                 ; [CPU_ALU] |683| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 679,column 5,is_stmt,isa 0
        MOV32     @||pf_select_work||+22,R0H ; [CPU_FPU] |679| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 683,column 5,is_stmt,isa 0
        B         ||$C$L132||,EQ        ; [CPU_ALU] |683| 
        ; branchcc occurs ; [] |683| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      ACC,@||pf_select_work||+22 ; [CPU_ALU] |68| 
        MOVL      *-SP[38],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 683,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |683| 
        AND       AH,#32640             ; [CPU_ALU] |683| 
        CMPL      ACC,P                 ; [CPU_ALU] |683| 
        B         ||$C$L134||,NEQ       ; [CPU_ALU] |683| 
        ; branchcc occurs ; [] |683| 
||$C$L132||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 683,column 83,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |683| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |683| 
||$C$L133||:    
        MOVB      AL,#6                 ; [CPU_ALU] |683| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 683,column 56,is_stmt,isa 0
        MOVB      *+XAR4[0],#6,UNC      ; [CPU_ALU] |683| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 683,column 83,is_stmt,isa 0
        B         ||$C$L157||,UNC       ; [CPU_ALU] |683| 
        ; branch occurs ; [] |683| 
||$C$L134||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |165| 
        MOVL      XAR3,#||pf_select_work|| ; [CPU_ARAU] |165| 
        MOVB      XAR1,#20              ; [CPU_ALU] |165| 
        MOV32     R0H,*+XAR3[AR0]       ; [CPU_FPU] |165| 

        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |165| 
||      MOV32     R3H,*+XAR3[AR1]       ; [CPU_FPU] |165| 

        MPYF32    R3H,R2H,R3H           ; [CPU_FPU] |165| 
||      MOV32     R7H,@||pf_select_work||+20 ; [CPU_FPU] |165| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0

        MPYF32    R1H,R1H,R7H           ; [CPU_FPU] |165| 
||      MOV32     R6H,@||pf_select_work||+22 ; [CPU_FPU] |165| 

        MOVB      XAR6,#2               ; [CPU_ALU] 
        MPYF32    R2H,R2H,R6H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVIZ     R7H,#16221            ; [CPU_FPU] |166| 
        MOVB      XAR1,#16              ; [CPU_ALU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 14,is_stmt,isa 0
        SUBF32    R0H,R3H,R0H           ; [CPU_FPU] |165| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVXI     R7H,#46039            ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 165,column 40,is_stmt,isa 0

        MOV32     *+XAR3[AR0],R0H       ; [CPU_FPU] |166| 
||      ADDF32    R2H,R2H,R1H           ; [CPU_FPU] |165| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVL      XAR0,#26              ; [CPU_ALU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 685,column 26,is_stmt,isa 0
        MOVIZ     R1H,#32639            ; [CPU_FPU] |685| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |166| 
        MPYF32    R3H,R7H,R2H           ; [CPU_FPU] |166| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 685,column 26,is_stmt,isa 0
        MOVXI     R1H,#65535            ; [CPU_FPU] |685| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 685,column 5,is_stmt,isa 0
        MOVIZ     R2H,#65407            ; [CPU_FPU] |685| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 685,column 5,is_stmt,isa 0
        MOVXI     R2H,#65535            ; [CPU_FPU] |685| 
        ADDB      XAR4,#8               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        ADDF32    R6H,R3H,R0H           ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        SUBF32    R0H,R0H,R3H           ; [CPU_FPU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOV32     *+XAR3[AR1],R6H       ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        MOV32     *+XAR3[AR0],R0H       ; [CPU_FPU] |167| 
||$C$L135||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 687,column 22,is_stmt,isa 0
        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |687| 
        CMPF32    R3H,#0                ; [CPU_FPU] |687| 
        MOVST0    ZF, NF                ; [CPU_FPU] |687| 
        B         ||$C$L136||,LT        ; [CPU_ALU] |687| 
        ; branchcc occurs ; [] |687| 
        ZERO      R0H                   ; [CPU_FPU] |687| 
        B         ||$C$L137||,UNC       ; [CPU_ALU] |687| 
        ; branch occurs ; [] |687| 
||$C$L136||:    
        MOV32     R0H,R4H               ; [CPU_FPU] |687| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |687| 
||$C$L137||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 688,column 22,is_stmt,isa 0
        CMPF32    R3H,#0                ; [CPU_FPU] |688| 
        MOVST0    ZF, NF                ; [CPU_FPU] |688| 
        MOV32     R6H,R5H,GEQ           ; [CPU_FPU] |688| 
        B         ||$C$L138||,GEQ       ; [CPU_ALU] |688| 
        ; branchcc occurs ; [] |688| 
        ZERO      R6H                   ; [CPU_FPU] |688| 
||$C$L138||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 689,column 9,is_stmt,isa 0
        MOV32     R3H,*+XAR4[6]         ; [CPU_FPU] |689| 
        SUBF32    R0H,R0H,R3H           ; [CPU_FPU] |689| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 686,column 14,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |686| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 689,column 40,is_stmt,isa 0
        SUBF32    R3H,R6H,R3H           ; [CPU_FPU] |689| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 689,column 9,is_stmt,isa 0
        MAXF32    R2H,R0H               ; [CPU_FPU] |689| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 689,column 40,is_stmt,isa 0
        MINF32    R1H,R3H               ; [CPU_FPU] |689| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 686,column 14,is_stmt,isa 0
        BANZ      ||$C$L135||,AR6--     ; [CPU_ALU] |686| 
        ; branchcc occurs ; [] |686| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 691,column 5,is_stmt,isa 0
        SUBF32    R0H,R1H,R2H           ; [CPU_FPU] |691| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 692,column 5,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |692| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 691,column 5,is_stmt,isa 0
        MOVB      XAR1,#148             ; [CPU_ALU] |691| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[40],R0H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 692,column 5,is_stmt,isa 0
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |692| 
        MOVL      ACC,*-SP[40]          ; [CPU_ALU] |692| 
        ANDB      AL,#0                 ; [CPU_ALU] |692| 
        AND       AH,#32640             ; [CPU_ALU] |692| 
        CMPL      ACC,P                 ; [CPU_ALU] |692| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 691,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |691| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 692,column 5,is_stmt,isa 0
        B         ||$C$L133||,EQ        ; [CPU_ALU] |692| 
        ; branchcc occurs ; [] |692| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 693,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |693| 
        MOVB      XAR6,#0               ; [CPU_ALU] |693| 
        B         ||$C$L140||,EQ        ; [CPU_ALU] |693| 
        ; branchcc occurs ; [] |693| 
        MOV       AL,*+XAR4[5]          ; [CPU_ALU] |693| 
        B         ||$C$L140||,EQ        ; [CPU_ALU] |693| 
        ; branchcc occurs ; [] |693| 
        MOVL      XAR0,#24              ; [CPU_ALU] |693| 
        MOVIZ     R0H,#15820            ; [CPU_FPU] |693| 
        MOV32     R1H,*+FP[AR0]         ; [CPU_FPU] |693| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |693| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |693| 
        MOVST0    ZF, NF                ; [CPU_FPU] |693| 
        B         ||$C$L140||,LT        ; [CPU_ALU] |693| 
        ; branchcc occurs ; [] |693| 
        MOVW      DP,#||pf_select_work||+8 ; [CPU_ARAU] 
        MOV32     R0H,@||pf_select_work||+8 ; [CPU_FPU] |693| 
        MOVL      XAR0,#22              ; [CPU_ALU] |693| 
        CMPF32    R0H,#0                ; [CPU_FPU] |693| 
        MOVB      XAR1,#12              ; [CPU_ALU] |693| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |693| 
        MOV32     R1H,@||pf_select_work||+8,GEQ ; [CPU_FPU] |693| 
        MOV32     R1H,@||pf_select_work||+8,LT ; [CPU_FPU] |693| 
        NEGF32    R1H,R1H,LT            ; [CPU_FPU] |693| 
        MOV32     R0H,@||pf_select_work||+10 ; [CPU_FPU] |693| 
        CMPF32    R0H,#0                ; [CPU_FPU] |693| 
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |693| 
        MOV32     R2H,@||pf_select_work||+12 ; [CPU_FPU] |693| 
        CMPF32    R2H,#0                ; [CPU_FPU] |693| 
        NEGF32    R2H,R2H,LT            ; [CPU_FPU] |693| 
        MOV32     R3H,*+XAR4[AR1]       ; [CPU_FPU] |693| 
        DIV2PIF32 R3H,R3H               ; [CPU_FPU] |693| 
        NOP       ; [CPU_ALU] 
        SINPUF32  R3H,R3H               ; [CPU_FPU] |693| 
        MOVL      XAR0,#24              ; [CPU_ALU] |693| 
        MINF32    R0H,R2H               ; [CPU_FPU] |693| 
        MOV32     R2H,*+FP[AR0]         ; [CPU_FPU] |693| 
        MPYF32    R2H,R2H,R3H           ; [CPU_FPU] |693| 
        MINF32    R1H,R0H               ; [CPU_FPU] |693| 
        CMPF32    R1H,R2H               ; [CPU_FPU] |693| 
        MOVST0    ZF, NF                ; [CPU_FPU] |693| 
        B         ||$C$L140||,GT        ; [CPU_ALU] |693| 
        ; branchcc occurs ; [] |693| 
        MOVL      XAR0,#18              ; [CPU_ALU] |693| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |693| 
        MOVB      XAR1,#148             ; [CPU_ALU] |693| 
        MOVIZ     R0H,#46470            ; [CPU_FPU] |693| 
        MOVXI     R0H,#14269            ; [CPU_FPU] |693| 
        MOV32     R1H,*+XAR4[AR1]       ; [CPU_FPU] |693| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |693| 
        MOVST0    ZF, NF                ; [CPU_FPU] |693| 
        B         ||$C$L139||,LT        ; [CPU_ALU] |693| 
        ; branchcc occurs ; [] |693| 
        MOVB      XAR1,#180             ; [CPU_ALU] |693| 
        MOV       AL,*+XAR4[AR1]        ; [CPU_ALU] |693| 
        B         ||$C$L139||,NEQ       ; [CPU_ALU] |693| 
        ; branchcc occurs ; [] |693| 
        MOVL      XAR0,#18              ; [CPU_ALU] 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] 
        ADDU      ACC,*-SP[46]          ; [CPU_ALU] |693| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |693| 
        MOVB      XAR0,#36              ; [CPU_ALU] |693| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |693| 
        B         ||$C$L140||,EQ        ; [CPU_ALU] |693| 
        ; branchcc occurs ; [] |693| 
||$C$L139||:    
        MOVB      XAR6,#1               ; [CPU_ALU] |693| 
||$C$L140||:    
        MOVL      XAR0,#18              ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 696,column 5,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |696| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 693,column 5,is_stmt,isa 0
        MOV       PL,*-SP[46]           ; [CPU_ALU] |693| 
        MOV       *+XAR4[6],AR6         ; [CPU_ALU] |693| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 697,column 5,is_stmt,isa 0
        B         ||$C$L152||,EQ        ; [CPU_ALU] |697| 
        ; branchcc occurs ; [] |697| 
        MOV       AH,*-SP[47]           ; [CPU_ALU] 
        MOVB      XAR0,#25              ; [CPU_ALU] 
        MOVL      XAR4,#||pf_select_work|| ; [CPU_ARAU] 
        MOV       AL,AH                 ; [CPU_ALU] 
        MOVB      XAR1,#26              ; [CPU_ALU] 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] 
        MOVL      XAR0,#24              ; [CPU_ALU] 
        LSR       AL,T                  ; [CPU_ALU] 
        MOV       *+FP[AR0],AL          ; [CPU_ALU] 
        MOV       T,*+XAR4[AR1]         ; [CPU_ALU] 
        MOV       AL,AH                 ; [CPU_ALU] 
        MOVB      XAR0,#27              ; [CPU_ALU] 
        MOVB      XAR6,#7               ; [CPU_ALU] 
        CLRC      SXM                   ; [CPU_ALU] 
        LSR       AL,T                  ; [CPU_ALU] 
        MOV       *-SP[41],AL           ; [CPU_ALU] 
        MOV       AL,AH                 ; [CPU_ALU] 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] 
        MOVB      XAR0,#28              ; [CPU_ALU] 
        LSR       AL,T                  ; [CPU_ALU] 
        MOV       *-SP[42],AL           ; [CPU_ALU] 
        MOV       AL,AH                 ; [CPU_ALU] 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] 
        MOVB      XAR0,#29              ; [CPU_ALU] 
        LSR       AL,T                  ; [CPU_ALU] 
        MOV       *-SP[43],AL           ; [CPU_ALU] 
        MOV       AL,AH                 ; [CPU_ALU] 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] 
        MOVB      XAR0,#30              ; [CPU_ALU] 
        LSR       AH,T                  ; [CPU_ALU] 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] 
        MOV       *-SP[44],AH           ; [CPU_ALU] 
        MOVB      XAR0,#31              ; [CPU_ALU] 
        LSR       AL,T                  ; [CPU_ALU] 
        MOV       *-SP[45],AL           ; [CPU_ALU] 
        MOV       AL,*-SP[47]           ; [CPU_ALU] 
        MOV       T,*+XAR4[AR0]         ; [CPU_ALU] 
        LSR       AL,T                  ; [CPU_ALU] 
        MOV       PH,AL                 ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 698,column 13,is_stmt,isa 0
        MOV       T,#0                  ; [CPU_ALU] |698| 
||$C$L141||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 698,column 28,is_stmt,isa 0
        MOVL      XAR0,#22              ; [CPU_ALU] |698| 
        MOVB      AL,#1                 ; [CPU_ALU] |698| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |698| 
        MOVB      XAR1,#15              ; [CPU_ALU] |698| 
        LSL       AL,T                  ; [CPU_ALU] |698| 
        AND       AL,*-SP[47]           ; [CPU_ALU] |698| 
        OR        AL,*+XAR4[AR1]        ; [CPU_ALU] |698| 
        B         ||$C$L144||,EQ        ; [CPU_ALU] |698| 
        ; branchcc occurs ; [] |698| 
        MOVL      XAR0,#18              ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
        MOV       AL,T                  ; [CPU_ALU] 
        MOV       ACC,AL << 1           ; [CPU_ALU] 
        ADDL      ACC,XAR4              ; [CPU_ALU] 
        MOVZ      AR4,T                 ; [CPU_FPU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 593,column 5,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |593| 
        ADDB      ACC,#76               ; [CPU_ALU] 
        MOVL      XAR3,ACC              ; [CPU_ALU] 
        MOV       ACC,AR4 << 2          ; [CPU_ALU] |593| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |593| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |593| 
        MOVB      XAR0,#92              ; [CPU_ALU] |593| 
        MOVB      XAR1,#94              ; [CPU_ALU] |593| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |593| 

        MPYF32    R2H,R0H,R0H           ; [CPU_FPU] |593| 
||      MOV32     R1H,*+XAR4[AR1]       ; [CPU_FPU] |593| 

        MPYF32    R3H,R1H,R1H           ; [CPU_FPU] |593| 
        NOP       ; [CPU_ALU] 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |593| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        SQRTF32   R3H,R2H               ; [CPU_FPU] |593| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVIZ     R7H,#11148            ; [CPU_FPU] |593| 
        MOVXI     R7H,#48332            ; [CPU_FPU] |593| 
        CMPF32    R3H,R7H               ; [CPU_FPU] |593| 
        MOVST0    ZF, NF                ; [CPU_FPU] |593| 
        B         ||$C$L142||,LT        ; [CPU_ALU] |593| 
        ; branchcc occurs ; [] |593| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 595,column 5,is_stmt,isa 0
        MOVL      XAR0,#20              ; [CPU_ALU] |595| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |595| 
        MOVB      XAR1,#16              ; [CPU_ALU] |595| 
        MOVB      XAR0,#18              ; [CPU_ALU] |595| 
        MOV32     R3H,*+XAR4[AR1]       ; [CPU_FPU] |595| 
        MPYF32    R4H,R3H,R0H           ; [CPU_FPU] |595| 

        MPYF32    R7H,R3H,R1H           ; [CPU_FPU] |595| 
||      MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |595| 

        MPYF32    R5H,R2H,R1H           ; [CPU_FPU] |595| 
        MPYF32    R0H,R2H,R0H           ; [CPU_FPU] |595| 
        ADDF32    R2H,R5H,R4H           ; [CPU_FPU] |595| 
        SUBF32    R0H,R7H,R0H           ; [CPU_FPU] |595| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        QUADF32   R1H,R0H,R0H,R2H       ; [CPU_FPU] |595| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ATANPUF32 R0H,R0H               ; [CPU_FPU] |595| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |595| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPY2PIF32 R0H,R0H               ; [CPU_FPU] |595| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R0H,R0H           ; [CPU_FPU] |595| 
        B         ||$C$L143||,UNC       ; [CPU_ALU] |595| 
        ; branch occurs ; [] |595| 
||$C$L142||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 593,column 57,is_stmt,isa 0
        MOVIZ     R0H,#16669            ; [CPU_FPU] |593| 
        MOVXI     R0H,#59879            ; [CPU_FPU] |593| 
||$C$L143||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 699,column 13,is_stmt,isa 0
        MOV32     *+XAR3[0],R0H         ; [CPU_FPU] |699| 
||$C$L144||:    
        MOV       AL,T                  ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 698,column 18,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |698| 
        MOV       T,AL                  ; [CPU_ALU] |698| 
        BANZ      ||$C$L141||,AR6--     ; [CPU_ALU] |698| 
        ; branchcc occurs ; [] |698| 
        MOV       AL,*-SP[50]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 40,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |700| 
        B         ||$C$L145||,NTC       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVL      XAR0,#18              ; [CPU_ALU] |700| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |700| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PL << 1           ; [CPU_ALU] |700| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |700| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |700| 
        MOVB      XAR0,#76              ; [CPU_ALU] |700| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |700| 
        MOVL      XAR4,*-SP[52]         ; [CPU_ALU] |700| 
        MOVB      XAR0,#32              ; [CPU_ALU] |700| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |700| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |700| 
        MOVST0    ZF, NF                ; [CPU_FPU] |700| 
        B         ||$C$L145||,GEQ       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVW      DP,#||pf_select_work||+24 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 101,is_stmt,isa 0
        MOV       PL,@||pf_select_work||+24 ; [CPU_ALU] |700| 
||$C$L145||:    
        MOVL      XAR0,#24              ; [CPU_ALU] 
        MOV       AL,*+FP[AR0]          ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 40,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |700| 
        B         ||$C$L146||,NTC       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVL      XAR0,#18              ; [CPU_ALU] |700| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |700| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PL << 1           ; [CPU_ALU] |700| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |700| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |700| 
        MOVB      XAR0,#76              ; [CPU_ALU] |700| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |700| 
        MOVB      XAR0,#32              ; [CPU_ALU] |700| 
        MOV32     R1H,*+XAR7[AR0]       ; [CPU_FPU] |700| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |700| 
        MOVST0    ZF, NF                ; [CPU_FPU] |700| 
        B         ||$C$L146||,GEQ       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVW      DP,#||pf_select_work||+25 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 101,is_stmt,isa 0
        MOV       PL,@||pf_select_work||+25 ; [CPU_ALU] |700| 
||$C$L146||:    
        MOV       AL,*-SP[41]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 40,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |700| 
        B         ||$C$L147||,NTC       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVL      XAR0,#18              ; [CPU_ALU] |700| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |700| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PL << 1           ; [CPU_ALU] |700| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |700| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |700| 
        MOVB      XAR0,#76              ; [CPU_ALU] |700| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |700| 
        MOVB      XAR0,#32              ; [CPU_ALU] |700| 
        MOV32     R1H,*+XAR5[AR0]       ; [CPU_FPU] |700| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |700| 
        MOVST0    ZF, NF                ; [CPU_FPU] |700| 
        B         ||$C$L147||,GEQ       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVW      DP,#||pf_select_work||+26 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 101,is_stmt,isa 0
        MOV       PL,@||pf_select_work||+26 ; [CPU_ALU] |700| 
||$C$L147||:    
        MOV       AL,*-SP[42]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 40,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |700| 
        B         ||$C$L148||,NTC       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVL      XAR0,#18              ; [CPU_ALU] |700| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |700| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PL << 1           ; [CPU_ALU] |700| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |700| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |700| 
        MOVB      XAR0,#76              ; [CPU_ALU] |700| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |700| 
        MOVL      XAR0,#26              ; [CPU_ALU] |700| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |700| 
        MOVB      XAR1,#27              ; [CPU_ALU] |700| 
        MOV       ACC,*+XAR4[AR1] << 1  ; [CPU_ALU] |700| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |700| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |700| 
        MOVB      XAR0,#76              ; [CPU_ALU] |700| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |700| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |700| 
        MOVST0    ZF, NF                ; [CPU_FPU] |700| 
        B         ||$C$L148||,GEQ       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVW      DP,#||pf_select_work||+27 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 101,is_stmt,isa 0
        MOV       PL,@||pf_select_work||+27 ; [CPU_ALU] |700| 
||$C$L148||:    
        MOV       AL,*-SP[43]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 40,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |700| 
        B         ||$C$L149||,NTC       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVL      XAR0,#18              ; [CPU_ALU] |700| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |700| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PL << 1           ; [CPU_ALU] |700| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |700| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |700| 
        MOVB      XAR0,#76              ; [CPU_ALU] |700| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |700| 
        MOVL      XAR0,#26              ; [CPU_ALU] |700| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |700| 
        MOVB      XAR1,#28              ; [CPU_ALU] |700| 
        MOV       ACC,*+XAR4[AR1] << 1  ; [CPU_ALU] |700| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |700| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |700| 
        MOVB      XAR0,#76              ; [CPU_ALU] |700| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |700| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |700| 
        MOVST0    ZF, NF                ; [CPU_FPU] |700| 
        B         ||$C$L149||,GEQ       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVW      DP,#||pf_select_work||+28 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 101,is_stmt,isa 0
        MOV       PL,@||pf_select_work||+28 ; [CPU_ALU] |700| 
||$C$L149||:    
        MOV       AL,*-SP[44]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 40,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |700| 
        B         ||$C$L150||,NTC       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVL      XAR0,#18              ; [CPU_ALU] |700| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |700| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PL << 1           ; [CPU_ALU] |700| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |700| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |700| 
        MOVB      XAR0,#76              ; [CPU_ALU] |700| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |700| 
        MOVL      XAR0,#26              ; [CPU_ALU] |700| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |700| 
        MOVB      XAR1,#29              ; [CPU_ALU] |700| 
        MOV       ACC,*+XAR4[AR1] << 1  ; [CPU_ALU] |700| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |700| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |700| 
        MOVB      XAR0,#76              ; [CPU_ALU] |700| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |700| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |700| 
        MOVST0    ZF, NF                ; [CPU_FPU] |700| 
        B         ||$C$L150||,GEQ       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVW      DP,#||pf_select_work||+29 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 101,is_stmt,isa 0
        MOV       PL,@||pf_select_work||+29 ; [CPU_ALU] |700| 
||$C$L150||:    
        MOV       AL,*-SP[45]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 40,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |700| 
        B         ||$C$L151||,NTC       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVL      XAR0,#18              ; [CPU_ALU] |700| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |700| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PL << 1           ; [CPU_ALU] |700| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |700| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |700| 
        MOVB      XAR0,#76              ; [CPU_ALU] |700| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |700| 
        MOVL      XAR0,#26              ; [CPU_ALU] |700| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |700| 
        MOVB      XAR1,#30              ; [CPU_ALU] |700| 
        MOV       ACC,*+XAR4[AR1] << 1  ; [CPU_ALU] |700| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |700| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |700| 
        MOVB      XAR0,#76              ; [CPU_ALU] |700| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |700| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |700| 
        MOVST0    ZF, NF                ; [CPU_FPU] |700| 
        B         ||$C$L151||,GEQ       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVW      DP,#||pf_select_work||+30 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 101,is_stmt,isa 0
        MOV       PL,@||pf_select_work||+30 ; [CPU_ALU] |700| 
||$C$L151||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 40,is_stmt,isa 0
        TBIT      PH,#0                 ; [CPU_ALU] |700| 
        B         ||$C$L152||,NTC       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVL      XAR0,#18              ; [CPU_ALU] |700| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |700| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PL << 1           ; [CPU_ALU] |700| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |700| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |700| 
        MOVB      XAR0,#76              ; [CPU_ALU] |700| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |700| 
        MOVL      XAR0,#26              ; [CPU_ALU] |700| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |700| 
        MOVB      XAR1,#31              ; [CPU_ALU] |700| 
        MOV       ACC,*+XAR4[AR1] << 1  ; [CPU_ALU] |700| 
        ADDL      ACC,XAR6              ; [CPU_ALU] |700| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |700| 
        MOVB      XAR0,#76              ; [CPU_ALU] |700| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |700| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |700| 
        MOVST0    ZF, NF                ; [CPU_FPU] |700| 
        B         ||$C$L152||,GEQ       ; [CPU_ALU] |700| 
        ; branchcc occurs ; [] |700| 
        MOVW      DP,#||pf_select_work||+31 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 700,column 101,is_stmt,isa 0
        MOV       PL,@||pf_select_work||+31 ; [CPU_ALU] |700| 
||$C$L152||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 702,column 5,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |702| 
        MOVL      XAR7,*+FP[AR0]        ; [CPU_ALU] |702| 
        MOVL      XAR0,#18              ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 702,column 37,is_stmt,isa 0
        MOVIZ     R2H,#32639            ; [CPU_FPU] |702| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 702,column 63,is_stmt,isa 0
        MOVIZ     R1H,#65407            ; [CPU_FPU] |702| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 702,column 5,is_stmt,isa 0
        MOVB      XAR1,#76              ; [CPU_ALU] |702| 
        MOVL      XAR0,#26              ; [CPU_ALU] 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 702,column 63,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |702| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 702,column 37,is_stmt,isa 0
        MOVXI     R2H,#65535            ; [CPU_FPU] |702| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 702,column 63,is_stmt,isa 0
        MOVXI     R1H,#65535            ; [CPU_FPU] |702| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |702| 
        MOV       ACC,PL << 1           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 703,column 9,is_stmt,isa 0
        MOV       T,#0                  ; [CPU_ALU] |703| 
        ADDB      XAR7,#76              ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 702,column 5,is_stmt,isa 0
        MOV32     R3H,*+XAR6[AR1]       ; [CPU_FPU] |702| 
        ADDB      XAR4,#11              ; [CPU_ALU] 
        ADDL      ACC,XAR6              ; [CPU_ALU] 
        ADDB      XAR5,#24              ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 702,column 21,is_stmt,isa 0
        MOV32     R4H,R3H               ; [CPU_FPU] |702| 
        MOVB      XAR6,#7               ; [CPU_ALU] 
        ADDB      ACC,#76               ; [CPU_ALU] 
        MOVL      XAR3,ACC              ; [CPU_ALU] 
||$C$L153||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 705,column 9,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |705| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 704,column 9,is_stmt,isa 0
        MOV32     R0H,*XAR7++           ; [CPU_FPU] |704| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 705,column 9,is_stmt,isa 0
        LSL       AL,T                  ; [CPU_ALU] |705| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 704,column 9,is_stmt,isa 0
        MINF32    R3H,R0H               ; [CPU_FPU] |704| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 704,column 38,is_stmt,isa 0
        MAXF32    R4H,R0H               ; [CPU_FPU] |704| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 705,column 9,is_stmt,isa 0
        AND       AL,*-SP[47]           ; [CPU_ALU] |705| 
        B         ||$C$L154||,EQ        ; [CPU_ALU] |705| 
        ; branchcc occurs ; [] |705| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 705,column 39,is_stmt,isa 0
        MINF32    R2H,R0H               ; [CPU_FPU] |705| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 705,column 76,is_stmt,isa 0
        MAXF32    R1H,R0H               ; [CPU_FPU] |705| 
||$C$L154||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 706,column 9,is_stmt,isa 0
        MOV       AL,*+XAR5[0]          ; [CPU_ALU] |706| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 706,column 49,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |706| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 706,column 9,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |706| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 706,column 49,is_stmt,isa 0
        MOVB      XAR1,#8               ; [CPU_ALU] |706| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 706,column 9,is_stmt,isa 0
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |706| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 706,column 49,is_stmt,isa 0
        MOV       AL,T                  ; [CPU_ALU] |706| 
        MOV       AH,*+XAR5[AR0]        ; [CPU_ALU] |706| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 703,column 14,is_stmt,isa 0
        ADDB      AL,#1                 ; [CPU_ALU] |703| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 706,column 49,is_stmt,isa 0
        ADDB      AH,#1                 ; [CPU_ALU] |706| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 703,column 14,is_stmt,isa 0
        ADDB      XAR5,#1               ; [CPU_ALU] |703| 
        MOV       T,AL                  ; [CPU_ALU] |703| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 706,column 49,is_stmt,isa 0
        MOV       *+XAR4[AR1],AH        ; [CPU_FPU] |706| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 703,column 14,is_stmt,isa 0
        ADDB      XAR4,#1               ; [CPU_ALU] |703| 
        BANZ      ||$C$L153||,AR6--     ; [CPU_ALU] |703| 
        ; branchcc occurs ; [] |703| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 709,column 5,is_stmt,isa 0
        MOVL      XAR0,#18              ; [CPU_ALU] |709| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |709| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 708,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |708| 
        ADD       AL,PL                 ; [CPU_ALU] |708| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 709,column 5,is_stmt,isa 0
        MOVB      XAR1,#150             ; [CPU_FPU] |709| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 708,column 5,is_stmt,isa 0
        MOV       *+XAR4[1],AL          ; [CPU_ALU] |708| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 709,column 5,is_stmt,isa 0
        UI16TOF32 R0H,*+XAR4[4]         ; [CPU_FPU] |709| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 710,column 44,is_stmt,isa 0
        MOVIZ     R7H,#16608            ; [CPU_FPU] |710| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 708,column 44,is_stmt,isa 0
        MOV       ACC,PL << #2          ; [CPU_ALU] |708| 
        MOVL      XAR0,#22              ; [CPU_ALU] |708| 
        AND       AH,PL,#0x0002         ; [CPU_ALU] |708| 
        ANDB      AL,#0x07              ; [CPU_ALU] |708| 
        OR        AH,AL                 ; [CPU_ALU] |708| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 709,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |709| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 708,column 44,is_stmt,isa 0
        MOV       AL,PL                 ; [CPU_ALU] |708| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 709,column 43,is_stmt,isa 0
        MOVB      XAR1,#152             ; [CPU_ALU] |709| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 708,column 44,is_stmt,isa 0
        LSR       AL,2                  ; [CPU_ALU] |708| 
        ANDB      AL,#0x01              ; [CPU_ALU] |708| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 709,column 43,is_stmt,isa 0
        UI16TOF32 R0H,*+XAR4[5]         ; [CPU_FPU] |709| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 708,column 44,is_stmt,isa 0
        OR        AL,AH                 ; [CPU_ALU] |708| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 709,column 43,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |709| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 708,column 44,is_stmt,isa 0
        MOV       *+XAR4[3],AL          ; [CPU_ALU] |708| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 710,column 5,is_stmt,isa 0
        UI16TOF32 R0H,*+XAR4[6]         ; [CPU_FPU] |710| 
        MOVB      XAR1,#154             ; [CPU_ALU] |710| 
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |710| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 710,column 44,is_stmt,isa 0
        MOVB      XAR1,#156             ; [CPU_ALU] |710| 
        MOV32     *+XAR4[AR1],R7H       ; [CPU_FPU] |710| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 708,column 44,is_stmt,isa 0
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |708| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 711,column 5,is_stmt,isa 0
        MOVB      XAR1,#15              ; [CPU_ALU] |711| 
        MOV       AL,*+XAR4[AR1]        ; [CPU_ALU] |711| 
        B         ||$C$L155||,NEQ       ; [CPU_ALU] |711| 
        ; branchcc occurs ; [] |711| 
        MOVIZ     R0H,#49024            ; [CPU_FPU] |711| 
        B         ||$C$L156||,UNC       ; [CPU_ALU] |711| 
        ; branch occurs ; [] |711| 
||$C$L155||:    
        SUBF32    R0H,R4H,R3H           ; [CPU_FPU] |711| 
||$C$L156||:    
        MOVL      XAR0,#18              ; [CPU_ALU] 
        MOV       AL,*-SP[46]           ; [CPU_ALU] |711| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 712,column 5,is_stmt,isa 0
        MOVB      XAR1,#160             ; [CPU_ALU] |712| 
        SUBF32    R1H,R1H,R2H           ; [CPU_FPU] |712| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 713,column 49,is_stmt,isa 0
        MOVZ      AR7,PL                ; [CPU_ALU] |713| 
        MOVB      XAR6,#0               ; [CPU_ALU] |713| 
        MOVU      ACC,AL                ; [CPU_ALU] |713| 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 712,column 41,is_stmt,isa 0
        MOVB      XAR0,#162             ; [CPU_ALU] |712| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 712,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |712| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 713,column 49,is_stmt,isa 0
        CMPL      ACC,XAR7              ; [CPU_ALU] |713| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 711,column 5,is_stmt,isa 0
        MOVB      XAR1,#158             ; [CPU_ALU] |711| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 713,column 49,is_stmt,isa 0
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |713| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 711,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |711| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 713,column 5,is_stmt,isa 0
        MOVB      XAR1,#164             ; [CPU_ALU] |713| 
        UI16TOF32 R0H,*+XAR4[1]         ; [CPU_FPU] |713| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 713,column 49,is_stmt,isa 0
        MOV       ACC,AR6               ; [CPU_ALU] |713| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 713,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |713| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 713,column 49,is_stmt,isa 0
        MOV32     R0H,ACC               ; [CPU_FPU] |713| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 712,column 41,is_stmt,isa 0
        UI16TOF32 R1H,*+XAR4[2]         ; [CPU_FPU] |712| 
        MOVW      DP,#||PC_fast_output_summaries_available|| ; [CPU_ARAU] 
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |712| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 713,column 49,is_stmt,isa 0
        MOVB      XAR0,#166             ; [CPU_ALU] |713| 
        I32TOF32  R0H,R0H               ; [CPU_FPU] |713| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 716,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |716| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 713,column 49,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |713| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 714,column 5,is_stmt,isa 0
        MOVL      XAR6,*+XAR3[0]        ; [CPU_ALU] |714| 
        MOVB      XAR1,#168             ; [CPU_ALU] |714| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 715,column 5,is_stmt,isa 0
        MOVB      @||PC_fast_output_summaries_available||,#1,UNC ; [CPU_ALU] |715| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 714,column 39,is_stmt,isa 0
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |714| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 714,column 5,is_stmt,isa 0
        MOVL      *+XAR4[AR1],XAR6      ; [CPU_ALU] |714| 
||$C$L157||:    
        SUBB      SP,#72                ; [CPU_ARAU] 
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
$C$DW$425	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$425, DW_AT_low_pc(0x00)
	.dwattr $C$DW$425, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$357, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$357, DW_AT_TI_end_line(0x2cd)
	.dwattr $C$DW$357, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$357

	.sect	".text"
	.clink

$C$DW$426	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$426, DW_AT_name("pf_projection")
	.dwattr $C$DW$426, DW_AT_low_pc(||pf_projection||)
	.dwattr $C$DW$426, DW_AT_high_pc(0x00)
	.dwattr $C$DW$426, DW_AT_linkage_name("pf_projection")
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$426, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$426, DW_AT_decl_column(0x10)
	.dwattr $C$DW$426, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 270,column 1,is_stmt,address ||pf_projection||,isa 0

	.dwfde $C$DW$CIE, ||pf_projection||
$C$DW$427	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$427, DW_AT_name("q")
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$427, DW_AT_location[DW_OP_reg12]

$C$DW$428	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$428, DW_AT_name("hw")
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$428, DW_AT_location[DW_OP_reg0]

$C$DW$429	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$429, DW_AT_name("c")
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$429, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$430	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$430, DW_AT_name("up")
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$430, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$431	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$431, DW_AT_name("low")
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_location[DW_OP_regx 0x33]

$C$DW$432	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$432, DW_AT_name("mu")
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_location[DW_OP_regx 0x37]

$C$DW$433	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$433, DW_AT_name("next")
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$433, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: pf_projection                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||pf_projection||:
;* R2    assigned to z
$C$DW$434	.dwtag  DW_TAG_variable
	.dwattr $C$DW$434, DW_AT_name("z")
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_location[DW_OP_regx 0x33]

;* R2    assigned to z
$C$DW$435	.dwtag  DW_TAG_variable
	.dwattr $C$DW$435, DW_AT_name("z")
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_location[DW_OP_regx 0x33]

;* R3    assigned to z
$C$DW$436	.dwtag  DW_TAG_variable
	.dwattr $C$DW$436, DW_AT_name("z")
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_location[DW_OP_regx 0x37]

;* R1    assigned to $O$K11
;* R4    assigned to $O$K9
;* R0    assigned to $O$U24
;* R2    assigned to $O$S1
;* R2    assigned to $O$S2
;* AR4   assigned to q
$C$DW$437	.dwtag  DW_TAG_variable
	.dwattr $C$DW$437, DW_AT_name("q")
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$437, DW_AT_location[DW_OP_reg12]

;* AL    assigned to hw
$C$DW$438	.dwtag  DW_TAG_variable
	.dwattr $C$DW$438, DW_AT_name("hw")
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$438, DW_AT_location[DW_OP_reg0]

;* R0    assigned to c
$C$DW$439	.dwtag  DW_TAG_variable
	.dwattr $C$DW$439, DW_AT_name("c")
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$439, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to up
$C$DW$440	.dwtag  DW_TAG_variable
	.dwattr $C$DW$440, DW_AT_name("up")
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$440, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to low
$C$DW$441	.dwtag  DW_TAG_variable
	.dwattr $C$DW$441, DW_AT_name("low")
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$441, DW_AT_location[DW_OP_regx 0x33]

;* R3    assigned to mu
$C$DW$442	.dwtag  DW_TAG_variable
	.dwattr $C$DW$442, DW_AT_name("mu")
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$442, DW_AT_location[DW_OP_regx 0x37]

;* AR5   assigned to next
$C$DW$443	.dwtag  DW_TAG_variable
	.dwattr $C$DW$443, DW_AT_name("next")
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$443, DW_AT_location[DW_OP_reg14]

;* R5    assigned to cm
$C$DW$444	.dwtag  DW_TAG_variable
	.dwattr $C$DW$444, DW_AT_name("cm")
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_location[DW_OP_regx 0x3f]

;* R4    assigned to cu
$C$DW$445	.dwtag  DW_TAG_variable
	.dwattr $C$DW$445, DW_AT_name("cu")
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$445, DW_AT_location[DW_OP_regx 0x3b]

;* R1    assigned to cl
$C$DW$446	.dwtag  DW_TAG_variable
	.dwattr $C$DW$446, DW_AT_name("cl")
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_location[DW_OP_regx 0x2f]

;* R3    assigned to sum
$C$DW$447	.dwtag  DW_TAG_variable
	.dwattr $C$DW$447, DW_AT_name("sum")
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_location[DW_OP_regx 0x37]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 271,column 23,is_stmt,isa 0

        MPYF32    R4H,R1H,R0H           ; [CPU_FPU] |271| 
||      MOV32     *SP++,R4H             ; [CPU_FPU] 

	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 15,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |274| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 271,column 15,is_stmt,isa 0

        MPYF32    R5H,R3H,R0H           ; [CPU_FPU] |271| 
||      MOV32     *SP++,R5H             ; [CPU_FPU] 

	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 271,column 31,is_stmt,isa 0

        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |274| 
||      MPYF32    R1H,R2H,R0H           ; [CPU_FPU] |271| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 5,is_stmt,isa 0
        ADDF32    R3H,R5H,R0H           ; [CPU_FPU] |274| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 15,is_stmt,isa 0
        B         ||$C$L158||,TC        ; [CPU_ALU] |274| 
        ; branchcc occurs ; [] |274| 
        SUBF32    R0H,R3H,R4H           ; [CPU_FPU] |274| 
        ADDF32    R2H,R1H,R3H           ; [CPU_FPU] |274| 
        MAXF32    R0H,#0                ; [CPU_FPU] |274| 
        MINF32    R2H,#0                ; [CPU_FPU] |274| 
        ADDF32    R0H,R0H,R2H           ; [CPU_FPU] |274| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |274| 
        B         ||$C$L159||,UNC       ; [CPU_ALU] |274| 
        ; branch occurs ; [] |274| 
||$C$L158||:    
        MOV32     R0H,R3H               ; [CPU_FPU] |274| 
        MOV32     *+XAR5[0],R3H         ; [CPU_FPU] |274| 
||$C$L159||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR4[2]         ; [CPU_FPU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 15,is_stmt,isa 0
        TBIT      AL,#1                 ; [CPU_ALU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 81,is_stmt,isa 0
        MOV32     R3H,R0H               ; [CPU_FPU] |274| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 5,is_stmt,isa 0
        ADDF32    R2H,R2H,R5H           ; [CPU_FPU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 15,is_stmt,isa 0
        B         ||$C$L160||,TC        ; [CPU_ALU] |275| 
        ; branchcc occurs ; [] |275| 
        SUBF32    R0H,R2H,R4H           ; [CPU_FPU] |275| 
        ADDF32    R2H,R2H,R1H           ; [CPU_FPU] |275| 
        MAXF32    R0H,#0                ; [CPU_FPU] |275| 
        MINF32    R2H,#0                ; [CPU_FPU] |275| 
        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |275| 
        NOP       ; [CPU_ALU] 
||$C$L160||:    
        MOV32     *+XAR5[2],R2H         ; [CPU_FPU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 15,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 81,is_stmt,isa 0

        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |276| 
||      ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |275| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 5,is_stmt,isa 0
        ADDF32    R2H,R5H,R0H           ; [CPU_FPU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 15,is_stmt,isa 0
        B         ||$C$L161||,TC        ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
        SUBF32    R0H,R2H,R4H           ; [CPU_FPU] |276| 
        ADDF32    R1H,R1H,R2H           ; [CPU_FPU] |276| 
        MAXF32    R0H,#0                ; [CPU_FPU] |276| 
        MINF32    R1H,#0                ; [CPU_FPU] |276| 
        ADDF32    R2H,R1H,R0H           ; [CPU_FPU] |276| 
        NOP       ; [CPU_ALU] 
||$C$L161||:    
        MOV32     *+XAR5[4],R2H         ; [CPU_FPU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 81,is_stmt,isa 0

        ADDF32    R0H,R2H,R3H           ; [CPU_FPU] |276| 
||      MOV32     R5H,*--SP             ; [CPU_FPU] 

	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$448	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$448, DW_AT_low_pc(0x00)
	.dwattr $C$DW$448, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$426, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$426, DW_AT_TI_end_line(0x116)
	.dwattr $C$DW$426, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$426

	.sect	"pcmfpc_code"
	.clink

$C$DW$449	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$449, DW_AT_name("pf_root")
	.dwattr $C$DW$449, DW_AT_low_pc(||pf_root||)
	.dwattr $C$DW$449, DW_AT_high_pc(0x00)
	.dwattr $C$DW$449, DW_AT_linkage_name("pf_root")
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$449, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$449, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$449, DW_AT_decl_column(0x11)
	.dwattr $C$DW$449, DW_AT_TI_max_frame_size(-36)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 289,column 1,is_stmt,address ||pf_root||,isa 0

	.dwfde $C$DW$CIE, ||pf_root||
$C$DW$450	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$450, DW_AT_name("q")
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$450, DW_AT_location[DW_OP_reg12]

$C$DW$451	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$451, DW_AT_name("hw")
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$451, DW_AT_location[DW_OP_reg0]

$C$DW$452	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$452, DW_AT_name("c")
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$453	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$453, DW_AT_name("up")
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$454	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$454, DW_AT_name("low")
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_location[DW_OP_regx 0x33]

$C$DW$455	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$455, DW_AT_name("mu")
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$455, DW_AT_location[DW_OP_reg14]

$C$DW$456	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$456, DW_AT_name("width")
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$456, DW_AT_location[DW_OP_breg20 -38]

$C$DW$457	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$457, DW_AT_name("iterations")
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$457, DW_AT_location[DW_OP_breg20 -40]

$C$DW$458	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$458, DW_AT_name("next")
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$458, DW_AT_location[DW_OP_breg20 -42]

$C$DW$459	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$459, DW_AT_name("residual")
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$459, DW_AT_location[DW_OP_breg20 -44]

$C$DW$460	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$460, DW_AT_name("seed")
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$460, DW_AT_location[DW_OP_breg20 -46]


;***************************************************************
;* FNAME: pf_root                       FR SIZE:  34           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 18 Auto, 14 SOE     *
;***************************************************************

||pf_root||:
$C$DW$461	.dwtag  DW_TAG_variable
	.dwattr $C$DW$461, DW_AT_name("v")
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$461, DW_AT_location[DW_OP_breg20 -4]

$C$DW$462	.dwtag  DW_TAG_variable
	.dwattr $C$DW$462, DW_AT_name("v")
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$462, DW_AT_location[DW_OP_breg20 -6]

$C$DW$463	.dwtag  DW_TAG_variable
	.dwattr $C$DW$463, DW_AT_name("v")
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$463, DW_AT_location[DW_OP_breg20 -8]

;* R5    assigned to $O$C22
;* R4    assigned to $O$C23
;* AR6   assigned to $O$C24
;* AH    assigned to $O$C25
;* R3    assigned to $O$C26
;* AR6   assigned to $O$C27
;* R4    assigned to $O$C28
;* R3    assigned to $O$C29
;* R5    assigned to $O$C30
;* AR6   assigned to $O$C31
;* AR6   assigned to $O$C32
;* R2    assigned to $O$K56
;* R4    assigned to $O$K56
;* R4    assigned to $O$K56
;* R1    assigned to $O$K54
;* R5    assigned to $O$K54
;* R5    assigned to $O$K54
;* R3    assigned to $O$U95
;* R4    assigned to $O$U51
;* R3    assigned to $O$U122
;* PL    assigned to $O$U219
;* PL    assigned to $O$U219
;* R2    assigned to z
$C$DW$464	.dwtag  DW_TAG_variable
	.dwattr $C$DW$464, DW_AT_name("z")
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_location[DW_OP_regx 0x33]

;* R2    assigned to z
$C$DW$465	.dwtag  DW_TAG_variable
	.dwattr $C$DW$465, DW_AT_name("z")
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_location[DW_OP_regx 0x33]

;* R7    assigned to z
$C$DW$466	.dwtag  DW_TAG_variable
	.dwattr $C$DW$466, DW_AT_name("z")
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_location[DW_OP_regx 0x47]

;* R2    assigned to z
$C$DW$467	.dwtag  DW_TAG_variable
	.dwattr $C$DW$467, DW_AT_name("z")
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_location[DW_OP_regx 0x33]

;* R2    assigned to z
$C$DW$468	.dwtag  DW_TAG_variable
	.dwattr $C$DW$468, DW_AT_name("z")
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_location[DW_OP_regx 0x33]

;* R7    assigned to z
$C$DW$469	.dwtag  DW_TAG_variable
	.dwattr $C$DW$469, DW_AT_name("z")
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_location[DW_OP_regx 0x47]

;* R2    assigned to z
$C$DW$470	.dwtag  DW_TAG_variable
	.dwattr $C$DW$470, DW_AT_name("z")
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_location[DW_OP_regx 0x33]

;* R2    assigned to z
$C$DW$471	.dwtag  DW_TAG_variable
	.dwattr $C$DW$471, DW_AT_name("z")
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$471, DW_AT_location[DW_OP_regx 0x33]

;* R7    assigned to z
$C$DW$472	.dwtag  DW_TAG_variable
	.dwattr $C$DW$472, DW_AT_name("z")
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_location[DW_OP_regx 0x47]

;* R2    assigned to z
$C$DW$473	.dwtag  DW_TAG_variable
	.dwattr $C$DW$473, DW_AT_name("z")
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_location[DW_OP_regx 0x33]

;* R2    assigned to z
$C$DW$474	.dwtag  DW_TAG_variable
	.dwattr $C$DW$474, DW_AT_name("z")
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_location[DW_OP_regx 0x33]

;* R3    assigned to z
$C$DW$475	.dwtag  DW_TAG_variable
	.dwattr $C$DW$475, DW_AT_name("z")
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_location[DW_OP_regx 0x37]

;* R5    assigned to $O$U21
;* R4    assigned to $O$U29
;* R3    assigned to $O$U36
;* AR7   assigned to $O$K13
;* T     assigned to $O$U191
;* R3    assigned to $O$U199
;* R3    assigned to $O$U206
;* AH    assigned to $O$U228
;* R3    assigned to $O$U303
;* R3    assigned to $O$U343
;* R3    assigned to $O$U363
;* PH    assigned to $O$V0
;* AR6   assigned to $O$T20
;* PL    assigned to $O$T21
;* R3    assigned to $O$S1
;* R3    assigned to $O$S2
;* R3    assigned to $O$S3
;* R5    assigned to $O$S4
;* R4    assigned to $O$S5
;* R3    assigned to $O$S6
;* R3    assigned to $O$S7
;* R3    assigned to $O$S8
;* R3    assigned to $O$S9
;* R3    assigned to $O$S10
;* R3    assigned to $O$S11
;* R3    assigned to $O$S12
;* AR4   assigned to q
$C$DW$476	.dwtag  DW_TAG_variable
	.dwattr $C$DW$476, DW_AT_name("q")
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$476, DW_AT_location[DW_OP_reg12]

$C$DW$477	.dwtag  DW_TAG_variable
	.dwattr $C$DW$477, DW_AT_name("hw")
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$477, DW_AT_location[DW_OP_breg20 -11]

;* R0    assigned to c
$C$DW$478	.dwtag  DW_TAG_variable
	.dwattr $C$DW$478, DW_AT_name("c")
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$478, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to up
$C$DW$479	.dwtag  DW_TAG_variable
	.dwattr $C$DW$479, DW_AT_name("up")
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$479, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$480	.dwtag  DW_TAG_variable
	.dwattr $C$DW$480, DW_AT_name("low")
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$480, DW_AT_location[DW_OP_breg20 -16]

;* AR5   assigned to mu
$C$DW$481	.dwtag  DW_TAG_variable
	.dwattr $C$DW$481, DW_AT_name("mu")
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$481, DW_AT_location[DW_OP_reg14]

;* AR2   assigned to width
$C$DW$482	.dwtag  DW_TAG_variable
	.dwattr $C$DW$482, DW_AT_name("width")
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$482, DW_AT_location[DW_OP_reg8]

;* AR3   assigned to iterations
$C$DW$483	.dwtag  DW_TAG_variable
	.dwattr $C$DW$483, DW_AT_name("iterations")
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$483, DW_AT_location[DW_OP_reg10]

$C$DW$484	.dwtag  DW_TAG_variable
	.dwattr $C$DW$484, DW_AT_name("next")
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$484, DW_AT_location[DW_OP_breg20 -18]

$C$DW$485	.dwtag  DW_TAG_variable
	.dwattr $C$DW$485, DW_AT_name("residual")
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$485, DW_AT_location[DW_OP_breg20 -20]

;* XT    assigned to seed
$C$DW$486	.dwtag  DW_TAG_variable
	.dwattr $C$DW$486, DW_AT_name("seed")
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$486, DW_AT_location[DW_OP_reg21]

;* R2    assigned to $O$S1
;* R2    assigned to $O$S2
;* R6    assigned to cm
$C$DW$487	.dwtag  DW_TAG_variable
	.dwattr $C$DW$487, DW_AT_name("cm")
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$487, DW_AT_location[DW_OP_regx 0x43]

;* R5    assigned to cu
$C$DW$488	.dwtag  DW_TAG_variable
	.dwattr $C$DW$488, DW_AT_name("cu")
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$488, DW_AT_location[DW_OP_regx 0x3f]

;* R4    assigned to cl
$C$DW$489	.dwtag  DW_TAG_variable
	.dwattr $C$DW$489, DW_AT_name("cl")
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$489, DW_AT_location[DW_OP_regx 0x3b]

;* R3    assigned to sum
$C$DW$490	.dwtag  DW_TAG_variable
	.dwattr $C$DW$490, DW_AT_name("sum")
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$490, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to $O$S1
;* R2    assigned to $O$S2
;* R6    assigned to cm
$C$DW$491	.dwtag  DW_TAG_variable
	.dwattr $C$DW$491, DW_AT_name("cm")
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_location[DW_OP_regx 0x43]

;* R5    assigned to cu
$C$DW$492	.dwtag  DW_TAG_variable
	.dwattr $C$DW$492, DW_AT_name("cu")
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$492, DW_AT_location[DW_OP_regx 0x3f]

;* R4    assigned to cl
$C$DW$493	.dwtag  DW_TAG_variable
	.dwattr $C$DW$493, DW_AT_name("cl")
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$493, DW_AT_location[DW_OP_regx 0x3b]

;* R3    assigned to sum
$C$DW$494	.dwtag  DW_TAG_variable
	.dwattr $C$DW$494, DW_AT_name("sum")
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to $O$S1
;* R2    assigned to $O$S2
;* R6    assigned to cm
$C$DW$495	.dwtag  DW_TAG_variable
	.dwattr $C$DW$495, DW_AT_name("cm")
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$495, DW_AT_location[DW_OP_regx 0x43]

;* R5    assigned to cu
$C$DW$496	.dwtag  DW_TAG_variable
	.dwattr $C$DW$496, DW_AT_name("cu")
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$496, DW_AT_location[DW_OP_regx 0x3f]

;* R4    assigned to cl
$C$DW$497	.dwtag  DW_TAG_variable
	.dwattr $C$DW$497, DW_AT_name("cl")
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$497, DW_AT_location[DW_OP_regx 0x3b]

;* R3    assigned to sum
$C$DW$498	.dwtag  DW_TAG_variable
	.dwattr $C$DW$498, DW_AT_name("sum")
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$498, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to $O$S1
;* R2    assigned to $O$S2
;* R4    assigned to cm
$C$DW$499	.dwtag  DW_TAG_variable
	.dwattr $C$DW$499, DW_AT_name("cm")
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_location[DW_OP_regx 0x3b]

;* R1    assigned to cu
$C$DW$500	.dwtag  DW_TAG_variable
	.dwattr $C$DW$500, DW_AT_name("cu")
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to cl
$C$DW$501	.dwtag  DW_TAG_variable
	.dwattr $C$DW$501, DW_AT_name("cl")
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_location[DW_OP_regx 0x2b]

;* R3    assigned to sum
$C$DW$502	.dwtag  DW_TAG_variable
	.dwattr $C$DW$502, DW_AT_name("sum")
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$502, DW_AT_location[DW_OP_regx 0x37]

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
        ADDB      SP,#20                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -36
        MOV32     R3H,R2H               ; [CPU_FPU] |289| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 291,column 5,is_stmt,isa 0
        NEGF32    R3H,R3H               ; [CPU_FPU] |291| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 289,column 1,is_stmt,isa 0
        MOVL      XT,*-SP[46]           ; [CPU_ALU] |289| 
        MOV       *-SP[11],AL           ; [CPU_ALU] |289| 
        MOVL      XAR6,*-SP[44]         ; [CPU_ALU] |289| 
        MOVL      XAR3,*-SP[40]         ; [CPU_ALU] |289| 
        MOVL      XAR2,*-SP[38]         ; [CPU_ALU] |289| 
        MOVL      ACC,XT                ; [CPU_ALU] |289| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 291,column 5,is_stmt,isa 0
        MOV32     *-SP[14],R3H          ; [CPU_FPU] |291| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 289,column 1,is_stmt,isa 0
        MOVL      *-SP[20],XAR6         ; [CPU_ALU] |289| 
        MOVL      XAR6,*-SP[42]         ; [CPU_ALU] |289| 
        MOV32     *-SP[16],R2H          ; [CPU_FPU] |289| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 291,column 5,is_stmt,isa 0
        MOVL      XAR7,#||pf_root_work|| ; [CPU_ARAU] |291| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 291,column 16,is_stmt,isa 0
        MOV32     *+XAR7[2],R1H         ; [CPU_FPU] |291| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 289,column 1,is_stmt,isa 0
        MOVL      *-SP[18],XAR6         ; [CPU_ALU] |289| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 291,column 5,is_stmt,isa 0
        MOV32     *+XAR7[0],R3H         ; [CPU_FPU] |291| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 292,column 5,is_stmt,isa 0
        B         ||$C$L170||,NEQ       ; [CPU_ALU] |292| 
        ; branchcc occurs ; [] |292| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 302,column 9,is_stmt,isa 0
        MOV32     R5H,*+XAR4[0]         ; [CPU_FPU] |302| 
        CMPF32    R5H,#0                ; [CPU_FPU] |302| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 5,is_stmt,isa 0
        MOV       AL,*-SP[11]           ; [CPU_ALU] |274| 
        MOVW      DP,#||pf_root_work||  ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 302,column 9,is_stmt,isa 0
        MOVB      XAR0,#44              ; [CPU_ALU] |302| 
        MOVL      XAR6,#||pf_root_work|| ; [CPU_ARAU] |302| 
        NEGF32    R5H,R5H,LT            ; [CPU_FPU] |302| 
        MOV32     R4H,*+XAR4[2]         ; [CPU_FPU] |302| 
        CMPF32    R4H,#0                ; [CPU_FPU] |302| 
        NEGF32    R4H,R4H,LT            ; [CPU_FPU] |302| 
        MOV32     R3H,*+XAR4[4]         ; [CPU_FPU] |302| 
        CMPF32    R3H,#0                ; [CPU_FPU] |302| 
        NEGF32    R3H,R3H,LT            ; [CPU_FPU] |302| 
        ADDF32    R4H,R4H,R5H           ; [CPU_FPU] |302| 
        ADDF32    R5H,R2H,R1H           ; [CPU_FPU] |302| 
        ADDF32    R3H,R3H,R4H           ; [CPU_FPU] |302| 
        MPYF32    R4H,R0H,R5H           ; [CPU_FPU] |302| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 15,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |274| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 271,column 15,is_stmt,isa 0

        ADDF32    R3H,R3H,R4H           ; [CPU_FPU] |302| 
||      MOV32     R6H,@||pf_root_work|| ; [CPU_FPU] |271| 

        MOVW      DP,#||pf_root_work||+44 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 302,column 9,is_stmt,isa 0
        MOV32     *+XAR6[AR0],R3H       ; [CPU_FPU] |302| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 271,column 15,is_stmt,isa 0

        MOV32     R3H,@||pf_root_work||+44 ; [CPU_FPU] |303| 
||      MPYF32    R6H,R0H,R6H           ; [CPU_FPU] |271| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 303,column 9,is_stmt,isa 0
        MAXF32    R3H,#16256            ; [CPU_FPU] |303| 
        MPYF32    R3H,R3H,#13952        ; [CPU_FPU] |303| 
        MOVB      XAR0,#8               ; [CPU_FPU] |303| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 271,column 23,is_stmt,isa 0

        MOV32     *+XAR6[AR0],R3H       ; [CPU_FPU] |303| 
||      MPYF32    R5H,R1H,R0H           ; [CPU_FPU] |271| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 271,column 31,is_stmt,isa 0

        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |274| 
||      MPYF32    R4H,R2H,R0H           ; [CPU_FPU] |271| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 5,is_stmt,isa 0
        ADDF32    R7H,R6H,R3H           ; [CPU_FPU] |274| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 15,is_stmt,isa 0
        B         ||$C$L162||,TC        ; [CPU_ALU] |274| 
        ; branchcc occurs ; [] |274| 
        SUBF32    R3H,R7H,R5H           ; [CPU_FPU] |274| 
        ADDF32    R7H,R7H,R4H           ; [CPU_FPU] |274| 
        MAXF32    R3H,#0                ; [CPU_FPU] |274| 
        MINF32    R7H,#0                ; [CPU_FPU] |274| 
        ADDF32    R3H,R3H,R7H           ; [CPU_FPU] |274| 
        MOVB      XAR0,#10              ; [CPU_ALU] |274| 
        MOV32     *+XAR6[AR0],R3H       ; [CPU_FPU] |274| 
        B         ||$C$L163||,UNC       ; [CPU_ALU] |274| 
        ; branch occurs ; [] |274| 
||$C$L162||:    
        MOVW      DP,#||pf_root_work||+10 ; [CPU_ARAU] 
        MOV32     @||pf_root_work||+10,R7H ; [CPU_FPU] |274| 
||$C$L163||:    
        MOV       AH,*-SP[11]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 5,is_stmt,isa 0
        MOV32     R7H,*+XAR4[2]         ; [CPU_FPU] |275| 
        MOVW      DP,#||pf_root_work||+10 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 15,is_stmt,isa 0
        LSR       AH,1                  ; [CPU_ALU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 81,is_stmt,isa 0

        ADDF32    R2H,R6H,R7H           ; [CPU_FPU] |275| 
||      MOV32     R3H,@||pf_root_work||+10 ; [CPU_FPU] |274| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 15,is_stmt,isa 0
        TBIT      AL,#1                 ; [CPU_ALU] |275| 
        MOV       *-SP[9],AH            ; [CPU_ALU] |275| 
        B         ||$C$L164||,TC        ; [CPU_ALU] |275| 
        ; branchcc occurs ; [] |275| 
        SUBF32    R7H,R2H,R5H           ; [CPU_FPU] |275| 
        ADDF32    R2H,R2H,R4H           ; [CPU_FPU] |275| 
        MAXF32    R7H,#0                ; [CPU_FPU] |275| 
        MINF32    R2H,#0                ; [CPU_FPU] |275| 
        ADDF32    R2H,R2H,R7H           ; [CPU_FPU] |275| 
||$C$L164||:    
        MOV       AH,*-SP[11]           ; [CPU_ALU] 
        MOV32     @||pf_root_work||+12,R2H ; [CPU_FPU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 15,is_stmt,isa 0
        LSR       AH,2                  ; [CPU_ALU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 81,is_stmt,isa 0

        MOV32     R7H,*+XAR4[4]         ; [CPU_FPU] |276| 
||      ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |275| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 15,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |276| 
        MOV       *-SP[10],AH           ; [CPU_ALU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 5,is_stmt,isa 0
        ADDF32    R2H,R6H,R7H           ; [CPU_FPU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 15,is_stmt,isa 0
        B         ||$C$L165||,TC        ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
        SUBF32    R6H,R2H,R5H           ; [CPU_FPU] |276| 
        ADDF32    R7H,R4H,R2H           ; [CPU_FPU] |276| 
        MAXF32    R6H,#0                ; [CPU_FPU] |276| 
        MINF32    R7H,#0                ; [CPU_FPU] |276| 
        ADDF32    R2H,R7H,R6H           ; [CPU_FPU] |276| 
||$C$L165||:    
        MOVB      XAR0,#14              ; [CPU_ALU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 271,column 15,is_stmt,isa 0
        MOV32     R6H,@||pf_root_work||+2 ; [CPU_FPU] |271| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 15,is_stmt,isa 0
        MOV32     *+XAR6[AR0],R2H       ; [CPU_FPU] |276| 
        MACF32    R3H,R2H,R6H,R0H,R6H   ; [CPU_FPU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 15,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |274| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 304,column 9,is_stmt,isa 0
        MOV32     *+XAR6[4],R3H         ; [CPU_FPU] |304| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 5,is_stmt,isa 0
        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |274| 
        ADDF32    R7H,R6H,R3H           ; [CPU_FPU] |274| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 15,is_stmt,isa 0
        B         ||$C$L166||,TC        ; [CPU_ALU] |274| 
        ; branchcc occurs ; [] |274| 
        SUBF32    R3H,R7H,R5H           ; [CPU_FPU] |274| 
        ADDF32    R7H,R7H,R4H           ; [CPU_FPU] |274| 
        MAXF32    R3H,#0                ; [CPU_FPU] |274| 
        MINF32    R7H,#0                ; [CPU_FPU] |274| 
        ADDF32    R3H,R3H,R7H           ; [CPU_FPU] |274| 
        MOVB      XAR0,#10              ; [CPU_ALU] |274| 
        MOV32     *+XAR6[AR0],R3H       ; [CPU_FPU] |274| 
        B         ||$C$L167||,UNC       ; [CPU_ALU] |274| 
        ; branch occurs ; [] |274| 
||$C$L166||:    
        MOV32     @||pf_root_work||+10,R7H ; [CPU_FPU] |274| 
||$C$L167||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 5,is_stmt,isa 0
        MOV       AH,*-SP[9]            ; [CPU_ALU] |275| 
        MOV32     R7H,*+XAR4[2]         ; [CPU_FPU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 15,is_stmt,isa 0
        TBIT      AH,#0                 ; [CPU_ALU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 81,is_stmt,isa 0

        ADDF32    R2H,R6H,R7H           ; [CPU_FPU] |275| 
||      MOV32     R3H,@||pf_root_work||+10 ; [CPU_FPU] |274| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 15,is_stmt,isa 0
        B         ||$C$L168||,TC        ; [CPU_ALU] |275| 
        ; branchcc occurs ; [] |275| 
        SUBF32    R7H,R2H,R5H           ; [CPU_FPU] |275| 
        ADDF32    R2H,R2H,R4H           ; [CPU_FPU] |275| 
        MAXF32    R7H,#0                ; [CPU_FPU] |275| 
        MINF32    R2H,#0                ; [CPU_FPU] |275| 
        ADDF32    R2H,R2H,R7H           ; [CPU_FPU] |275| 
        NOP       ; [CPU_ALU] 
||$C$L168||:    
        MOV32     @||pf_root_work||+12,R2H ; [CPU_FPU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 5,is_stmt,isa 0
        MOV       AH,*-SP[10]           ; [CPU_ALU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 81,is_stmt,isa 0

        MOV32     R7H,*+XAR4[4]         ; [CPU_FPU] |276| 
||      ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |275| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 15,is_stmt,isa 0
        TBIT      AH,#0                 ; [CPU_ALU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 5,is_stmt,isa 0
        ADDF32    R2H,R6H,R7H           ; [CPU_FPU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 15,is_stmt,isa 0
        B         ||$C$L169||,TC        ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
        SUBF32    R5H,R2H,R5H           ; [CPU_FPU] |276| 
        ADDF32    R4H,R4H,R2H           ; [CPU_FPU] |276| 
        MAXF32    R5H,#0                ; [CPU_FPU] |276| 
        MINF32    R4H,#0                ; [CPU_FPU] |276| 
        ADDF32    R2H,R4H,R5H           ; [CPU_FPU] |276| 
        NOP       ; [CPU_ALU] 
||$C$L169||:    

        MOV32     @||pf_root_work||+14,R2H ; [CPU_FPU] |276| 
||      ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |276| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 305,column 9,is_stmt,isa 0
        B         ||$C$L183||,UNC       ; [CPU_ALU] |305| 
        ; branch occurs ; [] |305| 
||$C$L170||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 294,column 26,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |294| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 293,column 9,is_stmt,isa 0
        MOVB      XAR0,#52              ; [CPU_ALU] |293| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 294,column 9,is_stmt,isa 0
        MOVL      XAR6,XT               ; [CPU_ALU] |294| 
        MOVW      DP,#||pf_root_work||+4 ; [CPU_ARAU] 
        ZERO      R4H                   ; [CPU_FPU] |294| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 294,column 26,is_stmt,isa 0
        MOV32     @||pf_root_work||+6,R3H ; [CPU_FPU] |294| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 293,column 9,is_stmt,isa 0
        MOVL      XAR6,*+XAR6[AR0]      ; [CPU_ALU] |293| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 294,column 9,is_stmt,isa 0
        MOV32     @||pf_root_work||+4,R4H ; [CPU_FPU] |294| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 293,column 9,is_stmt,isa 0
        MOV       AL,*-SP[11]           ; [CPU_ALU] |293| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 295,column 9,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |295| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 293,column 9,is_stmt,isa 0
        MOVL      @||pf_root_work||+8,XAR6 ; [CPU_FPU] |293| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 295,column 9,is_stmt,isa 0
        B         ||$C$L171||,NTC       ; [CPU_ALU] |295| 
        ; branchcc occurs ; [] |295| 
        MOVB      XAR0,#12              ; [CPU_ALU] |295| 
        B         ||$C$L172||,UNC       ; [CPU_ALU] |295| 
        ; branch occurs ; [] |295| 
||$C$L171||:    
        MOVB      XAR0,#18              ; [CPU_ALU] |295| 
||$C$L172||:    
        MOVL      XAR6,XT               ; [CPU_ALU] |295| 
        MOV       AH,*-SP[11]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 296,column 9,is_stmt,isa 0
        LSR       AH,1                  ; [CPU_ALU] |296| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 295,column 9,is_stmt,isa 0
        MOV32     R3H,*+XAR6[AR0]       ; [CPU_FPU] |295| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 296,column 9,is_stmt,isa 0
        TBIT      AL,#1                 ; [CPU_ALU] |296| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 295,column 9,is_stmt,isa 0
        ADDF32    R3H,R3H,R4H           ; [CPU_FPU] |295| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 296,column 9,is_stmt,isa 0
        MOV       *-SP[9],AH            ; [CPU_FPU] |296| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 295,column 9,is_stmt,isa 0
        MOV32     @||pf_root_work||+4,R3H ; [CPU_FPU] |295| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 296,column 9,is_stmt,isa 0
        B         ||$C$L173||,NTC       ; [CPU_ALU] |296| 
        ; branchcc occurs ; [] |296| 
        MOVB      XAR0,#14              ; [CPU_ALU] |296| 
        B         ||$C$L174||,UNC       ; [CPU_ALU] |296| 
        ; branch occurs ; [] |296| 
||$C$L173||:    
        MOVB      XAR0,#20              ; [CPU_ALU] |296| 
||$C$L174||:    
        MOV       AH,*-SP[11]           ; [CPU_ALU] 
        MOV32     R3H,*+XAR6[AR0]       ; [CPU_FPU] |296| 
        MOV32     R4H,@||pf_root_work||+4 ; [CPU_FPU] |296| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 297,column 9,is_stmt,isa 0
        LSR       AH,2                  ; [CPU_ALU] |297| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 296,column 9,is_stmt,isa 0
        ADDF32    R3H,R3H,R4H           ; [CPU_FPU] |296| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 297,column 9,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |297| 
        MOV       *-SP[10],AH           ; [CPU_FPU] |297| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 296,column 9,is_stmt,isa 0
        MOV32     @||pf_root_work||+4,R3H ; [CPU_FPU] |296| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 297,column 9,is_stmt,isa 0
        B         ||$C$L175||,NTC       ; [CPU_ALU] |297| 
        ; branchcc occurs ; [] |297| 
        MOVB      XAR0,#16              ; [CPU_ALU] |297| 
        B         ||$C$L176||,UNC       ; [CPU_ALU] |297| 
        ; branch occurs ; [] |297| 
||$C$L175||:    
        MOVB      XAR0,#22              ; [CPU_ALU] |297| 
||$C$L176||:    
        MOV32     R3H,*+XAR6[AR0]       ; [CPU_FPU] |297| 
        MOV32     R4H,@||pf_root_work||+4 ; [CPU_FPU] |297| 
        ADDF32    R3H,R3H,R4H           ; [CPU_FPU] |297| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 298,column 9,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |298| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 297,column 9,is_stmt,isa 0
        MOV32     @||pf_root_work||+4,R3H ; [CPU_FPU] |297| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 298,column 9,is_stmt,isa 0
        B         ||$C$L177||,NTC       ; [CPU_ALU] |298| 
        ; branchcc occurs ; [] |298| 
        MOVB      XAR0,#24              ; [CPU_ALU] |298| 
        B         ||$C$L178||,UNC       ; [CPU_ALU] |298| 
        ; branch occurs ; [] |298| 
||$C$L177||:    
        MOVB      XAR0,#30              ; [CPU_ALU] |298| 
||$C$L178||:    
        MOV32     R3H,*+XAR6[AR0]       ; [CPU_FPU] |298| 
        MOV32     R4H,@||pf_root_work||+6 ; [CPU_FPU] |298| 
        MOV       AH,*-SP[9]            ; [CPU_ALU] |298| 
        ADDF32    R3H,R3H,R4H           ; [CPU_FPU] |298| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 299,column 9,is_stmt,isa 0
        TBIT      AH,#0                 ; [CPU_ALU] |299| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 298,column 9,is_stmt,isa 0
        MOV32     @||pf_root_work||+6,R3H ; [CPU_FPU] |298| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 299,column 9,is_stmt,isa 0
        B         ||$C$L179||,NTC       ; [CPU_ALU] |299| 
        ; branchcc occurs ; [] |299| 
        MOVB      XAR0,#26              ; [CPU_ALU] |299| 
        B         ||$C$L180||,UNC       ; [CPU_ALU] |299| 
        ; branch occurs ; [] |299| 
||$C$L179||:    
        MOVB      XAR0,#32              ; [CPU_ALU] |299| 
||$C$L180||:    
        MOV32     R3H,*+XAR6[AR0]       ; [CPU_FPU] |299| 
        MOV32     R4H,@||pf_root_work||+6 ; [CPU_FPU] |299| 
        MOV       AH,*-SP[10]           ; [CPU_ALU] |299| 
        ADDF32    R3H,R3H,R4H           ; [CPU_FPU] |299| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 300,column 9,is_stmt,isa 0
        TBIT      AH,#0                 ; [CPU_ALU] |300| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 299,column 9,is_stmt,isa 0
        MOV32     @||pf_root_work||+6,R3H ; [CPU_FPU] |299| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 300,column 9,is_stmt,isa 0
        B         ||$C$L181||,NTC       ; [CPU_ALU] |300| 
        ; branchcc occurs ; [] |300| 
        MOVB      XAR0,#28              ; [CPU_ALU] |300| 
        B         ||$C$L182||,UNC       ; [CPU_ALU] |300| 
        ; branch occurs ; [] |300| 
||$C$L181||:    
        MOVB      XAR0,#34              ; [CPU_ALU] |300| 
||$C$L182||:    
        MOV32     R3H,*+XAR6[AR0]       ; [CPU_FPU] |300| 
        MOV32     R4H,@||pf_root_work||+6 ; [CPU_FPU] |300| 
        ADDF32    R3H,R3H,R4H           ; [CPU_FPU] |300| 
        NOP       ; [CPU_ALU] 
||$C$L183||:    
        MOV32     @||pf_root_work||+6,R3H ; [CPU_FPU] |300| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     R5H,@||pf_root_work||+4 ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 307,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |307| 
        MOV       PH,#32640             ; [CPU_ALU] |307| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[4],R5H           ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 307,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |307| 
        ANDB      AL,#0                 ; [CPU_ALU] |307| 
        AND       AH,#32640             ; [CPU_ALU] |307| 
        CMPL      ACC,P                 ; [CPU_ALU] |307| 
        B         ||$C$L212||,EQ        ; [CPU_ALU] |307| 
        ; branchcc occurs ; [] |307| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     R4H,@||pf_root_work||+6 ; [CPU_FPU] |68| 
        MOV32     *-SP[6],R4H           ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 307,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |307| 
        ANDB      AL,#0                 ; [CPU_ALU] |307| 
        AND       AH,#32640             ; [CPU_ALU] |307| 
        CMPL      ACC,P                 ; [CPU_ALU] |307| 
        B         ||$C$L212||,EQ        ; [CPU_ALU] |307| 
        ; branchcc occurs ; [] |307| 
        MOV32     R3H,@||pf_root_work||+8 ; [CPU_FPU] |307| 
        CMPF32    R5H,R3H               ; [CPU_FPU] |307| 
        MOVST0    ZF, NF                ; [CPU_FPU] |307| 
        B         ||$C$L212||,GT        ; [CPU_ALU] |307| 
        ; branchcc occurs ; [] |307| 
        NEGF32    R3H,R3H               ; [CPU_FPU] |307| 
        CMPF32    R4H,R3H               ; [CPU_FPU] |307| 
        MOVST0    ZF, NF                ; [CPU_FPU] |307| 
        B         ||$C$L212||,LT        ; [CPU_ALU] |307| 
        ; branchcc occurs ; [] |307| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 310,column 5,is_stmt,isa 0
        MOVB      XAR1,#51              ; [CPU_ALU] |310| 
        MOVL      XAR6,#||pf_root_work|| ; [CPU_ARAU] |310| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 310,column 17,is_stmt,isa 0
        MOVB      XAR0,#52              ; [CPU_ALU] |310| 
        MOVL      ACC,XT                ; [CPU_ALU] |310| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 309,column 5,is_stmt,isa 0
        MOV       *+XAR3[0],#0          ; [CPU_ALU] |309| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 310,column 5,is_stmt,isa 0
        MOV       *+XAR6[AR1],#0        ; [CPU_ALU] |310| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 310,column 17,is_stmt,isa 0
        MOV       *+XAR6[AR0],#0        ; [CPU_ALU] |310| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 311,column 5,is_stmt,isa 0
        B         ||$C$L192||,NEQ       ; [CPU_ALU] |311| 
        ; branchcc occurs ; [] |311| 
        MOVW      DP,#||pf_root_work||+49 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 316,column 13,is_stmt,isa 0
        MOV       @||pf_root_work||+49,#0 ; [CPU_ALU] |316| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 315,column 9,is_stmt,isa 0
        MOVB      XAR1,#16              ; [CPU_ALU] |315| 
        MOVW      DP,#||pf_root_work||  ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 315,column 28,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |315| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 315,column 9,is_stmt,isa 0
        MOVL      ACC,@||pf_root_work|| ; [CPU_ALU] |315| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 315,column 28,is_stmt,isa 0
        MOVL      P,@||pf_root_work||+2 ; [CPU_ALU] |315| 
        MOVW      DP,#||pf_root_work||+49 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 315,column 9,is_stmt,isa 0
        MOVL      *+XAR6[AR1],ACC       ; [CPU_ALU] |315| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 316,column 21,is_stmt,isa 0
        MOV       T,@||pf_root_work||+49 ; [CPU_ALU] |316| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 315,column 47,is_stmt,isa 0
        MOVB      @||pf_root_work||+51,#2,UNC ; [CPU_ALU] |315| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 315,column 28,is_stmt,isa 0
        MOVL      *+XAR6[AR0],P         ; [CPU_ALU] |315| 
        MOV       AH,T                  ; [CPU_ALU] |315| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 316,column 21,is_stmt,isa 0
        CMPB      AH,#3                 ; [CPU_ALU] |316| 
        B         ||$C$L188||,HIS       ; [CPU_ALU] |316| 
        ; branchcc occurs ; [] |316| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L184||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 316,column 37,is_stmt,isa 0
        MOVB      AH,#1                 ; [CPU_ALU] |316| 
        LSL       AH,T                  ; [CPU_ALU] |316| 
        AND       AH,*-SP[11]           ; [CPU_ALU] |316| 
        B         ||$C$L187||,NEQ       ; [CPU_ALU] |316| 
        ; branchcc occurs ; [] |316| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 317,column 13,is_stmt,isa 0
        MOV       ACC,@||pf_root_work||+49 << 1 ; [CPU_ALU] |317| 
        ADDL      ACC,XAR4              ; [CPU_ALU] |317| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |317| 
        MOV32     R3H,*+XAR6[0]         ; [CPU_FPU] |317| 
        CMPF32    R3H,#0                ; [CPU_FPU] |317| 
        MOVST0    ZF, NF                ; [CPU_FPU] |317| 
        B         ||$C$L185||,GT        ; [CPU_ALU] |317| 
        ; branchcc occurs ; [] |317| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 318,column 18,is_stmt,isa 0
        CMPF32    R3H,#0                ; [CPU_FPU] |318| 
        MOVST0    ZF, NF                ; [CPU_FPU] |318| 
        B         ||$C$L187||,GEQ       ; [CPU_ALU] |318| 
        ; branchcc occurs ; [] |318| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 318,column 40,is_stmt,isa 0
        DIVF32    R4H,R3H,R0H           ; [CPU_FPU] |318| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     R3H,*-SP[14]          ; [CPU_FPU] 
        SUBF32    R3H,R3H,R4H           ; [CPU_FPU] |318| 
        NOP       ; [CPU_ALU] 
        MOV32     @||pf_root_work||+46,R3H ; [CPU_FPU] |318| 
        MOVW      DP,#||pf_root_work||  ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 320,column 13,is_stmt,isa 0
        MOV32     R7H,@||pf_root_work|| ; [CPU_FPU] |320| 
        CMPF32    R3H,R7H               ; [CPU_FPU] |320| 
        MOVST0    ZF, NF                ; [CPU_FPU] |320| 
        B         ||$C$L186||,GT        ; [CPU_ALU] |320| 
        ; branchcc occurs ; [] |320| 
        B         ||$C$L187||,UNC       ; [CPU_ALU] |320| 
        ; branch occurs ; [] |320| 
||$C$L185||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 317,column 35,is_stmt,isa 0
        DIVF32    R3H,R3H,R0H           ; [CPU_FPU] |317| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVW      DP,#||pf_root_work||  ; [CPU_ARAU] 

        SUBF32    R3H,R1H,R3H           ; [CPU_FPU] |317| 
||      MOV32     R4H,@||pf_root_work|| ; [CPU_FPU] |320| 

        MOVW      DP,#||pf_root_work||+46 ; [CPU_ARAU] 
        MOV32     @||pf_root_work||+46,R3H ; [CPU_FPU] |317| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 320,column 13,is_stmt,isa 0
        CMPF32    R3H,R4H               ; [CPU_FPU] |320| 
        MOVST0    ZF, NF                ; [CPU_FPU] |320| 
        B         ||$C$L187||,LEQ       ; [CPU_ALU] |320| 
        ; branchcc occurs ; [] |320| 
||$C$L186||:    
        MOVW      DP,#||pf_root_work||+2 ; [CPU_ARAU] 
        MOV32     R4H,@||pf_root_work||+2 ; [CPU_FPU] |320| 
        CMPF32    R3H,R4H               ; [CPU_FPU] |320| 
        MOVST0    ZF, NF                ; [CPU_FPU] |320| 
        B         ||$C$L187||,GEQ       ; [CPU_ALU] |320| 
        ; branchcc occurs ; [] |320| 
        MOVW      DP,#||pf_root_work||+51 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 320,column 41,is_stmt,isa 0
        MOVZ      AR6,@||pf_root_work||+51 ; [CPU_ALU] |320| 
        MOV       ACC,AR6 << 1          ; [CPU_ALU] |320| 
        ADDL      ACC,XAR7              ; [CPU_ALU] |320| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |320| 
        MOVB      XAR0,#16              ; [CPU_ALU] |320| 
        MOVL      P,@||pf_root_work||+46 ; [CPU_ALU] |320| 
        INC       @||pf_root_work||+51  ; [CPU_ALU] |320| 
        MOVL      *+XAR6[AR0],P         ; [CPU_ALU] |320| 
||$C$L187||:    
        MOVW      DP,#||pf_root_work||+49 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 316,column 29,is_stmt,isa 0
        INC       @||pf_root_work||+49  ; [CPU_ALU] |316| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 316,column 21,is_stmt,isa 0
        MOV       T,@||pf_root_work||+49 ; [CPU_ALU] |316| 
        MOV       AH,T                  ; [CPU_ALU] |316| 
        CMPB      AH,#3                 ; [CPU_ALU] |316| 
        B         ||$C$L184||,LO        ; [CPU_ALU] |316| 
        ; branchcc occurs ; [] |316| 
||$C$L188||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 322,column 21,is_stmt,isa 0
        MOV       AH,@||pf_root_work||+51 ; [CPU_ALU] |322| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 322,column 13,is_stmt,isa 0
        MOVB      @||pf_root_work||+48,#1,UNC ; [CPU_ALU] |322| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 322,column 21,is_stmt,isa 0
        CMP       AH,@||pf_root_work||+48 ; [CPU_ALU] |322| 
        B         ||$C$L195||,LOS       ; [CPU_ALU] |322| 
        ; branchcc occurs ; [] |322| 
||$C$L189||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 323,column 13,is_stmt,isa 0
        MOV       PL,@||pf_root_work||+48 ; [CPU_ALU] |323| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,PL << 1           ; [CPU_ALU] |323| 
        ADDL      ACC,XAR7              ; [CPU_ALU] |323| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |323| 
        MOVB      XAR0,#16              ; [CPU_ALU] |323| 
        MOVL      XAR6,*+XAR6[AR0]      ; [CPU_ALU] |323| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 323,column 36,is_stmt,isa 0
        MOV       @||pf_root_work||+50,P ; [CPU_ALU] |323| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 324,column 19,is_stmt,isa 0
        MOV       AH,@||pf_root_work||+50 ; [CPU_ALU] |324| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 323,column 13,is_stmt,isa 0
        MOVL      @||pf_root_work||+40,XAR6 ; [CPU_ALU] |323| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 324,column 19,is_stmt,isa 0
        B         ||$C$L191||,EQ        ; [CPU_ALU] |324| 
        ; branchcc occurs ; [] |324| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L190||:    
        ADDB      AH,#-1                ; [CPU_ALU] |324| 
        MOV       ACC,AH << 1           ; [CPU_ALU] |324| 
        ADDL      ACC,XAR7              ; [CPU_ALU] |324| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |324| 
        MOV32     R4H,@||pf_root_work||+40 ; [CPU_FPU] |324| 
        MOVB      XAR0,#16              ; [CPU_ALU] |324| 
        MOV32     R3H,*+XAR6[AR0]       ; [CPU_FPU] |324| 
        CMPF32    R4H,R3H               ; [CPU_FPU] |324| 
        MOVST0    ZF, NF                ; [CPU_FPU] |324| 
        B         ||$C$L191||,GEQ       ; [CPU_ALU] |324| 
        ; branchcc occurs ; [] |324| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 325,column 17,is_stmt,isa 0
        MOV       ACC,@||pf_root_work||+50 << 1 ; [CPU_ALU] |325| 
        ADDL      ACC,XAR7              ; [CPU_ALU] |325| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |325| 
        MOVB      XAR0,#16              ; [CPU_ALU] |325| 
        MOV32     *+XAR6[AR0],R3H       ; [CPU_FPU] |325| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 325,column 52,is_stmt,isa 0
        DEC       @||pf_root_work||+50  ; [CPU_ALU] |325| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 324,column 19,is_stmt,isa 0
        MOV       AH,@||pf_root_work||+50 ; [CPU_ALU] |324| 
        B         ||$C$L190||,NEQ       ; [CPU_ALU] |324| 
        ; branchcc occurs ; [] |324| 
||$C$L191||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 327,column 13,is_stmt,isa 0
        MOV       ACC,@||pf_root_work||+50 << 1 ; [CPU_ALU] |327| 
        ADDL      ACC,XAR7              ; [CPU_ALU] |327| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |327| 
        MOVL      P,@||pf_root_work||+40 ; [CPU_ALU] |327| 
        MOVB      XAR0,#16              ; [CPU_ALU] |327| 
        MOVL      *+XAR6[AR0],P         ; [CPU_ALU] |327| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 322,column 35,is_stmt,isa 0
        INC       @||pf_root_work||+48  ; [CPU_ALU] |322| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 322,column 21,is_stmt,isa 0
        MOV       AH,@||pf_root_work||+51 ; [CPU_ALU] |322| 
        CMP       AH,@||pf_root_work||+48 ; [CPU_ALU] |322| 
        B         ||$C$L189||,HI        ; [CPU_ALU] |322| 
        ; branchcc occurs ; [] |322| 
        B         ||$C$L195||,UNC       ; [CPU_ALU] |322| 
        ; branch occurs ; [] |322| 
||$C$L192||:    
        MOVL      XAR6,XT               ; [CPU_ALU] 
        MOVW      DP,#||pf_root_work||+48 ; [CPU_ARAU] 
        MOVB      XAR0,#62              ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 312,column 13,is_stmt,isa 0
        MOV       @||pf_root_work||+48,#0 ; [CPU_ALU] |312| 
        MOV       AH,*+XAR6[AR0]        ; [CPU_ALU] 
        CMP       AH,PL                 ; [CPU_ALU] 
        B         ||$C$L195||,LOS       ; [CPU_ALU] 
        ; branchcc occurs ; [] 
        MOV       PH,AH                 ; [CPU_ALU] 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L193||:    
        MOVL      ACC,XT                ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 313,column 13,is_stmt,isa 0
        ADDU      ACC,PL                ; [CPU_ALU] |313| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |313| 
        MOVB      XAR0,#54              ; [CPU_ALU] |313| 
        MOV       AL,*-SP[11]           ; [CPU_ALU] |313| 
        AND       AL,*+XAR6[AR0]        ; [CPU_ALU] |313| 
        B         ||$C$L194||,NEQ       ; [CPU_ALU] |313| 
        ; branchcc occurs ; [] |313| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 313,column 40,is_stmt,isa 0
        MOV       ACC,@||pf_root_work||+48 << 1 ; [CPU_ALU] |313| 
        MOV       PL,@||pf_root_work||+51 ; [CPU_ALU] |313| 
        ADDL      ACC,XT                ; [CPU_ALU] |313| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |313| 
        MOVB      XAR0,#36              ; [CPU_ALU] |313| 
        INC       @||pf_root_work||+51  ; [CPU_ALU] |313| 
        MOV       ACC,PL << 1           ; [CPU_ALU] |313| 
        MOVL      XAR1,*+XAR6[AR0]      ; [CPU_ALU] |313| 
        ADDL      ACC,XAR7              ; [CPU_ALU] |313| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |313| 
        MOVB      XAR0,#16              ; [CPU_ALU] |313| 
        MOVL      *+XAR6[AR0],XAR1      ; [CPU_ALU] |313| 
||$C$L194||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 312,column 38,is_stmt,isa 0
        INC       @||pf_root_work||+48  ; [CPU_ALU] |312| 
        MOV       AH,PH                 ; [CPU_ALU] 
        MOV       PL,@||pf_root_work||+48 ; [CPU_ALU] 
        CMP       AH,PL                 ; [CPU_ALU] 
        B         ||$C$L193||,HI        ; [CPU_ALU] 
        ; branchcc occurs ; [] 
||$C$L195||:    
        MOVW      DP,#||pf_root_work||+4 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 330,column 23,is_stmt,isa 0
        MOVL      XAR6,@||pf_root_work||+4 ; [CPU_ALU] |330| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 330,column 5,is_stmt,isa 0
        MOVL      P,@||pf_root_work||+16 ; [CPU_ALU] |330| 
        MOVW      DP,#||pf_root_work||+34 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 330,column 23,is_stmt,isa 0
        MOVL      @||pf_root_work||+34,XAR6 ; [CPU_ALU] |330| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 330,column 5,is_stmt,isa 0
        MOVL      @||pf_root_work||+32,P ; [CPU_ALU] |330| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 331,column 5,is_stmt,isa 0
        MOV32     R3H,@||pf_root_work||+34 ; [CPU_FPU] |331| 
        CMPF32    R3H,#0                ; [CPU_FPU] |331| 
        MOVST0    ZF, NF                ; [CPU_FPU] |331| 
        B         ||$C$L196||,NEQ       ; [CPU_ALU] |331| 
        ; branchcc occurs ; [] |331| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 331,column 28,is_stmt,isa 0
        MOVL      XAR6,@||pf_root_work||+32 ; [CPU_ALU] |331| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 331,column 37,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |331| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 331,column 28,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR6        ; [CPU_ALU] |331| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 331,column 37,is_stmt,isa 0
        MOV32     *+XAR2[0],R3H         ; [CPU_FPU] |331| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 331,column 55,is_stmt,isa 0
        MOVB      @||pf_root_work||+52,#1,UNC ; [CPU_ALU] |331| 
||$C$L196||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 332,column 17,is_stmt,isa 0
        MOV       AH,@||pf_root_work||+51 ; [CPU_ALU] |332| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 332,column 9,is_stmt,isa 0
        MOVB      @||pf_root_work||+48,#1,UNC ; [CPU_ALU] |332| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 332,column 17,is_stmt,isa 0
        CMP       AH,@||pf_root_work||+48 ; [CPU_ALU] |332| 
        B         ||$C$L205||,LOS       ; [CPU_ALU] |332| 
        ; branchcc occurs ; [] |332| 
        CLRC      SXM                   ; [CPU_ALU] 
||$C$L197||:    
        MOV       AH,@||pf_root_work||+52 ; [CPU_ALU] |332| 
        B         ||$C$L208||,NEQ       ; [CPU_ALU] |332| 
        ; branchcc occurs ; [] |332| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 333,column 9,is_stmt,isa 0
        MOV       ACC,@||pf_root_work||+48 << 1 ; [CPU_ALU] |333| 
        ADDL      ACC,XAR7              ; [CPU_ALU] |333| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |333| 
        MOVB      XAR0,#16              ; [CPU_ALU] |333| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 5,is_stmt,isa 0
        MOV       AL,*-SP[11]           ; [CPU_ALU] |274| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 333,column 9,is_stmt,isa 0
        MOVL      P,*+XAR6[AR0]         ; [CPU_ALU] |333| 
        MOVB      XAR0,#36              ; [CPU_ALU] |333| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 15,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |274| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 333,column 9,is_stmt,isa 0
        MOVL      XAR6,#||pf_root_work|| ; [CPU_ARAU] |333| 
        MOVL      *+XAR6[AR0],P         ; [CPU_FPU] |333| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 271,column 15,is_stmt,isa 0

        MOV32     R6H,@||pf_root_work||+36 ; [CPU_FPU] |271| 
||      MPYF32    R5H,R1H,R0H           ; [CPU_FPU] |271| 

        MPYF32    R6H,R0H,R6H           ; [CPU_FPU] |271| 
||      MOV32     R2H,*-SP[16]          ; [CPU_FPU] |271| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 271,column 31,is_stmt,isa 0

        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |274| 
||      MPYF32    R4H,R2H,R0H           ; [CPU_FPU] |271| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 5,is_stmt,isa 0
        ADDF32    R7H,R6H,R3H           ; [CPU_FPU] |274| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 15,is_stmt,isa 0
        B         ||$C$L198||,TC        ; [CPU_ALU] |274| 
        ; branchcc occurs ; [] |274| 
        SUBF32    R3H,R7H,R5H           ; [CPU_FPU] |274| 
        ADDF32    R7H,R7H,R4H           ; [CPU_FPU] |274| 
        MAXF32    R3H,#0                ; [CPU_FPU] |274| 
        MINF32    R7H,#0                ; [CPU_FPU] |274| 
        ADDF32    R3H,R3H,R7H           ; [CPU_FPU] |274| 
        MOVB      XAR0,#10              ; [CPU_ALU] |274| 
        MOV32     *+XAR6[AR0],R3H       ; [CPU_FPU] |274| 
        B         ||$C$L199||,UNC       ; [CPU_ALU] |274| 
        ; branch occurs ; [] |274| 
||$C$L198||:    
        MOVW      DP,#||pf_root_work||+10 ; [CPU_ARAU] 
        MOV32     @||pf_root_work||+10,R7H ; [CPU_FPU] |274| 
||$C$L199||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 5,is_stmt,isa 0
        MOV       AH,*-SP[9]            ; [CPU_ALU] |275| 
        MOV32     R7H,*+XAR4[2]         ; [CPU_FPU] |275| 
        MOVW      DP,#||pf_root_work||+10 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 15,is_stmt,isa 0
        TBIT      AH,#0                 ; [CPU_ALU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 81,is_stmt,isa 0

        ADDF32    R2H,R6H,R7H           ; [CPU_FPU] |275| 
||      MOV32     R3H,@||pf_root_work||+10 ; [CPU_FPU] |274| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 15,is_stmt,isa 0
        B         ||$C$L200||,TC        ; [CPU_ALU] |275| 
        ; branchcc occurs ; [] |275| 
        SUBF32    R7H,R2H,R5H           ; [CPU_FPU] |275| 
        ADDF32    R2H,R2H,R4H           ; [CPU_FPU] |275| 
        MAXF32    R7H,#0                ; [CPU_FPU] |275| 
        MINF32    R2H,#0                ; [CPU_FPU] |275| 
        ADDF32    R2H,R2H,R7H           ; [CPU_FPU] |275| 
        NOP       ; [CPU_ALU] 
||$C$L200||:    
        MOV32     @||pf_root_work||+12,R2H ; [CPU_FPU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 5,is_stmt,isa 0
        MOV       AH,*-SP[10]           ; [CPU_ALU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 81,is_stmt,isa 0

        MOV32     R7H,*+XAR4[4]         ; [CPU_FPU] |276| 
||      ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |275| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 15,is_stmt,isa 0
        TBIT      AH,#0                 ; [CPU_ALU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 5,is_stmt,isa 0
        ADDF32    R2H,R6H,R7H           ; [CPU_FPU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 15,is_stmt,isa 0
        B         ||$C$L201||,TC        ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
        SUBF32    R5H,R2H,R5H           ; [CPU_FPU] |276| 
        ADDF32    R4H,R4H,R2H           ; [CPU_FPU] |276| 
        MAXF32    R5H,#0                ; [CPU_FPU] |276| 
        MINF32    R4H,#0                ; [CPU_FPU] |276| 
        ADDF32    R2H,R4H,R5H           ; [CPU_FPU] |276| 
        NOP       ; [CPU_ALU] 
||$C$L201||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 81,is_stmt,isa 0
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |276| 
        MOVW      DP,#||pf_root_work||+38 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 334,column 9,is_stmt,isa 0
        MOV32     @||pf_root_work||+38,R3H ; [CPU_FPU] |334| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 335,column 9,is_stmt,isa 0
        INC       *+XAR3[0]             ; [CPU_ALU] |335| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 336,column 9,is_stmt,isa 0
        MOV32     R3H,@||pf_root_work||+38 ; [CPU_FPU] |336| 
        MOVW      DP,#||pf_root_work||+14 ; [CPU_ARAU] 
        CMPF32    R3H,#0                ; [CPU_FPU] |336| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 15,is_stmt,isa 0
        MOV32     @||pf_root_work||+14,R2H ; [CPU_FPU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 336,column 9,is_stmt,isa 0
        MOVST0    ZF, NF                ; [CPU_FPU] |336| 
        B         ||$C$L202||,EQ        ; [CPU_ALU] |336| 
        ; branchcc occurs ; [] |336| 
        MOVW      DP,#||pf_root_work||+34 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 337,column 14,is_stmt,isa 0
        MOV32     R4H,@||pf_root_work||+34 ; [CPU_FPU] |337| 
        CMPF32    R4H,#0                ; [CPU_FPU] |337| 
        MOVST0    ZF, NF                ; [CPU_FPU] |337| 
        B         ||$C$L204||,GT        ; [CPU_ALU] |337| 
        ; branchcc occurs ; [] |337| 
        CMPF32    R3H,#0                ; [CPU_FPU] |337| 
        MOVST0    ZF, NF                ; [CPU_FPU] |337| 
        B         ||$C$L204||,LEQ       ; [CPU_ALU] |337| 
        ; branchcc occurs ; [] |337| 
        CMPF32    R3H,R4H               ; [CPU_FPU] |337| 
        MOVST0    ZF, NF                ; [CPU_FPU] |337| 
        B         ||$C$L204||,LEQ       ; [CPU_ALU] |337| 
        ; branchcc occurs ; [] |337| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 338,column 13,is_stmt,isa 0
        MOV32     R5H,@||pf_root_work||+32 ; [CPU_FPU] |338| 

        SUBF32    R3H,R3H,R4H           ; [CPU_FPU] |338| 
||      MOV32     R6H,@||pf_root_work||+36 ; [CPU_FPU] |338| 

        SUBF32    R6H,R6H,R5H           ; [CPU_FPU] |338| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIVF32    R3H,R6H,R3H           ; [CPU_FPU] |338| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPYF32    R3H,R4H,R3H           ; [CPU_FPU] |338| 
        NOP       ; [CPU_ALU] 

        SUBF32    R5H,R5H,R3H           ; [CPU_FPU] |338| 
||      MOV32     R7H,@||pf_root_work||+36 ; [CPU_FPU] |339| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 339,column 13,is_stmt,isa 0
        MOV32     R2H,@||pf_root_work||+32 ; [CPU_FPU] |339| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 338,column 13,is_stmt,isa 0
        MOV32     @||pf_root_work||+42,R5H ; [CPU_FPU] |338| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 339,column 13,is_stmt,isa 0
        MINF32    R7H,R5H               ; [CPU_FPU] |339| 
        MAXF32    R2H,R7H               ; [CPU_FPU] |339| 
        MOV32     *+XAR5[0],R2H         ; [CPU_FPU] |339| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 339,column 51,is_stmt,isa 0
        MOV32     R4H,@||pf_root_work||+36 ; [CPU_FPU] |339| 
        MOV32     R3H,@||pf_root_work||+32 ; [CPU_FPU] |339| 
        SUBF32    R3H,R4H,R3H           ; [CPU_FPU] |339| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 339,column 68,is_stmt,isa 0
        B         ||$C$L203||,UNC       ; [CPU_ALU] |339| 
        ; branch occurs ; [] |339| 
||$C$L202||:    
        MOVW      DP,#||pf_root_work||+36 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 336,column 32,is_stmt,isa 0
        MOVL      XAR6,@||pf_root_work||+36 ; [CPU_ALU] |336| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 336,column 41,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |336| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 336,column 32,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR6        ; [CPU_ALU] |336| 
||$C$L203||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 336,column 41,is_stmt,isa 0
        MOV32     *+XAR2[0],R3H         ; [CPU_FPU] |336| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 336,column 59,is_stmt,isa 0
        MOVB      @||pf_root_work||+52,#1,UNC ; [CPU_ALU] |336| 
        MOV32     R3H,@||pf_root_work||+38 ; [CPU_FPU] 
||$C$L204||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 332,column 17,is_stmt,isa 0
        MOV       AH,@||pf_root_work||+51 ; [CPU_ALU] |332| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 341,column 9,is_stmt,isa 0
        MOVL      XAR6,@||pf_root_work||+36 ; [CPU_ALU] |341| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 332,column 44,is_stmt,isa 0
        INC       @||pf_root_work||+48  ; [CPU_ALU] |332| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 341,column 19,is_stmt,isa 0
        MOV32     @||pf_root_work||+34,R3H ; [CPU_FPU] |341| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 332,column 17,is_stmt,isa 0
        CMP       AH,@||pf_root_work||+48 ; [CPU_ALU] |332| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 341,column 9,is_stmt,isa 0
        MOVL      @||pf_root_work||+32,XAR6 ; [CPU_ALU] |341| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 332,column 17,is_stmt,isa 0
        B         ||$C$L197||,HI        ; [CPU_ALU] |332| 
        ; branchcc occurs ; [] |332| 
||$C$L205||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 343,column 5,is_stmt,isa 0
        MOV       AH,@||pf_root_work||+52 ; [CPU_ALU] |343| 
        B         ||$C$L208||,NEQ       ; [CPU_ALU] |343| 
        ; branchcc occurs ; [] |343| 
        MOVW      DP,#||pf_root_work||+4 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 345,column 9,is_stmt,isa 0
        MOV32     R3H,@||pf_root_work||+4 ; [CPU_FPU] |345| 
        CMPF32    R3H,#0                ; [CPU_FPU] |345| 
        NEGF32    R3H,R3H,LT            ; [CPU_FPU] |345| 
        MOV32     R4H,@||pf_root_work||+8 ; [CPU_FPU] |345| 
        CMPF32    R3H,R4H               ; [CPU_FPU] |345| 
        MOVST0    ZF, NF                ; [CPU_FPU] |345| 
        B         ||$C$L206||,LEQ       ; [CPU_ALU] |345| 
        ; branchcc occurs ; [] |345| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 346,column 14,is_stmt,isa 0
        MOV32     R3H,@||pf_root_work||+6 ; [CPU_FPU] |346| 
        CMPF32    R3H,#0                ; [CPU_FPU] |346| 
        NEGF32    R3H,R3H,LT            ; [CPU_FPU] |346| 
        CMPF32    R3H,R4H               ; [CPU_FPU] |346| 
        MOVST0    ZF, NF                ; [CPU_FPU] |346| 
        B         ||$C$L212||,GT        ; [CPU_ALU] |346| 
        ; branchcc occurs ; [] |346| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 346,column 46,is_stmt,isa 0
        MOVL      XAR6,@||pf_root_work||+2 ; [CPU_ALU] |346| 
        B         ||$C$L207||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L206||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 345,column 41,is_stmt,isa 0
        MOVL      XAR6,@||pf_root_work|| ; [CPU_ALU] |345| 
||$C$L207||:    
        MOVL      *+XAR5[0],XAR6        ; [CPU_ALU] |345| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 348,column 9,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |348| 
        MOV32     *+XAR2[0],R3H         ; [CPU_FPU] |348| 
||$C$L208||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 5,is_stmt,isa 0
        MOV       AL,*-SP[11]           ; [CPU_ALU] |274| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 271,column 23,is_stmt,isa 0

        MPYF32    R1H,R1H,R0H           ; [CPU_FPU] |271| 
||      MOV32     R2H,*-SP[16]          ; [CPU_FPU] |271| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 271,column 15,is_stmt,isa 0

        MPYF32    R2H,R2H,R0H           ; [CPU_FPU] |271| 
||      MOV32     R4H,*+XAR5[0]         ; [CPU_FPU] |271| 

        MPYF32    R4H,R0H,R4H           ; [CPU_FPU] |271| 
||      MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |274| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 15,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |274| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 271,column 31,is_stmt,isa 0
        MOV32     R0H,R2H               ; [CPU_FPU] |271| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 5,is_stmt,isa 0
        ADDF32    R3H,R3H,R4H           ; [CPU_FPU] |274| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 274,column 15,is_stmt,isa 0
        B         ||$C$L209||,TC        ; [CPU_ALU] |274| 
        ; branchcc occurs ; [] |274| 
        SUBF32    R2H,R3H,R1H           ; [CPU_FPU] |274| 
        ADDF32    R3H,R3H,R0H           ; [CPU_FPU] |274| 
        MAXF32    R2H,#0                ; [CPU_FPU] |274| 
        MINF32    R3H,#0                ; [CPU_FPU] |274| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |274| 
||$C$L209||:    
        MOVL      XAR5,*-SP[18]         ; [CPU_ALU] |274| 
        MOV32     *+XAR5[0],R3H         ; [CPU_FPU] |274| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 5,is_stmt,isa 0
        MOV       AL,*-SP[9]            ; [CPU_ALU] |275| 
        MOV32     R2H,*+XAR4[2]         ; [CPU_FPU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 15,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 5,is_stmt,isa 0
        ADDF32    R2H,R2H,R4H           ; [CPU_FPU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 15,is_stmt,isa 0
        B         ||$C$L210||,TC        ; [CPU_ALU] |275| 
        ; branchcc occurs ; [] |275| 
        SUBF32    R5H,R2H,R1H           ; [CPU_FPU] |275| 
        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |275| 
        MAXF32    R5H,#0                ; [CPU_FPU] |275| 
        MINF32    R2H,#0                ; [CPU_FPU] |275| 
        ADDF32    R2H,R2H,R5H           ; [CPU_FPU] |275| 
        NOP       ; [CPU_ALU] 
||$C$L210||:    
        MOV32     *+XAR5[2],R2H         ; [CPU_FPU] |275| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 5,is_stmt,isa 0
        MOV       AL,*-SP[10]           ; [CPU_ALU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 275,column 81,is_stmt,isa 0

        MOV32     R5H,*+XAR4[4]         ; [CPU_FPU] |276| 
||      ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |275| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 15,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 5,is_stmt,isa 0
        ADDF32    R2H,R4H,R5H           ; [CPU_FPU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 15,is_stmt,isa 0
        B         ||$C$L211||,TC        ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
        SUBF32    R1H,R2H,R1H           ; [CPU_FPU] |276| 
        ADDF32    R0H,R0H,R2H           ; [CPU_FPU] |276| 
        MAXF32    R1H,#0                ; [CPU_FPU] |276| 
        MINF32    R0H,#0                ; [CPU_FPU] |276| 
        ADDF32    R2H,R0H,R1H           ; [CPU_FPU] |276| 
        NOP       ; [CPU_ALU] 
||$C$L211||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 81,is_stmt,isa 0
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 351,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[18]         ; [CPU_ALU] |351| 
        MOV       PL,#0                 ; [CPU_ALU] |351| 
        MOV       PH,#32640             ; [CPU_ALU] |351| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[8],R3H           ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 351,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |351| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 276,column 15,is_stmt,isa 0
        MOV32     *+XAR4[4],R2H         ; [CPU_FPU] |276| 
        MOVL      XAR4,*-SP[20]         ; [CPU_ALU] |276| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 351,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |351| 
        AND       AH,#32640             ; [CPU_ALU] |351| 
        CMPL      ACC,P                 ; [CPU_ALU] |351| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 350,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R3H         ; [CPU_FPU] |350| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 351,column 5,is_stmt,isa 0
        B         ||$C$L212||,EQ        ; [CPU_ALU] |351| 
        ; branchcc occurs ; [] |351| 
        CMPF32    R3H,#0                ; [CPU_FPU] |351| 
        MOVW      DP,#||pf_root_work||+8 ; [CPU_ARAU] 
        NEGF32    R3H,R3H,LT            ; [CPU_FPU] |351| 
        MOV32     R0H,@||pf_root_work||+8 ; [CPU_FPU] |351| 
        CMPF32    R3H,R0H               ; [CPU_FPU] |351| 
        MOVST0    ZF, NF                ; [CPU_FPU] |351| 
        B         ||$C$L213||,LEQ       ; [CPU_ALU] |351| 
        ; branchcc occurs ; [] |351| 
||$C$L212||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 351,column 65,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |351| 
        B         ||$C$L214||,UNC       ; [CPU_ALU] |351| 
        ; branch occurs ; [] |351| 
||$C$L213||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 352,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |352| 
||$C$L214||:    
        SUBB      SP,#20                ; [CPU_ARAU] 
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
$C$DW$503	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$503, DW_AT_low_pc(0x00)
	.dwattr $C$DW$503, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$449, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$449, DW_AT_TI_end_line(0x161)
	.dwattr $C$DW$449, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$449

	.sect	"pcmfpc_code"
	.clink

$C$DW$504	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$504, DW_AT_name("pf_interval")
	.dwattr $C$DW$504, DW_AT_low_pc(||pf_interval||)
	.dwattr $C$DW$504, DW_AT_high_pc(0x00)
	.dwattr $C$DW$504, DW_AT_linkage_name("pf_interval")
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$504, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$504, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$504, DW_AT_decl_column(0x11)
	.dwattr $C$DW$504, DW_AT_TI_max_frame_size(-114)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 477,column 1,is_stmt,address ||pf_interval||,isa 0

	.dwfde $C$DW$CIE, ||pf_interval||
$C$DW$505	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$505, DW_AT_name("cfg")
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$505, DW_AT_location[DW_OP_reg12]

$C$DW$506	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$506, DW_AT_name("dq0")
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$506, DW_AT_location[DW_OP_reg14]

$C$DW$507	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$507, DW_AT_name("up")
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$507, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$508	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$508, DW_AT_name("low")
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$508, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$509	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$509, DW_AT_name("hw")
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$509, DW_AT_location[DW_OP_reg0]

$C$DW$510	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$510, DW_AT_name("f")
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$510, DW_AT_location[DW_OP_breg20 -116]

$C$DW$511	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$511, DW_AT_name("plan")
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$511, DW_AT_location[DW_OP_breg20 -118]

$C$DW$512	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$512, DW_AT_name("out")
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$512, DW_AT_location[DW_OP_breg20 -120]

$C$DW$513	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$513, DW_AT_name("detail")
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$513, DW_AT_location[DW_OP_reg1]

$C$DW$514	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$514, DW_AT_name("seed")
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$514, DW_AT_location[DW_OP_breg20 -122]


;***************************************************************
;* FNAME: pf_interval                   FR SIZE: 112           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           10 Parameter, 88 Auto, 14 SOE     *
;***************************************************************

||pf_interval||:
$C$DW$515	.dwtag  DW_TAG_variable
	.dwattr $C$DW$515, DW_AT_name("old_local")
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$515, DW_AT_location[DW_OP_breg20 -16]

$C$DW$516	.dwtag  DW_TAG_variable
	.dwattr $C$DW$516, DW_AT_name("free_local")
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$516, DW_AT_location[DW_OP_breg20 -22]

$C$DW$517	.dwtag  DW_TAG_variable
	.dwattr $C$DW$517, DW_AT_name("next")
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$517, DW_AT_location[DW_OP_breg20 -28]

$C$DW$518	.dwtag  DW_TAG_variable
	.dwattr $C$DW$518, DW_AT_name("pole")
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$518, DW_AT_location[DW_OP_breg20 -34]

$C$DW$519	.dwtag  DW_TAG_variable
	.dwattr $C$DW$519, DW_AT_name("mu")
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$519, DW_AT_location[DW_OP_breg20 -36]

$C$DW$520	.dwtag  DW_TAG_variable
	.dwattr $C$DW$520, DW_AT_name("width")
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_location[DW_OP_breg20 -38]

$C$DW$521	.dwtag  DW_TAG_variable
	.dwattr $C$DW$521, DW_AT_name("residual")
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_location[DW_OP_breg20 -40]

$C$DW$522	.dwtag  DW_TAG_variable
	.dwattr $C$DW$522, DW_AT_name("v")
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$522, DW_AT_location[DW_OP_breg20 -42]

$C$DW$523	.dwtag  DW_TAG_variable
	.dwattr $C$DW$523, DW_AT_name("v")
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$523, DW_AT_location[DW_OP_breg20 -44]

$C$DW$524	.dwtag  DW_TAG_variable
	.dwattr $C$DW$524, DW_AT_name("v")
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$524, DW_AT_location[DW_OP_breg20 -46]

$C$DW$525	.dwtag  DW_TAG_variable
	.dwattr $C$DW$525, DW_AT_name("v")
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$525, DW_AT_location[DW_OP_breg20 -48]

$C$DW$526	.dwtag  DW_TAG_variable
	.dwattr $C$DW$526, DW_AT_name("v")
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$526, DW_AT_location[DW_OP_breg20 -50]

$C$DW$527	.dwtag  DW_TAG_variable
	.dwattr $C$DW$527, DW_AT_name("v")
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$527, DW_AT_location[DW_OP_breg20 -52]

$C$DW$528	.dwtag  DW_TAG_variable
	.dwattr $C$DW$528, DW_AT_name("v")
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$528, DW_AT_location[DW_OP_breg20 -54]

$C$DW$529	.dwtag  DW_TAG_variable
	.dwattr $C$DW$529, DW_AT_name("iterations")
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$529, DW_AT_location[DW_OP_breg20 -55]

;* R2    assigned to $O$C26
;* R0    assigned to $O$C27
;* R6    assigned to $O$C28
;* R1    assigned to $O$C29
;* R5    assigned to $O$C30
;* R0    assigned to $O$C31
;* R2    assigned to $O$C32
;* R1    assigned to $O$C33
;* R0    assigned to $O$C34
;* R5    assigned to $O$C35
;* R3    assigned to $O$C39
;* R0    assigned to $O$C40
;* AR5   assigned to $O$C41
;* R7    assigned to $O$C42
;* R0    assigned to $O$C43
;* R4    assigned to $O$C44
;* R7    assigned to $O$C45
;* R6    assigned to $O$C46
;* AR4   assigned to $O$C47
;* AR3   assigned to $O$U179
;* AR5   assigned to $O$U179
;* AR5   assigned to $O$U194
;* AR4   assigned to $O$U194
;* R1    assigned to up
$C$DW$530	.dwtag  DW_TAG_variable
	.dwattr $C$DW$530, DW_AT_name("up")
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to up
$C$DW$531	.dwtag  DW_TAG_variable
	.dwattr $C$DW$531, DW_AT_name("up")
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$531, DW_AT_location[DW_OP_regx 0x2b]

;* R2    assigned to low
$C$DW$532	.dwtag  DW_TAG_variable
	.dwattr $C$DW$532, DW_AT_name("low")
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_location[DW_OP_regx 0x33]

;* R1    assigned to low
$C$DW$533	.dwtag  DW_TAG_variable
	.dwattr $C$DW$533, DW_AT_name("low")
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$533, DW_AT_location[DW_OP_regx 0x2f]

;* PL    assigned to $O$U174
;* R0    assigned to $O$U180
;* AR4   assigned to $O$U250
;* AR7   assigned to $O$U185
;* R5    assigned to $O$dq_0
;* R4    assigned to $O$dq_2
;* R4    assigned to $O$pole_dq_2
;* R0    assigned to $O$S1
;* R0    assigned to $O$S2
;* AR6   assigned to $O$S3
$C$DW$534	.dwtag  DW_TAG_variable
	.dwattr $C$DW$534, DW_AT_name("cfg")
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$534, DW_AT_location[DW_OP_breg20 -74]

;* AR5   assigned to dq0
$C$DW$535	.dwtag  DW_TAG_variable
	.dwattr $C$DW$535, DW_AT_name("dq0")
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$535, DW_AT_location[DW_OP_reg14]

$C$DW$536	.dwtag  DW_TAG_variable
	.dwattr $C$DW$536, DW_AT_name("hw")
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$536, DW_AT_location[DW_OP_breg20 -56]

$C$DW$537	.dwtag  DW_TAG_variable
	.dwattr $C$DW$537, DW_AT_name("f")
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$537, DW_AT_location[DW_OP_breg20 -76]

$C$DW$538	.dwtag  DW_TAG_variable
	.dwattr $C$DW$538, DW_AT_name("plan")
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$538, DW_AT_location[DW_OP_breg20 -78]

$C$DW$539	.dwtag  DW_TAG_variable
	.dwattr $C$DW$539, DW_AT_name("out")
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$539, DW_AT_location[DW_OP_breg20 -80]

$C$DW$540	.dwtag  DW_TAG_variable
	.dwattr $C$DW$540, DW_AT_name("detail")
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$540, DW_AT_location[DW_OP_breg20 -57]

$C$DW$541	.dwtag  DW_TAG_variable
	.dwattr $C$DW$541, DW_AT_name("seed")
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$541, DW_AT_location[DW_OP_breg20 -82]

$C$DW$542	.dwtag  DW_TAG_variable
	.dwattr $C$DW$542, DW_AT_name("np")
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_location[DW_OP_breg20 -84]

$C$DW$543	.dwtag  DW_TAG_variable
	.dwattr $C$DW$543, DW_AT_name("dc")
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$543, DW_AT_location[DW_OP_breg20 -86]

$C$DW$544	.dwtag  DW_TAG_variable
	.dwattr $C$DW$544, DW_AT_name("h")
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$544, DW_AT_location[DW_OP_breg20 -88]

$C$DW$545	.dwtag  DW_TAG_variable
	.dwattr $C$DW$545, DW_AT_name("c")
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$545, DW_AT_location[DW_OP_breg20 -90]

$C$DW$546	.dwtag  DW_TAG_variable
	.dwattr $C$DW$546, DW_AT_name("step")
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$546, DW_AT_location[DW_OP_breg20 -58]

;* T     assigned to r
$C$DW$547	.dwtag  DW_TAG_variable
	.dwattr $C$DW$547, DW_AT_name("r")
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$547, DW_AT_location[DW_OP_reg22]

;* AL    assigned to status
$C$DW$548	.dwtag  DW_TAG_variable
	.dwattr $C$DW$548, DW_AT_name("status")
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$548, DW_AT_location[DW_OP_reg0]

$C$DW$549	.dwtag  DW_TAG_variable
	.dwattr $C$DW$549, DW_AT_name("old")
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$549, DW_AT_location[DW_OP_breg20 -98]

;* AR3   assigned to freeabc
$C$DW$550	.dwtag  DW_TAG_variable
	.dwattr $C$DW$550, DW_AT_name("freeabc")
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$550, DW_AT_location[DW_OP_reg10]

$C$DW$551	.dwtag  DW_TAG_variable
	.dwattr $C$DW$551, DW_AT_name("neutral")
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_location[DW_OP_breg20 -92]

$C$DW$552	.dwtag  DW_TAG_variable
	.dwattr $C$DW$552, DW_AT_name("blocked")
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$552, DW_AT_location[DW_OP_breg20 -59]

$C$DW$553	.dwtag  DW_TAG_variable
	.dwattr $C$DW$553, DW_AT_name("s")
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$553, DW_AT_location[DW_OP_breg20 -94]

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
        ADDB      SP,#98                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -114
        MOVZ      AR7,AH                ; [CPU_ALU] |477| 
        MOVZ      AR6,AL                ; [CPU_ALU] |477| 
        MOVL      XAR0,#40              ; [CPU_ALU] |477| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 480,column 5,is_stmt,isa 0
        MOV32     R5H,*+XAR5[0]         ; [CPU_FPU] |480| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 480,column 18,is_stmt,isa 0
        MOV32     R4H,*+XAR5[2]         ; [CPU_FPU] |480| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 477,column 1,is_stmt,isa 0
        MOVL      ACC,*+FP[0]           ; [CPU_ALU] |477| 
        MOVL      *+FP[AR0],ACC         ; [CPU_ALU] |477| 
        MOVL      XAR5,*+FP[4]          ; [CPU_ALU] |477| 
        MOVL      XAR0,#44              ; [CPU_ALU] |477| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 478,column 50,is_stmt,isa 0
        MOV32     R2H,*+XAR5[2]         ; [CPU_FPU] |478| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 478,column 40,is_stmt,isa 0
        MOV32     R3H,*+XAR5[0]         ; [CPU_FPU] |478| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 477,column 1,is_stmt,isa 0
        MOVL      *+FP[AR0],XAR5        ; [CPU_ALU] |477| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 478,column 50,is_stmt,isa 0
        MOVL      XAR0,#32              ; [CPU_ALU] |478| 
        MOV32     *+FP[AR0],R2H         ; [CPU_FPU] |478| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 478,column 40,is_stmt,isa 0
        MOVL      XAR0,#34              ; [CPU_ALU] |478| 
        MOV32     *+FP[AR0],R3H         ; [CPU_FPU] |478| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 477,column 1,is_stmt,isa 0
        MOVL      XAR0,#42              ; [CPU_ALU] |477| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 481,column 5,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |481| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 477,column 1,is_stmt,isa 0
        MOVL      XAR5,*+FP[2]          ; [CPU_ALU] |477| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 480,column 31,is_stmt,isa 0
        MOVB      XAR1,#10              ; [CPU_ALU] |480| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 482,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |482| 
        MOV       PH,#32640             ; [CPU_ALU] |482| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 477,column 1,is_stmt,isa 0
        MOVL      *+FP[AR0],XAR5        ; [CPU_ALU] |477| 
        MOVL      XAR0,#46              ; [CPU_ALU] |477| 
        MOVL      ACC,*+FP[6]           ; [CPU_ALU] |477| 
        MOVL      *+FP[AR0],ACC         ; [CPU_ALU] |477| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[42],R2H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 478,column 21,is_stmt,isa 0
        MOVL      XAR0,#38              ; [CPU_ALU] |478| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 477,column 1,is_stmt,isa 0
        MOV       *-SP[57],AR7          ; [CPU_ALU] |477| 
        MOV       *-SP[56],AR6          ; [CPU_ALU] |477| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 480,column 31,is_stmt,isa 0
        MOV       *+XAR5[AR1],#0        ; [CPU_ALU] |480| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 478,column 21,is_stmt,isa 0

        MOV32     *+XAR5[6],R3H         ; [CPU_FPU] |481| 
||      SUBF32    R2H,R1H,R0H           ; [CPU_FPU] |478| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 482,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[42]          ; [CPU_ALU] |482| 
        ANDB      AL,#0                 ; [CPU_ALU] |482| 
        AND       AH,#32640             ; [CPU_ALU] |482| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 478,column 21,is_stmt,isa 0

        MOV32     *+FP[AR0],R2H         ; [CPU_FPU] |478| 
||      ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |478| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 478,column 31,is_stmt,isa 0
        MOVL      XAR0,#36              ; [CPU_ALU] |478| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 482,column 5,is_stmt,isa 0
        CMPL      ACC,P                 ; [CPU_ALU] |482| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 478,column 31,is_stmt,isa 0
        MOV32     *+FP[AR0],R0H         ; [CPU_FPU] |478| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 477,column 1,is_stmt,isa 0
        MOVL      XAR0,#48              ; [CPU_ALU] |477| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 481,column 42,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |481| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 477,column 1,is_stmt,isa 0
        MOVL      *+FP[AR0],XAR4        ; [CPU_ALU] |477| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 481,column 42,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |481| 
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |481| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 482,column 5,is_stmt,isa 0
        B         ||$C$L229||,EQ        ; [CPU_ALU] |482| 
        ; branchcc occurs ; [] |482| 
        MOVL      XAR0,#32              ; [CPU_ALU] 
        MOV32     R0H,*+FP[AR0]         ; [CPU_FPU] 
        CMPF32    R0H,#0                ; [CPU_FPU] |482| 
        MOVST0    ZF, NF                ; [CPU_FPU] |482| 
        B         ||$C$L229||,LEQ       ; [CPU_ALU] |482| 
        ; branchcc occurs ; [] |482| 
        MOVL      XAR0,#36              ; [CPU_ALU] |482| 
        MOV32     R0H,*+FP[AR0]         ; [CPU_FPU] |482| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[44],R0H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 482,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[44]          ; [CPU_ALU] |482| 
        ANDB      AL,#0                 ; [CPU_ALU] |482| 
        AND       AH,#32640             ; [CPU_ALU] |482| 
        CMPL      ACC,P                 ; [CPU_ALU] |482| 
        B         ||$C$L229||,EQ        ; [CPU_ALU] |482| 
        ; branchcc occurs ; [] |482| 
        MOVL      XAR0,#42              ; [CPU_ALU] 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 483,column 9,is_stmt,isa 0
        MOV       *-SP[58],#0           ; [CPU_ALU] |483| 
        MOVL      XAR0,#54              ; [CPU_ALU] 
        ADDB      ACC,#12               ; [CPU_ALU] 
        MOVL      *+FP[AR0],ACC         ; [CPU_ALU] 
||$C$L215||:    
        MOVL      XAR0,#36              ; [CPU_ALU] 
        MOV32     R1H,*+FP[AR0]         ; [CPU_FPU] 
        MOVL      XAR0,#38              ; [CPU_ALU] 
        MOV32     R0H,*+FP[AR0]         ; [CPU_FPU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 490,column 9,is_stmt,isa 0
        MOVL      XAR0,#54              ; [CPU_ALU] |490| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |490| 
        SUBF32    R2H,R1H,R0H           ; [CPU_FPU] |490| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 488,column 22,is_stmt,isa 0
        MOVL      XAR0,#28              ; [CPU_ALU] |488| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 490,column 31,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |490| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 488,column 22,is_stmt,isa 0
        MOVL      *+FP[AR0],XAR4        ; [CPU_ALU] |488| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 489,column 9,is_stmt,isa 0
        MOVB      XAR0,#39              ; [CPU_ALU] |489| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 490,column 9,is_stmt,isa 0
        MPYF32    R1H,R2H,#16128        ; [CPU_FPU] |490| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 490,column 31,is_stmt,isa 0
        MPYF32    R2H,R0H,#16128        ; [CPU_FPU] |490| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 489,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR0],#65535    ; [CPU_ALU] |489| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 491,column 9,is_stmt,isa 0
        CMPF32    R1H,#0                ; [CPU_FPU] |491| 
        MOVST0    ZF, NF                ; [CPU_FPU] |491| 
        B         ||$C$L231||,LEQ       ; [CPU_ALU] |491| 
        ; branchcc occurs ; [] |491| 
        CMPF32    R2H,#0                ; [CPU_FPU] |491| 
        MOVST0    ZF, NF                ; [CPU_FPU] |491| 
        B         ||$C$L231||,LEQ       ; [CPU_ALU] |491| 
        ; branchcc occurs ; [] |491| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[46],R1H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 491,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[46]          ; [CPU_ALU] |491| 
        ANDB      AL,#0                 ; [CPU_ALU] |491| 
        AND       AH,#32640             ; [CPU_ALU] |491| 
        CMPL      ACC,P                 ; [CPU_ALU] |491| 
        B         ||$C$L231||,EQ        ; [CPU_ALU] |491| 
        ; branchcc occurs ; [] |491| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[48],R2H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 491,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[48]          ; [CPU_ALU] |491| 
        ANDB      AL,#0                 ; [CPU_ALU] |491| 
        AND       AH,#32640             ; [CPU_ALU] |491| 
        CMPL      ACC,P                 ; [CPU_ALU] |491| 
        B         ||$C$L231||,EQ        ; [CPU_ALU] |491| 
        ; branchcc occurs ; [] |491| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 486,column 24,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |486| 
        MOVL      XAR0,#30              ; [CPU_ALU] |486| 
        MOV       AL,*-SP[58]           ; [CPU_ALU] |486| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 487,column 36,is_stmt,isa 0
        MOV       *-SP[59],#0           ; [CPU_ALU] |487| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 486,column 24,is_stmt,isa 0
        MOV32     *+FP[AR0],R0H         ; [CPU_FPU] |486| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 492,column 9,is_stmt,isa 0
        B         ||$C$L216||,NEQ       ; [CPU_ALU] |492| 
        ; branchcc occurs ; [] |492| 
        MOVL      XAR0,#40              ; [CPU_ALU] 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] 
        B         ||$C$L217||,NEQ       ; [CPU_ALU] |492| 
        ; branchcc occurs ; [] |492| 
||$C$L216||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0
        MOVL      XAR0,#44              ; [CPU_ALU] |166| 
        MOVB      AL,#6                 ; [CPU_ALU] |166| 
        MOV       T,*-SP[58]            ; [CPU_ALU] |166| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |166| 
        MPYU      P,T,AL                ; [CPU_ALU] |166| 
        MOVL      XAR0,#46              ; [CPU_ALU] |166| 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_FPU] |166| 
        MOVB      AL,#1                 ; [CPU_FPU] |166| 
        MOVL      XAR0,#34              ; [CPU_ALU] |166| 
        MOV       T,#6                  ; [CPU_ALU] |166| 
        ADD       AL,*-SP[58]           ; [CPU_ALU] |166| 
        MOV32     R0H,*+FP[AR0]         ; [CPU_FPU] |166| 
        MOV32     R3H,*+XAR5[0]         ; [CPU_FPU] |166| 
        MOVL      XAR0,#56              ; [CPU_ALU] |166| 
        MPYXU     ACC,T,AL              ; [CPU_ALU] |166| 
        MPYF32    R3H,R0H,R3H           ; [CPU_FPU] |166| 
        ADDUL     P,XAR6                ; [CPU_ALU] |166| 

        ADDF32    R3H,R3H,R5H           ; [CPU_FPU] |166| 
||      MOV32     R6H,*+XAR5[2]         ; [CPU_FPU] |166| 

        ADDL      ACC,XAR6              ; [CPU_ALU] |166| 
        MOV32     *+FP[AR0],R3H         ; [CPU_FPU] |166| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |166| 
        MOVB      XAR1,#8               ; [CPU_FPU] |166| 
        MOVL      XAR4,P                ; [CPU_ALU] |166| 
        MOVB      XAR0,#10              ; [CPU_ALU] |166| 
        MOV32     R3H,*+XAR5[AR0]       ; [CPU_FPU] |166| 
        MOVL      XAR0,#58              ; [CPU_ALU] |166| 

        MOV32     *+FP[AR0],R3H         ; [CPU_FPU] |166| 
||      MPYF32    R0H,R0H,R6H           ; [CPU_FPU] |166| 

        MOVL      XAR0,#58              ; [CPU_ALU] 

        MOV32     R6H,*+FP[AR0]         ; [CPU_FPU] 
||      ADDF32    R0H,R0H,R4H           ; [CPU_FPU] |166| 

        MOVL      XAR0,#56              ; [CPU_ALU] |166| 

        MPYF32    R7H,R0H,R6H           ; [CPU_FPU] |166| 
||      MOV32     R3H,*+XAR5[AR1]       ; [CPU_FPU] |166| 

        MPYF32    R0H,R0H,R3H           ; [CPU_FPU] |166| 
||      MOV32     R6H,*+FP[AR0]         ; [CPU_FPU] |166| 

        MPYF32    R6H,R6H,R3H           ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOVL      XAR0,#26              ; [CPU_ALU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0

        SUBF32    R6H,R6H,R7H           ; [CPU_FPU] |166| 
||      MOV32     *+FP[AR0],R0H         ; [CPU_FPU] |166| 

        MOVB      XAR0,#10              ; [CPU_ALU] |166| 
        MOV32     *-SP[62],R6H          ; [CPU_FPU] |166| 
        MOV32     R7H,*+XAR4[AR0]       ; [CPU_FPU] |166| 
        MOVB      XAR0,#8               ; [CPU_ALU] |166| 
        MOV32     R6H,*+XAR4[AR0]       ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 497,column 13,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |497| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MPYF32    R3H,R5H,R7H           ; [CPU_FPU] |166| 
        MPYF32    R0H,R4H,R6H           ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 497,column 13,is_stmt,isa 0
        SUBB      XAR4,#16              ; [CPU_ARAU] |497| 
        MOVU      ACC,AR4               ; [CPU_ALU] |497| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 497,column 27,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |497| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0
        MOVL      XAR0,#56              ; [CPU_ALU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        ADDF32    R3H,R3H,R0H           ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0
        MPYF32    R0H,R4H,R7H           ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 497,column 27,is_stmt,isa 0
        SUBB      XAR4,#22              ; [CPU_ARAU] |497| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0

        MOV32     R6H,*+FP[AR0]         ; [CPU_FPU] |166| 
||      MPYF32    R7H,R5H,R6H           ; [CPU_FPU] |166| 

        MOVL      XAR0,#58              ; [CPU_ALU] |166| 
        SUBF32    R4H,R7H,R0H           ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 497,column 27,is_stmt,isa 0
        MOVZ      AR3,AR4               ; [CPU_ALU] |497| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0
        MOV32     *-SP[16],R4H          ; [CPU_FPU] |166| 
        MOV32     R7H,*+FP[AR0]         ; [CPU_FPU] |166| 
        MOVL      XAR0,#26              ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0

        MOV32     R0H,*+FP[AR0]         ; [CPU_FPU] 
||      MPYF32    R5H,R6H,R7H           ; [CPU_FPU] |166| 

        MOVIZ     R7H,#16221            ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 497,column 13,is_stmt,isa 0
        MOVL      XAR0,#24              ; [CPU_ALU] |497| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        NEGF32    R4H,R4H               ; [CPU_FPU] |166| 
        MOV32     R6H,*-SP[62]          ; [CPU_FPU] |166| 
        MOVXI     R7H,#46039            ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 497,column 13,is_stmt,isa 0
        MOVL      *+FP[AR0],ACC         ; [CPU_ALU] |497| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        NEGF32    R6H,R6H               ; [CPU_FPU] |166| 
        ADDF32    R5H,R5H,R0H           ; [CPU_FPU] |166| 
        MPYF32    R0H,R6H,#16128        ; [CPU_FPU] |166| 
        MPYF32    R5H,R7H,R5H           ; [CPU_FPU] |166| 
        MOVIZ     R7H,#16221            ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 497,column 27,is_stmt,isa 0
        MOV       AL,*-SP[58]           ; [CPU_ALU] |497| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        ADDF32    R6H,R5H,R0H           ; [CPU_FPU] |166| 
        MOVXI     R7H,#46039            ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        SUBF32    R5H,R0H,R5H           ; [CPU_FPU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0

        MPYF32    R0H,R7H,R3H           ; [CPU_FPU] |166| 
||      MOV32     *-SP[20],R6H          ; [CPU_FPU] |166| 

        MPYF32    R7H,R4H,#16128        ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        MOV32     *-SP[18],R5H          ; [CPU_FPU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0

        ADDF32    R4H,R0H,R7H           ; [CPU_FPU] |166| 
||      MOV32     R3H,*-SP[62]          ; [CPU_FPU] |167| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 5,is_stmt,isa 0

        SUBF32    R0H,R7H,R0H           ; [CPU_FPU] |167| 
||      MOV32     *-SP[22],R3H          ; [CPU_FPU] |166| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 166,column 14,is_stmt,isa 0
        MOV32     *-SP[14],R4H          ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 167,column 5,is_stmt,isa 0
        MOV32     *-SP[12],R0H          ; [CPU_FPU] |167| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 499,column 9,is_stmt,isa 0
        B         ||$C$L218||,EQ        ; [CPU_ALU] |499| 
        ; branchcc occurs ; [] |499| 
        MOVB      XAR6,#0               ; [CPU_ALU] |499| 
        B         ||$C$L219||,UNC       ; [CPU_ALU] |499| 
        ; branch occurs ; [] |499| 
||$C$L217||:    
        MOVL      XAR0,#40              ; [CPU_ALU] 
        MOVL      XAR3,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 492,column 30,is_stmt,isa 0
        MOVL      XAR0,#24              ; [CPU_ALU] |492| 
        MOVL      *+FP[AR0],XAR3        ; [CPU_ALU] |492| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 492,column 48,is_stmt,isa 0
        ADDB      XAR3,#6               ; [CPU_ALU] |492| 
||$C$L218||:    
        MOVL      XAR0,#40              ; [CPU_ALU] 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] 
||$C$L219||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 499,column 9,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |499| 
        SUBB      XAR4,#38              ; [CPU_ARAU] |499| 
        MOVU      ACC,AR4               ; [CPU_ALU] |499| 
        MOVZ      AR4,SP                ; [CPU_ALU] |499| 
        SUBB      XAR4,#55              ; [CPU_ARAU] |499| 
        MOV       PL,AR4                ; [CPU_ALU] |499| 
        MOVZ      AR4,SP                ; [CPU_ALU] |499| 
        MOVZ      AR5,SP                ; [CPU_ALU] |499| 
        MOV       PH,#0                 ; [CPU_ALU] |499| 
        SUBB      XAR4,#28              ; [CPU_ARAU] |499| 
        MOVZ      AR7,AR4               ; [CPU_ALU] |499| 
        MOVZ      AR4,SP                ; [CPU_ALU] |499| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |499| 
        MOVL      *-SP[4],P             ; [CPU_ALU] |499| 
        SUBB      XAR5,#36              ; [CPU_ARAU] |499| 
        SUBB      XAR4,#40              ; [CPU_ARAU] |499| 
        MOVL      *-SP[6],XAR7          ; [CPU_ALU] |499| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |499| 
        MOVL      XAR0,#32              ; [CPU_ALU] |499| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |499| 
        MOV       AL,*-SP[56]           ; [CPU_ALU] |499| 
        MOVL      *-SP[8],XAR4          ; [CPU_ALU] |499| 
        MOVL      *-SP[10],XAR6         ; [CPU_ALU] |499| 
        MOVL      XAR4,XAR3             ; [CPU_ALU] |499| 
        MOV32     R0H,*+FP[AR0]         ; [CPU_FPU] |499| 
$C$DW$554	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$554, DW_AT_low_pc(0x00)
	.dwattr $C$DW$554, DW_AT_name("pf_root")
	.dwattr $C$DW$554, DW_AT_TI_call

        LCR       #||pf_root||          ; [CPU_ALU] |499| 
        ; call occurs [#||pf_root||] ; [] |499| 
        CMPB      AL,#0                 ; [CPU_ALU] |499| 
        B         ||$C$L233||,NEQ       ; [CPU_ALU] |499| 
        ; branchcc occurs ; [] |499| 
        MOVL      XAR0,#44              ; [CPU_ALU] 
        MOVB      AL,#1                 ; [CPU_ALU] 
        MOVZ      AR4,SP                ; [CPU_ALU] 
        MOV       T,#6                  ; [CPU_ALU] 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] 
        ADD       AL,*-SP[58]           ; [CPU_ALU] 
        MOV       P,#0                  ; [CPU_ALU] 
        MOVL      XAR0,#52              ; [CPU_ALU] 
        SUBB      XAR4,#28              ; [CPU_ARAU] 
        MPYXU     ACC,T,AL              ; [CPU_ALU] 
        MOVZ      AR5,AR4               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 502,column 13,is_stmt,isa 0
        MOV       T,#0                  ; [CPU_ALU] |502| 
        ADDL      ACC,XAR6              ; [CPU_ALU] 
        MOVB      XAR6,#2               ; [CPU_ALU] 
        ADDB      ACC,#6                ; [CPU_ALU] 
        MOVL      *+FP[AR0],ACC         ; [CPU_ALU] 
||$C$L220||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 503,column 13,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |503| 
        LSL       AL,T                  ; [CPU_ALU] |503| 
        AND       AL,*-SP[56]           ; [CPU_ALU] |503| 
        B         ||$C$L222||,NEQ       ; [CPU_ALU] |503| 
        ; branchcc occurs ; [] |503| 
        MOV       AL,*-SP[57]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 507,column 17,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |507| 
        B         ||$C$L221||,EQ        ; [CPU_ALU] |507| 
        ; branchcc occurs ; [] |507| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 509,column 21,is_stmt,isa 0
        MOVL      XAR4,XAR3             ; [CPU_ALU] |509| 
        MOVL      ACC,P                 ; [CPU_ALU] |509| 
        MOVL      XAR0,#32              ; [CPU_ALU] |509| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |509| 
        MOV32     R0H,*+FP[AR0]         ; [CPU_FPU] |509| 
        MOV32     R1H,*-SP[36]          ; [CPU_FPU] |509| 
        MPYF32    R2H,R0H,R1H           ; [CPU_FPU] |509| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |509| 
        ADDF32    R2H,R2H,R1H           ; [CPU_FPU] |509| 
        MOV32     R7H,*+XAR5[0]         ; [CPU_FPU] |509| 
        SUBF32    R1H,R2H,R7H           ; [CPU_FPU] |509| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |509| 
        MOVZ      AR4,SP                ; [CPU_ALU] |509| 
        SUBB      XAR4,#34              ; [CPU_ARAU] |509| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |509| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |509| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |509| 
||$C$L221||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 511,column 17,is_stmt,isa 0
        MOV32     R0H,*+XAR5[0]         ; [CPU_FPU] |511| 
        MOVIZ     R1H,#11148            ; [CPU_FPU] |511| 
        CMPF32    R0H,#0                ; [CPU_FPU] |511| 
        MOVXI     R1H,#48332            ; [CPU_FPU] |511| 
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |511| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |511| 
        MOVST0    ZF, NF                ; [CPU_FPU] |511| 
        B         ||$C$L224||,GEQ       ; [CPU_ALU] |511| 
        ; branchcc occurs ; [] |511| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 511,column 51,is_stmt,isa 0
        MOV       *-SP[59],#1           ; [CPU_ALU] |511| 
        B         ||$C$L224||,UNC       ; [CPU_ALU] |511| 
        ; branch occurs ; [] |511| 
||$C$L222||:    
        MOVL      XAR0,#24              ; [CPU_ALU] 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] 
        ADDL      ACC,P                 ; [CPU_ALU] 
        MOVL      XAR4,ACC              ; [CPU_ALU] 
        MOV       AL,*-SP[57]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 504,column 17,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |504| 
        B         ||$C$L223||,EQ        ; [CPU_ALU] |504| 
        ; branchcc occurs ; [] |504| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 504,column 49,is_stmt,isa 0
        MOVZ      AR7,SP                ; [CPU_ALU] |504| 
        SUBB      XAR7,#34              ; [CPU_ARAU] |504| 
        MOVZ      AR7,AR7               ; [CPU_ALU] |504| 
        MOVL      ACC,P                 ; [CPU_ALU] |504| 
        ADDL      XAR7,ACC              ; [CPU_ALU] |504| 
        ZERO      R0H                   ; [CPU_FPU] |504| 
        MOV32     *+XAR7[0],R0H         ; [CPU_FPU] |504| 
||$C$L223||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 505,column 17,is_stmt,isa 0
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |505| 
        MOV32     R1H,*+XAR5[0]         ; [CPU_FPU] |505| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |505| 
        MOVL      XAR0,#30              ; [CPU_ALU] 
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |505| 
        MOV32     R7H,*+FP[AR0]         ; [CPU_FPU] 
        ADDF32    R0H,R1H,R7H           ; [CPU_FPU] |505| 
        MOVL      XAR0,#30              ; [CPU_ALU] |505| 
        MOV32     *+FP[AR0],R0H         ; [CPU_FPU] |505| 
||$C$L224||:    
        MOVL      ACC,P                 ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 502,column 18,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_ALU] |502| 
        ADDB      ACC,#2                ; [CPU_ALU] |502| 
        MOVL      P,ACC                 ; [CPU_FPU] |502| 
        MOV       AL,T                  ; [CPU_FPU] |502| 
        ADDB      AL,#1                 ; [CPU_ALU] |502| 
        MOV       T,AL                  ; [CPU_FPU] |502| 
        BANZ      ||$C$L220||,AR6--     ; [CPU_ALU] |502| 
        ; branchcc occurs ; [] |502| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 514,column 9,is_stmt,isa 0
        MOVL      XAR0,#42              ; [CPU_ALU] |514| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |514| 
        MOVB      XAR1,#10              ; [CPU_ALU] |514| 
        MOV       AL,*-SP[59]           ; [CPU_ALU] |514| 
        MOVB      AH,#0                 ; [CPU_ALU] |514| 
        OR        AL,*+XAR4[AR1]        ; [CPU_ALU] |514| 
        MOVB      XAR1,#10              ; [CPU_ALU] |514| 
        CMPB      AL,#0                 ; [CPU_ALU] |514| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |514| 
        MOV       AL,*-SP[57]           ; [CPU_ALU] |514| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 515,column 9,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |515| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 514,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR1],AH        ; [CPU_FPU] |514| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 515,column 9,is_stmt,isa 0
        B         ||$C$L225||,EQ        ; [CPU_ALU] |515| 
        ; branchcc occurs ; [] |515| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        MOVL      XAR0,#52              ; [CPU_ALU] |161| 
        MOV32     R0H,*-SP[34]          ; [CPU_FPU] |161| 
        MOV32     R1H,*-SP[34]          ; [CPU_FPU] |161| 
        MOV32     R6H,*-SP[32]          ; [CPU_FPU] |161| 
        MOVIZ     R2H,#16147            ; [CPU_FPU] |161| 
        MOVL      XAR6,*+FP[AR0]        ; [CPU_ALU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 517,column 53,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_ALU] |517| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0

        ADDF32    R3H,R1H,R0H           ; [CPU_FPU] |161| 
||      MOV32     R5H,*-SP[30]          ; [CPU_FPU] |161| 

        SUBF32    R5H,R6H,R5H           ; [CPU_FPU] |161| 
||      MOV32     R7H,*-SP[32]          ; [CPU_FPU] |161| 

        MOVXI     R2H,#52538            ; [CPU_FPU] |161| 

        SUBF32    R4H,R3H,R7H           ; [CPU_FPU] |161| 
||      MOV32     R6H,*-SP[30]          ; [CPU_FPU] |161| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 517,column 53,is_stmt,isa 0
        MOVL      XAR0,#34              ; [CPU_ALU] |517| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        MOVIZ     R7H,#16042            ; [CPU_FPU] |161| 
        MOVXI     R7H,#43691            ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 517,column 53,is_stmt,isa 0
        ADDB      XAR5,#8               ; [CPU_ALU] |517| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        SUBF32    R4H,R4H,R6H           ; [CPU_FPU] |161| 

        MOV32     R2H,*+XAR6[4]         ; [CPU_FPU] |161| 
||      MPYF32    R1H,R2H,R5H           ; [CPU_FPU] |161| 

        MPYF32    R0H,R7H,R4H           ; [CPU_FPU] |161| 
||      MOV32     R5H,*+XAR6[2]         ; [CPU_FPU] |161| 

        MOV32     R3H,R2H               ; [CPU_FPU] |161| 
        NEGF32    R3H,R3H               ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 517,column 13,is_stmt,isa 0
        MPYF32    R4H,R0H,R5H           ; [CPU_FPU] |517| 
        MPYF32    R2H,R1H,R2H           ; [CPU_FPU] |517| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        MPYF32    R0H,R0H,R3H           ; [CPU_FPU] |161| 
        MPYF32    R1H,R1H,R5H           ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 517,column 13,is_stmt,isa 0
        ADDF32    R3H,R2H,R4H           ; [CPU_FPU] |517| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0

        ADDF32    R4H,R1H,R0H           ; [CPU_FPU] |161| 
||      MOV32     R7H,*+FP[AR0]         ; [CPU_FPU] |517| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 517,column 13,is_stmt,isa 0
        MPYF32    R3H,R7H,R3H           ; [CPU_FPU] |517| 

        MPYF32    R0H,R7H,R4H           ; [CPU_FPU] |517| 
||      MOV32     R6H,*+XAR4[6]         ; [CPU_FPU] |517| 

        ADDF32    R2H,R3H,R6H           ; [CPU_FPU] |517| 
||      MOV32     R1H,*+XAR5[0]         ; [CPU_FPU] |517| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 517,column 53,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |517| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 517,column 13,is_stmt,isa 0
        MOV32     *+XAR4[6],R2H         ; [CPU_FPU] |517| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 517,column 53,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |517| 
||$C$L225||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        MOVL      XAR0,#52              ; [CPU_ALU] |161| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |161| 
        MOV32     R0H,*-SP[28]          ; [CPU_FPU] |161| 
        MOV32     R1H,*-SP[28]          ; [CPU_FPU] |161| 
        MOVL      XAR0,#48              ; [CPU_ALU] |161| 
        MOV32     R3H,*-SP[24]          ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 520,column 9,is_stmt,isa 0
        MOVB      XAR1,#8               ; [CPU_ALU] |520| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |161| 

        ADDF32    R5H,R1H,R0H           ; [CPU_FPU] |161| 
||      MOV32     R7H,*-SP[26]          ; [CPU_FPU] |161| 

        MOVL      XAR0,#34              ; [CPU_ALU] |161| 
        MOVIZ     R1H,#16147            ; [CPU_FPU] |161| 
        MOV32     R0H,*-SP[26]          ; [CPU_FPU] |161| 

        MOV32     R3H,*+FP[AR0]         ; [CPU_FPU] |161| 
||      SUBF32    R7H,R7H,R3H           ; [CPU_FPU] |161| 

        MOV32     R2H,*+XAR4[4]         ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 521,column 9,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |521| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        MOVXI     R1H,#52538            ; [CPU_FPU] |161| 

        SUBF32    R6H,R5H,R0H           ; [CPU_FPU] |161| 
||      MOV32     R4H,*+XAR5[AR1]       ; [CPU_FPU] |520| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        MOVL      XAR0,#30              ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16042            ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 520,column 9,is_stmt,isa 0
        DIVF32    R3H,R3H,R4H           ; [CPU_FPU] |520| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0

        MPYF32    R1H,R1H,R7H           ; [CPU_FPU] |161| 
||      MOV32     R5H,*-SP[24]          ; [CPU_FPU] |161| 

        MOVXI     R0H,#43691            ; [CPU_FPU] |161| 

        SUBF32    R5H,R6H,R5H           ; [CPU_FPU] |161| 
||      MOV32     R4H,*+FP[AR0]         ; [CPU_FPU] |161| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        MOV32     R7H,R2H               ; [CPU_FPU] |161| 
        MOVL      XAR0,#38              ; [CPU_FPU] |161| 
        NEGF32    R7H,R7H               ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,R5H           ; [CPU_FPU] |161| 
        MPYF32    R2H,R1H,R2H           ; [CPU_FPU] |161| 

        MPYF32    R3H,R4H,R3H           ; [CPU_FPU] |520| 
||      MOV32     R6H,*+XAR4[2]         ; [CPU_FPU] |161| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        MPYF32    R1H,R1H,R6H           ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0
        MPYF32    R5H,R0H,R6H           ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0
        MPYF32    R6H,R0H,R7H           ; [CPU_FPU] |161| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 5,is_stmt,isa 0

        ADDF32    R5H,R5H,R2H           ; [CPU_FPU] |161| 
||      MOV32     R7H,*+FP[AR0]         ; [CPU_FPU] |161| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 520,column 9,is_stmt,isa 0
        ADDF32    R3H,R3H,R7H           ; [CPU_FPU] |520| 
        MOVL      XAR0,#38              ; [CPU_FPU] |520| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 161,column 27,is_stmt,isa 0

        MOV32     *+FP[AR0],R3H         ; [CPU_FPU] |520| 
||      ADDF32    R4H,R1H,R6H           ; [CPU_FPU] |161| 

	.dwpsn	file "../vienna_pcmfpc_fast.c",line 521,column 9,is_stmt,isa 0
        B         ||$C$L228||,NEQ       ; [CPU_ALU] |521| 
        ; branchcc occurs ; [] |521| 
        MOVL      XAR0,#50              ; [CPU_ALU] 
        MOVL      *+FP[AR0],XAR3        ; [CPU_ALU] 
        MOVZ      AR4,SP                ; [CPU_ALU] 
        MOVZ      AR1,SP                ; [CPU_ALU] 
        MOVL      XAR0,#24              ; [CPU_ALU] 
        MOVB      XAR6,#2               ; [CPU_ALU] 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] 
        SUBB      XAR4,#34              ; [CPU_ARAU] 
        SUBB      XAR1,#28              ; [CPU_ARAU] 
        MOVL      XAR0,#28              ; [CPU_ALU] 
        MOVZ      AR7,AR4               ; [CPU_ALU] 
        MOVZ      AR3,AR1               ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 522,column 22,is_stmt,isa 0
        RPTB      ||$C$L227||,AR6       ; [CPU_ALU] |522| 
        ; repeat block starts ; [] 
||$C$L226||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 523,column 17,is_stmt,isa 0
        MOVL      XAR0,*XAR5++          ; [CPU_ALU] |523| 
        MOVL      *+XAR4[0],XAR0        ; [CPU_ALU] |523| 
        MOVL      XAR0,#50              ; [CPU_ALU] |523| 
        MOVL      XAR1,*+FP[AR0]        ; [CPU_ALU] |523| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 523,column 40,is_stmt,isa 0
        MOVL      XAR0,#24              ; [CPU_ALU] |523| 
        MOVL      ACC,*XAR1++           ; [CPU_ALU] |523| 
        MOVL      *+FP[AR0],ACC         ; [CPU_ALU] |523| 
        MOVL      XAR0,#50              ; [CPU_ALU] |523| 
        MOVL      *+FP[AR0],XAR1        ; [CPU_ALU] |523| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 524,column 42,is_stmt,isa 0
        MOVL      ACC,*XAR7++           ; [CPU_ALU] |524| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 522,column 22,is_stmt,isa 0
        MOVL      XAR0,#24              ; [CPU_ALU] |522| 
        MOVL      XAR0,*+FP[AR0]        ; [CPU_ALU] |522| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 524,column 42,is_stmt,isa 0
        MOVB      XAR1,#18              ; [CPU_ALU] |524| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 524,column 17,is_stmt,isa 0
        MOVL      P,*XAR3++             ; [CPU_ALU] |524| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 524,column 42,is_stmt,isa 0
        MOVL      *+XAR4[AR1],ACC       ; [CPU_ALU] |524| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 523,column 40,is_stmt,isa 0
        MOVL      *+XAR4[6],XAR0        ; [CPU_ALU] |523| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 524,column 17,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |524| 
        MOVL      *+XAR4[AR0],P         ; [CPU_ALU] |524| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 522,column 22,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |522| 
        ; repeat block ends ; [] 
||$C$L227||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 526,column 13,is_stmt,isa 0
        MOVL      XAR0,#28              ; [CPU_ALU] |526| 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] |526| 
        MOVB      XAR1,#24              ; [CPU_ALU] |526| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 526,column 60,is_stmt,isa 0
        MOVL      XAR6,*-SP[36]         ; [CPU_ALU] |526| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 526,column 31,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_ALU] |526| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 526,column 13,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R5H       ; [CPU_FPU] |526| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 526,column 60,is_stmt,isa 0
        MOVB      XAR1,#30              ; [CPU_ALU] |526| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 529,column 13,is_stmt,isa 0
        MOVL      XAR7,XAR4             ; [CPU_ALU] |529| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 526,column 31,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R4H       ; [CPU_FPU] |526| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 526,column 60,is_stmt,isa 0
        MOVL      XAR0,#38              ; [CPU_ALU] |526| 
        MOV32     R0H,*+FP[AR0]         ; [CPU_FPU] |526| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 526,column 49,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |526| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 526,column 60,is_stmt,isa 0
        MOVL      *+XAR4[AR1],XAR6      ; [CPU_ALU] |526| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 526,column 49,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |526| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 527,column 13,is_stmt,isa 0
        MOVL      XAR0,#52              ; [CPU_ALU] |527| 
        MOVB      XAR1,#32              ; [CPU_ALU] |527| 
        MOVL      XAR5,*+FP[AR0]        ; [CPU_ALU] |527| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 529,column 13,is_stmt,isa 0
        ADDB      XAR7,#39              ; [CPU_ALU] |529| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 528,column 13,is_stmt,isa 0
        MOVL      XAR6,*-SP[40]         ; [CPU_FPU] |528| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 529,column 43,is_stmt,isa 0
        MOVB      XAR0,#38              ; [CPU_FPU] |529| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 527,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR5[0]         ; [CPU_FPU] |527| 
        MOVL      *+XAR4[AR1],ACC       ; [CPU_FPU] |527| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 529,column 43,is_stmt,isa 0
        MOV       AL,*-SP[59]           ; [CPU_FPU] |529| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 528,column 13,is_stmt,isa 0
        MOVB      XAR1,#34              ; [CPU_FPU] |528| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 529,column 43,is_stmt,isa 0
        MOV       *+XAR4[AR0],AL        ; [CPU_FPU] |529| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 529,column 13,is_stmt,isa 0
        MOV       AL,*-SP[55]           ; [CPU_FPU] |529| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 528,column 41,is_stmt,isa 0
        MOVB      XAR0,#36              ; [CPU_FPU] |528| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 528,column 13,is_stmt,isa 0
        MOVL      *+XAR4[AR1],XAR6      ; [CPU_FPU] |528| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 529,column 13,is_stmt,isa 0
        MOV       *+XAR7[0],AL          ; [CPU_ALU] |529| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 528,column 41,is_stmt,isa 0
        MOVL      ACC,*-SP[38]          ; [CPU_ALU] |528| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |528| 
||$C$L228||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 531,column 9,is_stmt,isa 0
        MOVL      XAR0,#38              ; [CPU_ALU] |531| 
        MOV32     R0H,*+FP[AR0]         ; [CPU_FPU] |531| 
        MOV       PL,#0                 ; [CPU_ALU] |531| 
        MOV       PH,#32640             ; [CPU_ALU] |531| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[50],R0H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 531,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[50]          ; [CPU_ALU] |531| 
        ANDB      AL,#0                 ; [CPU_ALU] |531| 
        AND       AH,#32640             ; [CPU_ALU] |531| 
        CMPL      ACC,P                 ; [CPU_ALU] |531| 
        B         ||$C$L229||,EQ        ; [CPU_ALU] |531| 
        ; branchcc occurs ; [] |531| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[52],R5H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 531,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[52]          ; [CPU_ALU] |531| 
        ANDB      AL,#0                 ; [CPU_ALU] |531| 
        AND       AH,#32640             ; [CPU_ALU] |531| 
        CMPL      ACC,P                 ; [CPU_ALU] |531| 
        B         ||$C$L229||,EQ        ; [CPU_ALU] |531| 
        ; branchcc occurs ; [] |531| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[54],R4H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 531,column 9,is_stmt,isa 0
        MOVL      ACC,*-SP[54]          ; [CPU_ALU] |531| 
        ANDB      AL,#0                 ; [CPU_ALU] |531| 
        AND       AH,#32640             ; [CPU_ALU] |531| 
        CMPL      ACC,P                 ; [CPU_ALU] |531| 
        B         ||$C$L230||,NEQ       ; [CPU_ALU] |531| 
        ; branchcc occurs ; [] |531| 
||$C$L229||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 531,column 69,is_stmt,isa 0
        MOVB      AL,#6                 ; [CPU_ALU] |531| 
        B         ||$C$L233||,UNC       ; [CPU_ALU] |531| 
        ; branch occurs ; [] |531| 
||$C$L230||:    
        MOVL      XAR0,#54              ; [CPU_ALU] 
        MOVL      ACC,*+FP[AR0]         ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 483,column 17,is_stmt,isa 0
        INC       *-SP[58]              ; [CPU_ALU] |483| 
        MOVL      XAR0,#54              ; [CPU_ALU] |483| 
        ADDB      ACC,#40               ; [CPU_ALU] |483| 
        MOVL      *+FP[AR0],ACC         ; [CPU_ALU] |483| 
        MOV       AL,*-SP[58]           ; [CPU_ALU] |483| 
        CMPB      AL,#2                 ; [CPU_ALU] |483| 
        B         ||$C$L215||,LO        ; [CPU_ALU] |483| 
        ; branchcc occurs ; [] |483| 
        MOVL      XAR0,#42              ; [CPU_ALU] 
        MOVL      XAR4,*+FP[AR0]        ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 534,column 5,is_stmt,isa 0
        CMPF32    R0H,#0                ; [CPU_FPU] |534| 
        MOVL      XAR0,#36              ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 533,column 45,is_stmt,isa 0
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |533| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 534,column 5,is_stmt,isa 0
        NEGF32    R0H,R0H,LT            ; [CPU_FPU] |534| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 533,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R5H         ; [CPU_FPU] |533| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 533,column 25,is_stmt,isa 0
        MOV32     *+XAR4[2],R4H         ; [CPU_FPU] |533| 
        MOV32     R1H,*+FP[AR0]         ; [CPU_FPU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 534,column 5,is_stmt,isa 0
        CMPF32    R0H,R1H               ; [CPU_FPU] |534| 
        MOVST0    ZF, NF                ; [CPU_FPU] |534| 
        B         ||$C$L232||,LT        ; [CPU_ALU] |534| 
        ; branchcc occurs ; [] |534| 
||$C$L231||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 534,column 23,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_ALU] |534| 
        B         ||$C$L233||,UNC       ; [CPU_ALU] |534| 
        ; branch occurs ; [] |534| 
||$C$L232||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 535,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |535| 
||$C$L233||:    
        SUBB      SP,#98                ; [CPU_ARAU] 
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
$C$DW$555	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$555, DW_AT_low_pc(0x00)
	.dwattr $C$DW$555, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$504, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$504, DW_AT_TI_end_line(0x218)
	.dwattr $C$DW$504, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$504

	.sect	"pcmfpc_code"
	.clink
	.global	||PC_fast_predict_interval||

$C$DW$556	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$556, DW_AT_name("PC_fast_predict_interval")
	.dwattr $C$DW$556, DW_AT_low_pc(||PC_fast_predict_interval||)
	.dwattr $C$DW$556, DW_AT_high_pc(0x00)
	.dwattr $C$DW$556, DW_AT_linkage_name("PC_fast_predict_interval")
	.dwattr $C$DW$556, DW_AT_external
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$556, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$556, DW_AT_decl_line(0x21a)
	.dwattr $C$DW$556, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$556, DW_AT_TI_max_frame_size(-42)
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 541,column 1,is_stmt,address ||PC_fast_predict_interval||,isa 0

	.dwfde $C$DW$CIE, ||PC_fast_predict_interval||
$C$DW$557	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$557, DW_AT_name("cfg")
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$557, DW_AT_location[DW_OP_reg12]

$C$DW$558	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$558, DW_AT_name("dq0")
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$558, DW_AT_location[DW_OP_reg14]

$C$DW$559	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$559, DW_AT_name("up")
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$559, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$560	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$560, DW_AT_name("low")
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$560, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$561	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$561, DW_AT_name("hw")
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$561, DW_AT_location[DW_OP_reg0]

$C$DW$562	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$562, DW_AT_name("theta")
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$562, DW_AT_location[DW_OP_regx 0x33]

$C$DW$563	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$563, DW_AT_name("omega")
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_location[DW_OP_regx 0x37]

$C$DW$564	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$564, DW_AT_name("f")
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$564, DW_AT_location[DW_OP_breg20 -44]

$C$DW$565	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$565, DW_AT_name("duration")
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$565, DW_AT_location[DW_OP_breg20 -46]

$C$DW$566	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$566, DW_AT_name("out")
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$566, DW_AT_location[DW_OP_breg20 -48]

$C$DW$567	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$567, DW_AT_name("detail")
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$567, DW_AT_location[DW_OP_reg1]


;***************************************************************
;* FNAME: PC_fast_predict_interval      FR SIZE:  40           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter, 22 Auto, 10 SOE     *
;***************************************************************

||PC_fast_predict_interval||:
$C$DW$568	.dwtag  DW_TAG_variable
	.dwattr $C$DW$568, DW_AT_name("v")
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$568, DW_AT_location[DW_OP_breg20 -10]

$C$DW$569	.dwtag  DW_TAG_variable
	.dwattr $C$DW$569, DW_AT_name("v")
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$569, DW_AT_location[DW_OP_breg20 -12]

$C$DW$570	.dwtag  DW_TAG_variable
	.dwattr $C$DW$570, DW_AT_name("v")
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$570, DW_AT_location[DW_OP_breg20 -14]

$C$DW$571	.dwtag  DW_TAG_variable
	.dwattr $C$DW$571, DW_AT_name("v")
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$571, DW_AT_location[DW_OP_breg20 -16]

$C$DW$572	.dwtag  DW_TAG_variable
	.dwattr $C$DW$572, DW_AT_name("v")
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$572, DW_AT_location[DW_OP_breg20 -18]

$C$DW$573	.dwtag  DW_TAG_variable
	.dwattr $C$DW$573, DW_AT_name("v")
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$573, DW_AT_location[DW_OP_breg20 -20]

$C$DW$574	.dwtag  DW_TAG_variable
	.dwattr $C$DW$574, DW_AT_name("v")
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$574, DW_AT_location[DW_OP_breg20 -22]

$C$DW$575	.dwtag  DW_TAG_variable
	.dwattr $C$DW$575, DW_AT_name("v")
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$575, DW_AT_location[DW_OP_breg20 -24]

$C$DW$576	.dwtag  DW_TAG_variable
	.dwattr $C$DW$576, DW_AT_name("v")
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$576, DW_AT_location[DW_OP_breg20 -26]

;* AR6   assigned to $O$K96
;* AR3   assigned to cfg
$C$DW$577	.dwtag  DW_TAG_variable
	.dwattr $C$DW$577, DW_AT_name("cfg")
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$577, DW_AT_location[DW_OP_reg10]

;* XT    assigned to dq0
$C$DW$578	.dwtag  DW_TAG_variable
	.dwattr $C$DW$578, DW_AT_name("dq0")
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$578, DW_AT_location[DW_OP_reg21]

;* R5    assigned to up
$C$DW$579	.dwtag  DW_TAG_variable
	.dwattr $C$DW$579, DW_AT_name("up")
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$579, DW_AT_location[DW_OP_regx 0x3f]

;* R4    assigned to low
$C$DW$580	.dwtag  DW_TAG_variable
	.dwattr $C$DW$580, DW_AT_name("low")
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$580, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$581	.dwtag  DW_TAG_variable
	.dwattr $C$DW$581, DW_AT_name("hw")
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$581, DW_AT_location[DW_OP_breg20 -27]

;* R6    assigned to theta
$C$DW$582	.dwtag  DW_TAG_variable
	.dwattr $C$DW$582, DW_AT_name("theta")
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$582, DW_AT_location[DW_OP_regx 0x43]

;* R3    assigned to omega
$C$DW$583	.dwtag  DW_TAG_variable
	.dwattr $C$DW$583, DW_AT_name("omega")
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$583, DW_AT_location[DW_OP_regx 0x37]

;* AR7   assigned to f
$C$DW$584	.dwtag  DW_TAG_variable
	.dwattr $C$DW$584, DW_AT_name("f")
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$584, DW_AT_location[DW_OP_reg18]

;* R2    assigned to duration
$C$DW$585	.dwtag  DW_TAG_variable
	.dwattr $C$DW$585, DW_AT_name("duration")
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$585, DW_AT_location[DW_OP_regx 0x33]

$C$DW$586	.dwtag  DW_TAG_variable
	.dwattr $C$DW$586, DW_AT_name("out")
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$586, DW_AT_location[DW_OP_breg20 -30]

$C$DW$587	.dwtag  DW_TAG_variable
	.dwattr $C$DW$587, DW_AT_name("detail")
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$587, DW_AT_location[DW_OP_breg20 -28]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 8
	.dwcfi	cfa_offset, -10
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 10
	.dwcfi	cfa_offset, -12
        ADDB      SP,#30                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -42
        MOV32     R6H,R2H               ; [CPU_FPU] |541| 
        MOVL      XT,XAR5               ; [CPU_ALU] |541| 
        MOV32     R4H,R1H               ; [CPU_FPU] |541| 
        MOV32     R5H,R0H               ; [CPU_FPU] |541| 
        MOVL      XAR3,XAR4             ; [CPU_ALU] |541| 
        MOVL      XAR6,*-SP[48]         ; [CPU_ALU] |541| 
        MOV       *-SP[28],AH           ; [CPU_ALU] |541| 
        MOV       *-SP[27],AL           ; [CPU_ALU] |541| 
        MOVL      XAR7,*-SP[44]         ; [CPU_ALU] |541| 
        MOV32     R2H,*-SP[46]          ; [CPU_FPU] |541| 
        MOVL      *-SP[30],XAR6         ; [CPU_ALU] |541| 
        MOVL      ACC,*-SP[30]          ; [CPU_ALU] |541| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 542,column 5,is_stmt,isa 0
        B         ||$C$L237||,EQ        ; [CPU_ALU] |542| 
        ; branchcc occurs ; [] |542| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 543,column 5,is_stmt,isa 0
$C$DW$588	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$588, DW_AT_low_pc(0x00)
	.dwattr $C$DW$588, DW_AT_name("pf_config_valid")
	.dwattr $C$DW$588, DW_AT_TI_call

        LCR       #||pf_config_valid||  ; [CPU_ALU] |543| 
        ; call occurs [#||pf_config_valid||] ; [] |543| 
        CMPB      AL,#0                 ; [CPU_ALU] |543| 
        B         ||$C$L234||,EQ        ; [CPU_ALU] |543| 
        ; branchcc occurs ; [] |543| 
        MOV       AL,*-SP[28]           ; [CPU_ALU] 
        CMPB      AL,#2                 ; [CPU_ALU] |543| 
        B         ||$C$L235||,LOS       ; [CPU_ALU] |543| 
        ; branchcc occurs ; [] |543| 
||$C$L234||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 543,column 61,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |543| 
        B         ||$C$L238||,UNC       ; [CPU_ALU] |543| 
        ; branch occurs ; [] |543| 
||$C$L235||:    
        MOVL      ACC,XT                ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 544,column 5,is_stmt,isa 0
        B         ||$C$L237||,EQ        ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
        MOVL      ACC,XAR7              ; [CPU_ALU] 
        B         ||$C$L237||,EQ        ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
        MOV       AL,*-SP[27]           ; [CPU_ALU] 
        CMPB      AL,#7                 ; [CPU_ALU] |544| 
        B         ||$C$L237||,HI        ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[10],R2H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 544,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |544| 
        MOV       PH,#32640             ; [CPU_ALU] |544| 
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |544| 
        ANDB      AL,#0                 ; [CPU_ALU] |544| 
        AND       AH,#32640             ; [CPU_ALU] |544| 
        CMPL      ACC,P                 ; [CPU_ALU] |544| 
        B         ||$C$L237||,EQ        ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
        CMPF32    R2H,#0                ; [CPU_FPU] |544| 
        MOVST0    ZF, NF                ; [CPU_FPU] |544| 
        B         ||$C$L237||,LEQ       ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[12],R5H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 544,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |544| 
        ANDB      AL,#0                 ; [CPU_ALU] |544| 
        AND       AH,#32640             ; [CPU_ALU] |544| 
        CMPL      ACC,P                 ; [CPU_ALU] |544| 
        B         ||$C$L237||,EQ        ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[14],R4H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 544,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[14]          ; [CPU_ALU] |544| 
        ANDB      AL,#0                 ; [CPU_ALU] |544| 
        AND       AH,#32640             ; [CPU_ALU] |544| 
        CMPL      ACC,P                 ; [CPU_ALU] |544| 
        B         ||$C$L237||,EQ        ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
        CMPF32    R5H,#0                ; [CPU_FPU] |544| 
        MOVST0    ZF, NF                ; [CPU_FPU] |544| 
        B         ||$C$L237||,LEQ       ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
        CMPF32    R4H,#0                ; [CPU_FPU] |544| 
        MOVST0    ZF, NF                ; [CPU_FPU] |544| 
        B         ||$C$L237||,LEQ       ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
        MOVL      XAR4,XT               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |68| 
        MOVL      *-SP[16],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 544,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |544| 
        AND       AH,#32640             ; [CPU_ALU] |544| 
        CMPL      ACC,P                 ; [CPU_ALU] |544| 
        B         ||$C$L237||,EQ        ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |68| 
        MOVL      *-SP[18],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 544,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |544| 
        AND       AH,#32640             ; [CPU_ALU] |544| 
        CMPL      ACC,P                 ; [CPU_ALU] |544| 
        B         ||$C$L237||,EQ        ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
        MOVL      XAR4,XAR7             ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |68| 
        MOVL      *-SP[20],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 544,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |544| 
        AND       AH,#32640             ; [CPU_ALU] |544| 
        CMPL      ACC,P                 ; [CPU_ALU] |544| 
        B         ||$C$L237||,EQ        ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[2]         ; [CPU_ALU] |68| 
        MOVL      *-SP[22],ACC          ; [CPU_ALU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 544,column 5,is_stmt,isa 0
        ANDB      AL,#0                 ; [CPU_ALU] |544| 
        AND       AH,#32640             ; [CPU_ALU] |544| 
        CMPL      ACC,P                 ; [CPU_ALU] |544| 
        B         ||$C$L237||,EQ        ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[24],R6H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 544,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[24]          ; [CPU_ALU] |544| 
        ANDB      AL,#0                 ; [CPU_ALU] |544| 
        AND       AH,#32640             ; [CPU_ALU] |544| 
        CMPL      ACC,P                 ; [CPU_ALU] |544| 
        B         ||$C$L237||,EQ        ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 68,column 5,is_stmt,isa 0
        MOV32     *-SP[26],R3H          ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 544,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[26]          ; [CPU_ALU] |544| 
        ANDB      AL,#0                 ; [CPU_ALU] |544| 
        AND       AH,#32640             ; [CPU_ALU] |544| 
        CMPL      ACC,P                 ; [CPU_ALU] |544| 
        B         ||$C$L237||,EQ        ; [CPU_ALU] |544| 
        ; branchcc occurs ; [] |544| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 548,column 5,is_stmt,isa 0
        MOVL      XAR6,#||pf_standalone_plan|| ; [CPU_ARAU] |548| 
        MOVL      XAR4,XAR3             ; [CPU_ALU] |548| 
        MOV32     R0H,R6H               ; [CPU_FPU] |548| 
        MOV32     R1H,R3H               ; [CPU_FPU] |548| 
        MOVL      XAR5,XAR6             ; [CPU_ALU] |548| 
$C$DW$589	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$589, DW_AT_low_pc(0x00)
	.dwattr $C$DW$589, DW_AT_name("pf_plan")
	.dwattr $C$DW$589, DW_AT_TI_call

        LCR       #||pf_plan||          ; [CPU_ALU] |548| 
        ; call occurs [#||pf_plan||] ; [] |548| 
        MOV       AL,*-SP[28]           ; [CPU_ALU] |548| 
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 550,column 9,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |550| 
        B         ||$C$L236||,NEQ       ; [CPU_ALU] |550| 
        ; branchcc occurs ; [] |550| 
        MOVL      *-SP[2],XAR7          ; [CPU_ALU] |550| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |550| 
        MOV       P,#0                  ; [CPU_ALU] |550| 
        MOVL      ACC,*-SP[30]          ; [CPU_ALU] |550| 
        MOVL      XAR5,XT               ; [CPU_ALU] |550| 
        MOV32     R0H,R5H               ; [CPU_FPU] |550| 
        MOV32     R1H,R4H               ; [CPU_FPU] |550| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |550| 
        MOV       AL,*-SP[27]           ; [CPU_ALU] |550| 
        MOVL      *-SP[8],P             ; [CPU_ALU] |550| 
$C$DW$590	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$590, DW_AT_low_pc(0x00)
	.dwattr $C$DW$590, DW_AT_name("pf_control_interval")
	.dwattr $C$DW$590, DW_AT_TI_call

        LCR       #||pf_control_interval|| ; [CPU_ALU] |550| 
        ; call occurs [#||pf_control_interval||] ; [] |550| 
        B         ||$C$L238||,UNC       ; [CPU_ALU] |550| 
        ; branch occurs ; [] |550| 
||$C$L236||:    
        MOVL      *-SP[2],XAR7          ; [CPU_ALU] |550| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |550| 
        MOV       P,#0                  ; [CPU_ALU] |550| 
        MOVL      ACC,*-SP[30]          ; [CPU_ALU] |550| 
        MOVL      XAR4,XAR3             ; [CPU_ALU] |550| 
        MOVL      XAR5,XT               ; [CPU_ALU] |550| 
        MOV32     R0H,R5H               ; [CPU_FPU] |550| 
        MOV32     R1H,R4H               ; [CPU_FPU] |550| 
        MOVL      *-SP[6],ACC           ; [CPU_ALU] |550| 
        MOV       AL,*-SP[27]           ; [CPU_ALU] |550| 
        MOV       AH,*-SP[28]           ; [CPU_ALU] |550| 
        MOVL      *-SP[8],P             ; [CPU_ALU] |550| 
$C$DW$591	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$591, DW_AT_low_pc(0x00)
	.dwattr $C$DW$591, DW_AT_name("pf_interval")
	.dwattr $C$DW$591, DW_AT_TI_call

        LCR       #||pf_interval||      ; [CPU_ALU] |550| 
        ; call occurs [#||pf_interval||] ; [] |550| 
        B         ||$C$L238||,UNC       ; [CPU_ALU] |550| 
        ; branch occurs ; [] |550| 
||$C$L237||:    
	.dwpsn	file "../vienna_pcmfpc_fast.c",line 547,column 67,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |547| 
||$C$L238||:    
        SUBB      SP,#30                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 59
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 11
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$592	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$592, DW_AT_low_pc(0x00)
	.dwattr $C$DW$592, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$556, DW_AT_TI_end_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$556, DW_AT_TI_end_line(0x228)
	.dwattr $C$DW$556, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$556

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
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
$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$593, DW_AT_name("first_duration_s")
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$593, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0x19)
	.dwattr $C$DW$593, DW_AT_decl_column(0x0d)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$594, DW_AT_name("candidate_duration_s")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$594, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0x19)
	.dwattr $C$DW$594, DW_AT_decl_column(0x1f)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$595, DW_AT_name("L_H")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$595, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$595, DW_AT_decl_column(0x0d)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$596, DW_AT_name("R_ohm")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$596, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$596, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$596, DW_AT_decl_column(0x12)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$597, DW_AT_name("C_half_F")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$597, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$597, DW_AT_decl_column(0x19)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$598, DW_AT_name("delta_i_A")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$598, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$598, DW_AT_decl_column(0x0d)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$599, DW_AT_name("zero_window_rad")
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$599, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$599, DW_AT_decl_column(0x18)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$600, DW_AT_name("root_method")
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$600, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$600, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$600, DW_AT_decl_column(0x0e)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$601, DW_AT_name("diagnostic_all_angles")
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$601, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$601, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$22, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x18)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60
$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("PC_Config")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$60, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x20)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61
$C$DW$602	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$60)

$C$DW$T$61	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$602)

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62
$C$DW$T$62	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63
$C$DW$603	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$62)

$C$DW$T$63	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$603)

	.dwendtag $C$DW$TU$63


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x06)
$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$604, DW_AT_name("theta")
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$604, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$604, DW_AT_decl_line(0x54)
	.dwattr $C$DW$604, DW_AT_decl_column(0x1a)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$605, DW_AT_name("ct")
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$605, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$605, DW_AT_decl_line(0x54)
	.dwattr $C$DW$605, DW_AT_decl_column(0x21)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$606, DW_AT_name("st")
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$606, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$606, DW_AT_decl_line(0x54)
	.dwattr $C$DW$606, DW_AT_decl_column(0x25)

	.dwattr $C$DW$T$23, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("PF_Rotation")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x2b)

	.dwendtag $C$DW$TU$24


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68
$C$DW$607	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$24)

$C$DW$T$68	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$607)

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69
$C$DW$T$69	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70
$C$DW$608	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$69)

$C$DW$T$70	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$608)

	.dwendtag $C$DW$TU$70


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x12)
$C$DW$609	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$609, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71
$C$DW$T$71	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$71, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$71


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72
$C$DW$610	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$71)

$C$DW$T$72	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$610)

	.dwendtag $C$DW$TU$72


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x18)
$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$611, DW_AT_name("h")
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$611, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$611, DW_AT_decl_line(0x55)
	.dwattr $C$DW$611, DW_AT_decl_column(0x1a)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$612, DW_AT_name("c")
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$612, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$612, DW_AT_decl_line(0x55)
	.dwattr $C$DW$612, DW_AT_decl_column(0x1d)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$613, DW_AT_name("h_over_C")
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$613, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$613, DW_AT_decl_line(0x55)
	.dwattr $C$DW$613, DW_AT_decl_column(0x20)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$614, DW_AT_name("node")
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$614, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$614, DW_AT_decl_line(0x55)
	.dwattr $C$DW$614, DW_AT_decl_column(0x36)

	.dwattr $C$DW$T$26, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x55)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78
$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("PF_Plan")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$78, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x55)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x41)

	.dwendtag $C$DW$TU$78


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79
$C$DW$615	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$78)

$C$DW$T$79	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$615)

	.dwendtag $C$DW$TU$79


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80
$C$DW$T$80	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$80, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81
$C$DW$616	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$80)

$C$DW$T$81	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$616)

	.dwendtag $C$DW$TU$81


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82
$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$82


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83
$C$DW$617	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$82)

$C$DW$T$83	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$617)

	.dwendtag $C$DW$TU$83


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x18)
$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$618, DW_AT_name("cu")
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$618, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$618, DW_AT_decl_line(0x59)
	.dwattr $C$DW$618, DW_AT_decl_column(0x0d)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$619, DW_AT_name("cl")
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$619, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$619, DW_AT_decl_line(0x59)
	.dwattr $C$DW$619, DW_AT_decl_column(0x10)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$620, DW_AT_name("tolerance")
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$620, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$620, DW_AT_decl_line(0x59)
	.dwattr $C$DW$620, DW_AT_decl_column(0x13)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$621, DW_AT_name("base")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$621, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$621, DW_AT_decl_line(0x59)
	.dwattr $C$DW$621, DW_AT_decl_column(0x1d)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$622, DW_AT_name("point")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$622, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$622, DW_AT_decl_line(0x59)
	.dwattr $C$DW$622, DW_AT_decl_column(0x25)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$623, DW_AT_name("phase")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$623, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$623, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$623, DW_AT_decl_column(0x0e)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$624, DW_AT_name("off_active")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$624, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$624, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$624, DW_AT_decl_column(0x17)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$625, DW_AT_name("count")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$625, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$625, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$625, DW_AT_decl_column(0x22)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$626, DW_AT_name("status")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$626, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$626, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$626, DW_AT_decl_column(0x28)

	.dwattr $C$DW$T$29, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("PF_LambdaPlan")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$32, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$32


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$627	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$32)

$C$DW$T$46	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$627)

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47
$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$47


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89
$C$DW$628	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$47)

$C$DW$T$89	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$628)

	.dwendtag $C$DW$TU$89


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90
$C$DW$T$90	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$90, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$90


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91
$C$DW$629	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$90)

$C$DW$T$91	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$629)

	.dwendtag $C$DW$TU$91


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x58)
$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$630, DW_AT_name("old_abc")
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$630, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$630, DW_AT_decl_line(0x66)
	.dwattr $C$DW$630, DW_AT_decl_column(0x0d)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$631, DW_AT_name("free_abc")
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$631, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$631, DW_AT_decl_line(0x66)
	.dwattr $C$DW$631, DW_AT_decl_column(0x18)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$632, DW_AT_name("on_lo")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$632, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$632, DW_AT_decl_line(0x66)
	.dwattr $C$DW$632, DW_AT_decl_column(0x24)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$633, DW_AT_name("off_lo")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$633, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$633, DW_AT_decl_line(0x66)
	.dwattr $C$DW$633, DW_AT_decl_column(0x2d)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$634, DW_AT_name("on_hi")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$634, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$634, DW_AT_decl_line(0x66)
	.dwattr $C$DW$634, DW_AT_decl_column(0x37)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$635, DW_AT_name("off_hi")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$635, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$635, DW_AT_decl_line(0x66)
	.dwattr $C$DW$635, DW_AT_decl_column(0x40)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$636, DW_AT_name("points")
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$636, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$636, DW_AT_decl_line(0x67)
	.dwattr $C$DW$636, DW_AT_decl_column(0x0d)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$637, DW_AT_name("tolerance")
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$637, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$637, DW_AT_decl_line(0x67)
	.dwattr $C$DW$637, DW_AT_decl_column(0x17)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$638, DW_AT_name("phase")
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$638, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$638, DW_AT_decl_line(0x68)
	.dwattr $C$DW$638, DW_AT_decl_column(0x0e)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$639, DW_AT_name("count")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$639, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$639, DW_AT_decl_line(0x68)
	.dwattr $C$DW$639, DW_AT_decl_column(0x17)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$640, DW_AT_name("lambda")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$640, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$640, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$640, DW_AT_decl_column(0x13)

	.dwattr $C$DW$T$33, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x65)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97
$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("PF_Seed")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$97, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$97


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98
$C$DW$641	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$97)

$C$DW$T$98	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$641)

	.dwendtag $C$DW$TU$98


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99
$C$DW$T$99	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$99, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$99


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100
$C$DW$642	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$99)

$C$DW$T$100	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$642)

	.dwendtag $C$DW$TU$100


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101
$C$DW$T$101	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$101, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$101


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102
$C$DW$643	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$101)

$C$DW$T$102	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$643)

	.dwendtag $C$DW$TU$102


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x28)
$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$644, DW_AT_name("old_abc_A")
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$644, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$644, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$644, DW_AT_decl_column(0x0d)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$645, DW_AT_name("free_abc_A")
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$645, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$645, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$645, DW_AT_decl_column(0x1b)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$646, DW_AT_name("next_abc_A")
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$646, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$646, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$646, DW_AT_decl_column(0x2a)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$647, DW_AT_name("pole_abc_V")
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$647, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$647, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$647, DW_AT_decl_column(0x39)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$648, DW_AT_name("idq_A")
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$648, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$648, DW_AT_decl_column(0x0d)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$649, DW_AT_name("np_V")
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$649, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$649, DW_AT_decl_column(0x17)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$650, DW_AT_name("mu_V")
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$650, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$650, DW_AT_decl_column(0x1d)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$651, DW_AT_name("theta_end_rad")
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$651, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$651, DW_AT_decl_column(0x23)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$652, DW_AT_name("root_residual_A")
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$652, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$652, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$652, DW_AT_decl_column(0x0d)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$653, DW_AT_name("root_bracket_width_V")
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$653, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$653, DW_AT_decl_column(0x1e)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$654, DW_AT_name("blocked")
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$654, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$654, DW_AT_decl_column(0x0e)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$655, DW_AT_name("root_iterations")
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$655, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$655, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$655, DW_AT_decl_column(0x17)

	.dwattr $C$DW$T$35, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("PC_Substep")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x50)
$C$DW$656	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$656, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105
$C$DW$T$105	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$105, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$105


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x5c)
$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$657, DW_AT_name("idq_A")
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$657, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0x32)
	.dwattr $C$DW$657, DW_AT_decl_column(0x0d)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$658, DW_AT_name("np_V")
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$658, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$658, DW_AT_decl_line(0x32)
	.dwattr $C$DW$658, DW_AT_decl_column(0x17)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$659, DW_AT_name("u_integral_dq_V_s")
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$659, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0x32)
	.dwattr $C$DW$659, DW_AT_decl_column(0x1d)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$660, DW_AT_name("blocked")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$660, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0x33)
	.dwattr $C$DW$660, DW_AT_decl_column(0x0e)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$661, DW_AT_name("substep")
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$661, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0x34)
	.dwattr $C$DW$661, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$38, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("PC_Interval")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$41, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x2e0)
$C$DW$662	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$662, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107
$C$DW$T$107	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$107, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$107


$C$DW$TU$108	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$108
$C$DW$663	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$107)

$C$DW$T$108	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$663)

	.dwendtag $C$DW$TU$108


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x3e6)
$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$664, DW_AT_name("status")
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$664, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$664, DW_AT_decl_line(0x38)
	.dwattr $C$DW$664, DW_AT_decl_column(0x0e)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$665, DW_AT_name("selected_id")
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$665, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0x38)
	.dwattr $C$DW$665, DW_AT_decl_column(0x16)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$666, DW_AT_name("pc_off_id")
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$666, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0x38)
	.dwattr $C$DW$666, DW_AT_decl_column(0x23)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$667, DW_AT_name("hw_state")
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$667, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0x38)
	.dwattr $C$DW$667, DW_AT_decl_column(0x2e)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$668, DW_AT_name("valid")
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$668, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0x39)
	.dwattr $C$DW$668, DW_AT_decl_column(0x0e)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$669, DW_AT_name("requested")
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$669, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0x39)
	.dwattr $C$DW$669, DW_AT_decl_column(0x15)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$670, DW_AT_name("active")
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$670, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0x39)
	.dwattr $C$DW$670, DW_AT_decl_column(0x20)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$671, DW_AT_name("current_count")
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$671, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0x39)
	.dwattr $C$DW$671, DW_AT_decl_column(0x28)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$672, DW_AT_name("intersection_count")
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$672, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$672, DW_AT_decl_column(0x0e)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$673, DW_AT_name("midpoint_prefix")
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$673, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$673, DW_AT_decl_column(0x22)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$674, DW_AT_name("intersection_mask")
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$674, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$674, DW_AT_decl_column(0x33)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$675, DW_AT_name("order_i")
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$675, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$675, DW_AT_decl_column(0x0e)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$676, DW_AT_name("order_u")
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$676, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$676, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$676, DW_AT_decl_column(0x1a)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$677, DW_AT_name("current_mask")
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$677, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$677, DW_AT_decl_column(0x0e)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$678, DW_AT_name("switch_count")
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$678, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$678, DW_AT_decl_column(0x1c)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$679, DW_AT_name("blocked_candidate")
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$679, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$679, DW_AT_decl_column(0x2d)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$680, DW_AT_name("gi")
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$680, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$680, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$680, DW_AT_decl_column(0x0d)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$681, DW_AT_name("gu")
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$681, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$681, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$681, DW_AT_decl_column(0x14)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$682, DW_AT_name("gz")
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$682, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$682, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$682, DW_AT_decl_column(0x1b)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$683, DW_AT_name("idq2_A")
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$683, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$683, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$683, DW_AT_decl_column(0x22)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$684, DW_AT_name("np2_V")
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$684, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$684, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$684, DW_AT_decl_column(0x30)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$685, DW_AT_name("idq1_A")
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$685, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$685, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$685, DW_AT_decl_column(0x0d)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$686, DW_AT_name("np1_V")
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$686, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$686, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$686, DW_AT_decl_column(0x18)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$687, DW_AT_name("budget_limit_A")
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x92]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$687, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$687, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$687, DW_AT_decl_column(0x1f)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$688, DW_AT_name("voltage_margin_V")
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$688, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$688, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$688, DW_AT_decl_column(0x2f)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$689, DW_AT_name("zcdc_diag")
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$689, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$689, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$689, DW_AT_decl_column(0x0d)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$690, DW_AT_name("first_interval")
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0xaa]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$690, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$690, DW_AT_decl_line(0x40)
	.dwattr $C$DW$690, DW_AT_decl_column(0x11)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$691, DW_AT_name("candidate_interval")
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x106]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$691, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$691, DW_AT_decl_line(0x40)
	.dwattr $C$DW$691, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$43, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111
$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("PC_Output")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$111, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112
$C$DW$T$112	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$112, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$112


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113
$C$DW$692	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$112)

$C$DW$T$113	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$692)

	.dwendtag $C$DW$TU$113


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x20)
$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$693, DW_AT_name("iabc_A")
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$693, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$693, DW_AT_decl_line(0x23)
	.dwattr $C$DW$693, DW_AT_decl_column(0x0d)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$694, DW_AT_name("eabc_V")
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$694, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$694, DW_AT_decl_line(0x23)
	.dwattr $C$DW$694, DW_AT_decl_column(0x18)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$695, DW_AT_name("up_V")
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$695, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$695, DW_AT_decl_line(0x24)
	.dwattr $C$DW$695, DW_AT_decl_column(0x0d)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$696, DW_AT_name("low_V")
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$696, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$696, DW_AT_decl_line(0x24)
	.dwattr $C$DW$696, DW_AT_decl_column(0x13)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$697, DW_AT_name("id_ref_A")
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$697, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$697, DW_AT_decl_line(0x25)
	.dwattr $C$DW$697, DW_AT_decl_column(0x0d)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$698, DW_AT_name("iq_ref_A")
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$698, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$698, DW_AT_decl_line(0x25)
	.dwattr $C$DW$698, DW_AT_decl_column(0x17)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$699, DW_AT_name("theta_rad")
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$699, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$699, DW_AT_decl_line(0x26)
	.dwattr $C$DW$699, DW_AT_decl_column(0x0d)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$700, DW_AT_name("omega_rad_s")
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$700, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$700, DW_AT_decl_line(0x26)
	.dwattr $C$DW$700, DW_AT_decl_column(0x18)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$701, DW_AT_name("fhat_A_s")
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$701, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$701, DW_AT_decl_line(0x26)
	.dwattr $C$DW$701, DW_AT_decl_column(0x25)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$702, DW_AT_name("applied_hw_state")
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$702, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$702, DW_AT_decl_line(0x27)
	.dwattr $C$DW$702, DW_AT_decl_column(0x0e)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$703, DW_AT_name("zcdc_enable")
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$703, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$703, DW_AT_decl_line(0x27)
	.dwattr $C$DW$703, DW_AT_decl_column(0x20)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$704, DW_AT_name("terminal_enable")
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$704, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$704, DW_AT_decl_line(0x27)
	.dwattr $C$DW$704, DW_AT_decl_column(0x2d)

	.dwattr $C$DW$T$44, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x22)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$119	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$119
$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("PC_Input")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$119, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x28)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$119


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120
$C$DW$705	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$119)

$C$DW$T$120	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$705)

	.dwendtag $C$DW$TU$120


$C$DW$TU$121	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$121
$C$DW$T$121	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$121, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$121


$C$DW$TU$122	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$122
$C$DW$706	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$121)

$C$DW$T$122	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$706)

	.dwendtag $C$DW$TU$122


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x36)
$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$707, DW_AT_name("lo")
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$707, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$707, DW_AT_decl_line(0x70)
	.dwattr $C$DW$707, DW_AT_decl_column(0x0d)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$708, DW_AT_name("hi")
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$708, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$708, DW_AT_decl_line(0x70)
	.dwattr $C$DW$708, DW_AT_decl_column(0x10)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$709, DW_AT_name("hl")
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$709, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$709, DW_AT_decl_line(0x70)
	.dwattr $C$DW$709, DW_AT_decl_column(0x13)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$710, DW_AT_name("hh")
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$710, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$710, DW_AT_decl_line(0x70)
	.dwattr $C$DW$710, DW_AT_decl_column(0x16)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$711, DW_AT_name("tolerance")
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$711, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$711, DW_AT_decl_line(0x70)
	.dwattr $C$DW$711, DW_AT_decl_column(0x19)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$712, DW_AT_name("work")
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$712, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$712, DW_AT_decl_line(0x70)
	.dwattr $C$DW$712, DW_AT_decl_column(0x23)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$713, DW_AT_name("points")
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$713, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$713, DW_AT_decl_line(0x70)
	.dwattr $C$DW$713, DW_AT_decl_column(0x2b)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$714, DW_AT_name("a")
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$714, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$714, DW_AT_decl_line(0x71)
	.dwattr $C$DW$714, DW_AT_decl_column(0x0d)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$715, DW_AT_name("ha")
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$715, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$715, DW_AT_decl_line(0x71)
	.dwattr $C$DW$715, DW_AT_decl_column(0x0f)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$716, DW_AT_name("b")
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$716, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$716, DW_AT_decl_line(0x71)
	.dwattr $C$DW$716, DW_AT_decl_column(0x12)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$717, DW_AT_name("hb")
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$717, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$717, DW_AT_decl_line(0x71)
	.dwattr $C$DW$717, DW_AT_decl_column(0x14)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$718, DW_AT_name("key")
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$718, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$718, DW_AT_decl_line(0x71)
	.dwattr $C$DW$718, DW_AT_decl_column(0x17)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$719, DW_AT_name("root")
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$719, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$719, DW_AT_decl_line(0x71)
	.dwattr $C$DW$719, DW_AT_decl_column(0x1b)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$720, DW_AT_name("qscale")
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$720, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$720, DW_AT_decl_line(0x71)
	.dwattr $C$DW$720, DW_AT_decl_column(0x20)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$721, DW_AT_name("x")
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$721, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$721, DW_AT_decl_line(0x71)
	.dwattr $C$DW$721, DW_AT_decl_column(0x27)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$722, DW_AT_name("k")
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$722, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$722, DW_AT_decl_line(0x72)
	.dwattr $C$DW$722, DW_AT_decl_column(0x0e)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$723, DW_AT_name("r")
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$723, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$723, DW_AT_decl_line(0x72)
	.dwattr $C$DW$723, DW_AT_decl_column(0x10)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$724, DW_AT_name("j")
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$724, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$724, DW_AT_decl_line(0x72)
	.dwattr $C$DW$724, DW_AT_decl_column(0x12)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$725, DW_AT_name("count")
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$725, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$725, DW_AT_decl_line(0x72)
	.dwattr $C$DW$725, DW_AT_decl_column(0x14)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$726, DW_AT_name("found")
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$726, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$726, DW_AT_decl_line(0x72)
	.dwattr $C$DW$726, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$45, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$124	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$124
$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("PF_RootWork")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$124, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x73)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$124


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x28)
$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$727, DW_AT_name("local")
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$727, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$727, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$727, DW_AT_decl_column(0x13)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$728, DW_AT_name("plan")
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$728, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$728, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$728, DW_AT_decl_column(0x1a)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$729, DW_AT_name("reserved")
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$729, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$729, DW_AT_decl_line(0x61)
	.dwattr $C$DW$729, DW_AT_decl_column(0x0d)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$730, DW_AT_name("active")
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$730, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$730, DW_AT_decl_line(0x62)
	.dwattr $C$DW$730, DW_AT_decl_column(0x0e)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$731, DW_AT_name("n")
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$731, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$731, DW_AT_decl_line(0x62)
	.dwattr $C$DW$731, DW_AT_decl_column(0x15)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$732, DW_AT_name("k")
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$732, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$732, DW_AT_decl_line(0x62)
	.dwattr $C$DW$732, DW_AT_decl_column(0x17)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$733, DW_AT_name("found")
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$733, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$733, DW_AT_decl_line(0x62)
	.dwattr $C$DW$733, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$49, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$126	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$126
$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("PF_LambdaWork")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$126, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$126


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x38)
$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$734, DW_AT_name("dq")
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$734, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$734, DW_AT_decl_line(0x75)
	.dwattr $C$DW$734, DW_AT_decl_column(0x0d)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$735, DW_AT_name("np")
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$735, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$735, DW_AT_decl_line(0x75)
	.dwattr $C$DW$735, DW_AT_decl_column(0x13)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$736, DW_AT_name("dc")
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$736, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$736, DW_AT_decl_line(0x75)
	.dwattr $C$DW$736, DW_AT_decl_column(0x16)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$737, DW_AT_name("h")
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$737, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$737, DW_AT_decl_line(0x75)
	.dwattr $C$DW$737, DW_AT_decl_column(0x19)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$738, DW_AT_name("c")
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$738, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$738, DW_AT_decl_line(0x75)
	.dwattr $C$DW$738, DW_AT_decl_column(0x1b)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$739, DW_AT_name("old_local")
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$739, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$739, DW_AT_decl_line(0x75)
	.dwattr $C$DW$739, DW_AT_decl_column(0x1d)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$740, DW_AT_name("free_local")
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$740, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$740, DW_AT_decl_line(0x75)
	.dwattr $C$DW$740, DW_AT_decl_column(0x2a)

$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$741, DW_AT_name("next")
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$741, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$741, DW_AT_decl_line(0x75)
	.dwattr $C$DW$741, DW_AT_decl_column(0x38)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$742, DW_AT_name("free_dq")
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$742, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$742, DW_AT_decl_line(0x75)
	.dwattr $C$DW$742, DW_AT_decl_column(0x40)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$743, DW_AT_name("mu")
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$743, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$743, DW_AT_decl_line(0x76)
	.dwattr $C$DW$743, DW_AT_decl_column(0x0d)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$744, DW_AT_name("width")
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$744, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$744, DW_AT_decl_line(0x76)
	.dwattr $C$DW$744, DW_AT_decl_column(0x10)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$745, DW_AT_name("residual")
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$745, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$745, DW_AT_decl_line(0x76)
	.dwattr $C$DW$745, DW_AT_decl_column(0x16)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$746, DW_AT_name("up")
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$746, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$746, DW_AT_decl_line(0x76)
	.dwattr $C$DW$746, DW_AT_decl_column(0x1f)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$747, DW_AT_name("low")
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$747, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$747, DW_AT_decl_line(0x76)
	.dwattr $C$DW$747, DW_AT_decl_column(0x22)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$748, DW_AT_name("neutral")
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$748, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$748, DW_AT_decl_line(0x76)
	.dwattr $C$DW$748, DW_AT_decl_column(0x26)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$749, DW_AT_name("old_abc")
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$749, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$749, DW_AT_decl_line(0x77)
	.dwattr $C$DW$749, DW_AT_decl_column(0x14)

$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$750, DW_AT_name("free_abc")
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$750, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$750, DW_AT_decl_line(0x77)
	.dwattr $C$DW$750, DW_AT_decl_column(0x1d)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$751, DW_AT_name("step")
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$751, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$751, DW_AT_decl_line(0x78)
	.dwattr $C$DW$751, DW_AT_decl_column(0x0e)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$752, DW_AT_name("r")
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$752, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$752, DW_AT_decl_line(0x78)
	.dwattr $C$DW$752, DW_AT_decl_column(0x13)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$753, DW_AT_name("status")
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$753, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$753, DW_AT_decl_line(0x78)
	.dwattr $C$DW$753, DW_AT_decl_column(0x15)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$754, DW_AT_name("iterations")
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$754, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$754, DW_AT_decl_line(0x78)
	.dwattr $C$DW$754, DW_AT_decl_column(0x1c)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$755, DW_AT_name("blocked")
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$755, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$755, DW_AT_decl_line(0x78)
	.dwattr $C$DW$755, DW_AT_decl_column(0x27)

	.dwattr $C$DW$T$52, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$128	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$128
$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("PF_ControlWork")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$128, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$128


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x28)
$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$756, DW_AT_name("dq")
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$756, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$756, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$756, DW_AT_decl_column(0x0d)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$757, DW_AT_name("edq")
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$757, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$757, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$757, DW_AT_decl_column(0x13)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$758, DW_AT_name("iref")
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$758, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$758, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$758, DW_AT_decl_column(0x1a)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$759, DW_AT_name("uref")
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$759, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$759, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$759, DW_AT_decl_column(0x22)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$760, DW_AT_name("udq")
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$760, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$760, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$760, DW_AT_decl_column(0x2a)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$761, DW_AT_name("oi")
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$761, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$761, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$761, DW_AT_decl_column(0x0e)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$762, DW_AT_name("ou")
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$762, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$762, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$762, DW_AT_decl_column(0x14)

	.dwattr $C$DW$T$53, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$130	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$130
$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("PF_SelectWork")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$130, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$130


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x02)
$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$763, DW_AT_name("f")
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$763, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$763, DW_AT_decl_line(0x43)
	.dwattr $C$DW$763, DW_AT_decl_column(0x13)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$764, DW_AT_name("u")
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$764, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$764, DW_AT_decl_line(0x43)
	.dwattr $C$DW$764, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$56, DW_AT_decl_file("../vienna_pcmfpc_fast.c")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x0b)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


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


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x03)
$C$DW$765	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$765, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x08)
$C$DW$766	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$766, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$145	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$145
$C$DW$T$145	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$145, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$145


$C$DW$TU$172	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$172
$C$DW$767	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$145)

$C$DW$T$172	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$172, DW_AT_type(*$C$DW$767)

	.dwendtag $C$DW$TU$172


$C$DW$TU$143	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$143
$C$DW$768	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$21)

$C$DW$T$143	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$768)

	.dwendtag $C$DW$TU$143


$C$DW$TU$144	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$144
$C$DW$T$144	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$144


$C$DW$TU$183	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$183
$C$DW$769	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$144)

$C$DW$T$183	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$769)

	.dwendtag $C$DW$TU$183


$C$DW$TU$184	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$184
$C$DW$770	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$21)

$C$DW$T$184	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$184, DW_AT_type(*$C$DW$770)

	.dwendtag $C$DW$TU$184


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


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54
$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$54, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55
$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$55


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


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$771	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$19)

$C$DW$T$50	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$771)

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$51


$C$DW$TU$185	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$185
$C$DW$772	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$51)

$C$DW$T$185	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$185, DW_AT_type(*$C$DW$772)

	.dwendtag $C$DW$TU$185


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x06)
$C$DW$773	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$773, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x10)
$C$DW$774	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$774, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x04)
$C$DW$775	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$775, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x20)
$C$DW$776	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$776, DW_AT_upper_bound(0x07)

$C$DW$777	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$777, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x14)
$C$DW$778	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$778, DW_AT_upper_bound(0x09)

	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x0a)
$C$DW$779	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$779, DW_AT_upper_bound(0x04)

	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$135	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$135
$C$DW$T$135	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$135, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$135


$C$DW$TU$186	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$186
$C$DW$780	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$135)

$C$DW$T$186	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$780)

	.dwendtag $C$DW$TU$186


$C$DW$TU$197	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$197
$C$DW$781	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$16)

$C$DW$T$197	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$197, DW_AT_type(*$C$DW$781)

	.dwendtag $C$DW$TU$197


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$203	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$203
$C$DW$T$203	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$203, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$203, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$203


$C$DW$TU$204	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$204
$C$DW$782	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$203)

$C$DW$T$204	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$204, DW_AT_type(*$C$DW$782)

	.dwendtag $C$DW$TU$204


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$205	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$205
$C$DW$T$205	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$205, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$205, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$205


$C$DW$TU$206	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$206
$C$DW$783	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$205)

$C$DW$T$206	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$206, DW_AT_type(*$C$DW$783)

	.dwendtag $C$DW$TU$206

