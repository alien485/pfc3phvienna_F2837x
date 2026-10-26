;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                             PC v25.11.1.LTS *
;* Date/Time created: Mon Oct 26 09:58:50 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../vienna_hal.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v25.11.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\FLASH")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("Device_init")
	.dwattr $C$DW$1, DW_AT_linkage_name("Device_init")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/device/device.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$1


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("Device_initGPIO")
	.dwattr $C$DW$2, DW_AT_linkage_name("Device_initGPIO")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/device/device.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0xac)
	.dwattr $C$DW$2, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$2


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("Interrupt_initModule")
	.dwattr $C$DW$3, DW_AT_linkage_name("Interrupt_initModule")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$3


$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("Interrupt_initVectorTable")
	.dwattr $C$DW$4, DW_AT_linkage_name("Interrupt_initVectorTable")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\interrupt.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$4, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$4


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("CPUTimer_setEmulationMode")
	.dwattr $C$DW$5, DW_AT_linkage_name("CPUTimer_setEmulationMode")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x1e8)
	.dwattr $C$DW$5, DW_AT_decl_column(0x0d)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$108)

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$36)

	.dwendtag $C$DW$5


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$8, DW_AT_linkage_name("GPIO_setDirectionMode")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x326)
	.dwattr $C$DW$8, DW_AT_decl_column(0x01)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$108)

$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$94)

	.dwendtag $C$DW$8


$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$11, DW_AT_linkage_name("GPIO_setPadConfig")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x36f)
	.dwattr $C$DW$11, DW_AT_decl_column(0x01)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$108)

$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$108)

	.dwendtag $C$DW$11


$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$14, DW_AT_linkage_name("GPIO_setPinConfig")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x405)
	.dwattr $C$DW$14, DW_AT_decl_column(0x01)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$108)

	.dwendtag $C$DW$14


$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("ADC_setMode")
	.dwattr $C$DW$16, DW_AT_linkage_name("ADC_setMode")
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x7e2)
	.dwattr $C$DW$16, DW_AT_decl_column(0x01)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$108)

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$30)

$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$32)

	.dwendtag $C$DW$16


$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$20, DW_AT_linkage_name("SysCtl_delay")
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0xcd7)
	.dwattr $C$DW$20, DW_AT_decl_column(0x01)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$108)

	.dwendtag $C$DW$20


$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("CMPSS_configFilterHigh")
	.dwattr $C$DW$22, DW_AT_linkage_name("CMPSS_configFilterHigh")
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x4ab)
	.dwattr $C$DW$22, DW_AT_decl_column(0x01)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$108)

$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$120)

$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$120)

$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$120)

	.dwendtag $C$DW$22


$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("CMPSS_configFilterLow")
	.dwattr $C$DW$27, DW_AT_linkage_name("CMPSS_configFilterLow")
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x4da)
	.dwattr $C$DW$27, DW_AT_decl_column(0x01)
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$108)

$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$120)

$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$120)

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$120)

	.dwendtag $C$DW$27


$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$32, DW_AT_linkage_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x4be)
	.dwattr $C$DW$32, DW_AT_decl_column(0x01)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$88)

$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$92)

	.dwendtag $C$DW$32


$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$35, DW_AT_linkage_name("GPIO_setQualificationMode")
	.dwattr $C$DW$35, DW_AT_declaration
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x396)
	.dwattr $C$DW$35, DW_AT_decl_column(0x01)
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$108)

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$96)

	.dwendtag $C$DW$35


$C$DW$38	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$38, DW_AT_name("XBAR_setOutputMuxConfig")
	.dwattr $C$DW$38, DW_AT_linkage_name("XBAR_setOutputMuxConfig")
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0x49d)
	.dwattr $C$DW$38, DW_AT_decl_column(0x01)
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$86)

$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$90)

	.dwendtag $C$DW$38

	.data
	.align	1
	.elfsym	||ledCnt1$1||,SYM_SIZE(1),SYM_BLOCKED(1)
||ledCnt1$1||:
	.bits		0,16
			; ledCnt1$1 @ 0


$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("__eallow")
	.dwattr $C$DW$41, DW_AT_linkage_name("__eallow")
	.dwattr $C$DW$41, DW_AT_declaration
	.dwattr $C$DW$41, DW_AT_external
	.dwendtag $C$DW$41


$C$DW$42	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$42, DW_AT_name("__edis")
	.dwattr $C$DW$42, DW_AT_linkage_name("__edis")
	.dwattr $C$DW$42, DW_AT_declaration
	.dwattr $C$DW$42, DW_AT_external
	.dwendtag $C$DW$42

	.sblock	".data"
;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\opt2000.exe C:\\Users\\YAN\\AppData\\Local\\Temp\\{A9632D94-C079-419E-B52E-E6CECFF2EDBB} C:\\Users\\YAN\\AppData\\Local\\Temp\\{A53052EF-0711-4927-893B-F39C0B7878DA} --advice:performance=stdout 
;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\acia2000.exe -@C:\\Users\\YAN\\AppData\\Local\\Temp\\{38ED66BA-98E0-47B1-831E-93105DC0680B} 
	.sect	".text"
	.clink
	.global	||VIENNA_HAL_toggleLED||

$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("VIENNA_HAL_toggleLED")
	.dwattr $C$DW$43, DW_AT_low_pc(||VIENNA_HAL_toggleLED||)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_linkage_name("VIENNA_HAL_toggleLED")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$43, DW_AT_decl_line(0x36e)
	.dwattr $C$DW$43, DW_AT_decl_column(0x06)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_hal.c",line 879,column 1,is_stmt,address ||VIENNA_HAL_toggleLED||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_toggleLED||
$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("ledCnt1")
	.dwattr $C$DW$44, DW_AT_linkage_name("ledCnt1$1")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_addr ||ledCnt1$1||]


;***************************************************************
;* FNAME: VIENNA_HAL_toggleLED          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_HAL_toggleLED||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||ledCnt1$1||     ; [CPU_ARAU] 
	.dwpsn	file "../vienna_hal.c",line 882,column 5,is_stmt,isa 0
        MOV       AL,@||ledCnt1$1||     ; [CPU_ALU] |882| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |882| 
        ; branchcc occurs ; [] |882| 
	.dwcfi	remember_state
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |505| 
        MOV       AH,#32768             ; [CPU_ALU] |505| 
	.dwpsn	file "../vienna_hal.c",line 885,column 9,is_stmt,isa 0
        MOVB      @||ledCnt1$1||,#5,UNC ; [CPU_ALU] |885| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOV32     *(0:0x7f06),ACC       ; [CPU_FPU] |505| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L1||:    
	.dwpsn	file "../vienna_hal.c",line 889,column 9,is_stmt,isa 0
        DEC       @||ledCnt1$1||        ; [CPU_ALU] |889| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$43, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x37b)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_setupTriggerForADC||

$C$DW$47	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$47, DW_AT_name("VIENNA_HAL_setupTriggerForADC")
	.dwattr $C$DW$47, DW_AT_low_pc(||VIENNA_HAL_setupTriggerForADC||)
	.dwattr $C$DW$47, DW_AT_high_pc(0x00)
	.dwattr $C$DW$47, DW_AT_linkage_name("VIENNA_HAL_setupTriggerForADC")
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$47, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$47, DW_AT_decl_column(0x06)
	.dwattr $C$DW$47, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_hal.c",line 272,column 1,is_stmt,address ||VIENNA_HAL_setupTriggerForADC||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_setupTriggerForADC||
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_name("base")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: VIENNA_HAL_setupTriggerForADC FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||VIENNA_HAL_setupTriggerForADC||:
;* AR4   assigned to base
$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("base")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,ACC              ; [CPU_ALU] |272| 
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5175,column 9,is_stmt,isa 0
        MOVB      XAR0,#164             ; [CPU_ALU] |5175| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVB      XAR1,#109             ; [CPU_ALU] |2446| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5175,column 9,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfeff ; [CPU_ALU] |5175| 
        MOVB      XAR0,#164             ; [CPU_ALU] |5175| 
        OR        AL,#0x0600            ; [CPU_ALU] |5175| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |5175| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5190,column 13,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |5190| 
        ADDB      ACC,#164              ; [CPU_ALU] |5190| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |5190| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5287,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |5287| 
        ADDB      ACC,#166              ; [CPU_ALU] |5287| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |5287| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5190,column 13,is_stmt,isa 0
        AND       *+XAR6[0],#0xffef     ; [CPU_ALU] |5190| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5293,column 9,is_stmt,isa 0
        MOVB      XAR0,#176             ; [CPU_ALU] |5293| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR1],#815      ; [CPU_ALU] |2446| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5287,column 5,is_stmt,isa 0
        OR        *+XAR5[0],#0x0020     ; [CPU_ALU] |5287| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5293,column 9,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfff0 ; [CPU_ALU] |5293| 
        MOVB      XAR0,#176             ; [CPU_ALU] |5293| 
        ORB       AL,#0x01              ; [CPU_ALU] |5293| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |5293| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5071,column 10,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |5071| 
        ADDB      ACC,#164              ; [CPU_ALU] |5071| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |5071| 
        OR        *+XAR4[0],#0x0800     ; [CPU_ALU] |5071| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$47, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$47, DW_AT_TI_end_line(0x12a)
	.dwattr $C$DW$47, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$47

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_configureECAPforSDFMClk||

$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("VIENNA_HAL_configureECAPforSDFMClk")
	.dwattr $C$DW$51, DW_AT_low_pc(||VIENNA_HAL_configureECAPforSDFMClk||)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_linkage_name("VIENNA_HAL_configureECAPforSDFMClk")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$51, DW_AT_decl_line(0x429)
	.dwattr $C$DW$51, DW_AT_decl_column(0x06)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_hal.c",line 1066,column 1,is_stmt,address ||VIENNA_HAL_configureECAPforSDFMClk||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_configureECAPforSDFMClk||
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_name("SD_clk_ecap_sys_ticks")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: VIENNA_HAL_configureECAPforSDFMClk FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||VIENNA_HAL_configureECAPforSDFMClk||:
;* AL    assigned to $O$C1
;* AR1   assigned to $O$C2
;* AR1   assigned to SD_clk_ecap_sys_ticks
$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("SD_clk_ecap_sys_ticks")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVZ      AR1,AL                ; [CPU_ALU] |1066| 
	.dwpsn	file "../vienna_hal.c",line 1077,column 5,is_stmt,isa 0
        MOVB      AH,#3                 ; [CPU_ALU] |1077| 
        MOVB      AL,#0                 ; [CPU_ALU] |1077| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("XBAR_setOutputMuxConfig")
	.dwattr $C$DW$54, DW_AT_TI_call

        LCR       #||XBAR_setOutputMuxConfig|| ; [CPU_ALU] |1077| 
        ; call occurs [#||XBAR_setOutputMuxConfig||] ; [] |1077| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 654,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |654| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 656,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7aa0)       ; [CPU_FPU] |656| 
        ORB       AL,#0x01              ; [CPU_ALU] |656| 
        MOV32     *(0:0x7aa0),ACC       ; [CPU_FPU] |656| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 658,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |658| 
	.dwpsn	file "../vienna_hal.c",line 1088,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |1088| 
        MOVB      ACC,#24               ; [CPU_ALU] |1088| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$55, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |1088| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |1088| 
	.dwpsn	file "../vienna_hal.c",line 1089,column 5,is_stmt,isa 0
        MOVB      XAR4,#3               ; [CPU_ALU] |1089| 
        MOVB      ACC,#24               ; [CPU_ALU] |1089| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$56, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |1089| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |1089| 
	.dwpsn	file "../vienna_hal.c",line 1090,column 5,is_stmt,isa 0
        MOVL      XAR4,#528385          ; [CPU_ARAU] |1090| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |1090| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$57, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |1090| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |1090| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 643,column 5,is_stmt,isa 0
        MOV       AH,*(0:0x5015)        ; [CPU_ALU] |643| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 986,column 5,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_ALU] |986| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 643,column 5,is_stmt,isa 0
        OR        AH,#0x0200            ; [CPU_ALU] |643| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 1012,column 5,is_stmt,isa 0
        MOV       PH,#0                 ; [CPU_ALU] |1012| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 537,column 5,is_stmt,isa 0
        MOVB      XAR6,#255             ; [CPU_ALU] |537| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 986,column 5,is_stmt,isa 0
        LSR       AL,1                  ; [CPU_ALU] |986| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 643,column 5,is_stmt,isa 0
        MOV       *(0:0x5015),AH        ; [CPU_ALU] |643| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 958,column 5,is_stmt,isa 0
        SUBB      XAR1,#1               ; [CPU_ARAU] |958| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 986,column 5,is_stmt,isa 0
        MOVZ      AR4,AL                ; [CPU_ALU] |986| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 958,column 5,is_stmt,isa 0
        MOVZ      AR7,AR1               ; [CPU_ALU] |958| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 558,column 5,is_stmt,isa 0
        MOVB      AH,#1                 ; [CPU_ALU] |558| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 1012,column 5,is_stmt,isa 0
        MOV       PL,AR1                ; [CPU_ALU] |1012| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 958,column 5,is_stmt,isa 0
        MOV32     *(0:0x5004),XAR7      ; [CPU_FPU] |958| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 1041,column 5,is_stmt,isa 0
        MOVZ      AR7,AL                ; [CPU_ALU] |1041| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 986,column 5,is_stmt,isa 0
        MOV32     *(0:0x5006),XAR4      ; [CPU_FPU] |986| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 1012,column 5,is_stmt,isa 0
        MOV32     *(0:0x5008),P         ; [CPU_FPU] |1012| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 1041,column 5,is_stmt,isa 0
        MOV32     *(0:0x500a),XAR7      ; [CPU_FPU] |1041| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 537,column 5,is_stmt,isa 0
        MOV       *(0:0x5018),AR6       ; [CPU_ALU] |537| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 558,column 5,is_stmt,isa 0
        MOV       *(0:0x5018),AH        ; [CPU_ALU] |558| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/ecap.h",line 908,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5015)        ; [CPU_ALU] |908| 
        ORB       AL,#0x10              ; [CPU_ALU] |908| 
        MOV       *(0:0x5015),AL        ; [CPU_ALU] |908| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$51, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x460)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_configurePWM1chUpCnt||

$C$DW$59	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$59, DW_AT_name("VIENNA_HAL_configurePWM1chUpCnt")
	.dwattr $C$DW$59, DW_AT_low_pc(||VIENNA_HAL_configurePWM1chUpCnt||)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_linkage_name("VIENNA_HAL_configurePWM1chUpCnt")
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$59, DW_AT_decl_line(0x48c)
	.dwattr $C$DW$59, DW_AT_decl_column(0x06)
	.dwattr $C$DW$59, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_hal.c",line 1165,column 1,is_stmt,address ||VIENNA_HAL_configurePWM1chUpCnt||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_configurePWM1chUpCnt||
$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_name("base1")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg0]

$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_name("period")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: VIENNA_HAL_configurePWM1chUpCnt FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||VIENNA_HAL_configurePWM1chUpCnt||:
;* AR5   assigned to base1
$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("base1")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to period
$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("period")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR5,ACC              ; [CPU_ALU] |1165| 
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOV       AL,AR4                ; [CPU_ALU] |2182| 
        MOVB      XAR1,#99              ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVB      XAR0,#96              ; [CPU_ALU] |2148| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        ADDB      AL,#-1                ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1766,column 9,is_stmt,isa 0
        OR        *+XAR5[0],#0x0008     ; [CPU_ALU] |1766| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOV       *+XAR5[AR1],AL        ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOV       *+XAR5[4],#0          ; [CPU_ALU] |1549| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR5[AR0]       ; [CPU_ALU] |2148| 
        MOVB      XAR0,#96              ; [CPU_ALU] |2148| 
        ANDB      AH,#0                 ; [CPU_ALU] |2148| 
        MOVL      *+XAR5[AR0],ACC       ; [CPU_ALU] |2148| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1849,column 5,is_stmt,isa 0
        AND       *+XAR5[0],#0xfffc     ; [CPU_ALU] |1849| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1627,column 5,is_stmt,isa 0
        AND       *+XAR5[0],#0xe07f     ; [CPU_ALU] |1627| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$59, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x499)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$59

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_configurePWMsyncforSDFM||

$C$DW$65	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$65, DW_AT_name("VIENNA_HAL_configurePWMsyncforSDFM")
	.dwattr $C$DW$65, DW_AT_low_pc(||VIENNA_HAL_configurePWMsyncforSDFM||)
	.dwattr $C$DW$65, DW_AT_high_pc(0x00)
	.dwattr $C$DW$65, DW_AT_linkage_name("VIENNA_HAL_configurePWMsyncforSDFM")
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$65, DW_AT_decl_line(0x465)
	.dwattr $C$DW$65, DW_AT_decl_column(0x06)
	.dwattr $C$DW$65, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_hal.c",line 1127,column 1,is_stmt,address ||VIENNA_HAL_configurePWMsyncforSDFM||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_configurePWMsyncforSDFM||
$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_name("PWM_ticks")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg0]

$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_name("PWM_ticks_in_sdfm_osr")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg1]


;***************************************************************
;* FNAME: VIENNA_HAL_configurePWMsyncforSDFM FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_HAL_configurePWMsyncforSDFM||:
;* R0    assigned to $O$C4
;* AL    assigned to $O$R1
;* AL    assigned to $O$R2
;* AL    assigned to $O$R3
;* AR4   assigned to PWM_ticks
$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("PWM_ticks")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2453,column 9,is_stmt,isa 0
        MOVZ      AR6,AH                ; [CPU_ALU] |2453| 
	.dwpsn	file "../vienna_hal.c",line 1127,column 1,is_stmt,isa 0
        MOVZ      AR4,AL                ; [CPU_ALU] |1127| 
	.dwpsn	file "../vienna_hal.c",line 1128,column 5,is_stmt,isa 0
        MOV       ACC,#18944            ; [CPU_ALU] |1128| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("VIENNA_HAL_configurePWM1chUpCnt")
	.dwattr $C$DW$69, DW_AT_TI_call

        LCR       #||VIENNA_HAL_configurePWM1chUpCnt|| ; [CPU_ALU] |1128| 
        ; call occurs [#||VIENNA_HAL_configurePWM1chUpCnt||] ; [] |1128| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4300)        ; [CPU_ALU] |1706| 
        AND       AL,#0xffcf            ; [CPU_ALU] |1706| 
        MOV       *(0:0x4300),AL        ; [CPU_ALU] |1706| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2453,column 9,is_stmt,isa 0
        MOV32     R0H,XAR6              ; [CPU_FPU] |2453| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4400)        ; [CPU_ALU] |1706| 
        AND       AL,#0xffcf            ; [CPU_ALU] |1706| 
        MOV       *(0:0x4400),AL        ; [CPU_ALU] |1706| 
        MOV       AL,*(0:0x4900)        ; [CPU_ALU] |1706| 
        AND       AL,#0xffcf            ; [CPU_ALU] |1706| 
        MOV       *(0:0x4900),AL        ; [CPU_ALU] |1706| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x4a60)       ; [CPU_FPU] |2148| 
        ANDB      AH,#0                 ; [CPU_ALU] |2148| 
        OR        AH,#2                 ; [CPU_ALU] |2148| 
        MOV32     *(0:0x4a60),ACC       ; [CPU_FPU] |2148| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1793,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4a00)        ; [CPU_ALU] |1793| 
        ORB       AL,#0x04              ; [CPU_ALU] |1793| 
        MOV       *(0:0x4a00),AL        ; [CPU_ALU] |1793| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1581,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4a00)        ; [CPU_ALU] |1581| 
        OR        AL,#0x2000            ; [CPU_ALU] |1581| 
        MOV       *(0:0x4a00),AL        ; [CPU_ALU] |1581| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2207,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4a63)        ; [CPU_ALU] |2207| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2453,column 9,is_stmt,isa 0
        LSR       AL,1                  ; [CPU_ALU] |2453| 
        MOVU      ACC,AL                ; [CPU_ALU] |2453| 
        MOV32     R1H,ACC               ; [CPU_FPU] |2453| 
        NOP       ; [CPU_ALU] 
        UI32TOF32 R0H,R0H               ; [CPU_FPU] |2453| 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R0H,#16320        ; [CPU_FPU] |2453| 
        UI32TOF32 R1H,R1H               ; [CPU_FPU] |2453| 
        NOP       ; [CPU_ALU] 
        SUBF32    R1H,R1H,R0H           ; [CPU_FPU] |2453| 
        NOP       ; [CPU_ALU] 
        F32TOUI16 R1H,R1H               ; [CPU_FPU] |2453| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |2453| 
        MOV       *(0:0x4a6f),AL        ; [CPU_ALU] |2453| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2207,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4a63)        ; [CPU_ALU] |2207| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2453,column 9,is_stmt,isa 0
        LSR       AL,1                  ; [CPU_ALU] |2453| 
        MOVU      ACC,AL                ; [CPU_ALU] |2453| 
        MOV32     R1H,ACC               ; [CPU_FPU] |2453| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI32TOF32 R1H,R1H               ; [CPU_FPU] |2453| 
        NOP       ; [CPU_ALU] 
        SUBF32    R1H,R1H,R0H           ; [CPU_FPU] |2453| 
        NOP       ; [CPU_ALU] 
        F32TOUI16 R1H,R1H               ; [CPU_FPU] |2453| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R1H               ; [CPU_FPU] |2453| 
        MOV       *(0:0x4a71),AL        ; [CPU_ALU] |2453| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2207,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4a63)        ; [CPU_ALU] |2207| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        LSR       AL,1                  ; [CPU_ALU] |2446| 
        MOVU      ACC,AL                ; [CPU_ALU] |2446| 
        MOV32     R1H,ACC               ; [CPU_FPU] |2446| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,#16672        ; [CPU_FPU] |2446| 
        UI32TOF32 R1H,R1H               ; [CPU_FPU] |2446| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |2446| 
        NOP       ; [CPU_ALU] 
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |2446| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     ACC,R0H               ; [CPU_FPU] |2446| 
        MOV       *(0:0x4a6b),AL        ; [CPU_ALU] |2446| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$65, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$65, DW_AT_TI_end_line(0x486)
	.dwattr $C$DW$65, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$65

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_setupSDFM||

$C$DW$71	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$71, DW_AT_name("VIENNA_HAL_setupSDFM")
	.dwattr $C$DW$71, DW_AT_low_pc(||VIENNA_HAL_setupSDFM||)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_linkage_name("VIENNA_HAL_setupSDFM")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$71, DW_AT_decl_line(0x381)
	.dwattr $C$DW$71, DW_AT_decl_column(0x06)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../vienna_hal.c",line 899,column 1,is_stmt,address ||VIENNA_HAL_setupSDFM||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_setupSDFM||
$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_name("PWM_ticks")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg0]

$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("PWM_ticks_in_sdfm_osr")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg1]

$C$DW$74	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$74, DW_AT_name("SD_clk_ecap_sys_ticks")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg12]

$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_name("sdfmosr")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: VIENNA_HAL_setupSDFM          FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||VIENNA_HAL_setupSDFM||:
;* AR3   assigned to $O$C1
;* AL    assigned to PWM_ticks
$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("PWM_ticks")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg0]

;* AH    assigned to PWM_ticks_in_sdfm_osr
$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("PWM_ticks_in_sdfm_osr")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg1]

;* AL    assigned to SD_clk_ecap_sys_ticks
$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("SD_clk_ecap_sys_ticks")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg0]

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
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOVZ      AR1,AL                ; [CPU_ALU] |899| 
        MOVZ      AR2,AH                ; [CPU_ALU] |899| 
        MOVZ      AR3,AR5               ; [CPU_ALU] |899| 
        MOV       AL,AR4                ; [CPU_ALU] |899| 
	.dwpsn	file "../vienna_hal.c",line 904,column 5,is_stmt,isa 0
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("VIENNA_HAL_configureECAPforSDFMClk")
	.dwattr $C$DW$79, DW_AT_TI_call

        LCR       #||VIENNA_HAL_configureECAPforSDFMClk|| ; [CPU_ALU] |904| 
        ; call occurs [#||VIENNA_HAL_configureECAPforSDFMClk||] ; [] |904| 
	.dwpsn	file "../vienna_hal.c",line 899,column 1,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_ALU] |899| 
        MOV       AH,AR2                ; [CPU_ALU] |899| 
	.dwpsn	file "../vienna_hal.c",line 909,column 5,is_stmt,isa 0
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("VIENNA_HAL_configurePWMsyncforSDFM")
	.dwattr $C$DW$80, DW_AT_TI_call

        LCR       #||VIENNA_HAL_configurePWMsyncforSDFM|| ; [CPU_ALU] |909| 
        ; call occurs [#||VIENNA_HAL_configurePWMsyncforSDFM||] ; [] |909| 
	.dwpsn	file "../vienna_hal.c",line 916,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |916| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |916| 
        MOVB      ACC,#48               ; [CPU_ALU] |916| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$81, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |916| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |916| 
	.dwpsn	file "../vienna_hal.c",line 917,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |917| 
        MOVB      ACC,#48               ; [CPU_ALU] |917| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$82, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |917| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |917| 
	.dwpsn	file "../vienna_hal.c",line 918,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |918| 
        MOVB      ACC,#48               ; [CPU_ALU] |918| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$83, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |918| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |918| 
	.dwpsn	file "../vienna_hal.c",line 919,column 5,is_stmt,isa 0
        MOV       AL,#7                 ; [CPU_ALU] |919| 
        MOV       AH,#72                ; [CPU_ALU] |919| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$84, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |919| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |919| 
	.dwpsn	file "../vienna_hal.c",line 924,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |924| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |924| 
        MOVB      ACC,#49               ; [CPU_ALU] |924| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$85, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |924| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |924| 
	.dwpsn	file "../vienna_hal.c",line 925,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |925| 
        MOVB      ACC,#49               ; [CPU_ALU] |925| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$86, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |925| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |925| 
	.dwpsn	file "../vienna_hal.c",line 926,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |926| 
        MOVB      ACC,#49               ; [CPU_ALU] |926| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$87, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |926| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |926| 
	.dwpsn	file "../vienna_hal.c",line 927,column 5,is_stmt,isa 0
        MOV       AL,#519               ; [CPU_ALU] |927| 
        MOV       AH,#72                ; [CPU_ALU] |927| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$88, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |927| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |927| 
	.dwpsn	file "../vienna_hal.c",line 932,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |932| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |932| 
        MOVB      ACC,#50               ; [CPU_ALU] |932| 
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$89, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |932| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |932| 
	.dwpsn	file "../vienna_hal.c",line 933,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |933| 
        MOVB      ACC,#50               ; [CPU_ALU] |933| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$90, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |933| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |933| 
	.dwpsn	file "../vienna_hal.c",line 934,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |934| 
        MOVB      ACC,#50               ; [CPU_ALU] |934| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$91, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |934| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |934| 
	.dwpsn	file "../vienna_hal.c",line 935,column 5,is_stmt,isa 0
        MOV       AL,#1031              ; [CPU_ALU] |935| 
        MOV       AH,#72                ; [CPU_ALU] |935| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$92, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |935| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |935| 
	.dwpsn	file "../vienna_hal.c",line 940,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |940| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |940| 
        MOVB      ACC,#51               ; [CPU_ALU] |940| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$93, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |940| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |940| 
	.dwpsn	file "../vienna_hal.c",line 941,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |941| 
        MOVB      ACC,#51               ; [CPU_ALU] |941| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$94, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |941| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |941| 
	.dwpsn	file "../vienna_hal.c",line 942,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |942| 
        MOVB      ACC,#51               ; [CPU_ALU] |942| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$95, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |942| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |942| 
	.dwpsn	file "../vienna_hal.c",line 943,column 5,is_stmt,isa 0
        MOV       AL,#1543              ; [CPU_ALU] |943| 
        MOV       AH,#72                ; [CPU_ALU] |943| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |943| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |943| 
	.dwpsn	file "../vienna_hal.c",line 948,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |948| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |948| 
        MOVB      ACC,#52               ; [CPU_ALU] |948| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |948| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |948| 
	.dwpsn	file "../vienna_hal.c",line 949,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |949| 
        MOVB      ACC,#52               ; [CPU_ALU] |949| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |949| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |949| 
	.dwpsn	file "../vienna_hal.c",line 950,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |950| 
        MOVB      ACC,#52               ; [CPU_ALU] |950| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |950| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |950| 
	.dwpsn	file "../vienna_hal.c",line 951,column 5,is_stmt,isa 0
        MOV       AL,#2055              ; [CPU_ALU] |951| 
        MOV       AH,#72                ; [CPU_ALU] |951| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$100, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |951| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |951| 
	.dwpsn	file "../vienna_hal.c",line 956,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |956| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |956| 
        MOVB      ACC,#53               ; [CPU_ALU] |956| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$101, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |956| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |956| 
	.dwpsn	file "../vienna_hal.c",line 957,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |957| 
        MOVB      ACC,#53               ; [CPU_ALU] |957| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$102, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |957| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |957| 
	.dwpsn	file "../vienna_hal.c",line 958,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |958| 
        MOVB      ACC,#53               ; [CPU_ALU] |958| 
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$103, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |958| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |958| 
	.dwpsn	file "../vienna_hal.c",line 959,column 5,is_stmt,isa 0
        MOV       AL,#2567              ; [CPU_ALU] |959| 
        MOV       AH,#72                ; [CPU_ALU] |959| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |959| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |959| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 485,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |485| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 486,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e10)        ; [CPU_ALU] |486| 
        AND       AL,#0xfffc            ; [CPU_ALU] |486| 
        MOV       *(0:0x5e10),AL        ; [CPU_ALU] |486| 
        MOV       AL,*(0:0x5e20)        ; [CPU_ALU] |486| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 453,column 5,is_stmt,isa 0
        SUBB      XAR3,#1               ; [CPU_ARAU] |453| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 486,column 5,is_stmt,isa 0
        AND       AL,#0xfffc            ; [CPU_ALU] |486| 
        MOV       *(0:0x5e20),AL        ; [CPU_ALU] |486| 
        MOV       AL,*(0:0x5e30)        ; [CPU_ALU] |486| 
        AND       AL,#0xfffc            ; [CPU_ALU] |486| 
        MOV       *(0:0x5e30),AL        ; [CPU_ALU] |486| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 360,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e11)        ; [CPU_ALU] |360| 
        OR        AL,#0x0100            ; [CPU_ALU] |360| 
        MOV       *(0:0x5e11),AL        ; [CPU_ALU] |360| 
        MOV       AL,*(0:0x5e21)        ; [CPU_ALU] |360| 
        OR        AL,#0x0100            ; [CPU_ALU] |360| 
        MOV       *(0:0x5e21),AL        ; [CPU_ALU] |360| 
        MOV       AL,*(0:0x5e31)        ; [CPU_ALU] |360| 
        OR        AL,#0x0100            ; [CPU_ALU] |360| 
        MOV       *(0:0x5e31),AL        ; [CPU_ALU] |360| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 418,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e11)        ; [CPU_ALU] |418| 
        OR        AL,#0x0c00            ; [CPU_ALU] |418| 
        MOV       *(0:0x5e11),AL        ; [CPU_ALU] |418| 
        MOV       AL,*(0:0x5e21)        ; [CPU_ALU] |418| 
        OR        AL,#0x0c00            ; [CPU_ALU] |418| 
        MOV       *(0:0x5e21),AL        ; [CPU_ALU] |418| 
        MOV       AL,*(0:0x5e31)        ; [CPU_ALU] |418| 
        OR        AL,#0x0c00            ; [CPU_ALU] |418| 
        MOV       *(0:0x5e31),AL        ; [CPU_ALU] |418| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 520,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e12)        ; [CPU_ALU] |520| 
        OR        AL,#0x0400            ; [CPU_ALU] |520| 
        MOV       *(0:0x5e12),AL        ; [CPU_ALU] |520| 
        MOV       AL,*(0:0x5e22)        ; [CPU_ALU] |520| 
        OR        AL,#0x0400            ; [CPU_ALU] |520| 
        MOV       *(0:0x5e22),AL        ; [CPU_ALU] |520| 
        MOV       AL,*(0:0x5e32)        ; [CPU_ALU] |520| 
        OR        AL,#0x0400            ; [CPU_ALU] |520| 
        MOV       *(0:0x5e32),AL        ; [CPU_ALU] |520| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 453,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e11)        ; [CPU_ALU] |453| 
        AND       AL,#0xff00            ; [CPU_ALU] |453| 
        OR        AL,AR3                ; [CPU_ALU] |453| 
        MOV       *(0:0x5e11),AL        ; [CPU_ALU] |453| 
        MOV       AL,*(0:0x5e21)        ; [CPU_ALU] |453| 
        AND       AL,#0xff00            ; [CPU_ALU] |453| 
        OR        AL,AR3                ; [CPU_ALU] |453| 
        MOV       *(0:0x5e21),AL        ; [CPU_ALU] |453| 
        MOV       AL,*(0:0x5e31)        ; [CPU_ALU] |453| 
        AND       AL,#0xff00            ; [CPU_ALU] |453| 
        OR        AL,AR3                ; [CPU_ALU] |453| 
        MOV       *(0:0x5e31),AL        ; [CPU_ALU] |453| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 771,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e15)        ; [CPU_ALU] |771| 
        OR        AL,#0x0180            ; [CPU_ALU] |771| 
        MOV       *(0:0x5e15),AL        ; [CPU_ALU] |771| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 807,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e15)        ; [CPU_ALU] |807| 
        ORB       AL,#0x1f              ; [CPU_ALU] |807| 
        MOV       *(0:0x5e15),AL        ; [CPU_ALU] |807| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 771,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e25)        ; [CPU_ALU] |771| 
        OR        AL,#0x0180            ; [CPU_ALU] |771| 
        MOV       *(0:0x5e25),AL        ; [CPU_ALU] |771| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 807,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e25)        ; [CPU_ALU] |807| 
        ORB       AL,#0x1f              ; [CPU_ALU] |807| 
        MOV       *(0:0x5e25),AL        ; [CPU_ALU] |807| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 771,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e35)        ; [CPU_ALU] |771| 
        OR        AL,#0x0180            ; [CPU_ALU] |771| 
        MOV       *(0:0x5e35),AL        ; [CPU_ALU] |771| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 807,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e35)        ; [CPU_ALU] |807| 
        ORB       AL,#0x1f              ; [CPU_ALU] |807| 
        MOV       *(0:0x5e35),AL        ; [CPU_ALU] |807| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 308,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e11)        ; [CPU_ALU] |308| 
        OR        AL,#0x1000            ; [CPU_ALU] |308| 
        MOV       *(0:0x5e11),AL        ; [CPU_ALU] |308| 
        MOV       AL,*(0:0x5e21)        ; [CPU_ALU] |308| 
        OR        AL,#0x1000            ; [CPU_ALU] |308| 
        MOV       *(0:0x5e21),AL        ; [CPU_ALU] |308| 
        MOV       AL,*(0:0x5e31)        ; [CPU_ALU] |308| 
        OR        AL,#0x1000            ; [CPU_ALU] |308| 
        MOV       *(0:0x5e31),AL        ; [CPU_ALU] |308| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 671,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x5e15)        ; [CPU_ALU] |671| 
        ORB       AL,#0x20              ; [CPU_ALU] |671| 
        MOV       *(0:0x5e15),AL        ; [CPU_ALU] |671| 
        MOV       AL,*(0:0x5e25)        ; [CPU_ALU] |671| 
        ORB       AL,#0x20              ; [CPU_ALU] |671| 
        MOV       *(0:0x5e25),AL        ; [CPU_ALU] |671| 
        MOV       AL,*(0:0x5e35)        ; [CPU_ALU] |671| 
        ORB       AL,#0x20              ; [CPU_ALU] |671| 
        MOV       *(0:0x5e35),AL        ; [CPU_ALU] |671| 
        MOV       AL,*(0:0x5e15)        ; [CPU_ALU] |671| 
        ORB       AL,#0x40              ; [CPU_ALU] |671| 
        MOV       *(0:0x5e15),AL        ; [CPU_ALU] |671| 
        MOV       AL,*(0:0x5e25)        ; [CPU_ALU] |671| 
        ORB       AL,#0x40              ; [CPU_ALU] |671| 
        MOV       *(0:0x5e25),AL        ; [CPU_ALU] |671| 
        MOV       AL,*(0:0x5e35)        ; [CPU_ALU] |671| 
        ORB       AL,#0x40              ; [CPU_ALU] |671| 
        MOV       *(0:0x5e35),AL        ; [CPU_ALU] |671| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 1043,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e06)        ; [CPU_ALU] |1043| 
        OR        AL,#0x0800            ; [CPU_ALU] |1043| 
        MOV       *(0:0x5e06),AL        ; [CPU_ALU] |1043| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 995,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e04)        ; [CPU_ALU] |995| 
        OR        AL,#0x2000            ; [CPU_ALU] |995| 
        MOV       *(0:0x5e04),AL        ; [CPU_ALU] |995| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 1043,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e06)        ; [CPU_ALU] |1043| 
        OR        AL,#0x0800            ; [CPU_ALU] |1043| 
        MOV       *(0:0x5e06),AL        ; [CPU_ALU] |1043| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 995,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e04)        ; [CPU_ALU] |995| 
        OR        AL,#0x2000            ; [CPU_ALU] |995| 
        MOV       *(0:0x5e04),AL        ; [CPU_ALU] |995| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 1043,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e06)        ; [CPU_ALU] |1043| 
        OR        AL,#0x0800            ; [CPU_ALU] |1043| 
        MOV       *(0:0x5e06),AL        ; [CPU_ALU] |1043| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 995,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5e04)        ; [CPU_ALU] |995| 
        OR        AL,#0x2000            ; [CPU_ALU] |995| 
        MOV       *(0:0x5e04),AL        ; [CPU_ALU] |995| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 996,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |996| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
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
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$71, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x424)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_setupProfilingGPIO||

