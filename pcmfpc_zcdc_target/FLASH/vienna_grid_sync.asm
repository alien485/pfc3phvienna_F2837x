;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                             PC v25.11.1.LTS *
;* Date/Time created: Mon Oct 26 09:58:50 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../vienna_grid_sync.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v25.11.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\FLASH")
;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\opt2000.exe C:\\Users\\YAN\\AppData\\Local\\Temp\\{CDAC6FBE-D3DA-4E54-98CD-48EDF65A9883} C:\\Users\\YAN\\AppData\\Local\\Temp\\{99227336-F20F-46F5-B340-97CB877235F0} --advice:performance=stdout 
;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\acia2000.exe -@C:\\Users\\YAN\\AppData\\Local\\Temp\\{22DD279A-D9B1-445A-A9EF-09950CBC2FB9} 
	.sect	".text:__signbitl"
	.clink
	.global	||__signbitl||

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("__signbitl")
	.dwattr $C$DW$1, DW_AT_low_pc(||__signbitl||)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_linkage_name("__signbitl")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$1, DW_AT_decl_column(0x18)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 349,column 1,is_stmt,address ||__signbitl||,isa 0

	.dwfde $C$DW$CIE, ||__signbitl||
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("e")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg12]


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
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("e")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg12]

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
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$4, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |349| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |349| 
        MOVB      AH,#0                 ; [CPU_ALU] |349| 
        CMPB      AL,#0                 ; [CPU_ALU] |349| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |349| 
        MOV       AL,AH                 ; [CPU_ALU] |349| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$5	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$5, DW_AT_low_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:__signbitf"
	.clink
	.global	||__signbitf||

$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("__signbitf")
	.dwattr $C$DW$6, DW_AT_low_pc(||__signbitf||)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_linkage_name("__signbitf")
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$6, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$6, DW_AT_decl_column(0x18)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 347,column 1,is_stmt,address ||__signbitf||,isa 0

	.dwfde $C$DW$CIE, ||__signbitf||
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("f")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("f")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$6, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0x15b)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	".text:__signbit"
	.clink
	.global	||__signbit||

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("__signbit")
	.dwattr $C$DW$10, DW_AT_low_pc(||__signbit||)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_linkage_name("__signbit")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$10, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x158)
	.dwattr $C$DW$10, DW_AT_decl_column(0x18)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 345,column 1,is_stmt,address ||__signbit||,isa 0

	.dwfde $C$DW$CIE, ||__signbit||
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("d")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg12]


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
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("d")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg12]

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
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$13, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |345| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |345| 
        MOVB      AH,#0                 ; [CPU_ALU] |345| 
        CMPB      AL,#0                 ; [CPU_ALU] |345| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |345| 
        MOV       AL,AH                 ; [CPU_ALU] |345| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x159)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text:__relaxed_fmodf"
	.clink
	.global	||__relaxed_fmodf||

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("__relaxed_fmodf")
	.dwattr $C$DW$15, DW_AT_low_pc(||__relaxed_fmodf||)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_linkage_name("__relaxed_fmodf")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$15, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x121)
	.dwattr $C$DW$15, DW_AT_decl_column(0x10)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 290,column 1,is_stmt,address ||__relaxed_fmodf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmodf||
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("y")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("x")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("y")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("x")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x124)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text:__relaxed_fminf"
	.clink
	.global	||__relaxed_fminf||

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("__relaxed_fminf")
	.dwattr $C$DW$21, DW_AT_low_pc(||__relaxed_fminf||)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_linkage_name("__relaxed_fminf")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$21, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$21, DW_AT_decl_column(0x10)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 244,column 1,is_stmt,address ||__relaxed_fminf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fminf||
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("x")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("y")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("y")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 245,column 5,is_stmt,isa 0
        MINF32    R0H,R1H               ; [CPU_FPU] |245| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0xf6)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text:__relaxed_fmaxf"
	.clink
	.global	||__relaxed_fmaxf||

$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("__relaxed_fmaxf")
	.dwattr $C$DW$26, DW_AT_low_pc(||__relaxed_fmaxf||)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_linkage_name("__relaxed_fmaxf")
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$26, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0xed)
	.dwattr $C$DW$26, DW_AT_decl_column(0x10)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 238,column 1,is_stmt,address ||__relaxed_fmaxf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmaxf||
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_name("x")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_name("y")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("y")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 239,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |239| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$26, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0xf0)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".text:__relaxed_atanf"
	.clink
	.global	||__relaxed_atanf||

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("__relaxed_atanf")
	.dwattr $C$DW$31, DW_AT_low_pc(||__relaxed_atanf||)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_linkage_name("__relaxed_atanf")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$31, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x117)
	.dwattr $C$DW$31, DW_AT_decl_column(0x10)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 280,column 1,is_stmt,address ||__relaxed_atanf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atanf||
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("x")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("x")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text:__isnormall"
	.clink
	.global	||__isnormall||

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("__isnormall")
	.dwattr $C$DW$35, DW_AT_low_pc(||__isnormall||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("__isnormall")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$35, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x154)
	.dwattr $C$DW$35, DW_AT_decl_column(0x18)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 341,column 1,is_stmt,address ||__isnormall||,isa 0

	.dwfde $C$DW$CIE, ||__isnormall||
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("e")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg12]


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
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("e")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg12]

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
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$38, DW_AT_TI_call

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
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x156)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:__isnormalf"
	.clink
	.global	||__isnormalf||

$C$DW$40	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$40, DW_AT_name("__isnormalf")
	.dwattr $C$DW$40, DW_AT_low_pc(||__isnormalf||)
	.dwattr $C$DW$40, DW_AT_high_pc(0x00)
	.dwattr $C$DW$40, DW_AT_linkage_name("__isnormalf")
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$40, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0x150)
	.dwattr $C$DW$40, DW_AT_decl_column(0x18)
	.dwattr $C$DW$40, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 337,column 1,is_stmt,address ||__isnormalf||,isa 0

	.dwfde $C$DW$CIE, ||__isnormalf||
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_name("f")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("f")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$40, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$40, DW_AT_TI_end_line(0x152)
	.dwattr $C$DW$40, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$40

	.sect	".text:__isnormal"
	.clink
	.global	||__isnormal||

$C$DW$44	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$44, DW_AT_name("__isnormal")
	.dwattr $C$DW$44, DW_AT_low_pc(||__isnormal||)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_linkage_name("__isnormal")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$44, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$44, DW_AT_decl_column(0x18)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 333,column 1,is_stmt,address ||__isnormal||,isa 0

	.dwfde $C$DW$CIE, ||__isnormal||
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("d")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg12]


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
$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("d")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg12]

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
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$47, DW_AT_TI_call

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
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$44, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x14e)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text:__isnanl"
	.clink
	.global	||__isnanl||

$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("__isnanl")
	.dwattr $C$DW$49, DW_AT_low_pc(||__isnanl||)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_linkage_name("__isnanl")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$49, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x148)
	.dwattr $C$DW$49, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 329,column 1,is_stmt,address ||__isnanl||,isa 0

	.dwfde $C$DW$CIE, ||__isnanl||
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_name("e")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg12]


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
$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("e")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg12]

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
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$52, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |329| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |329| 
        CMPB      AL,#0                 ; [CPU_ALU] |329| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |329| 
||$C$L4||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |329| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$49, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x14a)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text:__isnanf"
	.clink
	.global	||__isnanf||

$C$DW$54	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$54, DW_AT_name("__isnanf")
	.dwattr $C$DW$54, DW_AT_low_pc(||__isnanf||)
	.dwattr $C$DW$54, DW_AT_high_pc(0x00)
	.dwattr $C$DW$54, DW_AT_linkage_name("__isnanf")
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$54, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x145)
	.dwattr $C$DW$54, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$54, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 326,column 1,is_stmt,address ||__isnanf||,isa 0

	.dwfde $C$DW$CIE, ||__isnanf||
$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_name("f")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("f")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$54, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x147)
	.dwattr $C$DW$54, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$54

	.sect	".text:__isnan"
	.clink
	.global	||__isnan||

$C$DW$58	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$58, DW_AT_name("__isnan")
	.dwattr $C$DW$58, DW_AT_low_pc(||__isnan||)
	.dwattr $C$DW$58, DW_AT_high_pc(0x00)
	.dwattr $C$DW$58, DW_AT_linkage_name("__isnan")
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$58, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0x142)
	.dwattr $C$DW$58, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$58, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 323,column 1,is_stmt,address ||__isnan||,isa 0

	.dwfde $C$DW$CIE, ||__isnan||
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_name("d")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg12]


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
$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("d")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg12]

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
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |323| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |323| 
        CMPB      AL,#0                 ; [CPU_ALU] |323| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |323| 
||$C$L6||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |323| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$58, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$58, DW_AT_TI_end_line(0x144)
	.dwattr $C$DW$58, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$58

	.sect	".text:__isinfl"
	.clink
	.global	||__isinfl||

$C$DW$63	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$63, DW_AT_name("__isinfl")
	.dwattr $C$DW$63, DW_AT_low_pc(||__isinfl||)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_linkage_name("__isinfl")
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$63, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0x167)
	.dwattr $C$DW$63, DW_AT_decl_column(0x18)
	.dwattr $C$DW$63, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 360,column 1,is_stmt,address ||__isinfl||,isa 0

	.dwfde $C$DW$CIE, ||__isinfl||
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_name("e")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg12]


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
$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("e")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg12]

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
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$66, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |360| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |360| 
        CMPB      AL,#0                 ; [CPU_ALU] |360| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |360| 
||$C$L7||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |360| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$63, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x168)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$63

	.sect	".text:__isinff"
	.clink
	.global	||__isinff||

