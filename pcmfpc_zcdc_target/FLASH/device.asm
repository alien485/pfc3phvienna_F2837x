;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                             PC v25.11.1.LTS *
;* Date/Time created: Mon Oct 26 09:58:51 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../device/device.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v25.11.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\FLASH")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("Flash_initModule")
	.dwattr $C$DW$1, DW_AT_linkage_name("Flash_initModule")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/flash.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x652)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$32)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$32)

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$34)

	.dwendtag $C$DW$1

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("RamfuncsLoadStart")
	.dwattr $C$DW$5, DW_AT_linkage_name("RamfuncsLoadStart")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("..\device\device.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x93)
	.dwattr $C$DW$5, DW_AT_decl_column(0x11)

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("RamfuncsLoadSize")
	.dwattr $C$DW$6, DW_AT_linkage_name("RamfuncsLoadSize")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("..\device\device.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x95)
	.dwattr $C$DW$6, DW_AT_decl_column(0x11)

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("RamfuncsRunStart")
	.dwattr $C$DW$7, DW_AT_linkage_name("RamfuncsRunStart")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("..\device\device.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x96)
	.dwattr $C$DW$7, DW_AT_decl_column(0x11)

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("isrcodefuncsLoadStart")
	.dwattr $C$DW$8, DW_AT_linkage_name("isrcodefuncsLoadStart")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("..\device\device.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$8, DW_AT_decl_column(0x11)

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("isrcodefuncsLoadSize")
	.dwattr $C$DW$9, DW_AT_linkage_name("isrcodefuncsLoadSize")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("..\device\device.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$9, DW_AT_decl_column(0x11)

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("isrcodefuncsRunStart")
	.dwattr $C$DW$10, DW_AT_linkage_name("isrcodefuncsRunStart")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("..\device\device.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$10, DW_AT_decl_column(0x11)

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("PCCodeLoadStart")
	.dwattr $C$DW$11, DW_AT_linkage_name("PCCodeLoadStart")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("../device/device.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x39)
	.dwattr $C$DW$11, DW_AT_decl_column(0x19)

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("PCCodeLoadSize")
	.dwattr $C$DW$12, DW_AT_linkage_name("PCCodeLoadSize")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("../device/device.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x39)
	.dwattr $C$DW$12, DW_AT_decl_column(0x29)

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("PCCodeRunStart")
	.dwattr $C$DW$13, DW_AT_linkage_name("PCCodeRunStart")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("../device/device.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0x39)
	.dwattr $C$DW$13, DW_AT_decl_column(0x38)


$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("SysCtl_setClock")
	.dwattr $C$DW$14, DW_AT_linkage_name("SysCtl_setClock")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0xd2d)
	.dwattr $C$DW$14, DW_AT_decl_column(0x01)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$32)

	.dwendtag $C$DW$14


$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("__eallow")
	.dwattr $C$DW$16, DW_AT_linkage_name("__eallow")
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwendtag $C$DW$16


$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("__edis")
	.dwattr $C$DW$17, DW_AT_linkage_name("__edis")
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwendtag $C$DW$17

;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\opt2000.exe C:\\Users\\YAN\\AppData\\Local\\Temp\\{53600B6D-DD1A-4D63-9EDC-F020B8B04D4B} C:\\Users\\YAN\\AppData\\Local\\Temp\\{4CF79843-B871-4BE7-A7AB-12FB373BAD10} --advice:performance=stdout 
;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\acia2000.exe -@C:\\Users\\YAN\\AppData\\Local\\Temp\\{FEF53B12-32A7-438C-A919-8D940D908323} 
	.sect	".text"
	.clink
	.global	||__error__||

$C$DW$18	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$18, DW_AT_name("__error__")
	.dwattr $C$DW$18, DW_AT_low_pc(||__error__||)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_linkage_name("__error__")
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("../device/device.c")
	.dwattr $C$DW$18, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$18, DW_AT_decl_column(0x06)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../device/device.c",line 301,column 1,is_stmt,address ||__error__||,isa 0

	.dwfde $C$DW$CIE, ||__error__||
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_name("filename")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg12]

$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_name("line")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: __error__                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__error__||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
 ESTOP0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$18, DW_AT_TI_end_file("../device/device.c")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x133)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text"
	.clink
	.global	||Device_enableUnbondedGPIOPullupsFor176Pin||

$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("Device_enableUnbondedGPIOPullupsFor176Pin")
	.dwattr $C$DW$22, DW_AT_low_pc(||Device_enableUnbondedGPIOPullupsFor176Pin||)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_linkage_name("Device_enableUnbondedGPIOPullupsFor176Pin")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("../device/device.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$22, DW_AT_decl_column(0x06)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../device/device.c",line 220,column 1,is_stmt,address ||Device_enableUnbondedGPIOPullupsFor176Pin||,isa 0

	.dwfde $C$DW$CIE, ||Device_enableUnbondedGPIOPullupsFor176Pin||

;***************************************************************
;* FNAME: Device_enableUnbondedGPIOPullupsFor176Pin FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Device_enableUnbondedGPIOPullupsFor176Pin||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../device/device.c",line 221,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |221| 
	.dwpsn	file "../device/device.c",line 222,column 5,is_stmt,isa 0
        MOV       AL,#65535             ; [CPU_ALU] |222| 
        MOV       AH,#32767             ; [CPU_ALU] |222| 
	.dwpsn	file "../device/device.c",line 223,column 5,is_stmt,isa 0
        MOVB      XAR7,#8               ; [CPU_ALU] |223| 
	.dwpsn	file "../device/device.c",line 224,column 5,is_stmt,isa 0
        MOVB      XAR6,#32              ; [CPU_ALU] |224| 
	.dwpsn	file "../device/device.c",line 225,column 5,is_stmt,isa 0
        MOVL      XAR4,#65024           ; [CPU_ARAU] |225| 
	.dwpsn	file "../device/device.c",line 222,column 5,is_stmt,isa 0
        MOV32     *(0:0x7c8c),ACC       ; [CPU_FPU] |222| 
	.dwpsn	file "../device/device.c",line 223,column 5,is_stmt,isa 0
        MOV32     *(0:0x7ccc),XAR7      ; [CPU_FPU] |223| 
	.dwpsn	file "../device/device.c",line 224,column 5,is_stmt,isa 0
        MOV32     *(0:0x7d0c),XAR6      ; [CPU_FPU] |224| 
	.dwpsn	file "../device/device.c",line 225,column 5,is_stmt,isa 0
        MOV32     *(0:0x7d4c),XAR4      ; [CPU_FPU] |225| 
	.dwpsn	file "../device/device.c",line 226,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |226| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("../device/device.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0xe3)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text"
	.clink
	.global	||Device_enableUnbondedGPIOPullupsFor100Pin||

$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("Device_enableUnbondedGPIOPullupsFor100Pin")
	.dwattr $C$DW$24, DW_AT_low_pc(||Device_enableUnbondedGPIOPullupsFor100Pin||)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_linkage_name("Device_enableUnbondedGPIOPullupsFor100Pin")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("../device/device.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$24, DW_AT_decl_column(0x06)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../device/device.c",line 248,column 1,is_stmt,address ||Device_enableUnbondedGPIOPullupsFor100Pin||,isa 0

	.dwfde $C$DW$CIE, ||Device_enableUnbondedGPIOPullupsFor100Pin||

;***************************************************************
;* FNAME: Device_enableUnbondedGPIOPullupsFor100Pin FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Device_enableUnbondedGPIOPullupsFor100Pin||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../device/device.c",line 249,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |249| 
	.dwpsn	file "../device/device.c",line 250,column 5,is_stmt,isa 0
        MOVL      XAR4,#4193308         ; [CPU_ARAU] |250| 
	.dwpsn	file "../device/device.c",line 251,column 5,is_stmt,isa 0
        MOV       AL,#3584              ; [CPU_ALU] |251| 
        MOV       AH,#64512             ; [CPU_ALU] |251| 
	.dwpsn	file "../device/device.c",line 250,column 5,is_stmt,isa 0
        MOV32     *(0:0x7c0c),XAR4      ; [CPU_FPU] |250| 
	.dwpsn	file "../device/device.c",line 253,column 5,is_stmt,isa 0
        MOVB      XAR6,#8               ; [CPU_ALU] |253| 
	.dwpsn	file "../device/device.c",line 254,column 5,is_stmt,isa 0
        MOVB      XAR7,#0               ; [CPU_ALU] |254| 
	.dwpsn	file "../device/device.c",line 251,column 5,is_stmt,isa 0
        MOV32     *(0:0x7c4c),ACC       ; [CPU_FPU] |251| 
	.dwpsn	file "../device/device.c",line 252,column 5,is_stmt,isa 0
        MOV       AL,#17383             ; [CPU_ALU] |252| 
        MOV       AH,#7920              ; [CPU_ALU] |252| 
	.dwpsn	file "../device/device.c",line 255,column 5,is_stmt,isa 0
        MOVL      XAR4,#65024           ; [CPU_ARAU] |255| 
	.dwpsn	file "../device/device.c",line 252,column 5,is_stmt,isa 0
        MOV32     *(0:0x7c8c),ACC       ; [CPU_FPU] |252| 
	.dwpsn	file "../device/device.c",line 253,column 5,is_stmt,isa 0
        MOV32     *(0:0x7ccc),XAR6      ; [CPU_FPU] |253| 
	.dwpsn	file "../device/device.c",line 254,column 5,is_stmt,isa 0
        MOV32     *(0:0x7d0c),XAR7      ; [CPU_FPU] |254| 
	.dwpsn	file "../device/device.c",line 255,column 5,is_stmt,isa 0
        MOV32     *(0:0x7d4c),XAR4      ; [CPU_FPU] |255| 
	.dwpsn	file "../device/device.c",line 256,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |256| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$24, DW_AT_TI_end_file("../device/device.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x101)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text"
	.clink
	.global	||Device_enableUnbondedGPIOPullups||

$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("Device_enableUnbondedGPIOPullups")
	.dwattr $C$DW$26, DW_AT_low_pc(||Device_enableUnbondedGPIOPullups||)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_linkage_name("Device_enableUnbondedGPIOPullups")
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("../device/device.c")
	.dwattr $C$DW$26, DW_AT_decl_line(0x109)
	.dwattr $C$DW$26, DW_AT_decl_column(0x06)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../device/device.c",line 266,column 1,is_stmt,address ||Device_enableUnbondedGPIOPullups||,isa 0

	.dwfde $C$DW$CIE, ||Device_enableUnbondedGPIOPullups||

;***************************************************************
;* FNAME: Device_enableUnbondedGPIOPullups FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Device_enableUnbondedGPIOPullups||:
;* AL    assigned to pinCount
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("pinCount")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../device/device.c",line 270,column 23,is_stmt,isa 0
        MOVL      XAR4,#380936          ; [CPU_ARAU] |270| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |270| 
        SFR       ACC,8                 ; [CPU_ALU] |270| 
        ANDB      AL,#0x07              ; [CPU_ALU] |270| 
        CMPB      AL,#5                 ; [CPU_ALU] |270| 
        B         ||$C$L1||,EQ          ; [CPU_ALU] |270| 
        ; branchcc occurs ; [] |270| 
	.dwpsn	file "../device/device.c",line 283,column 10,is_stmt,isa 0
        CMPB      AL,#6                 ; [CPU_ALU] |283| 
        B         ||$C$L2||,NEQ         ; [CPU_ALU] |283| 
        ; branchcc occurs ; [] |283| 
	.dwcfi	remember_state
	.dwpsn	file "../device/device.c",line 285,column 9,is_stmt,isa 0
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("Device_enableUnbondedGPIOPullupsFor176Pin")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #||Device_enableUnbondedGPIOPullupsFor176Pin|| ; [CPU_ALU] |285| 
        ; call occurs [#||Device_enableUnbondedGPIOPullupsFor176Pin||] ; [] |285| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L1||:    
	.dwpsn	file "../device/device.c",line 281,column 9,is_stmt,isa 0
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("Device_enableUnbondedGPIOPullupsFor100Pin")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #||Device_enableUnbondedGPIOPullupsFor100Pin|| ; [CPU_ALU] |281| 
        ; call occurs [#||Device_enableUnbondedGPIOPullupsFor100Pin||] ; [] |281| 
||$C$L2||:    
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$26, DW_AT_TI_end_file("../device/device.c")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x125)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".text"
	.clink
	.global	||Device_initGPIO||

$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("Device_initGPIO")
	.dwattr $C$DW$32, DW_AT_low_pc(||Device_initGPIO||)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_linkage_name("Device_initGPIO")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("../device/device.c")
	.dwattr $C$DW$32, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$32, DW_AT_decl_column(0x06)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../device/device.c",line 190,column 1,is_stmt,address ||Device_initGPIO||,isa 0

	.dwfde $C$DW$CIE, ||Device_initGPIO||

;***************************************************************
;* FNAME: Device_initGPIO               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Device_initGPIO||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 736,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |736| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 737,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7c3c)       ; [CPU_FPU] |737| 
        MOVB      ACC,#0                ; [CPU_ALU] |737| 
        MOV32     *(0:0x7c3c),ACC       ; [CPU_FPU] |737| 
        MOV32     XAR6,*(0:0x7c7c)      ; [CPU_FPU] |737| 
        MOV32     *(0:0x7c7c),ACC       ; [CPU_FPU] |737| 
        MOV32     XAR6,*(0:0x7cbc)      ; [CPU_FPU] |737| 
        MOV32     *(0:0x7cbc),ACC       ; [CPU_FPU] |737| 
        MOV32     XAR6,*(0:0x7cfc)      ; [CPU_FPU] |737| 
        MOV32     *(0:0x7cfc),ACC       ; [CPU_FPU] |737| 
        MOV32     XAR6,*(0:0x7d3c)      ; [CPU_FPU] |737| 
        MOV32     *(0:0x7d3c),ACC       ; [CPU_FPU] |737| 
        MOV32     XAR6,*(0:0x7d7c)      ; [CPU_FPU] |737| 
        MOV32     *(0:0x7d7c),ACC       ; [CPU_FPU] |737| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 738,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |738| 
	.dwpsn	file "../device/device.c",line 204,column 5,is_stmt,isa 0
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("Device_enableUnbondedGPIOPullups")
	.dwattr $C$DW$33, DW_AT_TI_call

        LCR       #||Device_enableUnbondedGPIOPullups|| ; [CPU_ALU] |204| 
        ; call occurs [#||Device_enableUnbondedGPIOPullups||] ; [] |204| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$32, DW_AT_TI_end_file("../device/device.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0xcd)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text"
	.clink
	.global	||Device_enableAllPeripherals||

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("Device_enableAllPeripherals")
	.dwattr $C$DW$35, DW_AT_low_pc(||Device_enableAllPeripherals||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("Device_enableAllPeripherals")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_decl_file("../device/device.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x60)
	.dwattr $C$DW$35, DW_AT_decl_column(0x06)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../device/device.c",line 97,column 1,is_stmt,address ||Device_enableAllPeripherals||,isa 0

	.dwfde $C$DW$CIE, ||Device_enableAllPeripherals||

;***************************************************************
;* FNAME: Device_enableAllPeripherals   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Device_enableAllPeripherals||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 990,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |990| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 995,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |995| 
        MOVL      XAR4,#381730          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#4                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#8                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#16               ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#32               ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AH,#1                 ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AH,#4                 ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AH,#8                 ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
        MOVB      ACC,#1                ; [CPU_ALU] |995| 
        MOVL      XAR4,#381732          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#2                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#1                ; [CPU_ALU] |995| 
        MOVL      XAR4,#381734          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#2                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#4                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#8                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#16               ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#32               ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#64               ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#128              ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AL,#256               ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AL,#512               ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AL,#1024              ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AL,#2048              ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
        MOVB      ACC,#1                ; [CPU_ALU] |995| 
        MOVL      XAR4,#381736          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#2                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#4                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#8                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#16               ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#32               ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#1                ; [CPU_ALU] |995| 
        MOVL      XAR4,#381738          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#2                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#4                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#1                ; [CPU_ALU] |995| 
        MOVL      XAR4,#381742          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#2                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#1                ; [CPU_ALU] |995| 
        MOVL      XAR4,#381744          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#2                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#4                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#8                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#1                ; [CPU_ALU] |995| 
        MOVL      XAR4,#381746          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#2                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#4                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#1                ; [CPU_ALU] |995| 
        MOVL      XAR4,#381748          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#2                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#1                ; [CPU_ALU] |995| 
        MOVL      XAR4,#381750          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#2                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#1                ; [CPU_ALU] |995| 
        MOVL      XAR4,#381752          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#2                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AH,#1                 ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
        MOVB      ACC,#1                ; [CPU_ALU] |995| 
        MOVL      XAR4,#381754          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVL      XAR4,#381756          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#2                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#4                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#8                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#1                ; [CPU_ALU] |995| 
        MOVL      XAR4,#381758          ; [CPU_ARAU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#2                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#4                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#8                ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#16               ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#32               ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#64               ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVB      ACC,#128              ; [CPU_ALU] |995| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |995| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |995| 
        MOVL      XAR4,#381762          ; [CPU_ARAU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AH,#1                 ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AH,#2                 ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AH,#4                 ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 996,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |996| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../device/device.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0xb6)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text"
	.clink
	.global	||Device_init||

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("Device_init")
	.dwattr $C$DW$37, DW_AT_low_pc(||Device_init||)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_linkage_name("Device_init")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_decl_file("../device/device.c")
	.dwattr $C$DW$37, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$37, DW_AT_decl_column(0x06)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../device/device.c",line 31,column 1,is_stmt,address ||Device_init||,isa 0

	.dwfde $C$DW$CIE, ||Device_init||

;***************************************************************
;* FNAME: Device_init                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Device_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1948,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1948| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1953,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7029)        ; [CPU_ALU] |1953| 
        ORB       AL,#0x68              ; [CPU_ALU] |1953| 
        MOV       *(0:0x7029),AL        ; [CPU_ALU] |1953| 
 RPT #69 || NOP
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1956,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1956| 
	.dwpsn	file "../device/device.c",line 45,column 5,is_stmt,isa 0
        MOVL      XAR5,#||RamfuncsLoadStart|| ; [CPU_ARAU] |45| 
        MOV       AH,#$HI16(||RamfuncsLoadSize||) + 0 ; [CPU_ALU] |45| 
        MOVL      XAR4,#||RamfuncsRunStart|| ; [CPU_ARAU] |45| 
        SPM       #0                    ; [CPU_ALU] 
        MOV       AL,#$LO16(||RamfuncsLoadSize||) + 0 ; [CPU_ALU] |45| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("memcpy")
	.dwattr $C$DW$38, DW_AT_TI_call

        LCR       #||memcpy||           ; [CPU_ALU] |45| 
        ; call occurs [#||memcpy||] ; [] |45| 
	.dwpsn	file "../device/device.c",line 51,column 5,is_stmt,isa 0
        MOVL      XAR4,#391936          ; [CPU_ARAU] |51| 
        MOVL      XAR5,#391168          ; [CPU_ARAU] |51| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |51| 
        MOVL      ACC,XAR5              ; [CPU_ALU] |51| 
        MOVB      XAR4,#3               ; [CPU_ALU] |51| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("Flash_initModule")
	.dwattr $C$DW$39, DW_AT_TI_call

        LCR       #||Flash_initModule|| ; [CPU_ALU] |51| 
        ; call occurs [#||Flash_initModule||] ; [] |51| 
	.dwpsn	file "../device/device.c",line 54,column 5,is_stmt,isa 0
        MOV       AL,#$LO16(||isrcodefuncsLoadSize||) + 0 ; [CPU_ALU] |54| 
        MOV       AH,#$HI16(||isrcodefuncsLoadSize||) + 0 ; [CPU_ALU] |54| 
        MOVL      XAR5,#||isrcodefuncsLoadStart|| ; [CPU_ARAU] |54| 
        MOVL      XAR4,#||isrcodefuncsRunStart|| ; [CPU_ARAU] |54| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("memcpy")
	.dwattr $C$DW$40, DW_AT_TI_call

        LCR       #||memcpy||           ; [CPU_ALU] |54| 
        ; call occurs [#||memcpy||] ; [] |54| 
	.dwpsn	file "../device/device.c",line 58,column 9,is_stmt,isa 0
        MOV       AL,#$LO16(||PCCodeLoadSize||) + 0 ; [CPU_ALU] |58| 
        MOV       AH,#$HI16(||PCCodeLoadSize||) + 0 ; [CPU_ALU] |58| 
        MOVL      XAR5,#||PCCodeLoadStart|| ; [CPU_ARAU] |58| 
        MOVL      XAR4,#||PCCodeRunStart|| ; [CPU_ARAU] |58| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("memcpy")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #||memcpy||           ; [CPU_ALU] |58| 
        ; call occurs [#||memcpy||] ; [] |58| 
	.dwpsn	file "../device/device.c",line 65,column 5,is_stmt,isa 0
        MOV       AL,#148               ; [CPU_ALU] |65| 
        MOV       AH,#32769             ; [CPU_ALU] |65| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("SysCtl_setClock")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #||SysCtl_setClock||  ; [CPU_ALU] |65| 
        ; call occurs [#||SysCtl_setClock||] ; [] |65| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1183,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1183| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1184,column 5,is_stmt,isa 0
        MOVL      XAR4,#381484          ; [CPU_ARAU] |1184| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1184| 
        AND       AL,#65528             ; [CPU_ALU] |1184| 
        ORB       AL,#0x02              ; [CPU_ALU] |1184| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1184| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1187,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1187| 
	.dwpsn	file "../device/device.c",line 85,column 5,is_stmt,isa 0
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("Device_enableAllPeripherals")
	.dwattr $C$DW$43, DW_AT_TI_call

        LCR       #||Device_enableAllPeripherals|| ; [CPU_ALU] |85| 
        ; call occurs [#||Device_enableAllPeripherals||] ; [] |85| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("../device/device.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x56)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||Flash_initModule||
	.global	||RamfuncsLoadStart||
	.global	||RamfuncsLoadSize||
	.global	||RamfuncsRunStart||
	.global	||isrcodefuncsLoadStart||
	.global	||isrcodefuncsLoadSize||
	.global	||isrcodefuncsRunStart||
	.global	||PCCodeLoadStart||
	.global	||PCCodeLoadSize||
	.global	||PCCodeRunStart||
	.global	||SysCtl_setClock||
	.global	||memcpy||

;***************************************************************
;* BUILD ATTRIBUTES                                            *
;***************************************************************
	.battr "c28xabi", Tag_File, 1, Tag_float_args(0)
	.battr "c28xabi", Tag_File, 1, Tag_double_args(0)
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

$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19

$C$DW$T$19	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x01)
$C$DW$45	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$45, DW_AT_name("SYSCTL_PERIPH_CLK_CLA1")
	.dwattr $C$DW$45, DW_AT_const_value(0x00)
	.dwattr $C$DW$45, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x183)
	.dwattr $C$DW$45, DW_AT_decl_column(0x05)

$C$DW$46	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$46, DW_AT_name("SYSCTL_PERIPH_CLK_DMA")
	.dwattr $C$DW$46, DW_AT_const_value(0x200)
	.dwattr $C$DW$46, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x184)
	.dwattr $C$DW$46, DW_AT_decl_column(0x05)

$C$DW$47	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$47, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER0")
	.dwattr $C$DW$47, DW_AT_const_value(0x300)
	.dwattr $C$DW$47, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x185)
	.dwattr $C$DW$47, DW_AT_decl_column(0x05)

$C$DW$48	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$48, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER1")
	.dwattr $C$DW$48, DW_AT_const_value(0x400)
	.dwattr $C$DW$48, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x186)
	.dwattr $C$DW$48, DW_AT_decl_column(0x05)

$C$DW$49	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$49, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER2")
	.dwattr $C$DW$49, DW_AT_const_value(0x500)
	.dwattr $C$DW$49, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x187)
	.dwattr $C$DW$49, DW_AT_decl_column(0x05)

$C$DW$50	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$50, DW_AT_name("SYSCTL_PERIPH_CLK_HRPWM")
	.dwattr $C$DW$50, DW_AT_const_value(0x1000)
	.dwattr $C$DW$50, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0x188)
	.dwattr $C$DW$50, DW_AT_decl_column(0x05)

$C$DW$51	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$51, DW_AT_name("SYSCTL_PERIPH_CLK_TBCLKSYNC")
	.dwattr $C$DW$51, DW_AT_const_value(0x1200)
	.dwattr $C$DW$51, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$51, DW_AT_decl_line(0x189)
	.dwattr $C$DW$51, DW_AT_decl_column(0x05)

$C$DW$52	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$52, DW_AT_name("SYSCTL_PERIPH_CLK_GTBCLKSYNC")
	.dwattr $C$DW$52, DW_AT_const_value(0x1300)
	.dwattr $C$DW$52, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$52, DW_AT_decl_column(0x05)

$C$DW$53	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$53, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF1")
	.dwattr $C$DW$53, DW_AT_const_value(0x01)
	.dwattr $C$DW$53, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$53, DW_AT_decl_column(0x05)

$C$DW$54	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$54, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF2")
	.dwattr $C$DW$54, DW_AT_const_value(0x101)
	.dwattr $C$DW$54, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$54, DW_AT_decl_column(0x05)

$C$DW$55	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$55, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM1")
	.dwattr $C$DW$55, DW_AT_const_value(0x02)
	.dwattr $C$DW$55, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$55, DW_AT_decl_column(0x05)

$C$DW$56	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$56, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM2")
	.dwattr $C$DW$56, DW_AT_const_value(0x102)
	.dwattr $C$DW$56, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$56, DW_AT_decl_column(0x05)

$C$DW$57	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$57, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM3")
	.dwattr $C$DW$57, DW_AT_const_value(0x202)
	.dwattr $C$DW$57, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$57, DW_AT_decl_column(0x05)

$C$DW$58	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$58, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM4")
	.dwattr $C$DW$58, DW_AT_const_value(0x302)
	.dwattr $C$DW$58, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0x190)
	.dwattr $C$DW$58, DW_AT_decl_column(0x05)

$C$DW$59	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$59, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM5")
	.dwattr $C$DW$59, DW_AT_const_value(0x402)
	.dwattr $C$DW$59, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0x191)
	.dwattr $C$DW$59, DW_AT_decl_column(0x05)

$C$DW$60	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$60, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM6")
	.dwattr $C$DW$60, DW_AT_const_value(0x502)
	.dwattr $C$DW$60, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0x192)
	.dwattr $C$DW$60, DW_AT_decl_column(0x05)

$C$DW$61	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$61, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM7")
	.dwattr $C$DW$61, DW_AT_const_value(0x602)
	.dwattr $C$DW$61, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0x193)
	.dwattr $C$DW$61, DW_AT_decl_column(0x05)

$C$DW$62	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$62, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM8")
	.dwattr $C$DW$62, DW_AT_const_value(0x702)
	.dwattr $C$DW$62, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0x194)
	.dwattr $C$DW$62, DW_AT_decl_column(0x05)

$C$DW$63	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$63, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM9")
	.dwattr $C$DW$63, DW_AT_const_value(0x802)
	.dwattr $C$DW$63, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0x195)
	.dwattr $C$DW$63, DW_AT_decl_column(0x05)

$C$DW$64	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$64, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM10")
	.dwattr $C$DW$64, DW_AT_const_value(0x902)
	.dwattr $C$DW$64, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0x196)
	.dwattr $C$DW$64, DW_AT_decl_column(0x05)

$C$DW$65	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$65, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM11")
	.dwattr $C$DW$65, DW_AT_const_value(0xa02)
	.dwattr $C$DW$65, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$65, DW_AT_decl_line(0x197)
	.dwattr $C$DW$65, DW_AT_decl_column(0x05)

$C$DW$66	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$66, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM12")
	.dwattr $C$DW$66, DW_AT_const_value(0xb02)
	.dwattr $C$DW$66, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0x198)
	.dwattr $C$DW$66, DW_AT_decl_column(0x05)

$C$DW$67	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$67, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP1")
	.dwattr $C$DW$67, DW_AT_const_value(0x03)
	.dwattr $C$DW$67, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0x199)
	.dwattr $C$DW$67, DW_AT_decl_column(0x05)

$C$DW$68	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$68, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP2")
	.dwattr $C$DW$68, DW_AT_const_value(0x103)
	.dwattr $C$DW$68, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$68, DW_AT_decl_column(0x05)

$C$DW$69	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$69, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP3")
	.dwattr $C$DW$69, DW_AT_const_value(0x203)
	.dwattr $C$DW$69, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$69, DW_AT_decl_column(0x05)

$C$DW$70	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$70, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP4")
	.dwattr $C$DW$70, DW_AT_const_value(0x303)
	.dwattr $C$DW$70, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$70, DW_AT_decl_column(0x05)

$C$DW$71	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$71, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP5")
	.dwattr $C$DW$71, DW_AT_const_value(0x403)
	.dwattr $C$DW$71, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$71, DW_AT_decl_column(0x05)

$C$DW$72	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$72, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP6")
	.dwattr $C$DW$72, DW_AT_const_value(0x503)
	.dwattr $C$DW$72, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$72, DW_AT_decl_column(0x05)

$C$DW$73	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$73, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP1")
	.dwattr $C$DW$73, DW_AT_const_value(0x04)
	.dwattr $C$DW$73, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$73, DW_AT_decl_column(0x05)

$C$DW$74	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$74, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP2")
	.dwattr $C$DW$74, DW_AT_const_value(0x104)
	.dwattr $C$DW$74, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$74, DW_AT_decl_column(0x05)

$C$DW$75	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$75, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP3")
	.dwattr $C$DW$75, DW_AT_const_value(0x204)
	.dwattr $C$DW$75, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$75, DW_AT_decl_column(0x05)

$C$DW$76	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$76, DW_AT_name("SYSCTL_PERIPH_CLK_SD1")
	.dwattr $C$DW$76, DW_AT_const_value(0x06)
	.dwattr $C$DW$76, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$76, DW_AT_decl_column(0x05)

$C$DW$77	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$77, DW_AT_name("SYSCTL_PERIPH_CLK_SD2")
	.dwattr $C$DW$77, DW_AT_const_value(0x106)
	.dwattr $C$DW$77, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$77, DW_AT_decl_column(0x05)

$C$DW$78	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$78, DW_AT_name("SYSCTL_PERIPH_CLK_SCIA")
	.dwattr $C$DW$78, DW_AT_const_value(0x07)
	.dwattr $C$DW$78, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0x1a4)
	.dwattr $C$DW$78, DW_AT_decl_column(0x05)

