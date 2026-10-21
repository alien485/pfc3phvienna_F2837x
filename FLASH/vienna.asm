;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                             PC v25.11.1.LTS *
;* Date/Time created: Wed Oct 21 20:14:39 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../vienna.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v25.11.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\FLASH")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SFRA_F32_runBackgroundTask")
	.dwattr $C$DW$1, DW_AT_linkage_name("SFRA_F32_runBackgroundTask")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0d)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$52)

	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("SFRA_GUI_runSerialHostComms")
	.dwattr $C$DW$3, DW_AT_linkage_name("SFRA_GUI_runSerialHostComms")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("..\sfra_gui_scicomms_driverlib.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$3, DW_AT_decl_column(0x06)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$52)

	.dwendtag $C$DW$3


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("SFRA_F32_reset")
	.dwattr $C$DW$5, DW_AT_linkage_name("SFRA_F32_reset")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x59)
	.dwattr $C$DW$5, DW_AT_decl_column(0x0d)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$52)

	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("SFRA_F32_config")
	.dwattr $C$DW$7, DW_AT_linkage_name("SFRA_F32_config")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$7, DW_AT_decl_column(0x0d)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$52)

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$19)

$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$19)

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$22)

$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$19)

$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$19)

$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$20)

$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$20)

$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$20)

$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$20)

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$20)

$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$20)

$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$20)

$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$22)

	.dwendtag $C$DW$7


$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("SFRA_F32_resetFreqRespArray")
	.dwattr $C$DW$22, DW_AT_linkage_name("SFRA_F32_resetFreqRespArray")
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x88)
	.dwattr $C$DW$22, DW_AT_decl_column(0x0d)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$52)

	.dwendtag $C$DW$22


$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("SFRA_F32_initFreqArrayWithLogSteps")
	.dwattr $C$DW$24, DW_AT_linkage_name("SFRA_F32_initFreqArrayWithLogSteps")
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x80)
	.dwattr $C$DW$24, DW_AT_decl_column(0x0d)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$52)

$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)

$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$24


$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("SFRA_GUI_config")
	.dwattr $C$DW$28, DW_AT_linkage_name("SFRA_GUI_config")
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("..\sfra_gui_scicomms_driverlib.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$28, DW_AT_decl_column(0x06)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$72)

$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$35)

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$35)

$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$74)

$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$35)

$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$74)

$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$35)

$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$74)

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$74)

$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$35)

$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$52)

$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$74)

	.dwendtag $C$DW$28

	.global	||VIENNA_fcsSwitchState||
||VIENNA_fcsSwitchState||:	.usect	"controlVariables:uninit",1,1,0
$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("VIENNA_fcsSwitchState")
	.dwattr $C$DW$41, DW_AT_linkage_name("VIENNA_fcsSwitchState")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_addr ||VIENNA_fcsSwitchState||]
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$41, DW_AT_decl_line(0x25)
	.dwattr $C$DW$41, DW_AT_decl_column(0x13)

	.global	||VIENNA_fcsOffReady||
||VIENNA_fcsOffReady||:	.usect	"controlVariables:uninit",1,1,0
$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("VIENNA_fcsOffReady")
	.dwattr $C$DW$42, DW_AT_linkage_name("VIENNA_fcsOffReady")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_addr ||VIENNA_fcsOffReady||]
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$42, DW_AT_decl_line(0x25)
	.dwattr $C$DW$42, DW_AT_decl_column(0x2a)

	.global	||VIENNA_nonLinearVoltageLoopFlag||
||VIENNA_nonLinearVoltageLoopFlag||:	.usect	"controlVariables:uninit",1,1,0
$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("VIENNA_nonLinearVoltageLoopFlag")
	.dwattr $C$DW$43, DW_AT_linkage_name("VIENNA_nonLinearVoltageLoopFlag")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_addr ||VIENNA_nonLinearVoltageLoopFlag||]
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$43, DW_AT_decl_line(0x35)
	.dwattr $C$DW$43, DW_AT_decl_column(0x13)

	.global	||VIENNA_guiPowerStageStart||
||VIENNA_guiPowerStageStart||:	.usect	"controlVariables:uninit",1,1,0
$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("VIENNA_guiPowerStageStart")
	.dwattr $C$DW$44, DW_AT_linkage_name("VIENNA_guiPowerStageStart")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_addr ||VIENNA_guiPowerStageStart||]
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$44, DW_AT_decl_line(0x84)
	.dwattr $C$DW$44, DW_AT_decl_column(0x0a)

	.global	||VIENNA_guiPowerStageStop||
||VIENNA_guiPowerStageStop||:	.usect	"controlVariables:uninit",1,1,0
$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("VIENNA_guiPowerStageStop")
	.dwattr $C$DW$45, DW_AT_linkage_name("VIENNA_guiPowerStageStop")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_addr ||VIENNA_guiPowerStageStop||]
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$45, DW_AT_decl_line(0x85)
	.dwattr $C$DW$45, DW_AT_decl_column(0x0a)

	.global	||VIENNA_closeGiLoop||
||VIENNA_closeGiLoop||:	.usect	"controlVariables:uninit",1,1,0
$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("VIENNA_closeGiLoop")
	.dwattr $C$DW$46, DW_AT_linkage_name("VIENNA_closeGiLoop")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_addr ||VIENNA_closeGiLoop||]
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$46, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$46, DW_AT_decl_column(0x09)

	.global	||VIENNA_closeGvLoop||
||VIENNA_closeGvLoop||:	.usect	"controlVariables:uninit",1,1,0
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("VIENNA_closeGvLoop")
	.dwattr $C$DW$47, DW_AT_linkage_name("VIENNA_closeGvLoop")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_addr ||VIENNA_closeGvLoop||]
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$47, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$47, DW_AT_decl_column(0x1d)

	.global	||VIENNA_closeGsLoop||
||VIENNA_closeGsLoop||:	.usect	"controlVariables:uninit",1,1,0
$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("VIENNA_closeGsLoop")
	.dwattr $C$DW$48, DW_AT_linkage_name("VIENNA_closeGsLoop")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_addr ||VIENNA_closeGsLoop||]
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$48, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$48, DW_AT_decl_column(0x31)

	.global	||VIENNA_clearTrip||
||VIENNA_clearTrip||:	.usect	"controlVariables:uninit",1,1,0
$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("VIENNA_clearTrip")
	.dwattr $C$DW$49, DW_AT_linkage_name("VIENNA_clearTrip")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_addr ||VIENNA_clearTrip||]
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$49, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$49, DW_AT_decl_column(0x09)

	.global	||VIENNA_firstTimeGvLoop||
||VIENNA_firstTimeGvLoop||:	.usect	"controlVariables:uninit",1,1,0
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("VIENNA_firstTimeGvLoop")
	.dwattr $C$DW$50, DW_AT_linkage_name("VIENNA_firstTimeGvLoop")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_addr ||VIENNA_firstTimeGvLoop||]
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$50, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$50, DW_AT_decl_column(0x1b)

	.global	||VIENNA_updateCoeff||
	.sect	"controlVariables:init", RW
	.align	1
	.elfsym	||VIENNA_updateCoeff||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_updateCoeff||:
	.bits		0,16
			; VIENNA_updateCoeff @ 0

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("VIENNA_updateCoeff")
	.dwattr $C$DW$51, DW_AT_linkage_name("VIENNA_updateCoeff")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_addr ||VIENNA_updateCoeff||]
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$51, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$51, DW_AT_decl_column(0x0e)

	.global	||VIENNA_thirdHarmonicInjectionEnable||
	.sect	"controlVariables:init", RW
	.align	1
	.elfsym	||VIENNA_thirdHarmonicInjectionEnable||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_thirdHarmonicInjectionEnable||:
	.bits		0x1,16
			; VIENNA_thirdHarmonicInjectionEnable @ 0

$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("VIENNA_thirdHarmonicInjectionEnable")
	.dwattr $C$DW$52, DW_AT_linkage_name("VIENNA_thirdHarmonicInjectionEnable")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_addr ||VIENNA_thirdHarmonicInjectionEnable||]
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$52, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$52, DW_AT_decl_column(0x12)

	.global	||VIENNA_busVoltageSlew_pu||
	.sect	"controlVariables:init", RW
	.align	1
	.elfsym	||VIENNA_busVoltageSlew_pu||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_busVoltageSlew_pu||:
	.bits		0,16
			; VIENNA_busVoltageSlew_pu @ 0

$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("VIENNA_busVoltageSlew_pu")
	.dwattr $C$DW$53, DW_AT_linkage_name("VIENNA_busVoltageSlew_pu")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_addr ||VIENNA_busVoltageSlew_pu||]
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$53, DW_AT_decl_line(0xab)
	.dwattr $C$DW$53, DW_AT_decl_column(0x13)

	.global	||VIENNA_buildInfo||
	.sect	"controlVariables:init", RW
	.align	1
	.elfsym	||VIENNA_buildInfo||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_buildInfo||:
	.bits		0,16
			; VIENNA_buildInfo @ 0

$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("VIENNA_buildInfo")
	.dwattr $C$DW$54, DW_AT_linkage_name("VIENNA_buildInfo")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_addr ||VIENNA_buildInfo||]
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$54, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$54, DW_AT_decl_column(0x1d)

	.global	||VIENNA_boardState||
	.sect	"controlVariables:init", RW
	.align	1
	.elfsym	||VIENNA_boardState||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_boardState||:
	.bits		0,16
			; VIENNA_boardState @ 0

$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("VIENNA_boardState")
	.dwattr $C$DW$55, DW_AT_linkage_name("VIENNA_boardState")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_addr ||VIENNA_boardState||]
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$55, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$55, DW_AT_decl_column(0x1d)

	.global	||VIENNA_boardStatus||
	.sect	"controlVariables:init", RW
	.align	1
	.elfsym	||VIENNA_boardStatus||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_boardStatus||:
	.bits		0,16
			; VIENNA_boardStatus @ 0

$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("VIENNA_boardStatus")
	.dwattr $C$DW$56, DW_AT_linkage_name("VIENNA_boardStatus")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_addr ||VIENNA_boardStatus||]
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$56, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$56, DW_AT_decl_column(0x1e)

	.global	||VIENNA_offsetCalCounter||
	.bss	||VIENNA_offsetCalCounter||,1,1,0
$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("VIENNA_offsetCalCounter")
	.dwattr $C$DW$57, DW_AT_linkage_name("VIENNA_offsetCalCounter")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_addr ||VIENNA_offsetCalCounter||]
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$57, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$57, DW_AT_decl_column(0x09)

	.global	||VIENNA_i||
	.bss	||VIENNA_i||,1,1,0
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("VIENNA_i")
	.dwattr $C$DW$58, DW_AT_linkage_name("VIENNA_i")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_addr ||VIENNA_i||]
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$58, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$58, DW_AT_decl_column(0x09)

	.global	||VIENNA_timer1||
	.bss	||VIENNA_timer1||,1,1,0
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("VIENNA_timer1")
	.dwattr $C$DW$59, DW_AT_linkage_name("VIENNA_timer1")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_addr ||VIENNA_timer1||]
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$59, DW_AT_decl_line(0xde)
	.dwattr $C$DW$59, DW_AT_decl_column(0x09)

	.global	||VIENNA_fcsIsrCycles||
||VIENNA_fcsIsrCycles||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("VIENNA_fcsIsrCycles")
	.dwattr $C$DW$60, DW_AT_linkage_name("VIENNA_fcsIsrCycles")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_addr ||VIENNA_fcsIsrCycles||]
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$60, DW_AT_external
	.dwattr $C$DW$60, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$60, DW_AT_decl_line(0x26)
	.dwattr $C$DW$60, DW_AT_decl_column(0x13)

	.global	||VIENNA_fcsIsrCyclesMax||
||VIENNA_fcsIsrCyclesMax||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("VIENNA_fcsIsrCyclesMax")
	.dwattr $C$DW$61, DW_AT_linkage_name("VIENNA_fcsIsrCyclesMax")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_addr ||VIENNA_fcsIsrCyclesMax||]
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$61, DW_AT_decl_line(0x26)
	.dwattr $C$DW$61, DW_AT_decl_column(0x28)

	.global	||VIENNA_fcsDeadlineMissCount||
||VIENNA_fcsDeadlineMissCount||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("VIENNA_fcsDeadlineMissCount")
	.dwattr $C$DW$62, DW_AT_linkage_name("VIENNA_fcsDeadlineMissCount")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_addr ||VIENNA_fcsDeadlineMissCount||]
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$62, DW_AT_decl_line(0x27)
	.dwattr $C$DW$62, DW_AT_decl_column(0x13)

	.global	||VIENNA_vBusRef_pu||
||VIENNA_vBusRef_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("VIENNA_vBusRef_pu")
	.dwattr $C$DW$63, DW_AT_linkage_name("VIENNA_vBusRef_pu")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_addr ||VIENNA_vBusRef_pu||]
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$63, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$63, DW_AT_decl_column(0x14)

	.global	||VIENNA_vBusRefSlewed_pu||
||VIENNA_vBusRefSlewed_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("VIENNA_vBusRefSlewed_pu")
	.dwattr $C$DW$64, DW_AT_linkage_name("VIENNA_vBusRefSlewed_pu")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_addr ||VIENNA_vBusRefSlewed_pu||]
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$64, DW_AT_decl_line(0x30)
	.dwattr $C$DW$64, DW_AT_decl_column(0x14)

	.global	||VIENNA_gv_out||
||VIENNA_gv_out||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("VIENNA_gv_out")
	.dwattr $C$DW$65, DW_AT_linkage_name("VIENNA_gv_out")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_addr ||VIENNA_gv_out||]
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$65, DW_AT_decl_line(0x34)
	.dwattr $C$DW$65, DW_AT_decl_column(0x14)

	.global	||VIENNA_voltage_error_pu||
||VIENNA_voltage_error_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("VIENNA_voltage_error_pu")
	.dwattr $C$DW$66, DW_AT_linkage_name("VIENNA_voltage_error_pu")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_addr ||VIENNA_voltage_error_pu||]
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$66, DW_AT_decl_line(0x34)
	.dwattr $C$DW$66, DW_AT_decl_column(0x23)

	.global	||VIENNA_iLRef_pu||
||VIENNA_iLRef_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("VIENNA_iLRef_pu")
	.dwattr $C$DW$67, DW_AT_linkage_name("VIENNA_iLRef_pu")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_addr ||VIENNA_iLRef_pu||]
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$67, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$67, DW_AT_decl_column(0x14)

	.global	||VIENNA_iL1Ref_pu||
||VIENNA_iL1Ref_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("VIENNA_iL1Ref_pu")
	.dwattr $C$DW$68, DW_AT_linkage_name("VIENNA_iL1Ref_pu")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_addr ||VIENNA_iL1Ref_pu||]
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$68, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$68, DW_AT_decl_column(0x25)

	.global	||VIENNA_iL2Ref_pu||
||VIENNA_iL2Ref_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("VIENNA_iL2Ref_pu")
	.dwattr $C$DW$69, DW_AT_linkage_name("VIENNA_iL2Ref_pu")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_addr ||VIENNA_iL2Ref_pu||]
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$69, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$69, DW_AT_decl_column(0x37)

	.global	||VIENNA_iL3Ref_pu||
||VIENNA_iL3Ref_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("VIENNA_iL3Ref_pu")
	.dwattr $C$DW$70, DW_AT_linkage_name("VIENNA_iL3Ref_pu")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_addr ||VIENNA_iL3Ref_pu||]
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$70, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$70, DW_AT_decl_column(0x49)

	.global	||VIENNA_gi_out1||
||VIENNA_gi_out1||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("VIENNA_gi_out1")
	.dwattr $C$DW$71, DW_AT_linkage_name("VIENNA_gi_out1")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_addr ||VIENNA_gi_out1||]
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$71, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$71, DW_AT_decl_column(0x14)

	.global	||VIENNA_gi_out2||
||VIENNA_gi_out2||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$72	.dwtag  DW_TAG_variable
	.dwattr $C$DW$72, DW_AT_name("VIENNA_gi_out2")
	.dwattr $C$DW$72, DW_AT_linkage_name("VIENNA_gi_out2")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_addr ||VIENNA_gi_out2||]
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$72, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$72, DW_AT_decl_column(0x24)

	.global	||VIENNA_gi_out3||
||VIENNA_gi_out3||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$73	.dwtag  DW_TAG_variable
	.dwattr $C$DW$73, DW_AT_name("VIENNA_gi_out3")
	.dwattr $C$DW$73, DW_AT_linkage_name("VIENNA_gi_out3")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_addr ||VIENNA_gi_out3||]
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$73, DW_AT_external
	.dwattr $C$DW$73, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$73, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$73, DW_AT_decl_column(0x34)

	.global	||VIENNA_gi_gainKp||
||VIENNA_gi_gainKp||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("VIENNA_gi_gainKp")
	.dwattr $C$DW$74, DW_AT_linkage_name("VIENNA_gi_gainKp")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_addr ||VIENNA_gi_gainKp||]
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$74, DW_AT_external
	.dwattr $C$DW$74, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$74, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$74, DW_AT_decl_column(0x14)

	.global	||VIENNA_gs_gainKp||
||VIENNA_gs_gainKp||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("VIENNA_gs_gainKp")
	.dwattr $C$DW$75, DW_AT_linkage_name("VIENNA_gs_gainKp")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_addr ||VIENNA_gs_gainKp||]
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$75, DW_AT_decl_line(0x42)
	.dwattr $C$DW$75, DW_AT_decl_column(0x14)

	.global	||VIENNA_gs_out||
||VIENNA_gs_out||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("VIENNA_gs_out")
	.dwattr $C$DW$76, DW_AT_linkage_name("VIENNA_gs_out")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_addr ||VIENNA_gs_out||]
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$76, DW_AT_decl_line(0x43)
	.dwattr $C$DW$76, DW_AT_decl_column(0x14)

	.global	||VIENNA_vBusDiff_pu||
||VIENNA_vBusDiff_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("VIENNA_vBusDiff_pu")
	.dwattr $C$DW$77, DW_AT_linkage_name("VIENNA_vBusDiff_pu")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_addr ||VIENNA_vBusDiff_pu||]
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$77, DW_AT_decl_line(0x45)
	.dwattr $C$DW$77, DW_AT_decl_column(0x14)

	.global	||VIENNA_vBusZero_pu||
||VIENNA_vBusZero_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("VIENNA_vBusZero_pu")
	.dwattr $C$DW$78, DW_AT_linkage_name("VIENNA_vBusZero_pu")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_addr ||VIENNA_vBusZero_pu||]
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$78, DW_AT_external
	.dwattr $C$DW$78, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$78, DW_AT_decl_line(0x45)
	.dwattr $C$DW$78, DW_AT_decl_column(0x28)

	.global	||VIENNA_iL1MeasADC_pu||
||VIENNA_iL1MeasADC_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("VIENNA_iL1MeasADC_pu")
	.dwattr $C$DW$79, DW_AT_linkage_name("VIENNA_iL1MeasADC_pu")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_addr ||VIENNA_iL1MeasADC_pu||]
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$79, DW_AT_decl_line(0x51)
	.dwattr $C$DW$79, DW_AT_decl_column(0x14)

	.global	||VIENNA_iL2MeasADC_pu||
||VIENNA_iL2MeasADC_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("VIENNA_iL2MeasADC_pu")
	.dwattr $C$DW$80, DW_AT_linkage_name("VIENNA_iL2MeasADC_pu")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_addr ||VIENNA_iL2MeasADC_pu||]
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$80, DW_AT_external
	.dwattr $C$DW$80, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$80, DW_AT_decl_line(0x51)
	.dwattr $C$DW$80, DW_AT_decl_column(0x2a)

	.global	||VIENNA_iL3MeasADC_pu||
||VIENNA_iL3MeasADC_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("VIENNA_iL3MeasADC_pu")
	.dwattr $C$DW$81, DW_AT_linkage_name("VIENNA_iL3MeasADC_pu")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_addr ||VIENNA_iL3MeasADC_pu||]
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$81, DW_AT_decl_line(0x51)
	.dwattr $C$DW$81, DW_AT_decl_column(0x40)

	.global	||VIENNA_iL1MeasSD_pu||
||VIENNA_iL1MeasSD_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("VIENNA_iL1MeasSD_pu")
	.dwattr $C$DW$82, DW_AT_linkage_name("VIENNA_iL1MeasSD_pu")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_addr ||VIENNA_iL1MeasSD_pu||]
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$82, DW_AT_decl_line(0x52)
	.dwattr $C$DW$82, DW_AT_decl_column(0x14)

	.global	||VIENNA_iL2MeasSD_pu||
||VIENNA_iL2MeasSD_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("VIENNA_iL2MeasSD_pu")
	.dwattr $C$DW$83, DW_AT_linkage_name("VIENNA_iL2MeasSD_pu")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_addr ||VIENNA_iL2MeasSD_pu||]
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$83, DW_AT_decl_line(0x52)
	.dwattr $C$DW$83, DW_AT_decl_column(0x29)

	.global	||VIENNA_iL3MeasSD_pu||
||VIENNA_iL3MeasSD_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("VIENNA_iL3MeasSD_pu")
	.dwattr $C$DW$84, DW_AT_linkage_name("VIENNA_iL3MeasSD_pu")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_addr ||VIENNA_iL3MeasSD_pu||]
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$84, DW_AT_decl_line(0x52)
	.dwattr $C$DW$84, DW_AT_decl_column(0x3e)

	.global	||VIENNA_iL1Meas_pu||
||VIENNA_iL1Meas_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("VIENNA_iL1Meas_pu")
	.dwattr $C$DW$85, DW_AT_linkage_name("VIENNA_iL1Meas_pu")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_addr ||VIENNA_iL1Meas_pu||]
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$85, DW_AT_decl_line(0x53)
	.dwattr $C$DW$85, DW_AT_decl_column(0x14)

	.global	||VIENNA_iL2Meas_pu||