$C$DW$68	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$68, DW_AT_name("__isinff")
	.dwattr $C$DW$68, DW_AT_low_pc(||__isinff||)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_linkage_name("__isinff")
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$68, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0x163)
	.dwattr $C$DW$68, DW_AT_decl_column(0x18)
	.dwattr $C$DW$68, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 356,column 1,is_stmt,address ||__isinff||,isa 0

	.dwfde $C$DW$CIE, ||__isinff||
$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_name("f")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("f")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$68, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x164)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$68

	.sect	".text:__isinf"
	.clink
	.global	||__isinf||

$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("__isinf")
	.dwattr $C$DW$72, DW_AT_low_pc(||__isinf||)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_linkage_name("__isinf")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$72, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x165)
	.dwattr $C$DW$72, DW_AT_decl_column(0x18)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 358,column 1,is_stmt,address ||__isinf||,isa 0

	.dwfde $C$DW$CIE, ||__isinf||
$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("d")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg12]


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
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("d")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg12]

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
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$75, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |358| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |358| 
        CMPB      AL,#0                 ; [CPU_ALU] |358| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |358| 
||$C$L9||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |358| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x166)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text:__isfinitel"
	.clink
	.global	||__isfinitel||

$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("__isfinitel")
	.dwattr $C$DW$77, DW_AT_low_pc(||__isfinitel||)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_linkage_name("__isfinitel")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$77, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$77, DW_AT_decl_column(0x18)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 320,column 1,is_stmt,address ||__isfinitel||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitel||
$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_name("e")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg12]


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
$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("e")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg12]

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
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x140)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text:__isfinitef"
	.clink
	.global	||__isfinitef||

$C$DW$81	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$81, DW_AT_name("__isfinitef")
	.dwattr $C$DW$81, DW_AT_low_pc(||__isfinitef||)
	.dwattr $C$DW$81, DW_AT_high_pc(0x00)
	.dwattr $C$DW$81, DW_AT_linkage_name("__isfinitef")
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$81, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$81, DW_AT_decl_column(0x18)
	.dwattr $C$DW$81, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 318,column 1,is_stmt,address ||__isfinitef||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitef||
$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_name("f")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("f")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$81, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$81, DW_AT_TI_end_line(0x13e)
	.dwattr $C$DW$81, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$81

	.sect	".text:__isfinite"
	.clink
	.global	||__isfinite||

$C$DW$85	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$85, DW_AT_name("__isfinite")
	.dwattr $C$DW$85, DW_AT_low_pc(||__isfinite||)
	.dwattr $C$DW$85, DW_AT_high_pc(0x00)
	.dwattr $C$DW$85, DW_AT_linkage_name("__isfinite")
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$85, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$85, DW_AT_decl_column(0x18)
	.dwattr $C$DW$85, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 316,column 1,is_stmt,address ||__isfinite||,isa 0

	.dwfde $C$DW$CIE, ||__isfinite||
$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_name("d")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg12]


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
$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("d")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg12]

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
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$85, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$85, DW_AT_TI_end_line(0x13c)
	.dwattr $C$DW$85, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$85

	.sect	".text:__fpclassifyl"
	.clink
	.global	||__fpclassifyl||

$C$DW$89	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$89, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$89, DW_AT_low_pc(||__fpclassifyl||)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_linkage_name("__fpclassifyl")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$89, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$89, DW_AT_decl_column(0x18)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 412,column 1,is_stmt,address ||__fpclassifyl||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyl||
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("e")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassifyl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyl||:
$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("e")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to e
$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("e")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg12]

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
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$93, DW_AT_TI_call

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
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$94, DW_AT_TI_call

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
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$95, DW_AT_TI_call

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
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$89, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0x1aa)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text:__fpclassifyf"
	.clink
	.global	||__fpclassifyf||

$C$DW$97	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$97, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$97, DW_AT_low_pc(||__fpclassifyf||)
	.dwattr $C$DW$97, DW_AT_high_pc(0x00)
	.dwattr $C$DW$97, DW_AT_linkage_name("__fpclassifyf")
	.dwattr $C$DW$97, DW_AT_external
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$97, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x179)
	.dwattr $C$DW$97, DW_AT_decl_column(0x18)
	.dwattr $C$DW$97, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 378,column 1,is_stmt,address ||__fpclassifyf||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyf||
$C$DW$98	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$98, DW_AT_name("f")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("f")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L15||:    
	.dwcfi	remember_state
        MOVB      AL,#1                 ; [CPU_ALU] |383| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_return

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
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_return

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
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L18||:    
        MOVB      AL,#0                 ; [CPU_ALU] |383| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$97, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$97, DW_AT_TI_end_line(0x188)
	.dwattr $C$DW$97, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$97

	.sect	".text:__fpclassify"
	.clink
	.global	||__fpclassify||

$C$DW$105	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$105, DW_AT_name("__fpclassify")
	.dwattr $C$DW$105, DW_AT_low_pc(||__fpclassify||)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_linkage_name("__fpclassify")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$105, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$105, DW_AT_decl_column(0x18)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 395,column 1,is_stmt,address ||__fpclassify||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassify||
$C$DW$106	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$106, DW_AT_name("d")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassify                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassify||:
$C$DW$107	.dwtag  DW_TAG_variable
	.dwattr $C$DW$107, DW_AT_name("d")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to d
$C$DW$108	.dwtag  DW_TAG_variable
	.dwattr $C$DW$108, DW_AT_name("d")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg12]

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
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$109, DW_AT_TI_call

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
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$110, DW_AT_TI_call

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
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$111, DW_AT_TI_call

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
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$105, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0x199)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text"
	.clink

$C$DW$113	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$113, DW_AT_name("vg_finite")
	.dwattr $C$DW$113, DW_AT_low_pc(||vg_finite||)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_linkage_name("vg_finite")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$113, DW_AT_decl_file("../vienna_grid_sync.c")
	.dwattr $C$DW$113, DW_AT_decl_line(0x12)
	.dwattr $C$DW$113, DW_AT_decl_column(0x11)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_grid_sync.c",line 19,column 1,is_stmt,address ||vg_finite||,isa 0

	.dwfde $C$DW$CIE, ||vg_finite||
$C$DW$114	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$114, DW_AT_name("x")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: vg_finite                     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||vg_finite||:
$C$DW$115	.dwtag  DW_TAG_variable
	.dwattr $C$DW$115, DW_AT_name("v")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_breg20 -2]

;* R0    assigned to x
$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("x")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna_grid_sync.c",line 21,column 5,is_stmt,isa 0
        MOV32     *-SP[2],R0H           ; [CPU_FPU] |21| 
	.dwpsn	file "../vienna_grid_sync.c",line 22,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |22| 
        MOV       PH,#32640             ; [CPU_ALU] |22| 
        MOVB      XAR6,#0               ; [CPU_ALU] |22| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |22| 
        ANDB      AL,#0                 ; [CPU_ALU] |22| 
        AND       AH,#32640             ; [CPU_ALU] |22| 
        CMPL      ACC,P                 ; [CPU_ALU] |22| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |22| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |22| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$113, DW_AT_TI_end_file("../vienna_grid_sync.c")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x17)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$113

	.sect	"pcmfpc_code"
	.clink
	.global	||VG_reset||

$C$DW$118	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$118, DW_AT_name("VG_reset")
	.dwattr $C$DW$118, DW_AT_low_pc(||VG_reset||)
	.dwattr $C$DW$118, DW_AT_high_pc(0x00)
	.dwattr $C$DW$118, DW_AT_linkage_name("VG_reset")
	.dwattr $C$DW$118, DW_AT_external
	.dwattr $C$DW$118, DW_AT_decl_file("../vienna_grid_sync.c")
	.dwattr $C$DW$118, DW_AT_decl_line(0x32)
	.dwattr $C$DW$118, DW_AT_decl_column(0x06)
	.dwattr $C$DW$118, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_grid_sync.c",line 51,column 1,is_stmt,address ||VG_reset||,isa 0

	.dwfde $C$DW$CIE, ||VG_reset||
$C$DW$119	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$119, DW_AT_name("s")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: VG_reset                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VG_reset||:
;* AR4   assigned to s
$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("s")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |51| 
	.dwpsn	file "../vienna_grid_sync.c",line 52,column 5,is_stmt,isa 0
        B         ||$C$L24||,EQ         ; [CPU_ALU] |52| 
        ; branchcc occurs ; [] |52| 
	.dwpsn	file "../vienna_grid_sync.c",line 54,column 18,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |54| 
        ZERO      R0H                   ; [CPU_FPU] |54| 
	.dwpsn	file "../vienna_grid_sync.c",line 54,column 31,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |54| 
	.dwpsn	file "../vienna_grid_sync.c",line 55,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |55| 
	.dwpsn	file "../vienna_grid_sync.c",line 54,column 51,is_stmt,isa 0
        ZERO      R2H                   ; [CPU_FPU] |54| 
	.dwpsn	file "../vienna_grid_sync.c",line 54,column 18,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |54| 
	.dwpsn	file "../vienna_grid_sync.c",line 54,column 31,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |54| 
        MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |54| 
	.dwpsn	file "../vienna_grid_sync.c",line 54,column 51,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |54| 
	.dwpsn	file "../vienna_grid_sync.c",line 53,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R1H         ; [CPU_FPU] |53| 
	.dwpsn	file "../vienna_grid_sync.c",line 53,column 23,is_stmt,isa 0
        MOV32     *+XAR4[2],R3H         ; [CPU_FPU] |53| 
	.dwpsn	file "../vienna_grid_sync.c",line 53,column 46,is_stmt,isa 0
        MOV32     *+XAR4[4],R2H         ; [CPU_FPU] |53| 
	.dwpsn	file "../vienna_grid_sync.c",line 54,column 5,is_stmt,isa 0
        MOV32     *+XAR4[6],R1H         ; [CPU_FPU] |54| 
	.dwpsn	file "../vienna_grid_sync.c",line 54,column 51,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |54| 
	.dwpsn	file "../vienna_grid_sync.c",line 55,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |55| 
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |55| 
	.dwpsn	file "../vienna_grid_sync.c",line 55,column 25,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |55| 
        MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |55| 
	.dwpsn	file "../vienna_grid_sync.c",line 56,column 5,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |56| 
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |56| 
	.dwpsn	file "../vienna_grid_sync.c",line 57,column 5,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |57| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |57| 
	.dwpsn	file "../vienna_grid_sync.c",line 57,column 23,is_stmt,isa 0
        MOVB      XAR0,#23              ; [CPU_ALU] |57| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |57| 
	.dwpsn	file "../vienna_grid_sync.c",line 57,column 36,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |57| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |57| 
	.dwpsn	file "../vienna_grid_sync.c",line 58,column 5,is_stmt,isa 0
        MOVB      XAR0,#25              ; [CPU_ALU] |58| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |58| 
	.dwpsn	file "../vienna_grid_sync.c",line 58,column 22,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_ALU] |58| 
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |58| 
	.dwpsn	file "../vienna_grid_sync.c",line 56,column 30,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |56| 
        MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |56| 