$C$DW$79	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$79, DW_AT_name("SYSCTL_PERIPH_CLK_SCIB")
	.dwattr $C$DW$79, DW_AT_const_value(0x107)
	.dwattr $C$DW$79, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x1a5)
	.dwattr $C$DW$79, DW_AT_decl_column(0x05)

$C$DW$80	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$80, DW_AT_name("SYSCTL_PERIPH_CLK_SCIC")
	.dwattr $C$DW$80, DW_AT_const_value(0x207)
	.dwattr $C$DW$80, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$80, DW_AT_decl_column(0x05)

$C$DW$81	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$81, DW_AT_name("SYSCTL_PERIPH_CLK_SCID")
	.dwattr $C$DW$81, DW_AT_const_value(0x307)
	.dwattr $C$DW$81, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$81, DW_AT_decl_column(0x05)

$C$DW$82	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$82, DW_AT_name("SYSCTL_PERIPH_CLK_SPIA")
	.dwattr $C$DW$82, DW_AT_const_value(0x08)
	.dwattr $C$DW$82, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$82, DW_AT_decl_column(0x05)

$C$DW$83	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$83, DW_AT_name("SYSCTL_PERIPH_CLK_SPIB")
	.dwattr $C$DW$83, DW_AT_const_value(0x108)
	.dwattr $C$DW$83, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$83, DW_AT_decl_column(0x05)