$C$DW$106	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$106, DW_AT_name("VIENNA_HAL_setupProfilingGPIO")
	.dwattr $C$DW$106, DW_AT_low_pc(||VIENNA_HAL_setupProfilingGPIO||)
	.dwattr $C$DW$106, DW_AT_high_pc(0x00)
	.dwattr $C$DW$106, DW_AT_linkage_name("VIENNA_HAL_setupProfilingGPIO")
	.dwattr $C$DW$106, DW_AT_external
	.dwattr $C$DW$106, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$106, DW_AT_decl_line(0x34e)
	.dwattr $C$DW$106, DW_AT_decl_column(0x06)
	.dwattr $C$DW$106, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_hal.c",line 847,column 1,is_stmt,address ||VIENNA_HAL_setupProfilingGPIO||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_setupProfilingGPIO||

;***************************************************************
;* FNAME: VIENNA_HAL_setupProfilingGPIO FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_HAL_setupProfilingGPIO||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../vienna_hal.c",line 848,column 5,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |848| 
        MOVB      XAR4,#1               ; [CPU_ALU] |848| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |848| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |848| 
	.dwpsn	file "../vienna_hal.c",line 849,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |849| 
        MOVB      ACC,#13               ; [CPU_ALU] |849| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |849| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |849| 
	.dwpsn	file "../vienna_hal.c",line 850,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |850| 
        MOVB      ACC,#12               ; [CPU_ALU] |850| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$109, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |850| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |850| 
	.dwpsn	file "../vienna_hal.c",line 851,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |851| 
        MOVB      ACC,#13               ; [CPU_ALU] |851| 
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$110, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |851| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |851| 
	.dwpsn	file "../vienna_hal.c",line 852,column 5,is_stmt,isa 0
        MOVL      XAR4,#399360          ; [CPU_ARAU] |852| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |852| 
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$111, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |852| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |852| 
	.dwpsn	file "../vienna_hal.c",line 853,column 5,is_stmt,isa 0
        MOVL      XAR4,#399872          ; [CPU_ARAU] |853| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |853| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$112, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |853| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |853| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$106, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$106, DW_AT_TI_end_line(0x35c)
	.dwattr $C$DW$106, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$106

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_setupPWMTrip||

$C$DW$114	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$114, DW_AT_name("VIENNA_HAL_setupPWMTrip")
	.dwattr $C$DW$114, DW_AT_low_pc(||VIENNA_HAL_setupPWMTrip||)
	.dwattr $C$DW$114, DW_AT_high_pc(0x00)
	.dwattr $C$DW$114, DW_AT_linkage_name("VIENNA_HAL_setupPWMTrip")
	.dwattr $C$DW$114, DW_AT_external
	.dwattr $C$DW$114, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$114, DW_AT_decl_line(0x305)
	.dwattr $C$DW$114, DW_AT_decl_column(0x06)
	.dwattr $C$DW$114, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_hal.c",line 774,column 1,is_stmt,address ||VIENNA_HAL_setupPWMTrip||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_setupPWMTrip||
$C$DW$115	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$115, DW_AT_name("base")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: VIENNA_HAL_setupPWMTrip       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||VIENNA_HAL_setupPWMTrip||:
;* AR4   assigned to base
$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("base")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR4,ACC              ; [CPU_ALU] |774| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5626,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |5626| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5627,column 5,is_stmt,isa 0
        MOVB      XAR0,#192             ; [CPU_ALU] |5627| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6160,column 9,is_stmt,isa 0
        MOVB      XAR1,#195             ; [CPU_ALU] |6160| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5627,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfff0 ; [CPU_ALU] |5627| 
        MOVB      XAR0,#192             ; [CPU_ALU] |5627| 
        ORB       AL,#0x04              ; [CPU_ALU] |5627| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |5627| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3997,column 5,is_stmt,isa 0
        MOVB      XAR0,#130             ; [CPU_ALU] |3997| 
        AND       AL,*+XAR4[AR0],#0xfff8 ; [CPU_ALU] |3997| 
        MOVB      XAR0,#130             ; [CPU_ALU] |3997| 
        ORB       AL,#0x02              ; [CPU_ALU] |3997| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |3997| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6160,column 9,is_stmt,isa 0
        MOVB      XAR0,#195             ; [CPU_ALU] |6160| 
        AND       AL,*+XAR4[AR0],#0xfffe ; [CPU_ALU] |6160| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6220,column 9,is_stmt,isa 0
        MOVB      XAR0,#195             ; [CPU_ALU] |6220| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6160,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |6160| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6220,column 9,is_stmt,isa 0
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |6220| 
        MOVB      XAR0,#195             ; [CPU_ALU] |6220| 
        ORB       AL,#0x02              ; [CPU_ALU] |6220| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |6220| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3898,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |3898| 
        ADDB      ACC,#128              ; [CPU_ALU] |3898| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3898| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5627,column 5,is_stmt,isa 0
        MOVB      XAR0,#192             ; [CPU_ALU] |5627| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6160,column 9,is_stmt,isa 0
        MOVB      XAR1,#196             ; [CPU_ALU] |6160| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3898,column 5,is_stmt,isa 0
        OR        *+XAR5[0],#0x4000     ; [CPU_ALU] |3898| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 5627,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xf3ff ; [CPU_ALU] |5627| 
        MOVB      XAR0,#192             ; [CPU_ALU] |5627| 
        OR        AL,#0x0300            ; [CPU_ALU] |5627| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |5627| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3997,column 5,is_stmt,isa 0
        MOVB      XAR0,#130             ; [CPU_ALU] |3997| 
        AND       AL,*+XAR4[AR0],#0xfe3f ; [CPU_ALU] |3997| 
        MOVB      XAR0,#130             ; [CPU_ALU] |3997| 
        ORB       AL,#0x80              ; [CPU_ALU] |3997| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |3997| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6160,column 9,is_stmt,isa 0
        MOVB      XAR0,#196             ; [CPU_ALU] |6160| 
        AND       AL,*+XAR4[AR0],#0xfffe ; [CPU_ALU] |6160| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6220,column 9,is_stmt,isa 0
        MOVB      XAR0,#196             ; [CPU_ALU] |6220| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6160,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |6160| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 6220,column 9,is_stmt,isa 0
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |6220| 
        MOVB      XAR0,#196             ; [CPU_ALU] |6220| 
        ORB       AL,#0x02              ; [CPU_ALU] |6220| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |6220| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3898,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |3898| 
        ADDB      ACC,#128              ; [CPU_ALU] |3898| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3898| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |3898| 
        ADDB      ACC,#128              ; [CPU_ALU] |3898| 
        OR        *+XAR5[0],#0x8000     ; [CPU_FPU] |3898| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |3898| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4104,column 5,is_stmt,isa 0
        MOVB      XAR0,#132             ; [CPU_ALU] |4104| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3898,column 5,is_stmt,isa 0
        OR        *+XAR5[0],#0x0020     ; [CPU_ALU] |3898| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4104,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfffe ; [CPU_ALU] |4104| 
        MOVB      XAR0,#132             ; [CPU_ALU] |4104| 
        ORB       AL,#0x02              ; [CPU_ALU] |4104| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |4104| 
        MOVB      XAR0,#132             ; [CPU_ALU] |4104| 
        AND       AL,*+XAR4[AR0],#0xfffb ; [CPU_ALU] |4104| 
        MOVB      XAR0,#132             ; [CPU_ALU] |4104| 
        ORB       AL,#0x08              ; [CPU_ALU] |4104| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |4104| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |4540| 
        ADDB      ACC,#151              ; [CPU_ALU] |4540| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |4540| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4654,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |4654| 
        ADDB      ACC,#155              ; [CPU_ALU] |4654| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |4654| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4540,column 5,is_stmt,isa 0
        OR        *+XAR5[0],#0x002c     ; [CPU_ALU] |4540| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4654,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x0004     ; [CPU_ALU] |4654| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4655,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4655| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$114, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$114, DW_AT_TI_end_line(0x348)
	.dwattr $C$DW$114, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$114

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_configurePWMUpDwnCnt||

$C$DW$118	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$118, DW_AT_name("VIENNA_HAL_configurePWMUpDwnCnt")
	.dwattr $C$DW$118, DW_AT_low_pc(||VIENNA_HAL_configurePWMUpDwnCnt||)
	.dwattr $C$DW$118, DW_AT_high_pc(0x00)
	.dwattr $C$DW$118, DW_AT_linkage_name("VIENNA_HAL_configurePWMUpDwnCnt")
	.dwattr $C$DW$118, DW_AT_external
	.dwattr $C$DW$118, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$118, DW_AT_decl_line(0x92)
	.dwattr $C$DW$118, DW_AT_decl_column(0x06)
	.dwattr $C$DW$118, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_hal.c",line 147,column 1,is_stmt,address ||VIENNA_HAL_configurePWMUpDwnCnt||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_configurePWMUpDwnCnt||
$C$DW$119	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$119, DW_AT_name("base1")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg0]

$C$DW$120	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$120, DW_AT_name("pwm_period_ticks")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: VIENNA_HAL_configurePWMUpDwnCnt FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||VIENNA_HAL_configurePWMUpDwnCnt||:
;* AR5   assigned to $O$C1
;* AL    assigned to $O$C2
;* AR4   assigned to base1
$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("base1")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg12]

;* AL    assigned to pwm_period_ticks
$C$DW$122	.dwtag  DW_TAG_variable
	.dwattr $C$DW$122, DW_AT_name("pwm_period_ticks")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AR4               ; [CPU_ALU] |147| 
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR5,ACC              ; [CPU_ALU] |147| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |147| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOVB      XAR1,#99              ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVB      XAR0,#96              ; [CPU_ALU] |2148| 
	.dwpsn	file "../vienna_hal.c",line 147,column 1,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |147| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        LSR       AL,1                  ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1759,column 9,is_stmt,isa 0
        AND       *+XAR4[0],#0xfff7     ; [CPU_ALU] |1759| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |2182| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        ADDB      XAR5,#8               ; [CPU_ALU] |2341| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVB      XAR1,#107             ; [CPU_ALU] |2446| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOV       *+XAR4[4],#0          ; [CPU_ALU] |1549| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVL      P,*+XAR4[AR0]         ; [CPU_FPU] |2148| 
        MOVB      XAR0,#96              ; [CPU_FPU] |2148| 
        AND       PH,#0                 ; [CPU_ALU] |2148| 
        MOVL      *+XAR4[AR0],P         ; [CPU_FPU] |2148| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2805,column 9,is_stmt,isa 0
        MOVB      XAR0,#64              ; [CPU_FPU] |2805| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1849,column 5,is_stmt,isa 0
        AND       AH,*+XAR4[0],#0xfffe  ; [CPU_FPU] |1849| 
        ORB       AH,#0x02              ; [CPU_ALU] |1849| 
        MOV       *+XAR4[0],AH          ; [CPU_FPU] |1849| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1627,column 5,is_stmt,isa 0
        AND       *+XAR4[0],#0xe07f     ; [CPU_FPU] |1627| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR1],AL        ; [CPU_FPU] |2446| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2805,column 9,is_stmt,isa 0
        MOVB      XAR1,#64              ; [CPU_FPU] |2805| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        AND       *+XAR5[0],#0xf3ec     ; [CPU_ALU] |2341| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2805,column 9,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xffef ; [CPU_ALU] |2805| 
        ORB       AL,#0x20              ; [CPU_ALU] |2805| 
        MOVB      XAR0,#64              ; [CPU_ALU] |2805| 
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |2805| 
        MOVB      XAR1,#64              ; [CPU_ALU] |2805| 
        AND       AL,*+XAR4[AR0],#0xff7f ; [CPU_ALU] |2805| 
        ORB       AL,#0x40              ; [CPU_ALU] |2805| 
        MOVB      XAR0,#64              ; [CPU_ALU] |2805| 
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |2805| 
        MOVB      XAR1,#64              ; [CPU_ALU] |2805| 
        AND       AL,*+XAR4[AR0],#0xfffc ; [CPU_ALU] |2805| 
        ORB       AL,#0x01              ; [CPU_ALU] |2805| 
        MOVB      XAR0,#66              ; [CPU_ALU] |2805| 
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |2805| 
        MOVB      XAR1,#66              ; [CPU_ALU] |2805| 
        AND       AL,*+XAR4[AR0],#0xffef ; [CPU_ALU] |2805| 
        ORB       AL,#0x20              ; [CPU_ALU] |2805| 
        MOVB      XAR0,#66              ; [CPU_ALU] |2805| 
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |2805| 
        MOVB      XAR1,#66              ; [CPU_ALU] |2805| 
        AND       AL,*+XAR4[AR0],#0xff7f ; [CPU_ALU] |2805| 
        ORB       AL,#0x40              ; [CPU_ALU] |2805| 
        MOVB      XAR0,#66              ; [CPU_ALU] |2805| 
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |2805| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3037,column 5,is_stmt,isa 0
        MOVB      XAR1,#71              ; [CPU_ALU] |3037| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2805,column 9,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfffc ; [CPU_ALU] |2805| 
        MOVB      XAR0,#66              ; [CPU_ALU] |2805| 
        ORB       AL,#0x01              ; [CPU_ALU] |2805| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |2805| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3037,column 5,is_stmt,isa 0
        MOVB      XAR0,#71              ; [CPU_ALU] |3037| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |3037| 
        ORB       AL,#0xc0              ; [CPU_ALU] |3037| 
	.dwpsn	file "../vienna_hal.c",line 208,column 5,is_stmt,isa 0
        MOVB      XAR0,#73              ; [CPU_ALU] |208| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3037,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |3037| 
        MOVB      XAR1,#71              ; [CPU_ALU] |3037| 
	.dwpsn	file "../vienna_hal.c",line 208,column 5,is_stmt,isa 0
        MOVB      *+XAR4[AR0],#5,UNC    ; [CPU_ALU] |208| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 3037,column 5,is_stmt,isa 0
        MOVB      XAR0,#71              ; [CPU_ALU] |3037| 
        AND       AL,*+XAR4[AR0],#0xff3f ; [CPU_ALU] |3037| 
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |3037| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$118, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$118, DW_AT_TI_end_line(0xd4)
	.dwattr $C$DW$118, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$118

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_setupPWM||

$C$DW$124	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$124, DW_AT_name("VIENNA_HAL_setupPWM")
	.dwattr $C$DW$124, DW_AT_low_pc(||VIENNA_HAL_setupPWM||)
	.dwattr $C$DW$124, DW_AT_high_pc(0x00)
	.dwattr $C$DW$124, DW_AT_linkage_name("VIENNA_HAL_setupPWM")
	.dwattr $C$DW$124, DW_AT_external
	.dwattr $C$DW$124, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$124, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$124, DW_AT_decl_column(0x06)
	.dwattr $C$DW$124, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../vienna_hal.c",line 110,column 1,is_stmt,address ||VIENNA_HAL_setupPWM||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_setupPWM||
$C$DW$125	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$125, DW_AT_name("base1")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg0]

$C$DW$126	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$126, DW_AT_name("base2")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_breg20 -10]

$C$DW$127	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$127, DW_AT_name("base3")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_breg20 -12]

$C$DW$128	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$128, DW_AT_name("pwm_period_ticks")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: VIENNA_HAL_setupPWM           FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||VIENNA_HAL_setupPWM||:
;* AR7   assigned to base1
$C$DW$129	.dwtag  DW_TAG_variable
	.dwattr $C$DW$129, DW_AT_name("base1")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg18]

;* AR3   assigned to base2
$C$DW$130	.dwtag  DW_TAG_variable
	.dwattr $C$DW$130, DW_AT_name("base2")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to base3
$C$DW$131	.dwtag  DW_TAG_variable
	.dwattr $C$DW$131, DW_AT_name("base3")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg8]

;* T     assigned to pwm_period_ticks
$C$DW$132	.dwtag  DW_TAG_variable
	.dwattr $C$DW$132, DW_AT_name("pwm_period_ticks")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg22]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOV       T,AR4                 ; [CPU_ALU] |110| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |110| 
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        MOVL      XAR3,*-SP[10]         ; [CPU_ALU] |110| 
        MOVL      XAR2,*-SP[12]         ; [CPU_ALU] |110| 
	.dwpsn	file "../vienna_hal.c",line 111,column 5,is_stmt,isa 0
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("VIENNA_HAL_configurePWMUpDwnCnt")
	.dwattr $C$DW$133, DW_AT_TI_call

        LCR       #||VIENNA_HAL_configurePWMUpDwnCnt|| ; [CPU_ALU] |111| 
        ; call occurs [#||VIENNA_HAL_configurePWMUpDwnCnt||] ; [] |111| 
	.dwpsn	file "../vienna_hal.c",line 112,column 5,is_stmt,isa 0
        MOVZ      AR4,T                 ; [CPU_ALU] |112| 
        MOVL      ACC,XAR3              ; [CPU_ALU] |112| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("VIENNA_HAL_configurePWMUpDwnCnt")
	.dwattr $C$DW$134, DW_AT_TI_call

        LCR       #||VIENNA_HAL_configurePWMUpDwnCnt|| ; [CPU_ALU] |112| 
        ; call occurs [#||VIENNA_HAL_configurePWMUpDwnCnt||] ; [] |112| 
	.dwpsn	file "../vienna_hal.c",line 113,column 5,is_stmt,isa 0
        MOVZ      AR4,T                 ; [CPU_ALU] |113| 
        MOVL      ACC,XAR2              ; [CPU_ALU] |113| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("VIENNA_HAL_configurePWMUpDwnCnt")
	.dwattr $C$DW$135, DW_AT_TI_call

        LCR       #||VIENNA_HAL_configurePWMUpDwnCnt|| ; [CPU_ALU] |113| 
        ; call occurs [#||VIENNA_HAL_configurePWMUpDwnCnt||] ; [] |113| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVB      XAR1,#96              ; [CPU_ALU] |2148| 
        MOVB      XAR0,#96              ; [CPU_ALU] |2148| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1818,column 5,is_stmt,isa 0
        AND       *+XAR7[0],#0xfffb     ; [CPU_ALU] |1818| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        AND       AL,*+XAR7[0],#0xffdf  ; [CPU_ALU] |1706| 
        ORB       AL,#0x10              ; [CPU_ALU] |1706| 
        MOV       *+XAR7[0],AL          ; [CPU_ALU] |1706| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1793,column 5,is_stmt,isa 0
        OR        *+XAR3[0],#0x0004     ; [CPU_ALU] |1793| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        AND       *+XAR3[0],#0xffcf     ; [CPU_ALU] |1706| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR3[AR0]       ; [CPU_ALU] |2148| 
        ANDB      AH,#0                 ; [CPU_ALU] |2148| 
        MOVB      XAR0,#96              ; [CPU_ALU] |2148| 
        OR        AH,#2                 ; [CPU_ALU] |2148| 
        MOVL      *+XAR3[AR1],ACC       ; [CPU_ALU] |2148| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1581,column 9,is_stmt,isa 0
        OR        *+XAR3[0],#0x2000     ; [CPU_ALU] |1581| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1793,column 5,is_stmt,isa 0
        OR        *+XAR2[0],#0x0004     ; [CPU_ALU] |1793| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        AND       *+XAR2[0],#0xffcf     ; [CPU_ALU] |1706| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |2148| 
        ANDB      AH,#0                 ; [CPU_ALU] |2148| 
        MOVB      XAR0,#96              ; [CPU_FPU] |2148| 
        OR        AH,#2                 ; [CPU_ALU] |2148| 
        MOVL      *+XAR2[AR0],ACC       ; [CPU_ALU] |2148| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 1581,column 9,is_stmt,isa 0
        OR        *+XAR2[0],#0x2000     ; [CPU_ALU] |1581| 
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$124, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$124, DW_AT_TI_end_line(0x8d)
	.dwattr $C$DW$124, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$124

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_setupLEDGPIO||

$C$DW$137	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$137, DW_AT_name("VIENNA_HAL_setupLEDGPIO")
	.dwattr $C$DW$137, DW_AT_low_pc(||VIENNA_HAL_setupLEDGPIO||)
	.dwattr $C$DW$137, DW_AT_high_pc(0x00)
	.dwattr $C$DW$137, DW_AT_linkage_name("VIENNA_HAL_setupLEDGPIO")
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$137, DW_AT_decl_line(0x361)
	.dwattr $C$DW$137, DW_AT_decl_column(0x06)
	.dwattr $C$DW$137, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_hal.c",line 866,column 1,is_stmt,address ||VIENNA_HAL_setupLEDGPIO||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_setupLEDGPIO||

;***************************************************************
;* FNAME: VIENNA_HAL_setupLEDGPIO       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_HAL_setupLEDGPIO||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../vienna_hal.c",line 867,column 5,is_stmt,isa 0
        MOVB      ACC,#31               ; [CPU_ALU] |867| 
        MOVB      XAR4,#1               ; [CPU_ALU] |867| 
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$138, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |867| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |867| 
	.dwpsn	file "../vienna_hal.c",line 868,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |868| 
        MOVB      ACC,#34               ; [CPU_ALU] |868| 
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$139, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |868| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |868| 
	.dwpsn	file "../vienna_hal.c",line 869,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |869| 
        MOVB      ACC,#31               ; [CPU_ALU] |869| 
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$140, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |869| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |869| 
	.dwpsn	file "../vienna_hal.c",line 870,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |870| 
        MOVB      ACC,#34               ; [CPU_ALU] |870| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$141, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |870| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |870| 
	.dwpsn	file "../vienna_hal.c",line 871,column 5,is_stmt,isa 0
        MOVL      XAR4,#531968          ; [CPU_ARAU] |871| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |871| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$142, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |871| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |871| 
	.dwpsn	file "../vienna_hal.c",line 872,column 5,is_stmt,isa 0
        MOV       ACC,#4481 << 10       ; [CPU_ALU] |872| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$143, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |872| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |872| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$137, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$137, DW_AT_TI_end_line(0x369)
	.dwattr $C$DW$137, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$137

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_setupDevice||

$C$DW$145	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$145, DW_AT_name("VIENNA_HAL_setupDevice")
	.dwattr $C$DW$145, DW_AT_low_pc(||VIENNA_HAL_setupDevice||)
	.dwattr $C$DW$145, DW_AT_high_pc(0x00)
	.dwattr $C$DW$145, DW_AT_linkage_name("VIENNA_HAL_setupDevice")
	.dwattr $C$DW$145, DW_AT_external
	.dwattr $C$DW$145, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$145, DW_AT_decl_line(0x22)
	.dwattr $C$DW$145, DW_AT_decl_column(0x06)
	.dwattr $C$DW$145, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_hal.c",line 35,column 1,is_stmt,address ||VIENNA_HAL_setupDevice||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_setupDevice||

;***************************************************************
;* FNAME: VIENNA_HAL_setupDevice        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_HAL_setupDevice||:
;* AL    assigned to tcrValue
$C$DW$146	.dwtag  DW_TAG_variable
	.dwattr $C$DW$146, DW_AT_name("tcrValue")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg0]

;* AL    assigned to tcrValue
$C$DW$147	.dwtag  DW_TAG_variable
	.dwattr $C$DW$147, DW_AT_name("tcrValue")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg0]

;* AL    assigned to tcrValue
$C$DW$148	.dwtag  DW_TAG_variable
	.dwattr $C$DW$148, DW_AT_name("tcrValue")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg0]

;* AL    assigned to tcrValue
$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("tcrValue")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg0]

;* AL    assigned to tcrValue
$C$DW$150	.dwtag  DW_TAG_variable
	.dwattr $C$DW$150, DW_AT_name("tcrValue")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg0]