||$C$L24||:    
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$118, DW_AT_TI_end_file("../vienna_grid_sync.c")
	.dwattr $C$DW$118, DW_AT_TI_end_line(0x3b)
	.dwattr $C$DW$118, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$118

	.sect	".text"
	.clink

$C$DW$122	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$122, DW_AT_name("vg_wrap")
	.dwattr $C$DW$122, DW_AT_low_pc(||vg_wrap||)
	.dwattr $C$DW$122, DW_AT_high_pc(0x00)
	.dwattr $C$DW$122, DW_AT_linkage_name("vg_wrap")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$122, DW_AT_decl_file("../vienna_grid_sync.c")
	.dwattr $C$DW$122, DW_AT_decl_line(0x18)
	.dwattr $C$DW$122, DW_AT_decl_column(0x0e)
	.dwattr $C$DW$122, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_grid_sync.c",line 25,column 1,is_stmt,address ||vg_wrap||,isa 0

	.dwfde $C$DW$CIE, ||vg_wrap||
$C$DW$123	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$123, DW_AT_name("x")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: vg_wrap                       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||vg_wrap||:
;* R3    assigned to x
$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("x")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x37]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOV32     R3H,R0H               ; [CPU_FPU] |25| 
	.dwpsn	file "../vienna_grid_sync.c",line 26,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16585            ; [CPU_FPU] |26| 
        MOVXI     R0H,#4059             ; [CPU_FPU] |26| 
        CMPF32    R3H,R0H               ; [CPU_FPU] |26| 
        MOVST0    ZF, NF                ; [CPU_FPU] |26| 
        B         ||$C$L25||,LT         ; [CPU_ALU] |26| 
        ; branchcc occurs ; [] |26| 
	.dwpsn	file "../vienna_grid_sync.c",line 26,column 22,is_stmt,isa 0
        MOVIZ     R0H,#16585            ; [CPU_FPU] |26| 
        MOVXI     R0H,#4059             ; [CPU_FPU] |26| 
        SUBF32    R3H,R3H,R0H           ; [CPU_FPU] |26| 
        NOP       ; [CPU_ALU] 
||$C$L25||:    
	.dwpsn	file "../vienna_grid_sync.c",line 27,column 5,is_stmt,isa 0
        CMPF32    R3H,#0                ; [CPU_FPU] |27| 
        MOVST0    ZF, NF                ; [CPU_FPU] |27| 
        B         ||$C$L26||,GEQ        ; [CPU_ALU] |27| 
        ; branchcc occurs ; [] |27| 
	.dwpsn	file "../vienna_grid_sync.c",line 27,column 16,is_stmt,isa 0
        MOVIZ     R2H,#16585            ; [CPU_FPU] |27| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |27| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |27| 
        NOP       ; [CPU_ALU] 
||$C$L26||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
	.dwpsn	file "../vienna_grid_sync.c",line 28,column 5,is_stmt,isa 0
        MOV32     R0H,R3H               ; [CPU_FPU] |28| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$122, DW_AT_TI_end_file("../vienna_grid_sync.c")
	.dwattr $C$DW$122, DW_AT_TI_end_line(0x1d)
	.dwattr $C$DW$122, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$122

	.sect	".text"
	.clink

$C$DW$126	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$126, DW_AT_name("vg_limit")
	.dwattr $C$DW$126, DW_AT_low_pc(||vg_limit||)
	.dwattr $C$DW$126, DW_AT_high_pc(0x00)
	.dwattr $C$DW$126, DW_AT_linkage_name("vg_limit")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$126, DW_AT_decl_file("../vienna_grid_sync.c")
	.dwattr $C$DW$126, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$126, DW_AT_decl_column(0x0e)
	.dwattr $C$DW$126, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_grid_sync.c",line 31,column 1,is_stmt,address ||vg_limit||,isa 0

	.dwfde $C$DW$CIE, ||vg_limit||
$C$DW$127	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$127, DW_AT_name("x")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$128	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$128, DW_AT_name("lo")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$129	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$129, DW_AT_name("hi")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x33]


;***************************************************************
;* FNAME: vg_limit                      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||vg_limit||:
;* R1    assigned to x
$C$DW$130	.dwtag  DW_TAG_variable
	.dwattr $C$DW$130, DW_AT_name("x")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to lo
$C$DW$131	.dwtag  DW_TAG_variable
	.dwattr $C$DW$131, DW_AT_name("lo")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x2b]

;* R2    assigned to hi
$C$DW$132	.dwtag  DW_TAG_variable
	.dwattr $C$DW$132, DW_AT_name("hi")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOV32     R3H,R0H               ; [CPU_FPU] |31| 
        MOV32     R0H,R1H               ; [CPU_FPU] |31| 
        MOV32     R1H,R3H               ; [CPU_FPU] |31| 
	.dwpsn	file "../vienna_grid_sync.c",line 32,column 5,is_stmt,isa 0
        CMPF32    R1H,R0H               ; [CPU_FPU] |32| 
        MOVST0    ZF, NF                ; [CPU_FPU] |32| 
        B         ||$C$L27||,LT         ; [CPU_ALU] |32| 
        ; branchcc occurs ; [] |32| 
        MOV32     R0H,R2H               ; [CPU_FPU] |32| 
        MINF32    R0H,R1H               ; [CPU_FPU] |32| 
||$C$L27||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$126, DW_AT_TI_end_file("../vienna_grid_sync.c")
	.dwattr $C$DW$126, DW_AT_TI_end_line(0x21)
	.dwattr $C$DW$126, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$126

	.sect	"pcmfpc_code"
	.clink
	.global	||VG_run||

$C$DW$134	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$134, DW_AT_name("VG_run")
	.dwattr $C$DW$134, DW_AT_low_pc(||VG_run||)
	.dwattr $C$DW$134, DW_AT_high_pc(0x00)
	.dwattr $C$DW$134, DW_AT_linkage_name("VG_run")
	.dwattr $C$DW$134, DW_AT_external
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$134, DW_AT_decl_file("../vienna_grid_sync.c")
	.dwattr $C$DW$134, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$134, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$134, DW_AT_TI_max_frame_size(-24)
	.dwpsn	file "../vienna_grid_sync.c",line 61,column 1,is_stmt,address ||VG_run||,isa 0

	.dwfde $C$DW$CIE, ||VG_run||
$C$DW$135	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$135, DW_AT_name("c")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg12]

$C$DW$136	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$136, DW_AT_name("s")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg14]

$C$DW$137	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$137, DW_AT_name("v")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_breg20 -26]


;***************************************************************
;* FNAME: VG_run                        FR SIZE:  22           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 10 Auto, 10 SOE     *
;***************************************************************

||VG_run||:
$C$DW$138	.dwtag  DW_TAG_variable
	.dwattr $C$DW$138, DW_AT_name("v")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_breg20 -4]

$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("v")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_breg20 -6]

$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("v")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_breg20 -8]

$C$DW$141	.dwtag  DW_TAG_variable
	.dwattr $C$DW$141, DW_AT_name("v")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_breg20 -10]

;* AH    assigned to $O$C25
;* R2    assigned to $O$C26
;* R0    assigned to $O$C27
;* R2    assigned to $O$C28
;* R1    assigned to $O$C29
;* AL    assigned to $O$C30
;* R7    assigned to $O$C31
;* R2    assigned to $O$C32
;* R3    assigned to $O$U30
;* R2    assigned to $O$U21
;* R0    assigned to $O$U11
;* AL    assigned to $O$v11
;* AH    assigned to $O$v10
;* R6    assigned to $O$v9
;* AR6   assigned to $O$v8
;* AL    assigned to $O$v7
;* R7    assigned to $O$v3
;* R3    assigned to $O$v1
;* R1    assigned to $O$R7
;* R1    assigned to $O$R8
;* AR4   assigned to c
$C$DW$142	.dwtag  DW_TAG_variable
	.dwattr $C$DW$142, DW_AT_name("c")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to s
$C$DW$143	.dwtag  DW_TAG_variable
	.dwattr $C$DW$143, DW_AT_name("s")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg14]

;* AR6   assigned to v
$C$DW$144	.dwtag  DW_TAG_variable
	.dwattr $C$DW$144, DW_AT_name("v")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg16]

;* R5    assigned to alpha
$C$DW$145	.dwtag  DW_TAG_variable
	.dwattr $C$DW$145, DW_AT_name("alpha")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x3f]

;* R4    assigned to beta
$C$DW$146	.dwtag  DW_TAG_variable
	.dwattr $C$DW$146, DW_AT_name("beta")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x3b]

;* R6    assigned to mag
$C$DW$147	.dwtag  DW_TAG_variable
	.dwattr $C$DW$147, DW_AT_name("mag")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x43]