$C$DW$84	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$84, DW_AT_name("SYSCTL_PERIPH_CLK_SPIC")
	.dwattr $C$DW$84, DW_AT_const_value(0x208)
	.dwattr $C$DW$84, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$84, DW_AT_decl_column(0x05)

$C$DW$85	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$85, DW_AT_name("SYSCTL_PERIPH_CLK_I2CA")
	.dwattr $C$DW$85, DW_AT_const_value(0x09)
	.dwattr $C$DW$85, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$85, DW_AT_decl_column(0x05)

$C$DW$86	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$86, DW_AT_name("SYSCTL_PERIPH_CLK_I2CB")
	.dwattr $C$DW$86, DW_AT_const_value(0x109)
	.dwattr $C$DW$86, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$86, DW_AT_decl_column(0x05)

$C$DW$87	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$87, DW_AT_name("SYSCTL_PERIPH_CLK_CANA")
	.dwattr $C$DW$87, DW_AT_const_value(0x0a)
	.dwattr $C$DW$87, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$87, DW_AT_decl_column(0x05)

$C$DW$88	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$88, DW_AT_name("SYSCTL_PERIPH_CLK_CANB")
	.dwattr $C$DW$88, DW_AT_const_value(0x10a)
	.dwattr $C$DW$88, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$88, DW_AT_decl_column(0x05)