;* AL    assigned to tcrValue
$C$DW$151	.dwtag  DW_TAG_variable
	.dwattr $C$DW$151, DW_AT_name("tcrValue")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../vienna_hal.c",line 39,column 5,is_stmt,isa 0
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("Device_init")
	.dwattr $C$DW$152, DW_AT_TI_call

        LCR       #||Device_init||      ; [CPU_ALU] |39| 
        ; call occurs [#||Device_init||] ; [] |39| 
	.dwpsn	file "../vienna_hal.c",line 44,column 5,is_stmt,isa 0
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("Device_initGPIO")
	.dwattr $C$DW$153, DW_AT_TI_call

        LCR       #||Device_initGPIO||  ; [CPU_ALU] |44| 
        ; call occurs [#||Device_initGPIO||] ; [] |44| 
	.dwpsn	file "../vienna_hal.c",line 49,column 5,is_stmt,isa 0
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("Interrupt_initModule")
	.dwattr $C$DW$154, DW_AT_TI_call

        LCR       #||Interrupt_initModule|| ; [CPU_ALU] |49| 
        ; call occurs [#||Interrupt_initModule||] ; [] |49| 
	.dwpsn	file "../vienna_hal.c",line 55,column 5,is_stmt,isa 0
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("Interrupt_initVectorTable")
	.dwattr $C$DW$155, DW_AT_TI_call

        LCR       #||Interrupt_initVectorTable|| ; [CPU_ALU] |55| 
        ; call occurs [#||Interrupt_initVectorTable||] ; [] |55| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 335,column 5,is_stmt,isa 0
        MOVL      XAR4,#2000000         ; [CPU_ARAU] |335| 
        MOV       AL,#11520             ; [CPU_ALU] |335| 
        MOV       AH,#305               ; [CPU_ALU] |335| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 379,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |379| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 335,column 5,is_stmt,isa 0
        MOV32     *(0:0x0c02),XAR4      ; [CPU_FPU] |335| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 379,column 5,is_stmt,isa 0
        MOVB      XAR7,#0               ; [CPU_ALU] |379| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 335,column 5,is_stmt,isa 0
        MOV32     *(0:0x0c0a),ACC       ; [CPU_FPU] |335| 
        MOVL      XAR4,#20000           ; [CPU_ARAU] |335| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 380,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |380| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 379,column 5,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |379| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 335,column 5,is_stmt,isa 0
        MOV32     *(0:0x0c12),XAR4      ; [CPU_FPU] |335| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 379,column 5,is_stmt,isa 0
        MOV       *(0:0x0c07),AR6       ; [CPU_ALU] |379| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 380,column 5,is_stmt,isa 0
        MOV       *(0:0x0c06),AL        ; [CPU_ALU] |380| 
	.dwpsn	file "../vienna_hal.c",line 84,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |84| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 379,column 5,is_stmt,isa 0
        MOV       *(0:0x0c0f),AR7       ; [CPU_ALU] |379| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 380,column 5,is_stmt,isa 0
        MOV       *(0:0x0c0e),AR6       ; [CPU_ALU] |380| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 379,column 5,is_stmt,isa 0
        MOV       *(0:0x0c17),AH        ; [CPU_ALU] |379| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 380,column 5,is_stmt,isa 0
        MOV       *(0:0x0c16),AL        ; [CPU_ALU] |380| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 259,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c04)        ; [CPU_ALU] |259| 
        AND       AL,AL,#0x7fff         ; [CPU_ALU] |259| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 260,column 5,is_stmt,isa 0
        ORB       AL,#0x10              ; [CPU_ALU] |260| 
        MOV       *(0:0x0c04),AL        ; [CPU_ALU] |260| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 259,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |259| 
        AND       AL,AL,#0x7fff         ; [CPU_ALU] |259| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 260,column 5,is_stmt,isa 0
        ORB       AL,#0x10              ; [CPU_ALU] |260| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |260| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 259,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |259| 
        AND       AL,AL,#0x7fff         ; [CPU_ALU] |259| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 260,column 5,is_stmt,isa 0
        ORB       AL,#0x10              ; [CPU_ALU] |260| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |260| 
	.dwpsn	file "../vienna_hal.c",line 84,column 5,is_stmt,isa 0
        MOV       ACC,#3072             ; [CPU_ALU] |84| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("CPUTimer_setEmulationMode")
	.dwattr $C$DW$156, DW_AT_TI_call

        LCR       #||CPUTimer_setEmulationMode|| ; [CPU_ALU] |84| 
        ; call occurs [#||CPUTimer_setEmulationMode||] ; [] |84| 
	.dwpsn	file "../vienna_hal.c",line 86,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |86| 
        MOV       ACC,#3080             ; [CPU_ALU] |86| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("CPUTimer_setEmulationMode")
	.dwattr $C$DW$157, DW_AT_TI_call

        LCR       #||CPUTimer_setEmulationMode|| ; [CPU_ALU] |86| 
        ; call occurs [#||CPUTimer_setEmulationMode||] ; [] |86| 
	.dwpsn	file "../vienna_hal.c",line 88,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |88| 
        MOV       ACC,#3088             ; [CPU_ALU] |88| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("CPUTimer_setEmulationMode")
	.dwattr $C$DW$158, DW_AT_TI_call

        LCR       #||CPUTimer_setEmulationMode|| ; [CPU_ALU] |88| 
        ; call occurs [#||CPUTimer_setEmulationMode||] ; [] |88| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 236,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c04)        ; [CPU_ALU] |236| 
        AND       AL,AL,#0x7fff         ; [CPU_ALU] |236| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 237,column 5,is_stmt,isa 0
        ORB       AL,#0x20              ; [CPU_ALU] |237| 
        MOV       *(0:0x0c04),AL        ; [CPU_ALU] |237| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 236,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |236| 
        AND       AL,AL,#0x7fff         ; [CPU_ALU] |236| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 237,column 5,is_stmt,isa 0
        ORB       AL,#0x20              ; [CPU_ALU] |237| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |237| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 236,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |236| 
        AND       AL,AL,#0x7fff         ; [CPU_ALU] |236| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 237,column 5,is_stmt,isa 0
        ORB       AL,#0x20              ; [CPU_ALU] |237| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |237| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 283,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0c04)        ; [CPU_ALU] |283| 
        AND       AL,#0xffef            ; [CPU_ALU] |283| 
        MOV       *(0:0x0c04),AL        ; [CPU_ALU] |283| 
        MOV       AL,*(0:0x0c0c)        ; [CPU_ALU] |283| 
        AND       AL,#0xffef            ; [CPU_ALU] |283| 
        MOV       *(0:0x0c0c),AL        ; [CPU_ALU] |283| 
        MOV       AL,*(0:0x0c14)        ; [CPU_ALU] |283| 
        AND       AL,#0xffef            ; [CPU_ALU] |283| 
        MOV       *(0:0x0c14),AL        ; [CPU_ALU] |283| 
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$145, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$145, DW_AT_TI_end_line(0x66)
	.dwattr $C$DW$145, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$145

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_setupCMPSS||

$C$DW$160	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$160, DW_AT_name("VIENNA_HAL_setupCMPSS")
	.dwattr $C$DW$160, DW_AT_low_pc(||VIENNA_HAL_setupCMPSS||)
	.dwattr $C$DW$160, DW_AT_high_pc(0x00)
	.dwattr $C$DW$160, DW_AT_linkage_name("VIENNA_HAL_setupCMPSS")
	.dwattr $C$DW$160, DW_AT_external
	.dwattr $C$DW$160, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$160, DW_AT_decl_line(0x244)
	.dwattr $C$DW$160, DW_AT_decl_column(0x06)
	.dwattr $C$DW$160, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../vienna_hal.c",line 582,column 1,is_stmt,address ||VIENNA_HAL_setupCMPSS||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_setupCMPSS||
$C$DW$161	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$161, DW_AT_name("base1")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg0]

$C$DW$162	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$162, DW_AT_name("current_limit")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$163	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$163, DW_AT_name("current_max_sense")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x2f]


;***************************************************************
;* FNAME: VIENNA_HAL_setupCMPSS         FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            1 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||VIENNA_HAL_setupCMPSS||:
;* AR6   assigned to $O$C1
;* AR1   assigned to base1
$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("base1")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg6]

;* R0    assigned to current_limit
$C$DW$165	.dwtag  DW_TAG_variable
	.dwattr $C$DW$165, DW_AT_name("current_limit")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to current_max_sense
$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("current_max_sense")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOVL      XAR1,ACC              ; [CPU_ALU] |582| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 263,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |263| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 265,column 5,is_stmt,isa 0
        OR        *+XAR1[0],#0x8000     ; [CPU_ALU] |265| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 567,column 5,is_stmt,isa 0
        AND       *+XAR1[4],#0xff5e     ; [CPU_ALU] |567| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 571,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |571| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 601,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,#17664        ; [CPU_FPU] |601| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        DIVF32    R0H,R0H,R1H           ; [CPU_FPU] |601| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        F32TOI16  R0H,R0H               ; [CPU_FPU] |601| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     XAR6,R0H              ; [CPU_FPU] |601| 
        MOV       AH,#2048              ; [CPU_ALU] |601| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 631,column 5,is_stmt,isa 0
        MOV       AL,#2048              ; [CPU_ALU] |631| 
        MOVB      XAR0,#18              ; [CPU_ALU] |631| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 601,column 5,is_stmt,isa 0
        ADD       AH,AR6                ; [CPU_ALU] |601| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 631,column 5,is_stmt,isa 0
        SUB       AL,AR6                ; [CPU_ALU] |631| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 601,column 5,is_stmt,isa 0
        MOV       *+XAR1[6],AH          ; [CPU_ALU] |601| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 631,column 5,is_stmt,isa 0
        MOV       *+XAR1[AR0],AL        ; [CPU_ALU] |631| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 337,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |337| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 339,column 5,is_stmt,isa 0
        AND       *+XAR1[0],#0xffbc     ; [CPU_ALU] |339| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 385,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[0],#0xbeff  ; [CPU_ALU] |385| 
        OR        AL,#0x0200            ; [CPU_ALU] |385| 
        MOV       *+XAR1[0],AL          ; [CPU_ALU] |385| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 388,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |388| 
	.dwpsn	file "../vienna_hal.c",line 618,column 5,is_stmt,isa 0
        MOVB      XAR4,#2               ; [CPU_ALU] |618| 
        MOVB      XAR5,#10              ; [CPU_ALU] |618| 
        MOVL      ACC,XAR1              ; [CPU_ALU] |618| 
        MOVB      *-SP[1],#7,UNC        ; [CPU_ALU] |618| 
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("CMPSS_configFilterHigh")
	.dwattr $C$DW$167, DW_AT_TI_call

        LCR       #||CMPSS_configFilterHigh|| ; [CPU_ALU] |618| 
        ; call occurs [#||CMPSS_configFilterHigh||] ; [] |618| 
	.dwpsn	file "../vienna_hal.c",line 619,column 5,is_stmt,isa 0
        MOVB      XAR4,#2               ; [CPU_ALU] |619| 
        MOVB      XAR5,#10              ; [CPU_ALU] |619| 
        MOVB      *-SP[1],#7,UNC        ; [CPU_ALU] |619| 
        MOVL      ACC,XAR1              ; [CPU_ALU] |619| 
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("CMPSS_configFilterLow")
	.dwattr $C$DW$168, DW_AT_TI_call

        LCR       #||CMPSS_configFilterLow|| ; [CPU_ALU] |619| 
        ; call occurs [#||CMPSS_configFilterLow||] ; [] |619| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 660,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |660| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 662,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |662| 
        ADDB      XAR4,#24              ; [CPU_ALU] |662| 
        OR        *+XAR4[0],#0x8000     ; [CPU_ALU] |662| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 695,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |695| 
        ADDB      XAR4,#22              ; [CPU_ALU] |695| 
        OR        *+XAR4[0],#0x8000     ; [CPU_ALU] |695| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 432,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[0],#0xffc3  ; [CPU_ALU] |432| 
        ORB       AL,#0x08              ; [CPU_ALU] |432| 
        MOV       *+XAR1[0],AL          ; [CPU_ALU] |432| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 481,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[0],#0xc3ff  ; [CPU_ALU] |481| 
        OR        AL,#0x0800            ; [CPU_ALU] |481| 
        MOV       *+XAR1[0],AL          ; [CPU_ALU] |481| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 1038,column 5,is_stmt,isa 0
        MOVB      *+XAR1[1],#2,UNC      ; [CPU_ALU] |1038| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        OR        *+XAR1[3],#0x0002     ; [CPU_ALU] |779| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        OR        *+XAR1[3],#0x0200     ; [CPU_ALU] |809| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$160, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$160, DW_AT_TI_end_line(0x283)
	.dwattr $C$DW$160, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$160

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_setupCLA||

$C$DW$170	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$170, DW_AT_name("VIENNA_HAL_setupCLA")
	.dwattr $C$DW$170, DW_AT_low_pc(||VIENNA_HAL_setupCLA||)
	.dwattr $C$DW$170, DW_AT_high_pc(0x00)
	.dwattr $C$DW$170, DW_AT_linkage_name("VIENNA_HAL_setupCLA")
	.dwattr $C$DW$170, DW_AT_external
	.dwattr $C$DW$170, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$170, DW_AT_decl_line(0x49e)
	.dwattr $C$DW$170, DW_AT_decl_column(0x06)
	.dwattr $C$DW$170, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_hal.c",line 1183,column 1,is_stmt,address ||VIENNA_HAL_setupCLA||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_setupCLA||

;***************************************************************
;* FNAME: VIENNA_HAL_setupCLA           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_HAL_setupCLA||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$170, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$170, DW_AT_TI_end_line(0x4d8)
	.dwattr $C$DW$170, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$170

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_setupBoardProtection||

$C$DW$172	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$172, DW_AT_name("VIENNA_HAL_setupBoardProtection")
	.dwattr $C$DW$172, DW_AT_low_pc(||VIENNA_HAL_setupBoardProtection||)
	.dwattr $C$DW$172, DW_AT_high_pc(0x00)
	.dwattr $C$DW$172, DW_AT_linkage_name("VIENNA_HAL_setupBoardProtection")
	.dwattr $C$DW$172, DW_AT_external
	.dwattr $C$DW$172, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$172, DW_AT_decl_line(0x288)
	.dwattr $C$DW$172, DW_AT_decl_column(0x06)
	.dwattr $C$DW$172, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../vienna_hal.c",line 651,column 1,is_stmt,address ||VIENNA_HAL_setupBoardProtection||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_setupBoardProtection||
$C$DW$173	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$173, DW_AT_name("base1")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg0]

$C$DW$174	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$174, DW_AT_name("base2")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_breg20 -14]

$C$DW$175	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$175, DW_AT_name("base3")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_breg20 -16]

$C$DW$176	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$176, DW_AT_name("current_limit")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$177	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$177, DW_AT_name("current_max_sense")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x2f]


;***************************************************************
;* FNAME: VIENNA_HAL_setupBoardProtection FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 10 SOE     *
;***************************************************************

||VIENNA_HAL_setupBoardProtection||:
;* AL    assigned to $O$C1
;* AR7   assigned to $O$C2
;* AR6   assigned to $O$C3
;* AR1   assigned to base1
$C$DW$178	.dwtag  DW_TAG_variable
	.dwattr $C$DW$178, DW_AT_name("base1")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to base2
$C$DW$179	.dwtag  DW_TAG_variable
	.dwattr $C$DW$179, DW_AT_name("base2")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg8]

;* AR3   assigned to base3
$C$DW$180	.dwtag  DW_TAG_variable
	.dwattr $C$DW$180, DW_AT_name("base3")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg10]

;* R5    assigned to current_limit
$C$DW$181	.dwtag  DW_TAG_variable
	.dwattr $C$DW$181, DW_AT_name("current_limit")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x3f]

;* R4    assigned to current_max_sense
$C$DW$182	.dwtag  DW_TAG_variable
	.dwattr $C$DW$182, DW_AT_name("current_max_sense")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x3b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR1,ACC              ; [CPU_ALU] |651| 
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 8
	.dwcfi	cfa_offset, -10
        MOV32     R4H,R1H               ; [CPU_FPU] |651| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 10
	.dwcfi	cfa_offset, -12
        MOV32     R5H,R0H               ; [CPU_FPU] |651| 
        MOVL      XAR3,*-SP[16]         ; [CPU_ALU] |651| 
        MOVL      XAR2,*-SP[14]         ; [CPU_ALU] |651| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 865,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |865| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 867,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7a22)       ; [CPU_FPU] |867| 
        MOV32     *(0:0x7a22),ACC       ; [CPU_FPU] |867| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 868,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |868| 
	.dwpsn	file "../vienna_hal.c",line 665,column 9,is_stmt,isa 0
        MOV       ACC,#23680            ; [CPU_ALU] |665| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("VIENNA_HAL_setupCMPSS")
	.dwattr $C$DW$183, DW_AT_TI_call

        LCR       #||VIENNA_HAL_setupCMPSS|| ; [CPU_ALU] |665| 
        ; call occurs [#||VIENNA_HAL_setupCMPSS||] ; [] |665| 
	.dwpsn	file "../vienna_hal.c",line 668,column 9,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |668| 
        MOVB      AH,#1                 ; [CPU_ALU] |668| 
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$184, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |668| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |668| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 865,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |865| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 867,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7a22)       ; [CPU_FPU] |867| 
        ORB       AL,#0x01              ; [CPU_ALU] |867| 
        MOV32     *(0:0x7a22),ACC       ; [CPU_FPU] |867| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 868,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |868| 
	.dwpsn	file "../vienna_hal.c",line 679,column 9,is_stmt,isa 0
        MOV       ACC,#23712            ; [CPU_ALU] |679| 
        MOV32     R0H,R5H               ; [CPU_FPU] |679| 
        MOV32     R1H,R4H               ; [CPU_FPU] |679| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("VIENNA_HAL_setupCMPSS")
	.dwattr $C$DW$185, DW_AT_TI_call

        LCR       #||VIENNA_HAL_setupCMPSS|| ; [CPU_ALU] |679| 
        ; call occurs [#||VIENNA_HAL_setupCMPSS||] ; [] |679| 
	.dwpsn	file "../vienna_hal.c",line 682,column 9,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |682| 
        MOV       AH,#1025              ; [CPU_ALU] |682| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$186, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |682| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |682| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 865,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |865| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 867,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7a22)       ; [CPU_FPU] |867| 
        ORB       AL,#0x04              ; [CPU_ALU] |867| 
        MOV32     *(0:0x7a22),ACC       ; [CPU_FPU] |867| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 868,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |868| 
	.dwpsn	file "../vienna_hal.c",line 693,column 9,is_stmt,isa 0
        MOV       ACC,#23776            ; [CPU_ALU] |693| 
        MOV32     R0H,R5H               ; [CPU_FPU] |693| 
        MOV32     R1H,R4H               ; [CPU_FPU] |693| 
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("VIENNA_HAL_setupCMPSS")
	.dwattr $C$DW$187, DW_AT_TI_call

        LCR       #||VIENNA_HAL_setupCMPSS|| ; [CPU_ALU] |693| 
        ; call occurs [#||VIENNA_HAL_setupCMPSS||] ; [] |693| 
	.dwpsn	file "../vienna_hal.c",line 696,column 9,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |696| 
        MOV       AH,#3073              ; [CPU_ALU] |696| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$188, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |696| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |696| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 865,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |865| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 592,column 5,is_stmt,isa 0
        DIVF32    R0H,R5H,R4H           ; [CPU_FPU] |592| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R0H,#18048        ; [CPU_FPU] |592| 
        NOP       ; [CPU_ALU] 
        F32TOUI16 R0H,R0H               ; [CPU_FPU] |592| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 867,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7a22)       ; [CPU_FPU] |867| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 592,column 5,is_stmt,isa 0
        MOV32     XAR6,R0H              ; [CPU_FPU] |592| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 867,column 5,is_stmt,isa 0
        ORB       AL,#0x40              ; [CPU_ALU] |867| 
        MOV32     *(0:0x7a22),ACC       ; [CPU_FPU] |867| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 592,column 5,is_stmt,isa 0
        MOV       AL,#16384             ; [CPU_ALU] |592| 
        ADD       AL,AR6                ; [CPU_ALU] |592| 
        MOVZ      AR7,AL                ; [CPU_ALU] |592| 
        MOV       AH,*(0:0x5e13)        ; [CPU_ALU] |592| 
        AND       AH,#0x8000            ; [CPU_ALU] |592| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 627,column 5,is_stmt,isa 0
        MOV       AL,#16384             ; [CPU_FPU] |627| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 592,column 5,is_stmt,isa 0
        OR        AH,AR7                ; [CPU_ALU] |592| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 627,column 5,is_stmt,isa 0
        SUB       AL,AR6                ; [CPU_ALU] |627| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 592,column 5,is_stmt,isa 0
        MOV       *(0:0x5e13),AH        ; [CPU_FPU] |592| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 627,column 5,is_stmt,isa 0
        MOV       AH,*(0:0x5e14)        ; [CPU_FPU] |627| 
        AND       AH,#0x8000            ; [CPU_ALU] |627| 
        OR        AH,AL                 ; [CPU_ALU] |627| 
        MOV       *(0:0x5e14),AH        ; [CPU_ALU] |627| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 628,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |628| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 972,column 5,is_stmt,isa 0
        MOV32     P,*(0:0x5e02)         ; [CPU_FPU] |972| 
        OR        PL,#65535             ; [CPU_ALU] |972| 
        OR        PH,#32768             ; [CPU_ALU] |972| 
        MOV32     *(0:0x5e02),P         ; [CPU_FPU] |972| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 591,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |591| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 592,column 5,is_stmt,isa 0
        MOV       AH,*(0:0x5e23)        ; [CPU_ALU] |592| 
        AND       AH,#0x8000            ; [CPU_ALU] |592| 
        OR        AH,AR7                ; [CPU_ALU] |592| 
        MOV       *(0:0x5e23),AH        ; [CPU_ALU] |592| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 627,column 5,is_stmt,isa 0
        MOV       AH,*(0:0x5e24)        ; [CPU_ALU] |627| 
        AND       AH,#0x8000            ; [CPU_ALU] |627| 
        OR        AH,AL                 ; [CPU_ALU] |627| 
        MOV       *(0:0x5e24),AH        ; [CPU_ALU] |627| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 628,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |628| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 972,column 5,is_stmt,isa 0
        MOV32     P,*(0:0x5e02)         ; [CPU_FPU] |972| 
        OR        PL,#65535             ; [CPU_ALU] |972| 
        OR        PH,#32768             ; [CPU_ALU] |972| 
        MOV32     *(0:0x5e02),P         ; [CPU_FPU] |972| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 591,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |591| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 592,column 5,is_stmt,isa 0
        MOV       AH,*(0:0x5e33)        ; [CPU_ALU] |592| 
        AND       AH,#0x8000            ; [CPU_ALU] |592| 
        OR        AH,AR7                ; [CPU_ALU] |592| 
        MOV       *(0:0x5e33),AH        ; [CPU_ALU] |592| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 627,column 5,is_stmt,isa 0
        MOV       AH,*(0:0x5e34)        ; [CPU_ALU] |627| 
        AND       AH,#0x8000            ; [CPU_ALU] |627| 
        OR        AH,AL                 ; [CPU_ALU] |627| 
        MOV       *(0:0x5e34),AH        ; [CPU_ALU] |627| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 628,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |628| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h",line 972,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x5e02)       ; [CPU_FPU] |972| 
        OR        AL,#65535             ; [CPU_ALU] |972| 
        OR        AH,#32768             ; [CPU_ALU] |972| 
        MOV32     *(0:0x5e02),ACC       ; [CPU_FPU] |972| 
	.dwpsn	file "../vienna_hal.c",line 751,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |751| 
        MOV       AH,#8193              ; [CPU_ALU] |751| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$189, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |751| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |751| 
	.dwpsn	file "../vienna_hal.c",line 752,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |752| 
        MOV       AH,#9217              ; [CPU_ALU] |752| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$190, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |752| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |752| 
	.dwpsn	file "../vienna_hal.c",line 753,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |753| 
        MOV       AH,#10241             ; [CPU_ALU] |753| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("XBAR_setEPWMMuxConfig")
	.dwattr $C$DW$191, DW_AT_TI_call

        LCR       #||XBAR_setEPWMMuxConfig|| ; [CPU_ALU] |753| 
        ; call occurs [#||XBAR_setEPWMMuxConfig||] ; [] |753| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 865,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |865| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 867,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7a20)       ; [CPU_FPU] |867| 
        MOV32     *(0:0x7a20),ACC       ; [CPU_FPU] |867| 
        MOV32     ACC,*(0:0x7a20)       ; [CPU_FPU] |867| 
        OR        AH,#1                 ; [CPU_ALU] |867| 
        MOV32     *(0:0x7a20),ACC       ; [CPU_FPU] |867| 
        MOV32     ACC,*(0:0x7a20)       ; [CPU_FPU] |867| 
        OR        AH,#4                 ; [CPU_ALU] |867| 
        MOV32     *(0:0x7a20),ACC       ; [CPU_FPU] |867| 
        MOV32     ACC,*(0:0x7a20)       ; [CPU_FPU] |867| 
        OR        AH,#16                ; [CPU_ALU] |867| 
        MOV32     *(0:0x7a20),ACC       ; [CPU_FPU] |867| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h",line 868,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |868| 
	.dwpsn	file "../vienna_hal.c",line 760,column 5,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |760| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("VIENNA_HAL_setupPWMTrip")
	.dwattr $C$DW$192, DW_AT_TI_call

        LCR       #||VIENNA_HAL_setupPWMTrip|| ; [CPU_ALU] |760| 
        ; call occurs [#||VIENNA_HAL_setupPWMTrip||] ; [] |760| 
	.dwpsn	file "../vienna_hal.c",line 761,column 5,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |761| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("VIENNA_HAL_setupPWMTrip")
	.dwattr $C$DW$193, DW_AT_TI_call

        LCR       #||VIENNA_HAL_setupPWMTrip|| ; [CPU_ALU] |761| 
        ; call occurs [#||VIENNA_HAL_setupPWMTrip||] ; [] |761| 
	.dwpsn	file "../vienna_hal.c",line 762,column 5,is_stmt,isa 0
        MOVL      ACC,XAR3              ; [CPU_ALU] |762| 
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("VIENNA_HAL_setupPWMTrip")
	.dwattr $C$DW$194, DW_AT_TI_call

        LCR       #||VIENNA_HAL_setupPWMTrip|| ; [CPU_ALU] |762| 
        ; call occurs [#||VIENNA_HAL_setupPWMTrip||] ; [] |762| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 777,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |777| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5c83)        ; [CPU_ALU] |779| 
        ORB       AL,#0x02              ; [CPU_ALU] |779| 
        MOV       *(0:0x5c83),AL        ; [CPU_ALU] |779| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5c83)        ; [CPU_ALU] |809| 
        OR        AL,#0x0200            ; [CPU_ALU] |809| 
        MOV       *(0:0x5c83),AL        ; [CPU_ALU] |809| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5ca3)        ; [CPU_ALU] |779| 
        ORB       AL,#0x02              ; [CPU_ALU] |779| 
        MOV       *(0:0x5ca3),AL        ; [CPU_ALU] |779| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5ca3)        ; [CPU_ALU] |809| 
        OR        AL,#0x0200            ; [CPU_ALU] |809| 
        MOV       *(0:0x5ca3),AL        ; [CPU_ALU] |809| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 779,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5ce3)        ; [CPU_ALU] |779| 
        ORB       AL,#0x02              ; [CPU_ALU] |779| 
        MOV       *(0:0x5ce3),AL        ; [CPU_ALU] |779| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 809,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5ce3)        ; [CPU_ALU] |809| 
        OR        AL,#0x0200            ; [CPU_ALU] |809| 
        MOV       *(0:0x5ce3),AL        ; [CPU_ALU] |809| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cmpss.h",line 811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |811| 
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
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$172, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$172, DW_AT_TI_end_line(0x300)
	.dwattr $C$DW$172, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$172

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_setupADC||

$C$DW$196	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$196, DW_AT_name("VIENNA_HAL_setupADC")
	.dwattr $C$DW$196, DW_AT_low_pc(||VIENNA_HAL_setupADC||)
	.dwattr $C$DW$196, DW_AT_high_pc(0x00)
	.dwattr $C$DW$196, DW_AT_linkage_name("VIENNA_HAL_setupADC")
	.dwattr $C$DW$196, DW_AT_external
	.dwattr $C$DW$196, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$196, DW_AT_decl_line(0x130)
	.dwattr $C$DW$196, DW_AT_decl_column(0x06)
	.dwattr $C$DW$196, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_hal.c",line 305,column 1,is_stmt,address ||VIENNA_HAL_setupADC||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_setupADC||

;***************************************************************
;* FNAME: VIENNA_HAL_setupADC           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_HAL_setupADC||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 470,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |470| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 471,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7401)        ; [CPU_ALU] |471| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |471| 
        ORB       AL,#0x06              ; [CPU_ALU] |471| 
        MOV       *(0:0x7401),AL        ; [CPU_ALU] |471| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 473,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |473| 
	.dwpsn	file "../vienna_hal.c",line 313,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |313| 
        MOVB      XAR5,#0               ; [CPU_ALU] |313| 
        MOV       ACC,#29696            ; [CPU_ALU] |313| 
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("ADC_setMode")
	.dwattr $C$DW$197, DW_AT_TI_call

        LCR       #||ADC_setMode||      ; [CPU_ALU] |313| 
        ; call occurs [#||ADC_setMode||] ; [] |313| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 628,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |628| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 629,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7400)        ; [CPU_ALU] |629| 
        ORB       AL,#0x04              ; [CPU_ALU] |629| 
        MOV       *(0:0x7400),AL        ; [CPU_ALU] |629| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 664,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7400)        ; [CPU_ALU] |664| 
        ORB       AL,#0x80              ; [CPU_ALU] |664| 
        MOV       *(0:0x7400),AL        ; [CPU_ALU] |664| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 471,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7481)        ; [CPU_ALU] |471| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |471| 
        ORB       AL,#0x06              ; [CPU_ALU] |471| 
        MOV       *(0:0x7481),AL        ; [CPU_ALU] |471| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 473,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |473| 
	.dwpsn	file "../vienna_hal.c",line 331,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |331| 
        MOVB      XAR5,#0               ; [CPU_ALU] |331| 
        MOV       ACC,#29824            ; [CPU_ALU] |331| 
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("ADC_setMode")
	.dwattr $C$DW$198, DW_AT_TI_call

        LCR       #||ADC_setMode||      ; [CPU_ALU] |331| 
        ; call occurs [#||ADC_setMode||] ; [] |331| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 628,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |628| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 629,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7480)        ; [CPU_ALU] |629| 
        ORB       AL,#0x04              ; [CPU_ALU] |629| 
        MOV       *(0:0x7480),AL        ; [CPU_ALU] |629| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 664,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7480)        ; [CPU_ALU] |664| 
        ORB       AL,#0x80              ; [CPU_ALU] |664| 
        MOV       *(0:0x7480),AL        ; [CPU_ALU] |664| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 471,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7501)        ; [CPU_ALU] |471| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |471| 
        ORB       AL,#0x06              ; [CPU_ALU] |471| 
        MOV       *(0:0x7501),AL        ; [CPU_ALU] |471| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 473,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |473| 
	.dwpsn	file "../vienna_hal.c",line 349,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |349| 
        MOVB      XAR5,#0               ; [CPU_ALU] |349| 
        MOV       ACC,#29952            ; [CPU_ALU] |349| 
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("ADC_setMode")
	.dwattr $C$DW$199, DW_AT_TI_call

        LCR       #||ADC_setMode||      ; [CPU_ALU] |349| 
        ; call occurs [#||ADC_setMode||] ; [] |349| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 628,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |628| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 629,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7500)        ; [CPU_ALU] |629| 
        ORB       AL,#0x04              ; [CPU_ALU] |629| 
        MOV       *(0:0x7500),AL        ; [CPU_ALU] |629| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 664,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7500)        ; [CPU_ALU] |664| 
        ORB       AL,#0x80              ; [CPU_ALU] |664| 
        MOV       *(0:0x7500),AL        ; [CPU_ALU] |664| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 471,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7581)        ; [CPU_ALU] |471| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |471| 
        ORB       AL,#0x06              ; [CPU_ALU] |471| 
        MOV       *(0:0x7581),AL        ; [CPU_ALU] |471| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 473,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |473| 
	.dwpsn	file "../vienna_hal.c",line 363,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |363| 
        MOVB      XAR5,#0               ; [CPU_ALU] |363| 
        MOV       ACC,#30080            ; [CPU_ALU] |363| 
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("ADC_setMode")
	.dwattr $C$DW$200, DW_AT_TI_call

        LCR       #||ADC_setMode||      ; [CPU_ALU] |363| 
        ; call occurs [#||ADC_setMode||] ; [] |363| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 628,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |628| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 629,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7580)        ; [CPU_ALU] |629| 
        ORB       AL,#0x04              ; [CPU_ALU] |629| 
        MOV       *(0:0x7580),AL        ; [CPU_ALU] |629| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 664,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7580)        ; [CPU_ALU] |664| 
        ORB       AL,#0x80              ; [CPU_ALU] |664| 
        MOV       *(0:0x7580),AL        ; [CPU_ALU] |664| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 665,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |665| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../vienna_hal.c",line 376,column 5,is_stmt,isa 0
        MOV       ACC,#39998            ; [CPU_ALU] |376| 
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$201, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |376| 
        ; call occurs [#||SysCtl_delay||] ; [] |376| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 536,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |536| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7410)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7410),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7412)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#82                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7412),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7414)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65055             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#87                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7414),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7416)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7416),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7418)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#82                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7418),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x741a)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65055             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#87                ; [CPU_ALU] |538| 
        MOV32     *(0:0x741a),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x741c)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x741c),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x741e)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#82                ; [CPU_ALU] |538| 
        MOV32     *(0:0x741e),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7420)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65055             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#87                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7420),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7422)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7422),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7424)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#82                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7424),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7426)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65055             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#87                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7426),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7490)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7490),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7590)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#80                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7590),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7592)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7592),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7492)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7492),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7594)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#80                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7594),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7596)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7596),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7494)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7494),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7598)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#80                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7598),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x759a)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x759a),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7496)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7496),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x759c)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#80                ; [CPU_ALU] |538| 
        MOV32     *(0:0x759c),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x759e)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x759e),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7510)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7510),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7514)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7514),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7518)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7518),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x751c)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x751c),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7512)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#82                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7512),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x7516)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#82                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7516),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x751a)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#82                ; [CPU_ALU] |538| 
        MOV32     *(0:0x751a),ACC       ; [CPU_FPU] |538| 
        MOV32     ACC,*(0:0x751e)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#18                ; [CPU_ALU] |538| 
        OR        AH,#82                ; [CPU_ALU] |538| 
        MOV32     *(0:0x751e),ACC       ; [CPU_FPU] |538| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 543,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |543| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$196, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$196, DW_AT_TI_end_line(0x242)
	.dwattr $C$DW$196, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$196

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_setPinsAsPWM||