;* R0    assigned to error
$C$DW$148	.dwtag  DW_TAG_variable
	.dwattr $C$DW$148, DW_AT_name("error")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x2b]

;* R2    assigned to omega
$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("omega")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x33]

;* R3    assigned to x
$C$DW$150	.dwtag  DW_TAG_variable
	.dwattr $C$DW$150, DW_AT_name("x")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x37]

;* R1    assigned to lo
$C$DW$151	.dwtag  DW_TAG_variable
	.dwattr $C$DW$151, DW_AT_name("lo")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x2f]

;* R1    assigned to lo
$C$DW$152	.dwtag  DW_TAG_variable
	.dwattr $C$DW$152, DW_AT_name("lo")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x2f]

;* R3    assigned to x
$C$DW$153	.dwtag  DW_TAG_variable
	.dwattr $C$DW$153, DW_AT_name("x")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x37]

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
        ADDB      SP,#12                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -24
        MOVL      ACC,XAR4              ; [CPU_ALU] |61| 
        MOVL      XAR6,*-SP[26]         ; [CPU_ALU] |61| 
	.dwpsn	file "../vienna_grid_sync.c",line 63,column 5,is_stmt,isa 0
        B         ||$C$L31||,EQ         ; [CPU_ALU] |63| 
        ; branchcc occurs ; [] |63| 
        MOVL      ACC,XAR5              ; [CPU_ALU] 
        B         ||$C$L31||,EQ         ; [CPU_ALU] |63| 
        ; branchcc occurs ; [] |63| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
        B         ||$C$L31||,EQ         ; [CPU_ALU] |63| 
        ; branchcc occurs ; [] |63| 
	.dwpsn	file "../vienna_grid_sync.c",line 21,column 5,is_stmt,isa 0
        MOV32     R0H,*+XAR6[0]         ; [CPU_FPU] |21| 
	.dwpsn	file "../vienna_grid_sync.c",line 64,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |64| 
        MOV       PH,#32640             ; [CPU_ALU] |64| 
	.dwpsn	file "../vienna_grid_sync.c",line 21,column 5,is_stmt,isa 0
        MOV32     *-SP[4],R0H           ; [CPU_FPU] |21| 
	.dwpsn	file "../vienna_grid_sync.c",line 64,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |64| 
        ANDB      AL,#0                 ; [CPU_ALU] |64| 
        AND       AH,#32640             ; [CPU_ALU] |64| 
        CMPL      ACC,P                 ; [CPU_ALU] |64| 
        B         ||$C$L28||,EQ         ; [CPU_ALU] |64| 
        ; branchcc occurs ; [] |64| 
	.dwpsn	file "../vienna_grid_sync.c",line 21,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR6[2]         ; [CPU_FPU] |21| 
        MOV32     *-SP[6],R2H           ; [CPU_FPU] |21| 
	.dwpsn	file "../vienna_grid_sync.c",line 64,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |64| 
        ANDB      AL,#0                 ; [CPU_ALU] |64| 
        AND       AH,#32640             ; [CPU_ALU] |64| 
        CMPL      ACC,P                 ; [CPU_ALU] |64| 
        B         ||$C$L28||,EQ         ; [CPU_ALU] |64| 
        ; branchcc occurs ; [] |64| 
	.dwpsn	file "../vienna_grid_sync.c",line 21,column 5,is_stmt,isa 0
        MOV32     R3H,*+XAR6[4]         ; [CPU_FPU] |21| 
        MOV32     *-SP[8],R3H           ; [CPU_FPU] |21| 
	.dwpsn	file "../vienna_grid_sync.c",line 64,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |64| 
        ANDB      AL,#0                 ; [CPU_ALU] |64| 
        AND       AH,#32640             ; [CPU_ALU] |64| 
        CMPL      ACC,P                 ; [CPU_ALU] |64| 
        B         ||$C$L29||,NEQ        ; [CPU_ALU] |64| 
        ; branchcc occurs ; [] |64| 