$C$DW$89	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$89, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPA")
	.dwattr $C$DW$89, DW_AT_const_value(0x0b)
	.dwattr $C$DW$89, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$89, DW_AT_decl_column(0x05)

$C$DW$90	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$90, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPB")
	.dwattr $C$DW$90, DW_AT_const_value(0x10b)
	.dwattr $C$DW$90, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$90, DW_AT_decl_column(0x05)

$C$DW$91	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$91, DW_AT_name("SYSCTL_PERIPH_CLK_USBA")
	.dwattr $C$DW$91, DW_AT_const_value(0x100b)
	.dwattr $C$DW$91, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$91, DW_AT_decl_column(0x05)

$C$DW$92	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$92, DW_AT_name("SYSCTL_PERIPH_CLK_UPPA")
	.dwattr $C$DW$92, DW_AT_const_value(0x0c)
	.dwattr $C$DW$92, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$92, DW_AT_decl_column(0x05)

$C$DW$93	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$93, DW_AT_name("SYSCTL_PERIPH_CLK_ADCA")
	.dwattr $C$DW$93, DW_AT_const_value(0x0d)
	.dwattr $C$DW$93, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$93, DW_AT_decl_column(0x05)

$C$DW$94	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$94, DW_AT_name("SYSCTL_PERIPH_CLK_ADCB")
	.dwattr $C$DW$94, DW_AT_const_value(0x10d)
	.dwattr $C$DW$94, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$94, DW_AT_decl_column(0x05)