$C$DW$203	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$203, DW_AT_name("VIENNA_HAL_setPinsAsPWM")
	.dwattr $C$DW$203, DW_AT_low_pc(||VIENNA_HAL_setPinsAsPWM||)
	.dwattr $C$DW$203, DW_AT_high_pc(0x00)
	.dwattr $C$DW$203, DW_AT_linkage_name("VIENNA_HAL_setPinsAsPWM")
	.dwattr $C$DW$203, DW_AT_external
	.dwattr $C$DW$203, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$203, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$203, DW_AT_decl_column(0x06)
	.dwattr $C$DW$203, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_hal.c",line 218,column 1,is_stmt,address ||VIENNA_HAL_setPinsAsPWM||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_setPinsAsPWM||

;***************************************************************
;* FNAME: VIENNA_HAL_setPinsAsPWM       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_HAL_setPinsAsPWM||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOVB      XAR6,#1               ; [CPU_ALU] |469| 
        MOVB      ACC,#2                ; [CPU_ALU] |469| 
        MOV       PL,#4                 ; [CPU_ALU] |469| 
        MOV       PH,#0                 ; [CPU_ALU] |469| 
        MOVB      XAR7,#8               ; [CPU_ALU] |469| 
        MOV32     *(0:0x7f04),XAR6      ; [CPU_FPU] |469| 
	.dwpsn	file "../vienna_hal.c",line 227,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |227| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOV32     *(0:0x7f04),ACC       ; [CPU_FPU] |469| 
        MOVB      XAR6,#16              ; [CPU_ALU] |469| 
        MOVB      ACC,#32               ; [CPU_ALU] |469| 
        MOV32     *(0:0x7f04),P         ; [CPU_FPU] |469| 
        MOV32     *(0:0x7f04),XAR7      ; [CPU_FPU] |469| 
        MOV32     *(0:0x7f04),XAR6      ; [CPU_FPU] |469| 
        MOV32     *(0:0x7f04),ACC       ; [CPU_FPU] |469| 
	.dwpsn	file "../vienna_hal.c",line 227,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |227| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$204, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |227| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |227| 
	.dwpsn	file "../vienna_hal.c",line 228,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |228| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |228| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$205, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |228| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |228| 
	.dwpsn	file "../vienna_hal.c",line 229,column 5,is_stmt,isa 0
        MOVL      XAR4,#393217          ; [CPU_ARAU] |229| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |229| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$206, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |229| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |229| 
	.dwpsn	file "../vienna_hal.c",line 231,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |231| 
        MOVB      ACC,#1                ; [CPU_ALU] |231| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$207, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |231| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |231| 
	.dwpsn	file "../vienna_hal.c",line 232,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |232| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |232| 
        MOVB      ACC,#1                ; [CPU_ALU] |232| 
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$208, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |232| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |232| 
	.dwpsn	file "../vienna_hal.c",line 233,column 5,is_stmt,isa 0
        MOVL      XAR4,#393729          ; [CPU_ARAU] |233| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |233| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$209, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |233| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |233| 
	.dwpsn	file "../vienna_hal.c",line 235,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |235| 
        MOVB      ACC,#2                ; [CPU_ALU] |235| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$210, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |235| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |235| 
	.dwpsn	file "../vienna_hal.c",line 236,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |236| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |236| 
        MOVB      ACC,#2                ; [CPU_ALU] |236| 
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$211, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |236| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |236| 
	.dwpsn	file "../vienna_hal.c",line 237,column 5,is_stmt,isa 0
        MOVL      XAR4,#394241          ; [CPU_ARAU] |237| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |237| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$212, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |237| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |237| 
	.dwpsn	file "../vienna_hal.c",line 239,column 5,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |239| 
        MOVB      XAR4,#1               ; [CPU_ALU] |239| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$213, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |239| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |239| 
	.dwpsn	file "../vienna_hal.c",line 240,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |240| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |240| 
        MOVB      ACC,#3                ; [CPU_ALU] |240| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$214, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |240| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |240| 
	.dwpsn	file "../vienna_hal.c",line 241,column 5,is_stmt,isa 0
        MOVL      XAR4,#394753          ; [CPU_ARAU] |241| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |241| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$215, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |241| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |241| 
	.dwpsn	file "../vienna_hal.c",line 243,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |243| 
        MOVB      ACC,#4                ; [CPU_ALU] |243| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$216, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |243| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |243| 
	.dwpsn	file "../vienna_hal.c",line 244,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |244| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |244| 
        MOVB      ACC,#4                ; [CPU_ALU] |244| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$217, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |244| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |244| 
	.dwpsn	file "../vienna_hal.c",line 245,column 5,is_stmt,isa 0
        MOVL      XAR4,#395265          ; [CPU_ARAU] |245| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |245| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$218, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |245| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |245| 
	.dwpsn	file "../vienna_hal.c",line 247,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |247| 
        MOVB      ACC,#5                ; [CPU_ALU] |247| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$219, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |247| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |247| 
	.dwpsn	file "../vienna_hal.c",line 248,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |248| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |248| 
        MOVB      ACC,#5                ; [CPU_ALU] |248| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$220, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |248| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |248| 
	.dwpsn	file "../vienna_hal.c",line 249,column 5,is_stmt,isa 0
        MOVL      XAR4,#395777          ; [CPU_ARAU] |249| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |249| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$221, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |249| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |249| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$203, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$203, DW_AT_TI_end_line(0xfa)
	.dwattr $C$DW$203, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$203

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_enablePWMClkCounting||

$C$DW$223	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$223, DW_AT_name("VIENNA_HAL_enablePWMClkCounting")
	.dwattr $C$DW$223, DW_AT_low_pc(||VIENNA_HAL_enablePWMClkCounting||)
	.dwattr $C$DW$223, DW_AT_high_pc(0x00)
	.dwattr $C$DW$223, DW_AT_linkage_name("VIENNA_HAL_enablePWMClkCounting")
	.dwattr $C$DW$223, DW_AT_external
	.dwattr $C$DW$223, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$223, DW_AT_decl_line(0x107)
	.dwattr $C$DW$223, DW_AT_decl_column(0x06)
	.dwattr $C$DW$223, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_hal.c",line 264,column 1,is_stmt,address ||VIENNA_HAL_enablePWMClkCounting||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_enablePWMClkCounting||

;***************************************************************
;* FNAME: VIENNA_HAL_enablePWMClkCounting FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_HAL_enablePWMClkCounting||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 990,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |990| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 995,column 5,is_stmt,isa 0
        MOVL      XAR4,#381730          ; [CPU_ARAU] |995| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |995| 
        OR        AH,#4                 ; [CPU_ALU] |995| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |995| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 996,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |996| 
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$223, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$223, DW_AT_TI_end_line(0x10a)
	.dwattr $C$DW$223, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$223

	.sect	".text"
	.clink
	.global	||VIENNA_HAL_disablePWMClkCounting||

$C$DW$225	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$225, DW_AT_name("VIENNA_HAL_disablePWMClkCounting")
	.dwattr $C$DW$225, DW_AT_low_pc(||VIENNA_HAL_disablePWMClkCounting||)
	.dwattr $C$DW$225, DW_AT_high_pc(0x00)
	.dwattr $C$DW$225, DW_AT_linkage_name("VIENNA_HAL_disablePWMClkCounting")
	.dwattr $C$DW$225, DW_AT_external
	.dwattr $C$DW$225, DW_AT_decl_file("../vienna_hal.c")
	.dwattr $C$DW$225, DW_AT_decl_line(0xff)
	.dwattr $C$DW$225, DW_AT_decl_column(0x06)
	.dwattr $C$DW$225, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_hal.c",line 256,column 1,is_stmt,address ||VIENNA_HAL_disablePWMClkCounting||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_HAL_disablePWMClkCounting||

;***************************************************************
;* FNAME: VIENNA_HAL_disablePWMClkCounting FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_HAL_disablePWMClkCounting||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1025,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1025| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1030,column 5,is_stmt,isa 0
        MOVL      XAR4,#381730          ; [CPU_ARAU] |1030| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |1030| 
        AND       AH,#65531             ; [CPU_ALU] |1030| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |1030| 
	.dwpsn	file "C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h",line 1031,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1031| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$225, DW_AT_TI_end_file("../vienna_hal.c")
	.dwattr $C$DW$225, DW_AT_TI_end_line(0x102)
	.dwattr $C$DW$225, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$225

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||Device_init||
	.global	||Device_initGPIO||
	.global	||Interrupt_initModule||
	.global	||Interrupt_initVectorTable||
	.global	||CPUTimer_setEmulationMode||
	.global	||GPIO_setDirectionMode||
	.global	||GPIO_setPadConfig||
	.global	||GPIO_setPinConfig||
	.global	||ADC_setMode||
	.global	||SysCtl_delay||
	.global	||CMPSS_configFilterHigh||
	.global	||CMPSS_configFilterLow||
	.global	||XBAR_setEPWMMuxConfig||
	.global	||GPIO_setQualificationMode||
	.global	||XBAR_setOutputMuxConfig||

;***************************************************************
;* BUILD ATTRIBUTES                                            *
;***************************************************************
	.battr "c28xabi", Tag_File, 1, Tag_float_args(1)
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
$C$DW$227	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$227, DW_AT_name("ADC_CLK_DIV_1_0")
	.dwattr $C$DW$227, DW_AT_const_value(0x00)
	.dwattr $C$DW$227, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$227, DW_AT_decl_line(0x98)
	.dwattr $C$DW$227, DW_AT_decl_column(0x05)

$C$DW$228	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$228, DW_AT_name("ADC_CLK_DIV_2_0")
	.dwattr $C$DW$228, DW_AT_const_value(0x02)
	.dwattr $C$DW$228, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0x99)
	.dwattr $C$DW$228, DW_AT_decl_column(0x05)

$C$DW$229	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$229, DW_AT_name("ADC_CLK_DIV_2_5")
	.dwattr $C$DW$229, DW_AT_const_value(0x03)
	.dwattr $C$DW$229, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$229, DW_AT_decl_column(0x05)

$C$DW$230	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$230, DW_AT_name("ADC_CLK_DIV_3_0")
	.dwattr $C$DW$230, DW_AT_const_value(0x04)
	.dwattr $C$DW$230, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$230, DW_AT_decl_column(0x05)

$C$DW$231	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$231, DW_AT_name("ADC_CLK_DIV_3_5")
	.dwattr $C$DW$231, DW_AT_const_value(0x05)
	.dwattr $C$DW$231, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$231, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$231, DW_AT_decl_column(0x05)

$C$DW$232	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$232, DW_AT_name("ADC_CLK_DIV_4_0")
	.dwattr $C$DW$232, DW_AT_const_value(0x06)
	.dwattr $C$DW$232, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$232, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$232, DW_AT_decl_column(0x05)

$C$DW$233	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$233, DW_AT_name("ADC_CLK_DIV_4_5")
	.dwattr $C$DW$233, DW_AT_const_value(0x07)
	.dwattr $C$DW$233, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$233, DW_AT_decl_column(0x05)

$C$DW$234	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$234, DW_AT_name("ADC_CLK_DIV_5_0")
	.dwattr $C$DW$234, DW_AT_const_value(0x08)
	.dwattr $C$DW$234, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$234, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$234, DW_AT_decl_column(0x05)

$C$DW$235	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$235, DW_AT_name("ADC_CLK_DIV_5_5")
	.dwattr $C$DW$235, DW_AT_const_value(0x09)
	.dwattr $C$DW$235, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$235, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$235, DW_AT_decl_column(0x05)

$C$DW$236	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$236, DW_AT_name("ADC_CLK_DIV_6_0")
	.dwattr $C$DW$236, DW_AT_const_value(0x0a)
	.dwattr $C$DW$236, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$236, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$236, DW_AT_decl_column(0x05)

$C$DW$237	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$237, DW_AT_name("ADC_CLK_DIV_6_5")
	.dwattr $C$DW$237, DW_AT_const_value(0x0b)
	.dwattr $C$DW$237, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$237, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$237, DW_AT_decl_column(0x05)

$C$DW$238	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$238, DW_AT_name("ADC_CLK_DIV_7_0")
	.dwattr $C$DW$238, DW_AT_const_value(0x0c)
	.dwattr $C$DW$238, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$238, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$238, DW_AT_decl_column(0x05)

$C$DW$239	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$239, DW_AT_name("ADC_CLK_DIV_7_5")
	.dwattr $C$DW$239, DW_AT_const_value(0x0d)
	.dwattr $C$DW$239, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$239, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$239, DW_AT_decl_column(0x05)

$C$DW$240	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$240, DW_AT_name("ADC_CLK_DIV_8_0")
	.dwattr $C$DW$240, DW_AT_const_value(0x0e)
	.dwattr $C$DW$240, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$240, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$240, DW_AT_decl_column(0x05)

$C$DW$241	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$241, DW_AT_name("ADC_CLK_DIV_8_5")
	.dwattr $C$DW$241, DW_AT_const_value(0x0f)
	.dwattr $C$DW$241, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$241, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$241, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x97)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("ADC_ClkPrescale")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$242	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$242, DW_AT_name("ADC_SOC_NUMBER0")
	.dwattr $C$DW$242, DW_AT_const_value(0x00)
	.dwattr $C$DW$242, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0x145)
	.dwattr $C$DW$242, DW_AT_decl_column(0x05)

$C$DW$243	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$243, DW_AT_name("ADC_SOC_NUMBER1")
	.dwattr $C$DW$243, DW_AT_const_value(0x01)
	.dwattr $C$DW$243, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0x146)
	.dwattr $C$DW$243, DW_AT_decl_column(0x05)

$C$DW$244	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$244, DW_AT_name("ADC_SOC_NUMBER2")
	.dwattr $C$DW$244, DW_AT_const_value(0x02)
	.dwattr $C$DW$244, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0x147)
	.dwattr $C$DW$244, DW_AT_decl_column(0x05)

$C$DW$245	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$245, DW_AT_name("ADC_SOC_NUMBER3")
	.dwattr $C$DW$245, DW_AT_const_value(0x03)
	.dwattr $C$DW$245, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$245, DW_AT_decl_line(0x148)
	.dwattr $C$DW$245, DW_AT_decl_column(0x05)

$C$DW$246	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$246, DW_AT_name("ADC_SOC_NUMBER4")
	.dwattr $C$DW$246, DW_AT_const_value(0x04)
	.dwattr $C$DW$246, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0x149)
	.dwattr $C$DW$246, DW_AT_decl_column(0x05)

$C$DW$247	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$247, DW_AT_name("ADC_SOC_NUMBER5")
	.dwattr $C$DW$247, DW_AT_const_value(0x05)
	.dwattr $C$DW$247, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$247, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$247, DW_AT_decl_column(0x05)

$C$DW$248	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$248, DW_AT_name("ADC_SOC_NUMBER6")
	.dwattr $C$DW$248, DW_AT_const_value(0x06)
	.dwattr $C$DW$248, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$248, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$248, DW_AT_decl_column(0x05)

$C$DW$249	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$249, DW_AT_name("ADC_SOC_NUMBER7")
	.dwattr $C$DW$249, DW_AT_const_value(0x07)
	.dwattr $C$DW$249, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$249, DW_AT_decl_column(0x05)

$C$DW$250	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$250, DW_AT_name("ADC_SOC_NUMBER8")
	.dwattr $C$DW$250, DW_AT_const_value(0x08)
	.dwattr $C$DW$250, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$250, DW_AT_decl_column(0x05)

$C$DW$251	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$251, DW_AT_name("ADC_SOC_NUMBER9")
	.dwattr $C$DW$251, DW_AT_const_value(0x09)
	.dwattr $C$DW$251, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$251, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$251, DW_AT_decl_column(0x05)

$C$DW$252	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$252, DW_AT_name("ADC_SOC_NUMBER10")
	.dwattr $C$DW$252, DW_AT_const_value(0x0a)
	.dwattr $C$DW$252, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$252, DW_AT_decl_column(0x05)

$C$DW$253	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$253, DW_AT_name("ADC_SOC_NUMBER11")
	.dwattr $C$DW$253, DW_AT_const_value(0x0b)
	.dwattr $C$DW$253, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0x150)
	.dwattr $C$DW$253, DW_AT_decl_column(0x05)

$C$DW$254	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$254, DW_AT_name("ADC_SOC_NUMBER12")
	.dwattr $C$DW$254, DW_AT_const_value(0x0c)
	.dwattr $C$DW$254, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$254, DW_AT_decl_line(0x151)
	.dwattr $C$DW$254, DW_AT_decl_column(0x05)

$C$DW$255	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$255, DW_AT_name("ADC_SOC_NUMBER13")
	.dwattr $C$DW$255, DW_AT_const_value(0x0d)
	.dwattr $C$DW$255, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$255, DW_AT_decl_line(0x152)
	.dwattr $C$DW$255, DW_AT_decl_column(0x05)

$C$DW$256	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$256, DW_AT_name("ADC_SOC_NUMBER14")
	.dwattr $C$DW$256, DW_AT_const_value(0x0e)
	.dwattr $C$DW$256, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0x153)
	.dwattr $C$DW$256, DW_AT_decl_column(0x05)

$C$DW$257	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$257, DW_AT_name("ADC_SOC_NUMBER15")
	.dwattr $C$DW$257, DW_AT_const_value(0x0f)
	.dwattr $C$DW$257, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$257, DW_AT_decl_line(0x154)
	.dwattr $C$DW$257, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x144)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("ADC_SOCNumber")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x155)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$258	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$258, DW_AT_name("ADC_TRIGGER_SW_ONLY")
	.dwattr $C$DW$258, DW_AT_const_value(0x00)
	.dwattr $C$DW$258, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$258, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$258, DW_AT_decl_column(0x05)

$C$DW$259	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$259, DW_AT_name("ADC_TRIGGER_CPU1_TINT0")
	.dwattr $C$DW$259, DW_AT_const_value(0x01)
	.dwattr $C$DW$259, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$259, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$259, DW_AT_decl_column(0x05)

$C$DW$260	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$260, DW_AT_name("ADC_TRIGGER_CPU1_TINT1")
	.dwattr $C$DW$260, DW_AT_const_value(0x02)
	.dwattr $C$DW$260, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$260, DW_AT_decl_column(0x05)

$C$DW$261	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$261, DW_AT_name("ADC_TRIGGER_CPU1_TINT2")
	.dwattr $C$DW$261, DW_AT_const_value(0x03)
	.dwattr $C$DW$261, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0xce)
	.dwattr $C$DW$261, DW_AT_decl_column(0x05)

$C$DW$262	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$262, DW_AT_name("ADC_TRIGGER_GPIO")
	.dwattr $C$DW$262, DW_AT_const_value(0x04)
	.dwattr $C$DW$262, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$262, DW_AT_decl_column(0x05)

$C$DW$263	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$263, DW_AT_name("ADC_TRIGGER_EPWM1_SOCA")
	.dwattr $C$DW$263, DW_AT_const_value(0x05)
	.dwattr $C$DW$263, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$263, DW_AT_decl_column(0x05)

$C$DW$264	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$264, DW_AT_name("ADC_TRIGGER_EPWM1_SOCB")
	.dwattr $C$DW$264, DW_AT_const_value(0x06)
	.dwattr $C$DW$264, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$264, DW_AT_decl_column(0x05)

$C$DW$265	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$265, DW_AT_name("ADC_TRIGGER_EPWM2_SOCA")
	.dwattr $C$DW$265, DW_AT_const_value(0x07)
	.dwattr $C$DW$265, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$265, DW_AT_decl_column(0x05)

$C$DW$266	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$266, DW_AT_name("ADC_TRIGGER_EPWM2_SOCB")
	.dwattr $C$DW$266, DW_AT_const_value(0x08)
	.dwattr $C$DW$266, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$266, DW_AT_decl_column(0x05)

$C$DW$267	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$267, DW_AT_name("ADC_TRIGGER_EPWM3_SOCA")
	.dwattr $C$DW$267, DW_AT_const_value(0x09)
	.dwattr $C$DW$267, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$267, DW_AT_decl_column(0x05)

$C$DW$268	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$268, DW_AT_name("ADC_TRIGGER_EPWM3_SOCB")
	.dwattr $C$DW$268, DW_AT_const_value(0x0a)
	.dwattr $C$DW$268, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$268, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$268, DW_AT_decl_column(0x05)

$C$DW$269	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$269, DW_AT_name("ADC_TRIGGER_EPWM4_SOCA")
	.dwattr $C$DW$269, DW_AT_const_value(0x0b)
	.dwattr $C$DW$269, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$269, DW_AT_decl_column(0x05)

$C$DW$270	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$270, DW_AT_name("ADC_TRIGGER_EPWM4_SOCB")
	.dwattr $C$DW$270, DW_AT_const_value(0x0c)
	.dwattr $C$DW$270, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$270, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$270, DW_AT_decl_column(0x05)

$C$DW$271	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$271, DW_AT_name("ADC_TRIGGER_EPWM5_SOCA")
	.dwattr $C$DW$271, DW_AT_const_value(0x0d)
	.dwattr $C$DW$271, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$271, DW_AT_decl_column(0x05)

$C$DW$272	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$272, DW_AT_name("ADC_TRIGGER_EPWM5_SOCB")
	.dwattr $C$DW$272, DW_AT_const_value(0x0e)
	.dwattr $C$DW$272, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$272, DW_AT_decl_column(0x05)

$C$DW$273	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$273, DW_AT_name("ADC_TRIGGER_EPWM6_SOCA")
	.dwattr $C$DW$273, DW_AT_const_value(0x0f)
	.dwattr $C$DW$273, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0xda)
	.dwattr $C$DW$273, DW_AT_decl_column(0x05)

$C$DW$274	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$274, DW_AT_name("ADC_TRIGGER_EPWM6_SOCB")
	.dwattr $C$DW$274, DW_AT_const_value(0x10)
	.dwattr $C$DW$274, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$274, DW_AT_decl_column(0x05)

$C$DW$275	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$275, DW_AT_name("ADC_TRIGGER_EPWM7_SOCA")
	.dwattr $C$DW$275, DW_AT_const_value(0x11)
	.dwattr $C$DW$275, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$275, DW_AT_decl_column(0x05)

$C$DW$276	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$276, DW_AT_name("ADC_TRIGGER_EPWM7_SOCB")
	.dwattr $C$DW$276, DW_AT_const_value(0x12)
	.dwattr $C$DW$276, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$276, DW_AT_decl_column(0x05)

$C$DW$277	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$277, DW_AT_name("ADC_TRIGGER_EPWM8_SOCA")
	.dwattr $C$DW$277, DW_AT_const_value(0x13)
	.dwattr $C$DW$277, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0xde)
	.dwattr $C$DW$277, DW_AT_decl_column(0x05)

$C$DW$278	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$278, DW_AT_name("ADC_TRIGGER_EPWM8_SOCB")
	.dwattr $C$DW$278, DW_AT_const_value(0x14)
	.dwattr $C$DW$278, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$278, DW_AT_decl_column(0x05)

$C$DW$279	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$279, DW_AT_name("ADC_TRIGGER_EPWM9_SOCA")
	.dwattr $C$DW$279, DW_AT_const_value(0x15)
	.dwattr $C$DW$279, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$279, DW_AT_decl_column(0x05)

$C$DW$280	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$280, DW_AT_name("ADC_TRIGGER_EPWM9_SOCB")
	.dwattr $C$DW$280, DW_AT_const_value(0x16)
	.dwattr $C$DW$280, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$280, DW_AT_decl_column(0x05)

$C$DW$281	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$281, DW_AT_name("ADC_TRIGGER_EPWM10_SOCA")
	.dwattr $C$DW$281, DW_AT_const_value(0x17)
	.dwattr $C$DW$281, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$281, DW_AT_decl_column(0x05)

$C$DW$282	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$282, DW_AT_name("ADC_TRIGGER_EPWM10_SOCB")
	.dwattr $C$DW$282, DW_AT_const_value(0x18)
	.dwattr $C$DW$282, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$282, DW_AT_decl_column(0x05)

$C$DW$283	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$283, DW_AT_name("ADC_TRIGGER_EPWM11_SOCA")
	.dwattr $C$DW$283, DW_AT_const_value(0x19)
	.dwattr $C$DW$283, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$283, DW_AT_decl_column(0x05)

$C$DW$284	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$284, DW_AT_name("ADC_TRIGGER_EPWM11_SOCB")
	.dwattr $C$DW$284, DW_AT_const_value(0x1a)
	.dwattr $C$DW$284, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$284, DW_AT_decl_column(0x05)

$C$DW$285	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$285, DW_AT_name("ADC_TRIGGER_EPWM12_SOCA")
	.dwattr $C$DW$285, DW_AT_const_value(0x1b)
	.dwattr $C$DW$285, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$285, DW_AT_decl_column(0x05)

$C$DW$286	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$286, DW_AT_name("ADC_TRIGGER_EPWM12_SOCB")
	.dwattr $C$DW$286, DW_AT_const_value(0x1c)
	.dwattr $C$DW$286, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$286, DW_AT_decl_column(0x05)

$C$DW$287	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$287, DW_AT_name("ADC_TRIGGER_CPU2_TINT0")
	.dwattr $C$DW$287, DW_AT_const_value(0x1d)
	.dwattr $C$DW$287, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$287, DW_AT_decl_column(0x05)

$C$DW$288	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$288, DW_AT_name("ADC_TRIGGER_CPU2_TINT1")
	.dwattr $C$DW$288, DW_AT_const_value(0x1e)
	.dwattr $C$DW$288, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$288, DW_AT_decl_column(0x05)

$C$DW$289	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$289, DW_AT_name("ADC_TRIGGER_CPU2_TINT2")
	.dwattr $C$DW$289, DW_AT_const_value(0x1f)
	.dwattr $C$DW$289, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0xea)
	.dwattr $C$DW$289, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0xca)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("ADC_Trigger")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$290	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$290, DW_AT_name("ADC_CH_ADCIN0")
	.dwattr $C$DW$290, DW_AT_const_value(0x00)
	.dwattr $C$DW$290, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$290, DW_AT_decl_column(0x05)

$C$DW$291	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$291, DW_AT_name("ADC_CH_ADCIN1")
	.dwattr $C$DW$291, DW_AT_const_value(0x01)
	.dwattr $C$DW$291, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$291, DW_AT_decl_column(0x05)

$C$DW$292	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$292, DW_AT_name("ADC_CH_ADCIN2")
	.dwattr $C$DW$292, DW_AT_const_value(0x02)
	.dwattr $C$DW$292, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$292, DW_AT_decl_column(0x05)

$C$DW$293	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$293, DW_AT_name("ADC_CH_ADCIN3")
	.dwattr $C$DW$293, DW_AT_const_value(0x03)
	.dwattr $C$DW$293, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$293, DW_AT_decl_column(0x05)

$C$DW$294	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$294, DW_AT_name("ADC_CH_ADCIN4")
	.dwattr $C$DW$294, DW_AT_const_value(0x04)
	.dwattr $C$DW$294, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$294, DW_AT_decl_column(0x05)

$C$DW$295	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$295, DW_AT_name("ADC_CH_ADCIN5")
	.dwattr $C$DW$295, DW_AT_const_value(0x05)
	.dwattr $C$DW$295, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$295, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$295, DW_AT_decl_column(0x05)

$C$DW$296	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$296, DW_AT_name("ADC_CH_ADCIN6")
	.dwattr $C$DW$296, DW_AT_const_value(0x06)
	.dwattr $C$DW$296, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$296, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$296, DW_AT_decl_column(0x05)

$C$DW$297	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$297, DW_AT_name("ADC_CH_ADCIN7")
	.dwattr $C$DW$297, DW_AT_const_value(0x07)
	.dwattr $C$DW$297, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$297, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$297, DW_AT_decl_column(0x05)

$C$DW$298	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$298, DW_AT_name("ADC_CH_ADCIN8")
	.dwattr $C$DW$298, DW_AT_const_value(0x08)
	.dwattr $C$DW$298, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$298, DW_AT_decl_column(0x05)

$C$DW$299	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$299, DW_AT_name("ADC_CH_ADCIN9")
	.dwattr $C$DW$299, DW_AT_const_value(0x09)
	.dwattr $C$DW$299, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0xff)
	.dwattr $C$DW$299, DW_AT_decl_column(0x05)