||$C$L28||:    
        MOVL      XAR4,XAR5             ; [CPU_ALU] 
	.dwpsn	file "../vienna_grid_sync.c",line 65,column 9,is_stmt,isa 0
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("VG_reset")
	.dwattr $C$DW$154, DW_AT_TI_call

        LCR       #||VG_reset||         ; [CPU_ALU] |65| 
        ; call occurs [#||VG_reset||] ; [] |65| 
	.dwpsn	file "../vienna_grid_sync.c",line 65,column 21,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |65| 
        MOVB      *+XAR4[AR0],#1,UNC    ; [CPU_ALU] |65| 
	.dwpsn	file "../vienna_grid_sync.c",line 65,column 48,is_stmt,isa 0
        B         ||$C$L31||,UNC        ; [CPU_ALU] |65| 
        ; branch occurs ; [] |65| 
||$C$L29||:    
	.dwpsn	file "../vienna_grid_sync.c",line 67,column 5,is_stmt,isa 0
        ADDF32    R5H,R0H,R0H           ; [CPU_FPU] |67| 
	.dwpsn	file "../vienna_grid_sync.c",line 68,column 5,is_stmt,isa 0
        SUBF32    R4H,R2H,R3H           ; [CPU_FPU] |68| 
        MOVIZ     R1H,#16147            ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_grid_sync.c",line 67,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16042            ; [CPU_FPU] |67| 
        SUBF32    R2H,R5H,R2H           ; [CPU_FPU] |67| 
	.dwpsn	file "../vienna_grid_sync.c",line 68,column 5,is_stmt,isa 0
        MOVXI     R1H,#52538            ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_grid_sync.c",line 67,column 5,is_stmt,isa 0
        MOVXI     R0H,#43691            ; [CPU_FPU] |67| 
        SUBF32    R2H,R2H,R3H           ; [CPU_FPU] |67| 
	.dwpsn	file "../vienna_grid_sync.c",line 68,column 5,is_stmt,isa 0
        MPYF32    R4H,R1H,R4H           ; [CPU_FPU] |68| 
	.dwpsn	file "../vienna_grid_sync.c",line 67,column 5,is_stmt,isa 0
        MPYF32    R5H,R0H,R2H           ; [CPU_FPU] |67| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        MPYF32    R1H,R4H,R4H           ; [CPU_FPU] |266| 
        MPYF32    R0H,R5H,R5H           ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        SQRTF32   R6H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../vienna_grid_sync.c",line 21,column 5,is_stmt,isa 0
        MOV32     *-SP[10],R6H          ; [CPU_FPU] |21| 
	.dwpsn	file "../vienna_grid_sync.c",line 70,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |70| 
        ANDB      AL,#0                 ; [CPU_ALU] |70| 
        AND       AH,#32640             ; [CPU_ALU] |70| 
        CMPL      ACC,P                 ; [CPU_ALU] |70| 
        B         ||$C$L30||,EQ         ; [CPU_ALU] |70| 
        ; branchcc occurs ; [] |70| 
        MOV32     R0H,*+XAR4[4]         ; [CPU_FPU] |70| 
        CMPF32    R6H,R0H               ; [CPU_FPU] |70| 
        MOVST0    ZF, NF                ; [CPU_FPU] |70| 
        B         ||$C$L32||,GEQ        ; [CPU_ALU] |70| 
        ; branchcc occurs ; [] |70| 
||$C$L30||:    
        MOVL      XAR4,XAR5             ; [CPU_ALU] 
	.dwpsn	file "../vienna_grid_sync.c",line 71,column 9,is_stmt,isa 0
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("VG_reset")
	.dwattr $C$DW$155, DW_AT_TI_call

        LCR       #||VG_reset||         ; [CPU_ALU] |71| 
        ; call occurs [#||VG_reset||] ; [] |71| 
	.dwpsn	file "../vienna_grid_sync.c",line 71,column 21,is_stmt,isa 0
        MOVB      XAR1,#10              ; [CPU_ALU] |71| 
	.dwpsn	file "../vienna_grid_sync.c",line 71,column 40,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |71| 
	.dwpsn	file "../vienna_grid_sync.c",line 71,column 21,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R6H       ; [CPU_FPU] |71| 
	.dwpsn	file "../vienna_grid_sync.c",line 71,column 40,is_stmt,isa 0
        MOVB      *+XAR4[AR0],#2,UNC    ; [CPU_ALU] |71| 
||$C$L31||:    
	.dwpsn	file "../vienna_grid_sync.c",line 71,column 71,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |71| 
        B         ||$C$L49||,UNC        ; [CPU_ALU] |71| 
        ; branch occurs ; [] |71| 
||$C$L32||:    
	.dwpsn	file "../vienna_grid_sync.c",line 73,column 5,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |73| 
        MOV       *+XAR5[AR0],#0        ; [CPU_ALU] |73| 
	.dwpsn	file "../vienna_grid_sync.c",line 74,column 5,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |74| 
	.dwpsn	file "../vienna_grid_sync.c",line 73,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |73| 
	.dwpsn	file "../vienna_grid_sync.c",line 74,column 5,is_stmt,isa 0
        MOV       AL,*+XAR5[AR0]        ; [CPU_ALU] |74| 
	.dwpsn	file "../vienna_grid_sync.c",line 73,column 29,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |73| 
        MOV32     *+XAR5[AR0],R6H       ; [CPU_FPU] |73| 
	.dwpsn	file "../vienna_grid_sync.c",line 74,column 5,is_stmt,isa 0
        B         ||$C$L36||,NEQ        ; [CPU_ALU] |74| 
        ; branchcc occurs ; [] |74| 
	.dwpsn	file "../vienna_grid_sync.c",line 25,column 1,is_stmt,isa 0
        QUADF32   R1H,R0H,R4H,R5H       ; [CPU_FPU] |25| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ATANPUF32 R0H,R0H               ; [CPU_FPU] |25| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |25| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPY2PIF32 R3H,R0H               ; [CPU_FPU] |25| 
	.dwpsn	file "../vienna_grid_sync.c",line 26,column 5,is_stmt,isa 0
        MOVIZ     R7H,#16585            ; [CPU_FPU] |26| 
        MOVXI     R7H,#4059             ; [CPU_FPU] |26| 
        CMPF32    R3H,R7H               ; [CPU_FPU] |26| 
        MOVST0    ZF, NF                ; [CPU_FPU] |26| 
        B         ||$C$L33||,LT         ; [CPU_ALU] |26| 
        ; branchcc occurs ; [] |26| 
	.dwpsn	file "../vienna_grid_sync.c",line 26,column 22,is_stmt,isa 0
        MOVIZ     R0H,#16585            ; [CPU_FPU] |26| 
        MOVXI     R0H,#4059             ; [CPU_FPU] |26| 
        SUBF32    R3H,R3H,R0H           ; [CPU_FPU] |26| 
        NOP       ; [CPU_ALU] 
||$C$L33||:    
	.dwpsn	file "../vienna_grid_sync.c",line 27,column 5,is_stmt,isa 0
        CMPF32    R3H,#0                ; [CPU_FPU] |27| 
        MOVST0    ZF, NF                ; [CPU_FPU] |27| 
        B         ||$C$L34||,GEQ        ; [CPU_ALU] |27| 
        ; branchcc occurs ; [] |27| 
	.dwpsn	file "../vienna_grid_sync.c",line 27,column 16,is_stmt,isa 0
        MOVIZ     R2H,#16585            ; [CPU_FPU] |27| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |27| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |27| 
||$C$L34||:    
	.dwpsn	file "../vienna_grid_sync.c",line 75,column 50,is_stmt,isa 0
        MOVB      XAR1,#22              ; [CPU_ALU] |75| 
	.dwpsn	file "../vienna_grid_sync.c",line 75,column 9,is_stmt,isa 0
        MOV32     *+XAR5[0],R3H         ; [CPU_FPU] |75| 
	.dwpsn	file "../vienna_grid_sync.c",line 76,column 9,is_stmt,isa 0
        MOVIZ     R0H,#16585            ; [CPU_FPU] |76| 
	.dwpsn	file "../vienna_grid_sync.c",line 75,column 50,is_stmt,isa 0
        MOVB      *+XAR5[AR1],#1,UNC    ; [CPU_ALU] |75| 
	.dwpsn	file "../vienna_grid_sync.c",line 76,column 9,is_stmt,isa 0
        MOV32     R1H,*+XAR4[2]         ; [CPU_FPU] |76| 
        MOVXI     R0H,#4059             ; [CPU_FPU] |76| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |76| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR5[4],R0H         ; [CPU_FPU] |76| 
||$C$L35||:    
        MOVB      XAR0,#26              ; [CPU_ALU] 
        MOV       AL,*+XAR5[AR0]        ; [CPU_ALU] 
        B         ||$C$L38||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L36||:    
	.dwpsn	file "../vienna_grid_sync.c",line 83,column 9,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |83| 
	.dwpsn	file "../vienna_grid_sync.c",line 78,column 9,is_stmt,isa 0
        MOV32     R3H,*+XAR5[2]         ; [CPU_FPU] |78| 
	.dwpsn	file "../vienna_grid_sync.c",line 83,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR5[AR0]       ; [CPU_FPU] |83| 
	.dwpsn	file "../vienna_grid_sync.c",line 78,column 9,is_stmt,isa 0
        MOV32     *+XAR5[0],R3H         ; [CPU_FPU] |78| 
	.dwpsn	file "../vienna_grid_sync.c",line 83,column 9,is_stmt,isa 0

        MOV32     R2H,*+XAR4[0]         ; [CPU_FPU] |83| 
||      MPYF32    R7H,R4H,R0H           ; [CPU_FPU] |83| 

        MOVB      XAR0,#20              ; [CPU_ALU] |83| 
        MOVIZ     R0H,#48460            ; [CPU_FPU] |83| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |83| 
        MPYF32    R1H,R0H,R2H           ; [CPU_FPU] |83| 
        MOVIZ     R0H,#16585            ; [CPU_FPU] |83| 
        MOVXI     R0H,#4059             ; [CPU_FPU] |83| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |83| 
        MOV32     R1H,*+XAR5[AR0]       ; [CPU_FPU] |83| 
        MPYF32    R0H,R0H,#16928        ; [CPU_FPU] |83| 
        MPYF32    R1H,R5H,R1H           ; [CPU_FPU] |83| 
        MPYF32    R0H,R6H,R0H           ; [CPU_FPU] |83| 
        SUBF32    R7H,R7H,R1H           ; [CPU_FPU] |83| 
        MPYF32    R0H,R6H,R0H           ; [CPU_FPU] |83| 
        NOP       ; [CPU_ALU] 
        CMPF32    R7H,R0H               ; [CPU_FPU] |83| 
        MOVST0    ZF, NF                ; [CPU_FPU] |83| 
        B         ||$C$L37||,LT         ; [CPU_ALU] |83| 
        ; branchcc occurs ; [] |83| 
	.dwpsn	file "../vienna_grid_sync.c",line 85,column 15,is_stmt,isa 0
        MOVIZ     R0H,#15692            ; [CPU_FPU] |85| 
        MOVIZ     R1H,#16585            ; [CPU_FPU] |85| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |85| 
        MPYF32    R0H,R0H,R2H           ; [CPU_FPU] |85| 
        MOVXI     R1H,#4059             ; [CPU_FPU] |85| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |85| 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R0H,#16928        ; [CPU_FPU] |85| 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R6H,R0H           ; [CPU_FPU] |85| 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R6H,R0H           ; [CPU_FPU] |85| 
        NOP       ; [CPU_ALU] 
        CMPF32    R7H,R0H               ; [CPU_FPU] |85| 
        MOVST0    ZF, NF                ; [CPU_FPU] |85| 
        B         ||$C$L35||,LEQ        ; [CPU_ALU] |85| 
        ; branchcc occurs ; [] |85| 
	.dwpsn	file "../vienna_grid_sync.c",line 86,column 13,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_ALU] |86| 
        MOVB      AL,#0                 ; [CPU_ALU] |86| 
        MOV       *+XAR5[AR0],#0        ; [CPU_ALU] |86| 
        B         ||$C$L38||,UNC        ; [CPU_ALU] |86| 
        ; branch occurs ; [] |86| 
||$C$L37||:    
	.dwpsn	file "../vienna_grid_sync.c",line 84,column 13,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_ALU] |84| 
        MOV       AL,*+XAR5[AR0]        ; [CPU_ALU] |84| 
        MOVB      XAR0,#17              ; [CPU_ALU] |84| 
        CMP       AL,*+XAR4[AR0]        ; [CPU_ALU] |84| 
        B         ||$C$L38||,HIS        ; [CPU_ALU] |84| 
        ; branchcc occurs ; [] |84| 
	.dwpsn	file "../vienna_grid_sync.c",line 84,column 52,is_stmt,isa 0
        MOVB      AH,#1                 ; [CPU_ALU] |84| 
        MOVB      XAR0,#26              ; [CPU_ALU] |84| 
        ADD       AH,AL                 ; [CPU_ALU] |84| 
        ADDB      AL,#1                 ; [CPU_ALU] |84| 
        MOV       *+XAR5[AR0],AH        ; [CPU_FPU] |84| 
||$C$L38||:    
	.dwpsn	file "../vienna_grid_sync.c",line 90,column 5,is_stmt,isa 0
        DIV2PIF32 R1H,R3H               ; [CPU_FPU] |90| 
        DIV2PIF32 R0H,R3H               ; [CPU_FPU] |90| 
        SINPUF32  R2H,R1H               ; [CPU_FPU] |90| 
        COSPUF32  R1H,R0H               ; [CPU_FPU] |90| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../vienna_grid_sync.c",line 90,column 30,is_stmt,isa 0
        MPYF32    R7H,R4H,R1H           ; [CPU_FPU] |90| 
        MOV32     R0H,R2H               ; [CPU_FPU] |90| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |90| 
        MPYF32    R0H,R5H,R0H           ; [CPU_FPU] |90| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R7H           ; [CPU_FPU] |90| 
        MOVB      XAR0,#8               ; [CPU_ALU] |90| 
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |90| 
	.dwpsn	file "../vienna_grid_sync.c",line 91,column 5,is_stmt,isa 0
        DIVF32    R0H,R0H,R6H           ; [CPU_FPU] |91| 
	.dwpsn	file "../vienna_grid_sync.c",line 92,column 5,is_stmt,isa 0
        MOVB      XAR1,#8               ; [CPU_ALU] |92| 
	.dwpsn	file "../vienna_grid_sync.c",line 90,column 5,is_stmt,isa 0
        MPYF32    R1H,R5H,R1H           ; [CPU_FPU] |90| 
        MPYF32    R2H,R4H,R2H           ; [CPU_FPU] |90| 
	.dwpsn	file "../vienna_grid_sync.c",line 91,column 23,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |91| 
	.dwpsn	file "../vienna_grid_sync.c",line 90,column 5,is_stmt,isa 0

        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |91| 