$C$DW$95	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$95, DW_AT_name("SYSCTL_PERIPH_CLK_ADCC")
	.dwattr $C$DW$95, DW_AT_const_value(0x20d)
	.dwattr $C$DW$95, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$95, DW_AT_decl_column(0x05)

$C$DW$96	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$96, DW_AT_name("SYSCTL_PERIPH_CLK_ADCD")
	.dwattr $C$DW$96, DW_AT_const_value(0x30d)
	.dwattr $C$DW$96, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$96, DW_AT_decl_column(0x05)

$C$DW$97	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$97, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS1")
	.dwattr $C$DW$97, DW_AT_const_value(0x0e)
	.dwattr $C$DW$97, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$97, DW_AT_decl_column(0x05)

$C$DW$98	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$98, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS2")
	.dwattr $C$DW$98, DW_AT_const_value(0x10e)
	.dwattr $C$DW$98, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$98, DW_AT_decl_column(0x05)

$C$DW$99	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$99, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS3")
	.dwattr $C$DW$99, DW_AT_const_value(0x20e)
	.dwattr $C$DW$99, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$99, DW_AT_decl_column(0x05)

$C$DW$100	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$100, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS4")
	.dwattr $C$DW$100, DW_AT_const_value(0x30e)
	.dwattr $C$DW$100, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$100, DW_AT_decl_column(0x05)