$C$DW$300	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$300, DW_AT_name("ADC_CH_ADCIN10")
	.dwattr $C$DW$300, DW_AT_const_value(0x0a)
	.dwattr $C$DW$300, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0x100)
	.dwattr $C$DW$300, DW_AT_decl_column(0x05)

$C$DW$301	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$301, DW_AT_name("ADC_CH_ADCIN11")
	.dwattr $C$DW$301, DW_AT_const_value(0x0b)
	.dwattr $C$DW$301, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0x101)
	.dwattr $C$DW$301, DW_AT_decl_column(0x05)

$C$DW$302	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$302, DW_AT_name("ADC_CH_ADCIN12")
	.dwattr $C$DW$302, DW_AT_const_value(0x0c)
	.dwattr $C$DW$302, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x102)
	.dwattr $C$DW$302, DW_AT_decl_column(0x05)

$C$DW$303	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$303, DW_AT_name("ADC_CH_ADCIN13")
	.dwattr $C$DW$303, DW_AT_const_value(0x0d)
	.dwattr $C$DW$303, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x103)
	.dwattr $C$DW$303, DW_AT_decl_column(0x05)

$C$DW$304	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$304, DW_AT_name("ADC_CH_ADCIN14")
	.dwattr $C$DW$304, DW_AT_const_value(0x0e)
	.dwattr $C$DW$304, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x104)
	.dwattr $C$DW$304, DW_AT_decl_column(0x05)

$C$DW$305	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$305, DW_AT_name("ADC_CH_ADCIN15")
	.dwattr $C$DW$305, DW_AT_const_value(0x0f)
	.dwattr $C$DW$305, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0x105)
	.dwattr $C$DW$305, DW_AT_decl_column(0x05)

$C$DW$306	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$306, DW_AT_name("ADC_CH_ADCIN0_ADCIN1")
	.dwattr $C$DW$306, DW_AT_const_value(0x00)
	.dwattr $C$DW$306, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0x106)
	.dwattr $C$DW$306, DW_AT_decl_column(0x05)

$C$DW$307	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$307, DW_AT_name("ADC_CH_ADCIN2_ADCIN3")
	.dwattr $C$DW$307, DW_AT_const_value(0x02)
	.dwattr $C$DW$307, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x107)
	.dwattr $C$DW$307, DW_AT_decl_column(0x05)

$C$DW$308	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$308, DW_AT_name("ADC_CH_ADCIN4_ADCIN5")
	.dwattr $C$DW$308, DW_AT_const_value(0x04)
	.dwattr $C$DW$308, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x108)
	.dwattr $C$DW$308, DW_AT_decl_column(0x05)

$C$DW$309	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$309, DW_AT_name("ADC_CH_ADCIN6_ADCIN7")
	.dwattr $C$DW$309, DW_AT_const_value(0x06)
	.dwattr $C$DW$309, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x109)
	.dwattr $C$DW$309, DW_AT_decl_column(0x05)

$C$DW$310	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$310, DW_AT_name("ADC_CH_ADCIN8_ADCIN9")
	.dwattr $C$DW$310, DW_AT_const_value(0x08)
	.dwattr $C$DW$310, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$310, DW_AT_decl_column(0x05)

$C$DW$311	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$311, DW_AT_name("ADC_CH_ADCIN10_ADCIN11")
	.dwattr $C$DW$311, DW_AT_const_value(0x0a)
	.dwattr $C$DW$311, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$311, DW_AT_decl_column(0x05)

$C$DW$312	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$312, DW_AT_name("ADC_CH_ADCIN12_ADCIN13")
	.dwattr $C$DW$312, DW_AT_const_value(0x0c)
	.dwattr $C$DW$312, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$312, DW_AT_decl_column(0x05)

$C$DW$313	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$313, DW_AT_name("ADC_CH_ADCIN14_ADCIN15")
	.dwattr $C$DW$313, DW_AT_const_value(0x0e)
	.dwattr $C$DW$313, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$313, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("ADC_Channel")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$314	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$314, DW_AT_name("ADC_PULSE_END_OF_ACQ_WIN")
	.dwattr $C$DW$314, DW_AT_const_value(0x00)
	.dwattr $C$DW$314, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x119)
	.dwattr $C$DW$314, DW_AT_decl_column(0x05)

$C$DW$315	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$315, DW_AT_name("ADC_PULSE_END_OF_CONV")
	.dwattr $C$DW$315, DW_AT_const_value(0x04)
	.dwattr $C$DW$315, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$315, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x117)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("ADC_PulseMode")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$316	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$316, DW_AT_name("ADC_RESOLUTION_12BIT")
	.dwattr $C$DW$316, DW_AT_const_value(0x00)
	.dwattr $C$DW$316, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$316, DW_AT_decl_column(0x05)

$C$DW$317	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$317, DW_AT_name("ADC_RESOLUTION_16BIT")
	.dwattr $C$DW$317, DW_AT_const_value(0x40)
	.dwattr $C$DW$317, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$317, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("ADC_Resolution")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$318	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$318, DW_AT_name("ADC_MODE_SINGLE_ENDED")
	.dwattr $C$DW$318, DW_AT_const_value(0x00)
	.dwattr $C$DW$318, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$318, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$318, DW_AT_decl_column(0x05)

$C$DW$319	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$319, DW_AT_name("ADC_MODE_DIFFERENTIAL")
	.dwattr $C$DW$319, DW_AT_const_value(0x80)
	.dwattr $C$DW$319, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$319, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$319, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("ADC_SignalMode")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$320	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$320, DW_AT_name("SYSCTL_PERIPH_CLK_CLA1")
	.dwattr $C$DW$320, DW_AT_const_value(0x00)
	.dwattr $C$DW$320, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$320, DW_AT_decl_line(0x183)
	.dwattr $C$DW$320, DW_AT_decl_column(0x05)

$C$DW$321	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$321, DW_AT_name("SYSCTL_PERIPH_CLK_DMA")
	.dwattr $C$DW$321, DW_AT_const_value(0x200)
	.dwattr $C$DW$321, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0x184)
	.dwattr $C$DW$321, DW_AT_decl_column(0x05)

$C$DW$322	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$322, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER0")
	.dwattr $C$DW$322, DW_AT_const_value(0x300)
	.dwattr $C$DW$322, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$322, DW_AT_decl_line(0x185)
	.dwattr $C$DW$322, DW_AT_decl_column(0x05)

$C$DW$323	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$323, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER1")
	.dwattr $C$DW$323, DW_AT_const_value(0x400)
	.dwattr $C$DW$323, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0x186)
	.dwattr $C$DW$323, DW_AT_decl_column(0x05)

$C$DW$324	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$324, DW_AT_name("SYSCTL_PERIPH_CLK_TIMER2")
	.dwattr $C$DW$324, DW_AT_const_value(0x500)
	.dwattr $C$DW$324, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$324, DW_AT_decl_line(0x187)
	.dwattr $C$DW$324, DW_AT_decl_column(0x05)

$C$DW$325	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$325, DW_AT_name("SYSCTL_PERIPH_CLK_HRPWM")
	.dwattr $C$DW$325, DW_AT_const_value(0x1000)
	.dwattr $C$DW$325, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0x188)
	.dwattr $C$DW$325, DW_AT_decl_column(0x05)

$C$DW$326	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$326, DW_AT_name("SYSCTL_PERIPH_CLK_TBCLKSYNC")
	.dwattr $C$DW$326, DW_AT_const_value(0x1200)
	.dwattr $C$DW$326, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0x189)
	.dwattr $C$DW$326, DW_AT_decl_column(0x05)

$C$DW$327	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$327, DW_AT_name("SYSCTL_PERIPH_CLK_GTBCLKSYNC")
	.dwattr $C$DW$327, DW_AT_const_value(0x1300)
	.dwattr $C$DW$327, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$327, DW_AT_decl_column(0x05)

$C$DW$328	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$328, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF1")
	.dwattr $C$DW$328, DW_AT_const_value(0x01)
	.dwattr $C$DW$328, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$328, DW_AT_decl_column(0x05)

$C$DW$329	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$329, DW_AT_name("SYSCTL_PERIPH_CLK_EMIF2")
	.dwattr $C$DW$329, DW_AT_const_value(0x101)
	.dwattr $C$DW$329, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$329, DW_AT_decl_column(0x05)

$C$DW$330	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$330, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM1")
	.dwattr $C$DW$330, DW_AT_const_value(0x02)
	.dwattr $C$DW$330, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$330, DW_AT_decl_column(0x05)

$C$DW$331	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$331, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM2")
	.dwattr $C$DW$331, DW_AT_const_value(0x102)
	.dwattr $C$DW$331, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$331, DW_AT_decl_column(0x05)

$C$DW$332	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$332, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM3")
	.dwattr $C$DW$332, DW_AT_const_value(0x202)
	.dwattr $C$DW$332, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$332, DW_AT_decl_column(0x05)

$C$DW$333	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$333, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM4")
	.dwattr $C$DW$333, DW_AT_const_value(0x302)
	.dwattr $C$DW$333, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0x190)
	.dwattr $C$DW$333, DW_AT_decl_column(0x05)

$C$DW$334	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$334, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM5")
	.dwattr $C$DW$334, DW_AT_const_value(0x402)
	.dwattr $C$DW$334, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$334, DW_AT_decl_line(0x191)
	.dwattr $C$DW$334, DW_AT_decl_column(0x05)

$C$DW$335	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$335, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM6")
	.dwattr $C$DW$335, DW_AT_const_value(0x502)
	.dwattr $C$DW$335, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0x192)
	.dwattr $C$DW$335, DW_AT_decl_column(0x05)

$C$DW$336	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$336, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM7")
	.dwattr $C$DW$336, DW_AT_const_value(0x602)
	.dwattr $C$DW$336, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0x193)
	.dwattr $C$DW$336, DW_AT_decl_column(0x05)

$C$DW$337	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$337, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM8")
	.dwattr $C$DW$337, DW_AT_const_value(0x702)
	.dwattr $C$DW$337, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0x194)
	.dwattr $C$DW$337, DW_AT_decl_column(0x05)

$C$DW$338	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$338, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM9")
	.dwattr $C$DW$338, DW_AT_const_value(0x802)
	.dwattr $C$DW$338, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0x195)
	.dwattr $C$DW$338, DW_AT_decl_column(0x05)

$C$DW$339	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$339, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM10")
	.dwattr $C$DW$339, DW_AT_const_value(0x902)
	.dwattr $C$DW$339, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0x196)
	.dwattr $C$DW$339, DW_AT_decl_column(0x05)

$C$DW$340	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$340, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM11")
	.dwattr $C$DW$340, DW_AT_const_value(0xa02)
	.dwattr $C$DW$340, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0x197)
	.dwattr $C$DW$340, DW_AT_decl_column(0x05)

$C$DW$341	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$341, DW_AT_name("SYSCTL_PERIPH_CLK_EPWM12")
	.dwattr $C$DW$341, DW_AT_const_value(0xb02)
	.dwattr $C$DW$341, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0x198)
	.dwattr $C$DW$341, DW_AT_decl_column(0x05)

$C$DW$342	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$342, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP1")
	.dwattr $C$DW$342, DW_AT_const_value(0x03)
	.dwattr $C$DW$342, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0x199)
	.dwattr $C$DW$342, DW_AT_decl_column(0x05)

$C$DW$343	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$343, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP2")
	.dwattr $C$DW$343, DW_AT_const_value(0x103)
	.dwattr $C$DW$343, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$343, DW_AT_decl_column(0x05)

$C$DW$344	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$344, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP3")
	.dwattr $C$DW$344, DW_AT_const_value(0x203)
	.dwattr $C$DW$344, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$344, DW_AT_decl_column(0x05)

$C$DW$345	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$345, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP4")
	.dwattr $C$DW$345, DW_AT_const_value(0x303)
	.dwattr $C$DW$345, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$345, DW_AT_decl_column(0x05)

$C$DW$346	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$346, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP5")
	.dwattr $C$DW$346, DW_AT_const_value(0x403)
	.dwattr $C$DW$346, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$346, DW_AT_decl_column(0x05)

$C$DW$347	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$347, DW_AT_name("SYSCTL_PERIPH_CLK_ECAP6")
	.dwattr $C$DW$347, DW_AT_const_value(0x503)
	.dwattr $C$DW$347, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$347, DW_AT_decl_column(0x05)

$C$DW$348	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$348, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP1")
	.dwattr $C$DW$348, DW_AT_const_value(0x04)
	.dwattr $C$DW$348, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$348, DW_AT_decl_column(0x05)

$C$DW$349	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$349, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP2")
	.dwattr $C$DW$349, DW_AT_const_value(0x104)
	.dwattr $C$DW$349, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$349, DW_AT_decl_column(0x05)

$C$DW$350	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$350, DW_AT_name("SYSCTL_PERIPH_CLK_EQEP3")
	.dwattr $C$DW$350, DW_AT_const_value(0x204)
	.dwattr $C$DW$350, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$350, DW_AT_decl_column(0x05)

$C$DW$351	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$351, DW_AT_name("SYSCTL_PERIPH_CLK_SD1")
	.dwattr $C$DW$351, DW_AT_const_value(0x06)
	.dwattr $C$DW$351, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$351, DW_AT_decl_column(0x05)

$C$DW$352	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$352, DW_AT_name("SYSCTL_PERIPH_CLK_SD2")
	.dwattr $C$DW$352, DW_AT_const_value(0x106)
	.dwattr $C$DW$352, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$352, DW_AT_decl_column(0x05)

$C$DW$353	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$353, DW_AT_name("SYSCTL_PERIPH_CLK_SCIA")
	.dwattr $C$DW$353, DW_AT_const_value(0x07)
	.dwattr $C$DW$353, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0x1a4)
	.dwattr $C$DW$353, DW_AT_decl_column(0x05)

$C$DW$354	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$354, DW_AT_name("SYSCTL_PERIPH_CLK_SCIB")
	.dwattr $C$DW$354, DW_AT_const_value(0x107)
	.dwattr $C$DW$354, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0x1a5)
	.dwattr $C$DW$354, DW_AT_decl_column(0x05)

$C$DW$355	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$355, DW_AT_name("SYSCTL_PERIPH_CLK_SCIC")
	.dwattr $C$DW$355, DW_AT_const_value(0x207)
	.dwattr $C$DW$355, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$355, DW_AT_decl_column(0x05)

$C$DW$356	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$356, DW_AT_name("SYSCTL_PERIPH_CLK_SCID")
	.dwattr $C$DW$356, DW_AT_const_value(0x307)
	.dwattr $C$DW$356, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$356, DW_AT_decl_column(0x05)

$C$DW$357	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$357, DW_AT_name("SYSCTL_PERIPH_CLK_SPIA")
	.dwattr $C$DW$357, DW_AT_const_value(0x08)
	.dwattr $C$DW$357, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$357, DW_AT_decl_column(0x05)

$C$DW$358	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$358, DW_AT_name("SYSCTL_PERIPH_CLK_SPIB")
	.dwattr $C$DW$358, DW_AT_const_value(0x108)
	.dwattr $C$DW$358, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$358, DW_AT_decl_column(0x05)

$C$DW$359	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$359, DW_AT_name("SYSCTL_PERIPH_CLK_SPIC")
	.dwattr $C$DW$359, DW_AT_const_value(0x208)
	.dwattr $C$DW$359, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$359, DW_AT_decl_column(0x05)

$C$DW$360	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$360, DW_AT_name("SYSCTL_PERIPH_CLK_I2CA")
	.dwattr $C$DW$360, DW_AT_const_value(0x09)
	.dwattr $C$DW$360, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$360, DW_AT_decl_column(0x05)

$C$DW$361	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$361, DW_AT_name("SYSCTL_PERIPH_CLK_I2CB")
	.dwattr $C$DW$361, DW_AT_const_value(0x109)
	.dwattr $C$DW$361, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$361, DW_AT_decl_column(0x05)

$C$DW$362	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$362, DW_AT_name("SYSCTL_PERIPH_CLK_CANA")
	.dwattr $C$DW$362, DW_AT_const_value(0x0a)
	.dwattr $C$DW$362, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$362, DW_AT_decl_column(0x05)

$C$DW$363	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$363, DW_AT_name("SYSCTL_PERIPH_CLK_CANB")
	.dwattr $C$DW$363, DW_AT_const_value(0x10a)
	.dwattr $C$DW$363, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$363, DW_AT_decl_column(0x05)

$C$DW$364	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$364, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPA")
	.dwattr $C$DW$364, DW_AT_const_value(0x0b)
	.dwattr $C$DW$364, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$364, DW_AT_decl_column(0x05)

$C$DW$365	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$365, DW_AT_name("SYSCTL_PERIPH_CLK_MCBSPB")
	.dwattr $C$DW$365, DW_AT_const_value(0x10b)
	.dwattr $C$DW$365, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$365, DW_AT_decl_column(0x05)

$C$DW$366	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$366, DW_AT_name("SYSCTL_PERIPH_CLK_USBA")
	.dwattr $C$DW$366, DW_AT_const_value(0x100b)
	.dwattr $C$DW$366, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$366, DW_AT_decl_column(0x05)

$C$DW$367	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$367, DW_AT_name("SYSCTL_PERIPH_CLK_UPPA")
	.dwattr $C$DW$367, DW_AT_const_value(0x0c)
	.dwattr $C$DW$367, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$367, DW_AT_decl_column(0x05)

$C$DW$368	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$368, DW_AT_name("SYSCTL_PERIPH_CLK_ADCA")
	.dwattr $C$DW$368, DW_AT_const_value(0x0d)
	.dwattr $C$DW$368, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$368, DW_AT_decl_column(0x05)

$C$DW$369	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$369, DW_AT_name("SYSCTL_PERIPH_CLK_ADCB")
	.dwattr $C$DW$369, DW_AT_const_value(0x10d)
	.dwattr $C$DW$369, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$369, DW_AT_decl_column(0x05)

$C$DW$370	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$370, DW_AT_name("SYSCTL_PERIPH_CLK_ADCC")
	.dwattr $C$DW$370, DW_AT_const_value(0x20d)
	.dwattr $C$DW$370, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$370, DW_AT_decl_column(0x05)

$C$DW$371	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$371, DW_AT_name("SYSCTL_PERIPH_CLK_ADCD")
	.dwattr $C$DW$371, DW_AT_const_value(0x30d)
	.dwattr $C$DW$371, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$371, DW_AT_decl_column(0x05)

$C$DW$372	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$372, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS1")
	.dwattr $C$DW$372, DW_AT_const_value(0x0e)
	.dwattr $C$DW$372, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$372, DW_AT_decl_column(0x05)

$C$DW$373	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$373, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS2")
	.dwattr $C$DW$373, DW_AT_const_value(0x10e)
	.dwattr $C$DW$373, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$373, DW_AT_decl_column(0x05)

$C$DW$374	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$374, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS3")
	.dwattr $C$DW$374, DW_AT_const_value(0x20e)
	.dwattr $C$DW$374, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$374, DW_AT_decl_column(0x05)

$C$DW$375	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$375, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS4")
	.dwattr $C$DW$375, DW_AT_const_value(0x30e)
	.dwattr $C$DW$375, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$375, DW_AT_decl_column(0x05)

$C$DW$376	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$376, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS5")
	.dwattr $C$DW$376, DW_AT_const_value(0x40e)
	.dwattr $C$DW$376, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0x1bb)
	.dwattr $C$DW$376, DW_AT_decl_column(0x05)

$C$DW$377	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$377, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS6")
	.dwattr $C$DW$377, DW_AT_const_value(0x50e)
	.dwattr $C$DW$377, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$377, DW_AT_decl_column(0x05)

$C$DW$378	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$378, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS7")
	.dwattr $C$DW$378, DW_AT_const_value(0x60e)
	.dwattr $C$DW$378, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$378, DW_AT_decl_column(0x05)

$C$DW$379	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$379, DW_AT_name("SYSCTL_PERIPH_CLK_CMPSS8")
	.dwattr $C$DW$379, DW_AT_const_value(0x70e)
	.dwattr $C$DW$379, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0x1be)
	.dwattr $C$DW$379, DW_AT_decl_column(0x05)

$C$DW$380	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$380, DW_AT_name("SYSCTL_PERIPH_CLK_DACA")
	.dwattr $C$DW$380, DW_AT_const_value(0x1010)
	.dwattr $C$DW$380, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$380, DW_AT_decl_column(0x05)

$C$DW$381	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$381, DW_AT_name("SYSCTL_PERIPH_CLK_DACB")
	.dwattr $C$DW$381, DW_AT_const_value(0x1110)
	.dwattr $C$DW$381, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$381, DW_AT_decl_column(0x05)

$C$DW$382	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$382, DW_AT_name("SYSCTL_PERIPH_CLK_DACC")
	.dwattr $C$DW$382, DW_AT_const_value(0x1210)
	.dwattr $C$DW$382, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$382, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$33, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x182)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("SysCtl_PeripheralPCLOCKCR")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\sysctl.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$383	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$383, DW_AT_name("CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT")
	.dwattr $C$DW$383, DW_AT_const_value(0x00)
	.dwattr $C$DW$383, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x58)
	.dwattr $C$DW$383, DW_AT_decl_column(0x03)

$C$DW$384	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$384, DW_AT_name("CPUTIMER_EMULATIONMODE_STOPATZERO")
	.dwattr $C$DW$384, DW_AT_const_value(0x400)
	.dwattr $C$DW$384, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$384, DW_AT_decl_column(0x03)

$C$DW$385	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$385, DW_AT_name("CPUTIMER_EMULATIONMODE_RUNFREE")
	.dwattr $C$DW$385, DW_AT_const_value(0x800)
	.dwattr $C$DW$385, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$385, DW_AT_decl_column(0x03)

	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("CPUTimer_EmulationMode")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$386	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$386, DW_AT_name("EPWM_COUNT_MODE_DOWN_AFTER_SYNC")
	.dwattr $C$DW$386, DW_AT_const_value(0x00)
	.dwattr $C$DW$386, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x65)
	.dwattr $C$DW$386, DW_AT_decl_column(0x04)

$C$DW$387	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$387, DW_AT_name("EPWM_COUNT_MODE_UP_AFTER_SYNC")
	.dwattr $C$DW$387, DW_AT_const_value(0x01)
	.dwattr $C$DW$387, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x66)
	.dwattr $C$DW$387, DW_AT_decl_column(0x04)

	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("EPWM_SyncCountMode")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x67)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$388	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$388, DW_AT_name("EPWM_CLOCK_DIVIDER_1")
	.dwattr $C$DW$388, DW_AT_const_value(0x00)
	.dwattr $C$DW$388, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x71)
	.dwattr $C$DW$388, DW_AT_decl_column(0x05)

$C$DW$389	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$389, DW_AT_name("EPWM_CLOCK_DIVIDER_2")
	.dwattr $C$DW$389, DW_AT_const_value(0x01)
	.dwattr $C$DW$389, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x72)
	.dwattr $C$DW$389, DW_AT_decl_column(0x05)

$C$DW$390	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$390, DW_AT_name("EPWM_CLOCK_DIVIDER_4")
	.dwattr $C$DW$390, DW_AT_const_value(0x02)
	.dwattr $C$DW$390, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x73)
	.dwattr $C$DW$390, DW_AT_decl_column(0x05)

$C$DW$391	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$391, DW_AT_name("EPWM_CLOCK_DIVIDER_8")
	.dwattr $C$DW$391, DW_AT_const_value(0x03)
	.dwattr $C$DW$391, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0x74)
	.dwattr $C$DW$391, DW_AT_decl_column(0x05)

$C$DW$392	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$392, DW_AT_name("EPWM_CLOCK_DIVIDER_16")
	.dwattr $C$DW$392, DW_AT_const_value(0x04)
	.dwattr $C$DW$392, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x75)
	.dwattr $C$DW$392, DW_AT_decl_column(0x05)

$C$DW$393	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$393, DW_AT_name("EPWM_CLOCK_DIVIDER_32")
	.dwattr $C$DW$393, DW_AT_const_value(0x05)
	.dwattr $C$DW$393, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x76)
	.dwattr $C$DW$393, DW_AT_decl_column(0x05)

$C$DW$394	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$394, DW_AT_name("EPWM_CLOCK_DIVIDER_64")
	.dwattr $C$DW$394, DW_AT_const_value(0x06)
	.dwattr $C$DW$394, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x77)
	.dwattr $C$DW$394, DW_AT_decl_column(0x05)

$C$DW$395	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$395, DW_AT_name("EPWM_CLOCK_DIVIDER_128")
	.dwattr $C$DW$395, DW_AT_const_value(0x07)
	.dwattr $C$DW$395, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x78)
	.dwattr $C$DW$395, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("EPWM_ClockDivider")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$396	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$396, DW_AT_name("EPWM_HSCLOCK_DIVIDER_1")
	.dwattr $C$DW$396, DW_AT_const_value(0x00)
	.dwattr $C$DW$396, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x83)
	.dwattr $C$DW$396, DW_AT_decl_column(0x05)

$C$DW$397	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$397, DW_AT_name("EPWM_HSCLOCK_DIVIDER_2")
	.dwattr $C$DW$397, DW_AT_const_value(0x01)
	.dwattr $C$DW$397, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x84)
	.dwattr $C$DW$397, DW_AT_decl_column(0x05)

$C$DW$398	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$398, DW_AT_name("EPWM_HSCLOCK_DIVIDER_4")
	.dwattr $C$DW$398, DW_AT_const_value(0x02)
	.dwattr $C$DW$398, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x85)
	.dwattr $C$DW$398, DW_AT_decl_column(0x05)

$C$DW$399	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$399, DW_AT_name("EPWM_HSCLOCK_DIVIDER_6")
	.dwattr $C$DW$399, DW_AT_const_value(0x03)
	.dwattr $C$DW$399, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x86)
	.dwattr $C$DW$399, DW_AT_decl_column(0x05)

$C$DW$400	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$400, DW_AT_name("EPWM_HSCLOCK_DIVIDER_8")
	.dwattr $C$DW$400, DW_AT_const_value(0x04)
	.dwattr $C$DW$400, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x87)
	.dwattr $C$DW$400, DW_AT_decl_column(0x05)

$C$DW$401	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$401, DW_AT_name("EPWM_HSCLOCK_DIVIDER_10")
	.dwattr $C$DW$401, DW_AT_const_value(0x05)
	.dwattr $C$DW$401, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x88)
	.dwattr $C$DW$401, DW_AT_decl_column(0x05)

$C$DW$402	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$402, DW_AT_name("EPWM_HSCLOCK_DIVIDER_12")
	.dwattr $C$DW$402, DW_AT_const_value(0x06)
	.dwattr $C$DW$402, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x89)
	.dwattr $C$DW$402, DW_AT_decl_column(0x05)

$C$DW$403	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$403, DW_AT_name("EPWM_HSCLOCK_DIVIDER_14")
	.dwattr $C$DW$403, DW_AT_const_value(0x07)
	.dwattr $C$DW$403, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$403, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42
$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("EPWM_HSClockDivider")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$404	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$404, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_SOFTWARE")
	.dwattr $C$DW$404, DW_AT_const_value(0x00)
	.dwattr $C$DW$404, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x96)
	.dwattr $C$DW$404, DW_AT_decl_column(0x05)

$C$DW$405	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$405, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN")
	.dwattr $C$DW$405, DW_AT_const_value(0x00)
	.dwattr $C$DW$405, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x98)
	.dwattr $C$DW$405, DW_AT_decl_column(0x05)

$C$DW$406	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$406, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO")
	.dwattr $C$DW$406, DW_AT_const_value(0x01)
	.dwattr $C$DW$406, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$406, DW_AT_decl_column(0x05)

$C$DW$407	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$407, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_B")
	.dwattr $C$DW$407, DW_AT_const_value(0x02)
	.dwattr $C$DW$407, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$407, DW_AT_decl_column(0x05)

$C$DW$408	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$408, DW_AT_name("EPWM_SYNC_OUT_PULSE_DISABLED")
	.dwattr $C$DW$408, DW_AT_const_value(0x04)
	.dwattr $C$DW$408, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$408, DW_AT_decl_column(0x05)

$C$DW$409	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$409, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_C")
	.dwattr $C$DW$409, DW_AT_const_value(0x05)
	.dwattr $C$DW$409, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$409, DW_AT_decl_column(0x05)

$C$DW$410	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$410, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_D")
	.dwattr $C$DW$410, DW_AT_const_value(0x06)
	.dwattr $C$DW$410, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$410, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x94)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("EPWM_SyncOutPulseMode")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$411	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$411, DW_AT_name("EPWM_PERIOD_SHADOW_LOAD")
	.dwattr $C$DW$411, DW_AT_const_value(0x00)
	.dwattr $C$DW$411, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0xae)
	.dwattr $C$DW$411, DW_AT_decl_column(0x05)

$C$DW$412	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$412, DW_AT_name("EPWM_PERIOD_DIRECT_LOAD")
	.dwattr $C$DW$412, DW_AT_const_value(0x01)
	.dwattr $C$DW$412, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$412, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("EPWM_PeriodLoadMode")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$413	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$413, DW_AT_name("EPWM_COUNTER_MODE_UP")
	.dwattr $C$DW$413, DW_AT_const_value(0x00)
	.dwattr $C$DW$413, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$413, DW_AT_decl_column(0x05)

$C$DW$414	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$414, DW_AT_name("EPWM_COUNTER_MODE_DOWN")
	.dwattr $C$DW$414, DW_AT_const_value(0x01)
	.dwattr $C$DW$414, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$414, DW_AT_decl_column(0x05)

$C$DW$415	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$415, DW_AT_name("EPWM_COUNTER_MODE_UP_DOWN")
	.dwattr $C$DW$415, DW_AT_const_value(0x02)
	.dwattr $C$DW$415, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$415, DW_AT_decl_column(0x05)

$C$DW$416	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$416, DW_AT_name("EPWM_COUNTER_MODE_STOP_FREEZE")
	.dwattr $C$DW$416, DW_AT_const_value(0x03)
	.dwattr $C$DW$416, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$416, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0xba)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48
$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("EPWM_TimeBaseCountMode")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$417	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$417, DW_AT_name("EPWM_COUNTER_COMPARE_A")
	.dwattr $C$DW$417, DW_AT_const_value(0x00)
	.dwattr $C$DW$417, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x111)
	.dwattr $C$DW$417, DW_AT_decl_column(0x05)

$C$DW$418	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$418, DW_AT_name("EPWM_COUNTER_COMPARE_B")
	.dwattr $C$DW$418, DW_AT_const_value(0x02)
	.dwattr $C$DW$418, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x112)
	.dwattr $C$DW$418, DW_AT_decl_column(0x05)

$C$DW$419	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$419, DW_AT_name("EPWM_COUNTER_COMPARE_C")
	.dwattr $C$DW$419, DW_AT_const_value(0x05)
	.dwattr $C$DW$419, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x113)
	.dwattr $C$DW$419, DW_AT_decl_column(0x05)

$C$DW$420	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$420, DW_AT_name("EPWM_COUNTER_COMPARE_D")
	.dwattr $C$DW$420, DW_AT_const_value(0x07)
	.dwattr $C$DW$420, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x114)
	.dwattr $C$DW$420, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x110)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("EPWM_CounterCompareModule")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x115)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$421	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$421, DW_AT_name("EPWM_COMP_LOAD_ON_CNTR_ZERO")
	.dwattr $C$DW$421, DW_AT_const_value(0x00)
	.dwattr $C$DW$421, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x120)
	.dwattr $C$DW$421, DW_AT_decl_column(0x05)