||      ADDF32    R6H,R2H,R1H           ; [CPU_FPU] |90| 

	.dwpsn	file "../vienna_grid_sync.c",line 92,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |92| 
	.dwpsn	file "../vienna_grid_sync.c",line 90,column 5,is_stmt,isa 0
        MOV32     *+XAR5[6],R6H         ; [CPU_FPU] |90| 
	.dwpsn	file "../vienna_grid_sync.c",line 92,column 5,is_stmt,isa 0
        MOV32     R7H,*+XAR5[AR0]       ; [CPU_FPU] |92| 
        MOV32     R2H,*+XAR4[0]         ; [CPU_FPU] |92| 
        MOV32     R1H,*+XAR4[AR1]       ; [CPU_FPU] |92| 
	.dwpsn	file "../vienna_grid_sync.c",line 31,column 1,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |31| 
	.dwpsn	file "../vienna_grid_sync.c",line 92,column 5,is_stmt,isa 0
        MPYF32    R2H,R2H,R1H           ; [CPU_FPU] |92| 
        MOVB      XAR1,#16              ; [CPU_ALU] |92| 
        MPYF32    R2H,R0H,R2H           ; [CPU_FPU] |92| 
	.dwpsn	file "../vienna_grid_sync.c",line 31,column 1,is_stmt,isa 0
        MOVIZ     R1H,#16585            ; [CPU_FPU] |31| 
	.dwpsn	file "../vienna_grid_sync.c",line 92,column 5,is_stmt,isa 0
        ADDF32    R7H,R7H,R2H           ; [CPU_FPU] |92| 
	.dwpsn	file "../vienna_grid_sync.c",line 31,column 1,is_stmt,isa 0
        MOVXI     R1H,#4059             ; [CPU_FPU] |31| 
	.dwpsn	file "../vienna_grid_sync.c",line 92,column 5,is_stmt,isa 0
        MOV32     *+XAR5[AR1],R7H       ; [CPU_FPU] |92| 
	.dwpsn	file "../vienna_grid_sync.c",line 31,column 1,is_stmt,isa 0
        MOV32     R2H,*+XAR4[2]         ; [CPU_FPU] |31| 
        MPYF32    R2H,R1H,R2H           ; [CPU_FPU] |31| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |31| 
        SUBF32    R1H,R1H,R2H           ; [CPU_FPU] |31| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../vienna_grid_sync.c",line 32,column 5,is_stmt,isa 0
        CMPF32    R7H,R1H               ; [CPU_FPU] |32| 
        MOVST0    ZF, NF                ; [CPU_FPU] |32| 
        B         ||$C$L39||,LT         ; [CPU_ALU] |32| 
        ; branchcc occurs ; [] |32| 
        MOVB      XAR0,#12              ; [CPU_ALU] |32| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |32| 
        SUBF32    R1H,R1H,R2H           ; [CPU_FPU] |32| 
        NOP       ; [CPU_ALU] 
        MINF32    R1H,R7H               ; [CPU_FPU] |32| 
||$C$L39||:    
	.dwpsn	file "../vienna_grid_sync.c",line 93,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |93| 
        MOV32     *+XAR5[AR0],R1H       ; [CPU_FPU] |93| 
	.dwpsn	file "../vienna_grid_sync.c",line 96,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR4[6]         ; [CPU_FPU] |96| 
        MPYF32    R2H,R0H,R2H           ; [CPU_FPU] |96| 
        MOV32     R7H,*+XAR4[2]         ; [CPU_FPU] |96| 
        MOV32     *-SP[12],R2H          ; [CPU_FPU] |96| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |96| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |96| 
        MPYF32    R2H,R2H,R7H           ; [CPU_FPU] |96| 
	.dwpsn	file "../vienna_grid_sync.c",line 97,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |97| 
	.dwpsn	file "../vienna_grid_sync.c",line 96,column 5,is_stmt,isa 0
        ADDF32    R2H,R2H,R1H           ; [CPU_FPU] |96| 
	.dwpsn	file "../vienna_grid_sync.c",line 97,column 5,is_stmt,isa 0
        MOV32     R7H,*-SP[12]          ; [CPU_FPU] |97| 
	.dwpsn	file "../vienna_grid_sync.c",line 96,column 5,is_stmt,isa 0
        ADDF32    R2H,R2H,R7H           ; [CPU_FPU] |96| 
	.dwpsn	file "../vienna_grid_sync.c",line 97,column 5,is_stmt,isa 0
        MOV32     R7H,*+XAR4[AR0]       ; [CPU_FPU] |97| 
        CMPF32    R2H,R7H               ; [CPU_FPU] |97| 
        MOVST0    ZF, NF                ; [CPU_FPU] |97| 
        B         ||$C$L40||,LT         ; [CPU_ALU] |97| 
        ; branchcc occurs ; [] |97| 
        MOVB      XAR0,#12              ; [CPU_ALU] |97| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |97| 
        CMPF32    R2H,R1H               ; [CPU_FPU] |97| 
        MOVST0    ZF, NF                ; [CPU_FPU] |97| 
        B         ||$C$L41||,LEQ        ; [CPU_ALU] |97| 
        ; branchcc occurs ; [] |97| 
||$C$L40||:    
	.dwpsn	file "../vienna_grid_sync.c",line 98,column 9,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_ALU] |98| 
        MOVB      XAR6,#8               ; [CPU_ALU] |98| 
        MOVB      *+XAR5[AR0],#8,UNC    ; [CPU_ALU] |98| 
||$C$L41||:    
	.dwpsn	file "../vienna_grid_sync.c",line 99,column 5,is_stmt,isa 0
        MOVB      XAR0,#17              ; [CPU_ALU] |99| 
        CMP       AL,*+XAR4[AR0]        ; [CPU_ALU] |99| 
        B         ||$C$L42||,LO         ; [CPU_ALU] |99| 
        ; branchcc occurs ; [] |99| 
	.dwpsn	file "../vienna_grid_sync.c",line 99,column 45,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |99| 
        MOVB      XAR0,#24              ; [CPU_ALU] |99| 
        ORB       AL,#0x04              ; [CPU_ALU] |99| 
        MOVZ      AR6,AL                ; [CPU_ALU] |99| 
        MOV       *+XAR5[AR0],AL        ; [CPU_ALU] |99| 
||$C$L42||:    
	.dwpsn	file "../vienna_grid_sync.c",line 31,column 1,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |31| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |31| 
	.dwpsn	file "../vienna_grid_sync.c",line 32,column 5,is_stmt,isa 0
        CMPF32    R2H,R1H               ; [CPU_FPU] |32| 
        MOVST0    ZF, NF                ; [CPU_FPU] |32| 
        B         ||$C$L43||,LT         ; [CPU_ALU] |32| 
        ; branchcc occurs ; [] |32| 
        MOVB      XAR0,#12              ; [CPU_ALU] |32| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |32| 
        MINF32    R1H,R2H               ; [CPU_FPU] |32| 
||$C$L43||:    
	.dwpsn	file "../vienna_grid_sync.c",line 101,column 5,is_stmt,isa 0
        MOVIZ     R2H,#15906            ; [CPU_FPU] |101| 
        MOVB      XAR0,#12              ; [CPU_ALU] |101| 
        MOV       AL,AR6                ; [CPU_ALU] |101| 
        MOVXI     R2H,#63875            ; [CPU_FPU] |101| 
        MPYF32    R2H,R2H,R1H           ; [CPU_FPU] |101| 
	.dwpsn	file "../vienna_grid_sync.c",line 100,column 5,is_stmt,isa 0
        MOV32     *+XAR5[4],R1H         ; [CPU_FPU] |100| 
	.dwpsn	file "../vienna_grid_sync.c",line 101,column 5,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R2H       ; [CPU_FPU] |101| 
	.dwpsn	file "../vienna_grid_sync.c",line 102,column 5,is_stmt,isa 0
        B         ||$C$L45||,NEQ        ; [CPU_ALU] |102| 
        ; branchcc occurs ; [] |102| 
        CMPF32    R6H,#0                ; [CPU_FPU] |102| 
        MOVST0    ZF, NF                ; [CPU_FPU] |102| 
        B         ||$C$L45||,LEQ        ; [CPU_ALU] |102| 
        ; branchcc occurs ; [] |102| 
        MOVB      XAR0,#14              ; [CPU_ALU] |102| 
        ABSF32    R0H,R0H               ; [CPU_FPU] |102| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |102| 
        CMPF32    R0H,R1H               ; [CPU_FPU] |102| 
        MOVST0    ZF, NF                ; [CPU_FPU] |102| 
        B         ||$C$L45||,GEQ        ; [CPU_ALU] |102| 
        ; branchcc occurs ; [] |102| 
	.dwpsn	file "../vienna_grid_sync.c",line 104,column 9,is_stmt,isa 0
        MOVB      XAR0,#25              ; [CPU_ALU] |104| 
        MOVB      XAR1,#16              ; [CPU_ALU] |104| 
        MOV       AH,*+XAR5[AR0]        ; [CPU_ALU] |104| 
        MOV       AL,*+XAR4[AR1]        ; [CPU_ALU] |104| 
        CMP       AL,AH                 ; [CPU_ALU] |104| 
        B         ||$C$L44||,LOS        ; [CPU_ALU] |104| 
        ; branchcc occurs ; [] |104| 
	.dwpsn	file "../vienna_grid_sync.c",line 104,column 42,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |104| 
        MOVB      XAR1,#25              ; [CPU_ALU] |104| 
        MOVB      XAR0,#16              ; [CPU_ALU] |104| 
        ADD       AL,AH                 ; [CPU_ALU] |104| 
        ADDB      AH,#1                 ; [CPU_ALU] |104| 
        MOV       *+XAR5[AR1],AL        ; [CPU_ALU] |104| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_FPU] |104| 
||$C$L44||:    
	.dwpsn	file "../vienna_grid_sync.c",line 105,column 9,is_stmt,isa 0
        MOVB      XAR7,#0               ; [CPU_ALU] |105| 
        CMP       AL,AH                 ; [CPU_ALU] |105| 
        MOVB      XAR0,#23              ; [CPU_FPU] |105| 
        MOVB      XAR7,#1,LOS           ; [CPU_ALU] |105| 
        MOV       *+XAR5[AR0],AR7       ; [CPU_ALU] |105| 
        B         ||$C$L46||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L45||:    
	.dwpsn	file "../vienna_grid_sync.c",line 106,column 11,is_stmt,isa 0
        MOVB      XAR1,#25              ; [CPU_ALU] |106| 
	.dwpsn	file "../vienna_grid_sync.c",line 106,column 28,is_stmt,isa 0
        MOVB      XAR0,#23              ; [CPU_ALU] |106| 
	.dwpsn	file "../vienna_grid_sync.c",line 106,column 11,is_stmt,isa 0
        MOV       *+XAR5[AR1],#0        ; [CPU_ALU] |106| 
	.dwpsn	file "../vienna_grid_sync.c",line 106,column 28,is_stmt,isa 0
        MOV       *+XAR5[AR0],#0        ; [CPU_ALU] |106| 