$C$DW$101	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$101, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS5")
	.dwattr $C$DW$101, DW_AT_const_value(0x40e)
	.dwattr $C$DW$101, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$101, DW_AT_decl_column(0x05)

$C$DW$102	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$102, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS6")
	.dwattr $C$DW$102, DW_AT_const_value(0x50e)
	.dwattr $C$DW$102, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$102, DW_AT_decl_column(0x05)

$C$DW$103	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$103, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS7")
	.dwattr $C$DW$103, DW_AT_const_value(0x60e)
	.dwattr $C$DW$103, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$103, DW_AT_decl_column(0x05)

$C$DW$104	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$104, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS8")
	.dwattr $C$DW$104, DW_AT_const_value(0x70e)
	.dwattr $C$DW$104, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0x1be)
	.dwattr $C$DW$104, DW_AT_decl_column(0x05)

$C$DW$105	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$105, DW_AT_name("SYSCTL_PERIPH_CLK_DACA")
	.dwattr $C$DW$105, DW_AT_const_value(0x1010)
	.dwattr $C$DW$105, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$105, DW_AT_decl_column(0x05)

$C$DW$106	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$106, DW_AT_name("SYSCTL_PERIPH_CLK_DACB")
	.dwattr $C$DW$106, DW_AT_const_value(0x1110)
	.dwattr $C$DW$106, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$106, DW_AT_decl_column(0x05)