||VIENNA_iL2Meas_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("VIENNA_iL2Meas_pu")
	.dwattr $C$DW$86, DW_AT_linkage_name("VIENNA_iL2Meas_pu")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_addr ||VIENNA_iL2Meas_pu||]
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$86, DW_AT_decl_line(0x53)
	.dwattr $C$DW$86, DW_AT_decl_column(0x27)

	.global	||VIENNA_iL3Meas_pu||
||VIENNA_iL3Meas_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("VIENNA_iL3Meas_pu")
	.dwattr $C$DW$87, DW_AT_linkage_name("VIENNA_iL3Meas_pu")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_addr ||VIENNA_iL3Meas_pu||]
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$87, DW_AT_decl_line(0x53)
	.dwattr $C$DW$87, DW_AT_decl_column(0x3a)

	.global	||VIENNA_iL1MeasOffset_pu||
||VIENNA_iL1MeasOffset_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("VIENNA_iL1MeasOffset_pu")
	.dwattr $C$DW$88, DW_AT_linkage_name("VIENNA_iL1MeasOffset_pu")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_addr ||VIENNA_iL1MeasOffset_pu||]
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$88, DW_AT_decl_line(0x58)
	.dwattr $C$DW$88, DW_AT_decl_column(0x14)

	.global	||VIENNA_iL2MeasOffset_pu||
||VIENNA_iL2MeasOffset_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("VIENNA_iL2MeasOffset_pu")
	.dwattr $C$DW$89, DW_AT_linkage_name("VIENNA_iL2MeasOffset_pu")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_addr ||VIENNA_iL2MeasOffset_pu||]
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$89, DW_AT_decl_line(0x58)
	.dwattr $C$DW$89, DW_AT_decl_column(0x2d)

	.global	||VIENNA_iL3MeasOffset_pu||
||VIENNA_iL3MeasOffset_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("VIENNA_iL3MeasOffset_pu")
	.dwattr $C$DW$90, DW_AT_linkage_name("VIENNA_iL3MeasOffset_pu")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_addr ||VIENNA_iL3MeasOffset_pu||]
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$90, DW_AT_decl_line(0x59)
	.dwattr $C$DW$90, DW_AT_decl_column(0x14)

	.global	||VIENNA_vBusMNMeas_pu||
||VIENNA_vBusMNMeas_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("VIENNA_vBusMNMeas_pu")
	.dwattr $C$DW$91, DW_AT_linkage_name("VIENNA_vBusMNMeas_pu")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_addr ||VIENNA_vBusMNMeas_pu||]
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$91, DW_AT_external
	.dwattr $C$DW$91, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$91, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$91, DW_AT_decl_column(0x14)

	.global	||VIENNA_vBusPMMeas_pu||
||VIENNA_vBusPMMeas_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("VIENNA_vBusPMMeas_pu")
	.dwattr $C$DW$92, DW_AT_linkage_name("VIENNA_vBusPMMeas_pu")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_addr ||VIENNA_vBusPMMeas_pu||]
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$92, DW_AT_external
	.dwattr $C$DW$92, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$92, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$92, DW_AT_decl_column(0x2a)

	.global	||VIENNA_vBusMeas_pu||
||VIENNA_vBusMeas_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("VIENNA_vBusMeas_pu")
	.dwattr $C$DW$93, DW_AT_linkage_name("VIENNA_vBusMeas_pu")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_addr ||VIENNA_vBusMeas_pu||]
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$93, DW_AT_external
	.dwattr $C$DW$93, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$93, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$93, DW_AT_decl_column(0x40)

	.global	||VIENNA_vBusHalfMeas_pu||
||VIENNA_vBusHalfMeas_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("VIENNA_vBusHalfMeas_pu")
	.dwattr $C$DW$94, DW_AT_linkage_name("VIENNA_vBusHalfMeas_pu")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_addr ||VIENNA_vBusHalfMeas_pu||]
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$94, DW_AT_external
	.dwattr $C$DW$94, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$94, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$94, DW_AT_decl_column(0x14)

	.global	||VIENNA_vBusMNMeasAvg_pu||
||VIENNA_vBusMNMeasAvg_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("VIENNA_vBusMNMeasAvg_pu")
	.dwattr $C$DW$95, DW_AT_linkage_name("VIENNA_vBusMNMeasAvg_pu")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_addr ||VIENNA_vBusMNMeasAvg_pu||]
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$95, DW_AT_decl_line(0x60)
	.dwattr $C$DW$95, DW_AT_decl_column(0x14)

	.global	||VIENNA_vBusPMMeasAvg_pu||
||VIENNA_vBusPMMeasAvg_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("VIENNA_vBusPMMeasAvg_pu")
	.dwattr $C$DW$96, DW_AT_linkage_name("VIENNA_vBusPMMeasAvg_pu")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_addr ||VIENNA_vBusPMMeasAvg_pu||]
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$96, DW_AT_decl_line(0x60)
	.dwattr $C$DW$96, DW_AT_decl_column(0x2d)

	.global	||VIENNA_vBusMeasAvg_pu||
||VIENNA_vBusMeasAvg_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$97	.dwtag  DW_TAG_variable
	.dwattr $C$DW$97, DW_AT_name("VIENNA_vBusMeasAvg_pu")
	.dwattr $C$DW$97, DW_AT_linkage_name("VIENNA_vBusMeasAvg_pu")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_addr ||VIENNA_vBusMeasAvg_pu||]
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$97, DW_AT_external
	.dwattr $C$DW$97, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$97, DW_AT_decl_line(0x61)
	.dwattr $C$DW$97, DW_AT_decl_column(0x14)

	.global	||VIENNA_m_VBusMNMeas_pu||
||VIENNA_m_VBusMNMeas_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$98	.dwtag  DW_TAG_variable
	.dwattr $C$DW$98, DW_AT_name("VIENNA_m_VBusMNMeas_pu")
	.dwattr $C$DW$98, DW_AT_linkage_name("VIENNA_m_VBusMNMeas_pu")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_addr ||VIENNA_m_VBusMNMeas_pu||]
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$98, DW_AT_external
	.dwattr $C$DW$98, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$98, DW_AT_decl_line(0x66)
	.dwattr $C$DW$98, DW_AT_decl_column(0x14)

	.global	||VIENNA_b_VBusMNMeas_pu||
||VIENNA_b_VBusMNMeas_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("VIENNA_b_VBusMNMeas_pu")
	.dwattr $C$DW$99, DW_AT_linkage_name("VIENNA_b_VBusMNMeas_pu")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_addr ||VIENNA_b_VBusMNMeas_pu||]
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$99, DW_AT_decl_line(0x66)
	.dwattr $C$DW$99, DW_AT_decl_column(0x2c)

	.global	||VIENNA_m_VBusPMMeas_pu||
||VIENNA_m_VBusPMMeas_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("VIENNA_m_VBusPMMeas_pu")
	.dwattr $C$DW$100, DW_AT_linkage_name("VIENNA_m_VBusPMMeas_pu")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_addr ||VIENNA_m_VBusPMMeas_pu||]
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$100, DW_AT_external
	.dwattr $C$DW$100, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$100, DW_AT_decl_line(0x67)
	.dwattr $C$DW$100, DW_AT_decl_column(0x14)

	.global	||VIENNA_b_VBusPMMeas_pu||
||VIENNA_b_VBusPMMeas_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("VIENNA_b_VBusPMMeas_pu")
	.dwattr $C$DW$101, DW_AT_linkage_name("VIENNA_b_VBusPMMeas_pu")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_addr ||VIENNA_b_VBusPMMeas_pu||]
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$101, DW_AT_decl_line(0x67)
	.dwattr $C$DW$101, DW_AT_decl_column(0x2c)

	.global	||VIENNA_v1Meas_pu||
||VIENNA_v1Meas_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("VIENNA_v1Meas_pu")
	.dwattr $C$DW$102, DW_AT_linkage_name("VIENNA_v1Meas_pu")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_addr ||VIENNA_v1Meas_pu||]
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$102, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$102, DW_AT_decl_column(0x14)

	.global	||VIENNA_v2Meas_pu||
||VIENNA_v2Meas_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("VIENNA_v2Meas_pu")
	.dwattr $C$DW$103, DW_AT_linkage_name("VIENNA_v2Meas_pu")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_addr ||VIENNA_v2Meas_pu||]
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$103, DW_AT_external
	.dwattr $C$DW$103, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$103, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$103, DW_AT_decl_column(0x26)

	.global	||VIENNA_v3Meas_pu||
||VIENNA_v3Meas_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("VIENNA_v3Meas_pu")
	.dwattr $C$DW$104, DW_AT_linkage_name("VIENNA_v3Meas_pu")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_addr ||VIENNA_v3Meas_pu||]
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$104, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$104, DW_AT_decl_column(0x38)

	.global	||VIENNA_v1MeasOffset_pu||
||VIENNA_v1MeasOffset_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("VIENNA_v1MeasOffset_pu")
	.dwattr $C$DW$105, DW_AT_linkage_name("VIENNA_v1MeasOffset_pu")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_addr ||VIENNA_v1MeasOffset_pu||]
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$105, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$105, DW_AT_decl_column(0x14)

	.global	||VIENNA_v2MeasOffset_pu||
||VIENNA_v2MeasOffset_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$106	.dwtag  DW_TAG_variable
	.dwattr $C$DW$106, DW_AT_name("VIENNA_v2MeasOffset_pu")
	.dwattr $C$DW$106, DW_AT_linkage_name("VIENNA_v2MeasOffset_pu")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_addr ||VIENNA_v2MeasOffset_pu||]
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$106, DW_AT_external
	.dwattr $C$DW$106, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$106, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$106, DW_AT_decl_column(0x2c)

	.global	||VIENNA_v3MeasOffset_pu||
||VIENNA_v3MeasOffset_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$107	.dwtag  DW_TAG_variable
	.dwattr $C$DW$107, DW_AT_name("VIENNA_v3MeasOffset_pu")
	.dwattr $C$DW$107, DW_AT_linkage_name("VIENNA_v3MeasOffset_pu")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_addr ||VIENNA_v3MeasOffset_pu||]
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$107, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$107, DW_AT_decl_column(0x14)

	.global	||VIENNA_vRmsMeasAvg_pu||
||VIENNA_vRmsMeasAvg_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$108	.dwtag  DW_TAG_variable
	.dwattr $C$DW$108, DW_AT_name("VIENNA_vRmsMeasAvg_pu")
	.dwattr $C$DW$108, DW_AT_linkage_name("VIENNA_vRmsMeasAvg_pu")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_addr ||VIENNA_vRmsMeasAvg_pu||]
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$108, DW_AT_external
	.dwattr $C$DW$108, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$108, DW_AT_decl_line(0x70)
	.dwattr $C$DW$108, DW_AT_decl_column(0x14)

	.global	||VIENNA_guiVbusMN_Volts||
||VIENNA_guiVbusMN_Volts||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("VIENNA_guiVbusMN_Volts")
	.dwattr $C$DW$109, DW_AT_linkage_name("VIENNA_guiVbusMN_Volts")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_addr ||VIENNA_guiVbusMN_Volts||]
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$109, DW_AT_decl_line(0x75)
	.dwattr $C$DW$109, DW_AT_decl_column(0x15)

	.global	||VIENNA_guiVbusPM_Volts||
||VIENNA_guiVbusPM_Volts||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("VIENNA_guiVbusPM_Volts")
	.dwattr $C$DW$110, DW_AT_linkage_name("VIENNA_guiVbusPM_Volts")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_addr ||VIENNA_guiVbusPM_Volts||]
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$110, DW_AT_external
	.dwattr $C$DW$110, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$110, DW_AT_decl_line(0x75)
	.dwattr $C$DW$110, DW_AT_decl_column(0x2d)

	.global	||VIENNA_guiVbus_Volts||
||VIENNA_guiVbus_Volts||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("VIENNA_guiVbus_Volts")
	.dwattr $C$DW$111, DW_AT_linkage_name("VIENNA_guiVbus_Volts")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_addr ||VIENNA_guiVbus_Volts||]
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$111, DW_AT_decl_line(0x75)
	.dwattr $C$DW$111, DW_AT_decl_column(0x45)

	.global	||VIENNA_guiV1_Volts||
||VIENNA_guiV1_Volts||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("VIENNA_guiV1_Volts")
	.dwattr $C$DW$112, DW_AT_linkage_name("VIENNA_guiV1_Volts")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_addr ||VIENNA_guiV1_Volts||]
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$112, DW_AT_external
	.dwattr $C$DW$112, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$112, DW_AT_decl_line(0x76)
	.dwattr $C$DW$112, DW_AT_decl_column(0x11)

	.global	||VIENNA_guiV2_Volts||
||VIENNA_guiV2_Volts||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("VIENNA_guiV2_Volts")
	.dwattr $C$DW$113, DW_AT_linkage_name("VIENNA_guiV2_Volts")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_addr ||VIENNA_guiV2_Volts||]
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$113, DW_AT_decl_line(0x76)
	.dwattr $C$DW$113, DW_AT_decl_column(0x25)

	.global	||VIENNA_guiV3_Volts||
||VIENNA_guiV3_Volts||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("VIENNA_guiV3_Volts")
	.dwattr $C$DW$114, DW_AT_linkage_name("VIENNA_guiV3_Volts")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_addr ||VIENNA_guiV3_Volts||]
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$114, DW_AT_external
	.dwattr $C$DW$114, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$114, DW_AT_decl_line(0x76)
	.dwattr $C$DW$114, DW_AT_decl_column(0x39)

	.global	||VIENNA_guiIL1_Amps||
||VIENNA_guiIL1_Amps||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$115	.dwtag  DW_TAG_variable
	.dwattr $C$DW$115, DW_AT_name("VIENNA_guiIL1_Amps")
	.dwattr $C$DW$115, DW_AT_linkage_name("VIENNA_guiIL1_Amps")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_addr ||VIENNA_guiIL1_Amps||]
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$115, DW_AT_external
	.dwattr $C$DW$115, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$115, DW_AT_decl_line(0x77)
	.dwattr $C$DW$115, DW_AT_decl_column(0x11)

	.global	||VIENNA_guiIL2_Amps||
||VIENNA_guiIL2_Amps||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("VIENNA_guiIL2_Amps")
	.dwattr $C$DW$116, DW_AT_linkage_name("VIENNA_guiIL2_Amps")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_addr ||VIENNA_guiIL2_Amps||]
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$116, DW_AT_external
	.dwattr $C$DW$116, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$116, DW_AT_decl_line(0x77)
	.dwattr $C$DW$116, DW_AT_decl_column(0x25)

	.global	||VIENNA_guiIL3_Amps||
||VIENNA_guiIL3_Amps||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("VIENNA_guiIL3_Amps")
	.dwattr $C$DW$117, DW_AT_linkage_name("VIENNA_guiIL3_Amps")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_addr ||VIENNA_guiIL3_Amps||]
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$117, DW_AT_external
	.dwattr $C$DW$117, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$117, DW_AT_decl_line(0x77)
	.dwattr $C$DW$117, DW_AT_decl_column(0x39)

	.global	||VIENNA_guiIL1sd_Amps||
||VIENNA_guiIL1sd_Amps||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("VIENNA_guiIL1sd_Amps")
	.dwattr $C$DW$118, DW_AT_linkage_name("VIENNA_guiIL1sd_Amps")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_addr ||VIENNA_guiIL1sd_Amps||]
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$118, DW_AT_external
	.dwattr $C$DW$118, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$118, DW_AT_decl_line(0x78)
	.dwattr $C$DW$118, DW_AT_decl_column(0x11)

	.global	||VIENNA_guiIL2sd_Amps||
||VIENNA_guiIL2sd_Amps||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$119	.dwtag  DW_TAG_variable
	.dwattr $C$DW$119, DW_AT_name("VIENNA_guiIL2sd_Amps")
	.dwattr $C$DW$119, DW_AT_linkage_name("VIENNA_guiIL2sd_Amps")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_addr ||VIENNA_guiIL2sd_Amps||]
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$119, DW_AT_decl_line(0x78)
	.dwattr $C$DW$119, DW_AT_decl_column(0x27)

	.global	||VIENNA_guiIL3sd_Amps||
||VIENNA_guiIL3sd_Amps||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("VIENNA_guiIL3sd_Amps")
	.dwattr $C$DW$120, DW_AT_linkage_name("VIENNA_guiIL3sd_Amps")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_addr ||VIENNA_guiIL3sd_Amps||]
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$120, DW_AT_external
	.dwattr $C$DW$120, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$120, DW_AT_decl_line(0x78)
	.dwattr $C$DW$120, DW_AT_decl_column(0x3d)

	.global	||VIENNA_guiACFreq_Hz||
||VIENNA_guiACFreq_Hz||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("VIENNA_guiACFreq_Hz")
	.dwattr $C$DW$121, DW_AT_linkage_name("VIENNA_guiACFreq_Hz")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_addr ||VIENNA_guiACFreq_Hz||]
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$121, DW_AT_external
	.dwattr $C$DW$121, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$121, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$121, DW_AT_decl_column(0x14)

	.global	||VIENNA_guiPrms1_W||
||VIENNA_guiPrms1_W||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$122	.dwtag  DW_TAG_variable
	.dwattr $C$DW$122, DW_AT_name("VIENNA_guiPrms1_W")
	.dwattr $C$DW$122, DW_AT_linkage_name("VIENNA_guiPrms1_W")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_addr ||VIENNA_guiPrms1_W||]
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$122, DW_AT_external
	.dwattr $C$DW$122, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$122, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$122, DW_AT_decl_column(0x14)

	.global	||VIENNA_guiPrms2_W||
||VIENNA_guiPrms2_W||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$123	.dwtag  DW_TAG_variable
	.dwattr $C$DW$123, DW_AT_name("VIENNA_guiPrms2_W")
	.dwattr $C$DW$123, DW_AT_linkage_name("VIENNA_guiPrms2_W")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_addr ||VIENNA_guiPrms2_W||]
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$123, DW_AT_external
	.dwattr $C$DW$123, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$123, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$123, DW_AT_decl_column(0x27)

	.global	||VIENNA_guiPrms3_W||
||VIENNA_guiPrms3_W||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("VIENNA_guiPrms3_W")
	.dwattr $C$DW$124, DW_AT_linkage_name("VIENNA_guiPrms3_W")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_addr ||VIENNA_guiPrms3_W||]
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$124, DW_AT_external
	.dwattr $C$DW$124, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$124, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$124, DW_AT_decl_column(0x3a)

	.global	||VIENNA_guiPrmsTotal_W||
||VIENNA_guiPrmsTotal_W||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$125	.dwtag  DW_TAG_variable
	.dwattr $C$DW$125, DW_AT_name("VIENNA_guiPrmsTotal_W")
	.dwattr $C$DW$125, DW_AT_linkage_name("VIENNA_guiPrmsTotal_W")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_addr ||VIENNA_guiPrmsTotal_W||]
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$125, DW_AT_external
	.dwattr $C$DW$125, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$125, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$125, DW_AT_decl_column(0x14)

	.global	||VIENNA_guiIrms1_Amps||
||VIENNA_guiIrms1_Amps||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("VIENNA_guiIrms1_Amps")
	.dwattr $C$DW$126, DW_AT_linkage_name("VIENNA_guiIrms1_Amps")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_addr ||VIENNA_guiIrms1_Amps||]
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$126, DW_AT_external
	.dwattr $C$DW$126, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$126, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$126, DW_AT_decl_column(0x14)

	.global	||VIENNA_guiIrms2_Amps||
||VIENNA_guiIrms2_Amps||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$127	.dwtag  DW_TAG_variable
	.dwattr $C$DW$127, DW_AT_name("VIENNA_guiIrms2_Amps")
	.dwattr $C$DW$127, DW_AT_linkage_name("VIENNA_guiIrms2_Amps")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_addr ||VIENNA_guiIrms2_Amps||]
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$127, DW_AT_external
	.dwattr $C$DW$127, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$127, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$127, DW_AT_decl_column(0x2a)

	.global	||VIENNA_guiIrms3_Amps||
||VIENNA_guiIrms3_Amps||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$128	.dwtag  DW_TAG_variable
	.dwattr $C$DW$128, DW_AT_name("VIENNA_guiIrms3_Amps")
	.dwattr $C$DW$128, DW_AT_linkage_name("VIENNA_guiIrms3_Amps")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_addr ||VIENNA_guiIrms3_Amps||]
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$128, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$128, DW_AT_decl_column(0x40)

	.global	||VIENNA_guiVrms1_Volts||
||VIENNA_guiVrms1_Volts||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$129	.dwtag  DW_TAG_variable
	.dwattr $C$DW$129, DW_AT_name("VIENNA_guiVrms1_Volts")
	.dwattr $C$DW$129, DW_AT_linkage_name("VIENNA_guiVrms1_Volts")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_addr ||VIENNA_guiVrms1_Volts||]
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$129, DW_AT_external
	.dwattr $C$DW$129, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$129, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$129, DW_AT_decl_column(0x14)

	.global	||VIENNA_guiVrms2_Volts||
||VIENNA_guiVrms2_Volts||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$130	.dwtag  DW_TAG_variable
	.dwattr $C$DW$130, DW_AT_name("VIENNA_guiVrms2_Volts")
	.dwattr $C$DW$130, DW_AT_linkage_name("VIENNA_guiVrms2_Volts")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_addr ||VIENNA_guiVrms2_Volts||]
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$130, DW_AT_external
	.dwattr $C$DW$130, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$130, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$130, DW_AT_decl_column(0x2b)

	.global	||VIENNA_guiVrms3_Volts||