||$C$L46||:    
	.dwpsn	file "../vienna_grid_sync.c",line 25,column 1,is_stmt,isa 0
        MOV32     R0H,*+XAR5[4]         ; [CPU_FPU] |25| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |25| 
        MPYF32    R1H,R1H,R0H           ; [CPU_FPU] |25| 
	.dwpsn	file "../vienna_grid_sync.c",line 26,column 5,is_stmt,isa 0
        MOVIZ     R7H,#16585            ; [CPU_FPU] |26| 
	.dwpsn	file "../vienna_grid_sync.c",line 25,column 1,is_stmt,isa 0
        ADDF32    R3H,R3H,R1H           ; [CPU_FPU] |25| 
	.dwpsn	file "../vienna_grid_sync.c",line 26,column 5,is_stmt,isa 0
        MOVXI     R7H,#4059             ; [CPU_FPU] |26| 
        CMPF32    R3H,R7H               ; [CPU_FPU] |26| 
        MOVST0    ZF, NF                ; [CPU_FPU] |26| 
        B         ||$C$L47||,LT         ; [CPU_ALU] |26| 
        ; branchcc occurs ; [] |26| 
	.dwpsn	file "../vienna_grid_sync.c",line 26,column 22,is_stmt,isa 0
        MOVIZ     R0H,#16585            ; [CPU_FPU] |26| 
        MOVXI     R0H,#4059             ; [CPU_FPU] |26| 
        SUBF32    R3H,R3H,R0H           ; [CPU_FPU] |26| 
        NOP       ; [CPU_ALU] 
||$C$L47||:    
	.dwpsn	file "../vienna_grid_sync.c",line 27,column 5,is_stmt,isa 0
        CMPF32    R3H,#0                ; [CPU_FPU] |27| 
        MOVST0    ZF, NF                ; [CPU_FPU] |27| 
        B         ||$C$L48||,GEQ        ; [CPU_ALU] |27| 
        ; branchcc occurs ; [] |27| 
	.dwpsn	file "../vienna_grid_sync.c",line 27,column 16,is_stmt,isa 0
        MOVIZ     R2H,#16585            ; [CPU_FPU] |27| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |27| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |27| 
||$C$L48||:    
	.dwpsn	file "../vienna_grid_sync.c",line 109,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |109| 
	.dwpsn	file "../vienna_grid_sync.c",line 108,column 5,is_stmt,isa 0
        MOVB      XAR1,#18              ; [CPU_ALU] |108| 
	.dwpsn	file "../vienna_grid_sync.c",line 108,column 31,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |108| 
	.dwpsn	file "../vienna_grid_sync.c",line 107,column 5,is_stmt,isa 0
        MOV32     *+XAR5[2],R3H         ; [CPU_FPU] |107| 
	.dwpsn	file "../vienna_grid_sync.c",line 108,column 31,is_stmt,isa 0
        MOV       AH,AR6                ; [CPU_ALU] |108| 
	.dwpsn	file "../vienna_grid_sync.c",line 108,column 5,is_stmt,isa 0
        MOV32     *+XAR5[AR1],R5H       ; [CPU_FPU] |108| 
	.dwpsn	file "../vienna_grid_sync.c",line 108,column 31,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R4H       ; [CPU_FPU] |108| 
	.dwpsn	file "../vienna_grid_sync.c",line 109,column 5,is_stmt,isa 0
        MOVB      AL,#1,EQ              ; [CPU_ALU] |109| 
||$C$L49||:    
        SUBB      SP,#12                ; [CPU_ARAU] 
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
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$134, DW_AT_TI_end_file("../vienna_grid_sync.c")
	.dwattr $C$DW$134, DW_AT_TI_end_line(0x6e)
	.dwattr $C$DW$134, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$134

	.sect	"pcmfpc_code"
	.clink
	.global	||VG_configure||

$C$DW$157	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$157, DW_AT_name("VG_configure")
	.dwattr $C$DW$157, DW_AT_low_pc(||VG_configure||)
	.dwattr $C$DW$157, DW_AT_high_pc(0x00)
	.dwattr $C$DW$157, DW_AT_linkage_name("VG_configure")
	.dwattr $C$DW$157, DW_AT_external
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$157, DW_AT_decl_file("../vienna_grid_sync.c")
	.dwattr $C$DW$157, DW_AT_decl_line(0x22)
	.dwattr $C$DW$157, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$157, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../vienna_grid_sync.c",line 35,column 1,is_stmt,address ||VG_configure||,isa 0

	.dwfde $C$DW$CIE, ||VG_configure||
$C$DW$158	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$158, DW_AT_name("c")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg12]

$C$DW$159	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$159, DW_AT_name("dt")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$160	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$160, DW_AT_name("hz")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$161	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$161, DW_AT_name("minV")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x33]


;***************************************************************
;* FNAME: VG_configure                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  6 Auto,  0 SOE     *
;***************************************************************

||VG_configure||:
$C$DW$162	.dwtag  DW_TAG_variable
	.dwattr $C$DW$162, DW_AT_name("v")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_breg20 -4]

$C$DW$163	.dwtag  DW_TAG_variable
	.dwattr $C$DW$163, DW_AT_name("v")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_breg20 -6]

$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("v")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_breg20 -8]

;* AL    assigned to $O$K62
;* AR4   assigned to c
$C$DW$165	.dwtag  DW_TAG_variable
	.dwattr $C$DW$165, DW_AT_name("c")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg12]

;* R0    assigned to dt
$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("dt")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to hz
$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("hz")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to minV
$C$DW$168	.dwtag  DW_TAG_variable
	.dwattr $C$DW$168, DW_AT_name("minV")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#8                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOVL      ACC,XAR4              ; [CPU_ALU] |35| 
	.dwpsn	file "../vienna_grid_sync.c",line 37,column 5,is_stmt,isa 0
        B         ||$C$L50||,EQ         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
	.dwpsn	file "../vienna_grid_sync.c",line 21,column 5,is_stmt,isa 0
        MOV32     *-SP[4],R0H           ; [CPU_FPU] |21| 
	.dwpsn	file "../vienna_grid_sync.c",line 37,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |37| 
        MOV       PH,#32640             ; [CPU_ALU] |37| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |37| 
        ANDB      AL,#0                 ; [CPU_ALU] |37| 
        AND       AH,#32640             ; [CPU_ALU] |37| 
        CMPL      ACC,P                 ; [CPU_ALU] |37| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
	.dwpsn	file "../vienna_grid_sync.c",line 21,column 5,is_stmt,isa 0
        MOV32     *-SP[6],R1H           ; [CPU_FPU] |21| 
	.dwpsn	file "../vienna_grid_sync.c",line 37,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |37| 
        ANDB      AL,#0                 ; [CPU_ALU] |37| 
        AND       AH,#32640             ; [CPU_ALU] |37| 
        CMPL      ACC,P                 ; [CPU_ALU] |37| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
	.dwpsn	file "../vienna_grid_sync.c",line 21,column 5,is_stmt,isa 0
        MOV32     *-SP[8],R2H           ; [CPU_FPU] |21| 
	.dwpsn	file "../vienna_grid_sync.c",line 37,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |37| 
        ANDB      AL,#0                 ; [CPU_ALU] |37| 
        AND       AH,#32640             ; [CPU_ALU] |37| 
        CMPL      ACC,P                 ; [CPU_ALU] |37| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
        MOVIZ     R3H,#13702            ; [CPU_FPU] |37| 
        MOVXI     R3H,#14269            ; [CPU_FPU] |37| 
        CMPF32    R0H,R3H               ; [CPU_FPU] |37| 
        MOVST0    ZF, NF                ; [CPU_FPU] |37| 
        B         ||$C$L50||,LT         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
        MOVIZ     R3H,#14979            ; [CPU_FPU] |37| 
        MOVXI     R3H,#4719             ; [CPU_FPU] |37| 
        CMPF32    R0H,R3H               ; [CPU_FPU] |37| 
        MOVST0    ZF, NF                ; [CPU_FPU] |37| 
        B         ||$C$L50||,GT         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
        CMPF32    R1H,#16928            ; [CPU_FPU] |37| 
        MOVST0    ZF, NF                ; [CPU_FPU] |37| 
        B         ||$C$L50||,LT         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
        CMPF32    R1H,#17036            ; [CPU_FPU] |37| 
        MOVST0    ZF, NF                ; [CPU_FPU] |37| 
        B         ||$C$L50||,GT         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
        CMPF32    R2H,#0                ; [CPU_FPU] |37| 
        MOVST0    ZF, NF                ; [CPU_FPU] |37| 
        B         ||$C$L51||,GT         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
||$C$L50||:    
	.dwpsn	file "../vienna_grid_sync.c",line 38,column 73,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |38| 
        B         ||$C$L54||,UNC        ; [CPU_ALU] |38| 
        ; branch occurs ; [] |38| 