$C$DW$107	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$107, DW_AT_name("SYSCTL_PERIPH_CLK_DACC")
	.dwattr $C$DW$107, DW_AT_const_value(0x1210)
	.dwattr $C$DW$107, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$107, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x182)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("SysCtl_PeripheralPCLOCKCR")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$108	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$108, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_1")
	.dwattr $C$DW$108, DW_AT_const_value(0x00)
	.dwattr $C$DW$108, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0x298)
	.dwattr $C$DW$108, DW_AT_decl_column(0x05)

$C$DW$109	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$109, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_2")
	.dwattr $C$DW$109, DW_AT_const_value(0x01)
	.dwattr $C$DW$109, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0x299)
	.dwattr $C$DW$109, DW_AT_decl_column(0x05)

$C$DW$110	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$110, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_4")
	.dwattr $C$DW$110, DW_AT_const_value(0x02)
	.dwattr $C$DW$110, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0x29a)
	.dwattr $C$DW$110, DW_AT_decl_column(0x05)

$C$DW$111	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$111, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_6")
	.dwattr $C$DW$111, DW_AT_const_value(0x03)
	.dwattr $C$DW$111, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0x29b)
	.dwattr $C$DW$111, DW_AT_decl_column(0x05)

$C$DW$112	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$112, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_8")
	.dwattr $C$DW$112, DW_AT_const_value(0x04)
	.dwattr $C$DW$112, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0x29c)
	.dwattr $C$DW$112, DW_AT_decl_column(0x05)