||VIENNA_guiVrms3_Volts||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$131	.dwtag  DW_TAG_variable
	.dwattr $C$DW$131, DW_AT_name("VIENNA_guiVrms3_Volts")
	.dwattr $C$DW$131, DW_AT_linkage_name("VIENNA_guiVrms3_Volts")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_addr ||VIENNA_guiVrms3_Volts||]
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$131, DW_AT_external
	.dwattr $C$DW$131, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$131, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$131, DW_AT_decl_column(0x42)

	.global	||VIENNA_guiPF1||
||VIENNA_guiPF1||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$132	.dwtag  DW_TAG_variable
	.dwattr $C$DW$132, DW_AT_name("VIENNA_guiPF1")
	.dwattr $C$DW$132, DW_AT_linkage_name("VIENNA_guiPF1")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_addr ||VIENNA_guiPF1||]
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$132, DW_AT_external
	.dwattr $C$DW$132, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$132, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$132, DW_AT_decl_column(0x14)

	.global	||VIENNA_guiPF2||
||VIENNA_guiPF2||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$133	.dwtag  DW_TAG_variable
	.dwattr $C$DW$133, DW_AT_name("VIENNA_guiPF2")
	.dwattr $C$DW$133, DW_AT_linkage_name("VIENNA_guiPF2")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_addr ||VIENNA_guiPF2||]
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$133, DW_AT_external
	.dwattr $C$DW$133, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$133, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$133, DW_AT_decl_column(0x23)

	.global	||VIENNA_guiPF3||
||VIENNA_guiPF3||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("VIENNA_guiPF3")
	.dwattr $C$DW$134, DW_AT_linkage_name("VIENNA_guiPF3")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_addr ||VIENNA_guiPF3||]
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$134, DW_AT_external
	.dwattr $C$DW$134, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$134, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$134, DW_AT_decl_column(0x32)

	.global	||VIENNA_guiVA1_VA||
||VIENNA_guiVA1_VA||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$135	.dwtag  DW_TAG_variable
	.dwattr $C$DW$135, DW_AT_name("VIENNA_guiVA1_VA")
	.dwattr $C$DW$135, DW_AT_linkage_name("VIENNA_guiVA1_VA")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_addr ||VIENNA_guiVA1_VA||]
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$135, DW_AT_external
	.dwattr $C$DW$135, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$135, DW_AT_decl_line(0x80)
	.dwattr $C$DW$135, DW_AT_decl_column(0x14)

	.global	||VIENNA_guiVA2_VA||
||VIENNA_guiVA2_VA||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$136	.dwtag  DW_TAG_variable
	.dwattr $C$DW$136, DW_AT_name("VIENNA_guiVA2_VA")
	.dwattr $C$DW$136, DW_AT_linkage_name("VIENNA_guiVA2_VA")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_addr ||VIENNA_guiVA2_VA||]
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$136, DW_AT_decl_line(0x80)
	.dwattr $C$DW$136, DW_AT_decl_column(0x26)

	.global	||VIENNA_guiVA3_VA||
||VIENNA_guiVA3_VA||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$137	.dwtag  DW_TAG_variable
	.dwattr $C$DW$137, DW_AT_name("VIENNA_guiVA3_VA")
	.dwattr $C$DW$137, DW_AT_linkage_name("VIENNA_guiVA3_VA")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_addr ||VIENNA_guiVA3_VA||]
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$137, DW_AT_decl_line(0x80)
	.dwattr $C$DW$137, DW_AT_decl_column(0x38)

	.global	||VIENNA_guiVbusTripLimit_Volts||
||VIENNA_guiVbusTripLimit_Volts||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$138	.dwtag  DW_TAG_variable
	.dwattr $C$DW$138, DW_AT_name("VIENNA_guiVbusTripLimit_Volts")
	.dwattr $C$DW$138, DW_AT_linkage_name("VIENNA_guiVbusTripLimit_Volts")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_addr ||VIENNA_guiVbusTripLimit_Volts||]
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_external
	.dwattr $C$DW$138, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$138, DW_AT_decl_line(0x82)
	.dwattr $C$DW$138, DW_AT_decl_column(0x0b)

	.global	||VIENNA_vBusAvg_pu||
||VIENNA_vBusAvg_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("VIENNA_vBusAvg_pu")
	.dwattr $C$DW$139, DW_AT_linkage_name("VIENNA_vBusAvg_pu")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_addr ||VIENNA_vBusAvg_pu||]
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$139, DW_AT_external
	.dwattr $C$DW$139, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$139, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$139, DW_AT_decl_column(0x14)

	.global	||VIENNA_iL1_CalibrationGain||
	.sect	"controlVariables:init", RW
	.align	2
	.elfsym	||VIENNA_iL1_CalibrationGain||,SYM_SIZE(2),SYM_BLOCKED(1)
||VIENNA_iL1_CalibrationGain||:
	.xfloat	$strtod("0x1p+0")		; VIENNA_iL1_CalibrationGain @ 0

$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("VIENNA_iL1_CalibrationGain")
	.dwattr $C$DW$140, DW_AT_linkage_name("VIENNA_iL1_CalibrationGain")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_addr ||VIENNA_iL1_CalibrationGain||]
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$140, DW_AT_external
	.dwattr $C$DW$140, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$140, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$140, DW_AT_decl_column(0x14)

	.global	||VIENNA_iL2_CalibrationGain||
	.sect	"controlVariables:init", RW
	.align	2
	.elfsym	||VIENNA_iL2_CalibrationGain||,SYM_SIZE(2),SYM_BLOCKED(1)
||VIENNA_iL2_CalibrationGain||:
	.xfloat	$strtod("0x1p+0")		; VIENNA_iL2_CalibrationGain @ 0

$C$DW$141	.dwtag  DW_TAG_variable
	.dwattr $C$DW$141, DW_AT_name("VIENNA_iL2_CalibrationGain")
	.dwattr $C$DW$141, DW_AT_linkage_name("VIENNA_iL2_CalibrationGain")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_addr ||VIENNA_iL2_CalibrationGain||]
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$141, DW_AT_external
	.dwattr $C$DW$141, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$141, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$141, DW_AT_decl_column(0x14)

	.global	||VIENNA_iL3_CalibrationGain||
	.sect	"controlVariables:init", RW
	.align	2
	.elfsym	||VIENNA_iL3_CalibrationGain||,SYM_SIZE(2),SYM_BLOCKED(1)
||VIENNA_iL3_CalibrationGain||:
	.xfloat	$strtod("0x1p+0")		; VIENNA_iL3_CalibrationGain @ 0

$C$DW$142	.dwtag  DW_TAG_variable
	.dwattr $C$DW$142, DW_AT_name("VIENNA_iL3_CalibrationGain")
	.dwattr $C$DW$142, DW_AT_linkage_name("VIENNA_iL3_CalibrationGain")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_addr ||VIENNA_iL3_CalibrationGain||]
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$142, DW_AT_external
	.dwattr $C$DW$142, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$142, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$142, DW_AT_decl_column(0x14)

	.global	||VIENNA_vMin_pu||
||VIENNA_vMin_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$143	.dwtag  DW_TAG_variable
	.dwattr $C$DW$143, DW_AT_name("VIENNA_vMin_pu")
	.dwattr $C$DW$143, DW_AT_linkage_name("VIENNA_vMin_pu")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_addr ||VIENNA_vMin_pu||]
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$143, DW_AT_external
	.dwattr $C$DW$143, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$143, DW_AT_decl_line(0x93)
	.dwattr $C$DW$143, DW_AT_decl_column(0x14)

	.global	||VIENNA_vMax_pu||
||VIENNA_vMax_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$144	.dwtag  DW_TAG_variable
	.dwattr $C$DW$144, DW_AT_name("VIENNA_vMax_pu")
	.dwattr $C$DW$144, DW_AT_linkage_name("VIENNA_vMax_pu")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_addr ||VIENNA_vMax_pu||]
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$144, DW_AT_external
	.dwattr $C$DW$144, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$144, DW_AT_decl_line(0x93)
	.dwattr $C$DW$144, DW_AT_decl_column(0x24)

	.global	||VIENNA_thirdHarmonicInjection||
||VIENNA_thirdHarmonicInjection||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$145	.dwtag  DW_TAG_variable
	.dwattr $C$DW$145, DW_AT_name("VIENNA_thirdHarmonicInjection")
	.dwattr $C$DW$145, DW_AT_linkage_name("VIENNA_thirdHarmonicInjection")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_addr ||VIENNA_thirdHarmonicInjection||]
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$145, DW_AT_external
	.dwattr $C$DW$145, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$145, DW_AT_decl_line(0x94)
	.dwattr $C$DW$145, DW_AT_decl_column(0x14)

	.global	||VIENNA_duty1PU||
||VIENNA_duty1PU||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$146	.dwtag  DW_TAG_variable
	.dwattr $C$DW$146, DW_AT_name("VIENNA_duty1PU")
	.dwattr $C$DW$146, DW_AT_linkage_name("VIENNA_duty1PU")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_addr ||VIENNA_duty1PU||]
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$146, DW_AT_external
	.dwattr $C$DW$146, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$146, DW_AT_decl_line(0x99)
	.dwattr $C$DW$146, DW_AT_decl_column(0x14)

	.global	||VIENNA_duty2PU||
||VIENNA_duty2PU||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$147	.dwtag  DW_TAG_variable
	.dwattr $C$DW$147, DW_AT_name("VIENNA_duty2PU")
	.dwattr $C$DW$147, DW_AT_linkage_name("VIENNA_duty2PU")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_addr ||VIENNA_duty2PU||]
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$147, DW_AT_external
	.dwattr $C$DW$147, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$147, DW_AT_decl_line(0x99)
	.dwattr $C$DW$147, DW_AT_decl_column(0x24)

	.global	||VIENNA_duty3PU||
||VIENNA_duty3PU||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$148	.dwtag  DW_TAG_variable
	.dwattr $C$DW$148, DW_AT_name("VIENNA_duty3PU")
	.dwattr $C$DW$148, DW_AT_linkage_name("VIENNA_duty3PU")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_addr ||VIENNA_duty3PU||]
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$148, DW_AT_external
	.dwattr $C$DW$148, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$148, DW_AT_decl_line(0x99)
	.dwattr $C$DW$148, DW_AT_decl_column(0x34)

	.global	||VIENNA_dutyPU_DC||
||VIENNA_dutyPU_DC||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("VIENNA_dutyPU_DC")
	.dwattr $C$DW$149, DW_AT_linkage_name("VIENNA_dutyPU_DC")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_addr ||VIENNA_dutyPU_DC||]
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$149, DW_AT_external
	.dwattr $C$DW$149, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$149, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$149, DW_AT_decl_column(0x14)

	.global	||VIENNA_iL1Ref_prev_pu||
||VIENNA_iL1Ref_prev_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$150	.dwtag  DW_TAG_variable
	.dwattr $C$DW$150, DW_AT_name("VIENNA_iL1Ref_prev_pu")
	.dwattr $C$DW$150, DW_AT_linkage_name("VIENNA_iL1Ref_prev_pu")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_addr ||VIENNA_iL1Ref_prev_pu||]
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$150, DW_AT_external
	.dwattr $C$DW$150, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$150, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$150, DW_AT_decl_column(0x14)

	.global	||VIENNA_iL2Ref_prev_pu||
||VIENNA_iL2Ref_prev_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$151	.dwtag  DW_TAG_variable
	.dwattr $C$DW$151, DW_AT_name("VIENNA_iL2Ref_prev_pu")
	.dwattr $C$DW$151, DW_AT_linkage_name("VIENNA_iL2Ref_prev_pu")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_addr ||VIENNA_iL2Ref_prev_pu||]
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$151, DW_AT_external
	.dwattr $C$DW$151, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$151, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$151, DW_AT_decl_column(0x2b)

	.global	||VIENNA_iL3Ref_prev_pu||
||VIENNA_iL3Ref_prev_pu||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$152	.dwtag  DW_TAG_variable
	.dwattr $C$DW$152, DW_AT_name("VIENNA_iL3Ref_prev_pu")
	.dwattr $C$DW$152, DW_AT_linkage_name("VIENNA_iL3Ref_prev_pu")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_addr ||VIENNA_iL3Ref_prev_pu||]
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$152, DW_AT_external
	.dwattr $C$DW$152, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$152, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$152, DW_AT_decl_column(0x42)

	.global	||VIENNA_inductor_voltage_drop_feedforward1||
||VIENNA_inductor_voltage_drop_feedforward1||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$153	.dwtag  DW_TAG_variable
	.dwattr $C$DW$153, DW_AT_name("VIENNA_inductor_voltage_drop_feedforward1")
	.dwattr $C$DW$153, DW_AT_linkage_name("VIENNA_inductor_voltage_drop_feedforward1")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_addr ||VIENNA_inductor_voltage_drop_feedforward1||]
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$153, DW_AT_external
	.dwattr $C$DW$153, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$153, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$153, DW_AT_decl_column(0x14)

	.global	||VIENNA_inductor_voltage_drop_feedforward2||
||VIENNA_inductor_voltage_drop_feedforward2||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$154	.dwtag  DW_TAG_variable
	.dwattr $C$DW$154, DW_AT_name("VIENNA_inductor_voltage_drop_feedforward2")
	.dwattr $C$DW$154, DW_AT_linkage_name("VIENNA_inductor_voltage_drop_feedforward2")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_addr ||VIENNA_inductor_voltage_drop_feedforward2||]
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$154, DW_AT_external
	.dwattr $C$DW$154, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$154, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$154, DW_AT_decl_column(0x09)

	.global	||VIENNA_inductor_voltage_drop_feedforward3||
||VIENNA_inductor_voltage_drop_feedforward3||:	.usect	"controlVariables:uninit",2,1,1
$C$DW$155	.dwtag  DW_TAG_variable
	.dwattr $C$DW$155, DW_AT_name("VIENNA_inductor_voltage_drop_feedforward3")
	.dwattr $C$DW$155, DW_AT_linkage_name("VIENNA_inductor_voltage_drop_feedforward3")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_addr ||VIENNA_inductor_voltage_drop_feedforward3||]
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$155, DW_AT_external
	.dwattr $C$DW$155, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$155, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$155, DW_AT_decl_column(0x09)

	.global	||VIENNA_dVal1||
	.bss	||VIENNA_dVal1||,2,1,1
$C$DW$156	.dwtag  DW_TAG_variable
	.dwattr $C$DW$156, DW_AT_name("VIENNA_dVal1")
	.dwattr $C$DW$156, DW_AT_linkage_name("VIENNA_dVal1")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_addr ||VIENNA_dVal1||]
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_external
	.dwattr $C$DW$156, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$156, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$156, DW_AT_decl_column(0x0b)

	.global	||VIENNA_dVal2||
	.bss	||VIENNA_dVal2||,2,1,1
$C$DW$157	.dwtag  DW_TAG_variable
	.dwattr $C$DW$157, DW_AT_name("VIENNA_dVal2")
	.dwattr $C$DW$157, DW_AT_linkage_name("VIENNA_dVal2")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_addr ||VIENNA_dVal2||]
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_external
	.dwattr $C$DW$157, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$157, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$157, DW_AT_decl_column(0x19)

	.global	||VIENNA_dVal3||
	.bss	||VIENNA_dVal3||,2,1,1
$C$DW$158	.dwtag  DW_TAG_variable
	.dwattr $C$DW$158, DW_AT_name("VIENNA_dVal3")
	.dwattr $C$DW$158, DW_AT_linkage_name("VIENNA_dVal3")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_addr ||VIENNA_dVal3||]
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_external
	.dwattr $C$DW$158, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$158, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$158, DW_AT_decl_column(0x27)

	.global	||VIENNA_dVal4||
	.bss	||VIENNA_dVal4||,2,1,1
$C$DW$159	.dwtag  DW_TAG_variable
	.dwattr $C$DW$159, DW_AT_name("VIENNA_dVal4")
	.dwattr $C$DW$159, DW_AT_linkage_name("VIENNA_dVal4")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_addr ||VIENNA_dVal4||]
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_external
	.dwattr $C$DW$159, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$159, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$159, DW_AT_decl_column(0x35)

	.global	||VIENNA_k1||
	.data
	.align	2
	.elfsym	||VIENNA_k1||,SYM_SIZE(2),SYM_BLOCKED(1)
||VIENNA_k1||:
	.xfloat	$strtod("0x1.fef9dcp-1")		; VIENNA_k1 @ 0

$C$DW$160	.dwtag  DW_TAG_variable
	.dwattr $C$DW$160, DW_AT_name("VIENNA_k1")
	.dwattr $C$DW$160, DW_AT_linkage_name("VIENNA_k1")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_addr ||VIENNA_k1||]
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_external
	.dwattr $C$DW$160, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$160, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$160, DW_AT_decl_column(0x0b)

	.global	||VIENNA_k2||
	.data
	.align	2
	.elfsym	||VIENNA_k2||,SYM_SIZE(2),SYM_BLOCKED(1)
||VIENNA_k2||:
	.xfloat	$strtod("0x1.06035p-9")		; VIENNA_k2 @ 0

$C$DW$161	.dwtag  DW_TAG_variable
	.dwattr $C$DW$161, DW_AT_name("VIENNA_k2")
	.dwattr $C$DW$161, DW_AT_linkage_name("VIENNA_k2")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_addr ||VIENNA_k2||]
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_external
	.dwattr $C$DW$161, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$161, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$161, DW_AT_decl_column(0x0b)

	.global	||VIENNA_offset165||
	.bss	||VIENNA_offset165||,2,1,1
$C$DW$162	.dwtag  DW_TAG_variable
	.dwattr $C$DW$162, DW_AT_name("VIENNA_offset165")
	.dwattr $C$DW$162, DW_AT_linkage_name("VIENNA_offset165")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_addr ||VIENNA_offset165||]
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_external
	.dwattr $C$DW$162, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$162, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$162, DW_AT_decl_column(0x0b)

	.global	||VIENNA_gv||
||VIENNA_gv||:	.usect	"controlVariables:uninit",22,1,1
$C$DW$163	.dwtag  DW_TAG_variable
	.dwattr $C$DW$163, DW_AT_name("VIENNA_gv")
	.dwattr $C$DW$163, DW_AT_linkage_name("VIENNA_gv")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_addr ||VIENNA_gv||]
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$163, DW_AT_external
	.dwattr $C$DW$163, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$163, DW_AT_decl_line(0x32)
	.dwattr $C$DW$163, DW_AT_decl_column(0x0b)

	.global	||VIENNA_dLog1||
	.bss	||VIENNA_dLog1||,26,1,1
$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("VIENNA_dLog1")
	.dwattr $C$DW$164, DW_AT_linkage_name("VIENNA_dLog1")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_addr ||VIENNA_dLog1||]
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$164, DW_AT_external
	.dwattr $C$DW$164, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$164, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$164, DW_AT_decl_column(0x0a)

	.global	||VIENNA_sfra1||
	.bss	||VIENNA_sfra1||,32,1,1
$C$DW$165	.dwtag  DW_TAG_variable
	.dwattr $C$DW$165, DW_AT_name("VIENNA_sfra1")
	.dwattr $C$DW$165, DW_AT_linkage_name("VIENNA_sfra1")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_addr ||VIENNA_sfra1||]
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$165, DW_AT_external
	.dwattr $C$DW$165, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$165, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$165, DW_AT_decl_column(0x0a)

	.global	||VIENNA_plantMagVect||
||VIENNA_plantMagVect||:	.usect	".bss:VIENNA_plantMagVect",60,0,1
$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("VIENNA_plantMagVect")
	.dwattr $C$DW$166, DW_AT_linkage_name("VIENNA_plantMagVect")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_addr ||VIENNA_plantMagVect||]
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$166, DW_AT_external
	.dwattr $C$DW$166, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$166, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$166, DW_AT_decl_column(0x0b)

	.global	||VIENNA_plantPhaseVect||
||VIENNA_plantPhaseVect||:	.usect	".bss:VIENNA_plantPhaseVect",60,0,1
$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("VIENNA_plantPhaseVect")
	.dwattr $C$DW$167, DW_AT_linkage_name("VIENNA_plantPhaseVect")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_addr ||VIENNA_plantPhaseVect||]
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$167, DW_AT_external
	.dwattr $C$DW$167, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$167, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$167, DW_AT_decl_column(0x0b)

	.global	||VIENNA_olMagVect||
||VIENNA_olMagVect||:	.usect	".bss:VIENNA_olMagVect",60,0,1
$C$DW$168	.dwtag  DW_TAG_variable
	.dwattr $C$DW$168, DW_AT_name("VIENNA_olMagVect")
	.dwattr $C$DW$168, DW_AT_linkage_name("VIENNA_olMagVect")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_addr ||VIENNA_olMagVect||]
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$168, DW_AT_external
	.dwattr $C$DW$168, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$168, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$168, DW_AT_decl_column(0x0b)

	.global	||VIENNA_olPhaseVect||
||VIENNA_olPhaseVect||:	.usect	".bss:VIENNA_olPhaseVect",60,0,1
$C$DW$169	.dwtag  DW_TAG_variable
	.dwattr $C$DW$169, DW_AT_name("VIENNA_olPhaseVect")
	.dwattr $C$DW$169, DW_AT_linkage_name("VIENNA_olPhaseVect")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_addr ||VIENNA_olPhaseVect||]
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$169, DW_AT_external
	.dwattr $C$DW$169, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$169, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$169, DW_AT_decl_column(0x0b)

	.global	||VIENNA_freqVect||