||$C$L51||:    
	.dwpsn	file "../vienna_grid_sync.c",line 39,column 22,is_stmt,isa 0
        MOV32     *+XAR4[2],R1H         ; [CPU_FPU] |39| 
	.dwpsn	file "../vienna_grid_sync.c",line 41,column 5,is_stmt,isa 0
        MOVIZ     R3H,#18038            ; [CPU_FPU] |41| 
        MOVB      XAR0,#8               ; [CPU_ALU] |41| 
	.dwpsn	file "../vienna_grid_sync.c",line 44,column 5,is_stmt,isa 0
        MOVIZ     R1H,#15692            ; [CPU_FPU] |44| 
	.dwpsn	file "../vienna_grid_sync.c",line 41,column 5,is_stmt,isa 0
        MOVXI     R3H,#48505            ; [CPU_FPU] |41| 
        MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |41| 
	.dwpsn	file "../vienna_grid_sync.c",line 39,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |39| 
	.dwpsn	file "../vienna_grid_sync.c",line 42,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |42| 
        MOVIZ     R3H,#17275            ; [CPU_FPU] |42| 
	.dwpsn	file "../vienna_grid_sync.c",line 44,column 5,is_stmt,isa 0
        MOVXI     R1H,#52429            ; [CPU_FPU] |44| 
	.dwpsn	file "../vienna_grid_sync.c",line 39,column 39,is_stmt,isa 0
        MOV32     *+XAR4[4],R2H         ; [CPU_FPU] |39| 
	.dwpsn	file "../vienna_grid_sync.c",line 42,column 5,is_stmt,isa 0
        MOVXI     R3H,#21458            ; [CPU_FPU] |42| 
        MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |42| 
	.dwpsn	file "../vienna_grid_sync.c",line 43,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |43| 
        MOVIZ     R3H,#17371            ; [CPU_FPU] |43| 
        MOVXI     R3H,#59736            ; [CPU_FPU] |43| 
        MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |43| 
	.dwpsn	file "../vienna_grid_sync.c",line 47,column 5,is_stmt,isa 0
        MOVIZ     R3H,#15523            ; [CPU_FPU] |47| 
        MOVXI     R3H,#55050            ; [CPU_FPU] |47| 
        DIVF32    R3H,R3H,R0H           ; [CPU_FPU] |47| 
	.dwpsn	file "../vienna_grid_sync.c",line 46,column 5,is_stmt,isa 0
        MOVB      XAR0,#17              ; [CPU_ALU] |46| 
        MOVB      *+XAR4[AR0],#16,UNC   ; [CPU_ALU] |46| 
	.dwpsn	file "../vienna_grid_sync.c",line 44,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |44| 
	.dwpsn	file "../vienna_grid_sync.c",line 40,column 5,is_stmt,isa 0
        MOVIZ     R0H,#17201            ; [CPU_FPU] |40| 
	.dwpsn	file "../vienna_grid_sync.c",line 47,column 5,is_stmt,isa 0
        ADDF32    R3H,R3H,#16128        ; [CPU_FPU] |47| 
	.dwpsn	file "../vienna_grid_sync.c",line 44,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |44| 
	.dwpsn	file "../vienna_grid_sync.c",line 47,column 5,is_stmt,isa 0
        F32TOUI16 R3H,R3H               ; [CPU_FPU] |47| 
	.dwpsn	file "../vienna_grid_sync.c",line 40,column 5,is_stmt,isa 0
        MOVXI     R0H,#46879            ; [CPU_FPU] |40| 
        MOV32     *+XAR4[6],R0H         ; [CPU_FPU] |40| 
	.dwpsn	file "../vienna_grid_sync.c",line 47,column 5,is_stmt,isa 0
        MOV32     ACC,R3H               ; [CPU_FPU] |47| 
        CMPB      AL,#0                 ; [CPU_ALU] |47| 
        B         ||$C$L52||,EQ         ; [CPU_ALU] |47| 
        ; branchcc occurs ; [] |47| 
        MOVB      XAR0,#16              ; [CPU_ALU] 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] 
	.dwpsn	file "../vienna_grid_sync.c",line 48,column 5,is_stmt,isa 0
        B         ||$C$L53||,UNC        ; [CPU_ALU] |48| 
        ; branch occurs ; [] |48| 
||$C$L52||:    
	.dwpsn	file "../vienna_grid_sync.c",line 47,column 27,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |47| 
        MOVB      *+XAR4[AR0],#1,UNC    ; [CPU_ALU] |47| 
||$C$L53||:    
	.dwpsn	file "../vienna_grid_sync.c",line 48,column 5,is_stmt,isa 0
        MOVB      AH,#1                 ; [CPU_ALU] |48| 
||$C$L54||:    
        SUBB      SP,#8                 ; [CPU_ARAU] |48| 
	.dwcfi	cfa_offset, -2
        MOV       AL,AH                 ; [CPU_ALU] |48| 
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$157, DW_AT_TI_end_file("../vienna_grid_sync.c")
	.dwattr $C$DW$157, DW_AT_TI_end_line(0x31)
	.dwattr $C$DW$157, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$157

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

$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x12)
$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$170, DW_AT_name("sample_sec")
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$170, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$170, DW_AT_decl_column(0x0b)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$171, DW_AT_name("nominal_hz")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$171, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$171, DW_AT_decl_column(0x17)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$172, DW_AT_name("min_magnitude_V")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$172, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$172, DW_AT_decl_column(0x23)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$173, DW_AT_name("kp_rad_s")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$173, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$173, DW_AT_decl_column(0x0b)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$174, DW_AT_name("ki_rad_s2")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$174, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$174, DW_AT_decl_column(0x15)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$175, DW_AT_name("omega_min_rad_s")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$175, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$175, DW_AT_decl_column(0x20)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$176, DW_AT_name("omega_max_rad_s")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$176, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$176, DW_AT_decl_column(0x31)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$177, DW_AT_name("lock_phase_sin_max")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$177, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x10)
	.dwattr $C$DW$177, DW_AT_decl_column(0x0b)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$178, DW_AT_name("lock_samples")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$178, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x11)
	.dwattr $C$DW$178, DW_AT_decl_column(0x0e)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$179, DW_AT_name("reverse_samples")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$179, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x11)
	.dwattr $C$DW$179, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$21, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("VG_Config")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$29, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x12)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$180	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$29)

$C$DW$T$30	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$180)

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$181	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$31)

$C$DW$T$32	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$181)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$182	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$33)

$C$DW$T$34	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$182)

	.dwendtag $C$DW$TU$34


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x1c)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$183, DW_AT_name("theta_rad")
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$183, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0x14)
	.dwattr $C$DW$183, DW_AT_decl_column(0x0b)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$184, DW_AT_name("next_theta_rad")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$184, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0x14)
	.dwattr $C$DW$184, DW_AT_decl_column(0x16)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$185, DW_AT_name("omega_rad_s")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$185, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0x14)
	.dwattr $C$DW$185, DW_AT_decl_column(0x26)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$186, DW_AT_name("ed_V")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$186, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0x15)
	.dwattr $C$DW$186, DW_AT_decl_column(0x0b)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$187, DW_AT_name("eq_V")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$187, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x15)
	.dwattr $C$DW$187, DW_AT_decl_column(0x11)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$188, DW_AT_name("magnitude_V")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$188, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0x15)
	.dwattr $C$DW$188, DW_AT_decl_column(0x17)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$189, DW_AT_name("frequency_hz")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$189, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0x15)
	.dwattr $C$DW$189, DW_AT_decl_column(0x24)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$190, DW_AT_name("phase_error")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$190, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0x16)
	.dwattr $C$DW$190, DW_AT_decl_column(0x0b)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$191, DW_AT_name("integrator_rad_s")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$191, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0x16)
	.dwattr $C$DW$191, DW_AT_decl_column(0x18)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$192, DW_AT_name("previous_alpha_V")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$192, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0x16)
	.dwattr $C$DW$192, DW_AT_decl_column(0x2a)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$193, DW_AT_name("previous_beta_V")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$193, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0x16)
	.dwattr $C$DW$193, DW_AT_decl_column(0x3c)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$194, DW_AT_name("initialized")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$194, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$194, DW_AT_decl_line(0x17)
	.dwattr $C$DW$194, DW_AT_decl_column(0x0e)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$195, DW_AT_name("locked")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$195, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0x17)
	.dwattr $C$DW$195, DW_AT_decl_column(0x1b)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$196, DW_AT_name("faults")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$196, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x17)
	.dwattr $C$DW$196, DW_AT_decl_column(0x23)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$197, DW_AT_name("lock_count")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$197, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0x17)
	.dwattr $C$DW$197, DW_AT_decl_column(0x2b)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$198, DW_AT_name("reverse_count")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$198, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0x17)
	.dwattr $C$DW$198, DW_AT_decl_column(0x37)

	.dwattr $C$DW$T$22, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37
$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("VG_State")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$37, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x18)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$199	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$38)

$C$DW$T$39	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$199)

	.dwendtag $C$DW$TU$39


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x02)
$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$200, DW_AT_name("f")
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$200, DW_AT_decl_file("../vienna_grid_sync.c")
	.dwattr $C$DW$200, DW_AT_decl_line(0x14)
	.dwattr $C$DW$200, DW_AT_decl_column(0x13)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$201, DW_AT_name("u")
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$201, DW_AT_decl_file("../vienna_grid_sync.c")
	.dwattr $C$DW$201, DW_AT_decl_line(0x14)
	.dwattr $C$DW$201, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$25, DW_AT_decl_file("../vienna_grid_sync.c")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x14)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x0b)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


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


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x1b)

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$20


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


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$23, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$24


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


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49
$C$DW$202	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$16)

$C$DW$T$49	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$202)

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$T$50	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$50


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57
$C$DW$203	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$50)

$C$DW$T$57	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$203)

	.dwendtag $C$DW$TU$57


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61
$C$DW$T$61	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$61, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62
$C$DW$204	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$61)

$C$DW$T$62	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$204)

	.dwendtag $C$DW$TU$62


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63
$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64
$C$DW$205	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$63)

$C$DW$T$64	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$205)

	.dwendtag $C$DW$TU$64