$C$DW$422	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$422, DW_AT_name("EPWM_COMP_LOAD_ON_CNTR_PERIOD")
	.dwattr $C$DW$422, DW_AT_const_value(0x01)
	.dwattr $C$DW$422, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x122)
	.dwattr $C$DW$422, DW_AT_decl_column(0x05)

$C$DW$423	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$423, DW_AT_name("EPWM_COMP_LOAD_ON_CNTR_ZERO_PERIOD")
	.dwattr $C$DW$423, DW_AT_const_value(0x02)
	.dwattr $C$DW$423, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x124)
	.dwattr $C$DW$423, DW_AT_decl_column(0x05)

$C$DW$424	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$424, DW_AT_name("EPWM_COMP_LOAD_FREEZE")
	.dwattr $C$DW$424, DW_AT_const_value(0x03)
	.dwattr $C$DW$424, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x126)
	.dwattr $C$DW$424, DW_AT_decl_column(0x05)

$C$DW$425	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$425, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_CNTR_ZERO")
	.dwattr $C$DW$425, DW_AT_const_value(0x04)
	.dwattr $C$DW$425, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x128)
	.dwattr $C$DW$425, DW_AT_decl_column(0x05)

$C$DW$426	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$426, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_CNTR_PERIOD")
	.dwattr $C$DW$426, DW_AT_const_value(0x05)
	.dwattr $C$DW$426, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$426, DW_AT_decl_column(0x05)

$C$DW$427	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$427, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_CNTR_ZERO_PERIOD")
	.dwattr $C$DW$427, DW_AT_const_value(0x06)
	.dwattr $C$DW$427, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$427, DW_AT_decl_column(0x05)

$C$DW$428	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$428, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_ONLY")
	.dwattr $C$DW$428, DW_AT_const_value(0x08)
	.dwattr $C$DW$428, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$428, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52
$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("EPWM_CounterCompareLoadMode")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$429	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$429, DW_AT_name("EPWM_AQ_OUTPUT_A")
	.dwattr $C$DW$429, DW_AT_const_value(0x00)
	.dwattr $C$DW$429, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x213)
	.dwattr $C$DW$429, DW_AT_decl_column(0x05)

$C$DW$430	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$430, DW_AT_name("EPWM_AQ_OUTPUT_B")
	.dwattr $C$DW$430, DW_AT_const_value(0x02)
	.dwattr $C$DW$430, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x214)
	.dwattr $C$DW$430, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x212)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54
$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("EPWM_ActionQualifierOutputModule")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x215)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$431	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$431, DW_AT_name("EPWM_AQ_OUTPUT_NO_CHANGE")
	.dwattr $C$DW$431, DW_AT_const_value(0x00)
	.dwattr $C$DW$431, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x192)
	.dwattr $C$DW$431, DW_AT_decl_column(0x05)

$C$DW$432	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$432, DW_AT_name("EPWM_AQ_OUTPUT_LOW")
	.dwattr $C$DW$432, DW_AT_const_value(0x01)
	.dwattr $C$DW$432, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x193)
	.dwattr $C$DW$432, DW_AT_decl_column(0x05)

$C$DW$433	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$433, DW_AT_name("EPWM_AQ_OUTPUT_HIGH")
	.dwattr $C$DW$433, DW_AT_const_value(0x02)
	.dwattr $C$DW$433, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x194)
	.dwattr $C$DW$433, DW_AT_decl_column(0x05)

$C$DW$434	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$434, DW_AT_name("EPWM_AQ_OUTPUT_TOGGLE")
	.dwattr $C$DW$434, DW_AT_const_value(0x03)
	.dwattr $C$DW$434, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x195)
	.dwattr $C$DW$434, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x191)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56
$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("EPWM_ActionQualifierOutput")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x196)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$435	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$435, DW_AT_name("EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO")
	.dwattr $C$DW$435, DW_AT_const_value(0x00)
	.dwattr $C$DW$435, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x175)
	.dwattr $C$DW$435, DW_AT_decl_column(0x05)

$C$DW$436	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$436, DW_AT_name("EPWM_AQ_OUTPUT_ON_TIMEBASE_PERIOD")
	.dwattr $C$DW$436, DW_AT_const_value(0x02)
	.dwattr $C$DW$436, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x177)
	.dwattr $C$DW$436, DW_AT_decl_column(0x05)

$C$DW$437	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$437, DW_AT_name("EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA")
	.dwattr $C$DW$437, DW_AT_const_value(0x04)
	.dwattr $C$DW$437, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x179)
	.dwattr $C$DW$437, DW_AT_decl_column(0x05)

$C$DW$438	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$438, DW_AT_name("EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA")
	.dwattr $C$DW$438, DW_AT_const_value(0x06)
	.dwattr $C$DW$438, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$438, DW_AT_decl_column(0x05)

$C$DW$439	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$439, DW_AT_name("EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB")
	.dwattr $C$DW$439, DW_AT_const_value(0x08)
	.dwattr $C$DW$439, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$439, DW_AT_decl_column(0x05)

$C$DW$440	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$440, DW_AT_name("EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPB")
	.dwattr $C$DW$440, DW_AT_const_value(0x0a)
	.dwattr $C$DW$440, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$440, DW_AT_decl_column(0x05)

$C$DW$441	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$441, DW_AT_name("EPWM_AQ_OUTPUT_ON_T1_COUNT_UP")
	.dwattr $C$DW$441, DW_AT_const_value(0x01)
	.dwattr $C$DW$441, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0x181)
	.dwattr $C$DW$441, DW_AT_decl_column(0x05)

$C$DW$442	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$442, DW_AT_name("EPWM_AQ_OUTPUT_ON_T1_COUNT_DOWN")
	.dwattr $C$DW$442, DW_AT_const_value(0x03)
	.dwattr $C$DW$442, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0x183)
	.dwattr $C$DW$442, DW_AT_decl_column(0x05)

$C$DW$443	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$443, DW_AT_name("EPWM_AQ_OUTPUT_ON_T2_COUNT_UP")
	.dwattr $C$DW$443, DW_AT_const_value(0x05)
	.dwattr $C$DW$443, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0x185)
	.dwattr $C$DW$443, DW_AT_decl_column(0x05)

$C$DW$444	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$444, DW_AT_name("EPWM_AQ_OUTPUT_ON_T2_COUNT_DOWN")
	.dwattr $C$DW$444, DW_AT_const_value(0x07)
	.dwattr $C$DW$444, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0x187)
	.dwattr $C$DW$444, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x173)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58
$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("EPWM_ActionQualifierOutputEvent")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x188)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$445	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$445, DW_AT_name("EPWM_AQ_SW_SH_LOAD_ON_CNTR_ZERO")
	.dwattr $C$DW$445, DW_AT_const_value(0x00)
	.dwattr $C$DW$445, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0x220)
	.dwattr $C$DW$445, DW_AT_decl_column(0x05)

$C$DW$446	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$446, DW_AT_name("EPWM_AQ_SW_SH_LOAD_ON_CNTR_PERIOD")
	.dwattr $C$DW$446, DW_AT_const_value(0x01)
	.dwattr $C$DW$446, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0x222)
	.dwattr $C$DW$446, DW_AT_decl_column(0x05)

$C$DW$447	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$447, DW_AT_name("EPWM_AQ_SW_SH_LOAD_ON_CNTR_ZERO_PERIOD")
	.dwattr $C$DW$447, DW_AT_const_value(0x02)
	.dwattr $C$DW$447, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0x224)
	.dwattr $C$DW$447, DW_AT_decl_column(0x05)

$C$DW$448	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$448, DW_AT_name("EPWM_AQ_SW_IMMEDIATE_LOAD")
	.dwattr $C$DW$448, DW_AT_const_value(0x03)
	.dwattr $C$DW$448, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x226)
	.dwattr $C$DW$448, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x21e)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60
$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("EPWM_ActionQualifierContForce")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x227)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$449	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$449, DW_AT_name("EPWM_TZ_DC_OUTPUT_A1")
	.dwattr $C$DW$449, DW_AT_const_value(0x00)
	.dwattr $C$DW$449, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x2e3)
	.dwattr $C$DW$449, DW_AT_decl_column(0x05)

$C$DW$450	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$450, DW_AT_name("EPWM_TZ_DC_OUTPUT_A2")
	.dwattr $C$DW$450, DW_AT_const_value(0x03)
	.dwattr $C$DW$450, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0x2e4)
	.dwattr $C$DW$450, DW_AT_decl_column(0x05)

$C$DW$451	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$451, DW_AT_name("EPWM_TZ_DC_OUTPUT_B1")
	.dwattr $C$DW$451, DW_AT_const_value(0x06)
	.dwattr $C$DW$451, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x2e5)
	.dwattr $C$DW$451, DW_AT_decl_column(0x05)

$C$DW$452	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$452, DW_AT_name("EPWM_TZ_DC_OUTPUT_B2")
	.dwattr $C$DW$452, DW_AT_const_value(0x09)
	.dwattr $C$DW$452, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x2e6)
	.dwattr $C$DW$452, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x2e2)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62
$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("EPWM_TripZoneDigitalCompareOutput")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x2e7)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$453	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$453, DW_AT_name("EPWM_TZ_EVENT_DC_DISABLED")
	.dwattr $C$DW$453, DW_AT_const_value(0x00)
	.dwattr $C$DW$453, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x2f1)
	.dwattr $C$DW$453, DW_AT_decl_column(0x05)

$C$DW$454	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$454, DW_AT_name("EPWM_TZ_EVENT_DCXH_LOW")
	.dwattr $C$DW$454, DW_AT_const_value(0x01)
	.dwattr $C$DW$454, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x2f2)
	.dwattr $C$DW$454, DW_AT_decl_column(0x05)

$C$DW$455	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$455, DW_AT_name("EPWM_TZ_EVENT_DCXH_HIGH")
	.dwattr $C$DW$455, DW_AT_const_value(0x02)
	.dwattr $C$DW$455, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x2f3)
	.dwattr $C$DW$455, DW_AT_decl_column(0x05)

$C$DW$456	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$456, DW_AT_name("EPWM_TZ_EVENT_DCXL_LOW")
	.dwattr $C$DW$456, DW_AT_const_value(0x03)
	.dwattr $C$DW$456, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x2f4)
	.dwattr $C$DW$456, DW_AT_decl_column(0x05)

$C$DW$457	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$457, DW_AT_name("EPWM_TZ_EVENT_DCXL_HIGH")
	.dwattr $C$DW$457, DW_AT_const_value(0x04)
	.dwattr $C$DW$457, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x2f5)
	.dwattr $C$DW$457, DW_AT_decl_column(0x05)

$C$DW$458	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$458, DW_AT_name("EPWM_TZ_EVENT_DCXL_HIGH_DCXH_LOW")
	.dwattr $C$DW$458, DW_AT_const_value(0x05)
	.dwattr $C$DW$458, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x2f6)
	.dwattr $C$DW$458, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x2f0)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64
$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("EPWM_TripZoneDigitalCompareOutputEvent")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x2f7)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$459	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$459, DW_AT_name("EPWM_TZ_ACTION_EVENT_TZA")
	.dwattr $C$DW$459, DW_AT_const_value(0x00)
	.dwattr $C$DW$459, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x301)
	.dwattr $C$DW$459, DW_AT_decl_column(0x05)

$C$DW$460	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$460, DW_AT_name("EPWM_TZ_ACTION_EVENT_TZB")
	.dwattr $C$DW$460, DW_AT_const_value(0x02)
	.dwattr $C$DW$460, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x302)
	.dwattr $C$DW$460, DW_AT_decl_column(0x05)

$C$DW$461	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$461, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCAEVT1")
	.dwattr $C$DW$461, DW_AT_const_value(0x04)
	.dwattr $C$DW$461, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x303)
	.dwattr $C$DW$461, DW_AT_decl_column(0x05)

$C$DW$462	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$462, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCAEVT2")
	.dwattr $C$DW$462, DW_AT_const_value(0x06)
	.dwattr $C$DW$462, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x304)
	.dwattr $C$DW$462, DW_AT_decl_column(0x05)

$C$DW$463	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$463, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCBEVT1")
	.dwattr $C$DW$463, DW_AT_const_value(0x08)
	.dwattr $C$DW$463, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x305)
	.dwattr $C$DW$463, DW_AT_decl_column(0x05)

$C$DW$464	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$464, DW_AT_name("EPWM_TZ_ACTION_EVENT_DCBEVT2")
	.dwattr $C$DW$464, DW_AT_const_value(0x0a)
	.dwattr $C$DW$464, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x306)
	.dwattr $C$DW$464, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x300)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66
$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("EPWM_TripZoneEvent")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x307)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$465	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$465, DW_AT_name("EPWM_TZ_ACTION_HIGH_Z")
	.dwattr $C$DW$465, DW_AT_const_value(0x00)
	.dwattr $C$DW$465, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x311)
	.dwattr $C$DW$465, DW_AT_decl_column(0x05)

$C$DW$466	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$466, DW_AT_name("EPWM_TZ_ACTION_HIGH")
	.dwattr $C$DW$466, DW_AT_const_value(0x01)
	.dwattr $C$DW$466, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x312)
	.dwattr $C$DW$466, DW_AT_decl_column(0x05)

$C$DW$467	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$467, DW_AT_name("EPWM_TZ_ACTION_LOW")
	.dwattr $C$DW$467, DW_AT_const_value(0x02)
	.dwattr $C$DW$467, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x313)
	.dwattr $C$DW$467, DW_AT_decl_column(0x05)

$C$DW$468	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$468, DW_AT_name("EPWM_TZ_ACTION_DISABLE")
	.dwattr $C$DW$468, DW_AT_const_value(0x03)
	.dwattr $C$DW$468, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x314)
	.dwattr $C$DW$468, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x310)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68
$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("EPWM_TripZoneAction")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x315)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$469	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$469, DW_AT_name("EPWM_SOC_A")
	.dwattr $C$DW$469, DW_AT_const_value(0x00)
	.dwattr $C$DW$469, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x429)
	.dwattr $C$DW$469, DW_AT_decl_column(0x05)

$C$DW$470	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$470, DW_AT_name("EPWM_SOC_B")
	.dwattr $C$DW$470, DW_AT_const_value(0x01)
	.dwattr $C$DW$470, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x42a)
	.dwattr $C$DW$470, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$69, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x428)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70
$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("EPWM_ADCStartOfConversionType")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x42b)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$471	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$471, DW_AT_name("EPWM_SOC_DCxEVT1")
	.dwattr $C$DW$471, DW_AT_const_value(0x00)
	.dwattr $C$DW$471, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x436)
	.dwattr $C$DW$471, DW_AT_decl_column(0x05)

$C$DW$472	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$472, DW_AT_name("EPWM_SOC_TBCTR_ZERO")
	.dwattr $C$DW$472, DW_AT_const_value(0x01)
	.dwattr $C$DW$472, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x438)
	.dwattr $C$DW$472, DW_AT_decl_column(0x05)

$C$DW$473	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$473, DW_AT_name("EPWM_SOC_TBCTR_PERIOD")
	.dwattr $C$DW$473, DW_AT_const_value(0x02)
	.dwattr $C$DW$473, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x43a)
	.dwattr $C$DW$473, DW_AT_decl_column(0x05)

$C$DW$474	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$474, DW_AT_name("EPWM_SOC_TBCTR_ZERO_OR_PERIOD")
	.dwattr $C$DW$474, DW_AT_const_value(0x03)
	.dwattr $C$DW$474, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x43c)
	.dwattr $C$DW$474, DW_AT_decl_column(0x05)

$C$DW$475	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$475, DW_AT_name("EPWM_SOC_TBCTR_U_CMPA")
	.dwattr $C$DW$475, DW_AT_const_value(0x04)
	.dwattr $C$DW$475, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x43e)
	.dwattr $C$DW$475, DW_AT_decl_column(0x05)

$C$DW$476	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$476, DW_AT_name("EPWM_SOC_TBCTR_U_CMPC")
	.dwattr $C$DW$476, DW_AT_const_value(0x08)
	.dwattr $C$DW$476, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0x440)
	.dwattr $C$DW$476, DW_AT_decl_column(0x05)

$C$DW$477	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$477, DW_AT_name("EPWM_SOC_TBCTR_D_CMPA")
	.dwattr $C$DW$477, DW_AT_const_value(0x05)
	.dwattr $C$DW$477, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x442)
	.dwattr $C$DW$477, DW_AT_decl_column(0x05)

$C$DW$478	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$478, DW_AT_name("EPWM_SOC_TBCTR_D_CMPC")
	.dwattr $C$DW$478, DW_AT_const_value(0x0a)
	.dwattr $C$DW$478, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0x444)
	.dwattr $C$DW$478, DW_AT_decl_column(0x05)

$C$DW$479	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$479, DW_AT_name("EPWM_SOC_TBCTR_U_CMPB")
	.dwattr $C$DW$479, DW_AT_const_value(0x06)
	.dwattr $C$DW$479, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0x446)
	.dwattr $C$DW$479, DW_AT_decl_column(0x05)

$C$DW$480	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$480, DW_AT_name("EPWM_SOC_TBCTR_U_CMPD")
	.dwattr $C$DW$480, DW_AT_const_value(0x0c)
	.dwattr $C$DW$480, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0x448)
	.dwattr $C$DW$480, DW_AT_decl_column(0x05)

$C$DW$481	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$481, DW_AT_name("EPWM_SOC_TBCTR_D_CMPB")
	.dwattr $C$DW$481, DW_AT_const_value(0x07)
	.dwattr $C$DW$481, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0x44a)
	.dwattr $C$DW$481, DW_AT_decl_column(0x05)

$C$DW$482	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$482, DW_AT_name("EPWM_SOC_TBCTR_D_CMPD")
	.dwattr $C$DW$482, DW_AT_const_value(0x0e)
	.dwattr $C$DW$482, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0x44c)
	.dwattr $C$DW$482, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$71, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x434)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72
$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("EPWM_ADCStartOfConversionSource")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x44d)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73

$C$DW$T$73	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$483	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$483, DW_AT_name("EPWM_DC_TRIP_TRIPIN1")
	.dwattr $C$DW$483, DW_AT_const_value(0x00)
	.dwattr $C$DW$483, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0x46a)
	.dwattr $C$DW$483, DW_AT_decl_column(0x05)

$C$DW$484	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$484, DW_AT_name("EPWM_DC_TRIP_TRIPIN2")
	.dwattr $C$DW$484, DW_AT_const_value(0x01)
	.dwattr $C$DW$484, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0x46b)
	.dwattr $C$DW$484, DW_AT_decl_column(0x05)

$C$DW$485	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$485, DW_AT_name("EPWM_DC_TRIP_TRIPIN3")
	.dwattr $C$DW$485, DW_AT_const_value(0x02)
	.dwattr $C$DW$485, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0x46c)
	.dwattr $C$DW$485, DW_AT_decl_column(0x05)

$C$DW$486	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$486, DW_AT_name("EPWM_DC_TRIP_TRIPIN4")
	.dwattr $C$DW$486, DW_AT_const_value(0x03)
	.dwattr $C$DW$486, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0x46d)
	.dwattr $C$DW$486, DW_AT_decl_column(0x05)

$C$DW$487	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$487, DW_AT_name("EPWM_DC_TRIP_TRIPIN5")
	.dwattr $C$DW$487, DW_AT_const_value(0x04)
	.dwattr $C$DW$487, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0x46e)
	.dwattr $C$DW$487, DW_AT_decl_column(0x05)

$C$DW$488	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$488, DW_AT_name("EPWM_DC_TRIP_TRIPIN6")
	.dwattr $C$DW$488, DW_AT_const_value(0x05)
	.dwattr $C$DW$488, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0x46f)
	.dwattr $C$DW$488, DW_AT_decl_column(0x05)

$C$DW$489	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$489, DW_AT_name("EPWM_DC_TRIP_TRIPIN7")
	.dwattr $C$DW$489, DW_AT_const_value(0x06)
	.dwattr $C$DW$489, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0x470)
	.dwattr $C$DW$489, DW_AT_decl_column(0x05)

$C$DW$490	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$490, DW_AT_name("EPWM_DC_TRIP_TRIPIN8")
	.dwattr $C$DW$490, DW_AT_const_value(0x07)
	.dwattr $C$DW$490, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0x471)
	.dwattr $C$DW$490, DW_AT_decl_column(0x05)

$C$DW$491	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$491, DW_AT_name("EPWM_DC_TRIP_TRIPIN9")
	.dwattr $C$DW$491, DW_AT_const_value(0x08)
	.dwattr $C$DW$491, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0x472)
	.dwattr $C$DW$491, DW_AT_decl_column(0x05)

$C$DW$492	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$492, DW_AT_name("EPWM_DC_TRIP_TRIPIN10")
	.dwattr $C$DW$492, DW_AT_const_value(0x09)
	.dwattr $C$DW$492, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0x473)
	.dwattr $C$DW$492, DW_AT_decl_column(0x05)

$C$DW$493	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$493, DW_AT_name("EPWM_DC_TRIP_TRIPIN11")
	.dwattr $C$DW$493, DW_AT_const_value(0x0a)
	.dwattr $C$DW$493, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0x474)
	.dwattr $C$DW$493, DW_AT_decl_column(0x05)

$C$DW$494	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$494, DW_AT_name("EPWM_DC_TRIP_TRIPIN12")
	.dwattr $C$DW$494, DW_AT_const_value(0x0b)
	.dwattr $C$DW$494, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0x475)
	.dwattr $C$DW$494, DW_AT_decl_column(0x05)

$C$DW$495	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$495, DW_AT_name("EPWM_DC_TRIP_TRIPIN14")
	.dwattr $C$DW$495, DW_AT_const_value(0x0d)
	.dwattr $C$DW$495, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0x476)
	.dwattr $C$DW$495, DW_AT_decl_column(0x05)

$C$DW$496	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$496, DW_AT_name("EPWM_DC_TRIP_TRIPIN15")
	.dwattr $C$DW$496, DW_AT_const_value(0x0e)
	.dwattr $C$DW$496, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0x477)
	.dwattr $C$DW$496, DW_AT_decl_column(0x05)

$C$DW$497	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$497, DW_AT_name("EPWM_DC_TRIP_COMBINATION")
	.dwattr $C$DW$497, DW_AT_const_value(0x0f)
	.dwattr $C$DW$497, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0x478)
	.dwattr $C$DW$497, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x469)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$73

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74
$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("EPWM_DigitalCompareTripInput")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x479)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$74


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75

$C$DW$T$75	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$498	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$498, DW_AT_name("EPWM_DC_TYPE_DCAH")
	.dwattr $C$DW$498, DW_AT_const_value(0x00)
	.dwattr $C$DW$498, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0x45c)
	.dwattr $C$DW$498, DW_AT_decl_column(0x05)

$C$DW$499	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$499, DW_AT_name("EPWM_DC_TYPE_DCAL")
	.dwattr $C$DW$499, DW_AT_const_value(0x01)
	.dwattr $C$DW$499, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0x45d)
	.dwattr $C$DW$499, DW_AT_decl_column(0x05)

$C$DW$500	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$500, DW_AT_name("EPWM_DC_TYPE_DCBH")
	.dwattr $C$DW$500, DW_AT_const_value(0x02)
	.dwattr $C$DW$500, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0x45e)
	.dwattr $C$DW$500, DW_AT_decl_column(0x05)

$C$DW$501	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$501, DW_AT_name("EPWM_DC_TYPE_DCBL")
	.dwattr $C$DW$501, DW_AT_const_value(0x03)
	.dwattr $C$DW$501, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0x45f)
	.dwattr $C$DW$501, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$75, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x45b)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$75

	.dwendtag $C$DW$TU$75


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76
$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("EPWM_DigitalCompareType")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x460)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$76


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77

$C$DW$T$77	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$502	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$502, DW_AT_name("EPWM_DC_MODULE_A")
	.dwattr $C$DW$502, DW_AT_const_value(0x00)
	.dwattr $C$DW$502, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0x4d5)
	.dwattr $C$DW$502, DW_AT_decl_column(0x05)

$C$DW$503	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$503, DW_AT_name("EPWM_DC_MODULE_B")
	.dwattr $C$DW$503, DW_AT_const_value(0x01)
	.dwattr $C$DW$503, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0x4d6)
	.dwattr $C$DW$503, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$77, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x4d4)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$77

	.dwendtag $C$DW$TU$77


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78
$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("EPWM_DigitalCompareModule")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x4d7)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$78


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79

$C$DW$T$79	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$504	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$504, DW_AT_name("EPWM_DC_EVENT_1")
	.dwattr $C$DW$504, DW_AT_const_value(0x00)
	.dwattr $C$DW$504, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0x4e1)
	.dwattr $C$DW$504, DW_AT_decl_column(0x05)

$C$DW$505	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$505, DW_AT_name("EPWM_DC_EVENT_2")
	.dwattr $C$DW$505, DW_AT_const_value(0x01)
	.dwattr $C$DW$505, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0x4e2)
	.dwattr $C$DW$505, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$79, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x4e0)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$79

	.dwendtag $C$DW$TU$79


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80
$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("EPWM_DigitalCompareEvent")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$80, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x4e3)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81

$C$DW$T$81	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$506	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$506, DW_AT_name("EPWM_DC_EVENT_SOURCE_ORIG_SIGNAL")
	.dwattr $C$DW$506, DW_AT_const_value(0x00)
	.dwattr $C$DW$506, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0x4ee)
	.dwattr $C$DW$506, DW_AT_decl_column(0x05)

$C$DW$507	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$507, DW_AT_name("EPWM_DC_EVENT_SOURCE_FILT_SIGNAL")
	.dwattr $C$DW$507, DW_AT_const_value(0x01)
	.dwattr $C$DW$507, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0x4f0)
	.dwattr $C$DW$507, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$81, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x4ec)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$81

	.dwendtag $C$DW$TU$81


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82
$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("EPWM_DigitalCompareEventSource")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x4f1)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$82


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83

$C$DW$T$83	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$508	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$508, DW_AT_name("EPWM_DC_EVENT_INPUT_SYNCED")
	.dwattr $C$DW$508, DW_AT_const_value(0x00)
	.dwattr $C$DW$508, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0x4fc)
	.dwattr $C$DW$508, DW_AT_decl_column(0x05)

$C$DW$509	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$509, DW_AT_name("EPWM_DC_EVENT_INPUT_NOT_SYNCED")
	.dwattr $C$DW$509, DW_AT_const_value(0x01)
	.dwattr $C$DW$509, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0x4fe)
	.dwattr $C$DW$509, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$83, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x4fa)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$83

	.dwendtag $C$DW$TU$83


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84
$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("EPWM_DigitalCompareSyncMode")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x4ff)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$84


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85

$C$DW$T$85	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$510	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$510, DW_AT_name("XBAR_OUTPUT1")
	.dwattr $C$DW$510, DW_AT_const_value(0x00)
	.dwattr $C$DW$510, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0x95)
	.dwattr $C$DW$510, DW_AT_decl_column(0x05)

$C$DW$511	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$511, DW_AT_name("XBAR_OUTPUT2")
	.dwattr $C$DW$511, DW_AT_const_value(0x02)
	.dwattr $C$DW$511, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0x96)
	.dwattr $C$DW$511, DW_AT_decl_column(0x05)

$C$DW$512	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$512, DW_AT_name("XBAR_OUTPUT3")
	.dwattr $C$DW$512, DW_AT_const_value(0x04)
	.dwattr $C$DW$512, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0x97)
	.dwattr $C$DW$512, DW_AT_decl_column(0x05)

$C$DW$513	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$513, DW_AT_name("XBAR_OUTPUT4")
	.dwattr $C$DW$513, DW_AT_const_value(0x06)
	.dwattr $C$DW$513, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0x98)
	.dwattr $C$DW$513, DW_AT_decl_column(0x05)

$C$DW$514	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$514, DW_AT_name("XBAR_OUTPUT5")
	.dwattr $C$DW$514, DW_AT_const_value(0x08)
	.dwattr $C$DW$514, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0x99)
	.dwattr $C$DW$514, DW_AT_decl_column(0x05)

$C$DW$515	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$515, DW_AT_name("XBAR_OUTPUT6")
	.dwattr $C$DW$515, DW_AT_const_value(0x0a)
	.dwattr $C$DW$515, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$515, DW_AT_decl_column(0x05)

$C$DW$516	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$516, DW_AT_name("XBAR_OUTPUT7")
	.dwattr $C$DW$516, DW_AT_const_value(0x0c)
	.dwattr $C$DW$516, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$516, DW_AT_decl_column(0x05)

$C$DW$517	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$517, DW_AT_name("XBAR_OUTPUT8")
	.dwattr $C$DW$517, DW_AT_const_value(0x0e)
	.dwattr $C$DW$517, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$517, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$85, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x94)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$85

	.dwendtag $C$DW$TU$85


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86
$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("XBAR_OutputNum")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$86


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87

$C$DW$T$87	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x01)
$C$DW$518	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$518, DW_AT_name("XBAR_TRIP4")
	.dwattr $C$DW$518, DW_AT_const_value(0x00)
	.dwattr $C$DW$518, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$518, DW_AT_decl_column(0x05)

$C$DW$519	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$519, DW_AT_name("XBAR_TRIP5")
	.dwattr $C$DW$519, DW_AT_const_value(0x02)
	.dwattr $C$DW$519, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$519, DW_AT_decl_column(0x05)

$C$DW$520	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$520, DW_AT_name("XBAR_TRIP7")
	.dwattr $C$DW$520, DW_AT_const_value(0x04)
	.dwattr $C$DW$520, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$520, DW_AT_decl_column(0x05)

$C$DW$521	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$521, DW_AT_name("XBAR_TRIP8")
	.dwattr $C$DW$521, DW_AT_const_value(0x06)
	.dwattr $C$DW$521, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0xab)
	.dwattr $C$DW$521, DW_AT_decl_column(0x05)

$C$DW$522	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$522, DW_AT_name("XBAR_TRIP9")
	.dwattr $C$DW$522, DW_AT_const_value(0x08)
	.dwattr $C$DW$522, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0xac)
	.dwattr $C$DW$522, DW_AT_decl_column(0x05)

$C$DW$523	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$523, DW_AT_name("XBAR_TRIP10")
	.dwattr $C$DW$523, DW_AT_const_value(0x0a)
	.dwattr $C$DW$523, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0xad)
	.dwattr $C$DW$523, DW_AT_decl_column(0x05)

$C$DW$524	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$524, DW_AT_name("XBAR_TRIP11")
	.dwattr $C$DW$524, DW_AT_const_value(0x0c)
	.dwattr $C$DW$524, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0xae)
	.dwattr $C$DW$524, DW_AT_decl_column(0x05)

$C$DW$525	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$525, DW_AT_name("XBAR_TRIP12")
	.dwattr $C$DW$525, DW_AT_const_value(0x0e)
	.dwattr $C$DW$525, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$525, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$87, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$87

	.dwendtag $C$DW$TU$87


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88
$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("XBAR_TripNum")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$88


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89