||VIENNA_freqVect||:	.usect	".bss:VIENNA_freqVect",60,0,1
$C$DW$170	.dwtag  DW_TAG_variable
	.dwattr $C$DW$170, DW_AT_name("VIENNA_freqVect")
	.dwattr $C$DW$170, DW_AT_linkage_name("VIENNA_freqVect")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_addr ||VIENNA_freqVect||]
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$170, DW_AT_external
	.dwattr $C$DW$170, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$170, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$170, DW_AT_decl_column(0x0b)

	.global	||VIENNA_sine_mains1||
||VIENNA_sine_mains1||:	.usect	"controlVariables:uninit",64,1,1
$C$DW$171	.dwtag  DW_TAG_variable
	.dwattr $C$DW$171, DW_AT_name("VIENNA_sine_mains1")
	.dwattr $C$DW$171, DW_AT_linkage_name("VIENNA_sine_mains1")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_addr ||VIENNA_sine_mains1||]
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$171, DW_AT_external
	.dwattr $C$DW$171, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$171, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$171, DW_AT_decl_column(0x1a)

	.global	||VIENNA_sine_mains2||
||VIENNA_sine_mains2||:	.usect	"controlVariables:uninit",64,1,1
$C$DW$172	.dwtag  DW_TAG_variable
	.dwattr $C$DW$172, DW_AT_name("VIENNA_sine_mains2")
	.dwattr $C$DW$172, DW_AT_linkage_name("VIENNA_sine_mains2")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_addr ||VIENNA_sine_mains2||]
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$172, DW_AT_external
	.dwattr $C$DW$172, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$172, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$172, DW_AT_decl_column(0x2e)

	.global	||VIENNA_sine_mains3||
||VIENNA_sine_mains3||:	.usect	"controlVariables:uninit",64,1,1
$C$DW$173	.dwtag  DW_TAG_variable
	.dwattr $C$DW$173, DW_AT_name("VIENNA_sine_mains3")
	.dwattr $C$DW$173, DW_AT_linkage_name("VIENNA_sine_mains3")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_addr ||VIENNA_sine_mains3||]
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$173, DW_AT_external
	.dwattr $C$DW$173, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$173, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$173, DW_AT_decl_column(0x1a)

	.global	||VIENNA_dBuff1||
||VIENNA_dBuff1||:	.usect	".bss:VIENNA_dBuff1",200,0,1
$C$DW$174	.dwtag  DW_TAG_variable
	.dwattr $C$DW$174, DW_AT_name("VIENNA_dBuff1")
	.dwattr $C$DW$174, DW_AT_linkage_name("VIENNA_dBuff1")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_addr ||VIENNA_dBuff1||]
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$174, DW_AT_external
	.dwattr $C$DW$174, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$174, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$174, DW_AT_decl_column(0x0b)

	.global	||VIENNA_dBuff2||
||VIENNA_dBuff2||:	.usect	".bss:VIENNA_dBuff2",200,0,1
$C$DW$175	.dwtag  DW_TAG_variable
	.dwattr $C$DW$175, DW_AT_name("VIENNA_dBuff2")
	.dwattr $C$DW$175, DW_AT_linkage_name("VIENNA_dBuff2")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_addr ||VIENNA_dBuff2||]
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$175, DW_AT_external
	.dwattr $C$DW$175, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$175, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$175, DW_AT_decl_column(0x1f)

	.global	||VIENNA_dBuff3||
||VIENNA_dBuff3||:	.usect	".bss:VIENNA_dBuff3",200,0,1
$C$DW$176	.dwtag  DW_TAG_variable
	.dwattr $C$DW$176, DW_AT_name("VIENNA_dBuff3")
	.dwattr $C$DW$176, DW_AT_linkage_name("VIENNA_dBuff3")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_addr ||VIENNA_dBuff3||]
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$176, DW_AT_external
	.dwattr $C$DW$176, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$176, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$176, DW_AT_decl_column(0x33)

	.global	||VIENNA_dBuff4||
||VIENNA_dBuff4||:	.usect	".bss:VIENNA_dBuff4",200,0,1
$C$DW$177	.dwtag  DW_TAG_variable
	.dwattr $C$DW$177, DW_AT_name("VIENNA_dBuff4")
	.dwattr $C$DW$177, DW_AT_linkage_name("VIENNA_dBuff4")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_addr ||VIENNA_dBuff4||]
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$177, DW_AT_external
	.dwattr $C$DW$177, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$177, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$177, DW_AT_decl_column(0x0b)

	.sblock	".bss"
	.sblock	".data"
	.sblock	"controlVariables:init"
	.sblock	"controlVariables:uninit"
;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\opt2000.exe C:\\Users\\YAN\\AppData\\Local\\Temp\\{4ABE67BE-95D6-4071-9F7D-AABBF052CEDE} C:\\Users\\YAN\\AppData\\Local\\Temp\\{9238B134-8CDC-479A-8926-910F02F76A2C} --advice:performance=stdout 
;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\acia2000.exe -@C:\\Users\\YAN\\AppData\\Local\\Temp\\{4E21B6FB-DA7C-4C41-AA7F-8606E3DE8174} 
	.sect	".text:__signbitl"
	.clink
	.global	||__signbitl||

$C$DW$178	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$178, DW_AT_name("__signbitl")
	.dwattr $C$DW$178, DW_AT_low_pc(||__signbitl||)
	.dwattr $C$DW$178, DW_AT_high_pc(0x00)
	.dwattr $C$DW$178, DW_AT_linkage_name("__signbitl")
	.dwattr $C$DW$178, DW_AT_external
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$178, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$178, DW_AT_decl_column(0x18)
	.dwattr $C$DW$178, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 349,column 1,is_stmt,address ||__signbitl||,isa 0

	.dwfde $C$DW$CIE, ||__signbitl||
$C$DW$179	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$179, DW_AT_name("e")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg12]


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
$C$DW$180	.dwtag  DW_TAG_variable
	.dwattr $C$DW$180, DW_AT_name("e")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg12]

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
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$181, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |349| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |349| 
        MOVB      AH,#0                 ; [CPU_ALU] |349| 
        CMPB      AL,#0                 ; [CPU_ALU] |349| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |349| 
        MOV       AL,AH                 ; [CPU_ALU] |349| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$178, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$178, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$178, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$178

	.sect	".text:__signbitf"
	.clink
	.global	||__signbitf||

$C$DW$183	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$183, DW_AT_name("__signbitf")
	.dwattr $C$DW$183, DW_AT_low_pc(||__signbitf||)
	.dwattr $C$DW$183, DW_AT_high_pc(0x00)
	.dwattr $C$DW$183, DW_AT_linkage_name("__signbitf")
	.dwattr $C$DW$183, DW_AT_external
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$183, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$183, DW_AT_decl_column(0x18)
	.dwattr $C$DW$183, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 347,column 1,is_stmt,address ||__signbitf||,isa 0

	.dwfde $C$DW$CIE, ||__signbitf||
$C$DW$184	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$184, DW_AT_name("f")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$185	.dwtag  DW_TAG_variable
	.dwattr $C$DW$185, DW_AT_name("f")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$183, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$183, DW_AT_TI_end_line(0x15b)
	.dwattr $C$DW$183, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$183

	.sect	".text:__signbit"
	.clink
	.global	||__signbit||

$C$DW$187	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$187, DW_AT_name("__signbit")
	.dwattr $C$DW$187, DW_AT_low_pc(||__signbit||)
	.dwattr $C$DW$187, DW_AT_high_pc(0x00)
	.dwattr $C$DW$187, DW_AT_linkage_name("__signbit")
	.dwattr $C$DW$187, DW_AT_external
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$187, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x158)
	.dwattr $C$DW$187, DW_AT_decl_column(0x18)
	.dwattr $C$DW$187, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 345,column 1,is_stmt,address ||__signbit||,isa 0

	.dwfde $C$DW$CIE, ||__signbit||
$C$DW$188	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$188, DW_AT_name("d")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg12]


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
$C$DW$189	.dwtag  DW_TAG_variable
	.dwattr $C$DW$189, DW_AT_name("d")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg12]

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
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$190, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |345| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |345| 
        MOVB      AH,#0                 ; [CPU_ALU] |345| 
        CMPB      AL,#0                 ; [CPU_ALU] |345| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |345| 
        MOV       AL,AH                 ; [CPU_ALU] |345| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$187, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$187, DW_AT_TI_end_line(0x159)
	.dwattr $C$DW$187, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$187

	.sect	".text:__relaxed_sqrtf"
	.clink
	.global	||__relaxed_sqrtf||

$C$DW$192	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$192, DW_AT_name("__relaxed_sqrtf")
	.dwattr $C$DW$192, DW_AT_low_pc(||__relaxed_sqrtf||)
	.dwattr $C$DW$192, DW_AT_high_pc(0x00)
	.dwattr $C$DW$192, DW_AT_linkage_name("__relaxed_sqrtf")
	.dwattr $C$DW$192, DW_AT_external
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$192, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0x108)
	.dwattr $C$DW$192, DW_AT_decl_column(0x10)
	.dwattr $C$DW$192, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 265,column 1,is_stmt,address ||__relaxed_sqrtf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sqrtf||
$C$DW$193	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$193, DW_AT_name("x")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$194	.dwtag  DW_TAG_variable
	.dwattr $C$DW$194, DW_AT_name("x")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        SQRTF32   R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$192, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$192, DW_AT_TI_end_line(0x10b)
	.dwattr $C$DW$192, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$192

	.sect	".text:__relaxed_sinf"
	.clink
	.global	||__relaxed_sinf||

$C$DW$196	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$196, DW_AT_name("__relaxed_sinf")
	.dwattr $C$DW$196, DW_AT_low_pc(||__relaxed_sinf||)
	.dwattr $C$DW$196, DW_AT_high_pc(0x00)
	.dwattr $C$DW$196, DW_AT_linkage_name("__relaxed_sinf")
	.dwattr $C$DW$196, DW_AT_external
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$196, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$196, DW_AT_decl_column(0x10)
	.dwattr $C$DW$196, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 270,column 1,is_stmt,address ||__relaxed_sinf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sinf||
$C$DW$197	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$197, DW_AT_name("x")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __relaxed_sinf                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_sinf||:
;* R0    assigned to x
$C$DW$198	.dwtag  DW_TAG_variable
	.dwattr $C$DW$198, DW_AT_name("x")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 271,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        SINPUF32  R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$196, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$196, DW_AT_TI_end_line(0x110)
	.dwattr $C$DW$196, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$196

	.sect	".text:__relaxed_fmodf"
	.clink
	.global	||__relaxed_fmodf||

$C$DW$200	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$200, DW_AT_name("__relaxed_fmodf")
	.dwattr $C$DW$200, DW_AT_low_pc(||__relaxed_fmodf||)
	.dwattr $C$DW$200, DW_AT_high_pc(0x00)
	.dwattr $C$DW$200, DW_AT_linkage_name("__relaxed_fmodf")
	.dwattr $C$DW$200, DW_AT_external
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$200, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0x121)
	.dwattr $C$DW$200, DW_AT_decl_column(0x10)
	.dwattr $C$DW$200, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 290,column 1,is_stmt,address ||__relaxed_fmodf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmodf||
$C$DW$201	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$201, DW_AT_name("y")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$202	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$202, DW_AT_name("x")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$203	.dwtag  DW_TAG_variable
	.dwattr $C$DW$203, DW_AT_name("y")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$204	.dwtag  DW_TAG_variable
	.dwattr $C$DW$204, DW_AT_name("x")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$200, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$200, DW_AT_TI_end_line(0x124)
	.dwattr $C$DW$200, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$200

	.sect	".text:__relaxed_fminf"
	.clink
	.global	||__relaxed_fminf||

$C$DW$206	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$206, DW_AT_name("__relaxed_fminf")
	.dwattr $C$DW$206, DW_AT_low_pc(||__relaxed_fminf||)
	.dwattr $C$DW$206, DW_AT_high_pc(0x00)
	.dwattr $C$DW$206, DW_AT_linkage_name("__relaxed_fminf")
	.dwattr $C$DW$206, DW_AT_external
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$206, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$206, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$206, DW_AT_decl_column(0x10)
	.dwattr $C$DW$206, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 244,column 1,is_stmt,address ||__relaxed_fminf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fminf||
$C$DW$207	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$207, DW_AT_name("x")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$208	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$208, DW_AT_name("y")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$209	.dwtag  DW_TAG_variable
	.dwattr $C$DW$209, DW_AT_name("y")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 245,column 5,is_stmt,isa 0
        MINF32    R0H,R1H               ; [CPU_FPU] |245| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$206, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$206, DW_AT_TI_end_line(0xf6)
	.dwattr $C$DW$206, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$206

	.sect	".text:__relaxed_fmaxf"
	.clink
	.global	||__relaxed_fmaxf||

$C$DW$211	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$211, DW_AT_name("__relaxed_fmaxf")
	.dwattr $C$DW$211, DW_AT_low_pc(||__relaxed_fmaxf||)
	.dwattr $C$DW$211, DW_AT_high_pc(0x00)
	.dwattr $C$DW$211, DW_AT_linkage_name("__relaxed_fmaxf")
	.dwattr $C$DW$211, DW_AT_external
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$211, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0xed)
	.dwattr $C$DW$211, DW_AT_decl_column(0x10)
	.dwattr $C$DW$211, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 238,column 1,is_stmt,address ||__relaxed_fmaxf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmaxf||
$C$DW$212	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$212, DW_AT_name("x")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$213	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$213, DW_AT_name("y")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$214	.dwtag  DW_TAG_variable
	.dwattr $C$DW$214, DW_AT_name("y")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 239,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |239| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$211, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$211, DW_AT_TI_end_line(0xf0)
	.dwattr $C$DW$211, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$211

	.sect	".text:__relaxed_cosf"
	.clink
	.global	||__relaxed_cosf||

$C$DW$216	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$216, DW_AT_name("__relaxed_cosf")
	.dwattr $C$DW$216, DW_AT_low_pc(||__relaxed_cosf||)
	.dwattr $C$DW$216, DW_AT_high_pc(0x00)
	.dwattr $C$DW$216, DW_AT_linkage_name("__relaxed_cosf")
	.dwattr $C$DW$216, DW_AT_external
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$216, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$216, DW_AT_decl_line(0x112)
	.dwattr $C$DW$216, DW_AT_decl_column(0x10)
	.dwattr $C$DW$216, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 275,column 1,is_stmt,address ||__relaxed_cosf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_cosf||
$C$DW$217	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$217, DW_AT_name("x")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: __relaxed_cosf                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||__relaxed_cosf||:
;* R0    assigned to x
$C$DW$218	.dwtag  DW_TAG_variable
	.dwattr $C$DW$218, DW_AT_name("x")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 276,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |276| 
        NOP       ; [CPU_ALU] 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |276| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$216, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$216, DW_AT_TI_end_line(0x115)
	.dwattr $C$DW$216, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$216

	.sect	".text:__relaxed_atanf"
	.clink
	.global	||__relaxed_atanf||

$C$DW$220	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$220, DW_AT_name("__relaxed_atanf")
	.dwattr $C$DW$220, DW_AT_low_pc(||__relaxed_atanf||)
	.dwattr $C$DW$220, DW_AT_high_pc(0x00)
	.dwattr $C$DW$220, DW_AT_linkage_name("__relaxed_atanf")
	.dwattr $C$DW$220, DW_AT_external
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$220, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0x117)
	.dwattr $C$DW$220, DW_AT_decl_column(0x10)
	.dwattr $C$DW$220, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 280,column 1,is_stmt,address ||__relaxed_atanf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atanf||
$C$DW$221	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$221, DW_AT_name("x")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$222	.dwtag  DW_TAG_variable
	.dwattr $C$DW$222, DW_AT_name("x")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$220, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$220, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$220, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$220

	.sect	".text:__relaxed_atan2f"
	.clink
	.global	||__relaxed_atan2f||

$C$DW$224	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$224, DW_AT_name("__relaxed_atan2f")
	.dwattr $C$DW$224, DW_AT_low_pc(||__relaxed_atan2f||)
	.dwattr $C$DW$224, DW_AT_high_pc(0x00)
	.dwattr $C$DW$224, DW_AT_linkage_name("__relaxed_atan2f")
	.dwattr $C$DW$224, DW_AT_external
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$224, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$224, DW_AT_decl_column(0x10)
	.dwattr $C$DW$224, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 285,column 1,is_stmt,address ||__relaxed_atan2f||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atan2f||
$C$DW$225	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$225, DW_AT_name("y")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$226	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$226, DW_AT_name("x")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$227	.dwtag  DW_TAG_variable
	.dwattr $C$DW$227, DW_AT_name("y")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$228	.dwtag  DW_TAG_variable
	.dwattr $C$DW$228, DW_AT_name("x")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$224, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$224, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$224, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$224

	.sect	".text:__isnormall"
	.clink
	.global	||__isnormall||

$C$DW$230	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$230, DW_AT_name("__isnormall")
	.dwattr $C$DW$230, DW_AT_low_pc(||__isnormall||)
	.dwattr $C$DW$230, DW_AT_high_pc(0x00)
	.dwattr $C$DW$230, DW_AT_linkage_name("__isnormall")
	.dwattr $C$DW$230, DW_AT_external
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$230, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0x154)
	.dwattr $C$DW$230, DW_AT_decl_column(0x18)
	.dwattr $C$DW$230, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 341,column 1,is_stmt,address ||__isnormall||,isa 0

	.dwfde $C$DW$CIE, ||__isnormall||
$C$DW$231	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$231, DW_AT_name("e")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg12]


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
$C$DW$232	.dwtag  DW_TAG_variable
	.dwattr $C$DW$232, DW_AT_name("e")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg12]

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
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$233, DW_AT_TI_call

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
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$230, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$230, DW_AT_TI_end_line(0x156)
	.dwattr $C$DW$230, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$230

	.sect	".text:__isnormalf"
	.clink
	.global	||__isnormalf||

$C$DW$235	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$235, DW_AT_name("__isnormalf")
	.dwattr $C$DW$235, DW_AT_low_pc(||__isnormalf||)
	.dwattr $C$DW$235, DW_AT_high_pc(0x00)
	.dwattr $C$DW$235, DW_AT_linkage_name("__isnormalf")
	.dwattr $C$DW$235, DW_AT_external
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$235, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$235, DW_AT_decl_line(0x150)
	.dwattr $C$DW$235, DW_AT_decl_column(0x18)
	.dwattr $C$DW$235, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 337,column 1,is_stmt,address ||__isnormalf||,isa 0

	.dwfde $C$DW$CIE, ||__isnormalf||
$C$DW$236	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$236, DW_AT_name("f")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$237	.dwtag  DW_TAG_variable
	.dwattr $C$DW$237, DW_AT_name("f")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$235, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$235, DW_AT_TI_end_line(0x152)
	.dwattr $C$DW$235, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$235

	.sect	".text:__isnormal"
	.clink
	.global	||__isnormal||

$C$DW$239	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$239, DW_AT_name("__isnormal")
	.dwattr $C$DW$239, DW_AT_low_pc(||__isnormal||)
	.dwattr $C$DW$239, DW_AT_high_pc(0x00)
	.dwattr $C$DW$239, DW_AT_linkage_name("__isnormal")
	.dwattr $C$DW$239, DW_AT_external
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$239, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$239, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$239, DW_AT_decl_column(0x18)
	.dwattr $C$DW$239, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 333,column 1,is_stmt,address ||__isnormal||,isa 0

	.dwfde $C$DW$CIE, ||__isnormal||
$C$DW$240	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$240, DW_AT_name("d")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg12]


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
$C$DW$241	.dwtag  DW_TAG_variable
	.dwattr $C$DW$241, DW_AT_name("d")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_reg12]

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
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$242, DW_AT_TI_call

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
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$239, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$239, DW_AT_TI_end_line(0x14e)
	.dwattr $C$DW$239, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$239

	.sect	".text:__isnanl"
	.clink
	.global	||__isnanl||

$C$DW$244	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$244, DW_AT_name("__isnanl")
	.dwattr $C$DW$244, DW_AT_low_pc(||__isnanl||)
	.dwattr $C$DW$244, DW_AT_high_pc(0x00)
	.dwattr $C$DW$244, DW_AT_linkage_name("__isnanl")
	.dwattr $C$DW$244, DW_AT_external
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$244, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0x148)
	.dwattr $C$DW$244, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$244, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 329,column 1,is_stmt,address ||__isnanl||,isa 0

	.dwfde $C$DW$CIE, ||__isnanl||
$C$DW$245	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$245, DW_AT_name("e")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_reg12]


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
$C$DW$246	.dwtag  DW_TAG_variable
	.dwattr $C$DW$246, DW_AT_name("e")
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$246, DW_AT_location[DW_OP_reg12]

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
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$247, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |329| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |329| 
        CMPB      AL,#0                 ; [CPU_ALU] |329| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |329| 
||$C$L4||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |329| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$244, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$244, DW_AT_TI_end_line(0x14a)
	.dwattr $C$DW$244, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$244

	.sect	".text:__isnanf"
	.clink
	.global	||__isnanf||

$C$DW$249	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$249, DW_AT_name("__isnanf")
	.dwattr $C$DW$249, DW_AT_low_pc(||__isnanf||)
	.dwattr $C$DW$249, DW_AT_high_pc(0x00)
	.dwattr $C$DW$249, DW_AT_linkage_name("__isnanf")
	.dwattr $C$DW$249, DW_AT_external
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$249, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0x145)
	.dwattr $C$DW$249, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$249, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 326,column 1,is_stmt,address ||__isnanf||,isa 0

	.dwfde $C$DW$CIE, ||__isnanf||
$C$DW$250	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$250, DW_AT_name("f")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$251	.dwtag  DW_TAG_variable
	.dwattr $C$DW$251, DW_AT_name("f")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$249, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$249, DW_AT_TI_end_line(0x147)
	.dwattr $C$DW$249, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$249

	.sect	".text:__isnan"
	.clink
	.global	||__isnan||