$C$DW$113	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$113, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_10")
	.dwattr $C$DW$113, DW_AT_const_value(0x05)
	.dwattr $C$DW$113, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0x29d)
	.dwattr $C$DW$113, DW_AT_decl_column(0x05)

$C$DW$114	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$114, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_12")
	.dwattr $C$DW$114, DW_AT_const_value(0x06)
	.dwattr $C$DW$114, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0x29e)
	.dwattr $C$DW$114, DW_AT_decl_column(0x05)

$C$DW$115	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$115, DW_AT_name("SYSCTL_LSPCLK_PRESCALE_14")
	.dwattr $C$DW$115, DW_AT_const_value(0x07)
	.dwattr $C$DW$115, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0x29f)
	.dwattr $C$DW$115, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x297)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("SysCtl_LSPCLKPrescaler")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x2a0)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$116	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$116, DW_AT_name("GPIO_PORT_A")
	.dwattr $C$DW$116, DW_AT_const_value(0x00)
	.dwattr $C$DW$116, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$116, DW_AT_decl_column(0x05)

$C$DW$117	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$117, DW_AT_name("GPIO_PORT_B")
	.dwattr $C$DW$117, DW_AT_const_value(0x01)
	.dwattr $C$DW$117, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$117, DW_AT_decl_column(0x05)

$C$DW$118	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$118, DW_AT_name("GPIO_PORT_C")
	.dwattr $C$DW$118, DW_AT_const_value(0x02)
	.dwattr $C$DW$118, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$118, DW_AT_decl_column(0x05)

$C$DW$119	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$119, DW_AT_name("GPIO_PORT_D")
	.dwattr $C$DW$119, DW_AT_const_value(0x03)
	.dwattr $C$DW$119, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$119, DW_AT_decl_column(0x05)

$C$DW$120	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$120, DW_AT_name("GPIO_PORT_E")
	.dwattr $C$DW$120, DW_AT_const_value(0x04)
	.dwattr $C$DW$120, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$120, DW_AT_decl_column(0x05)

$C$DW$121	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$121, DW_AT_name("GPIO_PORT_F")
	.dwattr $C$DW$121, DW_AT_const_value(0x05)
	.dwattr $C$DW$121, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$121, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("GPIO_Port")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$24


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


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$33, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x1b)

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$34


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


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$122	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$5)

$C$DW$T$39	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$122)

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$40


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$51, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$51, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$51