$C$DW$T$89	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x01)
$C$DW$526	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$526, DW_AT_name("XBAR_OUT_MUX00_CMPSS1_CTRIPOUTH")
	.dwattr $C$DW$526, DW_AT_const_value(0x00)
	.dwattr $C$DW$526, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$526, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$526, DW_AT_decl_column(0x05)

$C$DW$527	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$527, DW_AT_name("XBAR_OUT_MUX00_CMPSS1_CTRIPOUTH_OR_L")
	.dwattr $C$DW$527, DW_AT_const_value(0x01)
	.dwattr $C$DW$527, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$527, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$527, DW_AT_decl_column(0x05)

$C$DW$528	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$528, DW_AT_name("XBAR_OUT_MUX00_ADCAEVT1")
	.dwattr $C$DW$528, DW_AT_const_value(0x02)
	.dwattr $C$DW$528, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$528, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$528, DW_AT_decl_column(0x05)

$C$DW$529	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$529, DW_AT_name("XBAR_OUT_MUX00_ECAP1_OUT")
	.dwattr $C$DW$529, DW_AT_const_value(0x03)
	.dwattr $C$DW$529, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0xea)
	.dwattr $C$DW$529, DW_AT_decl_column(0x05)

$C$DW$530	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$530, DW_AT_name("XBAR_OUT_MUX01_CMPSS1_CTRIPOUTL")
	.dwattr $C$DW$530, DW_AT_const_value(0x200)
	.dwattr $C$DW$530, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$530, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$530, DW_AT_decl_column(0x05)

$C$DW$531	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$531, DW_AT_name("XBAR_OUT_MUX01_INPUTXBAR1")
	.dwattr $C$DW$531, DW_AT_const_value(0x201)
	.dwattr $C$DW$531, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$531, DW_AT_decl_line(0xec)
	.dwattr $C$DW$531, DW_AT_decl_column(0x05)

$C$DW$532	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$532, DW_AT_name("XBAR_OUT_MUX01_CLB1_OUT4")
	.dwattr $C$DW$532, DW_AT_const_value(0x202)
	.dwattr $C$DW$532, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$532, DW_AT_decl_line(0xed)
	.dwattr $C$DW$532, DW_AT_decl_column(0x05)

$C$DW$533	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$533, DW_AT_name("XBAR_OUT_MUX01_ADCCEVT1")
	.dwattr $C$DW$533, DW_AT_const_value(0x203)
	.dwattr $C$DW$533, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0xee)
	.dwattr $C$DW$533, DW_AT_decl_column(0x05)

$C$DW$534	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$534, DW_AT_name("XBAR_OUT_MUX02_CMPSS2_CTRIPOUTH")
	.dwattr $C$DW$534, DW_AT_const_value(0x400)
	.dwattr $C$DW$534, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$534, DW_AT_decl_line(0xef)
	.dwattr $C$DW$534, DW_AT_decl_column(0x05)

$C$DW$535	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$535, DW_AT_name("XBAR_OUT_MUX02_CMPSS2_CTRIPOUTH_OR_L")
	.dwattr $C$DW$535, DW_AT_const_value(0x401)
	.dwattr $C$DW$535, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$535, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$535, DW_AT_decl_column(0x05)

$C$DW$536	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$536, DW_AT_name("XBAR_OUT_MUX02_ADCAEVT2")
	.dwattr $C$DW$536, DW_AT_const_value(0x402)
	.dwattr $C$DW$536, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$536, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$536, DW_AT_decl_column(0x05)

$C$DW$537	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$537, DW_AT_name("XBAR_OUT_MUX02_ECAP2_OUT")
	.dwattr $C$DW$537, DW_AT_const_value(0x403)
	.dwattr $C$DW$537, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$537, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$537, DW_AT_decl_column(0x05)

$C$DW$538	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$538, DW_AT_name("XBAR_OUT_MUX03_CMPSS2_CTRIPOUTL")
	.dwattr $C$DW$538, DW_AT_const_value(0x600)
	.dwattr $C$DW$538, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$538, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$538, DW_AT_decl_column(0x05)

$C$DW$539	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$539, DW_AT_name("XBAR_OUT_MUX03_INPUTXBAR2")
	.dwattr $C$DW$539, DW_AT_const_value(0x601)
	.dwattr $C$DW$539, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$539, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$539, DW_AT_decl_column(0x05)

$C$DW$540	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$540, DW_AT_name("XBAR_OUT_MUX03_CLB1_OUT5")
	.dwattr $C$DW$540, DW_AT_const_value(0x602)
	.dwattr $C$DW$540, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$540, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$540, DW_AT_decl_column(0x05)

$C$DW$541	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$541, DW_AT_name("XBAR_OUT_MUX03_ADCCEVT2")
	.dwattr $C$DW$541, DW_AT_const_value(0x603)
	.dwattr $C$DW$541, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$541, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$541, DW_AT_decl_column(0x05)

$C$DW$542	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$542, DW_AT_name("XBAR_OUT_MUX04_CMPSS3_CTRIPOUTH")
	.dwattr $C$DW$542, DW_AT_const_value(0x800)
	.dwattr $C$DW$542, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$542, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$542, DW_AT_decl_column(0x05)

$C$DW$543	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$543, DW_AT_name("XBAR_OUT_MUX04_CMPSS3_CTRIPOUTH_OR_L")
	.dwattr $C$DW$543, DW_AT_const_value(0x801)
	.dwattr $C$DW$543, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$543, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$543, DW_AT_decl_column(0x05)

$C$DW$544	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$544, DW_AT_name("XBAR_OUT_MUX04_ADCAEVT3")
	.dwattr $C$DW$544, DW_AT_const_value(0x802)
	.dwattr $C$DW$544, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$544, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$544, DW_AT_decl_column(0x05)

$C$DW$545	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$545, DW_AT_name("XBAR_OUT_MUX04_ECAP3_OUT")
	.dwattr $C$DW$545, DW_AT_const_value(0x803)
	.dwattr $C$DW$545, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$545, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$545, DW_AT_decl_column(0x05)

$C$DW$546	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$546, DW_AT_name("XBAR_OUT_MUX05_CMPSS3_CTRIPOUTL")
	.dwattr $C$DW$546, DW_AT_const_value(0xa00)
	.dwattr $C$DW$546, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$546, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$546, DW_AT_decl_column(0x05)

$C$DW$547	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$547, DW_AT_name("XBAR_OUT_MUX05_INPUTXBAR3")
	.dwattr $C$DW$547, DW_AT_const_value(0xa01)
	.dwattr $C$DW$547, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$547, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$547, DW_AT_decl_column(0x05)

$C$DW$548	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$548, DW_AT_name("XBAR_OUT_MUX05_CLB2_OUT4")
	.dwattr $C$DW$548, DW_AT_const_value(0xa02)
	.dwattr $C$DW$548, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$548, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$548, DW_AT_decl_column(0x05)

$C$DW$549	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$549, DW_AT_name("XBAR_OUT_MUX05_ADCCEVT3")
	.dwattr $C$DW$549, DW_AT_const_value(0xa03)
	.dwattr $C$DW$549, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$549, DW_AT_decl_column(0x05)

$C$DW$550	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$550, DW_AT_name("XBAR_OUT_MUX06_CMPSS4_CTRIPOUTH")
	.dwattr $C$DW$550, DW_AT_const_value(0xc00)
	.dwattr $C$DW$550, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$550, DW_AT_decl_line(0xff)
	.dwattr $C$DW$550, DW_AT_decl_column(0x05)

$C$DW$551	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$551, DW_AT_name("XBAR_OUT_MUX06_CMPSS4_CTRIPOUTH_OR_L")
	.dwattr $C$DW$551, DW_AT_const_value(0xc01)
	.dwattr $C$DW$551, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$551, DW_AT_decl_line(0x100)
	.dwattr $C$DW$551, DW_AT_decl_column(0x05)

$C$DW$552	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$552, DW_AT_name("XBAR_OUT_MUX06_ADCAEVT4")
	.dwattr $C$DW$552, DW_AT_const_value(0xc02)
	.dwattr $C$DW$552, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$552, DW_AT_decl_line(0x101)
	.dwattr $C$DW$552, DW_AT_decl_column(0x05)

$C$DW$553	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$553, DW_AT_name("XBAR_OUT_MUX06_ECAP4_OUT")
	.dwattr $C$DW$553, DW_AT_const_value(0xc03)
	.dwattr $C$DW$553, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$553, DW_AT_decl_line(0x102)
	.dwattr $C$DW$553, DW_AT_decl_column(0x05)

$C$DW$554	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$554, DW_AT_name("XBAR_OUT_MUX07_CMPSS4_CTRIPOUTL")
	.dwattr $C$DW$554, DW_AT_const_value(0xe00)
	.dwattr $C$DW$554, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$554, DW_AT_decl_line(0x103)
	.dwattr $C$DW$554, DW_AT_decl_column(0x05)

$C$DW$555	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$555, DW_AT_name("XBAR_OUT_MUX07_INPUTXBAR4")
	.dwattr $C$DW$555, DW_AT_const_value(0xe01)
	.dwattr $C$DW$555, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$555, DW_AT_decl_line(0x104)
	.dwattr $C$DW$555, DW_AT_decl_column(0x05)

$C$DW$556	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$556, DW_AT_name("XBAR_OUT_MUX07_CLB2_OUT5")
	.dwattr $C$DW$556, DW_AT_const_value(0xe02)
	.dwattr $C$DW$556, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$556, DW_AT_decl_line(0x105)
	.dwattr $C$DW$556, DW_AT_decl_column(0x05)

$C$DW$557	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$557, DW_AT_name("XBAR_OUT_MUX07_ADCCEVT4")
	.dwattr $C$DW$557, DW_AT_const_value(0xe03)
	.dwattr $C$DW$557, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0x106)
	.dwattr $C$DW$557, DW_AT_decl_column(0x05)

$C$DW$558	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$558, DW_AT_name("XBAR_OUT_MUX08_CMPSS5_CTRIPOUTH")
	.dwattr $C$DW$558, DW_AT_const_value(0x1000)
	.dwattr $C$DW$558, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$558, DW_AT_decl_line(0x107)
	.dwattr $C$DW$558, DW_AT_decl_column(0x05)

$C$DW$559	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$559, DW_AT_name("XBAR_OUT_MUX08_CMPSS5_CTRIPOUTH_OR_L")
	.dwattr $C$DW$559, DW_AT_const_value(0x1001)
	.dwattr $C$DW$559, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$559, DW_AT_decl_line(0x108)
	.dwattr $C$DW$559, DW_AT_decl_column(0x05)

$C$DW$560	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$560, DW_AT_name("XBAR_OUT_MUX08_ADCBEVT1")
	.dwattr $C$DW$560, DW_AT_const_value(0x1002)
	.dwattr $C$DW$560, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$560, DW_AT_decl_line(0x109)
	.dwattr $C$DW$560, DW_AT_decl_column(0x05)

$C$DW$561	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$561, DW_AT_name("XBAR_OUT_MUX08_ECAP5_OUT")
	.dwattr $C$DW$561, DW_AT_const_value(0x1003)
	.dwattr $C$DW$561, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$561, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$561, DW_AT_decl_column(0x05)

$C$DW$562	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$562, DW_AT_name("XBAR_OUT_MUX09_CMPSS5_CTRIPOUTL")
	.dwattr $C$DW$562, DW_AT_const_value(0x1200)
	.dwattr $C$DW$562, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$562, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$562, DW_AT_decl_column(0x05)

$C$DW$563	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$563, DW_AT_name("XBAR_OUT_MUX09_INPUTXBAR5")
	.dwattr $C$DW$563, DW_AT_const_value(0x1201)
	.dwattr $C$DW$563, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$563, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$563, DW_AT_decl_column(0x05)

$C$DW$564	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$564, DW_AT_name("XBAR_OUT_MUX09_CLB3_OUT4")
	.dwattr $C$DW$564, DW_AT_const_value(0x1202)
	.dwattr $C$DW$564, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$564, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$564, DW_AT_decl_column(0x05)

$C$DW$565	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$565, DW_AT_name("XBAR_OUT_MUX09_ADCDEVT1")
	.dwattr $C$DW$565, DW_AT_const_value(0x1203)
	.dwattr $C$DW$565, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$565, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$565, DW_AT_decl_column(0x05)

$C$DW$566	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$566, DW_AT_name("XBAR_OUT_MUX10_CMPSS6_CTRIPOUTH")
	.dwattr $C$DW$566, DW_AT_const_value(0x1400)
	.dwattr $C$DW$566, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$566, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$566, DW_AT_decl_column(0x05)

$C$DW$567	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$567, DW_AT_name("XBAR_OUT_MUX10_CMPSS6_CTRIPOUTH_OR_L")
	.dwattr $C$DW$567, DW_AT_const_value(0x1401)
	.dwattr $C$DW$567, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$567, DW_AT_decl_line(0x110)
	.dwattr $C$DW$567, DW_AT_decl_column(0x05)

$C$DW$568	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$568, DW_AT_name("XBAR_OUT_MUX10_ADCBEVT2")
	.dwattr $C$DW$568, DW_AT_const_value(0x1402)
	.dwattr $C$DW$568, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$568, DW_AT_decl_line(0x111)
	.dwattr $C$DW$568, DW_AT_decl_column(0x05)

$C$DW$569	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$569, DW_AT_name("XBAR_OUT_MUX10_ECAP6_OUT")
	.dwattr $C$DW$569, DW_AT_const_value(0x1403)
	.dwattr $C$DW$569, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$569, DW_AT_decl_line(0x112)
	.dwattr $C$DW$569, DW_AT_decl_column(0x05)

$C$DW$570	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$570, DW_AT_name("XBAR_OUT_MUX11_CMPSS6_CTRIPOUTL")
	.dwattr $C$DW$570, DW_AT_const_value(0x1600)
	.dwattr $C$DW$570, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$570, DW_AT_decl_line(0x113)
	.dwattr $C$DW$570, DW_AT_decl_column(0x05)

$C$DW$571	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$571, DW_AT_name("XBAR_OUT_MUX11_INPUTXBAR6")
	.dwattr $C$DW$571, DW_AT_const_value(0x1601)
	.dwattr $C$DW$571, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$571, DW_AT_decl_line(0x114)
	.dwattr $C$DW$571, DW_AT_decl_column(0x05)

$C$DW$572	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$572, DW_AT_name("XBAR_OUT_MUX11_CLB3_OUT5")
	.dwattr $C$DW$572, DW_AT_const_value(0x1602)
	.dwattr $C$DW$572, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$572, DW_AT_decl_line(0x115)
	.dwattr $C$DW$572, DW_AT_decl_column(0x05)

$C$DW$573	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$573, DW_AT_name("XBAR_OUT_MUX11_ADCDEVT2")
	.dwattr $C$DW$573, DW_AT_const_value(0x1603)
	.dwattr $C$DW$573, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$573, DW_AT_decl_line(0x116)
	.dwattr $C$DW$573, DW_AT_decl_column(0x05)

$C$DW$574	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$574, DW_AT_name("XBAR_OUT_MUX12_CMPSS7_CTRIPOUTH")
	.dwattr $C$DW$574, DW_AT_const_value(0x1800)
	.dwattr $C$DW$574, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$574, DW_AT_decl_line(0x117)
	.dwattr $C$DW$574, DW_AT_decl_column(0x05)

$C$DW$575	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$575, DW_AT_name("XBAR_OUT_MUX12_CMPSS7_CTRIPOUTH_OR_L")
	.dwattr $C$DW$575, DW_AT_const_value(0x1801)
	.dwattr $C$DW$575, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$575, DW_AT_decl_line(0x118)
	.dwattr $C$DW$575, DW_AT_decl_column(0x05)

$C$DW$576	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$576, DW_AT_name("XBAR_OUT_MUX12_ADCBEVT3")
	.dwattr $C$DW$576, DW_AT_const_value(0x1802)
	.dwattr $C$DW$576, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$576, DW_AT_decl_line(0x119)
	.dwattr $C$DW$576, DW_AT_decl_column(0x05)

$C$DW$577	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$577, DW_AT_name("XBAR_OUT_MUX13_CMPSS7_CTRIPOUTL")
	.dwattr $C$DW$577, DW_AT_const_value(0x1a00)
	.dwattr $C$DW$577, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$577, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$577, DW_AT_decl_column(0x05)

$C$DW$578	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$578, DW_AT_name("XBAR_OUT_MUX13_ADCSOCA")
	.dwattr $C$DW$578, DW_AT_const_value(0x1a01)
	.dwattr $C$DW$578, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$578, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$578, DW_AT_decl_column(0x05)

$C$DW$579	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$579, DW_AT_name("XBAR_OUT_MUX13_CLB4_OUT4")
	.dwattr $C$DW$579, DW_AT_const_value(0x1a02)
	.dwattr $C$DW$579, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$579, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$579, DW_AT_decl_column(0x05)

$C$DW$580	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$580, DW_AT_name("XBAR_OUT_MUX13_ADCDEVT3")
	.dwattr $C$DW$580, DW_AT_const_value(0x1a03)
	.dwattr $C$DW$580, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$580, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$580, DW_AT_decl_column(0x05)

$C$DW$581	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$581, DW_AT_name("XBAR_OUT_MUX14_CMPSS8_CTRIPOUTH")
	.dwattr $C$DW$581, DW_AT_const_value(0x1c00)
	.dwattr $C$DW$581, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$581, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$581, DW_AT_decl_column(0x05)

$C$DW$582	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$582, DW_AT_name("XBAR_OUT_MUX14_CMPSS8_CTRIPOUTH_OR_L")
	.dwattr $C$DW$582, DW_AT_const_value(0x1c01)
	.dwattr $C$DW$582, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$582, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$582, DW_AT_decl_column(0x05)

$C$DW$583	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$583, DW_AT_name("XBAR_OUT_MUX14_ADCBEVT4")
	.dwattr $C$DW$583, DW_AT_const_value(0x1c02)
	.dwattr $C$DW$583, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$583, DW_AT_decl_line(0x120)
	.dwattr $C$DW$583, DW_AT_decl_column(0x05)

$C$DW$584	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$584, DW_AT_name("XBAR_OUT_MUX14_EXTSYNCOUT")
	.dwattr $C$DW$584, DW_AT_const_value(0x1c03)
	.dwattr $C$DW$584, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$584, DW_AT_decl_line(0x121)
	.dwattr $C$DW$584, DW_AT_decl_column(0x05)

$C$DW$585	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$585, DW_AT_name("XBAR_OUT_MUX15_CMPSS8_CTRIPOUTL")
	.dwattr $C$DW$585, DW_AT_const_value(0x1e00)
	.dwattr $C$DW$585, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$585, DW_AT_decl_line(0x122)
	.dwattr $C$DW$585, DW_AT_decl_column(0x05)

$C$DW$586	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$586, DW_AT_name("XBAR_OUT_MUX15_ADCSOCB")
	.dwattr $C$DW$586, DW_AT_const_value(0x1e01)
	.dwattr $C$DW$586, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$586, DW_AT_decl_line(0x123)
	.dwattr $C$DW$586, DW_AT_decl_column(0x05)

$C$DW$587	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$587, DW_AT_name("XBAR_OUT_MUX15_CLB4_OUT5")
	.dwattr $C$DW$587, DW_AT_const_value(0x1e02)
	.dwattr $C$DW$587, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$587, DW_AT_decl_line(0x124)
	.dwattr $C$DW$587, DW_AT_decl_column(0x05)

$C$DW$588	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$588, DW_AT_name("XBAR_OUT_MUX15_ADCDEVT4")
	.dwattr $C$DW$588, DW_AT_const_value(0x1e03)
	.dwattr $C$DW$588, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$588, DW_AT_decl_line(0x125)
	.dwattr $C$DW$588, DW_AT_decl_column(0x05)

$C$DW$589	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$589, DW_AT_name("XBAR_OUT_MUX16_SD1FLT1_COMPH")
	.dwattr $C$DW$589, DW_AT_const_value(0x2000)
	.dwattr $C$DW$589, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$589, DW_AT_decl_line(0x126)
	.dwattr $C$DW$589, DW_AT_decl_column(0x05)

$C$DW$590	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$590, DW_AT_name("XBAR_OUT_MUX16_SD1FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$590, DW_AT_const_value(0x2001)
	.dwattr $C$DW$590, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$590, DW_AT_decl_line(0x127)
	.dwattr $C$DW$590, DW_AT_decl_column(0x05)

$C$DW$591	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$591, DW_AT_name("XBAR_OUT_MUX17_SD1FLT1_COMPL")
	.dwattr $C$DW$591, DW_AT_const_value(0x2200)
	.dwattr $C$DW$591, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$591, DW_AT_decl_line(0x128)
	.dwattr $C$DW$591, DW_AT_decl_column(0x05)

$C$DW$592	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$592, DW_AT_name("XBAR_OUT_MUX18_SD1FLT2_COMPH")
	.dwattr $C$DW$592, DW_AT_const_value(0x2400)
	.dwattr $C$DW$592, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$592, DW_AT_decl_line(0x129)
	.dwattr $C$DW$592, DW_AT_decl_column(0x05)

$C$DW$593	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$593, DW_AT_name("XBAR_OUT_MUX18_SD1FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$593, DW_AT_const_value(0x2401)
	.dwattr $C$DW$593, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$593, DW_AT_decl_column(0x05)

$C$DW$594	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$594, DW_AT_name("XBAR_OUT_MUX19_SD1FLT2_COMPL")
	.dwattr $C$DW$594, DW_AT_const_value(0x2600)
	.dwattr $C$DW$594, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0x12b)
	.dwattr $C$DW$594, DW_AT_decl_column(0x05)

$C$DW$595	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$595, DW_AT_name("XBAR_OUT_MUX20_SD1FLT3_COMPH")
	.dwattr $C$DW$595, DW_AT_const_value(0x2800)
	.dwattr $C$DW$595, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$595, DW_AT_decl_column(0x05)

$C$DW$596	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$596, DW_AT_name("XBAR_OUT_MUX20_SD1FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$596, DW_AT_const_value(0x2801)
	.dwattr $C$DW$596, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$596, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$596, DW_AT_decl_column(0x05)

$C$DW$597	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$597, DW_AT_name("XBAR_OUT_MUX21_SD1FLT3_COMPL")
	.dwattr $C$DW$597, DW_AT_const_value(0x2a00)
	.dwattr $C$DW$597, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$597, DW_AT_decl_column(0x05)

$C$DW$598	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$598, DW_AT_name("XBAR_OUT_MUX22_SD1FLT4_COMPH")
	.dwattr $C$DW$598, DW_AT_const_value(0x2c00)
	.dwattr $C$DW$598, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$598, DW_AT_decl_column(0x05)

$C$DW$599	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$599, DW_AT_name("XBAR_OUT_MUX22_SD1FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$599, DW_AT_const_value(0x2c01)
	.dwattr $C$DW$599, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0x130)
	.dwattr $C$DW$599, DW_AT_decl_column(0x05)

$C$DW$600	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$600, DW_AT_name("XBAR_OUT_MUX23_SD1FLT4_COMPL")
	.dwattr $C$DW$600, DW_AT_const_value(0x2e00)
	.dwattr $C$DW$600, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$600, DW_AT_decl_line(0x131)
	.dwattr $C$DW$600, DW_AT_decl_column(0x05)

$C$DW$601	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$601, DW_AT_name("XBAR_OUT_MUX24_SD2FLT1_COMPH")
	.dwattr $C$DW$601, DW_AT_const_value(0x3000)
	.dwattr $C$DW$601, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0x132)
	.dwattr $C$DW$601, DW_AT_decl_column(0x05)

$C$DW$602	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$602, DW_AT_name("XBAR_OUT_MUX24_SD2FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$602, DW_AT_const_value(0x3001)
	.dwattr $C$DW$602, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$602, DW_AT_decl_line(0x133)
	.dwattr $C$DW$602, DW_AT_decl_column(0x05)

$C$DW$603	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$603, DW_AT_name("XBAR_OUT_MUX25_SD2FLT1_COMPL")
	.dwattr $C$DW$603, DW_AT_const_value(0x3200)
	.dwattr $C$DW$603, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$603, DW_AT_decl_line(0x134)
	.dwattr $C$DW$603, DW_AT_decl_column(0x05)

$C$DW$604	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$604, DW_AT_name("XBAR_OUT_MUX26_SD2FLT2_COMPH")
	.dwattr $C$DW$604, DW_AT_const_value(0x3400)
	.dwattr $C$DW$604, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$604, DW_AT_decl_line(0x135)
	.dwattr $C$DW$604, DW_AT_decl_column(0x05)

$C$DW$605	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$605, DW_AT_name("XBAR_OUT_MUX26_SD2FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$605, DW_AT_const_value(0x3401)
	.dwattr $C$DW$605, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$605, DW_AT_decl_line(0x136)
	.dwattr $C$DW$605, DW_AT_decl_column(0x05)

$C$DW$606	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$606, DW_AT_name("XBAR_OUT_MUX27_SD2FLT2_COMPL")
	.dwattr $C$DW$606, DW_AT_const_value(0x3600)
	.dwattr $C$DW$606, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$606, DW_AT_decl_line(0x137)
	.dwattr $C$DW$606, DW_AT_decl_column(0x05)

$C$DW$607	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$607, DW_AT_name("XBAR_OUT_MUX28_SD2FLT3_COMPH")
	.dwattr $C$DW$607, DW_AT_const_value(0x3800)
	.dwattr $C$DW$607, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$607, DW_AT_decl_line(0x138)
	.dwattr $C$DW$607, DW_AT_decl_column(0x05)

$C$DW$608	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$608, DW_AT_name("XBAR_OUT_MUX28_SD2FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$608, DW_AT_const_value(0x3801)
	.dwattr $C$DW$608, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$608, DW_AT_decl_line(0x139)
	.dwattr $C$DW$608, DW_AT_decl_column(0x05)

$C$DW$609	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$609, DW_AT_name("XBAR_OUT_MUX29_SD2FLT3_COMPL")
	.dwattr $C$DW$609, DW_AT_const_value(0x3a00)
	.dwattr $C$DW$609, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$609, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$609, DW_AT_decl_column(0x05)

$C$DW$610	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$610, DW_AT_name("XBAR_OUT_MUX30_SD2FLT4_COMPH")
	.dwattr $C$DW$610, DW_AT_const_value(0x3c00)
	.dwattr $C$DW$610, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$610, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$610, DW_AT_decl_column(0x05)

$C$DW$611	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$611, DW_AT_name("XBAR_OUT_MUX30_SD2FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$611, DW_AT_const_value(0x3c01)
	.dwattr $C$DW$611, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$611, DW_AT_decl_line(0x13c)
	.dwattr $C$DW$611, DW_AT_decl_column(0x05)

$C$DW$612	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$612, DW_AT_name("XBAR_OUT_MUX31_SD2FLT4_COMPL")
	.dwattr $C$DW$612, DW_AT_const_value(0x3e00)
	.dwattr $C$DW$612, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$612, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$612, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$89, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$89

	.dwendtag $C$DW$TU$89


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90
$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("XBAR_OutputMuxConfig")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$90


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91

$C$DW$T$91	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x01)
$C$DW$613	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$613, DW_AT_name("XBAR_EPWM_MUX00_CMPSS1_CTRIPH")
	.dwattr $C$DW$613, DW_AT_const_value(0x00)
	.dwattr $C$DW$613, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$613, DW_AT_decl_line(0x149)
	.dwattr $C$DW$613, DW_AT_decl_column(0x05)

$C$DW$614	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$614, DW_AT_name("XBAR_EPWM_MUX00_CMPSS1_CTRIPH_OR_L")
	.dwattr $C$DW$614, DW_AT_const_value(0x01)
	.dwattr $C$DW$614, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$614, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$614, DW_AT_decl_column(0x05)

$C$DW$615	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$615, DW_AT_name("XBAR_EPWM_MUX00_ADCAEVT1")
	.dwattr $C$DW$615, DW_AT_const_value(0x02)
	.dwattr $C$DW$615, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$615, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$615, DW_AT_decl_column(0x05)

$C$DW$616	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$616, DW_AT_name("XBAR_EPWM_MUX00_ECAP1_OUT")
	.dwattr $C$DW$616, DW_AT_const_value(0x03)
	.dwattr $C$DW$616, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$616, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$616, DW_AT_decl_column(0x05)

$C$DW$617	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$617, DW_AT_name("XBAR_EPWM_MUX01_CMPSS1_CTRIPL")
	.dwattr $C$DW$617, DW_AT_const_value(0x200)
	.dwattr $C$DW$617, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$617, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$617, DW_AT_decl_column(0x05)

$C$DW$618	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$618, DW_AT_name("XBAR_EPWM_MUX01_INPUTXBAR1")
	.dwattr $C$DW$618, DW_AT_const_value(0x201)
	.dwattr $C$DW$618, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$618, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$618, DW_AT_decl_column(0x05)

$C$DW$619	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$619, DW_AT_name("XBAR_EPWM_MUX01_CLB1_OUT4")
	.dwattr $C$DW$619, DW_AT_const_value(0x202)
	.dwattr $C$DW$619, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$619, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$619, DW_AT_decl_column(0x05)

$C$DW$620	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$620, DW_AT_name("XBAR_EPWM_MUX01_ADCCEVT1")
	.dwattr $C$DW$620, DW_AT_const_value(0x203)
	.dwattr $C$DW$620, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$620, DW_AT_decl_line(0x150)
	.dwattr $C$DW$620, DW_AT_decl_column(0x05)

$C$DW$621	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$621, DW_AT_name("XBAR_EPWM_MUX02_CMPSS2_CTRIPH")
	.dwattr $C$DW$621, DW_AT_const_value(0x400)
	.dwattr $C$DW$621, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$621, DW_AT_decl_line(0x151)
	.dwattr $C$DW$621, DW_AT_decl_column(0x05)

$C$DW$622	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$622, DW_AT_name("XBAR_EPWM_MUX02_CMPSS2_CTRIPH_OR_L")
	.dwattr $C$DW$622, DW_AT_const_value(0x401)
	.dwattr $C$DW$622, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$622, DW_AT_decl_line(0x152)
	.dwattr $C$DW$622, DW_AT_decl_column(0x05)

$C$DW$623	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$623, DW_AT_name("XBAR_EPWM_MUX02_ADCAEVT2")
	.dwattr $C$DW$623, DW_AT_const_value(0x402)
	.dwattr $C$DW$623, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$623, DW_AT_decl_line(0x153)
	.dwattr $C$DW$623, DW_AT_decl_column(0x05)

$C$DW$624	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$624, DW_AT_name("XBAR_EPWM_MUX02_ECAP2_OUT")
	.dwattr $C$DW$624, DW_AT_const_value(0x403)
	.dwattr $C$DW$624, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$624, DW_AT_decl_line(0x154)
	.dwattr $C$DW$624, DW_AT_decl_column(0x05)

$C$DW$625	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$625, DW_AT_name("XBAR_EPWM_MUX03_CMPSS2_CTRIPL")
	.dwattr $C$DW$625, DW_AT_const_value(0x600)
	.dwattr $C$DW$625, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$625, DW_AT_decl_line(0x155)
	.dwattr $C$DW$625, DW_AT_decl_column(0x05)

$C$DW$626	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$626, DW_AT_name("XBAR_EPWM_MUX03_INPUTXBAR2")
	.dwattr $C$DW$626, DW_AT_const_value(0x601)
	.dwattr $C$DW$626, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$626, DW_AT_decl_line(0x156)
	.dwattr $C$DW$626, DW_AT_decl_column(0x05)

$C$DW$627	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$627, DW_AT_name("XBAR_EPWM_MUX03_CLB1_OUT5")
	.dwattr $C$DW$627, DW_AT_const_value(0x602)
	.dwattr $C$DW$627, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$627, DW_AT_decl_line(0x157)
	.dwattr $C$DW$627, DW_AT_decl_column(0x05)

$C$DW$628	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$628, DW_AT_name("XBAR_EPWM_MUX03_ADCCEVT2")
	.dwattr $C$DW$628, DW_AT_const_value(0x603)
	.dwattr $C$DW$628, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$628, DW_AT_decl_line(0x158)
	.dwattr $C$DW$628, DW_AT_decl_column(0x05)

$C$DW$629	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$629, DW_AT_name("XBAR_EPWM_MUX04_CMPSS3_CTRIPH")
	.dwattr $C$DW$629, DW_AT_const_value(0x800)
	.dwattr $C$DW$629, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$629, DW_AT_decl_line(0x159)
	.dwattr $C$DW$629, DW_AT_decl_column(0x05)

$C$DW$630	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$630, DW_AT_name("XBAR_EPWM_MUX04_CMPSS3_CTRIPH_OR_L")
	.dwattr $C$DW$630, DW_AT_const_value(0x801)
	.dwattr $C$DW$630, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$630, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$630, DW_AT_decl_column(0x05)

$C$DW$631	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$631, DW_AT_name("XBAR_EPWM_MUX04_ADCAEVT3")
	.dwattr $C$DW$631, DW_AT_const_value(0x802)
	.dwattr $C$DW$631, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$631, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$631, DW_AT_decl_column(0x05)

$C$DW$632	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$632, DW_AT_name("XBAR_EPWM_MUX04_ECAP3_OUT")
	.dwattr $C$DW$632, DW_AT_const_value(0x803)
	.dwattr $C$DW$632, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$632, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$632, DW_AT_decl_column(0x05)

$C$DW$633	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$633, DW_AT_name("XBAR_EPWM_MUX05_CMPSS3_CTRIPL")
	.dwattr $C$DW$633, DW_AT_const_value(0xa00)
	.dwattr $C$DW$633, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$633, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$633, DW_AT_decl_column(0x05)

$C$DW$634	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$634, DW_AT_name("XBAR_EPWM_MUX05_INPUTXBAR3")
	.dwattr $C$DW$634, DW_AT_const_value(0xa01)
	.dwattr $C$DW$634, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$634, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$634, DW_AT_decl_column(0x05)

$C$DW$635	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$635, DW_AT_name("XBAR_EPWM_MUX05_CLB2_OUT4")
	.dwattr $C$DW$635, DW_AT_const_value(0xa02)
	.dwattr $C$DW$635, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$635, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$635, DW_AT_decl_column(0x05)

$C$DW$636	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$636, DW_AT_name("XBAR_EPWM_MUX05_ADCCEVT3")
	.dwattr $C$DW$636, DW_AT_const_value(0xa03)
	.dwattr $C$DW$636, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$636, DW_AT_decl_line(0x160)
	.dwattr $C$DW$636, DW_AT_decl_column(0x05)

$C$DW$637	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$637, DW_AT_name("XBAR_EPWM_MUX06_CMPSS4_CTRIPH")
	.dwattr $C$DW$637, DW_AT_const_value(0xc00)
	.dwattr $C$DW$637, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$637, DW_AT_decl_line(0x161)
	.dwattr $C$DW$637, DW_AT_decl_column(0x05)

$C$DW$638	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$638, DW_AT_name("XBAR_EPWM_MUX06_CMPSS4_CTRIPH_OR_L")
	.dwattr $C$DW$638, DW_AT_const_value(0xc01)
	.dwattr $C$DW$638, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$638, DW_AT_decl_line(0x162)
	.dwattr $C$DW$638, DW_AT_decl_column(0x05)

$C$DW$639	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$639, DW_AT_name("XBAR_EPWM_MUX06_ADCAEVT4")
	.dwattr $C$DW$639, DW_AT_const_value(0xc02)
	.dwattr $C$DW$639, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$639, DW_AT_decl_line(0x163)
	.dwattr $C$DW$639, DW_AT_decl_column(0x05)

$C$DW$640	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$640, DW_AT_name("XBAR_EPWM_MUX06_ECAP4_OUT")
	.dwattr $C$DW$640, DW_AT_const_value(0xc03)
	.dwattr $C$DW$640, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$640, DW_AT_decl_line(0x164)
	.dwattr $C$DW$640, DW_AT_decl_column(0x05)

$C$DW$641	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$641, DW_AT_name("XBAR_EPWM_MUX07_CMPSS4_CTRIPL")
	.dwattr $C$DW$641, DW_AT_const_value(0xe00)
	.dwattr $C$DW$641, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$641, DW_AT_decl_line(0x165)
	.dwattr $C$DW$641, DW_AT_decl_column(0x05)

$C$DW$642	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$642, DW_AT_name("XBAR_EPWM_MUX07_INPUTXBAR4")
	.dwattr $C$DW$642, DW_AT_const_value(0xe01)
	.dwattr $C$DW$642, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$642, DW_AT_decl_line(0x166)
	.dwattr $C$DW$642, DW_AT_decl_column(0x05)

$C$DW$643	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$643, DW_AT_name("XBAR_EPWM_MUX07_CLB2_OUT5")
	.dwattr $C$DW$643, DW_AT_const_value(0xe02)
	.dwattr $C$DW$643, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$643, DW_AT_decl_line(0x167)
	.dwattr $C$DW$643, DW_AT_decl_column(0x05)

$C$DW$644	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$644, DW_AT_name("XBAR_EPWM_MUX07_ADCCEVT4")
	.dwattr $C$DW$644, DW_AT_const_value(0xe03)
	.dwattr $C$DW$644, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$644, DW_AT_decl_line(0x168)
	.dwattr $C$DW$644, DW_AT_decl_column(0x05)

$C$DW$645	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$645, DW_AT_name("XBAR_EPWM_MUX08_CMPSS5_CTRIPH")
	.dwattr $C$DW$645, DW_AT_const_value(0x1000)
	.dwattr $C$DW$645, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$645, DW_AT_decl_line(0x169)
	.dwattr $C$DW$645, DW_AT_decl_column(0x05)

$C$DW$646	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$646, DW_AT_name("XBAR_EPWM_MUX08_CMPSS5_CTRIPH_OR_L")
	.dwattr $C$DW$646, DW_AT_const_value(0x1001)
	.dwattr $C$DW$646, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$646, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$646, DW_AT_decl_column(0x05)

$C$DW$647	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$647, DW_AT_name("XBAR_EPWM_MUX08_ADCBEVT1")
	.dwattr $C$DW$647, DW_AT_const_value(0x1002)
	.dwattr $C$DW$647, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$647, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$647, DW_AT_decl_column(0x05)

$C$DW$648	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$648, DW_AT_name("XBAR_EPWM_MUX08_ECAP5_OUT")
	.dwattr $C$DW$648, DW_AT_const_value(0x1003)
	.dwattr $C$DW$648, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$648, DW_AT_decl_column(0x05)

$C$DW$649	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$649, DW_AT_name("XBAR_EPWM_MUX09_CMPSS5_CTRIPL")
	.dwattr $C$DW$649, DW_AT_const_value(0x1200)
	.dwattr $C$DW$649, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$649, DW_AT_decl_column(0x05)

$C$DW$650	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$650, DW_AT_name("XBAR_EPWM_MUX09_INPUTXBAR5")
	.dwattr $C$DW$650, DW_AT_const_value(0x1201)
	.dwattr $C$DW$650, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$650, DW_AT_decl_column(0x05)

$C$DW$651	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$651, DW_AT_name("XBAR_EPWM_MUX09_CLB3_OUT4")
	.dwattr $C$DW$651, DW_AT_const_value(0x1202)
	.dwattr $C$DW$651, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$651, DW_AT_decl_column(0x05)

$C$DW$652	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$652, DW_AT_name("XBAR_EPWM_MUX09_ADCDEVT1")
	.dwattr $C$DW$652, DW_AT_const_value(0x1203)
	.dwattr $C$DW$652, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$652, DW_AT_decl_line(0x170)
	.dwattr $C$DW$652, DW_AT_decl_column(0x05)

$C$DW$653	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$653, DW_AT_name("XBAR_EPWM_MUX10_CMPSS6_CTRIPH")
	.dwattr $C$DW$653, DW_AT_const_value(0x1400)
	.dwattr $C$DW$653, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0x171)
	.dwattr $C$DW$653, DW_AT_decl_column(0x05)

$C$DW$654	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$654, DW_AT_name("XBAR_EPWM_MUX10_CMPSS6_CTRIPH_OR_L")
	.dwattr $C$DW$654, DW_AT_const_value(0x1401)
	.dwattr $C$DW$654, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0x172)
	.dwattr $C$DW$654, DW_AT_decl_column(0x05)

$C$DW$655	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$655, DW_AT_name("XBAR_EPWM_MUX10_ADCBEVT2")
	.dwattr $C$DW$655, DW_AT_const_value(0x1402)
	.dwattr $C$DW$655, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$655, DW_AT_decl_line(0x173)
	.dwattr $C$DW$655, DW_AT_decl_column(0x05)

$C$DW$656	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$656, DW_AT_name("XBAR_EPWM_MUX10_ECAP6_OUT")
	.dwattr $C$DW$656, DW_AT_const_value(0x1403)
	.dwattr $C$DW$656, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$656, DW_AT_decl_line(0x174)
	.dwattr $C$DW$656, DW_AT_decl_column(0x05)

$C$DW$657	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$657, DW_AT_name("XBAR_EPWM_MUX11_CMPSS6_CTRIPL")
	.dwattr $C$DW$657, DW_AT_const_value(0x1600)
	.dwattr $C$DW$657, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0x175)
	.dwattr $C$DW$657, DW_AT_decl_column(0x05)

$C$DW$658	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$658, DW_AT_name("XBAR_EPWM_MUX11_INPUTXBAR6")
	.dwattr $C$DW$658, DW_AT_const_value(0x1601)
	.dwattr $C$DW$658, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$658, DW_AT_decl_line(0x176)
	.dwattr $C$DW$658, DW_AT_decl_column(0x05)

$C$DW$659	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$659, DW_AT_name("XBAR_EPWM_MUX11_CLB3_OUT5")
	.dwattr $C$DW$659, DW_AT_const_value(0x1602)
	.dwattr $C$DW$659, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0x177)
	.dwattr $C$DW$659, DW_AT_decl_column(0x05)