$C$DW$253	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$253, DW_AT_name("__isnan")
	.dwattr $C$DW$253, DW_AT_low_pc(||__isnan||)
	.dwattr $C$DW$253, DW_AT_high_pc(0x00)
	.dwattr $C$DW$253, DW_AT_linkage_name("__isnan")
	.dwattr $C$DW$253, DW_AT_external
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$253, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0x142)
	.dwattr $C$DW$253, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$253, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 323,column 1,is_stmt,address ||__isnan||,isa 0

	.dwfde $C$DW$CIE, ||__isnan||
$C$DW$254	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$254, DW_AT_name("d")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_reg12]


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
$C$DW$255	.dwtag  DW_TAG_variable
	.dwattr $C$DW$255, DW_AT_name("d")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg12]

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
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$256, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |323| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |323| 
        CMPB      AL,#0                 ; [CPU_ALU] |323| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |323| 
||$C$L6||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |323| 
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$253, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$253, DW_AT_TI_end_line(0x144)
	.dwattr $C$DW$253, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$253

	.sect	".text:__isinfl"
	.clink
	.global	||__isinfl||

$C$DW$258	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$258, DW_AT_name("__isinfl")
	.dwattr $C$DW$258, DW_AT_low_pc(||__isinfl||)
	.dwattr $C$DW$258, DW_AT_high_pc(0x00)
	.dwattr $C$DW$258, DW_AT_linkage_name("__isinfl")
	.dwattr $C$DW$258, DW_AT_external
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$258, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$258, DW_AT_decl_line(0x167)
	.dwattr $C$DW$258, DW_AT_decl_column(0x18)
	.dwattr $C$DW$258, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 360,column 1,is_stmt,address ||__isinfl||,isa 0

	.dwfde $C$DW$CIE, ||__isinfl||
$C$DW$259	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$259, DW_AT_name("e")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_reg12]


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
$C$DW$260	.dwtag  DW_TAG_variable
	.dwattr $C$DW$260, DW_AT_name("e")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_reg12]

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
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$261, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |360| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |360| 
        CMPB      AL,#0                 ; [CPU_ALU] |360| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |360| 
||$C$L7||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |360| 
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$258, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$258, DW_AT_TI_end_line(0x168)
	.dwattr $C$DW$258, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$258

	.sect	".text:__isinff"
	.clink
	.global	||__isinff||

$C$DW$263	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$263, DW_AT_name("__isinff")
	.dwattr $C$DW$263, DW_AT_low_pc(||__isinff||)
	.dwattr $C$DW$263, DW_AT_high_pc(0x00)
	.dwattr $C$DW$263, DW_AT_linkage_name("__isinff")
	.dwattr $C$DW$263, DW_AT_external
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$263, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0x163)
	.dwattr $C$DW$263, DW_AT_decl_column(0x18)
	.dwattr $C$DW$263, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 356,column 1,is_stmt,address ||__isinff||,isa 0

	.dwfde $C$DW$CIE, ||__isinff||
$C$DW$264	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$264, DW_AT_name("f")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$265	.dwtag  DW_TAG_variable
	.dwattr $C$DW$265, DW_AT_name("f")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$263, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$263, DW_AT_TI_end_line(0x164)
	.dwattr $C$DW$263, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$263

	.sect	".text:__isinf"
	.clink
	.global	||__isinf||

$C$DW$267	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$267, DW_AT_name("__isinf")
	.dwattr $C$DW$267, DW_AT_low_pc(||__isinf||)
	.dwattr $C$DW$267, DW_AT_high_pc(0x00)
	.dwattr $C$DW$267, DW_AT_linkage_name("__isinf")
	.dwattr $C$DW$267, DW_AT_external
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$267, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0x165)
	.dwattr $C$DW$267, DW_AT_decl_column(0x18)
	.dwattr $C$DW$267, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 358,column 1,is_stmt,address ||__isinf||,isa 0

	.dwfde $C$DW$CIE, ||__isinf||
$C$DW$268	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$268, DW_AT_name("d")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg12]


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
$C$DW$269	.dwtag  DW_TAG_variable
	.dwattr $C$DW$269, DW_AT_name("d")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_reg12]

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
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$270, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |358| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |358| 
        CMPB      AL,#0                 ; [CPU_ALU] |358| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |358| 
||$C$L9||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |358| 
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$267, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$267, DW_AT_TI_end_line(0x166)
	.dwattr $C$DW$267, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$267

	.sect	".text:__isfinitel"
	.clink
	.global	||__isfinitel||

$C$DW$272	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$272, DW_AT_name("__isfinitel")
	.dwattr $C$DW$272, DW_AT_low_pc(||__isfinitel||)
	.dwattr $C$DW$272, DW_AT_high_pc(0x00)
	.dwattr $C$DW$272, DW_AT_linkage_name("__isfinitel")
	.dwattr $C$DW$272, DW_AT_external
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$272, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$272, DW_AT_decl_column(0x18)
	.dwattr $C$DW$272, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 320,column 1,is_stmt,address ||__isfinitel||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitel||
$C$DW$273	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$273, DW_AT_name("e")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_reg12]


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
$C$DW$274	.dwtag  DW_TAG_variable
	.dwattr $C$DW$274, DW_AT_name("e")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_reg12]

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
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$272, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$272, DW_AT_TI_end_line(0x140)
	.dwattr $C$DW$272, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$272

	.sect	".text:__isfinitef"
	.clink
	.global	||__isfinitef||

$C$DW$276	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$276, DW_AT_name("__isfinitef")
	.dwattr $C$DW$276, DW_AT_low_pc(||__isfinitef||)
	.dwattr $C$DW$276, DW_AT_high_pc(0x00)
	.dwattr $C$DW$276, DW_AT_linkage_name("__isfinitef")
	.dwattr $C$DW$276, DW_AT_external
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$276, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$276, DW_AT_decl_column(0x18)
	.dwattr $C$DW$276, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 318,column 1,is_stmt,address ||__isfinitef||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitef||
$C$DW$277	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$277, DW_AT_name("f")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$278	.dwtag  DW_TAG_variable
	.dwattr $C$DW$278, DW_AT_name("f")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$276, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$276, DW_AT_TI_end_line(0x13e)
	.dwattr $C$DW$276, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$276

	.sect	".text:__isfinite"
	.clink
	.global	||__isfinite||

$C$DW$280	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$280, DW_AT_name("__isfinite")
	.dwattr $C$DW$280, DW_AT_low_pc(||__isfinite||)
	.dwattr $C$DW$280, DW_AT_high_pc(0x00)
	.dwattr $C$DW$280, DW_AT_linkage_name("__isfinite")
	.dwattr $C$DW$280, DW_AT_external
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$280, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$280, DW_AT_decl_column(0x18)
	.dwattr $C$DW$280, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 316,column 1,is_stmt,address ||__isfinite||,isa 0

	.dwfde $C$DW$CIE, ||__isfinite||
$C$DW$281	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$281, DW_AT_name("d")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg12]


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
$C$DW$282	.dwtag  DW_TAG_variable
	.dwattr $C$DW$282, DW_AT_name("d")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg12]

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
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$280, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$280, DW_AT_TI_end_line(0x13c)
	.dwattr $C$DW$280, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$280

	.sect	".text:__fpclassifyl"
	.clink
	.global	||__fpclassifyl||

$C$DW$284	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$284, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$284, DW_AT_low_pc(||__fpclassifyl||)
	.dwattr $C$DW$284, DW_AT_high_pc(0x00)
	.dwattr $C$DW$284, DW_AT_linkage_name("__fpclassifyl")
	.dwattr $C$DW$284, DW_AT_external
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$284, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$284, DW_AT_decl_column(0x18)
	.dwattr $C$DW$284, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 412,column 1,is_stmt,address ||__fpclassifyl||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyl||
$C$DW$285	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$285, DW_AT_name("e")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassifyl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyl||:
$C$DW$286	.dwtag  DW_TAG_variable
	.dwattr $C$DW$286, DW_AT_name("e")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to e
$C$DW$287	.dwtag  DW_TAG_variable
	.dwattr $C$DW$287, DW_AT_name("e")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg12]

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
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$288, DW_AT_TI_call

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
$C$DW$289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$289, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$289, DW_AT_TI_call

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
$C$DW$290	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$290, DW_AT_low_pc(0x00)
	.dwattr $C$DW$290, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$290, DW_AT_TI_call

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
$C$DW$291	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$291, DW_AT_low_pc(0x00)
	.dwattr $C$DW$291, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$284, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$284, DW_AT_TI_end_line(0x1aa)
	.dwattr $C$DW$284, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$284

	.sect	".text:__fpclassifyf"
	.clink
	.global	||__fpclassifyf||

$C$DW$292	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$292, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$292, DW_AT_low_pc(||__fpclassifyf||)
	.dwattr $C$DW$292, DW_AT_high_pc(0x00)
	.dwattr $C$DW$292, DW_AT_linkage_name("__fpclassifyf")
	.dwattr $C$DW$292, DW_AT_external
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$292, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0x179)
	.dwattr $C$DW$292, DW_AT_decl_column(0x18)
	.dwattr $C$DW$292, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 378,column 1,is_stmt,address ||__fpclassifyf||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyf||
$C$DW$293	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$293, DW_AT_name("f")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$294	.dwtag  DW_TAG_variable
	.dwattr $C$DW$294, DW_AT_name("f")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$295	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$295, DW_AT_low_pc(0x00)
	.dwattr $C$DW$295, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L15||:    
	.dwcfi	remember_state
        MOVB      AL,#1                 ; [CPU_ALU] |383| 
$C$DW$296	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$296, DW_AT_low_pc(0x00)
	.dwattr $C$DW$296, DW_AT_TI_return

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
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_TI_return

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
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L18||:    
        MOVB      AL,#0                 ; [CPU_ALU] |383| 
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$292, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$292, DW_AT_TI_end_line(0x188)
	.dwattr $C$DW$292, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$292

	.sect	".text:__fpclassify"
	.clink
	.global	||__fpclassify||

$C$DW$300	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$300, DW_AT_name("__fpclassify")
	.dwattr $C$DW$300, DW_AT_low_pc(||__fpclassify||)
	.dwattr $C$DW$300, DW_AT_high_pc(0x00)
	.dwattr $C$DW$300, DW_AT_linkage_name("__fpclassify")
	.dwattr $C$DW$300, DW_AT_external
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$300, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$300, DW_AT_decl_column(0x18)
	.dwattr $C$DW$300, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 395,column 1,is_stmt,address ||__fpclassify||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassify||
$C$DW$301	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$301, DW_AT_name("d")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$301, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassify                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassify||:
$C$DW$302	.dwtag  DW_TAG_variable
	.dwattr $C$DW$302, DW_AT_name("d")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to d
$C$DW$303	.dwtag  DW_TAG_variable
	.dwattr $C$DW$303, DW_AT_name("d")
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$303, DW_AT_location[DW_OP_reg12]

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
$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$304, DW_AT_TI_call

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
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$305, DW_AT_TI_call

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
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$306, DW_AT_TI_call

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
$C$DW$307	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$307, DW_AT_low_pc(0x00)
	.dwattr $C$DW$307, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$300, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$300, DW_AT_TI_end_line(0x199)
	.dwattr $C$DW$300, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$300

	.sect	".text"
	.clink
	.global	||VIENNA_updateBoardStatus||

$C$DW$308	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$308, DW_AT_name("VIENNA_updateBoardStatus")
	.dwattr $C$DW$308, DW_AT_low_pc(||VIENNA_updateBoardStatus||)
	.dwattr $C$DW$308, DW_AT_high_pc(0x00)
	.dwattr $C$DW$308, DW_AT_linkage_name("VIENNA_updateBoardStatus")
	.dwattr $C$DW$308, DW_AT_external
	.dwattr $C$DW$308, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$308, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$308, DW_AT_decl_column(0x06)
	.dwattr $C$DW$308, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna.c",line 228,column 1,is_stmt,address ||VIENNA_updateBoardStatus||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_updateBoardStatus||

;***************************************************************
;* FNAME: VIENNA_updateBoardStatus      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_updateBoardStatus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||VIENNA_buildInfo|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna.c",line 249,column 9,is_stmt,isa 0
        MOVB      @||VIENNA_buildInfo||,#3,UNC ; [CPU_ALU] |249| 
$C$DW$309	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$309, DW_AT_low_pc(0x00)
	.dwattr $C$DW$309, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$308, DW_AT_TI_end_file("../vienna.c")
	.dwattr $C$DW$308, DW_AT_TI_end_line(0xfe)
	.dwattr $C$DW$308, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$308

	.sect	".text"
	.clink
	.global	||VIENNA_setupSFRA||

$C$DW$310	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$310, DW_AT_name("VIENNA_setupSFRA")
	.dwattr $C$DW$310, DW_AT_low_pc(||VIENNA_setupSFRA||)
	.dwattr $C$DW$310, DW_AT_high_pc(0x00)
	.dwattr $C$DW$310, DW_AT_linkage_name("VIENNA_setupSFRA")
	.dwattr $C$DW$310, DW_AT_external
	.dwattr $C$DW$310, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$310, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$310, DW_AT_decl_column(0x06)
	.dwattr $C$DW$310, DW_AT_TI_max_frame_size(-20)
	.dwpsn	file "../vienna.c",line 268,column 1,is_stmt,address ||VIENNA_setupSFRA||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_setupSFRA||

;***************************************************************
;* FNAME: VIENNA_setupSFRA              FR SIZE:  18           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                           15 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||VIENNA_setupSFRA||:
;* AR1   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#16                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -20
	.dwpsn	file "../vienna.c",line 269,column 5,is_stmt,isa 0
        MOVL      XAR1,#||VIENNA_sfra1|| ; [CPU_ARAU] |269| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |269| 
$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_name("SFRA_F32_reset")
	.dwattr $C$DW$311, DW_AT_TI_call

        LCR       #||SFRA_F32_reset||   ; [CPU_ALU] |269| 
        ; call occurs [#||SFRA_F32_reset||] ; [] |269| 
	.dwpsn	file "../vienna.c",line 270,column 5,is_stmt,isa 0
        MOVL      XAR6,#||VIENNA_plantPhaseVect|| ; [CPU_ARAU] |270| 
        MOVIZ     R0H,#18243            ; [CPU_FPU] |270| 
        MOVIZ     R1H,#15172            ; [CPU_FPU] |270| 
        MOVIZ     R3H,#16266            ; [CPU_FPU] |270| 
        MOVL      XAR5,#||VIENNA_olMagVect|| ; [CPU_ARAU] |270| 
        MOVL      XAR4,#||VIENNA_olPhaseVect|| ; [CPU_ARAU] |270| 
        MOVB      XAR7,#0               ; [CPU_ALU] |270| 
        MOVB      ACC,#0                ; [CPU_ALU] |270| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |270| 
        MOVIZ     R2H,#16384            ; [CPU_FPU] |270| 
        MOVXI     R0H,#20480            ; [CPU_FPU] |270| 
        MOVXI     R1H,#39846            ; [CPU_FPU] |270| 
        MOVXI     R3H,#15729            ; [CPU_FPU] |270| 
        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |270| 
        MOVL      XAR5,#||VIENNA_freqVect|| ; [CPU_ARAU] |270| 
        MOVL      *-SP[6],XAR4          ; [CPU_ALU] |270| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |270| 
        MOVL      *-SP[8],XAR7          ; [CPU_ALU] |270| 
        MOVL      *-SP[10],ACC          ; [CPU_ALU] |270| 
        MOVB      AL,#30                ; [CPU_ALU] |270| 
        MOVB      AH,#1                 ; [CPU_ALU] |270| 
        MOVL      *-SP[12],XAR5         ; [CPU_ALU] |270| 
        MOVL      XAR5,#||VIENNA_plantMagVect|| ; [CPU_ARAU] |270| 
$C$DW$312	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$312, DW_AT_low_pc(0x00)
	.dwattr $C$DW$312, DW_AT_name("SFRA_F32_config")
	.dwattr $C$DW$312, DW_AT_TI_call

        LCR       #||SFRA_F32_config||  ; [CPU_ALU] |270| 
        ; call occurs [#||SFRA_F32_config||] ; [] |270| 
	.dwpsn	file "../vienna.c",line 285,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |285| 
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_name("SFRA_F32_resetFreqRespArray")
	.dwattr $C$DW$313, DW_AT_TI_call

        LCR       #||SFRA_F32_resetFreqRespArray|| ; [CPU_ALU] |285| 
        ; call occurs [#||SFRA_F32_resetFreqRespArray||] ; [] |285| 
	.dwpsn	file "../vienna.c",line 287,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16266            ; [CPU_FPU] |287| 
        MOVIZ     R0H,#16384            ; [CPU_FPU] |287| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |287| 
        MOVXI     R1H,#15729            ; [CPU_FPU] |287| 
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_name("SFRA_F32_initFreqArrayWithLogSteps")
	.dwattr $C$DW$314, DW_AT_TI_call

        LCR       #||SFRA_F32_initFreqArrayWithLogSteps|| ; [CPU_ALU] |287| 
        ; call occurs [#||SFRA_F32_initFreqArrayWithLogSteps||] ; [] |287| 
	.dwpsn	file "../vienna.c",line 297,column 5,is_stmt,isa 0
        MOV       AL,#61568             ; [CPU_ALU] |297| 
        MOV       AH,#762               ; [CPU_ALU] |297| 
        MOVL      XAR6,#57600           ; [CPU_ARAU] |297| 
        MOVL      XAR5,#530433          ; [CPU_ARAU] |297| 
        MOVL      XAR4,#530945          ; [CPU_ARAU] |297| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |297| 
        MOVL      *-SP[4],XAR6          ; [CPU_ALU] |297| 
        MOV       ACC,#29184            ; [CPU_ALU] |297| 
        MOVL      *-SP[6],XAR5          ; [CPU_ALU] |297| 
        MOVB      *-SP[7],#29,UNC       ; [CPU_ALU] |297| 
        MOVL      XAR5,#531968          ; [CPU_ARAU] |297| 
        MOVL      *-SP[10],XAR4         ; [CPU_ALU] |297| 
        MOVB      *-SP[11],#1,UNC       ; [CPU_ALU] |297| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |297| 
        MOVB      *-SP[12],#31,UNC      ; [CPU_ALU] |297| 
        MOVL      *-SP[14],XAR5         ; [CPU_ALU] |297| 
        MOVB      XAR5,#28              ; [CPU_ALU] |297| 
        MOVB      *-SP[15],#1,UNC       ; [CPU_ALU] |297| 
$C$DW$315	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$315, DW_AT_low_pc(0x00)
	.dwattr $C$DW$315, DW_AT_name("SFRA_GUI_config")
	.dwattr $C$DW$315, DW_AT_TI_call

        LCR       #||SFRA_GUI_config||  ; [CPU_ALU] |297| 
        ; call occurs [#||SFRA_GUI_config||] ; [] |297| 
        SUBB      SP,#16                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$316	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$316, DW_AT_low_pc(0x00)
	.dwattr $C$DW$316, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$310, DW_AT_TI_end_file("../vienna.c")
	.dwattr $C$DW$310, DW_AT_TI_end_line(0x136)
	.dwattr $C$DW$310, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$310

	.sect	".text"
	.clink
	.global	||VIENNA_runSFRABackGroundTasks||

$C$DW$317	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$317, DW_AT_name("VIENNA_runSFRABackGroundTasks")
	.dwattr $C$DW$317, DW_AT_low_pc(||VIENNA_runSFRABackGroundTasks||)
	.dwattr $C$DW$317, DW_AT_high_pc(0x00)
	.dwattr $C$DW$317, DW_AT_linkage_name("VIENNA_runSFRABackGroundTasks")
	.dwattr $C$DW$317, DW_AT_external
	.dwattr $C$DW$317, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$317, DW_AT_decl_line(0x100)
	.dwattr $C$DW$317, DW_AT_decl_column(0x06)
	.dwattr $C$DW$317, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna.c",line 257,column 1,is_stmt,address ||VIENNA_runSFRABackGroundTasks||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_runSFRABackGroundTasks||

;***************************************************************
;* FNAME: VIENNA_runSFRABackGroundTasks FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||VIENNA_runSFRABackGroundTasks||:
;* AR1   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna.c",line 259,column 5,is_stmt,isa 0
        MOVL      XAR1,#||VIENNA_sfra1|| ; [CPU_ARAU] |259| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |259| 
$C$DW$318	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$318, DW_AT_low_pc(0x00)
	.dwattr $C$DW$318, DW_AT_name("SFRA_F32_runBackgroundTask")
	.dwattr $C$DW$318, DW_AT_TI_call

        LCR       #||SFRA_F32_runBackgroundTask|| ; [CPU_ALU] |259| 
        ; call occurs [#||SFRA_F32_runBackgroundTask||] ; [] |259| 
	.dwpsn	file "../vienna.c",line 260,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR1             ; [CPU_ALU] |260| 
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_name("SFRA_GUI_runSerialHostComms")
	.dwattr $C$DW$319, DW_AT_TI_call

        LCR       #||SFRA_GUI_runSerialHostComms|| ; [CPU_ALU] |260| 
        ; call occurs [#||SFRA_GUI_runSerialHostComms||] ; [] |260| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$317, DW_AT_TI_end_file("../vienna.c")
	.dwattr $C$DW$317, DW_AT_TI_end_line(0x106)
	.dwattr $C$DW$317, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$317

	.sect	".text"
	.clink
	.global	||VIENNA_globalVariablesInit||

$C$DW$321	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$321, DW_AT_name("VIENNA_globalVariablesInit")
	.dwattr $C$DW$321, DW_AT_low_pc(||VIENNA_globalVariablesInit||)
	.dwattr $C$DW$321, DW_AT_high_pc(0x00)
	.dwattr $C$DW$321, DW_AT_linkage_name("VIENNA_globalVariablesInit")
	.dwattr $C$DW$321, DW_AT_external
	.dwattr $C$DW$321, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$321, DW_AT_decl_line(0x140)
	.dwattr $C$DW$321, DW_AT_decl_column(0x06)
	.dwattr $C$DW$321, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../vienna.c",line 321,column 1,is_stmt,address ||VIENNA_globalVariablesInit||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_globalVariablesInit||

;***************************************************************
;* FNAME: VIENNA_globalVariablesInit    FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  8 SOE     *
;***************************************************************

||VIENNA_globalVariablesInit||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../vienna.c",line 337,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |337| 
        MOVW      DP,#||VIENNA_gv||+4   ; [CPU_ARAU] 
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     @$BLOCKED(||VIENNA_gv||)+4,R0H ; [CPU_FPU] |337| 
	.dwpsn	file "../vienna.c",line 325,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |325| 
        MOVW      DP,#||VIENNA_fcsSwitchState|| ; [CPU_ARAU] 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../vienna.c",line 323,column 5,is_stmt,isa 0
        MOV       @||VIENNA_fcsSwitchState||,#0 ; [CPU_ALU] |323| 
	.dwpsn	file "../vienna.c",line 324,column 5,is_stmt,isa 0
        MOV       @||VIENNA_fcsOffReady||,#0 ; [CPU_ALU] |324| 
	.dwpsn	file "../vienna.c",line 333,column 5,is_stmt,isa 0
        MOVIZ     R4H,#14595            ; [CPU_FPU] |333| 
	.dwpsn	file "../vienna.c",line 334,column 5,is_stmt,isa 0
        MOVIZ     R3H,#16076            ; [CPU_FPU] |334| 
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
	.dwpsn	file "../vienna.c",line 335,column 5,is_stmt,isa 0
        MOVIZ     R2H,#16179            ; [CPU_FPU] |335| 
	.dwpsn	file "../vienna.c",line 336,column 5,is_stmt,isa 0
        MOVIZ     R1H,#48291            ; [CPU_FPU] |336| 
	.dwpsn	file "../vienna.c",line 325,column 5,is_stmt,isa 0
        MOVL      @||VIENNA_fcsIsrCycles||,ACC ; [CPU_ALU] |325| 
	.dwpsn	file "../vienna.c",line 326,column 5,is_stmt,isa 0
        MOVL      @||VIENNA_fcsIsrCyclesMax||,ACC ; [CPU_ALU] |326| 
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 8
	.dwcfi	cfa_offset, -10
	.dwpsn	file "../vienna.c",line 327,column 5,is_stmt,isa 0
        MOVL      @||VIENNA_fcsDeadlineMissCount||,ACC ; [CPU_ALU] |327| 
	.dwpsn	file "../vienna.c",line 330,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_vBusRef_pu||,R0H ; [CPU_FPU] |330| 
	.dwpsn	file "../vienna.c",line 331,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_vBusRefSlewed_pu||,R0H ; [CPU_FPU] |331| 
	.dwpsn	file "../vienna.c",line 340,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_gv_out||,R0H ; [CPU_FPU] |340| 
	.dwpsn	file "../vienna.c",line 341,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_voltage_error_pu||,R0H ; [CPU_FPU] |341| 
	.dwpsn	file "../vienna.c",line 345,column 9,is_stmt,isa 0
        MOV       @||VIENNA_nonLinearVoltageLoopFlag||,#0 ; [CPU_ALU] |345| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 123,column 5,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_dVal1|| ; [CPU_ARAU] |123| 
	.dwpsn	file "../vienna.c",line 348,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_gi_out1||,R0H ; [CPU_FPU] |348| 
	.dwpsn	file "../vienna.c",line 349,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_gi_out2||,R0H ; [CPU_FPU] |349| 
	.dwpsn	file "../vienna.c",line 350,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_gi_out3||,R0H ; [CPU_FPU] |350| 
	.dwpsn	file "../vienna.c",line 437,column 5,is_stmt,isa 0
        MOVIZ     R5H,#17240            ; [CPU_FPU] |437| 
	.dwpsn	file "../vienna.c",line 333,column 5,is_stmt,isa 0
        MOVXI     R4H,#50871            ; [CPU_FPU] |333| 
	.dwpsn	file "../vienna.c",line 334,column 5,is_stmt,isa 0
        MOVXI     R3H,#51585            ; [CPU_FPU] |334| 
	.dwpsn	file "../vienna.c",line 335,column 5,is_stmt,isa 0
        MOVXI     R2H,#13107            ; [CPU_FPU] |335| 
	.dwpsn	file "../vienna.c",line 336,column 5,is_stmt,isa 0
        MOVXI     R1H,#55050            ; [CPU_FPU] |336| 
	.dwpsn	file "../vienna.c",line 351,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16384            ; [CPU_FPU] |351| 
	.dwpsn	file "../vienna.c",line 435,column 5,is_stmt,isa 0
        ZERO      R6H                   ; [CPU_FPU] |435| 
	.dwpsn	file "../vienna.c",line 338,column 5,is_stmt,isa 0
        ZERO      R7H                   ; [CPU_FPU] |338| 
	.dwpsn	file "../vienna.c",line 351,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_gi_gainKp||,R0H ; [CPU_FPU] |351| 
	.dwpsn	file "../vienna.c",line 353,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16256            ; [CPU_FPU] |353| 
        MOV32     @||VIENNA_gs_gainKp||,R0H ; [CPU_FPU] |353| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 107,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |107| 
        MOVW      DP,#||VIENNA_sine_mains1||+8 ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+8,R0H ; [CPU_FPU] |107| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 108,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+10,R0H ; [CPU_FPU] |108| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 109,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+12,R0H ; [CPU_FPU] |109| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 110,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+14,R0H ; [CPU_FPU] |110| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 111,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+18,R0H ; [CPU_FPU] |111| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 112,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+20,R0H ; [CPU_FPU] |112| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 113,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+22,R0H ; [CPU_FPU] |113| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 114,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+24,R0H ; [CPU_FPU] |114| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 115,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_sine_mains1||)+26,#0 ; [CPU_ALU] |115| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 116,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+28,R0H ; [CPU_FPU] |116| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 117,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+30,R0H ; [CPU_FPU] |117| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 118,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+32,R0H ; [CPU_FPU] |118| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 119,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+36,R0H ; [CPU_FPU] |119| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 120,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+38,R0H ; [CPU_FPU] |120| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 121,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+40,R0H ; [CPU_FPU] |121| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 122,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+42,R0H ; [CPU_FPU] |122| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 123,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_sine_mains1||)+44,#0 ; [CPU_ALU] |123| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 124,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_sine_mains1||)+45,#0 ; [CPU_ALU] |124| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 125,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_sine_mains1||)+46,ACC ; [CPU_ALU] |125| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 126,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_sine_mains1||)+48,ACC ; [CPU_ALU] |126| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 127,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_sine_mains1||)+50,ACC ; [CPU_ALU] |127| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 152,column 5,is_stmt,isa 0
        MOVB      ACC,#250              ; [CPU_ALU] |152| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 128,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+52,R0H ; [CPU_FPU] |128| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 129,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+54,R0H ; [CPU_FPU] |129| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 130,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+58,R0H ; [CPU_FPU] |130| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 131,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+34,R0H ; [CPU_FPU] |131| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 132,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+16,R0H ; [CPU_FPU] |132| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 133,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_sine_mains1||)+60,#0 ; [CPU_ALU] |133| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 134,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+62,R0H ; [CPU_FPU] |134| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 150,column 5,is_stmt,isa 0
        MOVIZ     R0H,#17948            ; [CPU_FPU] |150| 
        MOVXI     R0H,#16384            ; [CPU_FPU] |150| 
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+4,R0H ; [CPU_FPU] |150| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 151,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15779            ; [CPU_FPU] |151| 
        MOVXI     R0H,#55050            ; [CPU_FPU] |151| 
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+6,R0H ; [CPU_FPU] |151| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 154,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14673            ; [CPU_FPU] |154| 
        MOVXI     R0H,#46871            ; [CPU_FPU] |154| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 152,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_sine_mains1||)+50,ACC ; [CPU_ALU] |152| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 153,column 5,is_stmt,isa 0
        MOVB      ACC,#90               ; [CPU_ALU] |153| 
        MOVL      @$BLOCKED(||VIENNA_sine_mains1||)+48,ACC ; [CPU_ALU] |153| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 125,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |125| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 154,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains1||)+62,R0H ; [CPU_FPU] |154| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 107,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |107| 
        MOVW      DP,#||VIENNA_sine_mains2||+8 ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+8,R0H ; [CPU_FPU] |107| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 108,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+10,R0H ; [CPU_FPU] |108| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 109,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+12,R0H ; [CPU_FPU] |109| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 110,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+14,R0H ; [CPU_FPU] |110| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 111,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+18,R0H ; [CPU_FPU] |111| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 112,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+20,R0H ; [CPU_FPU] |112| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 113,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+22,R0H ; [CPU_FPU] |113| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 114,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+24,R0H ; [CPU_FPU] |114| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 115,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_sine_mains2||)+26,#0 ; [CPU_ALU] |115| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 116,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+28,R0H ; [CPU_FPU] |116| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 117,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+30,R0H ; [CPU_FPU] |117| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 118,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+32,R0H ; [CPU_FPU] |118| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 119,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+36,R0H ; [CPU_FPU] |119| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 120,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+38,R0H ; [CPU_FPU] |120| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 121,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+40,R0H ; [CPU_FPU] |121| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 122,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+42,R0H ; [CPU_FPU] |122| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 123,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_sine_mains2||)+44,#0 ; [CPU_ALU] |123| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 124,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_sine_mains2||)+45,#0 ; [CPU_ALU] |124| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 125,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_sine_mains2||)+46,ACC ; [CPU_ALU] |125| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 126,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_sine_mains2||)+48,ACC ; [CPU_ALU] |126| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 127,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_sine_mains2||)+50,ACC ; [CPU_ALU] |127| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 152,column 5,is_stmt,isa 0
        MOVB      ACC,#250              ; [CPU_ALU] |152| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 128,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+52,R0H ; [CPU_FPU] |128| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 129,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+54,R0H ; [CPU_FPU] |129| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 130,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+58,R0H ; [CPU_FPU] |130| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 131,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+34,R0H ; [CPU_FPU] |131| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 132,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+16,R0H ; [CPU_FPU] |132| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 133,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_sine_mains2||)+60,#0 ; [CPU_ALU] |133| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 134,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+62,R0H ; [CPU_FPU] |134| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 150,column 5,is_stmt,isa 0
        MOVIZ     R0H,#17948            ; [CPU_FPU] |150| 
        MOVXI     R0H,#16384            ; [CPU_FPU] |150| 
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+4,R0H ; [CPU_FPU] |150| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 151,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15779            ; [CPU_FPU] |151| 
        MOVXI     R0H,#55050            ; [CPU_FPU] |151| 
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+6,R0H ; [CPU_FPU] |151| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 154,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14673            ; [CPU_FPU] |154| 
        MOVXI     R0H,#46871            ; [CPU_FPU] |154| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 152,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_sine_mains2||)+50,ACC ; [CPU_ALU] |152| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 153,column 5,is_stmt,isa 0
        MOVB      ACC,#90               ; [CPU_ALU] |153| 
        MOVL      @$BLOCKED(||VIENNA_sine_mains2||)+48,ACC ; [CPU_ALU] |153| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 125,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |125| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 154,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains2||)+62,R0H ; [CPU_FPU] |154| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 107,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |107| 
        MOVW      DP,#||VIENNA_sine_mains3||+8 ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+8,R0H ; [CPU_FPU] |107| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 108,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+10,R0H ; [CPU_FPU] |108| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 109,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+12,R0H ; [CPU_FPU] |109| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 110,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+14,R0H ; [CPU_FPU] |110| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 111,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+18,R0H ; [CPU_FPU] |111| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 112,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+20,R0H ; [CPU_FPU] |112| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 113,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+22,R0H ; [CPU_FPU] |113| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 114,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+24,R0H ; [CPU_FPU] |114| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 115,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_sine_mains3||)+26,#0 ; [CPU_ALU] |115| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 116,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+28,R0H ; [CPU_FPU] |116| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 117,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+30,R0H ; [CPU_FPU] |117| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 118,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+32,R0H ; [CPU_FPU] |118| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 119,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+36,R0H ; [CPU_FPU] |119| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 120,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+38,R0H ; [CPU_FPU] |120| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 121,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+40,R0H ; [CPU_FPU] |121| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 122,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+42,R0H ; [CPU_FPU] |122| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 123,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_sine_mains3||)+44,#0 ; [CPU_ALU] |123| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 124,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_sine_mains3||)+45,#0 ; [CPU_ALU] |124| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 125,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_sine_mains3||)+46,ACC ; [CPU_ALU] |125| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 126,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_sine_mains3||)+48,ACC ; [CPU_ALU] |126| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 127,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_sine_mains3||)+50,ACC ; [CPU_ALU] |127| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 152,column 5,is_stmt,isa 0
        MOVB      ACC,#250              ; [CPU_ALU] |152| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 128,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+52,R0H ; [CPU_FPU] |128| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 129,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+54,R0H ; [CPU_FPU] |129| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 130,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+58,R0H ; [CPU_FPU] |130| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 131,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+34,R0H ; [CPU_FPU] |131| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 132,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+16,R0H ; [CPU_FPU] |132| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 133,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_sine_mains3||)+60,#0 ; [CPU_ALU] |133| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 134,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+62,R0H ; [CPU_FPU] |134| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 150,column 5,is_stmt,isa 0
        MOVIZ     R0H,#17948            ; [CPU_FPU] |150| 
        MOVXI     R0H,#16384            ; [CPU_FPU] |150| 
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+4,R0H ; [CPU_FPU] |150| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 151,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15779            ; [CPU_FPU] |151| 
        MOVXI     R0H,#55050            ; [CPU_FPU] |151| 
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+6,R0H ; [CPU_FPU] |151| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 154,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14673            ; [CPU_FPU] |154| 
        MOVXI     R0H,#46871            ; [CPU_FPU] |154| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 152,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_sine_mains3||)+50,ACC ; [CPU_ALU] |152| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 153,column 5,is_stmt,isa 0
        MOVB      ACC,#90               ; [CPU_ALU] |153| 
        MOVL      @$BLOCKED(||VIENNA_sine_mains3||)+48,ACC ; [CPU_ALU] |153| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h",line 154,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_sine_mains3||)+62,R0H ; [CPU_FPU] |154| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 88,column 2,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |88| 
        MOVW      DP,#||VIENNA_dLog1||+16 ; [CPU_ARAU] 
        MOV32     @$BLOCKED(||VIENNA_dLog1||)+16,R0H ; [CPU_FPU] |88| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 89,column 2,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_dLog1||)+18,R0H ; [CPU_FPU] |89| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 90,column 2,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_dLog1||)+20,#0 ; [CPU_ALU] |90| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 91,column 2,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_dLog1||)+22,#0 ; [CPU_ALU] |91| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 92,column 2,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_dLog1||)+24,#0 ; [CPU_ALU] |92| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 123,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_dLog1||),XAR4 ; [CPU_ALU] |123| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 124,column 5,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_dVal2|| ; [CPU_ARAU] |124| 
        MOVL      @$BLOCKED(||VIENNA_dLog1||)+2,XAR4 ; [CPU_ALU] |124| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 125,column 5,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_dVal3|| ; [CPU_ARAU] |125| 
        MOVL      @$BLOCKED(||VIENNA_dLog1||)+4,XAR4 ; [CPU_ALU] |125| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 126,column 5,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_dVal4|| ; [CPU_ARAU] |126| 
        MOVL      @$BLOCKED(||VIENNA_dLog1||)+6,XAR4 ; [CPU_ALU] |126| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 127,column 5,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_dBuff1|| ; [CPU_ARAU] |127| 
        MOVL      @$BLOCKED(||VIENNA_dLog1||)+8,XAR4 ; [CPU_ALU] |127| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 128,column 5,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_dBuff2|| ; [CPU_ARAU] |128| 
        MOVL      @$BLOCKED(||VIENNA_dLog1||)+10,XAR4 ; [CPU_ALU] |128| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 129,column 5,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_dBuff3|| ; [CPU_ARAU] |129| 
        MOVL      @$BLOCKED(||VIENNA_dLog1||)+12,XAR4 ; [CPU_ALU] |129| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 130,column 5,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_dBuff4|| ; [CPU_ARAU] |130| 
        MOVL      @$BLOCKED(||VIENNA_dLog1||)+14,XAR4 ; [CPU_ALU] |130| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 131,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_dLog1||)+16,R0H ; [CPU_FPU] |131| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 132,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15692            ; [CPU_FPU] |132| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |132| 
        MOV32     @$BLOCKED(||VIENNA_dLog1||)+18,R0H ; [CPU_FPU] |132| 
	.dwpsn	file "../vienna.c",line 386,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |386| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 133,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||VIENNA_dLog1||)+20,#1,UNC ; [CPU_ALU] |133| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 134,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||VIENNA_dLog1||)+21,#5,UNC ; [CPU_ALU] |134| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 135,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_dLog1||)+22,#0 ; [CPU_ALU] |135| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 136,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||VIENNA_dLog1||)+23,#100,UNC ; [CPU_ALU] |136| 
	.dwpsn	file "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h",line 137,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_dLog1||)+24,#0 ; [CPU_ALU] |137| 
        MOVW      DP,#||VIENNA_iL1MeasOffset_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna.c",line 386,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_iL1MeasOffset_pu||,R0H ; [CPU_FPU] |386| 
	.dwpsn	file "../vienna.c",line 387,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_iL2MeasOffset_pu||,R0H ; [CPU_FPU] |387| 
	.dwpsn	file "../vienna.c",line 388,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_iL3MeasOffset_pu||,R0H ; [CPU_FPU] |388| 
	.dwpsn	file "../vienna.c",line 390,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_vBusPMMeasAvg_pu||,R0H ; [CPU_FPU] |390| 
	.dwpsn	file "../vienna.c",line 391,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_vBusMNMeasAvg_pu||,R0H ; [CPU_FPU] |391| 
	.dwpsn	file "../vienna.c",line 392,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_vBusMeasAvg_pu||,R0H ; [CPU_FPU] |392| 
	.dwpsn	file "../vienna.c",line 394,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16249            ; [CPU_FPU] |394| 
        MOVXI     R0H,#38523            ; [CPU_FPU] |394| 
        MOV32     @||VIENNA_m_VBusPMMeas_pu||,R0H ; [CPU_FPU] |394| 
	.dwpsn	file "../vienna.c",line 395,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14744            ; [CPU_FPU] |395| 
        MOVXI     R0H,#23468            ; [CPU_FPU] |395| 
        MOV32     @||VIENNA_b_VBusPMMeas_pu||,R0H ; [CPU_FPU] |395| 
	.dwpsn	file "../vienna.c",line 397,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16250            ; [CPU_FPU] |397| 
        MOVXI     R0H,#8808             ; [CPU_FPU] |397| 
        MOV32     @||VIENNA_m_VBusMNMeas_pu||,R0H ; [CPU_FPU] |397| 
	.dwpsn	file "../vienna.c",line 398,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15192            ; [CPU_FPU] |398| 
        MOVXI     R0H,#14214            ; [CPU_FPU] |398| 
        MOV32     @||VIENNA_b_VBusMNMeas_pu||,R0H ; [CPU_FPU] |398| 
	.dwpsn	file "../vienna.c",line 405,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |405| 
        MOV32     @||VIENNA_vRmsMeasAvg_pu||,R0H ; [CPU_FPU] |405| 
        MOVW      DP,#||VIENNA_vBusAvg_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna.c",line 406,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_vBusAvg_pu||,R0H ; [CPU_FPU] |406| 
        MOVW      DP,#||VIENNA_iL1Ref_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna.c",line 408,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_iL1Ref_pu||,R0H ; [CPU_FPU] |408| 
	.dwpsn	file "../vienna.c",line 409,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_iL2Ref_pu||,R0H ; [CPU_FPU] |409| 
	.dwpsn	file "../vienna.c",line 410,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_iL3Ref_pu||,R0H ; [CPU_FPU] |410| 
	.dwpsn	file "../vienna.c",line 411,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15692            ; [CPU_FPU] |411| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |411| 
        MOV32     @||VIENNA_iLRef_pu||,R0H ; [CPU_FPU] |411| 
	.dwpsn	file "../vienna.c",line 418,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |418| 
        MOVW      DP,#||VIENNA_duty1PU|| ; [CPU_ARAU] 
        MOV32     @||VIENNA_duty1PU||,R0H ; [CPU_FPU] |418| 
	.dwpsn	file "../vienna.c",line 419,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_duty2PU||,R0H ; [CPU_FPU] |419| 
	.dwpsn	file "../vienna.c",line 420,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_duty3PU||,R0H ; [CPU_FPU] |420| 
	.dwpsn	file "../vienna.c",line 422,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16128            ; [CPU_FPU] |422| 
        MOV32     @||VIENNA_dutyPU_DC||,R0H ; [CPU_FPU] |422| 
	.dwpsn	file "../vienna.c",line 424,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |424| 
        MOV32     @||VIENNA_iL1Ref_prev_pu||,R0H ; [CPU_FPU] |424| 
	.dwpsn	file "../vienna.c",line 425,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_iL2Ref_prev_pu||,R0H ; [CPU_FPU] |425| 
	.dwpsn	file "../vienna.c",line 426,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_iL3Ref_prev_pu||,R0H ; [CPU_FPU] |426| 
        MOVW      DP,#||VIENNA_offsetCalCounter|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna.c",line 400,column 5,is_stmt,isa 0
        MOV       @||VIENNA_offsetCalCounter||,#0 ; [CPU_ALU] |400| 
	.dwpsn	file "../vienna.c",line 432,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16074            ; [CPU_FPU] |432| 
        MOVW      DP,#||VIENNA_guiPowerStageStart|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna.c",line 402,column 5,is_stmt,isa 0
        MOV       @||VIENNA_guiPowerStageStart||,#0 ; [CPU_ALU] |402| 
	.dwpsn	file "../vienna.c",line 403,column 5,is_stmt,isa 0
        MOV       @||VIENNA_guiPowerStageStop||,#0 ; [CPU_ALU] |403| 
	.dwpsn	file "../vienna.c",line 416,column 5,is_stmt,isa 0
        MOV       @||VIENNA_clearTrip||,#0 ; [CPU_ALU] |416| 
	.dwpsn	file "../vienna.c",line 428,column 5,is_stmt,isa 0
        MOVB      @||VIENNA_firstTimeGvLoop||,#1,UNC ; [CPU_ALU] |428| 
	.dwpsn	file "../vienna.c",line 429,column 5,is_stmt,isa 0
        MOV       @||VIENNA_closeGvLoop||,#0 ; [CPU_ALU] |429| 
	.dwpsn	file "../vienna.c",line 430,column 5,is_stmt,isa 0
        MOV       @||VIENNA_closeGiLoop||,#0 ; [CPU_ALU] |430| 
	.dwpsn	file "../vienna.c",line 431,column 5,is_stmt,isa 0
        MOV       @||VIENNA_closeGsLoop||,#0 ; [CPU_ALU] |431| 
	.dwpsn	file "../vienna.c",line 432,column 5,is_stmt,isa 0
        MOVXI     R0H,#65247            ; [CPU_FPU] |432| 
        MOVW      DP,#||VIENNA_gv||+10  ; [CPU_ARAU] 
	.dwpsn	file "../vienna.c",line 338,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_gv||)+10,R7H ; [CPU_FPU] |338| 
        MOVW      DP,#||VIENNA_guiVbusTripLimit_Volts|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna.c",line 437,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_guiVbusTripLimit_Volts||,R5H ; [CPU_FPU] |437| 
        MOVW      DP,#||VIENNA_gv||+2   ; [CPU_ARAU] 
	.dwpsn	file "../vienna.c",line 333,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_gv||)+2,R4H ; [CPU_FPU] |333| 
	.dwpsn	file "../vienna.c",line 334,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_gv||),R3H ; [CPU_FPU] |334| 
	.dwpsn	file "../vienna.c",line 335,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_gv||)+6,R2H ; [CPU_FPU] |335| 
	.dwpsn	file "../vienna.c",line 336,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_gv||)+8,R1H ; [CPU_FPU] |336| 
        MOVW      DP,#||VIENNA_vBusRef_pu|| ; [CPU_ARAU] 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
	.dwpsn	file "../vienna.c",line 432,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_vBusRef_pu||,R0H ; [CPU_FPU] |432| 
	.dwpsn	file "../vienna.c",line 435,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_vBusZero_pu||,R6H ; [CPU_FPU] |435| 
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$321, DW_AT_TI_end_file("../vienna.c")
	.dwattr $C$DW$321, DW_AT_TI_end_line(0x1b7)
	.dwattr $C$DW$321, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$321

	.sect	".text"
	.clink
	.global	||VIENNA_calibrateOffset||