$C$DW$660	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$660, DW_AT_name("XBAR_EPWM_MUX11_ADCDEVT2")
	.dwattr $C$DW$660, DW_AT_const_value(0x1603)
	.dwattr $C$DW$660, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0x178)
	.dwattr $C$DW$660, DW_AT_decl_column(0x05)

$C$DW$661	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$661, DW_AT_name("XBAR_EPWM_MUX12_CMPSS7_CTRIPH")
	.dwattr $C$DW$661, DW_AT_const_value(0x1800)
	.dwattr $C$DW$661, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0x179)
	.dwattr $C$DW$661, DW_AT_decl_column(0x05)

$C$DW$662	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$662, DW_AT_name("XBAR_EPWM_MUX12_CMPSS7_CTRIPH_OR_L")
	.dwattr $C$DW$662, DW_AT_const_value(0x1801)
	.dwattr $C$DW$662, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$662, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$662, DW_AT_decl_column(0x05)

$C$DW$663	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$663, DW_AT_name("XBAR_EPWM_MUX12_ADCBEVT3")
	.dwattr $C$DW$663, DW_AT_const_value(0x1802)
	.dwattr $C$DW$663, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$663, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$663, DW_AT_decl_column(0x05)

$C$DW$664	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$664, DW_AT_name("XBAR_EPWM_MUX13_CMPSS7_CTRIPL")
	.dwattr $C$DW$664, DW_AT_const_value(0x1a00)
	.dwattr $C$DW$664, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$664, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$664, DW_AT_decl_column(0x05)

$C$DW$665	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$665, DW_AT_name("XBAR_EPWM_MUX13_ADCSOCA")
	.dwattr $C$DW$665, DW_AT_const_value(0x1a01)
	.dwattr $C$DW$665, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$665, DW_AT_decl_column(0x05)

$C$DW$666	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$666, DW_AT_name("XBAR_EPWM_MUX13_CLB4_OUT4")
	.dwattr $C$DW$666, DW_AT_const_value(0x1a02)
	.dwattr $C$DW$666, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$666, DW_AT_decl_column(0x05)

$C$DW$667	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$667, DW_AT_name("XBAR_EPWM_MUX13_ADCDEVT3")
	.dwattr $C$DW$667, DW_AT_const_value(0x1a03)
	.dwattr $C$DW$667, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$667, DW_AT_decl_column(0x05)

$C$DW$668	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$668, DW_AT_name("XBAR_EPWM_MUX14_CMPSS8_CTRIPH")
	.dwattr $C$DW$668, DW_AT_const_value(0x1c00)
	.dwattr $C$DW$668, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0x180)
	.dwattr $C$DW$668, DW_AT_decl_column(0x05)

$C$DW$669	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$669, DW_AT_name("XBAR_EPWM_MUX14_CMPSS8_CTRIPH_OR_L")
	.dwattr $C$DW$669, DW_AT_const_value(0x1c01)
	.dwattr $C$DW$669, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0x181)
	.dwattr $C$DW$669, DW_AT_decl_column(0x05)

$C$DW$670	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$670, DW_AT_name("XBAR_EPWM_MUX14_ADCBEVT4")
	.dwattr $C$DW$670, DW_AT_const_value(0x1c02)
	.dwattr $C$DW$670, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0x182)
	.dwattr $C$DW$670, DW_AT_decl_column(0x05)

$C$DW$671	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$671, DW_AT_name("XBAR_EPWM_MUX14_EXTSYNCOUT")
	.dwattr $C$DW$671, DW_AT_const_value(0x1c03)
	.dwattr $C$DW$671, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0x183)
	.dwattr $C$DW$671, DW_AT_decl_column(0x05)

$C$DW$672	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$672, DW_AT_name("XBAR_EPWM_MUX15_CMPSS8_CTRIPL")
	.dwattr $C$DW$672, DW_AT_const_value(0x1e00)
	.dwattr $C$DW$672, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0x184)
	.dwattr $C$DW$672, DW_AT_decl_column(0x05)

$C$DW$673	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$673, DW_AT_name("XBAR_EPWM_MUX15_ADCSOCB")
	.dwattr $C$DW$673, DW_AT_const_value(0x1e01)
	.dwattr $C$DW$673, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0x185)
	.dwattr $C$DW$673, DW_AT_decl_column(0x05)

$C$DW$674	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$674, DW_AT_name("XBAR_EPWM_MUX15_CLB4_OUT5")
	.dwattr $C$DW$674, DW_AT_const_value(0x1e02)
	.dwattr $C$DW$674, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0x186)
	.dwattr $C$DW$674, DW_AT_decl_column(0x05)

$C$DW$675	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$675, DW_AT_name("XBAR_EPWM_MUX15_ADCDEVT4")
	.dwattr $C$DW$675, DW_AT_const_value(0x1e03)
	.dwattr $C$DW$675, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0x187)
	.dwattr $C$DW$675, DW_AT_decl_column(0x05)

$C$DW$676	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$676, DW_AT_name("XBAR_EPWM_MUX16_SD1FLT1_COMPH")
	.dwattr $C$DW$676, DW_AT_const_value(0x2000)
	.dwattr $C$DW$676, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$676, DW_AT_decl_line(0x188)
	.dwattr $C$DW$676, DW_AT_decl_column(0x05)

$C$DW$677	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$677, DW_AT_name("XBAR_EPWM_MUX16_SD1FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$677, DW_AT_const_value(0x2001)
	.dwattr $C$DW$677, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0x189)
	.dwattr $C$DW$677, DW_AT_decl_column(0x05)

$C$DW$678	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$678, DW_AT_name("XBAR_EPWM_MUX17_SD1FLT1_COMPL")
	.dwattr $C$DW$678, DW_AT_const_value(0x2200)
	.dwattr $C$DW$678, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$678, DW_AT_decl_column(0x05)

$C$DW$679	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$679, DW_AT_name("XBAR_EPWM_MUX18_SD1FLT2_COMPH")
	.dwattr $C$DW$679, DW_AT_const_value(0x2400)
	.dwattr $C$DW$679, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$679, DW_AT_decl_column(0x05)

$C$DW$680	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$680, DW_AT_name("XBAR_EPWM_MUX18_SD1FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$680, DW_AT_const_value(0x2401)
	.dwattr $C$DW$680, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$680, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$680, DW_AT_decl_column(0x05)

$C$DW$681	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$681, DW_AT_name("XBAR_EPWM_MUX19_SD1FLT2_COMPL")
	.dwattr $C$DW$681, DW_AT_const_value(0x2600)
	.dwattr $C$DW$681, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$681, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$681, DW_AT_decl_column(0x05)

$C$DW$682	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$682, DW_AT_name("XBAR_EPWM_MUX20_SD1FLT3_COMPH")
	.dwattr $C$DW$682, DW_AT_const_value(0x2800)
	.dwattr $C$DW$682, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$682, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$682, DW_AT_decl_column(0x05)

$C$DW$683	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$683, DW_AT_name("XBAR_EPWM_MUX20_SD1FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$683, DW_AT_const_value(0x2801)
	.dwattr $C$DW$683, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$683, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$683, DW_AT_decl_column(0x05)

$C$DW$684	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$684, DW_AT_name("XBAR_EPWM_MUX21_SD1FLT3_COMPL")
	.dwattr $C$DW$684, DW_AT_const_value(0x2a00)
	.dwattr $C$DW$684, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$684, DW_AT_decl_line(0x190)
	.dwattr $C$DW$684, DW_AT_decl_column(0x05)

$C$DW$685	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$685, DW_AT_name("XBAR_EPWM_MUX22_SD1FLT4_COMPH")
	.dwattr $C$DW$685, DW_AT_const_value(0x2c00)
	.dwattr $C$DW$685, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$685, DW_AT_decl_line(0x191)
	.dwattr $C$DW$685, DW_AT_decl_column(0x05)

$C$DW$686	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$686, DW_AT_name("XBAR_EPWM_MUX22_SD1FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$686, DW_AT_const_value(0x2c01)
	.dwattr $C$DW$686, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$686, DW_AT_decl_line(0x192)
	.dwattr $C$DW$686, DW_AT_decl_column(0x05)

$C$DW$687	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$687, DW_AT_name("XBAR_EPWM_MUX23_SD1FLT4_COMPL")
	.dwattr $C$DW$687, DW_AT_const_value(0x2e00)
	.dwattr $C$DW$687, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$687, DW_AT_decl_line(0x193)
	.dwattr $C$DW$687, DW_AT_decl_column(0x05)

$C$DW$688	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$688, DW_AT_name("XBAR_EPWM_MUX24_SD2FLT1_COMPH")
	.dwattr $C$DW$688, DW_AT_const_value(0x3000)
	.dwattr $C$DW$688, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$688, DW_AT_decl_line(0x194)
	.dwattr $C$DW$688, DW_AT_decl_column(0x05)

$C$DW$689	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$689, DW_AT_name("XBAR_EPWM_MUX24_SD2FLT1_COMPH_OR_COMPL")
	.dwattr $C$DW$689, DW_AT_const_value(0x3001)
	.dwattr $C$DW$689, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$689, DW_AT_decl_line(0x195)
	.dwattr $C$DW$689, DW_AT_decl_column(0x05)

$C$DW$690	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$690, DW_AT_name("XBAR_EPWM_MUX25_SD2FLT1_COMPL")
	.dwattr $C$DW$690, DW_AT_const_value(0x3200)
	.dwattr $C$DW$690, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$690, DW_AT_decl_line(0x196)
	.dwattr $C$DW$690, DW_AT_decl_column(0x05)

$C$DW$691	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$691, DW_AT_name("XBAR_EPWM_MUX26_SD2FLT2_COMPH")
	.dwattr $C$DW$691, DW_AT_const_value(0x3400)
	.dwattr $C$DW$691, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$691, DW_AT_decl_line(0x197)
	.dwattr $C$DW$691, DW_AT_decl_column(0x05)

$C$DW$692	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$692, DW_AT_name("XBAR_EPWM_MUX26_SD2FLT2_COMPH_OR_COMPL")
	.dwattr $C$DW$692, DW_AT_const_value(0x3401)
	.dwattr $C$DW$692, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$692, DW_AT_decl_line(0x198)
	.dwattr $C$DW$692, DW_AT_decl_column(0x05)

$C$DW$693	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$693, DW_AT_name("XBAR_EPWM_MUX27_SD2FLT2_COMPL")
	.dwattr $C$DW$693, DW_AT_const_value(0x3600)
	.dwattr $C$DW$693, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$693, DW_AT_decl_line(0x199)
	.dwattr $C$DW$693, DW_AT_decl_column(0x05)

$C$DW$694	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$694, DW_AT_name("XBAR_EPWM_MUX28_SD2FLT3_COMPH")
	.dwattr $C$DW$694, DW_AT_const_value(0x3800)
	.dwattr $C$DW$694, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$694, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$694, DW_AT_decl_column(0x05)

$C$DW$695	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$695, DW_AT_name("XBAR_EPWM_MUX28_SD2FLT3_COMPH_OR_COMPL")
	.dwattr $C$DW$695, DW_AT_const_value(0x3801)
	.dwattr $C$DW$695, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$695, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$695, DW_AT_decl_column(0x05)

$C$DW$696	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$696, DW_AT_name("XBAR_EPWM_MUX29_SD2FLT3_COMPL")
	.dwattr $C$DW$696, DW_AT_const_value(0x3a00)
	.dwattr $C$DW$696, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$696, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$696, DW_AT_decl_column(0x05)

$C$DW$697	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$697, DW_AT_name("XBAR_EPWM_MUX30_SD2FLT4_COMPH")
	.dwattr $C$DW$697, DW_AT_const_value(0x3c00)
	.dwattr $C$DW$697, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$697, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$697, DW_AT_decl_column(0x05)

$C$DW$698	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$698, DW_AT_name("XBAR_EPWM_MUX30_SD2FLT4_COMPH_OR_COMPL")
	.dwattr $C$DW$698, DW_AT_const_value(0x3c01)
	.dwattr $C$DW$698, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$698, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$698, DW_AT_decl_column(0x05)

$C$DW$699	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$699, DW_AT_name("XBAR_EPWM_MUX31_SD2FLT4_COMPL")
	.dwattr $C$DW$699, DW_AT_const_value(0x3e00)
	.dwattr $C$DW$699, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$699, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$699, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$91, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x148)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$91

	.dwendtag $C$DW$TU$91


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92
$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("XBAR_EPWMMuxConfig")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\xbar.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$92


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93

$C$DW$T$93	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x01)
$C$DW$700	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$700, DW_AT_name("GPIO_DIR_MODE_IN")
	.dwattr $C$DW$700, DW_AT_const_value(0x00)
	.dwattr $C$DW$700, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$700, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$700, DW_AT_decl_column(0x05)

$C$DW$701	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$701, DW_AT_name("GPIO_DIR_MODE_OUT")
	.dwattr $C$DW$701, DW_AT_const_value(0x01)
	.dwattr $C$DW$701, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$701, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$701, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$93

	.dwendtag $C$DW$TU$93


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94
$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("GPIO_Direction")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$94


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95

$C$DW$T$95	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x01)
$C$DW$702	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$702, DW_AT_name("GPIO_QUAL_SYNC")
	.dwattr $C$DW$702, DW_AT_const_value(0x00)
	.dwattr $C$DW$702, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$702, DW_AT_decl_line(0x97)
	.dwattr $C$DW$702, DW_AT_decl_column(0x05)

$C$DW$703	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$703, DW_AT_name("GPIO_QUAL_3SAMPLE")
	.dwattr $C$DW$703, DW_AT_const_value(0x01)
	.dwattr $C$DW$703, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$703, DW_AT_decl_line(0x98)
	.dwattr $C$DW$703, DW_AT_decl_column(0x05)

$C$DW$704	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$704, DW_AT_name("GPIO_QUAL_6SAMPLE")
	.dwattr $C$DW$704, DW_AT_const_value(0x02)
	.dwattr $C$DW$704, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$704, DW_AT_decl_line(0x99)
	.dwattr $C$DW$704, DW_AT_decl_column(0x05)

$C$DW$705	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$705, DW_AT_name("GPIO_QUAL_ASYNC")
	.dwattr $C$DW$705, DW_AT_const_value(0x03)
	.dwattr $C$DW$705, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$705, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$705, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x96)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$95

	.dwendtag $C$DW$TU$95


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96
$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("GPIO_QualificationMode")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$96


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97

$C$DW$T$97	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x01)
$C$DW$706	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$706, DW_AT_name("SDFM_FILTER_1")
	.dwattr $C$DW$706, DW_AT_const_value(0x00)
	.dwattr $C$DW$706, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$706, DW_AT_decl_line(0x82)
	.dwattr $C$DW$706, DW_AT_decl_column(0x05)

$C$DW$707	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$707, DW_AT_name("SDFM_FILTER_2")
	.dwattr $C$DW$707, DW_AT_const_value(0x01)
	.dwattr $C$DW$707, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$707, DW_AT_decl_line(0x83)
	.dwattr $C$DW$707, DW_AT_decl_column(0x05)

$C$DW$708	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$708, DW_AT_name("SDFM_FILTER_3")
	.dwattr $C$DW$708, DW_AT_const_value(0x02)
	.dwattr $C$DW$708, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$708, DW_AT_decl_line(0x84)
	.dwattr $C$DW$708, DW_AT_decl_column(0x05)

$C$DW$709	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$709, DW_AT_name("SDFM_FILTER_4")
	.dwattr $C$DW$709, DW_AT_const_value(0x03)
	.dwattr $C$DW$709, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$709, DW_AT_decl_line(0x85)
	.dwattr $C$DW$709, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$97

	.dwendtag $C$DW$TU$97


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98
$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("SDFM_FilterNumber")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$98


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99

$C$DW$T$99	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x01)
$C$DW$710	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$710, DW_AT_name("SDFM_FILTER_SINC_FAST")
	.dwattr $C$DW$710, DW_AT_const_value(0x00)
	.dwattr $C$DW$710, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$710, DW_AT_decl_line(0x91)
	.dwattr $C$DW$710, DW_AT_decl_column(0x05)

$C$DW$711	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$711, DW_AT_name("SDFM_FILTER_SINC_1")
	.dwattr $C$DW$711, DW_AT_const_value(0x10)
	.dwattr $C$DW$711, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$711, DW_AT_decl_line(0x93)
	.dwattr $C$DW$711, DW_AT_decl_column(0x05)

$C$DW$712	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$712, DW_AT_name("SDFM_FILTER_SINC_2")
	.dwattr $C$DW$712, DW_AT_const_value(0x20)
	.dwattr $C$DW$712, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$712, DW_AT_decl_line(0x95)
	.dwattr $C$DW$712, DW_AT_decl_column(0x05)

$C$DW$713	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$713, DW_AT_name("SDFM_FILTER_SINC_3")
	.dwattr $C$DW$713, DW_AT_const_value(0x30)
	.dwattr $C$DW$713, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$713, DW_AT_decl_line(0x97)
	.dwattr $C$DW$713, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$99

	.dwendtag $C$DW$TU$99


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100
$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("SDFM_FilterType")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$100


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101

$C$DW$T$101	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x01)
$C$DW$714	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$714, DW_AT_name("SDFM_MODULATOR_CLK_EQUAL_DATA_RATE")
	.dwattr $C$DW$714, DW_AT_const_value(0x00)
	.dwattr $C$DW$714, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$714, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$714, DW_AT_decl_column(0x04)

$C$DW$715	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$715, DW_AT_name("SDFM_MODULATOR_CLK_HALF_DATA_RATE")
	.dwattr $C$DW$715, DW_AT_const_value(0x01)
	.dwattr $C$DW$715, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$715, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$715, DW_AT_decl_column(0x04)

$C$DW$716	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$716, DW_AT_name("SDFM_MODULATOR_CLK_OFF")
	.dwattr $C$DW$716, DW_AT_const_value(0x02)
	.dwattr $C$DW$716, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$716, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$716, DW_AT_decl_column(0x04)

$C$DW$717	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$717, DW_AT_name("SDFM_MODULATOR_CLK_DOUBLE_DATA_RATE")
	.dwattr $C$DW$717, DW_AT_const_value(0x03)
	.dwattr $C$DW$717, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$717, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$717, DW_AT_decl_column(0x04)

	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$101

	.dwendtag $C$DW$TU$101


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102
$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("SDFM_ModulatorClockMode")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$102


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103

$C$DW$T$103	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x01)
$C$DW$718	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$718, DW_AT_name("SDFM_DATA_FORMAT_16_BIT")
	.dwattr $C$DW$718, DW_AT_const_value(0x00)
	.dwattr $C$DW$718, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$718, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$718, DW_AT_decl_column(0x04)

$C$DW$719	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$719, DW_AT_name("SDFM_DATA_FORMAT_32_BIT")
	.dwattr $C$DW$719, DW_AT_const_value(0x01)
	.dwattr $C$DW$719, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$719, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$719, DW_AT_decl_column(0x04)

	.dwattr $C$DW$T$103, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$103

	.dwendtag $C$DW$TU$103


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104
$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("SDFM_OutputDataFormat")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/sdfm.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$104


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


$C$DW$TU$170	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$170
$C$DW$T$170	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$170, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$170, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$170, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$170, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$170, DW_AT_decl_column(0x1b)

	.dwendtag $C$DW$TU$170


$C$DW$TU$171	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$171
$C$DW$T$171	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$171, DW_AT_name("int16_t")
	.dwattr $C$DW$T$171, DW_AT_type(*$C$DW$T$170)
	.dwattr $C$DW$T$171, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$171, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$171, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$171


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


$C$DW$TU$119	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$119
$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$119, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x1b)

	.dwendtag $C$DW$TU$119


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120
$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$120, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$120


$C$DW$TU$176	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$176
$C$DW$720	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$120)

$C$DW$T$176	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$176, DW_AT_type(*$C$DW$720)

	.dwendtag $C$DW$TU$176


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


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107
$C$DW$T$107	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$107, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$107, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$107


$C$DW$TU$108	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$108
$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$108, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$108


$C$DW$TU$180	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$180
$C$DW$721	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$108)

$C$DW$T$180	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$180, DW_AT_type(*$C$DW$721)

	.dwendtag $C$DW$TU$180


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


$C$DW$TU$161	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$161
$C$DW$T$161	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$161, DW_AT_name("float32_t")
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$161, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\inc/hw_types.h")
	.dwattr $C$DW$T$161, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$161, DW_AT_decl_column(0x17)

	.dwendtag $C$DW$TU$161


$C$DW$TU$182	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$182
$C$DW$722	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$161)

$C$DW$T$182	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$182, DW_AT_type(*$C$DW$722)

	.dwendtag $C$DW$TU$182


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