$C$DW$323	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$323, DW_AT_name("VIENNA_calibrateOffset")
	.dwattr $C$DW$323, DW_AT_low_pc(||VIENNA_calibrateOffset||)
	.dwattr $C$DW$323, DW_AT_high_pc(0x00)
	.dwattr $C$DW$323, DW_AT_linkage_name("VIENNA_calibrateOffset")
	.dwattr $C$DW$323, DW_AT_external
	.dwattr $C$DW$323, DW_AT_decl_file("../vienna.c")
	.dwattr $C$DW$323, DW_AT_decl_line(0x1bc)
	.dwattr $C$DW$323, DW_AT_decl_column(0x06)
	.dwattr $C$DW$323, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna.c",line 445,column 1,is_stmt,address ||VIENNA_calibrateOffset||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_calibrateOffset||

;***************************************************************
;* FNAME: VIENNA_calibrateOffset        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_calibrateOffset||:
;* R1    assigned to $O$C26
;* R0    assigned to $O$C27
;* AL    assigned to $O$R1
;* AR6   assigned to $O$R2
;* AL    assigned to $O$R3
;* AR7   assigned to $O$R4
;* AR6   assigned to $O$R5
;* AR7   assigned to $O$R6
;* AL    assigned to $O$R7
;* AR6   assigned to $O$R8
;* AR6   assigned to $O$R9
;* AR6   assigned to $O$R10
;* AL    assigned to $O$R11
;* AR6   assigned to $O$R12
;* AR6   assigned to $O$R13
;* AR6   assigned to $O$R14
;* AL    assigned to $O$R15
;* AR6   assigned to $O$R16
;* AR6   assigned to $O$R17
;* AR6   assigned to $O$R18
;* AL    assigned to $O$R19
;* AR6   assigned to $O$R20
;* AR6   assigned to $O$R21
;* AR6   assigned to $O$R22
;* AL    assigned to $O$R23
;* AR6   assigned to $O$R24
;* AR6   assigned to $O$R25
;* AH    assigned to VIENNA_offsetCalCounter
$C$DW$324	.dwtag  DW_TAG_variable
	.dwattr $C$DW$324, DW_AT_name("VIENNA_offsetCalCounter")
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$324, DW_AT_location[DW_OP_reg1]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../vienna.c",line 449,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |449| 
        MOVW      DP,#||VIENNA_iL1MeasOffset_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna.c",line 450,column 5,is_stmt,isa 0
        ZERO      R2H                   ; [CPU_FPU] |450| 
	.dwpsn	file "../vienna.c",line 451,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |451| 
	.dwpsn	file "../vienna.c",line 449,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_iL1MeasOffset_pu||,R0H ; [CPU_FPU] |449| 
	.dwpsn	file "../vienna.c",line 446,column 37,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |446| 
	.dwpsn	file "../vienna.c",line 450,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_iL2MeasOffset_pu||,R2H ; [CPU_FPU] |450| 
	.dwpsn	file "../vienna.c",line 451,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_iL3MeasOffset_pu||,R1H ; [CPU_FPU] |451| 
	.dwpsn	file "../vienna.c",line 453,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_v1MeasOffset_pu||,R0H ; [CPU_FPU] |453| 
	.dwpsn	file "../vienna.c",line 454,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_v2MeasOffset_pu||,R2H ; [CPU_FPU] |454| 
	.dwpsn	file "../vienna.c",line 455,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_v3MeasOffset_pu||,R1H ; [CPU_FPU] |455| 
        MOVW      DP,#||VIENNA_gi_out1|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna.c",line 457,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_gi_out1||,R0H ; [CPU_FPU] |457| 
||$C$L24||:    
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4847,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x40a8)        ; [CPU_ALU] |4847| 
        ANDB      AL,#0x01              ; [CPU_ALU] |4847| 
	.dwpsn	file "../vienna.c",line 461,column 9,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |461| 
        B         ||$C$L26||,NEQ        ; [CPU_ALU] |461| 
        ; branchcc occurs ; [] |461| 
	.dwpsn	file "../vienna.c",line 464,column 13,is_stmt,isa 0
        CMP       AH,#1000              ; [CPU_ALU] |464| 
        B         ||$C$L25||,LEQ        ; [CPU_ALU] |464| 
        ; branchcc occurs ; [] |464| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b00)       ; [CPU_ALU] |923| 
        MOV       AL,*(0:0x0b03)        ; [CPU_ALU] |923| 
        MOV       AR7,*(0:0x0b06)       ; [CPU_ALU] |923| 
	.dwpsn	file "../vienna.c",line 469,column 17,is_stmt,isa 0
        ADD       AL,AR6                ; [CPU_ALU] |469| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b09)       ; [CPU_FPU] |923| 
	.dwpsn	file "../vienna.c",line 469,column 17,is_stmt,isa 0
        ADD       AL,AR7                ; [CPU_ALU] |469| 
        ADD       AL,AR6                ; [CPU_ALU] |469| 
        MOVZ      AR6,AL                ; [CPU_ALU] |469| 
        MOV32     R1H,XAR6              ; [CPU_FPU] |469| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVW      DP,#||VIENNA_k2||     ; [CPU_ARAU] 
        UI32TOF32 R2H,R1H               ; [CPU_FPU] |469| 
        MOV32     R0H,@||VIENNA_k2||    ; [CPU_FPU] |469| 
        MPYF32    R3H,R0H,R2H           ; [CPU_FPU] |469| 
        MOV32     R1H,@||VIENNA_k1||    ; [CPU_FPU] |469| 
        MPYF32    R3H,R3H,#16000        ; [CPU_FPU] |469| 
        MOVW      DP,#||VIENNA_iL1MeasOffset_pu|| ; [CPU_ARAU] 
        MPYF32    R3H,R3H,#14720        ; [CPU_FPU] |469| 
        MOV32     R2H,@||VIENNA_iL1MeasOffset_pu|| ; [CPU_FPU] |469| 
        MPYF32    R2H,R1H,R2H           ; [CPU_FPU] |469| 
        NOP       ; [CPU_ALU] 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |469| 
        NOP       ; [CPU_ALU] 
        MOV32     @||VIENNA_iL1MeasOffset_pu||,R2H ; [CPU_FPU] |469| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR7,*(0:0x0b01)       ; [CPU_ALU] |923| 
        MOV       AL,*(0:0x0b04)        ; [CPU_ALU] |923| 
        MOV       AR6,*(0:0x0b07)       ; [CPU_ALU] |923| 
	.dwpsn	file "../vienna.c",line 473,column 17,is_stmt,isa 0
        ADD       AL,AR7                ; [CPU_ALU] |473| 
        ADD       AL,AR6                ; [CPU_ALU] |473| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b0a)       ; [CPU_FPU] |923| 
	.dwpsn	file "../vienna.c",line 473,column 17,is_stmt,isa 0
        ADD       AL,AR6                ; [CPU_ALU] |473| 
        MOVZ      AR6,AL                ; [CPU_ALU] |473| 
        MOV32     R2H,XAR6              ; [CPU_FPU] |473| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI32TOF32 R2H,R2H               ; [CPU_FPU] |473| 
        NOP       ; [CPU_ALU] 
        MPYF32    R3H,R0H,R2H           ; [CPU_FPU] |473| 
        NOP       ; [CPU_ALU] 
        MPYF32    R3H,R3H,#16000        ; [CPU_FPU] |473| 
        NOP       ; [CPU_ALU] 
        MPYF32    R3H,R3H,#14720        ; [CPU_FPU] |473| 
        MOV32     R2H,@||VIENNA_iL2MeasOffset_pu|| ; [CPU_FPU] |473| 
        MPYF32    R2H,R1H,R2H           ; [CPU_FPU] |473| 
        NOP       ; [CPU_ALU] 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |473| 
        NOP       ; [CPU_ALU] 
        MOV32     @||VIENNA_iL2MeasOffset_pu||,R2H ; [CPU_FPU] |473| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b02)       ; [CPU_ALU] |923| 
        MOV       AL,*(0:0x0b05)        ; [CPU_ALU] |923| 
	.dwpsn	file "../vienna.c",line 477,column 17,is_stmt,isa 0
        ADD       AL,AR6                ; [CPU_ALU] |477| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b08)       ; [CPU_FPU] |923| 
	.dwpsn	file "../vienna.c",line 477,column 17,is_stmt,isa 0
        ADD       AL,AR6                ; [CPU_ALU] |477| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b0b)       ; [CPU_FPU] |923| 
	.dwpsn	file "../vienna.c",line 477,column 17,is_stmt,isa 0
        ADD       AL,AR6                ; [CPU_ALU] |477| 
        MOVZ      AR6,AL                ; [CPU_ALU] |477| 
        MOV32     R2H,XAR6              ; [CPU_FPU] |477| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI32TOF32 R2H,R2H               ; [CPU_FPU] |477| 
        NOP       ; [CPU_ALU] 
        MPYF32    R3H,R0H,R2H           ; [CPU_FPU] |477| 
        NOP       ; [CPU_ALU] 
        MPYF32    R3H,R3H,#16000        ; [CPU_FPU] |477| 
        NOP       ; [CPU_ALU] 
        MPYF32    R3H,R3H,#14720        ; [CPU_FPU] |477| 
        MOV32     R2H,@||VIENNA_iL3MeasOffset_pu|| ; [CPU_FPU] |477| 
        MPYF32    R2H,R1H,R2H           ; [CPU_FPU] |477| 
        NOP       ; [CPU_ALU] 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |477| 
        NOP       ; [CPU_ALU] 
        MOV32     @||VIENNA_iL3MeasOffset_pu||,R2H ; [CPU_FPU] |477| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b20)       ; [CPU_ALU] |923| 
        MOV       AL,*(0:0x0b21)        ; [CPU_ALU] |923| 
	.dwpsn	file "../vienna.c",line 485,column 17,is_stmt,isa 0
        ADD       AL,AR6                ; [CPU_ALU] |485| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b22)       ; [CPU_FPU] |923| 
	.dwpsn	file "../vienna.c",line 485,column 17,is_stmt,isa 0
        ADD       AL,AR6                ; [CPU_ALU] |485| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b23)       ; [CPU_FPU] |923| 
	.dwpsn	file "../vienna.c",line 485,column 17,is_stmt,isa 0
        ADD       AL,AR6                ; [CPU_ALU] |485| 
        MOVZ      AR6,AL                ; [CPU_ALU] |485| 
        MOV32     R2H,XAR6              ; [CPU_FPU] |485| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI32TOF32 R2H,R2H               ; [CPU_FPU] |485| 
        NOP       ; [CPU_ALU] 
        MPYF32    R3H,R0H,R2H           ; [CPU_FPU] |485| 
        NOP       ; [CPU_ALU] 
        MPYF32    R3H,R3H,#16000        ; [CPU_FPU] |485| 
        NOP       ; [CPU_ALU] 
        MPYF32    R3H,R3H,#14720        ; [CPU_FPU] |485| 
        MOV32     R2H,@||VIENNA_v1MeasOffset_pu|| ; [CPU_FPU] |485| 
        MPYF32    R2H,R1H,R2H           ; [CPU_FPU] |485| 
        NOP       ; [CPU_ALU] 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |485| 
        NOP       ; [CPU_ALU] 
        MOV32     @||VIENNA_v1MeasOffset_pu||,R2H ; [CPU_FPU] |485| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b60)       ; [CPU_ALU] |923| 
        MOV       AL,*(0:0x0b62)        ; [CPU_ALU] |923| 
	.dwpsn	file "../vienna.c",line 489,column 17,is_stmt,isa 0
        ADD       AL,AR6                ; [CPU_ALU] |489| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b64)       ; [CPU_FPU] |923| 
	.dwpsn	file "../vienna.c",line 489,column 17,is_stmt,isa 0
        ADD       AL,AR6                ; [CPU_ALU] |489| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b66)       ; [CPU_FPU] |923| 
	.dwpsn	file "../vienna.c",line 489,column 17,is_stmt,isa 0
        ADD       AL,AR6                ; [CPU_ALU] |489| 
        MOVZ      AR6,AL                ; [CPU_ALU] |489| 
        MOV32     R2H,XAR6              ; [CPU_FPU] |489| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI32TOF32 R2H,R2H               ; [CPU_FPU] |489| 
        NOP       ; [CPU_ALU] 
        MPYF32    R3H,R0H,R2H           ; [CPU_FPU] |489| 
        NOP       ; [CPU_ALU] 
        MPYF32    R3H,R3H,#16000        ; [CPU_FPU] |489| 
        NOP       ; [CPU_ALU] 
        MPYF32    R3H,R3H,#14720        ; [CPU_FPU] |489| 
        MOV32     R2H,@||VIENNA_v2MeasOffset_pu|| ; [CPU_FPU] |489| 
        MPYF32    R2H,R1H,R2H           ; [CPU_FPU] |489| 
        NOP       ; [CPU_ALU] 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |489| 
        NOP       ; [CPU_ALU] 
        MOV32     @||VIENNA_v2MeasOffset_pu||,R2H ; [CPU_FPU] |489| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b61)       ; [CPU_ALU] |923| 
        MOV       AL,*(0:0x0b63)        ; [CPU_ALU] |923| 
	.dwpsn	file "../vienna.c",line 493,column 17,is_stmt,isa 0
        ADD       AL,AR6                ; [CPU_ALU] |493| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b65)       ; [CPU_FPU] |923| 
	.dwpsn	file "../vienna.c",line 493,column 17,is_stmt,isa 0
        ADD       AL,AR6                ; [CPU_ALU] |493| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x0b67)       ; [CPU_FPU] |923| 
	.dwpsn	file "../vienna.c",line 493,column 17,is_stmt,isa 0
        ADD       AL,AR6                ; [CPU_ALU] |493| 
        MOVZ      AR6,AL                ; [CPU_ALU] |493| 
        MOV32     R2H,XAR6              ; [CPU_FPU] |493| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        UI32TOF32 R2H,R2H               ; [CPU_FPU] |493| 
        NOP       ; [CPU_ALU] 
        MPYF32    R0H,R0H,R2H           ; [CPU_FPU] |493| 
        NOP       ; [CPU_ALU] 
        MPYF32    R2H,R0H,#16000        ; [CPU_FPU] |493| 
        MOV32     R3H,@||VIENNA_v3MeasOffset_pu|| ; [CPU_FPU] |493| 
        MPYF32    R2H,R2H,#14720        ; [CPU_FPU] |493| 
        MPYF32    R0H,R1H,R3H           ; [CPU_FPU] |493| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R2H           ; [CPU_FPU] |493| 
        NOP       ; [CPU_ALU] 
        MOV32     @||VIENNA_v3MeasOffset_pu||,R0H ; [CPU_FPU] |493| 
||$C$L25||:    
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x40aa)        ; [CPU_ALU] |4872| 
	.dwpsn	file "../vienna.c",line 500,column 13,is_stmt,isa 0
        ADDB      AH,#1                 ; [CPU_ALU] |500| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4872,column 5,is_stmt,isa 0
        ORB       AL,#0x01              ; [CPU_ALU] |4872| 
        MOV       *(0:0x40aa),AL        ; [CPU_FPU] |4872| 
||$C$L26||:    
	.dwpsn	file "../vienna.c",line 459,column 11,is_stmt,isa 0
        CMP       AH,#25000             ; [CPU_ALU] |459| 
        B         ||$C$L24||,LT         ; [CPU_ALU] |459| 
        ; branchcc occurs ; [] |459| 
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$323, DW_AT_TI_end_file("../vienna.c")
	.dwattr $C$DW$323, DW_AT_TI_end_line(0x1fc)
	.dwattr $C$DW$323, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$323

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||SFRA_F32_runBackgroundTask||
	.global	||SFRA_GUI_runSerialHostComms||
	.global	||SFRA_F32_reset||
	.global	||SFRA_F32_config||
	.global	||SFRA_F32_resetFreqRespArray||
	.global	||SFRA_F32_initFreqArrayWithLogSteps||
	.global	||SFRA_GUI_config||
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
	.group    "__relaxed_cosf", 1
	.gmember  ".text:__relaxed_cosf"
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
	.group    "__relaxed_sinf", 1
	.gmember  ".text:__relaxed_sinf"
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

$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$326	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$326, DW_AT_name("ADC_SOC_NUMBER0")
	.dwattr $C$DW$326, DW_AT_const_value(0x00)
	.dwattr $C$DW$326, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0x145)
	.dwattr $C$DW$326, DW_AT_decl_column(0x05)

$C$DW$327	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$327, DW_AT_name("ADC_SOC_NUMBER1")
	.dwattr $C$DW$327, DW_AT_const_value(0x01)
	.dwattr $C$DW$327, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0x146)
	.dwattr $C$DW$327, DW_AT_decl_column(0x05)

$C$DW$328	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$328, DW_AT_name("ADC_SOC_NUMBER2")
	.dwattr $C$DW$328, DW_AT_const_value(0x02)
	.dwattr $C$DW$328, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x147)
	.dwattr $C$DW$328, DW_AT_decl_column(0x05)

$C$DW$329	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$329, DW_AT_name("ADC_SOC_NUMBER3")
	.dwattr $C$DW$329, DW_AT_const_value(0x03)
	.dwattr $C$DW$329, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x148)
	.dwattr $C$DW$329, DW_AT_decl_column(0x05)

$C$DW$330	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$330, DW_AT_name("ADC_SOC_NUMBER4")
	.dwattr $C$DW$330, DW_AT_const_value(0x04)
	.dwattr $C$DW$330, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0x149)
	.dwattr $C$DW$330, DW_AT_decl_column(0x05)

$C$DW$331	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$331, DW_AT_name("ADC_SOC_NUMBER5")
	.dwattr $C$DW$331, DW_AT_const_value(0x05)
	.dwattr $C$DW$331, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$331, DW_AT_decl_column(0x05)

$C$DW$332	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$332, DW_AT_name("ADC_SOC_NUMBER6")
	.dwattr $C$DW$332, DW_AT_const_value(0x06)
	.dwattr $C$DW$332, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$332, DW_AT_decl_column(0x05)

$C$DW$333	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$333, DW_AT_name("ADC_SOC_NUMBER7")
	.dwattr $C$DW$333, DW_AT_const_value(0x07)
	.dwattr $C$DW$333, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$333, DW_AT_decl_column(0x05)

$C$DW$334	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$334, DW_AT_name("ADC_SOC_NUMBER8")
	.dwattr $C$DW$334, DW_AT_const_value(0x08)
	.dwattr $C$DW$334, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$334, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$334, DW_AT_decl_column(0x05)

$C$DW$335	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$335, DW_AT_name("ADC_SOC_NUMBER9")
	.dwattr $C$DW$335, DW_AT_const_value(0x09)
	.dwattr $C$DW$335, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$335, DW_AT_decl_column(0x05)

$C$DW$336	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$336, DW_AT_name("ADC_SOC_NUMBER10")
	.dwattr $C$DW$336, DW_AT_const_value(0x0a)
	.dwattr $C$DW$336, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$336, DW_AT_decl_column(0x05)

$C$DW$337	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$337, DW_AT_name("ADC_SOC_NUMBER11")
	.dwattr $C$DW$337, DW_AT_const_value(0x0b)
	.dwattr $C$DW$337, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0x150)
	.dwattr $C$DW$337, DW_AT_decl_column(0x05)

$C$DW$338	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$338, DW_AT_name("ADC_SOC_NUMBER12")
	.dwattr $C$DW$338, DW_AT_const_value(0x0c)
	.dwattr $C$DW$338, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0x151)
	.dwattr $C$DW$338, DW_AT_decl_column(0x05)

$C$DW$339	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$339, DW_AT_name("ADC_SOC_NUMBER13")
	.dwattr $C$DW$339, DW_AT_const_value(0x0d)
	.dwattr $C$DW$339, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0x152)
	.dwattr $C$DW$339, DW_AT_decl_column(0x05)

$C$DW$340	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$340, DW_AT_name("ADC_SOC_NUMBER14")
	.dwattr $C$DW$340, DW_AT_const_value(0x0e)
	.dwattr $C$DW$340, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0x153)
	.dwattr $C$DW$340, DW_AT_decl_column(0x05)

$C$DW$341	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$341, DW_AT_name("ADC_SOC_NUMBER15")
	.dwattr $C$DW$341, DW_AT_const_value(0x0f)
	.dwattr $C$DW$341, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0x154)
	.dwattr $C$DW$341, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x144)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("ADC_SOCNumber")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x155)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$44


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x1a)
$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$342, DW_AT_name("inputPtr1")
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$342, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0x42)
	.dwattr $C$DW$342, DW_AT_decl_column(0x0d)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$343, DW_AT_name("inputPtr2")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$343, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0x43)
	.dwattr $C$DW$343, DW_AT_decl_column(0x0d)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$344, DW_AT_name("inputPtr3")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$344, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0x44)
	.dwattr $C$DW$344, DW_AT_decl_column(0x0d)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$345, DW_AT_name("inputPtr4")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$345, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0x45)
	.dwattr $C$DW$345, DW_AT_decl_column(0x0d)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$346, DW_AT_name("outputPtr1")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$346, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0x46)
	.dwattr $C$DW$346, DW_AT_decl_column(0x0d)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$347, DW_AT_name("outputPtr2")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$347, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0x47)
	.dwattr $C$DW$347, DW_AT_decl_column(0x0d)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$348, DW_AT_name("outputPtr3")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$348, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0x48)
	.dwattr $C$DW$348, DW_AT_decl_column(0x0d)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$349, DW_AT_name("outputPtr4")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$349, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0x49)
	.dwattr $C$DW$349, DW_AT_decl_column(0x0d)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_name("prevValue")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$350, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$350, DW_AT_decl_column(0x0c)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_name("trigValue")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$351, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$351, DW_AT_decl_column(0x0c)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$352, DW_AT_name("status")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$352, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$352, DW_AT_decl_column(0x0a)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$353, DW_AT_name("preScalar")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$353, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$353, DW_AT_decl_column(0x0a)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$354, DW_AT_name("skipCount")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$354, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$354, DW_AT_decl_column(0x0a)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$355, DW_AT_name("size")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$355, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$355, DW_AT_decl_column(0x0a)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$356, DW_AT_name("count")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$356, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0x50)
	.dwattr $C$DW$356, DW_AT_decl_column(0x0a)

	.dwattr $C$DW$T$23, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x18)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45
$C$DW$357	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$23)

$C$DW$T$45	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$357)

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("DLOG_4CH")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/utilities/dlog_4ch.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$46


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x40)
$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("v")
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$358, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0x42)
	.dwattr $C$DW$358, DW_AT_decl_column(0x0f)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("i")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$359, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0x43)
	.dwattr $C$DW$359, DW_AT_decl_column(0x0f)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("sampleFreq")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$360, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0x44)
	.dwattr $C$DW$360, DW_AT_decl_column(0x0f)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("threshold")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$361, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0x45)
	.dwattr $C$DW$361, DW_AT_decl_column(0x0f)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("vRms")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$362, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0x46)
	.dwattr $C$DW$362, DW_AT_decl_column(0x0f)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("vAvg")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$363, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0x47)
	.dwattr $C$DW$363, DW_AT_decl_column(0x0f)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("vEma")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$364, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0x48)
	.dwattr $C$DW$364, DW_AT_decl_column(0x0f)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("acFreq")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$365, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0x49)
	.dwattr $C$DW$365, DW_AT_decl_column(0x0f)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("acFreqAvg")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$366, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$366, DW_AT_decl_column(0x0f)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("iRms")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$367, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$367, DW_AT_decl_column(0x0f)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("pRms")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$368, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$368, DW_AT_decl_column(0x0f)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$369, DW_AT_name("vaRms")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$369, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$369, DW_AT_decl_column(0x0f)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("powerFactor")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$370, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$370, DW_AT_decl_column(0x0f)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$371, DW_AT_name("zcd")
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$371, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$371, DW_AT_decl_column(0x0e)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("vSum")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$372, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x51)
	.dwattr $C$DW$372, DW_AT_decl_column(0x0f)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("vSqrSum")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$373, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0x52)
	.dwattr $C$DW$373, DW_AT_decl_column(0x0f)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("iSqrSum")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$374, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0x53)
	.dwattr $C$DW$374, DW_AT_decl_column(0x0f)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("acFreqSum")
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$375, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0x54)
	.dwattr $C$DW$375, DW_AT_decl_column(0x0f)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("pSum")
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$376, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0x55)
	.dwattr $C$DW$376, DW_AT_decl_column(0x0f)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("vaSumMul")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$377, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0x56)
	.dwattr $C$DW$377, DW_AT_decl_column(0x0f)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("vNorm")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$378, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0x57)
	.dwattr $C$DW$378, DW_AT_decl_column(0x0f)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("iNorm")
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$379, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0x58)
	.dwattr $C$DW$379, DW_AT_decl_column(0x0f)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$380, DW_AT_name("prevSign")
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$380, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0x59)
	.dwattr $C$DW$380, DW_AT_decl_column(0x0e)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$381, DW_AT_name("currSign")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$381, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$381, DW_AT_decl_column(0x0e)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$382, DW_AT_name("nSamples")
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$382, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$382, DW_AT_decl_column(0x0e)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$383, DW_AT_name("nSamplesMin")
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$383, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$383, DW_AT_decl_column(0x0e)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$384, DW_AT_name("nSamplesMax")
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$384, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$384, DW_AT_decl_column(0x0e)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("inverse_nSamples")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$385, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$385, DW_AT_decl_column(0x0f)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("sqrt_inverse_nSamples")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$386, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$386, DW_AT_decl_column(0x0f)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$387, DW_AT_name("slewPowerUpdate")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$387, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x60)
	.dwattr $C$DW$387, DW_AT_decl_column(0x0e)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("pRmsSumMul")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$388, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x61)
	.dwattr $C$DW$388, DW_AT_decl_column(0x0f)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$389, DW_AT_name("jitterCount")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$389, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x62)
	.dwattr $C$DW$389, DW_AT_decl_column(0x0d)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("emaFilterMultiplier")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$390, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x63)
	.dwattr $C$DW$390, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$26, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48
$C$DW$391	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$26)

$C$DW$T$48	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$391)

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49
$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("POWER_MEAS_SINE_ANALYZER")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/power_measurement/power_meas_sine_analyzer.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$49


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x20)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$392, DW_AT_name("h_magVect")
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$392, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x40)
	.dwattr $C$DW$392, DW_AT_decl_column(0x10)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$393, DW_AT_name("h_phaseVect")
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$393, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x41)
	.dwattr $C$DW$393, DW_AT_decl_column(0x10)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$394, DW_AT_name("gh_magVect")
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$394, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x42)
	.dwattr $C$DW$394, DW_AT_decl_column(0x10)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$395, DW_AT_name("gh_phaseVect")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$395, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x43)
	.dwattr $C$DW$395, DW_AT_decl_column(0x10)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$396, DW_AT_name("cl_magVect")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$396, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x44)
	.dwattr $C$DW$396, DW_AT_decl_column(0x10)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$397, DW_AT_name("cl_phaseVect")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$397, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x45)
	.dwattr $C$DW$397, DW_AT_decl_column(0x10)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$398, DW_AT_name("freqVect")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$398, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x46)
	.dwattr $C$DW$398, DW_AT_decl_column(0x10)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("amplitude")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$399, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x47)
	.dwattr $C$DW$399, DW_AT_decl_column(0x0f)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("isrFreq")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$400, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x48)
	.dwattr $C$DW$400, DW_AT_decl_column(0x0f)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("freqStart")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$401, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x49)
	.dwattr $C$DW$401, DW_AT_decl_column(0x0f)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("freqStep")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$402, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$402, DW_AT_decl_column(0x0f)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$403, DW_AT_name("start")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$403, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$403, DW_AT_decl_column(0x0d)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$404, DW_AT_name("state")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$404, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$404, DW_AT_decl_column(0x0d)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$405, DW_AT_name("status")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$405, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$405, DW_AT_decl_column(0x0d)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$406, DW_AT_name("vecLength")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$406, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$406, DW_AT_decl_column(0x0d)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$407, DW_AT_name("freqIndex")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$407, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$407, DW_AT_decl_column(0x0d)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$408, DW_AT_name("storeH")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$408, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0x50)
	.dwattr $C$DW$408, DW_AT_decl_column(0x0d)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$409, DW_AT_name("storeGH")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$409, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0x51)
	.dwattr $C$DW$409, DW_AT_decl_column(0x0d)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$410, DW_AT_name("storeCL")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$410, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x52)
	.dwattr $C$DW$410, DW_AT_decl_column(0x0d)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$411, DW_AT_name("speed")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$411, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0x53)
	.dwattr $C$DW$411, DW_AT_decl_column(0x0d)

	.dwattr $C$DW$T$27, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("SFRA_F32")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$51, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/sfra/sfra_f32.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52
$C$DW$T$52	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$52


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$54, DW_AT_name("VIENNA_BuildLevel_enum")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$412	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$412, DW_AT_name("BuildLevel_1_OpenLoop")
	.dwattr $C$DW$412, DW_AT_const_value(0x00)
	.dwattr $C$DW$412, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x76)
	.dwattr $C$DW$412, DW_AT_decl_column(0x05)

$C$DW$413	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$413, DW_AT_name("BuildLevel_2_CurrentLoop")
	.dwattr $C$DW$413, DW_AT_const_value(0x01)
	.dwattr $C$DW$413, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x77)
	.dwattr $C$DW$413, DW_AT_decl_column(0x05)

$C$DW$414	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$414, DW_AT_name("BuildLevel_3_VoltageAndCurrentLoop")
	.dwattr $C$DW$414, DW_AT_const_value(0x02)
	.dwattr $C$DW$414, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x78)
	.dwattr $C$DW$414, DW_AT_decl_column(0x05)

$C$DW$415	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$415, DW_AT_name("BuildLevel_4_BalanceVoltageAndCurrentLoop")
	.dwattr $C$DW$415, DW_AT_const_value(0x03)
	.dwattr $C$DW$415, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x79)
	.dwattr $C$DW$415, DW_AT_decl_column(0x05)

$C$DW$416	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$416, DW_AT_name("BuildLevel_1_OpenLoop_CLA")
	.dwattr $C$DW$416, DW_AT_const_value(0x04)
	.dwattr $C$DW$416, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$416, DW_AT_decl_column(0x05)

$C$DW$417	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$417, DW_AT_name("BuildLevel_2_CurrentLoop_CLA")
	.dwattr $C$DW$417, DW_AT_const_value(0x05)
	.dwattr $C$DW$417, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$417, DW_AT_decl_column(0x05)

$C$DW$418	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$418, DW_AT_name("BuildLevel_3_VoltageAndCurrentLoop_CLA")
	.dwattr $C$DW$418, DW_AT_const_value(0x06)
	.dwattr $C$DW$418, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$418, DW_AT_decl_column(0x05)

$C$DW$419	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$419, DW_AT_name("BuildLevel_4_BalanceVoltageAndCurrentLoop_CLA")
	.dwattr $C$DW$419, DW_AT_const_value(0x07)
	.dwattr $C$DW$419, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$419, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$54, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$55, DW_AT_name("VIENNA_boardState_enum")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$420	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$420, DW_AT_name("PowerStageOFF")
	.dwattr $C$DW$420, DW_AT_const_value(0x00)
	.dwattr $C$DW$420, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x70)
	.dwattr $C$DW$420, DW_AT_decl_column(0x05)

$C$DW$421	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$421, DW_AT_name("PowerStageON")
	.dwattr $C$DW$421, DW_AT_const_value(0x01)
	.dwattr $C$DW$421, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x71)
	.dwattr $C$DW$421, DW_AT_decl_column(0x05)

$C$DW$422	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$422, DW_AT_name("TripCondition")
	.dwattr $C$DW$422, DW_AT_const_value(0x02)
	.dwattr $C$DW$422, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x72)
	.dwattr $C$DW$422, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$55, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$56, DW_AT_name("VIENNA_boardStatus_enum")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$423	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$423, DW_AT_name("boardStatus_Idle")
	.dwattr $C$DW$423, DW_AT_const_value(0x00)
	.dwattr $C$DW$423, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x82)
	.dwattr $C$DW$423, DW_AT_decl_column(0x05)

$C$DW$424	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$424, DW_AT_name("boardStatus_NoFault")
	.dwattr $C$DW$424, DW_AT_const_value(0x01)
	.dwattr $C$DW$424, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x83)
	.dwattr $C$DW$424, DW_AT_decl_column(0x05)

$C$DW$425	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$425, DW_AT_name("boardStatus_OverCurrentTrip_IL1")
	.dwattr $C$DW$425, DW_AT_const_value(0x02)
	.dwattr $C$DW$425, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x84)
	.dwattr $C$DW$425, DW_AT_decl_column(0x05)

$C$DW$426	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$426, DW_AT_name("boardStatus_OverCurrentTrip_IL2")
	.dwattr $C$DW$426, DW_AT_const_value(0x03)
	.dwattr $C$DW$426, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x85)
	.dwattr $C$DW$426, DW_AT_decl_column(0x05)

$C$DW$427	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$427, DW_AT_name("boardStatus_OverCurrentTrip_IL3")
	.dwattr $C$DW$427, DW_AT_const_value(0x04)
	.dwattr $C$DW$427, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x86)
	.dwattr $C$DW$427, DW_AT_decl_column(0x05)

$C$DW$428	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$428, DW_AT_name("boardStatus_OverCurrentTrip")
	.dwattr $C$DW$428, DW_AT_const_value(0x05)
	.dwattr $C$DW$428, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x87)
	.dwattr $C$DW$428, DW_AT_decl_column(0x05)

$C$DW$429	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$429, DW_AT_name("boardStatus_OverVoltageTrip")
	.dwattr $C$DW$429, DW_AT_const_value(0x06)
	.dwattr $C$DW$429, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x88)
	.dwattr $C$DW$429, DW_AT_decl_column(0x05)

$C$DW$430	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$430, DW_AT_name("boardStatus_BusImbalanceTrip")
	.dwattr $C$DW$430, DW_AT_const_value(0x07)
	.dwattr $C$DW$430, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x89)
	.dwattr $C$DW$430, DW_AT_decl_column(0x05)

$C$DW$431	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$431, DW_AT_name("boardStatus_EmulatorStopTrip")
	.dwattr $C$DW$431, DW_AT_const_value(0x08)
	.dwattr $C$DW$431, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$431, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$56, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("_Complex_double")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x08)
$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$432, DW_AT_name("_Vals")
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$432, DW_AT_decl_file("..\vienna_hal.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x189)
	.dwattr $C$DW$432, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57
$C$DW$T$57	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$57, DW_AT_name("_Complex_double")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$57, DW_AT_decl_file("..\vienna_hal.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x189)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$57


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("_Complex_float")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x04)
$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$433, DW_AT_name("_Vals")
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$433, DW_AT_decl_file("..\vienna_hal.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x189)
	.dwattr $C$DW$433, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58
$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("_Complex_float")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$58, DW_AT_decl_file("..\vienna_hal.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x189)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$58


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("_Complex_long_double")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x08)
$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$434, DW_AT_name("_Vals")
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$434, DW_AT_decl_file("..\vienna_hal.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x189)
	.dwattr $C$DW$434, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60
$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("_Complex_long_double")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$60, DW_AT_decl_file("..\vienna_hal.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x189)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$60


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


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81
$C$DW$435	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$10)

$C$DW$T$81	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$435)

	.dwendtag $C$DW$TU$81


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$21, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x1b)

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("int16_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$22


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82
$C$DW$436	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$22)

$C$DW$T$82	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$436)

	.dwendtag $C$DW$TU$82


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73
$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$73, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x1b)

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74
$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$74


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86
$C$DW$437	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$74)

$C$DW$T$86	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$437)

	.dwendtag $C$DW$TU$86


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$24, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("int32_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$25


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$34, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$35


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72
$C$DW$438	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$35)

$C$DW$T$72	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$438)

	.dwendtag $C$DW$TU$72


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


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x04)
$C$DW$439	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$439, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97
$C$DW$440	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$16)

$C$DW$T$97	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$440)

	.dwendtag $C$DW$TU$97


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("float32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\inc/hw_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x17)

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$20


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98

$C$DW$T$98	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$98, DW_AT_byte_size(0xc8)
$C$DW$441	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$441, DW_AT_upper_bound(0x63)

	.dwendtag $C$DW$T$98

	.dwendtag $C$DW$TU$98


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99

$C$DW$T$99	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x3c)
$C$DW$442	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$442, DW_AT_upper_bound(0x1d)

	.dwendtag $C$DW$T$99

	.dwendtag $C$DW$TU$99


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100
$C$DW$443	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)

$C$DW$T$100	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$443)

	.dwendtag $C$DW$TU$100


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x08)
$C$DW$444	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$444, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101
$C$DW$T$101	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$101, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$101


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102
$C$DW$445	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$101)

$C$DW$T$102	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$445)

	.dwendtag $C$DW$TU$102


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x08)
$C$DW$446	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$446, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104
$C$DW$T$104	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$104, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$104


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105
$C$DW$447	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$104)

$C$DW$T$105	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$447)

	.dwendtag $C$DW$TU$105


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107
$C$DW$T$107	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$107, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$107, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$107


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("dcl_css")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x0a)
$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_name("tpt")
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$448, DW_AT_decl_file("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\libraries\DCL\DCL.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$448, DW_AT_decl_column(0x0f)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("T")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$449, DW_AT_decl_file("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\libraries\DCL\DCL.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$449, DW_AT_decl_column(0x0f)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$450, DW_AT_name("sts")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$450, DW_AT_decl_file("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\libraries\DCL\DCL.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$450, DW_AT_decl_column(0x0e)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$451, DW_AT_name("err")
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$451, DW_AT_decl_file("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\libraries\DCL\DCL.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$451, DW_AT_decl_column(0x0e)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$452, DW_AT_name("loc")
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$452, DW_AT_decl_file("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\libraries\DCL\DCL.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$452, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$36, DW_AT_decl_file("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\libraries\DCL\DCL.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("DCL_CSS")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$39, DW_AT_decl_file("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\libraries\DCL\DCL.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("dcl_pi")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x16)
$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("Kp")
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$453, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x1cf)
	.dwattr $C$DW$453, DW_AT_decl_column(0x0f)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_name("Ki")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$454, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x1d0)
	.dwattr $C$DW$454, DW_AT_decl_column(0x0f)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$455, DW_AT_name("i10")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$455, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x1d1)
	.dwattr $C$DW$455, DW_AT_decl_column(0x0f)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("Umax")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$456, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$456, DW_AT_decl_column(0x0f)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("Umin")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$457, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x1d3)
	.dwattr $C$DW$457, DW_AT_decl_column(0x0f)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("i6")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$458, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x1d4)
	.dwattr $C$DW$458, DW_AT_decl_column(0x0f)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_name("i11")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$459, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x1d5)
	.dwattr $C$DW$459, DW_AT_decl_column(0x0f)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("Imax")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$460, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$460, DW_AT_decl_column(0x0f)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("Imin")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$461, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x1d7)
	.dwattr $C$DW$461, DW_AT_decl_column(0x0f)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$462, DW_AT_name("sps")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$462, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x1d8)
	.dwattr $C$DW$462, DW_AT_decl_column(0x11)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$463, DW_AT_name("css")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$463, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x1d9)
	.dwattr $C$DW$463, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$41, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x1ce)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$109	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$109
$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("DCL_PI")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$109, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$109


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("dcl_pi_sps")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x0c)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_name("Kp")
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$464, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$464, DW_AT_decl_column(0x0f)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("Ki")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$465, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$465, DW_AT_decl_column(0x0f)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("Umax")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$466, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$466, DW_AT_decl_column(0x0f)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("Umin")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$467, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x1c3)
	.dwattr $C$DW$467, DW_AT_decl_column(0x0f)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("Imax")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$468, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x1c4)
	.dwattr $C$DW$468, DW_AT_decl_column(0x0f)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("Imin")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$469, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x1c5)
	.dwattr $C$DW$469, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$42, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37
$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("DCL_PI_SPS")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$37, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x1c6)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$38

