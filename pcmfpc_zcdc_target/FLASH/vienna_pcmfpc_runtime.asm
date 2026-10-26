;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                             PC v25.11.1.LTS *
;* Date/Time created: Mon Oct 26 09:58:51 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v25.11.1.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\FLASH")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("PC_default_config")
	.dwattr $C$DW$1, DW_AT_linkage_name("PC_default_config")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x46)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$70)

	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("VG_reset")
	.dwattr $C$DW$3, DW_AT_linkage_name("VG_reset")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$3, DW_AT_decl_column(0x06)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$91)

	.dwendtag $C$DW$3


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("VO_reset")
	.dwattr $C$DW$5, DW_AT_linkage_name("VO_reset")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x25)
	.dwattr $C$DW$5, DW_AT_decl_column(0x06)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$99)

	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("PC_abc_to_dq")
	.dwattr $C$DW$7, DW_AT_linkage_name("PC_abc_to_dq")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x47)
	.dwattr $C$DW$7, DW_AT_decl_column(0x06)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$131)

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$19)

$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$132)

	.dwendtag $C$DW$7


$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("PC_dq_to_abc")
	.dwattr $C$DW$11, DW_AT_linkage_name("PC_dq_to_abc")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x48)
	.dwattr $C$DW$11, DW_AT_decl_column(0x06)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$131)

$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$19)

$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$132)

	.dwendtag $C$DW$11

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("PC_fast_output_integrals_available")
	.dwattr $C$DW$15, DW_AT_linkage_name("PC_fast_output_integrals_available")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("..\vienna_pcmfpc_fast.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$15, DW_AT_decl_column(0x1a)

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("VIENNA_fcsSwitchState")
	.dwattr $C$DW$16, DW_AT_linkage_name("VIENNA_fcsSwitchState")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x32)
	.dwattr $C$DW$16, DW_AT_decl_column(0x1a)

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("VIENNA_closeGiLoop")
	.dwattr $C$DW$17, DW_AT_linkage_name("VIENNA_closeGiLoop")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$17, DW_AT_decl_line(0x112)
	.dwattr $C$DW$17, DW_AT_decl_column(0x10)

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("VIENNA_closeGvLoop")
	.dwattr $C$DW$18, DW_AT_linkage_name("VIENNA_closeGvLoop")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0x112)
	.dwattr $C$DW$18, DW_AT_decl_column(0x24)

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("VIENNA_closeGsLoop")
	.dwattr $C$DW$19, DW_AT_linkage_name("VIENNA_closeGsLoop")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x112)
	.dwattr $C$DW$19, DW_AT_decl_column(0x38)

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("VIENNA_clearTrip")
	.dwattr $C$DW$20, DW_AT_linkage_name("VIENNA_clearTrip")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x113)
	.dwattr $C$DW$20, DW_AT_decl_column(0x10)

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("VIENNA_firstTimeGvLoop")
	.dwattr $C$DW$21, DW_AT_linkage_name("VIENNA_firstTimeGvLoop")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x113)
	.dwattr $C$DW$21, DW_AT_decl_column(0x22)

	.global	||VIENNA_pcmModeRequest||
	.data
	.align	1
	.elfsym	||VIENNA_pcmModeRequest||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmModeRequest||:
	.bits		0,16
			; VIENNA_pcmModeRequest @ 0

$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("VIENNA_pcmModeRequest")
	.dwattr $C$DW$22, DW_AT_linkage_name("VIENNA_pcmModeRequest")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr ||VIENNA_pcmModeRequest||]
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x19)
	.dwattr $C$DW$22, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmModeActive||
	.data
	.align	1
	.elfsym	||VIENNA_pcmModeActive||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmModeActive||:
	.bits		0,16
			; VIENNA_pcmModeActive @ 0

$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("VIENNA_pcmModeActive")
	.dwattr $C$DW$23, DW_AT_linkage_name("VIENNA_pcmModeActive")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr ||VIENNA_pcmModeActive||]
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x19)
	.dwattr $C$DW$23, DW_AT_decl_column(0x2c)

	.global	||VIENNA_pcmHardwareRelease||
	.data
	.align	1
	.elfsym	||VIENNA_pcmHardwareRelease||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmHardwareRelease||:
	.bits		0,16
			; VIENNA_pcmHardwareRelease @ 0

$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("VIENNA_pcmHardwareRelease")
	.dwattr $C$DW$24, DW_AT_linkage_name("VIENNA_pcmHardwareRelease")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr ||VIENNA_pcmHardwareRelease||]
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$24, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmShadowEnable||
	.data
	.align	1
	.elfsym	||VIENNA_pcmShadowEnable||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmShadowEnable||:
	.bits		0,16
			; VIENNA_pcmShadowEnable @ 0

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("VIENNA_pcmShadowEnable")
	.dwattr $C$DW$25, DW_AT_linkage_name("VIENNA_pcmShadowEnable")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_addr ||VIENNA_pcmShadowEnable||]
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$25, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$25, DW_AT_decl_column(0x30)

	.global	||VIENNA_pcmFault||
	.data
	.align	1
	.elfsym	||VIENNA_pcmFault||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmFault||:
	.bits		0,16
			; VIENNA_pcmFault @ 0

$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("VIENNA_pcmFault")
	.dwattr $C$DW$26, DW_AT_linkage_name("VIENNA_pcmFault")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr ||VIENNA_pcmFault||]
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$26, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$26, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmCoreStatus||
	.data
	.align	1
	.elfsym	||VIENNA_pcmCoreStatus||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmCoreStatus||:
	.bits		0,16
			; VIENNA_pcmCoreStatus @ 0

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("VIENNA_pcmCoreStatus")
	.dwattr $C$DW$27, DW_AT_linkage_name("VIENNA_pcmCoreStatus")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr ||VIENNA_pcmCoreStatus||]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$27, DW_AT_decl_column(0x26)

	.global	||VIENNA_pcmActualAppliedState||
	.data
	.align	1
	.elfsym	||VIENNA_pcmActualAppliedState||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmActualAppliedState||:
	.bits		0,16
			; VIENNA_pcmActualAppliedState @ 0

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("VIENNA_pcmActualAppliedState")
	.dwattr $C$DW$28, DW_AT_linkage_name("VIENNA_pcmActualAppliedState")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_addr ||VIENNA_pcmActualAppliedState||]
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$28, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$28, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmPendingState||
	.data
	.align	1
	.elfsym	||VIENNA_pcmPendingState||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmPendingState||:
	.bits		0,16
			; VIENNA_pcmPendingState @ 0

$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("VIENNA_pcmPendingState")
	.dwattr $C$DW$29, DW_AT_linkage_name("VIENNA_pcmPendingState")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr ||VIENNA_pcmPendingState||]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$29, DW_AT_decl_column(0x33)

	.global	||VIENNA_pcmRootMethod||
	.data
	.align	1
	.elfsym	||VIENNA_pcmRootMethod||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmRootMethod||:
	.bits		0,16
			; VIENNA_pcmRootMethod @ 0

$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("VIENNA_pcmRootMethod")
	.dwattr $C$DW$30, DW_AT_linkage_name("VIENNA_pcmRootMethod")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_addr ||VIENNA_pcmRootMethod||]
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$30, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$30, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmRootMethodActive||
	.data
	.align	1
	.elfsym	||VIENNA_pcmRootMethodActive||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmRootMethodActive||:
	.bits		0,16
			; VIENNA_pcmRootMethodActive @ 0

$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("VIENNA_pcmRootMethodActive")
	.dwattr $C$DW$31, DW_AT_linkage_name("VIENNA_pcmRootMethodActive")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_addr ||VIENNA_pcmRootMethodActive||]
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$31, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmInputsValid||
	.data
	.align	1
	.elfsym	||VIENNA_pcmInputsValid||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmInputsValid||:
	.bits		0,16
			; VIENNA_pcmInputsValid @ 0

$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("VIENNA_pcmInputsValid")
	.dwattr $C$DW$32, DW_AT_linkage_name("VIENNA_pcmInputsValid")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_addr ||VIENNA_pcmInputsValid||]
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$32, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$32, DW_AT_decl_column(0x42)

	.global	||VIENNA_pcmInputFaultMask||
	.data
	.align	1
	.elfsym	||VIENNA_pcmInputFaultMask||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmInputFaultMask||:
	.bits		0,16
			; VIENNA_pcmInputFaultMask @ 0

$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("VIENNA_pcmInputFaultMask")
	.dwattr $C$DW$33, DW_AT_linkage_name("VIENNA_pcmInputFaultMask")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_addr ||VIENNA_pcmInputFaultMask||]
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$33, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$33, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmReferenceSaturation||
	.data
	.align	1
	.elfsym	||VIENNA_pcmReferenceSaturation||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmReferenceSaturation||:
	.bits		0,16
			; VIENNA_pcmReferenceSaturation @ 0

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("VIENNA_pcmReferenceSaturation")
	.dwattr $C$DW$34, DW_AT_linkage_name("VIENNA_pcmReferenceSaturation")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_addr ||VIENNA_pcmReferenceSaturation||]
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$34, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$34, DW_AT_decl_column(0x2f)

	.global	||VIENNA_pcmOutputSource||
	.data
	.align	1
	.elfsym	||VIENNA_pcmOutputSource||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmOutputSource||:
	.bits		0,16
			; VIENNA_pcmOutputSource @ 0

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("VIENNA_pcmOutputSource")
	.dwattr $C$DW$35, DW_AT_linkage_name("VIENNA_pcmOutputSource")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_addr ||VIENNA_pcmOutputSource||]
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x21)
	.dwattr $C$DW$35, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmOutputDetailValid||
	.data
	.align	1
	.elfsym	||VIENNA_pcmOutputDetailValid||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmOutputDetailValid||:
	.bits		0,16
			; VIENNA_pcmOutputDetailValid @ 0

$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("VIENNA_pcmOutputDetailValid")
	.dwattr $C$DW$36, DW_AT_linkage_name("VIENNA_pcmOutputDetailValid")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_addr ||VIENNA_pcmOutputDetailValid||]
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$36, DW_AT_decl_line(0x21)
	.dwattr $C$DW$36, DW_AT_decl_column(0x2d)

	.global	||VIENNA_pcmOutputIntegralValid||
	.data
	.align	1
	.elfsym	||VIENNA_pcmOutputIntegralValid||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmOutputIntegralValid||:
	.bits		0,16
			; VIENNA_pcmOutputIntegralValid @ 0

$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("VIENNA_pcmOutputIntegralValid")
	.dwattr $C$DW$37, DW_AT_linkage_name("VIENNA_pcmOutputIntegralValid")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_addr ||VIENNA_pcmOutputIntegralValid||]
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$37, DW_AT_decl_line(0x22)
	.dwattr $C$DW$37, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmBenchRequest||
	.data
	.align	1
	.elfsym	||VIENNA_pcmBenchRequest||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmBenchRequest||:
	.bits		0,16
			; VIENNA_pcmBenchRequest @ 0

$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("VIENNA_pcmBenchRequest")
	.dwattr $C$DW$38, DW_AT_linkage_name("VIENNA_pcmBenchRequest")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_addr ||VIENNA_pcmBenchRequest||]
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$38, DW_AT_decl_line(0x23)
	.dwattr $C$DW$38, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmBenchStatus||
	.data
	.align	1
	.elfsym	||VIENNA_pcmBenchStatus||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmBenchStatus||:
	.bits		0,16
			; VIENNA_pcmBenchStatus @ 0

$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("VIENNA_pcmBenchStatus")
	.dwattr $C$DW$39, DW_AT_linkage_name("VIENNA_pcmBenchStatus")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_addr ||VIENNA_pcmBenchStatus||]
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$39, DW_AT_decl_line(0x23)
	.dwattr $C$DW$39, DW_AT_decl_column(0x2d)

	.global	||VIENNA_pcmBenchSelectedId||
	.data
	.align	1
	.elfsym	||VIENNA_pcmBenchSelectedId||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmBenchSelectedId||:
	.bits		0,16
			; VIENNA_pcmBenchSelectedId @ 0

$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("VIENNA_pcmBenchSelectedId")
	.dwattr $C$DW$40, DW_AT_linkage_name("VIENNA_pcmBenchSelectedId")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_addr ||VIENNA_pcmBenchSelectedId||]
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$40, DW_AT_decl_line(0x24)
	.dwattr $C$DW$40, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmBenchHWState||
	.data
	.align	1
	.elfsym	||VIENNA_pcmBenchHWState||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmBenchHWState||:
	.bits		0,16
			; VIENNA_pcmBenchHWState @ 0

$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("VIENNA_pcmBenchHWState")
	.dwattr $C$DW$41, DW_AT_linkage_name("VIENNA_pcmBenchHWState")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_addr ||VIENNA_pcmBenchHWState||]
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$41, DW_AT_decl_line(0x24)
	.dwattr $C$DW$41, DW_AT_decl_column(0x30)

	.global	||VIENNA_pcmRecordArm||
	.data
	.align	1
	.elfsym	||VIENNA_pcmRecordArm||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmRecordArm||:
	.bits		0,16
			; VIENNA_pcmRecordArm @ 0

$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("VIENNA_pcmRecordArm")
	.dwattr $C$DW$42, DW_AT_linkage_name("VIENNA_pcmRecordArm")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_addr ||VIENNA_pcmRecordArm||]
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$42, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$42, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmWaveArm||
	.data
	.align	1
	.elfsym	||VIENNA_pcmWaveArm||,SYM_SIZE(1),SYM_BLOCKED(1)
||VIENNA_pcmWaveArm||:
	.bits		0,16
			; VIENNA_pcmWaveArm @ 0

$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("VIENNA_pcmWaveArm")
	.dwattr $C$DW$43, DW_AT_linkage_name("VIENNA_pcmWaveArm")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_addr ||VIENNA_pcmWaveArm||]
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$43, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$43, DW_AT_decl_column(0x2a)

	.bss	||history_valid||,1,1,0
$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("history_valid")
	.dwattr $C$DW$44, DW_AT_linkage_name("history_valid")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_addr ||history_valid||]
	.dwattr $C$DW$44, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$44, DW_AT_decl_line(0x39)
	.dwattr $C$DW$44, DW_AT_decl_column(0x11)

	.bss	||previous_hw||,1,1,0
$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("previous_hw")
	.dwattr $C$DW$45, DW_AT_linkage_name("previous_hw")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_addr ||previous_hw||]
	.dwattr $C$DW$45, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$45, DW_AT_decl_line(0x39)
	.dwattr $C$DW$45, DW_AT_decl_column(0x1f)

	.bss	||previous_trip||,1,1,0
$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("previous_trip")
	.dwattr $C$DW$46, DW_AT_linkage_name("previous_trip")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_addr ||previous_trip||]
	.dwattr $C$DW$46, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$46, DW_AT_decl_line(0x39)
	.dwattr $C$DW$46, DW_AT_decl_column(0x2b)

	.bss	||wave_divider||,1,1,0
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("wave_divider")
	.dwattr $C$DW$47, DW_AT_linkage_name("wave_divider")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_addr ||wave_divider||]
	.dwattr $C$DW$47, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$47, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$47, DW_AT_decl_column(0x11)


$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("PC_run_fast")
	.dwattr $C$DW$48, DW_AT_linkage_name("PC_run_fast")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_decl_file("..\vienna_pcmfpc_fast.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x32)
	.dwattr $C$DW$48, DW_AT_decl_column(0x0a)
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$68)

$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$77)

$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$81)

	.dwendtag $C$DW$48


$C$DW$52	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$52, DW_AT_name("PC_run")
	.dwattr $C$DW$52, DW_AT_linkage_name("PC_run")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$52, DW_AT_declaration
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$52, DW_AT_decl_column(0x0a)
$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$68)

$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$77)

$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$81)

	.dwendtag $C$DW$52


$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("VG_configure")
	.dwattr $C$DW$56, DW_AT_linkage_name("VG_configure")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$56, DW_AT_declaration
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$56, DW_AT_decl_column(0x0a)
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$88)

$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$16)

$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$16)

$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$16)

	.dwendtag $C$DW$56


$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("VO_configure")
	.dwattr $C$DW$61, DW_AT_linkage_name("VO_configure")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$61, DW_AT_declaration
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0x23)
	.dwattr $C$DW$61, DW_AT_decl_column(0x0a)
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$96)

$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$16)

$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$16)

$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$16)

	.dwendtag $C$DW$61


$C$DW$66	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$66, DW_AT_name("VG_run")
	.dwattr $C$DW$66, DW_AT_linkage_name("VG_run")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$66, DW_AT_declaration
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$66, DW_AT_decl_column(0x0a)
$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$87)

$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$91)

$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$159)

	.dwendtag $C$DW$66


$C$DW$70	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$70, DW_AT_name("VO_reconstruct")
	.dwattr $C$DW$70, DW_AT_linkage_name("VO_reconstruct")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$70, DW_AT_declaration
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0x33)
	.dwattr $C$DW$70, DW_AT_decl_column(0x0a)
$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$68)

$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$103)

$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$106)

	.dwendtag $C$DW$70


$C$DW$74	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$74, DW_AT_name("VO_update_delta")
	.dwattr $C$DW$74, DW_AT_linkage_name("VO_update_delta")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$74, DW_AT_declaration
	.dwattr $C$DW$74, DW_AT_external
	.dwattr $C$DW$74, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$74, DW_AT_decl_column(0x0a)
$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$95)

$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$99)

$C$DW$77	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$159)

$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$159)

$C$DW$79	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$159)

$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$42)

$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$21)

	.dwendtag $C$DW$74

$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("VIENNA_vBusRefSlewed_pu")
	.dwattr $C$DW$82, DW_AT_linkage_name("VIENNA_vBusRefSlewed_pu")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$82, DW_AT_declaration
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x99)
	.dwattr $C$DW$82, DW_AT_decl_column(0x1b)

$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("VIENNA_gv_out")
	.dwattr $C$DW$83, DW_AT_linkage_name("VIENNA_gv_out")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$83, DW_AT_declaration
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$83, DW_AT_decl_column(0x1b)

$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("VIENNA_voltage_error_pu")
	.dwattr $C$DW$84, DW_AT_linkage_name("VIENNA_voltage_error_pu")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$84, DW_AT_declaration
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$84, DW_AT_decl_column(0x2b)

$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("VIENNA_iLRef_pu")
	.dwattr $C$DW$85, DW_AT_linkage_name("VIENNA_iLRef_pu")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$85, DW_AT_declaration
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$85, DW_AT_decl_column(0x1b)

$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("VIENNA_iL1Ref_pu")
	.dwattr $C$DW$86, DW_AT_linkage_name("VIENNA_iL1Ref_pu")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$86, DW_AT_declaration
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$86, DW_AT_decl_column(0x2c)

$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("VIENNA_iL2Ref_pu")
	.dwattr $C$DW$87, DW_AT_linkage_name("VIENNA_iL2Ref_pu")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$87, DW_AT_declaration
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$87, DW_AT_decl_column(0x3e)

$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("VIENNA_iL3Ref_pu")
	.dwattr $C$DW$88, DW_AT_linkage_name("VIENNA_iL3Ref_pu")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$88, DW_AT_declaration
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$88, DW_AT_decl_column(0x1b)

$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("VIENNA_iL1Meas_pu")
	.dwattr $C$DW$89, DW_AT_linkage_name("VIENNA_iL1Meas_pu")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$89, DW_AT_declaration
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$89, DW_AT_decl_column(0x1b)

$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("VIENNA_iL2Meas_pu")
	.dwattr $C$DW$90, DW_AT_linkage_name("VIENNA_iL2Meas_pu")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$90, DW_AT_declaration
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$90, DW_AT_decl_column(0x2e)

$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("VIENNA_iL3Meas_pu")
	.dwattr $C$DW$91, DW_AT_linkage_name("VIENNA_iL3Meas_pu")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$91, DW_AT_declaration
	.dwattr $C$DW$91, DW_AT_external
	.dwattr $C$DW$91, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$91, DW_AT_decl_column(0x41)

$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("VIENNA_vBusMNMeas_pu")
	.dwattr $C$DW$92, DW_AT_linkage_name("VIENNA_vBusMNMeas_pu")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$92, DW_AT_declaration
	.dwattr $C$DW$92, DW_AT_external
	.dwattr $C$DW$92, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$92, DW_AT_decl_column(0x1b)

$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("VIENNA_vBusPMMeas_pu")
	.dwattr $C$DW$93, DW_AT_linkage_name("VIENNA_vBusPMMeas_pu")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$93, DW_AT_declaration
	.dwattr $C$DW$93, DW_AT_external
	.dwattr $C$DW$93, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$93, DW_AT_decl_column(0x31)

$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("VIENNA_vBusMeas_pu")
	.dwattr $C$DW$94, DW_AT_linkage_name("VIENNA_vBusMeas_pu")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$94, DW_AT_declaration
	.dwattr $C$DW$94, DW_AT_external
	.dwattr $C$DW$94, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$94, DW_AT_decl_column(0x47)

$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("VIENNA_v1Meas_pu")
	.dwattr $C$DW$95, DW_AT_linkage_name("VIENNA_v1Meas_pu")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$95, DW_AT_declaration
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0xda)
	.dwattr $C$DW$95, DW_AT_decl_column(0x1b)

$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("VIENNA_v2Meas_pu")
	.dwattr $C$DW$96, DW_AT_linkage_name("VIENNA_v2Meas_pu")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$96, DW_AT_declaration
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0xda)
	.dwattr $C$DW$96, DW_AT_decl_column(0x2d)

$C$DW$97	.dwtag  DW_TAG_variable
	.dwattr $C$DW$97, DW_AT_name("VIENNA_v3Meas_pu")
	.dwattr $C$DW$97, DW_AT_linkage_name("VIENNA_v3Meas_pu")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$97, DW_AT_declaration
	.dwattr $C$DW$97, DW_AT_external
	.dwattr $C$DW$97, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0xda)
	.dwattr $C$DW$97, DW_AT_decl_column(0x3f)

	.global	||VIENNA_pcmBenchCycles||
	.bss	||VIENNA_pcmBenchCycles||,2,1,1
$C$DW$98	.dwtag  DW_TAG_variable
	.dwattr $C$DW$98, DW_AT_name("VIENNA_pcmBenchCycles")
	.dwattr $C$DW$98, DW_AT_linkage_name("VIENNA_pcmBenchCycles")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_addr ||VIENNA_pcmBenchCycles||]
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$98, DW_AT_external
	.dwattr $C$DW$98, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$98, DW_AT_decl_line(0x25)
	.dwattr $C$DW$98, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmBenchCyclesMax||
	.bss	||VIENNA_pcmBenchCyclesMax||,2,1,1
$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("VIENNA_pcmBenchCyclesMax")
	.dwattr $C$DW$99, DW_AT_linkage_name("VIENNA_pcmBenchCyclesMax")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_addr ||VIENNA_pcmBenchCyclesMax||]
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$99, DW_AT_decl_line(0x25)
	.dwattr $C$DW$99, DW_AT_decl_column(0x29)

	.global	||VIENNA_pcmBenchCount||
	.bss	||VIENNA_pcmBenchCount||,2,1,1
$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("VIENNA_pcmBenchCount")
	.dwattr $C$DW$100, DW_AT_linkage_name("VIENNA_pcmBenchCount")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_addr ||VIENNA_pcmBenchCount||]
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$100, DW_AT_external
	.dwattr $C$DW$100, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$100, DW_AT_decl_line(0x25)
	.dwattr $C$DW$100, DW_AT_decl_column(0x42)

	.global	||VIENNA_pcmTick||
	.bss	||VIENNA_pcmTick||,2,1,1
$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("VIENNA_pcmTick")
	.dwattr $C$DW$101, DW_AT_linkage_name("VIENNA_pcmTick")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_addr ||VIENNA_pcmTick||]
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$101, DW_AT_decl_line(0x26)
	.dwattr $C$DW$101, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmAlgorithmCycles||
	.bss	||VIENNA_pcmAlgorithmCycles||,2,1,1
$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("VIENNA_pcmAlgorithmCycles")
	.dwattr $C$DW$102, DW_AT_linkage_name("VIENNA_pcmAlgorithmCycles")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_addr ||VIENNA_pcmAlgorithmCycles||]
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$102, DW_AT_decl_line(0x26)
	.dwattr $C$DW$102, DW_AT_decl_column(0x22)

	.global	||VIENNA_pcmAlgorithmCyclesMax||
	.bss	||VIENNA_pcmAlgorithmCyclesMax||,2,1,1
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("VIENNA_pcmAlgorithmCyclesMax")
	.dwattr $C$DW$103, DW_AT_linkage_name("VIENNA_pcmAlgorithmCyclesMax")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_addr ||VIENNA_pcmAlgorithmCyclesMax||]
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$103, DW_AT_external
	.dwattr $C$DW$103, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$103, DW_AT_decl_line(0x26)
	.dwattr $C$DW$103, DW_AT_decl_column(0x3c)

	.global	||VIENNA_pcmWriteCycles||
	.bss	||VIENNA_pcmWriteCycles||,2,1,1
$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("VIENNA_pcmWriteCycles")
	.dwattr $C$DW$104, DW_AT_linkage_name("VIENNA_pcmWriteCycles")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_addr ||VIENNA_pcmWriteCycles||]
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$104, DW_AT_decl_line(0x27)
	.dwattr $C$DW$104, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmWriteCyclesMax||
	.bss	||VIENNA_pcmWriteCyclesMax||,2,1,1
$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("VIENNA_pcmWriteCyclesMax")
	.dwattr $C$DW$105, DW_AT_linkage_name("VIENNA_pcmWriteCyclesMax")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_addr ||VIENNA_pcmWriteCyclesMax||]
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$105, DW_AT_decl_line(0x27)
	.dwattr $C$DW$105, DW_AT_decl_column(0x29)

	.global	||VIENNA_pcmBodyCycles||
	.bss	||VIENNA_pcmBodyCycles||,2,1,1
$C$DW$106	.dwtag  DW_TAG_variable
	.dwattr $C$DW$106, DW_AT_name("VIENNA_pcmBodyCycles")
	.dwattr $C$DW$106, DW_AT_linkage_name("VIENNA_pcmBodyCycles")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_addr ||VIENNA_pcmBodyCycles||]
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$106, DW_AT_external
	.dwattr $C$DW$106, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$106, DW_AT_decl_line(0x28)
	.dwattr $C$DW$106, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmBodyCyclesMax||
	.bss	||VIENNA_pcmBodyCyclesMax||,2,1,1
$C$DW$107	.dwtag  DW_TAG_variable
	.dwattr $C$DW$107, DW_AT_name("VIENNA_pcmBodyCyclesMax")
	.dwattr $C$DW$107, DW_AT_linkage_name("VIENNA_pcmBodyCyclesMax")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_addr ||VIENNA_pcmBodyCyclesMax||]
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$107, DW_AT_decl_line(0x28)
	.dwattr $C$DW$107, DW_AT_decl_column(0x28)

	.global	||VIENNA_pcmRingCount||
	.bss	||VIENNA_pcmRingCount||,2,1,1
$C$DW$108	.dwtag  DW_TAG_variable
	.dwattr $C$DW$108, DW_AT_name("VIENNA_pcmRingCount")
	.dwattr $C$DW$108, DW_AT_linkage_name("VIENNA_pcmRingCount")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_addr ||VIENNA_pcmRingCount||]
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$108, DW_AT_external
	.dwattr $C$DW$108, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$108, DW_AT_decl_line(0x29)
	.dwattr $C$DW$108, DW_AT_decl_column(0x13)

	.global	||VIENNA_pcmRingOverflow||
	.bss	||VIENNA_pcmRingOverflow||,2,1,1
$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("VIENNA_pcmRingOverflow")
	.dwattr $C$DW$109, DW_AT_linkage_name("VIENNA_pcmRingOverflow")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_addr ||VIENNA_pcmRingOverflow||]
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$109, DW_AT_decl_line(0x29)
	.dwattr $C$DW$109, DW_AT_decl_column(0x27)

	.global	||VIENNA_pcmWaveCount||
	.bss	||VIENNA_pcmWaveCount||,2,1,1
$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("VIENNA_pcmWaveCount")
	.dwattr $C$DW$110, DW_AT_linkage_name("VIENNA_pcmWaveCount")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_addr ||VIENNA_pcmWaveCount||]
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$110, DW_AT_external
	.dwattr $C$DW$110, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$110, DW_AT_decl_line(0x29)
	.dwattr $C$DW$110, DW_AT_decl_column(0x3e)

	.global	||VIENNA_pcmIdRef_A||
	.bss	||VIENNA_pcmIdRef_A||,2,1,1
$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("VIENNA_pcmIdRef_A")
	.dwattr $C$DW$111, DW_AT_linkage_name("VIENNA_pcmIdRef_A")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_addr ||VIENNA_pcmIdRef_A||]
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$191)
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$111, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$111, DW_AT_decl_column(0x10)

	.global	||VIENNA_pcmIqRef_A||
	.bss	||VIENNA_pcmIqRef_A||,2,1,1
$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("VIENNA_pcmIqRef_A")
	.dwattr $C$DW$112, DW_AT_linkage_name("VIENNA_pcmIqRef_A")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_addr ||VIENNA_pcmIqRef_A||]
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$191)
	.dwattr $C$DW$112, DW_AT_external
	.dwattr $C$DW$112, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$112, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$112, DW_AT_decl_column(0x22)

	.bss	||previous_theta||,2,1,1
$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("previous_theta")
	.dwattr $C$DW$113, DW_AT_linkage_name("previous_theta")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_addr ||previous_theta||]
	.dwattr $C$DW$113, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$113, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$113, DW_AT_decl_column(0x2f)

	.bss	||previous_omega||,2,1,1
$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("previous_omega")
	.dwattr $C$DW$114, DW_AT_linkage_name("previous_omega")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_addr ||previous_omega||]
	.dwattr $C$DW$114, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$114, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$114, DW_AT_decl_column(0x3e)

	.bss	||previous_up||,2,1,1
$C$DW$115	.dwtag  DW_TAG_variable
	.dwattr $C$DW$115, DW_AT_name("previous_up")
	.dwattr $C$DW$115, DW_AT_linkage_name("previous_up")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_addr ||previous_up||]
	.dwattr $C$DW$115, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$115, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$115, DW_AT_decl_column(0x0e)

	.bss	||previous_low||,2,1,1
$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("previous_low")
	.dwattr $C$DW$116, DW_AT_linkage_name("previous_low")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_addr ||previous_low||]
	.dwattr $C$DW$116, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$116, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$116, DW_AT_decl_column(0x1a)

	.bss	||outer_integral||,2,1,1
$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("outer_integral")
	.dwattr $C$DW$117, DW_AT_linkage_name("outer_integral")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_addr ||outer_integral||]
	.dwattr $C$DW$117, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$117, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$117, DW_AT_decl_column(0x27)

	.bss	||outer_filtered||,2,1,1
$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("outer_filtered")
	.dwattr $C$DW$118, DW_AT_linkage_name("outer_filtered")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_addr ||outer_filtered||]
	.dwattr $C$DW$118, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$118, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$118, DW_AT_decl_column(0x36)


$C$DW$119	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$119, DW_AT_name("__eallow")
	.dwattr $C$DW$119, DW_AT_linkage_name("__eallow")
	.dwattr $C$DW$119, DW_AT_declaration
	.dwattr $C$DW$119, DW_AT_external
	.dwendtag $C$DW$119


$C$DW$120	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$120, DW_AT_name("__edis")
	.dwattr $C$DW$120, DW_AT_linkage_name("__edis")
	.dwattr $C$DW$120, DW_AT_declaration
	.dwattr $C$DW$120, DW_AT_external
	.dwendtag $C$DW$120

	.global	||VIENNA_pcmMeasuredDQ_A||
||VIENNA_pcmMeasuredDQ_A||:	.usect	".bss:VIENNA_pcmMeasuredDQ_A",4,0,1
$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("VIENNA_pcmMeasuredDQ_A")
	.dwattr $C$DW$121, DW_AT_linkage_name("VIENNA_pcmMeasuredDQ_A")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_addr ||VIENNA_pcmMeasuredDQ_A||]
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$121, DW_AT_external
	.dwattr $C$DW$121, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$121, DW_AT_decl_line(0x20)
	.dwattr $C$DW$121, DW_AT_decl_column(0x10)

||previous_idq||:	.usect	".bss:previous_idq",4,0,1
$C$DW$122	.dwtag  DW_TAG_variable
	.dwattr $C$DW$122, DW_AT_name("previous_idq")
	.dwattr $C$DW$122, DW_AT_linkage_name("previous_idq")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_addr ||previous_idq||]
	.dwattr $C$DW$122, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$122, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$122, DW_AT_decl_column(0x0e)

||previous_fhat||:	.usect	".bss:previous_fhat",4,0,1
$C$DW$123	.dwtag  DW_TAG_variable
	.dwattr $C$DW$123, DW_AT_name("previous_fhat")
	.dwattr $C$DW$123, DW_AT_linkage_name("previous_fhat")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_addr ||previous_fhat||]
	.dwattr $C$DW$123, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$123, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$123, DW_AT_decl_column(0x1e)

	.sect	".const:$P$T8$1"
	.align	2
	.elfsym	||$P$T8$1||,SYM_SIZE(4)
||$P$T8$1||:
	.xfloat	$strtod("0x0p+0")		; $P$T8$1[0] @ 0
	.xfloat	$strtod("0x0p+0")		; $P$T8$1[1] @ 32

$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("$P$T8$1")
	.dwattr $C$DW$124, DW_AT_linkage_name("$P$T8$1")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_addr ||$P$T8$1||]
	.dwattr $C$DW$124, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$124, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$124, DW_AT_decl_column(0x19)

	.bss	||observer_config||,10,0,1
$C$DW$125	.dwtag  DW_TAG_variable
	.dwattr $C$DW$125, DW_AT_name("observer_config")
	.dwattr $C$DW$125, DW_AT_linkage_name("observer_config")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_addr ||observer_config||]
	.dwattr $C$DW$125, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$125, DW_AT_decl_line(0x36)
	.dwattr $C$DW$125, DW_AT_decl_column(0x12)

||wave_sum||:	.usect	".bss:wave_sum",12,0,1
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("wave_sum")
	.dwattr $C$DW$126, DW_AT_linkage_name("wave_sum")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_addr ||wave_sum||]
	.dwattr $C$DW$126, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$126, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$126, DW_AT_decl_column(0x0e)

	.bss	||pc_config||,16,0,1
$C$DW$127	.dwtag  DW_TAG_variable
	.dwattr $C$DW$127, DW_AT_name("pc_config")
	.dwattr $C$DW$127, DW_AT_linkage_name("pc_config")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_addr ||pc_config||]
	.dwattr $C$DW$127, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$127, DW_AT_decl_line(0x32)
	.dwattr $C$DW$127, DW_AT_decl_column(0x12)

	.bss	||benchmark_config||,16,0,1
$C$DW$128	.dwtag  DW_TAG_variable
	.dwattr $C$DW$128, DW_AT_name("benchmark_config")
	.dwattr $C$DW$128, DW_AT_linkage_name("benchmark_config")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_addr ||benchmark_config||]
	.dwattr $C$DW$128, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$128, DW_AT_decl_line(0x33)
	.dwattr $C$DW$128, DW_AT_decl_column(0x12)

	.global	||VIENNA_pcmObserver||
	.bss	||VIENNA_pcmObserver||,18,1,1
$C$DW$129	.dwtag  DW_TAG_variable
	.dwattr $C$DW$129, DW_AT_name("VIENNA_pcmObserver")
	.dwattr $C$DW$129, DW_AT_linkage_name("VIENNA_pcmObserver")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_addr ||VIENNA_pcmObserver||]
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$129, DW_AT_external
	.dwattr $C$DW$129, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$129, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$129, DW_AT_decl_column(0x0a)

	.bss	||grid_config||,18,0,1
$C$DW$130	.dwtag  DW_TAG_variable
	.dwattr $C$DW$130, DW_AT_name("grid_config")
	.dwattr $C$DW$130, DW_AT_linkage_name("grid_config")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_addr ||grid_config||]
	.dwattr $C$DW$130, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$130, DW_AT_decl_line(0x35)
	.dwattr $C$DW$130, DW_AT_decl_column(0x12)

$C$DW$131	.dwtag  DW_TAG_variable
	.dwattr $C$DW$131, DW_AT_name("VIENNA_gv")
	.dwattr $C$DW$131, DW_AT_linkage_name("VIENNA_gv")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$131, DW_AT_declaration
	.dwattr $C$DW$131, DW_AT_external
	.dwattr $C$DW$131, DW_AT_decl_file("..\vienna.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$131, DW_AT_decl_column(0x12)

	.bss	||reconstruct_output||,22,0,1
$C$DW$132	.dwtag  DW_TAG_variable
	.dwattr $C$DW$132, DW_AT_name("reconstruct_output")
	.dwattr $C$DW$132, DW_AT_linkage_name("reconstruct_output")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_addr ||reconstruct_output||]
	.dwattr $C$DW$132, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$132, DW_AT_decl_line(0x38)
	.dwattr $C$DW$132, DW_AT_decl_column(0x1d)

	.bss	||reconstruct_input||,24,0,1
$C$DW$133	.dwtag  DW_TAG_variable
	.dwattr $C$DW$133, DW_AT_name("reconstruct_input")
	.dwattr $C$DW$133, DW_AT_linkage_name("reconstruct_input")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_addr ||reconstruct_input||]
	.dwattr $C$DW$133, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$133, DW_AT_decl_line(0x37)
	.dwattr $C$DW$133, DW_AT_decl_column(0x1c)

	.global	||VIENNA_pcmGrid||
	.bss	||VIENNA_pcmGrid||,28,1,1
$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("VIENNA_pcmGrid")
	.dwattr $C$DW$134, DW_AT_linkage_name("VIENNA_pcmGrid")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_addr ||VIENNA_pcmGrid||]
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$134, DW_AT_external
	.dwattr $C$DW$134, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$134, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$134, DW_AT_decl_column(0x0a)

	.global	||VIENNA_pcmInput||
	.bss	||VIENNA_pcmInput||,32,1,1
$C$DW$135	.dwtag  DW_TAG_variable
	.dwattr $C$DW$135, DW_AT_name("VIENNA_pcmInput")
	.dwattr $C$DW$135, DW_AT_linkage_name("VIENNA_pcmInput")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_addr ||VIENNA_pcmInput||]
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$135, DW_AT_external
	.dwattr $C$DW$135, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$135, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$135, DW_AT_decl_column(0x0a)

	.bss	||benchmark_input||,32,0,1
$C$DW$136	.dwtag  DW_TAG_variable
	.dwattr $C$DW$136, DW_AT_name("benchmark_input")
	.dwattr $C$DW$136, DW_AT_linkage_name("benchmark_input")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_addr ||benchmark_input||]
	.dwattr $C$DW$136, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$136, DW_AT_decl_line(0x34)
	.dwattr $C$DW$136, DW_AT_decl_column(0x11)

	.global	||VIENNA_pcmOutput||
	.bss	||VIENNA_pcmOutput||,998,1,1
$C$DW$137	.dwtag  DW_TAG_variable
	.dwattr $C$DW$137, DW_AT_name("VIENNA_pcmOutput")
	.dwattr $C$DW$137, DW_AT_linkage_name("VIENNA_pcmOutput")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_addr ||VIENNA_pcmOutput||]
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$137, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$137, DW_AT_decl_column(0x0b)

	.global	||VIENNA_pcmRecords||
||VIENNA_pcmRecords||:	.usect	"pcmfpc_trace",7168,0,1
$C$DW$138	.dwtag  DW_TAG_variable
	.dwattr $C$DW$138, DW_AT_name("VIENNA_pcmRecords")
	.dwattr $C$DW$138, DW_AT_linkage_name("VIENNA_pcmRecords")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_addr ||VIENNA_pcmRecords||]
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$138, DW_AT_external
	.dwattr $C$DW$138, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$138, DW_AT_decl_line(0x30)
	.dwattr $C$DW$138, DW_AT_decl_column(0x1b)

	.global	||VIENNA_pcmWave||
||VIENNA_pcmWave||:	.usect	"pcmfpc_wave",24000,0,1
$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("VIENNA_pcmWave")
	.dwattr $C$DW$139, DW_AT_linkage_name("VIENNA_pcmWave")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_addr ||VIENNA_pcmWave||]
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$139, DW_AT_external
	.dwattr $C$DW$139, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$139, DW_AT_decl_line(0x31)
	.dwattr $C$DW$139, DW_AT_decl_column(0x19)

	.sblock	".bss"
	.sblock	".data"
;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\opt2000.exe C:\\Users\\YAN\\AppData\\Local\\Temp\\{B7CFA472-8AD8-4907-B4FC-6EB275FDE651} C:\\Users\\YAN\\AppData\\Local\\Temp\\{2AEFE0D2-D70A-46FB-8EEF-7620F5585080} --advice:performance=stdout 
;	D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs\tools\compiler\ti-cgt-c2000_25.11.1.LTS\bin\acia2000.exe -@C:\\Users\\YAN\\AppData\\Local\\Temp\\{CAAC05DB-2F2D-4458-A43E-71332762E934} 
	.sect	".text:__signbitl"
	.clink
	.global	||__signbitl||

$C$DW$140	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$140, DW_AT_name("__signbitl")
	.dwattr $C$DW$140, DW_AT_low_pc(||__signbitl||)
	.dwattr $C$DW$140, DW_AT_high_pc(0x00)
	.dwattr $C$DW$140, DW_AT_linkage_name("__signbitl")
	.dwattr $C$DW$140, DW_AT_external
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$140, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$140, DW_AT_decl_column(0x18)
	.dwattr $C$DW$140, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 349,column 1,is_stmt,address ||__signbitl||,isa 0

	.dwfde $C$DW$CIE, ||__signbitl||
$C$DW$141	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$141, DW_AT_name("e")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg12]


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
$C$DW$142	.dwtag  DW_TAG_variable
	.dwattr $C$DW$142, DW_AT_name("e")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg12]

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
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$143, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |349| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |349| 
        MOVB      AH,#0                 ; [CPU_ALU] |349| 
        CMPB      AL,#0                 ; [CPU_ALU] |349| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |349| 
        MOV       AL,AH                 ; [CPU_ALU] |349| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$140, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$140, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$140, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$140

	.sect	".text:__signbitf"
	.clink
	.global	||__signbitf||

$C$DW$145	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$145, DW_AT_name("__signbitf")
	.dwattr $C$DW$145, DW_AT_low_pc(||__signbitf||)
	.dwattr $C$DW$145, DW_AT_high_pc(0x00)
	.dwattr $C$DW$145, DW_AT_linkage_name("__signbitf")
	.dwattr $C$DW$145, DW_AT_external
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$145, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$145, DW_AT_decl_column(0x18)
	.dwattr $C$DW$145, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 347,column 1,is_stmt,address ||__signbitf||,isa 0

	.dwfde $C$DW$CIE, ||__signbitf||
$C$DW$146	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$146, DW_AT_name("f")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$147	.dwtag  DW_TAG_variable
	.dwattr $C$DW$147, DW_AT_name("f")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$145, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$145, DW_AT_TI_end_line(0x15b)
	.dwattr $C$DW$145, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$145

	.sect	".text:__signbit"
	.clink
	.global	||__signbit||

$C$DW$149	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$149, DW_AT_name("__signbit")
	.dwattr $C$DW$149, DW_AT_low_pc(||__signbit||)
	.dwattr $C$DW$149, DW_AT_high_pc(0x00)
	.dwattr $C$DW$149, DW_AT_linkage_name("__signbit")
	.dwattr $C$DW$149, DW_AT_external
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$149, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0x158)
	.dwattr $C$DW$149, DW_AT_decl_column(0x18)
	.dwattr $C$DW$149, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 345,column 1,is_stmt,address ||__signbit||,isa 0

	.dwfde $C$DW$CIE, ||__signbit||
$C$DW$150	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$150, DW_AT_name("d")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg12]


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
$C$DW$151	.dwtag  DW_TAG_variable
	.dwattr $C$DW$151, DW_AT_name("d")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg12]

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
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$152, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |345| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |345| 
        MOVB      AH,#0                 ; [CPU_ALU] |345| 
        CMPB      AL,#0                 ; [CPU_ALU] |345| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |345| 
        MOV       AL,AH                 ; [CPU_ALU] |345| 
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$149, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$149, DW_AT_TI_end_line(0x159)
	.dwattr $C$DW$149, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$149

	.sect	".text:__relaxed_sqrtf"
	.clink
	.global	||__relaxed_sqrtf||

$C$DW$154	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$154, DW_AT_name("__relaxed_sqrtf")
	.dwattr $C$DW$154, DW_AT_low_pc(||__relaxed_sqrtf||)
	.dwattr $C$DW$154, DW_AT_high_pc(0x00)
	.dwattr $C$DW$154, DW_AT_linkage_name("__relaxed_sqrtf")
	.dwattr $C$DW$154, DW_AT_external
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$154, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0x108)
	.dwattr $C$DW$154, DW_AT_decl_column(0x10)
	.dwattr $C$DW$154, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 265,column 1,is_stmt,address ||__relaxed_sqrtf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sqrtf||
$C$DW$155	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$155, DW_AT_name("x")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$156	.dwtag  DW_TAG_variable
	.dwattr $C$DW$156, DW_AT_name("x")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 266,column 5,is_stmt,isa 0
        SQRTF32   R0H,R0H               ; [CPU_FPU] |266| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$154, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$154, DW_AT_TI_end_line(0x10b)
	.dwattr $C$DW$154, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$154

	.sect	".text:__relaxed_sinf"
	.clink
	.global	||__relaxed_sinf||

$C$DW$158	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$158, DW_AT_name("__relaxed_sinf")
	.dwattr $C$DW$158, DW_AT_low_pc(||__relaxed_sinf||)
	.dwattr $C$DW$158, DW_AT_high_pc(0x00)
	.dwattr $C$DW$158, DW_AT_linkage_name("__relaxed_sinf")
	.dwattr $C$DW$158, DW_AT_external
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$158, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$158, DW_AT_decl_column(0x10)
	.dwattr $C$DW$158, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 270,column 1,is_stmt,address ||__relaxed_sinf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_sinf||
$C$DW$159	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$159, DW_AT_name("x")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$160	.dwtag  DW_TAG_variable
	.dwattr $C$DW$160, DW_AT_name("x")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 271,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        SINPUF32  R0H,R0H               ; [CPU_FPU] |271| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$158, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$158, DW_AT_TI_end_line(0x110)
	.dwattr $C$DW$158, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$158

	.sect	".text:__relaxed_fmodf"
	.clink
	.global	||__relaxed_fmodf||

$C$DW$162	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$162, DW_AT_name("__relaxed_fmodf")
	.dwattr $C$DW$162, DW_AT_low_pc(||__relaxed_fmodf||)
	.dwattr $C$DW$162, DW_AT_high_pc(0x00)
	.dwattr $C$DW$162, DW_AT_linkage_name("__relaxed_fmodf")
	.dwattr $C$DW$162, DW_AT_external
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$162, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$162, DW_AT_decl_line(0x121)
	.dwattr $C$DW$162, DW_AT_decl_column(0x10)
	.dwattr $C$DW$162, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 290,column 1,is_stmt,address ||__relaxed_fmodf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_fmodf||
$C$DW$163	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$163, DW_AT_name("y")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$164	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$164, DW_AT_name("x")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$165	.dwtag  DW_TAG_variable
	.dwattr $C$DW$165, DW_AT_name("y")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("x")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$162, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$162, DW_AT_TI_end_line(0x124)
	.dwattr $C$DW$162, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$162

	.sect	".text:__relaxed_cosf"
	.clink
	.global	||__relaxed_cosf||

$C$DW$168	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$168, DW_AT_name("__relaxed_cosf")
	.dwattr $C$DW$168, DW_AT_low_pc(||__relaxed_cosf||)
	.dwattr $C$DW$168, DW_AT_high_pc(0x00)
	.dwattr $C$DW$168, DW_AT_linkage_name("__relaxed_cosf")
	.dwattr $C$DW$168, DW_AT_external
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$168, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0x112)
	.dwattr $C$DW$168, DW_AT_decl_column(0x10)
	.dwattr $C$DW$168, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 275,column 1,is_stmt,address ||__relaxed_cosf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_cosf||
$C$DW$169	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$169, DW_AT_name("x")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$170	.dwtag  DW_TAG_variable
	.dwattr $C$DW$170, DW_AT_name("x")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 276,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |276| 
        NOP       ; [CPU_ALU] 
        COSPUF32  R0H,R0H               ; [CPU_FPU] |276| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$168, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$168, DW_AT_TI_end_line(0x115)
	.dwattr $C$DW$168, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$168

	.sect	".text:__relaxed_atanf"
	.clink
	.global	||__relaxed_atanf||

$C$DW$172	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$172, DW_AT_name("__relaxed_atanf")
	.dwattr $C$DW$172, DW_AT_low_pc(||__relaxed_atanf||)
	.dwattr $C$DW$172, DW_AT_high_pc(0x00)
	.dwattr $C$DW$172, DW_AT_linkage_name("__relaxed_atanf")
	.dwattr $C$DW$172, DW_AT_external
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$172, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x117)
	.dwattr $C$DW$172, DW_AT_decl_column(0x10)
	.dwattr $C$DW$172, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 280,column 1,is_stmt,address ||__relaxed_atanf||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atanf||
$C$DW$173	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$173, DW_AT_name("x")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$174	.dwtag  DW_TAG_variable
	.dwattr $C$DW$174, DW_AT_name("x")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$172, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$172, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$172, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$172

	.sect	".text:__relaxed_atan2f"
	.clink
	.global	||__relaxed_atan2f||

$C$DW$176	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$176, DW_AT_name("__relaxed_atan2f")
	.dwattr $C$DW$176, DW_AT_low_pc(||__relaxed_atan2f||)
	.dwattr $C$DW$176, DW_AT_high_pc(0x00)
	.dwattr $C$DW$176, DW_AT_linkage_name("__relaxed_atan2f")
	.dwattr $C$DW$176, DW_AT_external
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$176, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$176, DW_AT_decl_column(0x10)
	.dwattr $C$DW$176, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 285,column 1,is_stmt,address ||__relaxed_atan2f||,isa 0

	.dwfde $C$DW$CIE, ||__relaxed_atan2f||
$C$DW$177	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$177, DW_AT_name("y")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$178	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$178, DW_AT_name("x")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x2f]


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
$C$DW$179	.dwtag  DW_TAG_variable
	.dwattr $C$DW$179, DW_AT_name("y")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to x
$C$DW$180	.dwtag  DW_TAG_variable
	.dwattr $C$DW$180, DW_AT_name("x")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x2f]

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
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$176, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h")
	.dwattr $C$DW$176, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$176, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$176

	.sect	".text:__isnormall"
	.clink
	.global	||__isnormall||

$C$DW$182	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$182, DW_AT_name("__isnormall")
	.dwattr $C$DW$182, DW_AT_low_pc(||__isnormall||)
	.dwattr $C$DW$182, DW_AT_high_pc(0x00)
	.dwattr $C$DW$182, DW_AT_linkage_name("__isnormall")
	.dwattr $C$DW$182, DW_AT_external
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$182, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0x154)
	.dwattr $C$DW$182, DW_AT_decl_column(0x18)
	.dwattr $C$DW$182, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 341,column 1,is_stmt,address ||__isnormall||,isa 0

	.dwfde $C$DW$CIE, ||__isnormall||
$C$DW$183	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$183, DW_AT_name("e")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg12]


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
$C$DW$184	.dwtag  DW_TAG_variable
	.dwattr $C$DW$184, DW_AT_name("e")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg12]

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
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$185, DW_AT_TI_call

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
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$182, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$182, DW_AT_TI_end_line(0x156)
	.dwattr $C$DW$182, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$182

	.sect	".text:__isnormalf"
	.clink
	.global	||__isnormalf||

$C$DW$187	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$187, DW_AT_name("__isnormalf")
	.dwattr $C$DW$187, DW_AT_low_pc(||__isnormalf||)
	.dwattr $C$DW$187, DW_AT_high_pc(0x00)
	.dwattr $C$DW$187, DW_AT_linkage_name("__isnormalf")
	.dwattr $C$DW$187, DW_AT_external
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$187, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x150)
	.dwattr $C$DW$187, DW_AT_decl_column(0x18)
	.dwattr $C$DW$187, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 337,column 1,is_stmt,address ||__isnormalf||,isa 0

	.dwfde $C$DW$CIE, ||__isnormalf||
$C$DW$188	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$188, DW_AT_name("f")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$189	.dwtag  DW_TAG_variable
	.dwattr $C$DW$189, DW_AT_name("f")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$187, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$187, DW_AT_TI_end_line(0x152)
	.dwattr $C$DW$187, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$187

	.sect	".text:__isnormal"
	.clink
	.global	||__isnormal||

$C$DW$191	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$191, DW_AT_name("__isnormal")
	.dwattr $C$DW$191, DW_AT_low_pc(||__isnormal||)
	.dwattr $C$DW$191, DW_AT_high_pc(0x00)
	.dwattr $C$DW$191, DW_AT_linkage_name("__isnormal")
	.dwattr $C$DW$191, DW_AT_external
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$191, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$191, DW_AT_decl_column(0x18)
	.dwattr $C$DW$191, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 333,column 1,is_stmt,address ||__isnormal||,isa 0

	.dwfde $C$DW$CIE, ||__isnormal||
$C$DW$192	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$192, DW_AT_name("d")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg12]


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
$C$DW$193	.dwtag  DW_TAG_variable
	.dwattr $C$DW$193, DW_AT_name("d")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg12]

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
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$194, DW_AT_TI_call

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
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$191, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$191, DW_AT_TI_end_line(0x14e)
	.dwattr $C$DW$191, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$191

	.sect	".text:__isnanl"
	.clink
	.global	||__isnanl||

$C$DW$196	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$196, DW_AT_name("__isnanl")
	.dwattr $C$DW$196, DW_AT_low_pc(||__isnanl||)
	.dwattr $C$DW$196, DW_AT_high_pc(0x00)
	.dwattr $C$DW$196, DW_AT_linkage_name("__isnanl")
	.dwattr $C$DW$196, DW_AT_external
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$196, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x148)
	.dwattr $C$DW$196, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$196, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 329,column 1,is_stmt,address ||__isnanl||,isa 0

	.dwfde $C$DW$CIE, ||__isnanl||
$C$DW$197	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$197, DW_AT_name("e")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg12]


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
$C$DW$198	.dwtag  DW_TAG_variable
	.dwattr $C$DW$198, DW_AT_name("e")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg12]

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
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$199, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |329| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |329| 
        CMPB      AL,#0                 ; [CPU_ALU] |329| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |329| 
||$C$L4||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |329| 
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$196, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$196, DW_AT_TI_end_line(0x14a)
	.dwattr $C$DW$196, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$196

	.sect	".text:__isnanf"
	.clink
	.global	||__isnanf||

$C$DW$201	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$201, DW_AT_name("__isnanf")
	.dwattr $C$DW$201, DW_AT_low_pc(||__isnanf||)
	.dwattr $C$DW$201, DW_AT_high_pc(0x00)
	.dwattr $C$DW$201, DW_AT_linkage_name("__isnanf")
	.dwattr $C$DW$201, DW_AT_external
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$201, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0x145)
	.dwattr $C$DW$201, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$201, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 326,column 1,is_stmt,address ||__isnanf||,isa 0

	.dwfde $C$DW$CIE, ||__isnanf||
$C$DW$202	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$202, DW_AT_name("f")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$203	.dwtag  DW_TAG_variable
	.dwattr $C$DW$203, DW_AT_name("f")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$201, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$201, DW_AT_TI_end_line(0x147)
	.dwattr $C$DW$201, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$201

	.sect	".text:__isnan"
	.clink
	.global	||__isnan||

$C$DW$205	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$205, DW_AT_name("__isnan")
	.dwattr $C$DW$205, DW_AT_low_pc(||__isnan||)
	.dwattr $C$DW$205, DW_AT_high_pc(0x00)
	.dwattr $C$DW$205, DW_AT_linkage_name("__isnan")
	.dwattr $C$DW$205, DW_AT_external
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$205, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0x142)
	.dwattr $C$DW$205, DW_AT_decl_column(0x1e)
	.dwattr $C$DW$205, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 323,column 1,is_stmt,address ||__isnan||,isa 0

	.dwfde $C$DW$CIE, ||__isnan||
$C$DW$206	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$206, DW_AT_name("d")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg12]


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
$C$DW$207	.dwtag  DW_TAG_variable
	.dwattr $C$DW$207, DW_AT_name("d")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg12]

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
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$208, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |323| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |323| 
        CMPB      AL,#0                 ; [CPU_ALU] |323| 
        MOVB      XAR4,#1,NEQ           ; [CPU_ALU] |323| 
||$C$L6||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |323| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$205, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$205, DW_AT_TI_end_line(0x144)
	.dwattr $C$DW$205, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$205

	.sect	".text:__isinfl"
	.clink
	.global	||__isinfl||

$C$DW$210	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$210, DW_AT_name("__isinfl")
	.dwattr $C$DW$210, DW_AT_low_pc(||__isinfl||)
	.dwattr $C$DW$210, DW_AT_high_pc(0x00)
	.dwattr $C$DW$210, DW_AT_linkage_name("__isinfl")
	.dwattr $C$DW$210, DW_AT_external
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$210, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$210, DW_AT_decl_line(0x167)
	.dwattr $C$DW$210, DW_AT_decl_column(0x18)
	.dwattr $C$DW$210, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 360,column 1,is_stmt,address ||__isinfl||,isa 0

	.dwfde $C$DW$CIE, ||__isinfl||
$C$DW$211	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$211, DW_AT_name("e")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg12]


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
$C$DW$212	.dwtag  DW_TAG_variable
	.dwattr $C$DW$212, DW_AT_name("e")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg12]

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
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$213, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |360| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |360| 
        CMPB      AL,#0                 ; [CPU_ALU] |360| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |360| 
||$C$L7||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |360| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$210, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$210, DW_AT_TI_end_line(0x168)
	.dwattr $C$DW$210, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$210

	.sect	".text:__isinff"
	.clink
	.global	||__isinff||

$C$DW$215	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$215, DW_AT_name("__isinff")
	.dwattr $C$DW$215, DW_AT_low_pc(||__isinff||)
	.dwattr $C$DW$215, DW_AT_high_pc(0x00)
	.dwattr $C$DW$215, DW_AT_linkage_name("__isinff")
	.dwattr $C$DW$215, DW_AT_external
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$215, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0x163)
	.dwattr $C$DW$215, DW_AT_decl_column(0x18)
	.dwattr $C$DW$215, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 356,column 1,is_stmt,address ||__isinff||,isa 0

	.dwfde $C$DW$CIE, ||__isinff||
$C$DW$216	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$216, DW_AT_name("f")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$217	.dwtag  DW_TAG_variable
	.dwattr $C$DW$217, DW_AT_name("f")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$215, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$215, DW_AT_TI_end_line(0x164)
	.dwattr $C$DW$215, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$215

	.sect	".text:__isinf"
	.clink
	.global	||__isinf||

$C$DW$219	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$219, DW_AT_name("__isinf")
	.dwattr $C$DW$219, DW_AT_low_pc(||__isinf||)
	.dwattr $C$DW$219, DW_AT_high_pc(0x00)
	.dwattr $C$DW$219, DW_AT_linkage_name("__isinf")
	.dwattr $C$DW$219, DW_AT_external
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$219, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0x165)
	.dwattr $C$DW$219, DW_AT_decl_column(0x18)
	.dwattr $C$DW$219, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 358,column 1,is_stmt,address ||__isinf||,isa 0

	.dwfde $C$DW$CIE, ||__isinf||
$C$DW$220	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$220, DW_AT_name("d")
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg12]


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
$C$DW$221	.dwtag  DW_TAG_variable
	.dwattr $C$DW$221, DW_AT_name("d")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg12]

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
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$222, DW_AT_TI_call

        LCR       #||__c28xabi_cmpull|| ; [CPU_ALU] |358| 
        ; call occurs [#||__c28xabi_cmpull||] ; [] |358| 
        CMPB      AL,#0                 ; [CPU_ALU] |358| 
        MOVB      XAR4,#1,EQ            ; [CPU_ALU] |358| 
||$C$L9||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR4                ; [CPU_ALU] |358| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$219, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$219, DW_AT_TI_end_line(0x166)
	.dwattr $C$DW$219, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$219

	.sect	".text:__isfinitel"
	.clink
	.global	||__isfinitel||

$C$DW$224	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$224, DW_AT_name("__isfinitel")
	.dwattr $C$DW$224, DW_AT_low_pc(||__isfinitel||)
	.dwattr $C$DW$224, DW_AT_high_pc(0x00)
	.dwattr $C$DW$224, DW_AT_linkage_name("__isfinitel")
	.dwattr $C$DW$224, DW_AT_external
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$224, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$224, DW_AT_decl_column(0x18)
	.dwattr $C$DW$224, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 320,column 1,is_stmt,address ||__isfinitel||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitel||
$C$DW$225	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$225, DW_AT_name("e")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg12]


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
$C$DW$226	.dwtag  DW_TAG_variable
	.dwattr $C$DW$226, DW_AT_name("e")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg12]

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
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$224, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$224, DW_AT_TI_end_line(0x140)
	.dwattr $C$DW$224, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$224

	.sect	".text:__isfinitef"
	.clink
	.global	||__isfinitef||

$C$DW$228	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$228, DW_AT_name("__isfinitef")
	.dwattr $C$DW$228, DW_AT_low_pc(||__isfinitef||)
	.dwattr $C$DW$228, DW_AT_high_pc(0x00)
	.dwattr $C$DW$228, DW_AT_linkage_name("__isfinitef")
	.dwattr $C$DW$228, DW_AT_external
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$228, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$228, DW_AT_decl_column(0x18)
	.dwattr $C$DW$228, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 318,column 1,is_stmt,address ||__isfinitef||,isa 0

	.dwfde $C$DW$CIE, ||__isfinitef||
$C$DW$229	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$229, DW_AT_name("f")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$230	.dwtag  DW_TAG_variable
	.dwattr $C$DW$230, DW_AT_name("f")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$228, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$228, DW_AT_TI_end_line(0x13e)
	.dwattr $C$DW$228, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$228

	.sect	".text:__isfinite"
	.clink
	.global	||__isfinite||

$C$DW$232	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$232, DW_AT_name("__isfinite")
	.dwattr $C$DW$232, DW_AT_low_pc(||__isfinite||)
	.dwattr $C$DW$232, DW_AT_high_pc(0x00)
	.dwattr $C$DW$232, DW_AT_linkage_name("__isfinite")
	.dwattr $C$DW$232, DW_AT_external
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$232, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$232, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$232, DW_AT_decl_column(0x18)
	.dwattr $C$DW$232, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 316,column 1,is_stmt,address ||__isfinite||,isa 0

	.dwfde $C$DW$CIE, ||__isfinite||
$C$DW$233	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$233, DW_AT_name("d")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg12]


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
$C$DW$234	.dwtag  DW_TAG_variable
	.dwattr $C$DW$234, DW_AT_name("d")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg12]

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
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$232, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$232, DW_AT_TI_end_line(0x13c)
	.dwattr $C$DW$232, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$232

	.sect	".text:__fpclassifyl"
	.clink
	.global	||__fpclassifyl||

$C$DW$236	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$236, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$236, DW_AT_low_pc(||__fpclassifyl||)
	.dwattr $C$DW$236, DW_AT_high_pc(0x00)
	.dwattr $C$DW$236, DW_AT_linkage_name("__fpclassifyl")
	.dwattr $C$DW$236, DW_AT_external
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$236, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$236, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$236, DW_AT_decl_column(0x18)
	.dwattr $C$DW$236, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 412,column 1,is_stmt,address ||__fpclassifyl||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyl||
$C$DW$237	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$237, DW_AT_name("e")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassifyl                 FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassifyl||:
$C$DW$238	.dwtag  DW_TAG_variable
	.dwattr $C$DW$238, DW_AT_name("e")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to e
$C$DW$239	.dwtag  DW_TAG_variable
	.dwattr $C$DW$239, DW_AT_name("e")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg12]

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
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$240, DW_AT_TI_call

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
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$241, DW_AT_TI_call

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
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$242, DW_AT_TI_call

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
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$236, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$236, DW_AT_TI_end_line(0x1aa)
	.dwattr $C$DW$236, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$236

	.sect	".text:__fpclassifyf"
	.clink
	.global	||__fpclassifyf||

$C$DW$244	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$244, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$244, DW_AT_low_pc(||__fpclassifyf||)
	.dwattr $C$DW$244, DW_AT_high_pc(0x00)
	.dwattr $C$DW$244, DW_AT_linkage_name("__fpclassifyf")
	.dwattr $C$DW$244, DW_AT_external
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$244, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0x179)
	.dwattr $C$DW$244, DW_AT_decl_column(0x18)
	.dwattr $C$DW$244, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 378,column 1,is_stmt,address ||__fpclassifyf||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassifyf||
$C$DW$245	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$245, DW_AT_name("f")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x2b]


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
$C$DW$246	.dwtag  DW_TAG_variable
	.dwattr $C$DW$246, DW_AT_name("f")
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x2b]

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
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L15||:    
	.dwcfi	remember_state
        MOVB      AL,#1                 ; [CPU_ALU] |383| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_TI_return

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
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_TI_return

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
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L18||:    
        MOVB      AL,#0                 ; [CPU_ALU] |383| 
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$244, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$244, DW_AT_TI_end_line(0x188)
	.dwattr $C$DW$244, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$244

	.sect	".text:__fpclassify"
	.clink
	.global	||__fpclassify||

$C$DW$252	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$252, DW_AT_name("__fpclassify")
	.dwattr $C$DW$252, DW_AT_low_pc(||__fpclassify||)
	.dwattr $C$DW$252, DW_AT_high_pc(0x00)
	.dwattr $C$DW$252, DW_AT_linkage_name("__fpclassify")
	.dwattr $C$DW$252, DW_AT_external
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$252, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$252, DW_AT_decl_column(0x18)
	.dwattr $C$DW$252, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h",line 395,column 1,is_stmt,address ||__fpclassify||,isa 0

	.dwfde $C$DW$CIE, ||__fpclassify||
$C$DW$253	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$253, DW_AT_name("d")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: __fpclassify                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

||__fpclassify||:
$C$DW$254	.dwtag  DW_TAG_variable
	.dwattr $C$DW$254, DW_AT_name("d")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_breg20 -8]

;* AR5   assigned to $O$C1
;* AR4   assigned to d
$C$DW$255	.dwtag  DW_TAG_variable
	.dwattr $C$DW$255, DW_AT_name("d")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg12]

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
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$256, DW_AT_TI_call

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
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$257, DW_AT_TI_call

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
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("__c28xabi_cmpull")
	.dwattr $C$DW$258, DW_AT_TI_call

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
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$252, DW_AT_TI_end_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/_defs.h")
	.dwattr $C$DW$252, DW_AT_TI_end_line(0x199)
	.dwattr $C$DW$252, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$252

	.sect	"pcmfpc_code"
	.clink
	.global	||VIENNA_PCMFPC_submitted||

$C$DW$260	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$260, DW_AT_name("VIENNA_PCMFPC_submitted")
	.dwattr $C$DW$260, DW_AT_low_pc(||VIENNA_PCMFPC_submitted||)
	.dwattr $C$DW$260, DW_AT_high_pc(0x00)
	.dwattr $C$DW$260, DW_AT_linkage_name("VIENNA_PCMFPC_submitted")
	.dwattr $C$DW$260, DW_AT_external
	.dwattr $C$DW$260, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$260, DW_AT_decl_line(0x134)
	.dwattr $C$DW$260, DW_AT_decl_column(0x06)
	.dwattr $C$DW$260, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 309,column 1,is_stmt,address ||VIENNA_PCMFPC_submitted||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_PCMFPC_submitted||
$C$DW$261	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$261, DW_AT_name("state")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_reg12]

$C$DW$262	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$262, DW_AT_name("elapsed")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: VIENNA_PCMFPC_submitted       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_PCMFPC_submitted||:
;* AR4   assigned to state
$C$DW$263	.dwtag  DW_TAG_variable
	.dwattr $C$DW$263, DW_AT_name("state")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg12]

;* AL    assigned to elapsed
$C$DW$264	.dwtag  DW_TAG_variable
	.dwattr $C$DW$264, DW_AT_name("elapsed")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||VIENNA_pcmPendingState|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 310,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmPendingState||,AR4 ; [CPU_ALU] |310| 
        MOVW      DP,#||VIENNA_pcmWriteCycles|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 311,column 5,is_stmt,isa 0
        MOVL      @||VIENNA_pcmWriteCycles||,ACC ; [CPU_ALU] |311| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 312,column 5,is_stmt,isa 0
        CMPL      ACC,@||VIENNA_pcmWriteCyclesMax|| ; [CPU_ALU] |312| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 312,column 41,is_stmt,isa 0
        MOVL      @||VIENNA_pcmWriteCyclesMax||,ACC,HI ; [CPU_ALU] |312| 
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$260, DW_AT_TI_end_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$260, DW_AT_TI_end_line(0x139)
	.dwattr $C$DW$260, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$260

	.sect	"pcmfpc_code"
	.clink
	.global	||VIENNA_PCMFPC_reset_control||

$C$DW$266	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$266, DW_AT_name("VIENNA_PCMFPC_reset_control")
	.dwattr $C$DW$266, DW_AT_low_pc(||VIENNA_PCMFPC_reset_control||)
	.dwattr $C$DW$266, DW_AT_high_pc(0x00)
	.dwattr $C$DW$266, DW_AT_linkage_name("VIENNA_PCMFPC_reset_control")
	.dwattr $C$DW$266, DW_AT_external
	.dwattr $C$DW$266, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$266, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$266, DW_AT_decl_column(0x06)
	.dwattr $C$DW$266, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 169,column 1,is_stmt,address ||VIENNA_PCMFPC_reset_control||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_PCMFPC_reset_control||

;***************************************************************
;* FNAME: VIENNA_PCMFPC_reset_control   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_PCMFPC_reset_control||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 172,column 5,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_pcmObserver|| ; [CPU_ARAU] |172| 
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_name("VO_reset")
	.dwattr $C$DW$267, DW_AT_TI_call

        LCR       #||VO_reset||         ; [CPU_ALU] |172| 
        ; call occurs [#||VO_reset||] ; [] |172| 
        MOVW      DP,#||VIENNA_pcmOutputDetailValid|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 173,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputDetailValid||,#0 ; [CPU_ALU] |173| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 174,column 5,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |174| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 175,column 5,is_stmt,isa 0
        ZERO      R2H                   ; [CPU_FPU] |175| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 175,column 28,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |175| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 173,column 36,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputIntegralValid||,#0 ; [CPU_ALU] |173| 
        MOVW      DP,#||VIENNA_vBusMeas_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 174,column 25,is_stmt,isa 0
        MOV32     R0H,@||VIENNA_vBusMeas_pu|| ; [CPU_FPU] |174| 
        MOVW      DP,#||VIENNA_pcmIdRef_A|| ; [CPU_ARAU] 
        MPYF32    R0H,R0H,#17379        ; [CPU_FPU] |174| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 172,column 35,is_stmt,isa 0
        MOV       @||history_valid||,#0 ; [CPU_ALU] |172| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 174,column 5,is_stmt,isa 0
        MOV32     @||outer_integral||,R3H ; [CPU_FPU] |174| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 175,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_pcmIdRef_A||,R2H ; [CPU_FPU] |175| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 174,column 25,is_stmt,isa 0
        MOV32     @||outer_filtered||,R0H ; [CPU_FPU] |174| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 175,column 28,is_stmt,isa 0
        MOV32     @||VIENNA_pcmIqRef_A||,R1H ; [CPU_FPU] |175| 
        MOVW      DP,#||VIENNA_pcmReferenceSaturation|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 176,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmReferenceSaturation||,#0 ; [CPU_ALU] |176| 
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$266, DW_AT_TI_end_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$266, DW_AT_TI_end_line(0xb1)
	.dwattr $C$DW$266, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$266

	.sect	"pcmfpc_code"
	.clink

$C$DW$269	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$269, DW_AT_name("pc_fault")
	.dwattr $C$DW$269, DW_AT_low_pc(||pc_fault||)
	.dwattr $C$DW$269, DW_AT_high_pc(0x00)
	.dwattr $C$DW$269, DW_AT_linkage_name("pc_fault")
	.dwattr $C$DW$269, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$269, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$269, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$269, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 128,column 1,is_stmt,address ||pc_fault||,isa 0

	.dwfde $C$DW$CIE, ||pc_fault||
$C$DW$270	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$270, DW_AT_name("reason")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: pc_fault                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||pc_fault||:
;* AL    assigned to reason
$C$DW$271	.dwtag  DW_TAG_variable
	.dwattr $C$DW$271, DW_AT_name("reason")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||VIENNA_pcmFault|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 129,column 5,is_stmt,isa 0
        OR        @||VIENNA_pcmFault||,AL ; [CPU_ALU] |129| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4653,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |4653| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4654,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x409b)        ; [CPU_ALU] |4654| 
        ORB       AL,#0x04              ; [CPU_ALU] |4654| 
        MOV       *(0:0x409b),AL        ; [CPU_ALU] |4654| 
        MOV       AL,*(0:0x419b)        ; [CPU_ALU] |4654| 
        ORB       AL,#0x04              ; [CPU_ALU] |4654| 
        MOV       *(0:0x419b),AL        ; [CPU_ALU] |4654| 
        MOV       AL,*(0:0x429b)        ; [CPU_ALU] |4654| 
        ORB       AL,#0x04              ; [CPU_ALU] |4654| 
        MOV       *(0:0x429b),AL        ; [CPU_ALU] |4654| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4655,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |4655| 
	.dwpsn	file "..\vienna.h",line 426,column 5,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |426| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 133,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmActualAppliedState||,#0 ; [CPU_ALU] |133| 
	.dwpsn	file "..\vienna.h",line 428,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |428| 
	.dwpsn	file "..\vienna.h",line 429,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |429| 
	.dwpsn	file "..\vienna.h",line 427,column 5,is_stmt,isa 0
        ZERO      R2H                   ; [CPU_FPU] |427| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 134,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmPendingState||,#0 ; [CPU_ALU] |134| 
        MOVW      DP,#||VIENNA_fcsSwitchState|| ; [CPU_ARAU] 
	.dwpsn	file "..\vienna.h",line 425,column 5,is_stmt,isa 0
        MOV       @||VIENNA_fcsSwitchState||,#0 ; [CPU_ALU] |425| 
        MOVW      DP,#||VIENNA_iLRef_pu|| ; [CPU_ARAU] 
	.dwpsn	file "..\vienna.h",line 426,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_iLRef_pu||,R3H ; [CPU_FPU] |426| 
        MOVW      DP,#||VIENNA_closeGiLoop|| ; [CPU_ARAU] 
	.dwpsn	file "..\vienna.h",line 421,column 5,is_stmt,isa 0
        MOV       @||VIENNA_closeGiLoop||,#0 ; [CPU_ALU] |421| 
        MOVW      DP,#||VIENNA_closeGvLoop|| ; [CPU_ARAU] 
	.dwpsn	file "..\vienna.h",line 422,column 5,is_stmt,isa 0
        MOV       @||VIENNA_closeGvLoop||,#0 ; [CPU_ALU] |422| 
        MOVW      DP,#||VIENNA_closeGsLoop|| ; [CPU_ARAU] 
	.dwpsn	file "..\vienna.h",line 423,column 5,is_stmt,isa 0
        MOV       @||VIENNA_closeGsLoop||,#0 ; [CPU_ALU] |423| 
        MOVW      DP,#||VIENNA_firstTimeGvLoop|| ; [CPU_ARAU] 
	.dwpsn	file "..\vienna.h",line 424,column 5,is_stmt,isa 0
        MOVB      @||VIENNA_firstTimeGvLoop||,#1,UNC ; [CPU_ALU] |424| 
        MOVW      DP,#||VIENNA_gv||+4   ; [CPU_ARAU] 
	.dwpsn	file "..\vienna.h",line 428,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_gv||)+4,R1H ; [CPU_FPU] |428| 
	.dwpsn	file "..\vienna.h",line 429,column 5,is_stmt,isa 0
        MOV32     @$BLOCKED(||VIENNA_gv||)+10,R0H ; [CPU_FPU] |429| 
        MOVW      DP,#||VIENNA_gv_out|| ; [CPU_ARAU] 
	.dwpsn	file "..\vienna.h",line 427,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_gv_out||,R2H ; [CPU_FPU] |427| 
	.dwpsn	file "..\vienna.h",line 431,column 5,is_stmt,isa 0
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("VIENNA_PCMFPC_reset_control")
	.dwattr $C$DW$272, DW_AT_TI_call

        LCR       #||VIENNA_PCMFPC_reset_control|| ; [CPU_ALU] |431| 
        ; call occurs [#||VIENNA_PCMFPC_reset_control||] ; [] |431| 
        MOVW      DP,#||VIENNA_clearTrip|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 136,column 5,is_stmt,isa 0
        MOV       @||VIENNA_clearTrip||,#0 ; [CPU_ALU] |136| 
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$269, DW_AT_TI_end_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$269, DW_AT_TI_end_line(0x89)
	.dwattr $C$DW$269, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$269

	.sect	".text"
	.clink

$C$DW$274	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$274, DW_AT_name("pc_run_selected")
	.dwattr $C$DW$274, DW_AT_low_pc(||pc_run_selected||)
	.dwattr $C$DW$274, DW_AT_high_pc(0x00)
	.dwattr $C$DW$274, DW_AT_linkage_name("pc_run_selected")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$274, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$274, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$274, DW_AT_decl_column(0x11)
	.dwattr $C$DW$274, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 75,column 1,is_stmt,address ||pc_run_selected||,isa 0

	.dwfde $C$DW$CIE, ||pc_run_selected||
$C$DW$275	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$275, DW_AT_name("cfg")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_reg12]

$C$DW$276	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$276, DW_AT_name("in")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_reg14]

$C$DW$277	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$277, DW_AT_name("out")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: pc_run_selected               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||pc_run_selected||:
;* AH    assigned to $O$C32
;* AL    assigned to status
$C$DW$278	.dwtag  DW_TAG_variable
	.dwattr $C$DW$278, DW_AT_name("status")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_reg0]

;* AL    assigned to status
$C$DW$279	.dwtag  DW_TAG_variable
	.dwattr $C$DW$279, DW_AT_name("status")
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$279, DW_AT_location[DW_OP_reg0]

;* AR6   assigned to $O$S1
;* AR4   assigned to cfg
$C$DW$280	.dwtag  DW_TAG_variable
	.dwattr $C$DW$280, DW_AT_name("cfg")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_reg12]

;* AR6   assigned to out
$C$DW$281	.dwtag  DW_TAG_variable
	.dwattr $C$DW$281, DW_AT_name("out")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 77,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |77| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_ALU] |77| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 75,column 1,is_stmt,isa 0
        MOVL      XAR6,*-SP[6]          ; [CPU_ALU] |75| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 77,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |77| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |77| 
        ; branchcc occurs ; [] |77| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 81,column 9,is_stmt,isa 0
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |81| 
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_name("PC_run")
	.dwattr $C$DW$282, DW_AT_TI_call

        LCR       #||PC_run||           ; [CPU_ALU] |81| 
        ; call occurs [#||PC_run||] ; [] |81| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 81,column 35,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |81| 
        MOVW      DP,#||VIENNA_pcmOutputDetailValid|| ; [CPU_ARAU] 
        CMPB      AL,#0                 ; [CPU_ALU] |81| 
        MOVB      AH,#1,EQ              ; [CPU_ALU] |81| 
        MOV       @||VIENNA_pcmOutputDetailValid||,AH ; [CPU_ALU] |81| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 82,column 9,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputIntegralValid||,AH ; [CPU_ALU] |82| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 84,column 5,is_stmt,isa 0
        B         ||$C$L26||,UNC        ; [CPU_ALU] |84| 
        ; branch occurs ; [] |84| 
||$C$L24||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 78,column 9,is_stmt,isa 0
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |78| 
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_name("PC_run_fast")
	.dwattr $C$DW$283, DW_AT_TI_call

        LCR       #||PC_run_fast||      ; [CPU_ALU] |78| 
        ; call occurs [#||PC_run_fast||] ; [] |78| 
        MOVW      DP,#||VIENNA_pcmOutputDetailValid|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 79,column 9,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |79| 
        MOVB      XAR6,#0               ; [CPU_ALU] |79| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 78,column 40,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputDetailValid||,#0 ; [CPU_ALU] |78| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 79,column 9,is_stmt,isa 0
        B         ||$C$L25||,NEQ        ; [CPU_ALU] |79| 
        ; branchcc occurs ; [] |79| 
        MOVW      DP,#||PC_fast_output_integrals_available|| ; [CPU_ARAU] 
        MOV       AH,@||PC_fast_output_integrals_available|| ; [CPU_ALU] |79| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |79| 
||$C$L25||:    
        MOVW      DP,#||VIENNA_pcmOutputIntegralValid|| ; [CPU_ARAU] 
        MOV       @||VIENNA_pcmOutputIntegralValid||,AR6 ; [CPU_ALU] |79| 
||$C$L26||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$274, DW_AT_TI_end_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$274, DW_AT_TI_end_line(0x55)
	.dwattr $C$DW$274, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$274

	.sect	".text"
	.clink

$C$DW$285	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$285, DW_AT_name("pc_elapsed")
	.dwattr $C$DW$285, DW_AT_low_pc(||pc_elapsed||)
	.dwattr $C$DW$285, DW_AT_high_pc(0x00)
	.dwattr $C$DW$285, DW_AT_linkage_name("pc_elapsed")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$285, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$285, DW_AT_decl_line(0x44)
	.dwattr $C$DW$285, DW_AT_decl_column(0x11)
	.dwattr $C$DW$285, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 69,column 1,is_stmt,address ||pc_elapsed||,isa 0

	.dwfde $C$DW$CIE, ||pc_elapsed||
$C$DW$286	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$286, DW_AT_name("start")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: pc_elapsed                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||pc_elapsed||:
;* AR6   assigned to start
$C$DW$287	.dwtag  DW_TAG_variable
	.dwattr $C$DW$287, DW_AT_name("start")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg16]

;* PL    assigned to end
$C$DW$288	.dwtag  DW_TAG_variable
	.dwattr $C$DW$288, DW_AT_name("end")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg2]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR6,ACC              ; [CPU_ALU] |69| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 356,column 5,is_stmt,isa 0
        MOV32     P,*(0:0x0c00)         ; [CPU_FPU] |356| 
        MOVL      ACC,P                 ; [CPU_ALU] |356| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 72,column 5,is_stmt,isa 0
        CMPL      ACC,XAR6              ; [CPU_ALU] |72| 
        B         ||$C$L27||,HI         ; [CPU_ALU] |72| 
        ; branchcc occurs ; [] |72| 
	.dwcfi	remember_state
        MOVL      ACC,XAR6              ; [CPU_ALU] |72| 
        SUBL      ACC,P                 ; [CPU_ALU] |72| 
$C$DW$289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$289, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L27||:    
        MOVL      ACC,XAR6              ; [CPU_ALU] |72| 
        SUBL      ACC,P                 ; [CPU_ALU] |72| 
        ADD       ACC,#15625 << 7       ; [CPU_ALU] |72| 
$C$DW$290	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$290, DW_AT_low_pc(0x00)
	.dwattr $C$DW$290, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$285, DW_AT_TI_end_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$285, DW_AT_TI_end_line(0x49)
	.dwattr $C$DW$285, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$285

	.sect	"pcmfpc_code"
	.clink
	.global	||VIENNA_PCMFPC_select||

$C$DW$291	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$291, DW_AT_name("VIENNA_PCMFPC_select")
	.dwattr $C$DW$291, DW_AT_low_pc(||VIENNA_PCMFPC_select||)
	.dwattr $C$DW$291, DW_AT_high_pc(0x00)
	.dwattr $C$DW$291, DW_AT_linkage_name("VIENNA_PCMFPC_select")
	.dwattr $C$DW$291, DW_AT_external
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$291, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$291, DW_AT_decl_line(0x124)
	.dwattr $C$DW$291, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$291, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 293,column 1,is_stmt,address ||VIENNA_PCMFPC_select||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_PCMFPC_select||

;***************************************************************
;* FNAME: VIENNA_PCMFPC_select          FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||VIENNA_PCMFPC_select||:
;* AH    assigned to $O$C18
;* AL    assigned to status
$C$DW$292	.dwtag  DW_TAG_variable
	.dwattr $C$DW$292, DW_AT_name("status")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg0]

;* AL    assigned to status
$C$DW$293	.dwtag  DW_TAG_variable
	.dwattr $C$DW$293, DW_AT_name("status")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg0]

;* AR5   assigned to $O$K26
;* AR4   assigned to $O$K20
;* AL    assigned to $O$v1
;* AL    assigned to $O$R1
;* AL    assigned to $O$R2
;* AR2   assigned to begin
$C$DW$294	.dwtag  DW_TAG_variable
	.dwattr $C$DW$294, DW_AT_name("begin")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg8]

;* AR6   assigned to $O$S1
;* AR2   assigned to start
$C$DW$295	.dwtag  DW_TAG_variable
	.dwattr $C$DW$295, DW_AT_name("start")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_reg8]

;* PL    assigned to end
$C$DW$296	.dwtag  DW_TAG_variable
	.dwattr $C$DW$296, DW_AT_name("end")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_reg2]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
        MOVW      DP,#||VIENNA_pcmGrid||+23 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 295,column 5,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||VIENNA_pcmGrid||)+23 ; [CPU_ALU] |295| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 356,column 5,is_stmt,isa 0
        MOV32     XAR2,*(0:0x0c00)      ; [CPU_FPU] |356| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 295,column 5,is_stmt,isa 0
        B         ||$C$L28||,EQ         ; [CPU_ALU] |295| 
        ; branchcc occurs ; [] |295| 
        MOVW      DP,#||VIENNA_pcmHardwareRelease|| ; [CPU_ARAU] 
        MOV       AL,@||VIENNA_pcmHardwareRelease|| ; [CPU_ALU] |295| 
        B         ||$C$L28||,EQ         ; [CPU_ALU] |295| 
        ; branchcc occurs ; [] |295| 
        MOVW      DP,#||VIENNA_pcmObserver||+15 ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(||VIENNA_pcmObserver||)+15 ; [CPU_ALU] |295| 
        B         ||$C$L29||,NEQ        ; [CPU_ALU] |295| 
        ; branchcc occurs ; [] |295| 
||$C$L28||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 296,column 9,is_stmt,isa 0
        MOVB      AL,#8                 ; [CPU_ALU] |296| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 296,column 38,is_stmt,isa 0
        B         ||$C$L36||,UNC        ; [CPU_ALU] |296| 
        ; branch occurs ; [] |296| 
||$C$L29||:    
        MOVW      DP,#||VIENNA_pcmRootMethodActive|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 298,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |298| 
        MOVL      XAR4,#||pc_config||   ; [CPU_ARAU] |298| 
        MOV       AL,@||VIENNA_pcmRootMethodActive|| ; [CPU_ALU] |298| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 299,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |299| 
        MOVL      XAR5,#||VIENNA_pcmInput|| ; [CPU_ARAU] |299| 
        MOVB      XAR1,#29              ; [CPU_ALU] |299| 
        MOV       AH,@||VIENNA_pcmModeActive|| ; [CPU_ALU] |299| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 298,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |298| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 299,column 5,is_stmt,isa 0
        CMPB      AH,#2                 ; [CPU_ALU] |299| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 300,column 5,is_stmt,isa 0
        MOVB      XAR0,#30              ; [CPU_ALU] |300| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 299,column 5,is_stmt,isa 0
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |299| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 77,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |77| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 300,column 5,is_stmt,isa 0
        MOVB      *+XAR5[AR0],#1,UNC    ; [CPU_ALU] |300| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 299,column 5,is_stmt,isa 0
        MOV       *+XAR5[AR1],AR6       ; [CPU_ALU] |299| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 77,column 5,is_stmt,isa 0
        B         ||$C$L31||,NEQ        ; [CPU_ALU] |77| 
        ; branchcc occurs ; [] |77| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 78,column 9,is_stmt,isa 0
        MOVL      XAR6,#||VIENNA_pcmOutput|| ; [CPU_ARAU] |78| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |78| 
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_name("PC_run_fast")
	.dwattr $C$DW$297, DW_AT_TI_call

        LCR       #||PC_run_fast||      ; [CPU_ALU] |78| 
        ; call occurs [#||PC_run_fast||] ; [] |78| 
        MOVW      DP,#||VIENNA_pcmOutputDetailValid|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 79,column 9,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |79| 
        MOVB      XAR6,#0               ; [CPU_ALU] |79| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 78,column 40,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputDetailValid||,#0 ; [CPU_ALU] |78| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 79,column 9,is_stmt,isa 0
        B         ||$C$L30||,NEQ        ; [CPU_ALU] |79| 
        ; branchcc occurs ; [] |79| 
        MOVW      DP,#||PC_fast_output_integrals_available|| ; [CPU_ARAU] 
        MOV       AH,@||PC_fast_output_integrals_available|| ; [CPU_ALU] |79| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |79| 
||$C$L30||:    
        MOVW      DP,#||VIENNA_pcmOutputIntegralValid|| ; [CPU_ARAU] 
        MOV       @||VIENNA_pcmOutputIntegralValid||,AR6 ; [CPU_ALU] |79| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 84,column 5,is_stmt,isa 0
        B         ||$C$L32||,UNC        ; [CPU_ALU] |84| 
        ; branch occurs ; [] |84| 
||$C$L31||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 81,column 9,is_stmt,isa 0
        MOVL      XAR6,#||VIENNA_pcmOutput|| ; [CPU_ARAU] |81| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |81| 
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_name("PC_run")
	.dwattr $C$DW$298, DW_AT_TI_call

        LCR       #||PC_run||           ; [CPU_ALU] |81| 
        ; call occurs [#||PC_run||] ; [] |81| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 81,column 35,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |81| 
        MOVW      DP,#||VIENNA_pcmOutputDetailValid|| ; [CPU_ARAU] 
        CMPB      AL,#0                 ; [CPU_ALU] |81| 
        MOVB      AH,#1,EQ              ; [CPU_ALU] |81| 
        MOV       @||VIENNA_pcmOutputDetailValid||,AH ; [CPU_ALU] |81| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 82,column 9,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputIntegralValid||,AH ; [CPU_ALU] |82| 
||$C$L32||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 301,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmCoreStatus||,AL ; [CPU_ALU] |301| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 302,column 5,is_stmt,isa 0
        MOVB      @||VIENNA_pcmOutputSource||,#1,UNC ; [CPU_ALU] |302| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 356,column 5,is_stmt,isa 0
        MOV32     P,*(0:0x0c00)         ; [CPU_FPU] |356| 
        MOVL      ACC,P                 ; [CPU_ALU] |356| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 72,column 5,is_stmt,isa 0
        CMPL      ACC,XAR2              ; [CPU_ALU] |72| 
        B         ||$C$L33||,HI         ; [CPU_ALU] |72| 
        ; branchcc occurs ; [] |72| 
        MOVL      ACC,XAR2              ; [CPU_ALU] |72| 
        SUBL      ACC,P                 ; [CPU_ALU] |72| 
        B         ||$C$L34||,UNC        ; [CPU_ALU] |72| 
        ; branch occurs ; [] |72| 
||$C$L33||:    
        MOVL      ACC,XAR2              ; [CPU_ALU] |72| 
        SUBL      ACC,P                 ; [CPU_ALU] |72| 
        ADD       ACC,#15625 << 7       ; [CPU_ALU] |72| 
||$C$L34||:    
        MOVW      DP,#||VIENNA_pcmAlgorithmCycles|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 303,column 5,is_stmt,isa 0
        MOVL      @||VIENNA_pcmAlgorithmCycles||,ACC ; [CPU_ALU] |303| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 304,column 5,is_stmt,isa 0
        MOVL      ACC,@||VIENNA_pcmAlgorithmCyclesMax|| ; [CPU_ALU] |304| 
        CMPL      ACC,@||VIENNA_pcmAlgorithmCycles|| ; [CPU_ALU] |304| 
        B         ||$C$L35||,HIS        ; [CPU_ALU] |304| 
        ; branchcc occurs ; [] |304| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 304,column 63,is_stmt,isa 0
        MOVL      ACC,@||VIENNA_pcmAlgorithmCycles|| ; [CPU_ALU] |304| 
        MOVL      @||VIENNA_pcmAlgorithmCyclesMax||,ACC ; [CPU_ALU] |304| 
||$C$L35||:    
        MOVW      DP,#||VIENNA_pcmCoreStatus|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 305,column 5,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmCoreStatus|| ; [CPU_ALU] |305| 
        B         ||$C$L37||,EQ         ; [CPU_ALU] |305| 
        ; branchcc occurs ; [] |305| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 305,column 37,is_stmt,isa 0
        MOVB      AL,#16                ; [CPU_ALU] |305| 
||$C$L36||:    
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_name("pc_fault")
	.dwattr $C$DW$299, DW_AT_TI_call

        LCR       #||pc_fault||         ; [CPU_ALU] |305| 
        ; call occurs [#||pc_fault||] ; [] |305| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 305,column 62,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |305| 
        B         ||$C$L38||,UNC        ; [CPU_ALU] |305| 
        ; branch occurs ; [] |305| 
||$C$L37||:    
        MOVW      DP,#||VIENNA_pcmOutput||+3 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 306,column 5,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||VIENNA_pcmOutput||)+3 ; [CPU_ALU] |306| 
||$C$L38||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$291, DW_AT_TI_end_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$291, DW_AT_TI_end_line(0x133)
	.dwattr $C$DW$291, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$291

	.sect	".text"
	.clink

$C$DW$301	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$301, DW_AT_name("pc_finite")
	.dwattr $C$DW$301, DW_AT_low_pc(||pc_finite||)
	.dwattr $C$DW$301, DW_AT_high_pc(0x00)
	.dwattr $C$DW$301, DW_AT_linkage_name("pc_finite")
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$301, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$301, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$301, DW_AT_decl_column(0x11)
	.dwattr $C$DW$301, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 64,column 1,is_stmt,address ||pc_finite||,isa 0

	.dwfde $C$DW$CIE, ||pc_finite||
$C$DW$302	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$302, DW_AT_name("value")
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: pc_finite                     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

||pc_finite||:
$C$DW$303	.dwtag  DW_TAG_variable
	.dwattr $C$DW$303, DW_AT_name("bits")
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$303, DW_AT_location[DW_OP_breg20 -2]

;* R0    assigned to value
$C$DW$304	.dwtag  DW_TAG_variable
	.dwattr $C$DW$304, DW_AT_name("value")
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$304, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        MOV32     *-SP[2],R0H           ; [CPU_FPU] |65| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 66,column 5,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |66| 
        MOV       PH,#32640             ; [CPU_ALU] |66| 
        MOVB      XAR6,#0               ; [CPU_ALU] |66| 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |66| 
        ANDB      AL,#0                 ; [CPU_ALU] |66| 
        AND       AH,#32640             ; [CPU_ALU] |66| 
        CMPL      ACC,P                 ; [CPU_ALU] |66| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |66| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
        MOV       AL,AR6                ; [CPU_ALU] |66| 
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$301, DW_AT_TI_end_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$301, DW_AT_TI_end_line(0x43)
	.dwattr $C$DW$301, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$301

	.sect	"pcmfpc_code"
	.clink
	.global	||VIENNA_PCMFPC_sample||

$C$DW$306	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$306, DW_AT_name("VIENNA_PCMFPC_sample")
	.dwattr $C$DW$306, DW_AT_low_pc(||VIENNA_PCMFPC_sample||)
	.dwattr $C$DW$306, DW_AT_high_pc(0x00)
	.dwattr $C$DW$306, DW_AT_linkage_name("VIENNA_PCMFPC_sample")
	.dwattr $C$DW$306, DW_AT_external
	.dwattr $C$DW$306, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$306, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$306, DW_AT_decl_column(0x06)
	.dwattr $C$DW$306, DW_AT_TI_max_frame_size(-44)
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 179,column 1,is_stmt,address ||VIENNA_PCMFPC_sample||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_PCMFPC_sample||
$C$DW$307	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$307, DW_AT_name("trip")
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$307, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: VIENNA_PCMFPC_sample          FR SIZE:  42           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            7 Parameter, 23 Auto, 12 SOE     *
;***************************************************************

||VIENNA_PCMFPC_sample||:
$C$DW$308	.dwtag  DW_TAG_variable
	.dwattr $C$DW$308, DW_AT_name("idq")
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$308, DW_AT_location[DW_OP_breg20 -12]

$C$DW$309	.dwtag  DW_TAG_variable
	.dwattr $C$DW$309, DW_AT_name("edq")
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$309, DW_AT_location[DW_OP_breg20 -16]

$C$DW$310	.dwtag  DW_TAG_variable
	.dwattr $C$DW$310, DW_AT_name("delta")
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$310, DW_AT_location[DW_OP_breg20 -20]

$C$DW$311	.dwtag  DW_TAG_variable
	.dwattr $C$DW$311, DW_AT_name("bits")
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$311, DW_AT_location[DW_OP_breg20 -22]

$C$DW$312	.dwtag  DW_TAG_variable
	.dwattr $C$DW$312, DW_AT_name("bits")
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$312, DW_AT_location[DW_OP_breg20 -24]

$C$DW$313	.dwtag  DW_TAG_variable
	.dwattr $C$DW$313, DW_AT_name("bits")
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$313, DW_AT_location[DW_OP_breg20 -26]

$C$DW$314	.dwtag  DW_TAG_variable
	.dwattr $C$DW$314, DW_AT_name("bits")
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$314, DW_AT_location[DW_OP_breg20 -28]

;* R0    assigned to $O$C5
;* AR4   assigned to $O$C6
;* AR4   assigned to $O$C7
;* R0    assigned to $O$C8
;* R0    assigned to $O$C9
;* R2    assigned to $O$C10
;* AR5   assigned to $O$C11
;* AR2   assigned to $O$U37
;* AR4   assigned to $O$U37
;* AR7   assigned to $O$U134
;* AR0   assigned to $O$U134
;* AR5   assigned to $O$U142
;* AR7   assigned to $O$U142
;* AR3   assigned to $O$K11
;* AR2   assigned to $O$K8
;* AR4   assigned to $O$U138
;* AR5   assigned to $O$K137
;* AR4   assigned to $O$K111
;* AR3   assigned to $O$K93
;* AR3   assigned to $O$U176
;* AR4   assigned to $O$U181
$C$DW$315	.dwtag  DW_TAG_variable
	.dwattr $C$DW$315, DW_AT_name("trip")
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$315, DW_AT_location[DW_OP_breg20 -30]

;* AR1   assigned to active
$C$DW$316	.dwtag  DW_TAG_variable
	.dwattr $C$DW$316, DW_AT_name("active")
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$316, DW_AT_location[DW_OP_reg6]

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
        ADDB      SP,#30                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -44
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 180,column 25,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |180| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 188,column 5,is_stmt,isa 0
        MOVL      XAR2,#||VIENNA_pcmInput|| ; [CPU_ARAU] |188| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 180,column 25,is_stmt,isa 0
        MOVL      XAR7,#||$P$T8$1||     ; [CPU_ARAU] |180| 
        MOVW      DP,#||VIENNA_pcmTick|| ; [CPU_ARAU] 
        SUBB      XAR4,#20              ; [CPU_ARAU] |180| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 179,column 1,is_stmt,isa 0
        MOV       *-SP[30],AL           ; [CPU_ALU] |179| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 191,column 5,is_stmt,isa 0
        MOVL      XAR3,XAR2             ; [CPU_ALU] |191| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 180,column 25,is_stmt,isa 0
        MOVZ      AR4,AR4               ; [CPU_ALU] |180| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 182,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |182| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 192,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |192| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 199,column 50,is_stmt,isa 0
        MOV       PL,#0                 ; [CPU_ALU] |199| 
        MOV       PH,#32640             ; [CPU_ALU] |199| 
        MOVB      XAR6,#0               ; [CPU_ALU] |199| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 191,column 5,is_stmt,isa 0
        ADDB      XAR3,#6               ; [CPU_ALU] |191| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 180,column 25,is_stmt,isa 0
        RPT       #3
||     PREAD     *XAR4++,*XAR7         ; [CPU_ALU] |180| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 182,column 5,is_stmt,isa 0
        ADDL      @||VIENNA_pcmTick||,ACC ; [CPU_ALU] |182| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 194,column 5,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |194| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 197,column 5,is_stmt,isa 0
        MOVL      XAR5,#||VIENNA_pcmMeasuredDQ_A|| ; [CPU_ARAU] |197| 
        ZERO      R6H                   ; [CPU_FPU] |197| 
        MOVW      DP,#||VIENNA_pcmOutputSource|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 183,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputSource||,#0 ; [CPU_ALU] |183| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 183,column 31,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputDetailValid||,#0 ; [CPU_ALU] |183| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 184,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputIntegralValid||,#0 ; [CPU_ALU] |184| 
        MOVW      DP,#||VIENNA_iL1Meas_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 188,column 5,is_stmt,isa 0
        MOV32     R5H,@||VIENNA_iL1Meas_pu|| ; [CPU_FPU] |188| 
        MOVW      DP,#||VIENNA_iL2Meas_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 189,column 5,is_stmt,isa 0
        MOV32     R4H,@||VIENNA_iL2Meas_pu|| ; [CPU_FPU] |189| 
        MOVW      DP,#||VIENNA_iL3Meas_pu|| ; [CPU_ARAU] 
        MPYF32    R4H,R4H,#16704        ; [CPU_FPU] |189| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 190,column 5,is_stmt,isa 0
        MOV32     R3H,@||VIENNA_iL3Meas_pu|| ; [CPU_FPU] |190| 
        MOVW      DP,#||VIENNA_v1Meas_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 191,column 5,is_stmt,isa 0
        MOV32     R2H,@||VIENNA_v1Meas_pu|| ; [CPU_FPU] |191| 
        MOVW      DP,#||VIENNA_v2Meas_pu|| ; [CPU_ARAU] 
        MPYF32    R2H,R2H,#17379        ; [CPU_FPU] |191| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 192,column 5,is_stmt,isa 0
        MOV32     R0H,@||VIENNA_v2Meas_pu|| ; [CPU_FPU] |192| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 189,column 5,is_stmt,isa 0
        MOV32     *+XAR2[2],R4H         ; [CPU_FPU] |189| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 191,column 5,is_stmt,isa 0
        MOV32     *+XAR3[0],R2H         ; [CPU_FPU] |191| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 192,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,#17379        ; [CPU_FPU] |192| 
        MOVW      DP,#||VIENNA_v3Meas_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 188,column 5,is_stmt,isa 0
        MPYF32    R2H,R5H,#16704        ; [CPU_FPU] |188| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 192,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |192| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        MOV32     *-SP[22],R2H          ; [CPU_FPU] |65| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 188,column 5,is_stmt,isa 0
        MOV32     *+XAR2[0],R2H         ; [CPU_FPU] |188| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        MOVL      XAR7,*+XAR4[6]        ; [CPU_ALU] |65| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 193,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |193| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 190,column 5,is_stmt,isa 0
        MPYF32    R2H,R3H,#16704        ; [CPU_FPU] |190| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 193,column 5,is_stmt,isa 0
        MOV32     R0H,@||VIENNA_v3Meas_pu|| ; [CPU_FPU] |193| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 199,column 50,is_stmt,isa 0
        MOVL      ACC,*-SP[22]          ; [CPU_ALU] |199| 
        MOVW      DP,#||VIENNA_vBusPMMeas_pu|| ; [CPU_ARAU] 
        ANDB      AL,#0                 ; [CPU_ALU] |199| 
        AND       AH,#32640             ; [CPU_ALU] |199| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 193,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,#17379        ; [CPU_FPU] |193| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 190,column 5,is_stmt,isa 0
        MOV32     *+XAR2[4],R2H         ; [CPU_FPU] |190| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        MOVL      *-SP[24],XAR7         ; [CPU_ALU] |65| 
        ADDB      XAR4,#2               ; [CPU_ALU] |65| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 199,column 50,is_stmt,isa 0
        CMPL      ACC,P                 ; [CPU_ALU] |199| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 194,column 5,is_stmt,isa 0
        MOV32     R1H,@||VIENNA_vBusPMMeas_pu|| ; [CPU_FPU] |194| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 199,column 50,is_stmt,isa 0
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |199| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 197,column 36,is_stmt,isa 0
        ZERO      R2H                   ; [CPU_FPU] |197| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 193,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |193| 
        MOVW      DP,#||VIENNA_vBusMNMeas_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 194,column 5,is_stmt,isa 0
        MPYF32    R1H,R1H,#17379        ; [CPU_FPU] |194| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        MOV       AL,AR6                ; [CPU_ALU] |65| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 195,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |195| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 200,column 50,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |200| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 195,column 5,is_stmt,isa 0
        MOV32     R0H,@||VIENNA_vBusMNMeas_pu|| ; [CPU_FPU] |195| 
        MOVW      DP,#||VIENNA_pcmInputFaultMask|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 194,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR1],R1H       ; [CPU_FPU] |194| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 195,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,#17379        ; [CPU_FPU] |195| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 196,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmInputFaultMask||,#0 ; [CPU_ALU] |196| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 195,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |195| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 197,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R6H         ; [CPU_FPU] |197| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 197,column 36,is_stmt,isa 0
        MOV32     *+XAR5[2],R2H         ; [CPU_FPU] |197| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 199,column 50,is_stmt,isa 0
        OR        @||VIENNA_pcmInputFaultMask||,AL ; [CPU_ALU] |199| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 200,column 50,is_stmt,isa 0
        MOVL      ACC,*-SP[24]          ; [CPU_ALU] |200| 
        ANDB      AL,#0                 ; [CPU_ALU] |200| 
        AND       AH,#32640             ; [CPU_ALU] |200| 
        CMPL      ACC,P                 ; [CPU_ALU] |200| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |200| 
        MOV       ACC,AR6 << #3         ; [CPU_ALU] |200| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[0]        ; [CPU_ALU] |65| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 200,column 50,is_stmt,isa 0
        OR        @||VIENNA_pcmInputFaultMask||,AL ; [CPU_ALU] |200| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        MOVL      *-SP[22],XAR6         ; [CPU_ALU] |65| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 199,column 50,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |199| 
        MOVL      ACC,*-SP[22]          ; [CPU_ALU] |199| 
        ANDB      AL,#0                 ; [CPU_ALU] |199| 
        AND       AH,#32640             ; [CPU_ALU] |199| 
        CMPL      ACC,P                 ; [CPU_ALU] |199| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |199| 
        MOV       ACC,AR6 << #1         ; [CPU_ALU] |199| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[6]        ; [CPU_ALU] |65| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 199,column 50,is_stmt,isa 0
        OR        @||VIENNA_pcmInputFaultMask||,AL ; [CPU_ALU] |199| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |65| 
        MOVL      *-SP[24],XAR6         ; [CPU_ALU] |65| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 200,column 50,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |200| 
        MOVL      ACC,*-SP[24]          ; [CPU_ALU] |200| 
        ANDB      AL,#0                 ; [CPU_ALU] |200| 
        AND       AH,#32640             ; [CPU_ALU] |200| 
        CMPL      ACC,P                 ; [CPU_ALU] |200| 
        MOVB      XAR6,#1,EQ            ; [CPU_FPU] |200| 
        MOV       ACC,AR6 << #4         ; [CPU_FPU] |200| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[0]        ; [CPU_ALU] |65| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 200,column 50,is_stmt,isa 0
        OR        @||VIENNA_pcmInputFaultMask||,AL ; [CPU_ALU] |200| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        MOVL      *-SP[22],XAR6         ; [CPU_ALU] |65| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 199,column 50,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |199| 
        MOVL      ACC,*-SP[22]          ; [CPU_ALU] |199| 
        ANDB      AL,#0                 ; [CPU_ALU] |199| 
        AND       AH,#32640             ; [CPU_ALU] |199| 
        CMPL      ACC,P                 ; [CPU_ALU] |199| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |199| 
        MOV       ACC,AR6 << #2         ; [CPU_ALU] |199| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[6]        ; [CPU_ALU] |65| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 199,column 50,is_stmt,isa 0
        OR        @||VIENNA_pcmInputFaultMask||,AL ; [CPU_ALU] |199| 
        MOVW      DP,#||VIENNA_pcmInput||+12 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||VIENNA_pcmInput||)+12 ; [CPU_FPU] |65| 
        MOVL      *-SP[24],XAR6         ; [CPU_ALU] |65| 
        MOVW      DP,#||VIENNA_pcmInputFaultMask|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 200,column 50,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |200| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        MOV32     *-SP[26],R0H          ; [CPU_FPU] |65| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 200,column 50,is_stmt,isa 0
        MOVL      ACC,*-SP[24]          ; [CPU_ALU] |200| 
        ANDB      AL,#0                 ; [CPU_ALU] |200| 
        AND       AH,#32640             ; [CPU_ALU] |200| 
        CMPL      ACC,P                 ; [CPU_ALU] |200| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |200| 
        MOV       ACC,AR6 << #5         ; [CPU_ALU] |200| 
        OR        @||VIENNA_pcmInputFaultMask||,AL ; [CPU_ALU] |200| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 202,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[26]          ; [CPU_ALU] |202| 
        ANDB      AL,#0                 ; [CPU_ALU] |202| 
        AND       AH,#32640             ; [CPU_ALU] |202| 
        CMPL      ACC,P                 ; [CPU_ALU] |202| 
        B         ||$C$L39||,EQ         ; [CPU_ALU] |202| 
        ; branchcc occurs ; [] |202| 
        CMPF32    R0H,#0                ; [CPU_FPU] |202| 
        MOVST0    ZF, NF                ; [CPU_FPU] |202| 
        B         ||$C$L40||,GT         ; [CPU_ALU] |202| 
        ; branchcc occurs ; [] |202| 
||$C$L39||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 202,column 71,is_stmt,isa 0
        OR        @||VIENNA_pcmInputFaultMask||,#0x0040 ; [CPU_ALU] |202| 
||$C$L40||:    
        MOVW      DP,#||VIENNA_pcmInput||+14 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 65,column 38,is_stmt,isa 0
        MOV32     R0H,@$BLOCKED(||VIENNA_pcmInput||)+14 ; [CPU_FPU] |65| 
        MOV32     *-SP[28],R0H          ; [CPU_FPU] |65| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 203,column 5,is_stmt,isa 0
        MOVL      ACC,*-SP[28]          ; [CPU_ALU] |203| 
        ANDB      AL,#0                 ; [CPU_ALU] |203| 
        AND       AH,#32640             ; [CPU_ALU] |203| 
        CMPL      ACC,P                 ; [CPU_ALU] |203| 
        B         ||$C$L41||,EQ         ; [CPU_ALU] |203| 
        ; branchcc occurs ; [] |203| 
        CMPF32    R0H,#0                ; [CPU_FPU] |203| 
        MOVST0    ZF, NF                ; [CPU_FPU] |203| 
        B         ||$C$L42||,GT         ; [CPU_ALU] |203| 
        ; branchcc occurs ; [] |203| 
||$C$L41||:    
        MOVW      DP,#||VIENNA_pcmInputFaultMask|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 203,column 73,is_stmt,isa 0
        OR        @||VIENNA_pcmInputFaultMask||,#0x0080 ; [CPU_ALU] |203| 
||$C$L42||:    
        MOVW      DP,#||VIENNA_pcmInputFaultMask|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 204,column 5,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |204| 
        MOV       AL,@||VIENNA_pcmInputFaultMask|| ; [CPU_ALU] |204| 
        CMPB      AL,#0                 ; [CPU_ALU] |204| 
        MOVB      AH,#1,EQ              ; [CPU_ALU] |204| 
        MOV       @||VIENNA_pcmInputsValid||,AH ; [CPU_ALU] |204| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 205,column 5,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmInputsValid|| ; [CPU_ALU] |205| 
        B         ||$C$L44||,NEQ        ; [CPU_ALU] |205| 
        ; branchcc occurs ; [] |205| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 206,column 9,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_pcmGrid|| ; [CPU_ARAU] |206| 
$C$DW$317	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$317, DW_AT_low_pc(0x00)
	.dwattr $C$DW$317, DW_AT_name("VG_reset")
	.dwattr $C$DW$317, DW_AT_TI_call

        LCR       #||VG_reset||         ; [CPU_ALU] |206| 
        ; call occurs [#||VG_reset||] ; [] |206| 
        MOVW      DP,#||history_valid|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 206,column 52,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_pcmObserver|| ; [CPU_ARAU] |206| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 206,column 35,is_stmt,isa 0
        MOV       @||history_valid||,#0 ; [CPU_ALU] |206| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 206,column 52,is_stmt,isa 0
$C$DW$318	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$318, DW_AT_low_pc(0x00)
	.dwattr $C$DW$318, DW_AT_name("VO_reset")
	.dwattr $C$DW$318, DW_AT_TI_call

        LCR       #||VO_reset||         ; [CPU_ALU] |206| 
        ; call occurs [#||VO_reset||] ; [] |206| 
        MOVW      DP,#||VIENNA_closeGiLoop|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 207,column 9,is_stmt,isa 0
        MOV       AL,@||VIENNA_closeGiLoop|| ; [CPU_ALU] |207| 
        CMPB      AL,#1                 ; [CPU_ALU] |207| 
        B         ||$C$L65||,NEQ        ; [CPU_ALU] |207| 
        ; branchcc occurs ; [] |207| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 207,column 34,is_stmt,isa 0
        MOVB      AL,#16                ; [CPU_ALU] |207| 
||$C$L43||:    
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_name("pc_fault")
	.dwattr $C$DW$319, DW_AT_TI_call

        LCR       #||pc_fault||         ; [CPU_ALU] |207| 
        ; call occurs [#||pc_fault||] ; [] |207| 
        B         ||$C$L65||,UNC        ; [CPU_ALU] |207| 
        ; branch occurs ; [] |207| 
||$C$L44||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 210,column 5,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |210| 
        MOV       AL,*-SP[30]           ; [CPU_ALU] |210| 
        MOVB      AH,#1,NEQ             ; [CPU_ALU] |210| 
        MOV       *-SP[29],AH           ; [CPU_ALU] |210| 
        MOV       AL,AH                 ; [CPU_ALU] |210| 
        B         ||$C$L45||,EQ         ; [CPU_ALU] |210| 
        ; branchcc occurs ; [] |210| 
        MOVW      DP,#||previous_trip|| ; [CPU_ARAU] 
        MOV       AL,@||previous_trip|| ; [CPU_ALU] |210| 
        B         ||$C$L45||,NEQ        ; [CPU_ALU] |210| 
        ; branchcc occurs ; [] |210| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 210,column 31,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_pcmGrid|| ; [CPU_ARAU] |210| 
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_name("VG_reset")
	.dwattr $C$DW$320, DW_AT_TI_call

        LCR       #||VG_reset||         ; [CPU_ALU] |210| 
        ; call occurs [#||VG_reset||] ; [] |210| 
||$C$L45||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 211,column 5,is_stmt,isa 0
        MOVL      *-SP[2],XAR3          ; [CPU_ALU] |211| 
        MOVL      XAR4,#||grid_config|| ; [CPU_ARAU] |211| 
        MOVL      XAR5,#||VIENNA_pcmGrid|| ; [CPU_ARAU] |211| 
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_name("VG_run")
	.dwattr $C$DW$321, DW_AT_TI_call

        LCR       #||VG_run||           ; [CPU_ALU] |211| 
        ; call occurs [#||VG_run||] ; [] |211| 
        MOV       AL,*-SP[30]           ; [CPU_ALU] |211| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 212,column 5,is_stmt,isa 0
        MOVB      XAR1,#0,NEQ           ; [CPU_ALU] |212| 
        B         ||$C$L46||,NEQ        ; [CPU_ALU] |212| 
        ; branchcc occurs ; [] |212| 
        MOVW      DP,#||VIENNA_pcmPendingState|| ; [CPU_ARAU] 
        MOVZ      AR1,@||VIENNA_pcmPendingState|| ; [CPU_ALU] |212| 
||$C$L46||:    
        MOVW      DP,#||VIENNA_closeGiLoop|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 214,column 5,is_stmt,isa 0
        MOV       AL,@||VIENNA_closeGiLoop|| ; [CPU_ALU] |214| 
        MOVW      DP,#||VIENNA_pcmActualAppliedState|| ; [CPU_ARAU] 
        CMPB      AL,#1                 ; [CPU_ALU] |214| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 213,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmActualAppliedState||,AR1 ; [CPU_FPU] |213| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 214,column 5,is_stmt,isa 0
        B         ||$C$L48||,NEQ        ; [CPU_ALU] |214| 
        ; branchcc occurs ; [] |214| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 223,column 11,is_stmt,isa 0
        MOVU      ACC,@||VIENNA_pcmModeActive|| ; [CPU_ALU] |223| 
        MOVZ      AR6,@||VIENNA_pcmModeRequest|| ; [CPU_ALU] |223| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |223| 
        B         ||$C$L47||,NEQ        ; [CPU_ALU] |223| 
        ; branchcc occurs ; [] |223| 
        MOVU      ACC,@||VIENNA_pcmRootMethodActive|| ; [CPU_ALU] |223| 
        MOVZ      AR6,@||VIENNA_pcmRootMethod|| ; [CPU_ALU] |223| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |223| 
        B         ||$C$L54||,EQ         ; [CPU_ALU] |223| 
        ; branchcc occurs ; [] |223| 
||$C$L47||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 224,column 64,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |224| 
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_name("pc_fault")
	.dwattr $C$DW$322, DW_AT_TI_call

        LCR       #||pc_fault||         ; [CPU_ALU] |224| 
        ; call occurs [#||pc_fault||] ; [] |224| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 225,column 5,is_stmt,isa 0
        B         ||$C$L54||,UNC        ; [CPU_ALU] |225| 
        ; branch occurs ; [] |225| 
||$C$L48||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 215,column 9,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmModeRequest|| ; [CPU_ALU] |215| 
        CMPB      AL,#2                 ; [CPU_ALU] |215| 
        B         ||$C$L49||,LOS        ; [CPU_ALU] |215| 
        ; branchcc occurs ; [] |215| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 218,column 15,is_stmt,isa 0
        OR        @||VIENNA_pcmFault||,#0x0001 ; [CPU_ALU] |218| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 219,column 9,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmRootMethod|| ; [CPU_ALU] |219| 
        CMPB      AL,#1                 ; [CPU_ALU] |219| 
        B         ||$C$L51||,LOS        ; [CPU_ALU] |219| 
        ; branchcc occurs ; [] |219| 
        B         ||$C$L53||,UNC        ; [CPU_ALU] |219| 
        ; branch occurs ; [] |219| 
||$C$L49||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 216,column 13,is_stmt,isa 0
        MOVU      ACC,@||VIENNA_pcmModeRequest|| ; [CPU_ALU] |216| 
        MOVZ      AR6,@||VIENNA_pcmModeActive|| ; [CPU_ALU] |216| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |216| 
        B         ||$C$L50||,EQ         ; [CPU_ALU] |216| 
        ; branchcc occurs ; [] |216| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 216,column 60,is_stmt,isa 0
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_name("VIENNA_PCMFPC_reset_control")
	.dwattr $C$DW$323, DW_AT_TI_call

        LCR       #||VIENNA_PCMFPC_reset_control|| ; [CPU_ALU] |216| 
        ; call occurs [#||VIENNA_PCMFPC_reset_control||] ; [] |216| 
||$C$L50||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 217,column 13,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmModeRequest|| ; [CPU_ALU] |217| 
        MOV       @||VIENNA_pcmModeActive||,AL ; [CPU_ALU] |217| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 219,column 9,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmRootMethod|| ; [CPU_ALU] |219| 
        CMPB      AL,#1                 ; [CPU_ALU] |219| 
        B         ||$C$L53||,HI         ; [CPU_ALU] |219| 
        ; branchcc occurs ; [] |219| 
||$C$L51||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 220,column 13,is_stmt,isa 0
        MOVU      ACC,@||VIENNA_pcmRootMethod|| ; [CPU_ALU] |220| 
        MOVZ      AR6,@||VIENNA_pcmRootMethodActive|| ; [CPU_ALU] |220| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |220| 
        B         ||$C$L52||,EQ         ; [CPU_ALU] |220| 
        ; branchcc occurs ; [] |220| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 220,column 65,is_stmt,isa 0
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_name("VIENNA_PCMFPC_reset_control")
	.dwattr $C$DW$324, DW_AT_TI_call

        LCR       #||VIENNA_PCMFPC_reset_control|| ; [CPU_ALU] |220| 
        ; call occurs [#||VIENNA_PCMFPC_reset_control||] ; [] |220| 
||$C$L52||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 221,column 13,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmRootMethod|| ; [CPU_ALU] |221| 
        MOV       @||VIENNA_pcmRootMethodActive||,AL ; [CPU_ALU] |221| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 221,column 61,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmRootMethodActive|| ; [CPU_ALU] |221| 
        MOVW      DP,#||pc_config||+14  ; [CPU_ARAU] 
        MOV       @||pc_config||+14,AL  ; [CPU_ALU] |221| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 225,column 5,is_stmt,isa 0
        B         ||$C$L54||,UNC        ; [CPU_ALU] |225| 
        ; branch occurs ; [] |225| 
||$C$L53||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 222,column 15,is_stmt,isa 0
        OR        @||VIENNA_pcmFault||,#0x0001 ; [CPU_ALU] |222| 
||$C$L54||:    
        MOV       AL,*-SP[30]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 225,column 5,is_stmt,isa 0
        B         ||$C$L55||,EQ         ; [CPU_ALU] |225| 
        ; branchcc occurs ; [] |225| 
        MOVW      DP,#||history_valid|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 225,column 31,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_pcmObserver|| ; [CPU_ARAU] |225| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 225,column 14,is_stmt,isa 0
        MOV       @||history_valid||,#0 ; [CPU_ALU] |225| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 225,column 31,is_stmt,isa 0
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_name("VO_reset")
	.dwattr $C$DW$325, DW_AT_TI_call

        LCR       #||VO_reset||         ; [CPU_ALU] |225| 
        ; call occurs [#||VO_reset||] ; [] |225| 
||$C$L55||:    
        MOVW      DP,#||VIENNA_pcmGrid|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 230,column 5,is_stmt,isa 0
        MOV       AH,*-SP[29]           ; [CPU_ALU] |230| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 227,column 5,is_stmt,isa 0
        MOVL      XAR7,@$BLOCKED(||VIENNA_pcmGrid||) ; [CPU_ALU] |227| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 228,column 5,is_stmt,isa 0
        MOVL      XAR6,@$BLOCKED(||VIENNA_pcmGrid||)+4 ; [CPU_ALU] |228| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 230,column 5,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||VIENNA_pcmGrid||)+23 ; [CPU_ALU] |230| 
        MOVW      DP,#||previous_trip|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 226,column 5,is_stmt,isa 0
        MOV       @||previous_trip||,AH ; [CPU_ALU] |226| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 230,column 5,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |230| 
        MOVW      DP,#||VIENNA_pcmInput||+28 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 229,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||VIENNA_pcmInput||)+28,AR1 ; [CPU_FPU] |229| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 227,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_pcmInput||)+20,XAR7 ; [CPU_FPU] |227| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 228,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_pcmInput||)+22,XAR6 ; [CPU_FPU] |228| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 230,column 5,is_stmt,isa 0
        B         ||$C$L56||,NEQ        ; [CPU_ALU] |230| 
        ; branchcc occurs ; [] |230| 
        MOVW      DP,#||VIENNA_closeGiLoop|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 231,column 9,is_stmt,isa 0
        MOV       AL,@||VIENNA_closeGiLoop|| ; [CPU_ALU] |231| 
        CMPB      AL,#1                 ; [CPU_ALU] |231| 
        B         ||$C$L65||,NEQ        ; [CPU_ALU] |231| 
        ; branchcc occurs ; [] |231| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 231,column 34,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_ALU] |231| 
        B         ||$C$L43||,UNC        ; [CPU_ALU] |231| 
        ; branch occurs ; [] |231| 
||$C$L56||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 234,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |234| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] |234| 
        MOV32     R0H,@$BLOCKED(||VIENNA_pcmInput||)+20 ; [CPU_FPU] |234| 
        SUBB      XAR5,#12              ; [CPU_ARAU] |234| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |234| 
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_name("PC_abc_to_dq")
	.dwattr $C$DW$326, DW_AT_TI_call

        LCR       #||PC_abc_to_dq||     ; [CPU_ALU] |234| 
        ; call occurs [#||PC_abc_to_dq||] ; [] |234| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 236,column 5,is_stmt,isa 0
        MOVZ      AR5,SP                ; [CPU_ALU] |236| 
        MOVW      DP,#||VIENNA_pcmInput||+20 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 235,column 5,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_pcmMeasuredDQ_A|| ; [CPU_ARAU] |235| 
        MOVL      XAR6,*-SP[12]         ; [CPU_ALU] |235| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 235,column 38,is_stmt,isa 0
        MOVL      ACC,*-SP[10]          ; [CPU_ALU] |235| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 236,column 5,is_stmt,isa 0
        SUBB      XAR5,#16              ; [CPU_ARAU] |236| 
        MOV32     R0H,@$BLOCKED(||VIENNA_pcmInput||)+20 ; [CPU_FPU] |236| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 235,column 5,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |235| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 236,column 5,is_stmt,isa 0
        MOVZ      AR5,AR5               ; [CPU_ALU] |236| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 235,column 38,is_stmt,isa 0
        MOVL      *+XAR4[2],ACC         ; [CPU_ALU] |235| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 236,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR3             ; [CPU_ALU] |236| 
$C$DW$327	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$327, DW_AT_low_pc(0x00)
	.dwattr $C$DW$327, DW_AT_name("PC_abc_to_dq")
	.dwattr $C$DW$327, DW_AT_TI_call

        LCR       #||PC_abc_to_dq||     ; [CPU_ALU] |236| 
        ; call occurs [#||PC_abc_to_dq||] ; [] |236| 
        MOVW      DP,#||VIENNA_pcmModeActive|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 237,column 5,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmModeActive|| ; [CPU_ALU] |237| 
        B         ||$C$L57||,NEQ        ; [CPU_ALU] |237| 
        ; branchcc occurs ; [] |237| 
        MOV       AL,@||VIENNA_pcmShadowEnable|| ; [CPU_ALU] |237| 
        B         ||$C$L65||,EQ         ; [CPU_ALU] |237| 
        ; branchcc occurs ; [] |237| 
||$C$L57||:    
        MOVW      DP,#||history_valid|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 238,column 5,is_stmt,isa 0
        MOV       AL,@||history_valid|| ; [CPU_ALU] |238| 
        B         ||$C$L59||,EQ         ; [CPU_ALU] |238| 
        ; branchcc occurs ; [] |238| 
        MOVW      DP,#||VIENNA_closeGiLoop|| ; [CPU_ARAU] 
        MOV       AL,@||VIENNA_closeGiLoop|| ; [CPU_ALU] |238| 
        CMPB      AL,#1                 ; [CPU_ALU] |238| 
        B         ||$C$L59||,NEQ        ; [CPU_ALU] |238| 
        ; branchcc occurs ; [] |238| 
        MOVL      XAR5,#||reconstruct_input|| ; [CPU_ARAU] 
        MOVL      XAR7,#||previous_fhat|| ; [CPU_ARAU] 
        MOVB      XAR6,#1               ; [CPU_ALU] 
        MOVL      XAR4,XAR5             ; [CPU_ALU] 
        MOVL      XAR0,#||previous_idq|| ; [CPU_ARAU] 
||$C$L58||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 240,column 13,is_stmt,isa 0
        MOVL      P,*XAR0++             ; [CPU_ALU] |240| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 241,column 13,is_stmt,isa 0
        MOVL      ACC,*XAR7++           ; [CPU_ALU] |241| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 240,column 13,is_stmt,isa 0
        MOVL      *+XAR4[0],P           ; [CPU_ALU] |240| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 241,column 13,is_stmt,isa 0
        MOVL      *+XAR4[4],ACC         ; [CPU_ALU] |241| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 239,column 18,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_ALU] |239| 
        BANZ      ||$C$L58||,AR6--      ; [CPU_ALU] |239| 
        ; branchcc occurs ; [] |239| 
        MOVW      DP,#||previous_hw||   ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 246,column 9,is_stmt,isa 0
        MOVIZ     R1H,#14119            ; [CPU_FPU] |246| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 245,column 9,is_stmt,isa 0
        MOV       AL,@||previous_hw||   ; [CPU_ALU] |245| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 243,column 9,is_stmt,isa 0
        MOVL      XAR3,@||previous_up|| ; [CPU_ALU] |243| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 243,column 44,is_stmt,isa 0
        MOVL      XT,@||previous_low||  ; [CPU_ALU] |243| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 244,column 9,is_stmt,isa 0
        MOVL      XAR0,@||previous_theta|| ; [CPU_ALU] |244| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 244,column 58,is_stmt,isa 0
        MOVL      P,@||previous_omega|| ; [CPU_ALU] |244| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 248,column 9,is_stmt,isa 0
        MOVL      XAR7,@||VIENNA_pcmTick|| ; [CPU_ALU] |248| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 247,column 9,is_stmt,isa 0
        MOVIZ     R0H,#14119            ; [CPU_FPU] |247| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 249,column 9,is_stmt,isa 0
        MOVL      XAR6,#||reconstruct_output|| ; [CPU_ARAU] |249| 
        MOVW      DP,#||reconstruct_input||+21 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 246,column 9,is_stmt,isa 0
        MOVXI     R1H,#50604            ; [CPU_FPU] |246| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 249,column 9,is_stmt,isa 0
        MOVL      XAR4,#||pc_config||   ; [CPU_ARAU] |249| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 247,column 9,is_stmt,isa 0
        MOVXI     R0H,#50604            ; [CPU_FPU] |247| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 249,column 9,is_stmt,isa 0
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |249| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 245,column 54,is_stmt,isa 0
        MOV       @||reconstruct_input||+21,AR1 ; [CPU_ALU] |245| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 245,column 9,is_stmt,isa 0
        MOV       @||reconstruct_input||+20,AL ; [CPU_ALU] |245| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 243,column 44,is_stmt,isa 0
        MOVL      @||reconstruct_input||+10,XT ; [CPU_ALU] |243| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 244,column 58,is_stmt,isa 0
        MOVL      @||reconstruct_input||+14,P ; [CPU_ALU] |244| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 246,column 9,is_stmt,isa 0
        MOV32     @||reconstruct_input||+16,R1H ; [CPU_FPU] |246| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 247,column 9,is_stmt,isa 0
        MOV32     @||reconstruct_input||+18,R0H ; [CPU_FPU] |247| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 243,column 9,is_stmt,isa 0
        MOVL      @||reconstruct_input||+8,XAR3 ; [CPU_ALU] |243| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 244,column 9,is_stmt,isa 0
        MOVL      @||reconstruct_input||+12,XAR0 ; [CPU_ALU] |244| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 248,column 9,is_stmt,isa 0
        MOVL      @||reconstruct_input||+22,XAR7 ; [CPU_ALU] |248| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 249,column 9,is_stmt,isa 0
$C$DW$328	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$328, DW_AT_low_pc(0x00)
	.dwattr $C$DW$328, DW_AT_name("VO_reconstruct")
	.dwattr $C$DW$328, DW_AT_TI_call

        LCR       #||VO_reconstruct||   ; [CPU_ALU] |249| 
        ; call occurs [#||VO_reconstruct||] ; [] |249| 
        CMPB      AL,#0                 ; [CPU_ALU] |249| 
        B         ||$C$L61||,EQ         ; [CPU_ALU] |249| 
        ; branchcc occurs ; [] |249| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 250,column 13,is_stmt,isa 0
        MOVL      XAR4,#||reconstruct_output|| ; [CPU_ARAU] |250| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 251,column 13,is_stmt,isa 0
        MOVL      XAR6,*+XAR4[2]        ; [CPU_ALU] |251| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 250,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |250| 
        MOVL      XAR3,#||VIENNA_pcmObserver|| ; [CPU_ARAU] 
        MOVL      *-SP[20],ACC          ; [CPU_ALU] |250| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 251,column 13,is_stmt,isa 0
        MOVL      *-SP[18],XAR6         ; [CPU_ALU] |251| 
        B         ||$C$L60||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L59||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 256,column 9,is_stmt,isa 0
        MOVL      XAR3,#||VIENNA_pcmObserver|| ; [CPU_ARAU] |256| 
        MOVL      XAR4,XAR3             ; [CPU_ALU] |256| 
$C$DW$329	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$329, DW_AT_low_pc(0x00)
	.dwattr $C$DW$329, DW_AT_name("VO_reset")
	.dwattr $C$DW$329, DW_AT_TI_call

        LCR       #||VO_reset||         ; [CPU_ALU] |256| 
        ; call occurs [#||VO_reset||] ; [] |256| 
||$C$L60||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 258,column 5,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |258| 
        SUBB      XAR4,#12              ; [CPU_ARAU] |258| 
        MOVZ      AR6,AR4               ; [CPU_ALU] |258| 
        MOVZ      AR4,SP                ; [CPU_ALU] |258| 
        SUBB      XAR4,#16              ; [CPU_ARAU] |258| 
        MOVU      ACC,AR4               ; [CPU_ALU] |258| 
        MOVZ      AR4,SP                ; [CPU_ALU] |258| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |258| 
        MOVW      DP,#||VIENNA_pcmTick|| ; [CPU_ARAU] 
        MOVL      *-SP[4],ACC           ; [CPU_ALU] |258| 
        SUBB      XAR4,#20              ; [CPU_ARAU] |258| 
        MOVZ      AR7,AR4               ; [CPU_ALU] |258| 
        MOVL      XAR5,XAR3             ; [CPU_ALU] |258| 
        MOVL      ACC,@||VIENNA_pcmTick|| ; [CPU_ALU] |258| 
        MOVL      XAR4,#||observer_config|| ; [CPU_ARAU] |258| 
        MOVL      *-SP[6],XAR7          ; [CPU_ALU] |258| 
        MOVB      *-SP[7],#2,UNC        ; [CPU_ALU] |258| 
$C$DW$330	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$330, DW_AT_low_pc(0x00)
	.dwattr $C$DW$330, DW_AT_name("VO_update_delta")
	.dwattr $C$DW$330, DW_AT_TI_call

        LCR       #||VO_update_delta||  ; [CPU_ALU] |258| 
        ; call occurs [#||VO_update_delta||] ; [] |258| 
        CMPB      AL,#0                 ; [CPU_ALU] |258| 
        B         ||$C$L62||,NEQ        ; [CPU_ALU] |258| 
        ; branchcc occurs ; [] |258| 
||$C$L61||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 260,column 9,is_stmt,isa 0
        MOVB      AL,#8                 ; [CPU_ALU] |260| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 260,column 38,is_stmt,isa 0
        B         ||$C$L43||,UNC        ; [CPU_ALU] |260| 
        ; branch occurs ; [] |260| 
||$C$L62||:    
        MOVZ      AR4,SP                ; [CPU_ALU] 
        MOVB      XAR6,#1               ; [CPU_ALU] 
        MOVL      XAR5,#||previous_fhat|| ; [CPU_ARAU] 
        MOVL      XAR7,#||previous_idq|| ; [CPU_ARAU] 
        ADDB      XAR2,#24              ; [CPU_ALU] 
        ADDB      XAR3,#4               ; [CPU_ALU] 
        SUBB      XAR4,#12              ; [CPU_ARAU] 
        MOVZ      AR4,AR4               ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 262,column 14,is_stmt,isa 0
        RPTB      ||$C$L64||,AR6        ; [CPU_ALU] |262| 
        ; repeat block starts ; [] 
||$C$L63||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 263,column 9,is_stmt,isa 0
        MOV32     R0H,*XAR3++           ; [CPU_FPU] |263| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 264,column 9,is_stmt,isa 0
        MOVL      ACC,*XAR4++           ; [CPU_ALU] |264| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 263,column 9,is_stmt,isa 0
        MOV32     *XAR2++,R0H           ; [CPU_FPU] |263| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 264,column 32,is_stmt,isa 0
        MOV32     *XAR5++,R0H           ; [CPU_FPU] |264| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 264,column 9,is_stmt,isa 0
        MOVL      *XAR7++,ACC           ; [CPU_ALU] |264| 
        NOP       ; [CPU_ALU] 
        ; repeat block ends ; [] 
||$C$L64||:    
        MOVW      DP,#||VIENNA_pcmInput||+20 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 266,column 5,is_stmt,isa 0
        MOVL      P,@$BLOCKED(||VIENNA_pcmInput||)+20 ; [CPU_ALU] |266| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 266,column 46,is_stmt,isa 0
        MOVL      XAR7,@$BLOCKED(||VIENNA_pcmInput||)+22 ; [CPU_ALU] |266| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 267,column 5,is_stmt,isa 0
        MOVL      XAR6,@$BLOCKED(||VIENNA_pcmInput||)+12 ; [CPU_ALU] |267| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 267,column 38,is_stmt,isa 0
        MOVL      ACC,@$BLOCKED(||VIENNA_pcmInput||)+14 ; [CPU_ALU] |267| 
        MOVW      DP,#||previous_hw||   ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 268,column 5,is_stmt,isa 0
        MOV       @||previous_hw||,AR1  ; [CPU_ALU] |268| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 268,column 24,is_stmt,isa 0
        MOVB      @||history_valid||,#1,UNC ; [CPU_ALU] |268| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 266,column 5,is_stmt,isa 0
        MOVL      @||previous_theta||,P ; [CPU_ALU] |266| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 267,column 38,is_stmt,isa 0
        MOVL      @||previous_low||,ACC ; [CPU_ALU] |267| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 266,column 46,is_stmt,isa 0
        MOVL      @||previous_omega||,XAR7 ; [CPU_ALU] |266| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 267,column 5,is_stmt,isa 0
        MOVL      @||previous_up||,XAR6 ; [CPU_ALU] |267| 
||$C$L65||:    
        SUBB      SP,#30                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
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
$C$DW$331	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$331, DW_AT_low_pc(0x00)
	.dwattr $C$DW$331, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$306, DW_AT_TI_end_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$306, DW_AT_TI_end_line(0x10d)
	.dwattr $C$DW$306, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$306

	.sect	"pcmfpc_code"
	.clink

$C$DW$332	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$332, DW_AT_name("pc_benchmark")
	.dwattr $C$DW$332, DW_AT_low_pc(||pc_benchmark||)
	.dwattr $C$DW$332, DW_AT_high_pc(0x00)
	.dwattr $C$DW$332, DW_AT_linkage_name("pc_benchmark")
	.dwattr $C$DW$332, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$332, DW_AT_decl_line(0x56)
	.dwattr $C$DW$332, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$332, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 87,column 1,is_stmt,address ||pc_benchmark||,isa 0

	.dwfde $C$DW$CIE, ||pc_benchmark||

;***************************************************************
;* FNAME: pc_benchmark                  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||pc_benchmark||:
;* AH    assigned to $O$C6
;* AL    assigned to status
$C$DW$333	.dwtag  DW_TAG_variable
	.dwattr $C$DW$333, DW_AT_name("status")
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$333, DW_AT_location[DW_OP_reg0]

;* AL    assigned to status
$C$DW$334	.dwtag  DW_TAG_variable
	.dwattr $C$DW$334, DW_AT_name("status")
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$334, DW_AT_location[DW_OP_reg0]

;* AR5   assigned to $O$K44
;* AR4   assigned to $O$K39
;* AL    assigned to $O$R1
;* AL    assigned to $O$R2
;* AL    assigned to $O$R3
;* AL    assigned to $O$R4
;* AL    assigned to $O$R5
;* AH    assigned to request
$C$DW$335	.dwtag  DW_TAG_variable
	.dwattr $C$DW$335, DW_AT_name("request")
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$335, DW_AT_location[DW_OP_reg1]

;* AR1   assigned to begin
$C$DW$336	.dwtag  DW_TAG_variable
	.dwattr $C$DW$336, DW_AT_name("begin")
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$336, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to $O$S1
;* AR1   assigned to start
$C$DW$337	.dwtag  DW_TAG_variable
	.dwattr $C$DW$337, DW_AT_name("start")
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$337, DW_AT_location[DW_OP_reg6]

;* PL    assigned to end
$C$DW$338	.dwtag  DW_TAG_variable
	.dwattr $C$DW$338, DW_AT_name("end")
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$338, DW_AT_location[DW_OP_reg2]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOVW      DP,#||VIENNA_pcmBenchRequest|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 88,column 21,is_stmt,isa 0
        MOV       AH,@||VIENNA_pcmBenchRequest|| ; [CPU_ALU] |88| 
        B         ||$C$L75||,EQ         ; [CPU_ALU] |88| 
        ; branchcc occurs ; [] |88| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 91,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmBenchRequest||,#0 ; [CPU_ALU] |91| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 93,column 5,is_stmt,isa 0
        CMPB      AH,#2                 ; [CPU_ALU] |93| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 92,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmBenchSelectedId||,#0 ; [CPU_FPU] |92| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 92,column 34,is_stmt,isa 0
        MOV       @||VIENNA_pcmBenchHWState||,#0 ; [CPU_FPU] |92| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 93,column 5,is_stmt,isa 0
        B         ||$C$L74||,HI         ; [CPU_ALU] |93| 
        ; branchcc occurs ; [] |93| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 94,column 5,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmHardwareRelease|| ; [CPU_ALU] |94| 
        B         ||$C$L73||,NEQ        ; [CPU_ALU] |94| 
        ; branchcc occurs ; [] |94| 
        MOVW      DP,#||VIENNA_closeGiLoop|| ; [CPU_ARAU] 
        MOV       AL,@||VIENNA_closeGiLoop|| ; [CPU_ALU] |94| 
        B         ||$C$L73||,NEQ        ; [CPU_ALU] |94| 
        ; branchcc occurs ; [] |94| 
        MOVW      DP,#||VIENNA_closeGvLoop|| ; [CPU_ARAU] 
        MOV       AL,@||VIENNA_closeGvLoop|| ; [CPU_ALU] |94| 
        B         ||$C$L73||,NEQ        ; [CPU_ALU] |94| 
        ; branchcc occurs ; [] |94| 
        MOVW      DP,#||VIENNA_closeGsLoop|| ; [CPU_ARAU] 
        MOV       AL,@||VIENNA_closeGsLoop|| ; [CPU_ALU] |94| 
        B         ||$C$L73||,NEQ        ; [CPU_ALU] |94| 
        ; branchcc occurs ; [] |94| 
        MOVW      DP,#||VIENNA_pcmActualAppliedState|| ; [CPU_ARAU] 
        MOV       AL,@||VIENNA_pcmActualAppliedState|| ; [CPU_ALU] |94| 
        B         ||$C$L73||,NEQ        ; [CPU_ALU] |94| 
        ; branchcc occurs ; [] |94| 
        MOV       AL,@||VIENNA_pcmPendingState|| ; [CPU_ALU] |94| 
        B         ||$C$L73||,NEQ        ; [CPU_ALU] |94| 
        ; branchcc occurs ; [] |94| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4391,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4093)        ; [CPU_ALU] |4391| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |4391| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 94,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |94| 
        B         ||$C$L73||,NTC        ; [CPU_ALU] |94| 
        ; branchcc occurs ; [] |94| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4391,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4193)        ; [CPU_ALU] |4391| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |4391| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 94,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |94| 
        B         ||$C$L73||,NTC        ; [CPU_ALU] |94| 
        ; branchcc occurs ; [] |94| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/epwm.h",line 4391,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4293)        ; [CPU_ALU] |4391| 
        ANDB      AL,#0x7f              ; [CPU_ALU] |4391| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 94,column 5,is_stmt,isa 0
        TBIT      AL,#2                 ; [CPU_ALU] |94| 
        B         ||$C$L73||,NTC        ; [CPU_ALU] |94| 
        ; branchcc occurs ; [] |94| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 104,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |104| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 103,column 5,is_stmt,isa 0
        MOVL      XAR5,#||benchmark_config|| ; [CPU_ARAU] |103| 
        MOVL      XAR7,#||pc_config||   ; [CPU_ARAU] |103| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 104,column 5,is_stmt,isa 0
        CMPB      AH,#1                 ; [CPU_ALU] |104| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 107,column 36,is_stmt,isa 0
        MOVIZ     R1H,#17037            ; [CPU_FPU] |107| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 109,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |109| 
        MOVIZ     R0H,#17068            ; [CPU_FPU] |109| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 104,column 5,is_stmt,isa 0
        MOVB      XAR1,#14              ; [CPU_ALU] |104| 
        MOVL      XAR4,#||benchmark_config|| ; [CPU_ARAU] |104| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 109,column 32,is_stmt,isa 0
        MOVIZ     R3H,#17064            ; [CPU_FPU] |109| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 110,column 35,is_stmt,isa 0
        ZERO      R2H                   ; [CPU_FPU] |110| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 104,column 5,is_stmt,isa 0
        MOVB      AL,#1,NEQ             ; [CPU_ALU] |104| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 103,column 5,is_stmt,isa 0
        RPT       #15
||     PREAD     *XAR5++,*XAR7         ; [CPU_ALU] |103| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 105,column 5,is_stmt,isa 0
        MOVL      XAR5,#||benchmark_input|| ; [CPU_ARAU] |105| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 107,column 36,is_stmt,isa 0
        MOVXI     R1H,#27614            ; [CPU_FPU] |107| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 109,column 5,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |109| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 109,column 32,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |109| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 104,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR1],AL        ; [CPU_ALU] |104| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 109,column 32,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R3H       ; [CPU_FPU] |109| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 110,column 35,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |110| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 108,column 5,is_stmt,isa 0
        MOVIZ     R3H,#49805            ; [CPU_FPU] |108| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 77,column 5,is_stmt,isa 0
        CMPB      AH,#1                 ; [CPU_ALU] |77| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 110,column 35,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R2H       ; [CPU_FPU] |110| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 108,column 5,is_stmt,isa 0
        MOVXI     R3H,#27614            ; [CPU_FPU] |108| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 107,column 36,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |107| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 110,column 5,is_stmt,isa 0
        MOVIZ     R2H,#16537            ; [CPU_FPU] |110| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 356,column 5,is_stmt,isa 0
        MOV32     XAR1,*(0:0x0c00)      ; [CPU_FPU] |356| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 107,column 36,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R1H       ; [CPU_FPU] |107| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 110,column 5,is_stmt,isa 0
        MOVXI     R2H,#39322            ; [CPU_FPU] |110| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 108,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_FPU] |108| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 111,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16329            ; [CPU_FPU] |111| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 108,column 5,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R3H       ; [CPU_FPU] |108| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 111,column 5,is_stmt,isa 0
        MOVXI     R1H,#4059             ; [CPU_FPU] |111| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 110,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_FPU] |110| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 111,column 46,is_stmt,isa 0
        MOVIZ     R3H,#17309            ; [CPU_FPU] |111| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 110,column 5,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R2H       ; [CPU_FPU] |110| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 111,column 46,is_stmt,isa 0
        MOVXI     R3H,#5219             ; [CPU_FPU] |111| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 111,column 5,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_FPU] |111| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 112,column 5,is_stmt,isa 0
        MOVIZ     R2H,#18130            ; [CPU_FPU] |112| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 111,column 5,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R1H       ; [CPU_FPU] |111| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 112,column 5,is_stmt,isa 0
        MOVXI     R2H,#18432            ; [CPU_FPU] |112| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 111,column 46,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_FPU] |111| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 112,column 42,is_stmt,isa 0
        MOVIZ     R1H,#50353            ; [CPU_FPU] |112| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 111,column 46,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R3H       ; [CPU_FPU] |111| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 112,column 5,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_FPU] |112| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 112,column 42,is_stmt,isa 0
        MOVXI     R1H,#8192             ; [CPU_FPU] |112| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 107,column 5,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |107| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 112,column 5,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R2H       ; [CPU_FPU] |112| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 107,column 5,is_stmt,isa 0
        MOV32     *+XAR5[6],R3H         ; [CPU_FPU] |107| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 112,column 42,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_FPU] |112| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 105,column 5,is_stmt,isa 0
        MOVIZ     R2H,#48460            ; [CPU_FPU] |105| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 106,column 5,is_stmt,isa 0
        MOVIZ     R3H,#49271            ; [CPU_FPU] |106| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 112,column 42,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R1H       ; [CPU_FPU] |112| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 105,column 5,is_stmt,isa 0
        MOVXI     R2H,#52429            ; [CPU_FPU] |105| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 106,column 5,is_stmt,isa 0
        MOVXI     R3H,#53432            ; [CPU_FPU] |106| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 113,column 5,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_FPU] |113| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 105,column 38,is_stmt,isa 0
        MOVIZ     R1H,#16507            ; [CPU_FPU] |105| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 113,column 5,is_stmt,isa 0
        MOVB      *+XAR5[AR0],#3,UNC    ; [CPU_FPU] |113| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 114,column 5,is_stmt,isa 0
        MOVB      XAR0,#29              ; [CPU_FPU] |114| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 105,column 38,is_stmt,isa 0
        MOVXI     R1H,#1004             ; [CPU_FPU] |105| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 105,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R2H         ; [CPU_FPU] |105| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 106,column 5,is_stmt,isa 0
        MOV32     *+XAR5[4],R3H         ; [CPU_FPU] |106| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 114,column 5,is_stmt,isa 0
        MOVB      *+XAR5[AR0],#1,UNC    ; [CPU_FPU] |114| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 114,column 36,is_stmt,isa 0
        MOVB      XAR0,#30              ; [CPU_FPU] |114| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 105,column 38,is_stmt,isa 0
        MOV32     *+XAR5[2],R1H         ; [CPU_FPU] |105| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 114,column 36,is_stmt,isa 0
        MOVB      *+XAR5[AR0],#1,UNC    ; [CPU_FPU] |114| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 77,column 5,is_stmt,isa 0
        B         ||$C$L67||,EQ         ; [CPU_ALU] |77| 
        ; branchcc occurs ; [] |77| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 78,column 9,is_stmt,isa 0
        MOVL      XAR6,#||VIENNA_pcmOutput|| ; [CPU_ARAU] |78| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |78| 
$C$DW$339	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$339, DW_AT_low_pc(0x00)
	.dwattr $C$DW$339, DW_AT_name("PC_run_fast")
	.dwattr $C$DW$339, DW_AT_TI_call

        LCR       #||PC_run_fast||      ; [CPU_ALU] |78| 
        ; call occurs [#||PC_run_fast||] ; [] |78| 
        MOVW      DP,#||VIENNA_pcmOutputDetailValid|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 79,column 9,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |79| 
        MOVB      XAR6,#0               ; [CPU_ALU] |79| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 78,column 40,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputDetailValid||,#0 ; [CPU_ALU] |78| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 79,column 9,is_stmt,isa 0
        B         ||$C$L66||,NEQ        ; [CPU_ALU] |79| 
        ; branchcc occurs ; [] |79| 
        MOVW      DP,#||PC_fast_output_integrals_available|| ; [CPU_ARAU] 
        MOV       AH,@||PC_fast_output_integrals_available|| ; [CPU_ALU] |79| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |79| 
||$C$L66||:    
        MOVW      DP,#||VIENNA_pcmOutputIntegralValid|| ; [CPU_ARAU] 
        MOV       @||VIENNA_pcmOutputIntegralValid||,AR6 ; [CPU_ALU] |79| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 84,column 5,is_stmt,isa 0
        B         ||$C$L68||,UNC        ; [CPU_ALU] |84| 
        ; branch occurs ; [] |84| 
||$C$L67||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 81,column 9,is_stmt,isa 0
        MOVL      XAR6,#||VIENNA_pcmOutput|| ; [CPU_ARAU] |81| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |81| 
$C$DW$340	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$340, DW_AT_low_pc(0x00)
	.dwattr $C$DW$340, DW_AT_name("PC_run")
	.dwattr $C$DW$340, DW_AT_TI_call

        LCR       #||PC_run||           ; [CPU_ALU] |81| 
        ; call occurs [#||PC_run||] ; [] |81| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 81,column 35,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |81| 
        MOVW      DP,#||VIENNA_pcmOutputDetailValid|| ; [CPU_ARAU] 
        CMPB      AL,#0                 ; [CPU_ALU] |81| 
        MOVB      AH,#1,EQ              ; [CPU_ALU] |81| 
        MOV       @||VIENNA_pcmOutputDetailValid||,AH ; [CPU_ALU] |81| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 82,column 9,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputIntegralValid||,AH ; [CPU_ALU] |82| 
||$C$L68||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 116,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmCoreStatus||,AL ; [CPU_ALU] |116| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 356,column 5,is_stmt,isa 0
        MOV32     P,*(0:0x0c00)         ; [CPU_FPU] |356| 
        MOVL      ACC,P                 ; [CPU_ALU] |356| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 72,column 5,is_stmt,isa 0
        CMPL      ACC,XAR1              ; [CPU_ALU] |72| 
        B         ||$C$L69||,HI         ; [CPU_ALU] |72| 
        ; branchcc occurs ; [] |72| 
        MOVL      ACC,XAR1              ; [CPU_ALU] |72| 
        SUBL      ACC,P                 ; [CPU_ALU] |72| 
        B         ||$C$L70||,UNC        ; [CPU_ALU] |72| 
        ; branch occurs ; [] |72| 
||$C$L69||:    
        MOVL      ACC,XAR1              ; [CPU_ALU] |72| 
        SUBL      ACC,P                 ; [CPU_ALU] |72| 
        ADD       ACC,#15625 << 7       ; [CPU_ALU] |72| 
||$C$L70||:    
        MOVW      DP,#||VIENNA_pcmBenchCycles|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 117,column 5,is_stmt,isa 0
        MOVL      @||VIENNA_pcmBenchCycles||,ACC ; [CPU_ALU] |117| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 118,column 5,is_stmt,isa 0
        MOVL      ACC,@||VIENNA_pcmBenchCyclesMax|| ; [CPU_ALU] |118| 
        CMPL      ACC,@||VIENNA_pcmBenchCycles|| ; [CPU_ALU] |118| 
        B         ||$C$L71||,HIS        ; [CPU_ALU] |118| 
        ; branchcc occurs ; [] |118| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 118,column 55,is_stmt,isa 0
        MOVL      ACC,@||VIENNA_pcmBenchCycles|| ; [CPU_ALU] |118| 
        MOVL      @||VIENNA_pcmBenchCyclesMax||,ACC ; [CPU_ALU] |118| 
||$C$L71||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 119,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |119| 
        ADDL      @||VIENNA_pcmBenchCount||,ACC ; [CPU_ALU] |119| 
        MOVW      DP,#||VIENNA_pcmOutputSource|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 120,column 5,is_stmt,isa 0
        MOVB      @||VIENNA_pcmOutputSource||,#3,UNC ; [CPU_ALU] |120| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 121,column 5,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmCoreStatus|| ; [CPU_ALU] |121| 
        B         ||$C$L72||,NEQ        ; [CPU_ALU] |121| 
        ; branchcc occurs ; [] |121| 
        MOVW      DP,#||VIENNA_pcmOutput||+1 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 122,column 9,is_stmt,isa 0
        MOV       AH,@$BLOCKED(||VIENNA_pcmOutput||)+1 ; [CPU_ALU] |122| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 123,column 9,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||VIENNA_pcmOutput||)+3 ; [CPU_ALU] |123| 
        MOVW      DP,#||VIENNA_pcmBenchSelectedId|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 122,column 9,is_stmt,isa 0
        MOV       @||VIENNA_pcmBenchSelectedId||,AH ; [CPU_ALU] |122| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 123,column 9,is_stmt,isa 0
        MOV       @||VIENNA_pcmBenchHWState||,AL ; [CPU_ALU] |123| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 124,column 9,is_stmt,isa 0
        MOVB      @||VIENNA_pcmBenchStatus||,#1,UNC ; [CPU_ALU] |124| 
        B         ||$C$L75||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L72||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 125,column 11,is_stmt,isa 0
        MOVB      @||VIENNA_pcmBenchStatus||,#4,UNC ; [CPU_ALU] |125| 
        B         ||$C$L75||,UNC        ; [CPU_ALU] |125| 
        ; branch occurs ; [] |125| 
||$C$L73||:    
        MOVW      DP,#||VIENNA_pcmBenchStatus|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 99,column 9,is_stmt,isa 0
        MOVB      @||VIENNA_pcmBenchStatus||,#2,UNC ; [CPU_ALU] |99| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 99,column 34,is_stmt,isa 0
        B         ||$C$L75||,UNC        ; [CPU_ALU] |99| 
        ; branch occurs ; [] |99| 
||$C$L74||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 93,column 20,is_stmt,isa 0
        MOVB      @||VIENNA_pcmBenchStatus||,#3,UNC ; [CPU_ALU] |93| 
||$C$L75||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$341	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$341, DW_AT_low_pc(0x00)
	.dwattr $C$DW$341, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$332, DW_AT_TI_end_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$332, DW_AT_TI_end_line(0x7e)
	.dwattr $C$DW$332, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$332

	.sect	"pcmfpc_code"
	.clink
	.global	||VIENNA_PCMFPC_post||

$C$DW$342	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$342, DW_AT_name("VIENNA_PCMFPC_post")
	.dwattr $C$DW$342, DW_AT_low_pc(||VIENNA_PCMFPC_post||)
	.dwattr $C$DW$342, DW_AT_high_pc(0x00)
	.dwattr $C$DW$342, DW_AT_linkage_name("VIENNA_PCMFPC_post")
	.dwattr $C$DW$342, DW_AT_external
	.dwattr $C$DW$342, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$342, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$342, DW_AT_decl_column(0x06)
	.dwattr $C$DW$342, DW_AT_TI_max_frame_size(-20)
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 336,column 1,is_stmt,address ||VIENNA_PCMFPC_post||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_PCMFPC_post||
$C$DW$343	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$343, DW_AT_name("start_count")
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$343, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: VIENNA_PCMFPC_post            FR SIZE:  18           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  6 Auto, 10 SOE     *
;***************************************************************

||VIENNA_PCMFPC_post||:
;* AR4   assigned to $O$C18
;* PL    assigned to $O$C19
;* AR5   assigned to $O$C20
;* AR5   assigned to $O$C21
;* AR4   assigned to $O$C22
;* AL    assigned to $O$C24
;* AH    assigned to $O$C25
;* AR4   assigned to $O$K25
;* AR7   assigned to $O$K25
;* AR5   assigned to $O$K25
;* AR4   assigned to $O$U77
;* AR7   assigned to $O$U77
;* R1    assigned to $O$U87
;* R1    assigned to $O$U87
;* AR5   assigned to $O$U160
;* AR7   assigned to $O$U160
;* AR4   assigned to $O$U160
;* AR7   assigned to j
$C$DW$344	.dwtag  DW_TAG_variable
	.dwattr $C$DW$344, DW_AT_name("j")
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$344, DW_AT_location[DW_OP_reg18]

$C$DW$345	.dwtag  DW_TAG_variable
	.dwattr $C$DW$345, DW_AT_name("j")
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$345, DW_AT_location[DW_OP_breg20 -3]

;* AR1   assigned to j
$C$DW$346	.dwtag  DW_TAG_variable
	.dwattr $C$DW$346, DW_AT_name("j")
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$346, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to k
$C$DW$347	.dwtag  DW_TAG_variable
	.dwattr $C$DW$347, DW_AT_name("k")
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$347, DW_AT_location[DW_OP_reg16]

$C$DW$348	.dwtag  DW_TAG_variable
	.dwattr $C$DW$348, DW_AT_name("k")
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$348, DW_AT_location[DW_OP_breg20 -6]

;* AL    assigned to status
$C$DW$349	.dwtag  DW_TAG_variable
	.dwattr $C$DW$349, DW_AT_name("status")
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$349, DW_AT_location[DW_OP_reg0]

;* AL    assigned to status
$C$DW$350	.dwtag  DW_TAG_variable
	.dwattr $C$DW$350, DW_AT_name("status")
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$350, DW_AT_location[DW_OP_reg0]

;* AR4   assigned to $O$K20
;* AR6   assigned to $O$U67
;* AR5   assigned to $O$K66
;* AR3   assigned to $O$K32
;* XT    assigned to $O$U79
;* AR7   assigned to $O$U107
;* R0    assigned to $O$U120
;* AR4   assigned to $O$K180
;* R4    assigned to $O$v3
;* R5    assigned to $O$v2
;* AL    assigned to $O$v1
;* AL    assigned to $O$R14
;* AL    assigned to $O$R15
;* AL    assigned to $O$R16
;* AL    assigned to $O$R17
;* AL    assigned to $O$S1
;* AL    assigned to $O$S2
;* AR7   assigned to $O$S3
;* AL    assigned to $O$S4
;* AL    assigned to $O$S5
;* AL    assigned to $O$S6
;* R0    assigned to $O$S7
;* R0    assigned to $O$S8
;* R0    assigned to $O$S9
;* R0    assigned to $O$S10
;* R0    assigned to $O$S11
;* R0    assigned to $O$S12
;* AR6   assigned to $O$S13
;* AR2   assigned to start_count
$C$DW$351	.dwtag  DW_TAG_variable
	.dwattr $C$DW$351, DW_AT_name("start_count")
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$351, DW_AT_location[DW_OP_reg8]

$C$DW$352	.dwtag  DW_TAG_variable
	.dwattr $C$DW$352, DW_AT_name("output_valid")
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$352, DW_AT_location[DW_OP_breg20 -4]

;* AR3   assigned to begin
$C$DW$353	.dwtag  DW_TAG_variable
	.dwattr $C$DW$353, DW_AT_name("begin")
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$353, DW_AT_location[DW_OP_reg10]

;* AR6   assigned to $O$S1
;* AR3   assigned to start
$C$DW$354	.dwtag  DW_TAG_variable
	.dwattr $C$DW$354, DW_AT_name("start")
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$354, DW_AT_location[DW_OP_reg10]

;* PL    assigned to end
$C$DW$355	.dwtag  DW_TAG_variable
	.dwattr $C$DW$355, DW_AT_name("end")
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$355, DW_AT_location[DW_OP_reg2]

;* PL    assigned to end
$C$DW$356	.dwtag  DW_TAG_variable
	.dwattr $C$DW$356, DW_AT_name("end")
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$356, DW_AT_location[DW_OP_reg2]

;* PL    assigned to end
$C$DW$357	.dwtag  DW_TAG_variable
	.dwattr $C$DW$357, DW_AT_name("end")
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$357, DW_AT_location[DW_OP_reg2]

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
        MOVW      DP,#||VIENNA_pcmShadowEnable|| ; [CPU_ARAU] 
        MOVL      XAR2,ACC              ; [CPU_ALU] |336| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 339,column 5,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmShadowEnable|| ; [CPU_ALU] |339| 
        B         ||$C$L81||,EQ         ; [CPU_ALU] |339| 
        ; branchcc occurs ; [] |339| 
        MOV       AL,@||VIENNA_pcmModeActive|| ; [CPU_ALU] |339| 
        B         ||$C$L81||,NEQ        ; [CPU_ALU] |339| 
        ; branchcc occurs ; [] |339| 
        MOVW      DP,#||VIENNA_pcmGrid||+23 ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(||VIENNA_pcmGrid||)+23 ; [CPU_ALU] |339| 
        B         ||$C$L81||,EQ         ; [CPU_ALU] |339| 
        ; branchcc occurs ; [] |339| 
        MOVW      DP,#||VIENNA_pcmObserver||+15 ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(||VIENNA_pcmObserver||)+15 ; [CPU_ALU] |339| 
        B         ||$C$L81||,EQ         ; [CPU_ALU] |339| 
        ; branchcc occurs ; [] |339| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 356,column 5,is_stmt,isa 0
        MOV32     XAR3,*(0:0x0c00)      ; [CPU_FPU] |356| 
        MOVW      DP,#||VIENNA_pcmRootMethodActive|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 342,column 9,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |342| 
        MOVL      XAR4,#||pc_config||   ; [CPU_ARAU] |342| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 343,column 9,is_stmt,isa 0
        MOVB      XAR1,#29              ; [CPU_ALU] |343| 
        MOVL      XAR5,#||VIENNA_pcmInput|| ; [CPU_ARAU] |343| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 342,column 9,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmRootMethodActive|| ; [CPU_ALU] |342| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 77,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |77| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 342,column 9,is_stmt,isa 0
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |342| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 343,column 9,is_stmt,isa 0
        MOVB      *+XAR5[AR1],#1,UNC    ; [CPU_FPU] |343| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 343,column 40,is_stmt,isa 0
        MOVB      XAR0,#30              ; [CPU_ALU] |343| 
        MOVB      *+XAR5[AR0],#1,UNC    ; [CPU_ALU] |343| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 77,column 5,is_stmt,isa 0
        B         ||$C$L77||,NEQ        ; [CPU_ALU] |77| 
        ; branchcc occurs ; [] |77| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 78,column 9,is_stmt,isa 0
        MOVL      XAR6,#||VIENNA_pcmOutput|| ; [CPU_ARAU] |78| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |78| 
$C$DW$358	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$358, DW_AT_low_pc(0x00)
	.dwattr $C$DW$358, DW_AT_name("PC_run_fast")
	.dwattr $C$DW$358, DW_AT_TI_call

        LCR       #||PC_run_fast||      ; [CPU_ALU] |78| 
        ; call occurs [#||PC_run_fast||] ; [] |78| 
        MOVW      DP,#||VIENNA_pcmOutputDetailValid|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 79,column 9,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |79| 
        MOVB      XAR6,#0               ; [CPU_ALU] |79| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 78,column 40,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputDetailValid||,#0 ; [CPU_ALU] |78| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 79,column 9,is_stmt,isa 0
        B         ||$C$L76||,NEQ        ; [CPU_ALU] |79| 
        ; branchcc occurs ; [] |79| 
        MOVW      DP,#||PC_fast_output_integrals_available|| ; [CPU_ARAU] 
        MOV       AH,@||PC_fast_output_integrals_available|| ; [CPU_ALU] |79| 
        MOVB      XAR6,#1,NEQ           ; [CPU_ALU] |79| 
||$C$L76||:    
        MOVW      DP,#||VIENNA_pcmOutputIntegralValid|| ; [CPU_ARAU] 
        MOV       @||VIENNA_pcmOutputIntegralValid||,AR6 ; [CPU_ALU] |79| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 84,column 5,is_stmt,isa 0
        B         ||$C$L78||,UNC        ; [CPU_ALU] |84| 
        ; branch occurs ; [] |84| 
||$C$L77||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 81,column 9,is_stmt,isa 0
        MOVL      XAR6,#||VIENNA_pcmOutput|| ; [CPU_ARAU] |81| 
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |81| 
$C$DW$359	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$359, DW_AT_low_pc(0x00)
	.dwattr $C$DW$359, DW_AT_name("PC_run")
	.dwattr $C$DW$359, DW_AT_TI_call

        LCR       #||PC_run||           ; [CPU_ALU] |81| 
        ; call occurs [#||PC_run||] ; [] |81| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 81,column 35,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |81| 
        MOVW      DP,#||VIENNA_pcmOutputDetailValid|| ; [CPU_ARAU] 
        CMPB      AL,#0                 ; [CPU_ALU] |81| 
        MOVB      AH,#1,EQ              ; [CPU_ALU] |81| 
        MOV       @||VIENNA_pcmOutputDetailValid||,AH ; [CPU_ALU] |81| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 82,column 9,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputIntegralValid||,AH ; [CPU_ALU] |82| 
||$C$L78||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 344,column 9,is_stmt,isa 0
        MOV       @||VIENNA_pcmCoreStatus||,AL ; [CPU_ALU] |344| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 345,column 9,is_stmt,isa 0
        MOVB      @||VIENNA_pcmOutputSource||,#2,UNC ; [CPU_ALU] |345| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 356,column 5,is_stmt,isa 0
        MOV32     P,*(0:0x0c00)         ; [CPU_FPU] |356| 
        MOVL      ACC,P                 ; [CPU_ALU] |356| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 72,column 5,is_stmt,isa 0
        CMPL      ACC,XAR3              ; [CPU_ALU] |72| 
        B         ||$C$L79||,HI         ; [CPU_ALU] |72| 
        ; branchcc occurs ; [] |72| 
        MOVL      ACC,XAR3              ; [CPU_ALU] |72| 
        SUBL      ACC,P                 ; [CPU_ALU] |72| 
        B         ||$C$L80||,UNC        ; [CPU_ALU] |72| 
        ; branch occurs ; [] |72| 
||$C$L79||:    
        MOVL      ACC,XAR3              ; [CPU_ALU] |72| 
        SUBL      ACC,P                 ; [CPU_ALU] |72| 
        ADD       ACC,#15625 << 7       ; [CPU_ALU] |72| 
||$C$L80||:    
        MOVW      DP,#||VIENNA_pcmAlgorithmCycles|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 346,column 9,is_stmt,isa 0
        MOVL      @||VIENNA_pcmAlgorithmCycles||,ACC ; [CPU_ALU] |346| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 347,column 9,is_stmt,isa 0
        MOVL      ACC,@||VIENNA_pcmAlgorithmCyclesMax|| ; [CPU_ALU] |347| 
        CMPL      ACC,@||VIENNA_pcmAlgorithmCycles|| ; [CPU_ALU] |347| 
        B         ||$C$L81||,HIS        ; [CPU_ALU] |347| 
        ; branchcc occurs ; [] |347| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 347,column 67,is_stmt,isa 0
        MOVL      ACC,@||VIENNA_pcmAlgorithmCycles|| ; [CPU_ALU] |347| 
        MOVL      @||VIENNA_pcmAlgorithmCyclesMax||,ACC ; [CPU_ALU] |347| 
||$C$L81||:    
        MOVW      DP,#||VIENNA_pcmRecordArm|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 349,column 5,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmRecordArm|| ; [CPU_ALU] |349| 
        B         ||$C$L84||,EQ         ; [CPU_ALU] |349| 
        ; branchcc occurs ; [] |349| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 350,column 9,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmOutputSource|| ; [CPU_ALU] |350| 
        MOVB      XAR6,#0               ; [CPU_ALU] |350| 
        CMPB      AL,#1                 ; [CPU_ALU] |350| 
        B         ||$C$L82||,EQ         ; [CPU_ALU] |350| 
        ; branchcc occurs ; [] |350| 
        MOV       AL,@||VIENNA_pcmOutputSource|| ; [CPU_ALU] |350| 
        CMPB      AL,#2                 ; [CPU_ALU] |350| 
        B         ||$C$L83||,NEQ        ; [CPU_ALU] |350| 
        ; branchcc occurs ; [] |350| 
||$C$L82||:    
        MOV       AL,@||VIENNA_pcmCoreStatus|| ; [CPU_ALU] |350| 
        B         ||$C$L83||,NEQ        ; [CPU_ALU] |350| 
        ; branchcc occurs ; [] |350| 
        MOVW      DP,#||VIENNA_pcmOutput||+1 ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(||VIENNA_pcmOutput||)+1 ; [CPU_ALU] |350| 
        B         ||$C$L83||,EQ         ; [CPU_ALU] |350| 
        ; branchcc occurs ; [] |350| 
        CMPB      AL,#8                 ; [CPU_ALU] |350| 
        MOVB      XAR6,#1,LOS           ; [CPU_ALU] |350| 
||$C$L83||:    
        MOVW      DP,#||VIENNA_pcmRingCount|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 352,column 9,is_stmt,isa 0
        MOVL      XAR7,@||VIENNA_pcmRingCount|| ; [CPU_ALU] |352| 
        MOVB      ACC,#128              ; [CPU_ALU] |352| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 350,column 9,is_stmt,isa 0
        MOV       *-SP[4],AR6           ; [CPU_ALU] |350| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 352,column 9,is_stmt,isa 0
        MOVL      *-SP[6],XAR7          ; [CPU_ALU] |352| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |352| 
        B         ||$C$L85||,HI         ; [CPU_ALU] |352| 
        ; branchcc occurs ; [] |352| 
        MOVW      DP,#||VIENNA_pcmRecordArm|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 382,column 38,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |382| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 382,column 15,is_stmt,isa 0
        MOV       @||VIENNA_pcmRecordArm||,#0 ; [CPU_ALU] |382| 
        MOVW      DP,#||VIENNA_pcmRingOverflow|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 382,column 38,is_stmt,isa 0
        ADDL      @||VIENNA_pcmRingOverflow||,ACC ; [CPU_ALU] |382| 
||$C$L84||:    
        MOVW      DP,#||VIENNA_pcmWaveArm|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 384,column 5,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmWaveArm|| ; [CPU_ALU] |384| 
        B         ||$C$L116||,NEQ       ; [CPU_ALU] |384| 
        ; branchcc occurs ; [] |384| 
        B         ||$C$L120||,UNC       ; [CPU_ALU] |384| 
        ; branch occurs ; [] |384| 
||$C$L85||:    
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 354,column 13,is_stmt,isa 0
        MOVL      XAR5,#||VIENNA_pcmRecords|| ; [CPU_ARAU] |354| 
        LSL       ACC,3                 ; [CPU_ALU] |354| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |354| 
        MOVL      XAR4,XAR5             ; [CPU_ALU] |354| 
        MOVL      ACC,XAR7              ; [CPU_ALU] |354| 
        LSL       ACC,6                 ; [CPU_ALU] |354| 
        SUBL      ACC,XAR6              ; [CPU_ALU] |354| 
        MOVL      XAR6,@||VIENNA_pcmTick|| ; [CPU_FPU] |354| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |354| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 355,column 13,is_stmt,isa 0
        MOVL      P,XAR5                ; [CPU_ALU] |355| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 354,column 13,is_stmt,isa 0
        MOVL      *+XAR4[0],XAR6        ; [CPU_ALU] |354| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 355,column 13,is_stmt,isa 0
        MOVL      XAR7,@||VIENNA_pcmWriteCycles|| ; [CPU_ALU] |355| 
        ADDL      P,ACC                 ; [CPU_ALU] |355| 
        MOVL      XAR6,P                ; [CPU_ALU] |355| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |355| 
        MOVL      *+XAR6[2],XAR7        ; [CPU_ALU] |355| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 356,column 5,is_stmt,isa 0
        MOV32     P,*(0:0x0c00)         ; [CPU_FPU] |356| 
        MOVL      ACC,P                 ; [CPU_ALU] |356| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 72,column 5,is_stmt,isa 0
        CMPL      ACC,XAR2              ; [CPU_ALU] |72| 
        B         ||$C$L86||,HI         ; [CPU_ALU] |72| 
        ; branchcc occurs ; [] |72| 
        MOVL      ACC,XAR2              ; [CPU_ALU] |72| 
        SUBL      ACC,P                 ; [CPU_ALU] |72| 
        B         ||$C$L87||,UNC        ; [CPU_ALU] |72| 
        ; branch occurs ; [] |72| 
||$C$L86||:    
        MOVL      ACC,XAR2              ; [CPU_ALU] |72| 
        SUBL      ACC,P                 ; [CPU_ALU] |72| 
        ADD       ACC,#15625 << 7       ; [CPU_ALU] |72| 
||$C$L87||:    
        MOVB      XAR4,#2               ; [CPU_ALU] 
        MOVL      XAR7,#||VIENNA_pcmInput|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 356,column 13,is_stmt,isa 0
        MOVL      *+XAR6[4],ACC         ; [CPU_ALU] |356| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 357,column 17,is_stmt,isa 0
        MOVB      XAR1,#0               ; [CPU_ALU] |357| 
        SPM       #1                    ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 357,column 22,is_stmt,isa 0
        RPTB      ||$C$L89||,AR4        ; [CPU_ALU] |357| 
        ; repeat block starts ; [] 
||$C$L88||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 357,column 31,is_stmt,isa 0
        MOV       PL,AR1                ; [CPU_ALU] |357| 
        MOV       PH,#0                 ; [CPU_ALU] |357| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |357| 
        ADDL      ACC,P << PM           ; [CPU_ALU] |357| 
        ADDL      ACC,XAR5              ; [CPU_ALU] |357| 
        MOVL      XAR0,ACC              ; [CPU_ALU] |357| 
        MOVL      P,*XAR7++             ; [CPU_ALU] |357| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 357,column 22,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_ALU] |357| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 357,column 31,is_stmt,isa 0
        MOVL      *+XAR0[6],P           ; [CPU_FPU] |357| 
        ; repeat block ends ; [] 
||$C$L89||:    
        MOVW      DP,#||VIENNA_pcmInput||+16 ; [CPU_ARAU] 
        MOVL      XAR7,#||VIENNA_pcmObserver||+4 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 358,column 17,is_stmt,isa 0
        MOV       *-SP[3],#0            ; [CPU_ALU] |358| 
        MOVL      XAR3,#||VIENNA_pcmOutput|| ; [CPU_ARAU] 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV32     R1H,@$BLOCKED(||VIENNA_pcmInput||)+16 ; [CPU_FPU] 
||$C$L90||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 359,column 17,is_stmt,isa 0
        MOV32     R0H,R1H               ; [CPU_FPU] |359| 
        B         ||$C$L92||,UNC        ; [CPU_ALU] |359| 
        ; branch occurs ; [] |359| 
||$C$L91||:    
        CMPB      AL,#0                 ; [CPU_ALU] |359| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 358,column 22,is_stmt,isa 0
        ADDB      XAR7,#2               ; [CPU_ALU] |358| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 359,column 17,is_stmt,isa 0
        B         ||$C$L90||,EQ         ; [CPU_ALU] |359| 
        ; branchcc occurs ; [] |359| 
        MOVW      DP,#||VIENNA_pcmInput||+18 ; [CPU_ARAU] 
        MOV32     R0H,@$BLOCKED(||VIENNA_pcmInput||)+18 ; [CPU_FPU] |359| 
||$C$L92||:    
        MOV       PL,*-SP[3]            ; [CPU_ALU] 
        MOVL      XAR4,XAR5             ; [CPU_ALU] |359| 
        MOV       PH,#0                 ; [CPU_ALU] |359| 
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |359| 
        ADDL      ACC,P << PM           ; [CPU_ALU] |359| 
        ADDL      XAR4,ACC              ; [CPU_ALU] |359| 
        MOVB      XAR0,#12              ; [CPU_ALU] |359| 
        MOVL      XT,ACC                ; [CPU_ALU] |359| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |359| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |359| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 360,column 17,is_stmt,isa 0
        B         ||$C$L93||,EQ         ; [CPU_ALU] |360| 
        ; branchcc occurs ; [] |360| 
        MOVW      DP,#||VIENNA_pcmOutput||+1 ; [CPU_ARAU] 
        MOVZ      AR4,@$BLOCKED(||VIENNA_pcmOutput||)+1 ; [CPU_ALU] |360| 
        SUBB      XAR4,#1               ; [CPU_ARAU] |360| 
        MOV       ACC,AR4 << 2          ; [CPU_ALU] |360| 
        ADDL      ACC,P << PM           ; [CPU_ALU] |360| 
        ADDL      ACC,XAR3              ; [CPU_ALU] |360| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |360| 
        MOVB      XAR0,#92              ; [CPU_ALU] |360| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |360| 
        B         ||$C$L94||,UNC        ; [CPU_ALU] |360| 
        ; branch occurs ; [] |360| 
||$C$L93||:    
        ZERO      R0H                   ; [CPU_FPU] |360| 
||$C$L94||:    
        MOVL      ACC,XAR5              ; [CPU_ALU] |360| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 358,column 22,is_stmt,isa 0
        INC       *-SP[3]               ; [CPU_ALU] |358| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 360,column 17,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |360| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 361,column 17,is_stmt,isa 0
        MOVB      XAR1,#28              ; [CPU_ALU] |361| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 360,column 17,is_stmt,isa 0
        ADDL      ACC,XT                ; [CPU_ALU] |360| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |360| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 362,column 17,is_stmt,isa 0
        MOVL      P,*+XAR7[4]           ; [CPU_ALU] |362| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 361,column 17,is_stmt,isa 0
        MOVL      XT,*+XAR7[0]          ; [CPU_ALU] |361| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 362,column 17,is_stmt,isa 0
        MOV       AL,*-SP[3]            ; [CPU_ALU] |362| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 360,column 17,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |360| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 362,column 17,is_stmt,isa 0
        MOVB      XAR0,#32              ; [CPU_ALU] |362| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 358,column 22,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |358| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 361,column 17,is_stmt,isa 0
        MOVL      *+XAR4[AR1],XT        ; [CPU_ALU] |361| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 362,column 17,is_stmt,isa 0
        MOVL      *+XAR4[AR0],P         ; [CPU_FPU] |362| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 358,column 22,is_stmt,isa 0
        B         ||$C$L91||,LO         ; [CPU_ALU] |358| 
        ; branchcc occurs ; [] |358| 
        MOVW      DP,#||VIENNA_pcmGrid|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 364,column 13,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |364| 
        MOVL      ACC,@$BLOCKED(||VIENNA_pcmGrid||) ; [CPU_ALU] |364| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 366,column 13,is_stmt,isa 0
        MOVB      XAR1,#24              ; [CPU_ALU] |366| 
        MOVL      XAR7,@$BLOCKED(||VIENNA_pcmInput||)+12 ; [CPU_ALU] |366| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 364,column 13,is_stmt,isa 0
        MOVL      *+XAR6[AR0],ACC       ; [CPU_ALU] |364| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 365,column 13,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |365| 
        MOVL      ACC,@$BLOCKED(||VIENNA_pcmGrid||)+4 ; [CPU_ALU] |365| 
        MOVL      *+XAR6[AR0],ACC       ; [CPU_ALU] |365| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 366,column 60,is_stmt,isa 0
        MOVB      XAR0,#26              ; [CPU_ALU] |366| 
        MOVL      ACC,@$BLOCKED(||VIENNA_pcmInput||)+14 ; [CPU_ALU] |366| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 366,column 13,is_stmt,isa 0
        MOVL      *+XAR6[AR1],XAR7      ; [CPU_ALU] |366| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 366,column 60,is_stmt,isa 0
        MOVL      *+XAR6[AR0],ACC       ; [CPU_ALU] |366| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |366| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 367,column 13,is_stmt,isa 0
        B         ||$C$L95||,EQ         ; [CPU_ALU] |367| 
        ; branchcc occurs ; [] |367| 
        MOVW      DP,#||VIENNA_pcmOutput||+1 ; [CPU_ARAU] 
        MOVZ      AR7,@$BLOCKED(||VIENNA_pcmOutput||)+1 ; [CPU_ALU] |367| 
        SUBB      XAR7,#1               ; [CPU_ARAU] |367| 
        B         ||$C$L96||,UNC        ; [CPU_ALU] |367| 
        ; branch occurs ; [] |367| 
||$C$L95||:    
        MOVB      XAR7,#0               ; [CPU_ALU] |367| 
||$C$L96||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 368,column 13,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |368| 
        B         ||$C$L97||,EQ         ; [CPU_ALU] |368| 
        ; branchcc occurs ; [] |368| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,AR7 << 1          ; [CPU_ALU] |368| 
        ADDL      ACC,XAR3              ; [CPU_ALU] |368| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |368| 
        MOVB      XAR0,#124             ; [CPU_ALU] |368| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |368| 
        B         ||$C$L98||,UNC        ; [CPU_ALU] |368| 
        ; branch occurs ; [] |368| 
||$C$L97||:    
        ZERO      R0H                   ; [CPU_FPU] |368| 
||$C$L98||:    
        MOVB      XAR0,#36              ; [CPU_ALU] |368| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |368| 
        MOV32     *+XAR6[AR0],R0H       ; [CPU_FPU] |368| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 369,column 13,is_stmt,isa 0
        B         ||$C$L99||,EQ         ; [CPU_ALU] |369| 
        ; branchcc occurs ; [] |369| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,AR7 << 1          ; [CPU_ALU] |369| 
        ADDL      ACC,XAR3              ; [CPU_ALU] |369| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |369| 
        MOVB      XAR0,#44              ; [CPU_ALU] |369| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |369| 
        B         ||$C$L100||,UNC       ; [CPU_ALU] |369| 
        ; branch occurs ; [] |369| 
||$C$L99||:    
        ZERO      R0H                   ; [CPU_FPU] |369| 
||$C$L100||:    
        MOVB      XAR0,#38              ; [CPU_ALU] |369| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |369| 
        MOV32     *+XAR6[AR0],R0H       ; [CPU_FPU] |369| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 370,column 13,is_stmt,isa 0
        B         ||$C$L101||,EQ        ; [CPU_ALU] |370| 
        ; branchcc occurs ; [] |370| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,AR7 << 1          ; [CPU_ALU] |370| 
        ADDL      ACC,XAR3              ; [CPU_ALU] |370| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |370| 
        MOVB      XAR0,#60              ; [CPU_ALU] |370| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |370| 
        B         ||$C$L102||,UNC       ; [CPU_ALU] |370| 
        ; branch occurs ; [] |370| 
||$C$L101||:    
        ZERO      R0H                   ; [CPU_FPU] |370| 
||$C$L102||:    
        MOVB      XAR0,#40              ; [CPU_ALU] |370| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |370| 
        MOV32     *+XAR6[AR0],R0H       ; [CPU_FPU] |370| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 371,column 13,is_stmt,isa 0
        B         ||$C$L103||,EQ        ; [CPU_ALU] |371| 
        ; branchcc occurs ; [] |371| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOV       ACC,AR7 << 1          ; [CPU_ALU] |371| 
        ADDL      ACC,XAR3              ; [CPU_ALU] |371| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |371| 
        MOVB      XAR0,#76              ; [CPU_ALU] |371| 
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |371| 
        B         ||$C$L104||,UNC       ; [CPU_ALU] |371| 
        ; branch occurs ; [] |371| 
||$C$L103||:    
        ZERO      R0H                   ; [CPU_FPU] |371| 
||$C$L104||:    
        MOVB      XAR1,#42              ; [CPU_ALU] |371| 
        MOVW      DP,#||VIENNA_pcmModeActive|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 372,column 13,is_stmt,isa 0
        MOVB      XAR0,#44              ; [CPU_ALU] |372| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 371,column 13,is_stmt,isa 0
        MOV32     *+XAR6[AR1],R0H       ; [CPU_FPU] |371| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 372,column 13,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmModeActive|| ; [CPU_ALU] |372| 
        MOV       *+XAR6[AR0],AL        ; [CPU_ALU] |372| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |372| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 373,column 13,is_stmt,isa 0
        B         ||$C$L105||,EQ        ; [CPU_ALU] |373| 
        ; branchcc occurs ; [] |373| 
        MOVW      DP,#||VIENNA_pcmOutput||+2 ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(||VIENNA_pcmOutput||)+2 ; [CPU_ALU] |373| 
        B         ||$C$L106||,UNC       ; [CPU_ALU] |373| 
        ; branch occurs ; [] |373| 
||$C$L105||:    
        MOVB      AL,#0                 ; [CPU_ALU] |373| 
||$C$L106||:    
        MOVB      XAR0,#45              ; [CPU_ALU] |373| 
        MOV       *+XAR6[AR0],AL        ; [CPU_ALU] |373| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |373| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 374,column 13,is_stmt,isa 0
        B         ||$C$L107||,EQ        ; [CPU_ALU] |374| 
        ; branchcc occurs ; [] |374| 
        MOVW      DP,#||VIENNA_pcmOutput||+1 ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(||VIENNA_pcmOutput||)+1 ; [CPU_ALU] |374| 
        B         ||$C$L108||,UNC       ; [CPU_ALU] |374| 
        ; branch occurs ; [] |374| 
||$C$L107||:    
        MOVB      AL,#0                 ; [CPU_ALU] |374| 
||$C$L108||:    
        MOVB      XAR0,#46              ; [CPU_ALU] |374| 
        MOV       *+XAR6[AR0],AL        ; [CPU_ALU] |374| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |374| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 375,column 13,is_stmt,isa 0
        B         ||$C$L109||,EQ        ; [CPU_ALU] |375| 
        ; branchcc occurs ; [] |375| 
        MOVW      DP,#||VIENNA_pcmOutput||+6 ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(||VIENNA_pcmOutput||)+6 ; [CPU_ALU] |375| 
        B         ||$C$L110||,UNC       ; [CPU_ALU] |375| 
        ; branch occurs ; [] |375| 
||$C$L109||:    
        MOVB      AL,#0                 ; [CPU_ALU] |375| 
||$C$L110||:    
        MOVB      XAR0,#47              ; [CPU_ALU] |375| 
        MOV       *+XAR6[AR0],AL        ; [CPU_ALU] |375| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |375| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 376,column 13,is_stmt,isa 0
        MOVB      XAR7,#0,EQ            ; [CPU_ALU] |376| 
        B         ||$C$L111||,EQ        ; [CPU_ALU] |376| 
        ; branchcc occurs ; [] |376| 
        MOVW      DP,#||VIENNA_pcmOutput||+1 ; [CPU_ARAU] 
        MOV       PH,#0                 ; [CPU_ALU] |376| 
        MOVB      XAR7,#0               ; [CPU_ALU] |376| 
        MOVU      ACC,@$BLOCKED(||VIENNA_pcmOutput||)+1 ; [CPU_ALU] |376| 
        MOV       PL,@$BLOCKED(||VIENNA_pcmOutput||)+2 ; [CPU_ALU] |376| 
        CMPL      ACC,P                 ; [CPU_ALU] |376| 
        MOVB      XAR7,#1,NEQ           ; [CPU_ALU] |376| 
||$C$L111||:    
        MOVB      XAR0,#48              ; [CPU_ALU] |376| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |376| 
        MOV       *+XAR6[AR0],AR7       ; [CPU_ALU] |376| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 377,column 13,is_stmt,isa 0
        B         ||$C$L112||,EQ        ; [CPU_ALU] |377| 
        ; branchcc occurs ; [] |377| 
        MOVW      DP,#||VIENNA_pcmOutput||+8 ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(||VIENNA_pcmOutput||)+8 ; [CPU_ALU] |377| 
        B         ||$C$L113||,UNC       ; [CPU_ALU] |377| 
        ; branch occurs ; [] |377| 
||$C$L112||:    
        MOVB      AL,#0                 ; [CPU_ALU] |377| 
||$C$L113||:    
        MOVB      XAR0,#49              ; [CPU_ALU] |377| 
        MOV       *+XAR6[AR0],AL        ; [CPU_ALU] |377| 
        MOV       AL,*-SP[4]            ; [CPU_ALU] |377| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 378,column 13,is_stmt,isa 0
        B         ||$C$L114||,EQ        ; [CPU_ALU] |378| 
        ; branchcc occurs ; [] |378| 
        MOVW      DP,#||VIENNA_pcmOutput||+9 ; [CPU_ARAU] 
        MOV       AL,@$BLOCKED(||VIENNA_pcmOutput||)+9 ; [CPU_ALU] |378| 
        B         ||$C$L115||,UNC       ; [CPU_ALU] |378| 
        ; branch occurs ; [] |378| 
||$C$L114||:    
        MOVB      AL,#0                 ; [CPU_ALU] |378| 
||$C$L115||:    
        MOVB      XAR1,#50              ; [CPU_ALU] |378| 
        MOVW      DP,#||VIENNA_pcmActualAppliedState|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 379,column 13,is_stmt,isa 0
        MOVB      XAR0,#51              ; [CPU_ALU] |379| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 378,column 13,is_stmt,isa 0
        MOV       *+XAR6[AR1],AL        ; [CPU_ALU] |378| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 379,column 13,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmActualAppliedState|| ; [CPU_ALU] |379| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 379,column 73,is_stmt,isa 0
        MOVB      XAR1,#52              ; [CPU_ALU] |379| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 379,column 13,is_stmt,isa 0
        MOV       *+XAR6[AR0],AL        ; [CPU_ALU] |379| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 380,column 13,is_stmt,isa 0
        MOVB      XAR0,#54              ; [CPU_ALU] |380| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 379,column 73,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmPendingState|| ; [CPU_ALU] |379| 
        MOV       *+XAR6[AR1],AL        ; [CPU_ALU] |379| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 380,column 13,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmOutputSource|| ; [CPU_ALU] |380| 
        MOV       *+XAR6[AR0],AL        ; [CPU_ALU] |380| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 380,column 71,is_stmt,isa 0
        MOVZ      AR7,@||VIENNA_pcmCoreStatus|| ; [CPU_ALU] |380| 
        MOVB      XAR1,#55              ; [CPU_ALU] |380| 
        MOVL      ACC,*-SP[6]           ; [CPU_ALU] |380| 
        MOV       *+XAR6[AR1],AR7       ; [CPU_ALU] |380| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 381,column 13,is_stmt,isa 0
        MOVZ      AR7,@||VIENNA_pcmFault|| ; [CPU_ALU] |381| 
        MOVB      XAR0,#53              ; [CPU_ALU] |381| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 381,column 56,is_stmt,isa 0
        ADDB      ACC,#1                ; [CPU_ALU] |381| 
        MOVW      DP,#||VIENNA_pcmRingCount|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 381,column 13,is_stmt,isa 0
        MOV       *+XAR6[AR0],AR7       ; [CPU_FPU] |381| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 381,column 56,is_stmt,isa 0
        MOVL      @||VIENNA_pcmRingCount||,ACC ; [CPU_ALU] |381| 
        MOVW      DP,#||VIENNA_pcmWaveArm|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 384,column 5,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmWaveArm|| ; [CPU_ALU] |384| 
        B         ||$C$L120||,EQ        ; [CPU_ALU] |384| 
        ; branchcc occurs ; [] |384| 
||$C$L116||:    
        MOVW      DP,#||wave_divider||  ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 385,column 9,is_stmt,isa 0
        MOV       AL,@||wave_divider||  ; [CPU_ALU] |385| 
        MOVW      DP,#||VIENNA_pcmInput||+16 ; [CPU_ARAU] 
        MOV32     R1H,@$BLOCKED(||VIENNA_pcmInput||)+16 ; [CPU_FPU] 
        MOV32     R0H,@$BLOCKED(||VIENNA_pcmInput||)+18 ; [CPU_FPU] 
        B         ||$C$L117||,NEQ       ; [CPU_ALU] |385| 
        ; branchcc occurs ; [] |385| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 385,column 44,is_stmt,isa 0
        MOVL      XAR5,#||wave_sum||    ; [CPU_ARAU] |385| 
        ZERO      R2H                   ; [CPU_FPU] |385| 
        ZERO      R4H                   ; [CPU_FPU] |385| 
        MOVL      XAR4,XAR5             ; [CPU_ALU] 
        ZERO      R3H                   ; [CPU_FPU] |385| 
        ZERO      R5H                   ; [CPU_FPU] |385| 
        MOV32     *+XAR5[0],R5H         ; [CPU_FPU] |385| 
        ADDB      XAR4,#2               ; [CPU_ALU] 
        MOV32     *XAR4++,R3H           ; [CPU_FPU] |385| 
        MOV32     *XAR4++,R2H           ; [CPU_FPU] |385| 
        MOV32     *XAR4++,R4H           ; [CPU_FPU] |385| 
        MOV32     *XAR4++,R5H           ; [CPU_FPU] |385| 
        MOV32     *+XAR4[0],R3H         ; [CPU_FPU] |385| 
||$C$L117||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 386,column 27,is_stmt,isa 0
        MOVL      XAR5,#||wave_sum||    ; [CPU_ARAU] |386| 
        MOVW      DP,#||wave_divider||  ; [CPU_ARAU] 
        MOVL      XAR4,#||VIENNA_pcmInput|| ; [CPU_ARAU] 
        MOVL      ACC,XAR5              ; [CPU_ALU] 
        MOV32     R2H,*+XAR5[0]         ; [CPU_FPU] |386| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 388,column 9,is_stmt,isa 0
        INC       @||wave_divider||     ; [CPU_ALU] |388| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 386,column 27,is_stmt,isa 0
        MOV32     R3H,*XAR4++           ; [CPU_FPU] |386| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 387,column 47,is_stmt,isa 0
        MOVL      XAR6,XAR5             ; [CPU_ALU] |387| 
        ADDB      ACC,#2                ; [CPU_ALU] 
        MOVL      P,ACC                 ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 386,column 27,is_stmt,isa 0
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |386| 
        MOVL      XAR7,ACC              ; [CPU_ALU] 
        MOV32     *+XAR5[0],R2H         ; [CPU_FPU] |386| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 388,column 9,is_stmt,isa 0
        MOV       AL,@||wave_divider||  ; [CPU_ALU] |388| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 386,column 27,is_stmt,isa 0
        MOV32     R3H,*XAR4++           ; [CPU_FPU] |386| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 387,column 47,is_stmt,isa 0
        ADDB      XAR6,#8               ; [CPU_ALU] |387| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 386,column 27,is_stmt,isa 0
        MOV32     R2H,*+XAR7[0]         ; [CPU_FPU] |386| 
        ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |386| 
        MOV32     R5H,*+XAR4[0]         ; [CPU_FPU] |386| 
        MOV32     *XAR7++,R2H           ; [CPU_FPU] |386| 
        MOV32     R2H,*+XAR7[0]         ; [CPU_FPU] |386| 
        ADDF32    R2H,R2H,R5H           ; [CPU_FPU] |386| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 388,column 9,is_stmt,isa 0
        CMPB      AL,#5                 ; [CPU_ALU] |388| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 386,column 27,is_stmt,isa 0
        MOV32     *+XAR7[0],R2H         ; [CPU_FPU] |386| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 387,column 47,is_stmt,isa 0
        MOV32     R4H,*+XAR6[0]         ; [CPU_FPU] |387| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 387,column 9,is_stmt,isa 0

        MOV32     R2H,*+XAR5[6]         ; [CPU_FPU] |387| 
||      ADDF32    R0H,R0H,R4H           ; [CPU_FPU] |387| 

        ADDF32    R2H,R2H,R1H           ; [CPU_FPU] |387| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 387,column 47,is_stmt,isa 0
        MOV32     *+XAR6[0],R0H         ; [CPU_FPU] |387| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 387,column 9,is_stmt,isa 0
        MOV32     *+XAR5[6],R2H         ; [CPU_FPU] |387| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 388,column 9,is_stmt,isa 0
        B         ||$C$L121||,NEQ       ; [CPU_ALU] |388| 
        ; branchcc occurs ; [] |388| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 390,column 13,is_stmt,isa 0
        MOVL      XAR6,@||VIENNA_pcmWaveCount|| ; [CPU_ALU] |390| 
        MOV       ACC,#2000             ; [CPU_ALU] |390| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |390| 
        B         ||$C$L119||,LOS       ; [CPU_ALU] |390| 
        ; branchcc occurs ; [] |390| 
        MOVW      DP,#||wave_sum||      ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 392,column 35,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |392| 
        MOV32     R1H,@||wave_sum||     ; [CPU_FPU] |392| 
        MOVIZ     R0H,#15948            ; [CPU_FPU] |392| 
        MOVIZ     R5H,#15948            ; [CPU_FPU] |392| 
        SPM       #0                    ; [CPU_ALU] 
        MOVW      DP,#||wave_sum||+6    ; [CPU_ARAU] 
        MOVL      XAR4,#||VIENNA_pcmWave|| ; [CPU_ARAU] |392| 
        MOVL      XT,ACC                ; [CPU_ALU] |392| 
        MOVL      XAR5,P                ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 393,column 17,is_stmt,isa 0
        MOV32     R2H,@||wave_sum||+6   ; [CPU_FPU] |393| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 392,column 35,is_stmt,isa 0
        MOVXI     R0H,#52429            ; [CPU_FPU] |392| 
        MOVXI     R5H,#52429            ; [CPU_FPU] |392| 
        IMPYL     ACC,XT,XAR6           ; [CPU_ALU] |392| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 393,column 64,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |393| 
        MOVW      DP,#||wave_sum||+8    ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 392,column 35,is_stmt,isa 0
        ADDL      XAR4,ACC              ; [CPU_ALU] |392| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 394,column 17,is_stmt,isa 0
        MOVB      XAR1,#10              ; [CPU_ALU] |394| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 392,column 35,is_stmt,isa 0

        MOV32     R1H,*+XAR5[0]         ; [CPU_FPU] |392| 
||      MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |392| 

        MOVL      XAR5,XAR7             ; [CPU_ALU] |392| 

        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |392| 
||      MPYF32    R4H,R5H,R1H           ; [CPU_FPU] |392| 

        MOVIZ     R5H,#15948            ; [CPU_FPU] |392| 
        MOVXI     R5H,#52429            ; [CPU_FPU] |392| 
        MOV32     R0H,*+XAR5[0]         ; [CPU_FPU] |392| 

        MPYF32    R3H,R5H,R0H           ; [CPU_FPU] |392| 
||      MOV32     *+XAR4[2],R4H         ; [CPU_FPU] |392| 

	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 393,column 64,is_stmt,isa 0
        MOVIZ     R4H,#15948            ; [CPU_FPU] |393| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 393,column 17,is_stmt,isa 0
        MOVIZ     R5H,#15948            ; [CPU_FPU] |393| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 393,column 64,is_stmt,isa 0
        MOVXI     R4H,#52429            ; [CPU_FPU] |393| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 393,column 17,is_stmt,isa 0
        MOVXI     R5H,#52429            ; [CPU_FPU] |393| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 392,column 35,is_stmt,isa 0
        MOV32     *+XAR4[4],R3H         ; [CPU_FPU] |392| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 394,column 17,is_stmt,isa 0
        MOVIZ     R3H,#14375            ; [CPU_FPU] |394| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 393,column 17,is_stmt,isa 0

        MOV32     R5H,@||wave_sum||+8   ; [CPU_FPU] |393| 
||      MPYF32    R2H,R5H,R2H           ; [CPU_FPU] |393| 

        MOVW      DP,#||VIENNA_pcmGrid||+4 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 394,column 17,is_stmt,isa 0
        MOVXI     R3H,#50604            ; [CPU_FPU] |394| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 393,column 17,is_stmt,isa 0

        MOV32     *+XAR4[6],R2H         ; [CPU_FPU] |393| 
||      MPYF32    R0H,R4H,R5H           ; [CPU_FPU] |393| 

	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 392,column 26,is_stmt,isa 0
        MOV32     R5H,@$BLOCKED(||VIENNA_pcmGrid||)+4 ; [CPU_FPU] |392| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 393,column 64,is_stmt,isa 0

        MPYF32    R0H,R3H,R5H           ; [CPU_FPU] |394| 
||      MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |393| 

	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 392,column 26,is_stmt,isa 0
        MOV32     R4H,@$BLOCKED(||VIENNA_pcmGrid||) ; [CPU_FPU] |392| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 394,column 17,is_stmt,isa 0
        SUBF32    R0H,R4H,R0H           ; [CPU_FPU] |394| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 396,column 17,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |396| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 394,column 17,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |394| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 396,column 17,is_stmt,isa 0
        MOV32     R0H,*+XAR4[AR0]       ; [CPU_FPU] |396| 
        CMPF32    R0H,#0                ; [CPU_FPU] |396| 
        MOVST0    ZF, NF                ; [CPU_FPU] |396| 
        B         ||$C$L118||,GEQ       ; [CPU_ALU] |396| 
        ; branchcc occurs ; [] |396| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 396,column 53,is_stmt,isa 0
        ADDB      XAR4,#10              ; [CPU_ALU] |396| 
        MOVIZ     R0H,#16585            ; [CPU_FPU] |396| 
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |396| 
        MOVXI     R0H,#4059             ; [CPU_FPU] |396| 
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |396| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |396| 
||$C$L118||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 397,column 17,is_stmt,isa 0
        ADDB      XAR6,#1               ; [CPU_ALU] |397| 
        MOVW      DP,#||VIENNA_pcmWaveCount|| ; [CPU_ARAU] 
        MOVL      @||VIENNA_pcmWaveCount||,XAR6 ; [CPU_ALU] |397| 
        B         ||$C$L120||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L119||:    
        MOVW      DP,#||VIENNA_pcmWaveArm|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 398,column 19,is_stmt,isa 0
        MOV       @||VIENNA_pcmWaveArm||,#0 ; [CPU_ALU] |398| 
||$C$L120||:    
        MOVW      DP,#||wave_divider||  ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 401,column 11,is_stmt,isa 0
        MOV       @||wave_divider||,#0  ; [CPU_ALU] |401| 
||$C$L121||:    
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 402,column 5,is_stmt,isa 0
$C$DW$360	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$360, DW_AT_low_pc(0x00)
	.dwattr $C$DW$360, DW_AT_name("pc_benchmark")
	.dwattr $C$DW$360, DW_AT_TI_call

        LCR       #||pc_benchmark||     ; [CPU_ALU] |402| 
        ; call occurs [#||pc_benchmark||] ; [] |402| 
	.dwpsn	file "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib/cputimer.h",line 356,column 5,is_stmt,isa 0
        MOV32     P,*(0:0x0c00)         ; [CPU_FPU] |356| 
        MOVL      ACC,P                 ; [CPU_ALU] |356| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 72,column 5,is_stmt,isa 0
        CMPL      ACC,XAR2              ; [CPU_ALU] |72| 
        B         ||$C$L122||,HI        ; [CPU_ALU] |72| 
        ; branchcc occurs ; [] |72| 
        MOVL      ACC,XAR2              ; [CPU_ALU] |72| 
        SUBL      ACC,P                 ; [CPU_ALU] |72| 
        B         ||$C$L123||,UNC       ; [CPU_ALU] |72| 
        ; branch occurs ; [] |72| 
||$C$L122||:    
        MOVL      ACC,XAR2              ; [CPU_ALU] |72| 
        SUBL      ACC,P                 ; [CPU_ALU] |72| 
        ADD       ACC,#15625 << 7       ; [CPU_ALU] |72| 
||$C$L123||:    
        MOVW      DP,#||VIENNA_pcmBodyCycles|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 403,column 5,is_stmt,isa 0
        MOVL      @||VIENNA_pcmBodyCycles||,ACC ; [CPU_ALU] |403| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 404,column 5,is_stmt,isa 0
        MOVL      ACC,@||VIENNA_pcmBodyCyclesMax|| ; [CPU_ALU] |404| 
        CMPL      ACC,@||VIENNA_pcmBodyCycles|| ; [CPU_ALU] |404| 
        B         ||$C$L124||,HIS       ; [CPU_ALU] |404| 
        ; branchcc occurs ; [] |404| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 404,column 53,is_stmt,isa 0
        MOVL      ACC,@||VIENNA_pcmBodyCycles|| ; [CPU_ALU] |404| 
        MOVL      @||VIENNA_pcmBodyCyclesMax||,ACC ; [CPU_ALU] |404| 
||$C$L124||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 406,column 5,is_stmt,isa 0
        MOV       ACC,#4000             ; [CPU_ALU] |406| 
        CMPL      ACC,@||VIENNA_pcmBodyCycles|| ; [CPU_ALU] |406| 
        B         ||$C$L125||,HIS       ; [CPU_ALU] |406| 
        ; branchcc occurs ; [] |406| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 406,column 88,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_ALU] |406| 
$C$DW$361	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$361, DW_AT_low_pc(0x00)
	.dwattr $C$DW$361, DW_AT_name("pc_fault")
	.dwattr $C$DW$361, DW_AT_TI_call

        LCR       #||pc_fault||         ; [CPU_ALU] |406| 
        ; call occurs [#||pc_fault||] ; [] |406| 
||$C$L125||:    
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
$C$DW$362	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$362, DW_AT_low_pc(0x00)
	.dwattr $C$DW$362, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$342, DW_AT_TI_end_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$342, DW_AT_TI_end_line(0x197)
	.dwattr $C$DW$342, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$342

	.sect	"pcmfpc_code"
	.clink
	.global	||VIENNA_PCMFPC_outer||

$C$DW$363	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$363, DW_AT_name("VIENNA_PCMFPC_outer")
	.dwattr $C$DW$363, DW_AT_low_pc(||VIENNA_PCMFPC_outer||)
	.dwattr $C$DW$363, DW_AT_high_pc(0x00)
	.dwattr $C$DW$363, DW_AT_linkage_name("VIENNA_PCMFPC_outer")
	.dwattr $C$DW$363, DW_AT_external
	.dwattr $C$DW$363, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$363, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$363, DW_AT_decl_column(0x06)
	.dwattr $C$DW$363, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 315,column 1,is_stmt,address ||VIENNA_PCMFPC_outer||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_PCMFPC_outer||

;***************************************************************
;* FNAME: VIENNA_PCMFPC_outer           FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  8 SOE     *
;***************************************************************

||VIENNA_PCMFPC_outer||:
;* R0    assigned to $O$v2
;* R3    assigned to $O$v1
;* AL    assigned to $O$S1
;* R4    assigned to v
$C$DW$364	.dwtag  DW_TAG_variable
	.dwattr $C$DW$364, DW_AT_name("v")
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$364, DW_AT_location[DW_OP_regx 0x3b]

;* R2    assigned to target
$C$DW$365	.dwtag  DW_TAG_variable
	.dwattr $C$DW$365, DW_AT_name("target")
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$365, DW_AT_location[DW_OP_regx 0x33]

;* R2    assigned to error
$C$DW$366	.dwtag  DW_TAG_variable
	.dwattr $C$DW$366, DW_AT_name("error")
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$366, DW_AT_location[DW_OP_regx 0x33]

;* R4    assigned to unsat
$C$DW$367	.dwtag  DW_TAG_variable
	.dwattr $C$DW$367, DW_AT_name("unsat")
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$367, DW_AT_location[DW_OP_regx 0x3b]

;* R1    assigned to limited
$C$DW$368	.dwtag  DW_TAG_variable
	.dwattr $C$DW$368, DW_AT_name("limited")
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$368, DW_AT_location[DW_OP_regx 0x2f]

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
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -12
        MOVW      DP,#||VIENNA_vBusMeas_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 318,column 12,is_stmt,isa 0
        MOV32     R1H,@||VIENNA_vBusMeas_pu|| ; [CPU_FPU] |318| 
        MOVW      DP,#||VIENNA_firstTimeGvLoop|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 321,column 5,is_stmt,isa 0
        MOV       AL,@||VIENNA_firstTimeGvLoop|| ; [CPU_ALU] |321| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 318,column 12,is_stmt,isa 0
        MPYF32    R4H,R1H,#17379        ; [CPU_FPU] |318| 
        MOVW      DP,#||VIENNA_vBusRefSlewed_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 319,column 17,is_stmt,isa 0
        MOV32     R0H,@||VIENNA_vBusRefSlewed_pu|| ; [CPU_FPU] |319| 
        MPYF32    R2H,R0H,#17379        ; [CPU_FPU] |319| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 321,column 5,is_stmt,isa 0
        B         ||$C$L126||,NEQ       ; [CPU_ALU] |321| 
        ; branchcc occurs ; [] |321| 
        MOVW      DP,#||outer_filtered|| ; [CPU_ARAU] 
        MOV32     R3H,@||outer_filtered|| ; [CPU_FPU] 
        MOV32     R0H,@||outer_integral|| ; [CPU_FPU] 
        B         ||$C$L127||,UNC       ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L126||:    
        MOVW      DP,#||VIENNA_vBusMeas_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 322,column 34,is_stmt,isa 0
        MOVL      ACC,@||VIENNA_vBusMeas_pu|| ; [CPU_ALU] |322| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 323,column 9,is_stmt,isa 0
        MOV32     R2H,R4H               ; [CPU_FPU] |323| 
        MOV32     R3H,R4H               ; [CPU_FPU] |323| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 323,column 35,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |323| 
        MOVW      DP,#||VIENNA_firstTimeGvLoop|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 322,column 9,is_stmt,isa 0
        MOV       @||VIENNA_firstTimeGvLoop||,#0 ; [CPU_ALU] |322| 
        MOVW      DP,#||VIENNA_vBusRefSlewed_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 322,column 34,is_stmt,isa 0
        MOVL      @||VIENNA_vBusRefSlewed_pu||,ACC ; [CPU_ALU] |322| 
||$C$L127||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 325,column 5,is_stmt,isa 0
        MOVIZ     R1H,#15252            ; [CPU_FPU] |325| 
        SUBF32    R2H,R2H,R3H           ; [CPU_FPU] |325| 
        MOVXI     R1H,#14005            ; [CPU_FPU] |325| 
        MPYF32    R2H,R1H,R2H           ; [CPU_FPU] |325| 
        NOP       ; [CPU_ALU] 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |325| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 326,column 28,is_stmt,isa 0
        MOVIZ     R7H,#15533            ; [CPU_FPU] |326| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 326,column 5,is_stmt,isa 0
        SUBF32    R2H,R3H,R4H           ; [CPU_FPU] |326| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 326,column 28,is_stmt,isa 0
        MOVXI     R7H,#57902            ; [CPU_FPU] |326| 
        MPYF32    R1H,R7H,R2H           ; [CPU_FPU] |326| 
        MOVW      DP,#||outer_filtered|| ; [CPU_ARAU] 
        ADDF32    R4H,R0H,R1H           ; [CPU_FPU] |326| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 325,column 5,is_stmt,isa 0
        MOV32     @||outer_filtered||,R3H ; [CPU_FPU] |325| 
	.dwpsn	file "D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/math.h",line 245,column 5,is_stmt,isa 0
        MOV32     R1H,R4H               ; [CPU_FPU] |245| 
        MAXF32    R1H,#0                ; [CPU_FPU] |245| 
        MINF32    R1H,#16560            ; [CPU_FPU] |245| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 328,column 5,is_stmt,isa 0
        CMPF32    R4H,#0                ; [CPU_FPU] |328| 
        MOVST0    ZF, NF                ; [CPU_FPU] |328| 
        B         ||$C$L128||,GEQ       ; [CPU_ALU] |328| 
        ; branchcc occurs ; [] |328| 
        MOVB      AL,#1                 ; [CPU_ALU] |328| 
        B         ||$C$L130||,UNC       ; [CPU_ALU] |328| 
        ; branch occurs ; [] |328| 
||$C$L128||:    
        CMPF32    R4H,#16560            ; [CPU_FPU] |328| 
        MOVST0    ZF, NF                ; [CPU_FPU] |328| 
        B         ||$C$L129||,LEQ       ; [CPU_ALU] |328| 
        ; branchcc occurs ; [] |328| 
        MOVB      AL,#2                 ; [CPU_ALU] |328| 
        B         ||$C$L130||,UNC       ; [CPU_ALU] |328| 
        ; branch occurs ; [] |328| 
||$C$L129||:    
        MOVB      AL,#0                 ; [CPU_ALU] |328| 
||$C$L130||:    
        MOVW      DP,#||VIENNA_pcmReferenceSaturation|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 329,column 5,is_stmt,isa 0
        MOVIZ     R6H,#16538            ; [CPU_FPU] |329| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 333,column 5,is_stmt,isa 0
        MOVIZ     R5H,#15120            ; [CPU_FPU] |333| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 329,column 5,is_stmt,isa 0
        MOVIZ     R3H,#17251            ; [CPU_FPU] |329| 
        SUBF32    R7H,R1H,R4H           ; [CPU_FPU] |329| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 328,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmReferenceSaturation||,AL ; [CPU_ALU] |328| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 329,column 5,is_stmt,isa 0
        MOVXI     R6H,#20354            ; [CPU_FPU] |329| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 333,column 5,is_stmt,isa 0
        MOVXI     R5H,#23096            ; [CPU_FPU] |333| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 329,column 5,is_stmt,isa 0
        MOVXI     R3H,#12042            ; [CPU_FPU] |329| 
        MOVW      DP,#||VIENNA_pcmIdRef_A|| ; [CPU_ARAU] 
        MPYF32    R4H,R6H,R2H           ; [CPU_FPU] |329| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 333,column 5,is_stmt,isa 0
        MPYF32    R5H,R5H,R2H           ; [CPU_FPU] |333| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 329,column 5,is_stmt,isa 0
        MOVIZ     R6H,#14247            ; [CPU_FPU] |329| 
        MPYF32    R7H,R3H,R7H           ; [CPU_FPU] |329| 
        MOVXI     R6H,#50604            ; [CPU_FPU] |329| 
        ADDF32    R7H,R7H,R4H           ; [CPU_FPU] |329| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 331,column 5,is_stmt,isa 0
        MOVIZ     R3H,#15729            ; [CPU_FPU] |331| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 329,column 5,is_stmt,isa 0
        MPYF32    R2H,R6H,R7H           ; [CPU_FPU] |329| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 331,column 5,is_stmt,isa 0
        MOVXI     R3H,#23536            ; [CPU_FPU] |331| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 329,column 5,is_stmt,isa 0

        ADDF32    R0H,R0H,R2H           ; [CPU_FPU] |329| 
||      MOV32     @||VIENNA_pcmIdRef_A||,R1H ; [CPU_FPU] |330| 

	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 330,column 31,is_stmt,isa 0
        ZERO      R7H                   ; [CPU_FPU] |330| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 329,column 5,is_stmt,isa 0
        MOV32     @||outer_integral||,R0H ; [CPU_FPU] |329| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 330,column 31,is_stmt,isa 0

        MOV32     @||VIENNA_pcmIqRef_A||,R7H ; [CPU_FPU] |330| 
||      MPYF32    R3H,R3H,R1H           ; [CPU_FPU] |331| 

        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
        MOVW      DP,#||VIENNA_iLRef_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 331,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_iLRef_pu||,R3H ; [CPU_FPU] |331| 
        MOVW      DP,#||VIENNA_gv_out|| ; [CPU_ARAU] 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 71
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 332,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_gv_out||,R1H ; [CPU_FPU] |332| 
        MOVW      DP,#||VIENNA_voltage_error_pu|| ; [CPU_ARAU] 
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 333,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_voltage_error_pu||,R5H ; [CPU_FPU] |333| 
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$369	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$369, DW_AT_low_pc(0x00)
	.dwattr $C$DW$369, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$363, DW_AT_TI_end_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$363, DW_AT_TI_end_line(0x14e)
	.dwattr $C$DW$363, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$363

	.sect	"pcmfpc_code"
	.clink
	.global	||VIENNA_PCMFPC_make_refs||

$C$DW$370	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$370, DW_AT_name("VIENNA_PCMFPC_make_refs")
	.dwattr $C$DW$370, DW_AT_low_pc(||VIENNA_PCMFPC_make_refs||)
	.dwattr $C$DW$370, DW_AT_high_pc(0x00)
	.dwattr $C$DW$370, DW_AT_linkage_name("VIENNA_PCMFPC_make_refs")
	.dwattr $C$DW$370, DW_AT_external
	.dwattr $C$DW$370, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$370, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$370, DW_AT_decl_column(0x06)
	.dwattr $C$DW$370, DW_AT_TI_max_frame_size(-16)
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 283,column 1,is_stmt,address ||VIENNA_PCMFPC_make_refs||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_PCMFPC_make_refs||

;***************************************************************
;* FNAME: VIENNA_PCMFPC_make_refs       FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 10 Auto,  4 SOE     *
;***************************************************************

||VIENNA_PCMFPC_make_refs||:
$C$DW$371	.dwtag  DW_TAG_variable
	.dwattr $C$DW$371, DW_AT_name("abc")
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$371, DW_AT_location[DW_OP_breg20 -6]

$C$DW$372	.dwtag  DW_TAG_variable
	.dwattr $C$DW$372, DW_AT_name("ref")
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$372, DW_AT_location[DW_OP_breg20 -10]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        ADDB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -16
        MOVW      DP,#||VIENNA_pcmIdRef_A|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 286,column 5,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |286| 
        MOVZ      AR5,SP                ; [CPU_ALU] |286| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 285,column 5,is_stmt,isa 0
        MOVL      XAR6,@||VIENNA_pcmIdRef_A|| ; [CPU_ALU] |285| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 285,column 30,is_stmt,isa 0
        MOVL      ACC,@||VIENNA_pcmIqRef_A|| ; [CPU_ALU] |285| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 286,column 5,is_stmt,isa 0
        SUBB      XAR4,#10              ; [CPU_ARAU] |286| 
        SUBB      XAR5,#6               ; [CPU_ARAU] |286| 
        MOVW      DP,#||VIENNA_pcmGrid|| ; [CPU_ARAU] 
        MOVZ      AR4,AR4               ; [CPU_ALU] |286| 
        MOVZ      AR5,AR5               ; [CPU_ALU] |286| 
        MOV32     R0H,@$BLOCKED(||VIENNA_pcmGrid||) ; [CPU_FPU] |286| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 285,column 5,is_stmt,isa 0
        MOVL      *-SP[10],XAR6         ; [CPU_ALU] |285| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 285,column 30,is_stmt,isa 0
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |285| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 286,column 5,is_stmt,isa 0
$C$DW$373	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$373, DW_AT_low_pc(0x00)
	.dwattr $C$DW$373, DW_AT_name("PC_dq_to_abc")
	.dwattr $C$DW$373, DW_AT_TI_call

        LCR       #||PC_dq_to_abc||     ; [CPU_ALU] |286| 
        ; call occurs [#||PC_dq_to_abc||] ; [] |286| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 287,column 5,is_stmt,isa 0
        MOVIZ     R2H,#15786            ; [CPU_FPU] |287| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 288,column 5,is_stmt,isa 0
        MOVIZ     R1H,#15786            ; [CPU_FPU] |288| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 289,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15786            ; [CPU_FPU] |289| 
        MOVW      DP,#||VIENNA_iL1Ref_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 287,column 5,is_stmt,isa 0
        MOV32     R5H,*-SP[6]           ; [CPU_FPU] |287| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 288,column 5,is_stmt,isa 0
        MOV32     R4H,*-SP[4]           ; [CPU_FPU] |288| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 290,column 37,is_stmt,isa 0
        MOVL      ACC,*-SP[8]           ; [CPU_ALU] |290| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 287,column 5,is_stmt,isa 0
        MOVXI     R2H,#43691            ; [CPU_FPU] |287| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 290,column 5,is_stmt,isa 0
        MOVL      XAR6,*-SP[10]         ; [CPU_ALU] |290| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 288,column 5,is_stmt,isa 0
        MOVXI     R1H,#43691            ; [CPU_FPU] |288| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 287,column 5,is_stmt,isa 0

        MPYF32    R2H,R2H,R5H           ; [CPU_FPU] |287| 
||      MOV32     R3H,*-SP[2]           ; [CPU_FPU] |289| 

	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 289,column 5,is_stmt,isa 0
        MOVXI     R0H,#43691            ; [CPU_FPU] |289| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 287,column 5,is_stmt,isa 0

        MOV32     @||VIENNA_iL1Ref_pu||,R2H ; [CPU_FPU] |287| 
||      MPYF32    R1H,R1H,R4H           ; [CPU_FPU] |288| 

        MOVW      DP,#||VIENNA_pcmInput||+16 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 290,column 37,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_pcmInput||)+18,ACC ; [CPU_ALU] |290| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 290,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||VIENNA_pcmInput||)+16,XAR6 ; [CPU_ALU] |290| 
        MOVW      DP,#||VIENNA_iL2Ref_pu|| ; [CPU_ARAU] 
        SUBB      SP,#10                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 288,column 5,is_stmt,isa 0

        MOV32     @||VIENNA_iL2Ref_pu||,R1H ; [CPU_FPU] |288| 
||      MPYF32    R0H,R0H,R3H           ; [CPU_FPU] |289| 

        MOVW      DP,#||VIENNA_iL3Ref_pu|| ; [CPU_ARAU] 
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 289,column 5,is_stmt,isa 0
        MOV32     @||VIENNA_iL3Ref_pu||,R0H ; [CPU_FPU] |289| 
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$374	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$374, DW_AT_low_pc(0x00)
	.dwattr $C$DW$374, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$370, DW_AT_TI_end_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$370, DW_AT_TI_end_line(0x123)
	.dwattr $C$DW$370, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$370

	.sect	".text"
	.clink
	.global	||VIENNA_PCMFPC_init||

$C$DW$375	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$375, DW_AT_name("VIENNA_PCMFPC_init")
	.dwattr $C$DW$375, DW_AT_low_pc(||VIENNA_PCMFPC_init||)
	.dwattr $C$DW$375, DW_AT_high_pc(0x00)
	.dwattr $C$DW$375, DW_AT_linkage_name("VIENNA_PCMFPC_init")
	.dwattr $C$DW$375, DW_AT_external
	.dwattr $C$DW$375, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$375, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$375, DW_AT_decl_column(0x06)
	.dwattr $C$DW$375, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 139,column 1,is_stmt,address ||VIENNA_PCMFPC_init||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_PCMFPC_init||

;***************************************************************
;* FNAME: VIENNA_PCMFPC_init            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||VIENNA_PCMFPC_init||:
;* AR4   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 140,column 5,is_stmt,isa 0
        MOVL      XAR4,#||pc_config||   ; [CPU_ARAU] |140| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
$C$DW$376	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$376, DW_AT_low_pc(0x00)
	.dwattr $C$DW$376, DW_AT_name("PC_default_config")
	.dwattr $C$DW$376, DW_AT_TI_call

        LCR       #||PC_default_config|| ; [CPU_ALU] |140| 
        ; call occurs [#||PC_default_config||] ; [] |140| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 142,column 5,is_stmt,isa 0
        MOVIZ     R4H,#14247            ; [CPU_FPU] |142| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 141,column 5,is_stmt,isa 0
        MOVIZ     R5H,#14119            ; [CPU_FPU] |141| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 142,column 5,is_stmt,isa 0
        MOVXI     R4H,#50604            ; [CPU_FPU] |142| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 141,column 5,is_stmt,isa 0
        MOVXI     R5H,#50604            ; [CPU_FPU] |141| 
        MOVW      DP,#||pc_config||+14  ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 143,column 5,is_stmt,isa 0
        MOVIZ     R3H,#15172            ; [CPU_FPU] |143| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 144,column 5,is_stmt,isa 0
        MOVIZ     R2H,#15948            ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 146,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15523            ; [CPU_FPU] |146| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 145,column 5,is_stmt,isa 0
        MOVIZ     R1H,#14822            ; [CPU_FPU] |145| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 147,column 5,is_stmt,isa 0
        MOV       @||pc_config||+14,#0  ; [CPU_ALU] |147| 
        MOVW      DP,#||pc_config||     ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 143,column 5,is_stmt,isa 0
        MOVXI     R3H,#39846            ; [CPU_FPU] |143| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 144,column 5,is_stmt,isa 0
        MOVXI     R2H,#52429            ; [CPU_FPU] |144| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 146,column 5,is_stmt,isa 0
        MOVXI     R0H,#55050            ; [CPU_FPU] |146| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 145,column 5,is_stmt,isa 0
        MOVXI     R1H,#45005            ; [CPU_FPU] |145| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 148,column 5,is_stmt,isa 0
        MOVL      XAR4,#||grid_config|| ; [CPU_ARAU] |148| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 141,column 5,is_stmt,isa 0
        MOV32     @||pc_config||,R5H    ; [CPU_FPU] |141| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 142,column 5,is_stmt,isa 0
        MOV32     @||pc_config||+2,R4H  ; [CPU_FPU] |142| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 143,column 5,is_stmt,isa 0
        MOV32     @||pc_config||+4,R3H  ; [CPU_FPU] |143| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 144,column 5,is_stmt,isa 0
        MOV32     @||pc_config||+6,R2H  ; [CPU_FPU] |144| 
        MOVW      DP,#||pc_config||+8   ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 148,column 5,is_stmt,isa 0
        MOVIZ     R2H,#16800            ; [CPU_FPU] |148| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 146,column 5,is_stmt,isa 0
        MOV32     @||pc_config||+10,R0H ; [CPU_FPU] |146| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 145,column 5,is_stmt,isa 0
        MOV32     @||pc_config||+8,R1H  ; [CPU_FPU] |145| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 148,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14247            ; [CPU_FPU] |148| 
        MOVIZ     R1H,#16968            ; [CPU_FPU] |148| 
        MOVXI     R0H,#50604            ; [CPU_FPU] |148| 
$C$DW$377	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$377, DW_AT_low_pc(0x00)
	.dwattr $C$DW$377, DW_AT_name("VG_configure")
	.dwattr $C$DW$377, DW_AT_TI_call

        LCR       #||VG_configure||     ; [CPU_ALU] |148| 
        ; call occurs [#||VG_configure||] ; [] |148| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 149,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14247            ; [CPU_FPU] |149| 
        MOVIZ     R1H,#15172            ; [CPU_FPU] |149| 
        MOVIZ     R2H,#17732            ; [CPU_FPU] |149| 
        MOVL      XAR4,#||observer_config|| ; [CPU_ARAU] |149| 
        MOVXI     R0H,#50604            ; [CPU_FPU] |149| 
        MOVXI     R1H,#39846            ; [CPU_FPU] |149| 
        MOVXI     R2H,#22908            ; [CPU_FPU] |149| 
$C$DW$378	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$378, DW_AT_low_pc(0x00)
	.dwattr $C$DW$378, DW_AT_name("VO_configure")
	.dwattr $C$DW$378, DW_AT_TI_call

        LCR       #||VO_configure||     ; [CPU_ALU] |149| 
        ; call occurs [#||VO_configure||] ; [] |149| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 151,column 5,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_pcmGrid|| ; [CPU_ARAU] |151| 
$C$DW$379	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$379, DW_AT_low_pc(0x00)
	.dwattr $C$DW$379, DW_AT_name("VG_reset")
	.dwattr $C$DW$379, DW_AT_TI_call

        LCR       #||VG_reset||         ; [CPU_ALU] |151| 
        ; call occurs [#||VG_reset||] ; [] |151| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 151,column 31,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_pcmObserver|| ; [CPU_ARAU] |151| 
$C$DW$380	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$380, DW_AT_low_pc(0x00)
	.dwattr $C$DW$380, DW_AT_name("VO_reset")
	.dwattr $C$DW$380, DW_AT_TI_call

        LCR       #||VO_reset||         ; [CPU_ALU] |151| 
        ; call occurs [#||VO_reset||] ; [] |151| 
        MOVW      DP,#||VIENNA_pcmModeRequest|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 152,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmModeRequest||,#0 ; [CPU_ALU] |152| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 152,column 45,is_stmt,isa 0
        MOV       @||VIENNA_pcmModeActive||,#0 ; [CPU_ALU] |152| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 157,column 5,is_stmt,isa 0
        MOVB      XAR7,#0               ; [CPU_ALU] |157| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 157,column 30,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |157| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 157,column 58,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |157| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 153,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmHardwareRelease||,#0 ; [CPU_ALU] |153| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 163,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |163| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 163,column 36,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |163| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 163,column 5,is_stmt,isa 0
        MOVL      XAR4,#||VIENNA_pcmMeasuredDQ_A|| ; [CPU_ARAU] |163| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 153,column 34,is_stmt,isa 0
        MOV       @||VIENNA_pcmShadowEnable||,#0 ; [CPU_ALU] |153| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 154,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputSource||,#0 ; [CPU_ALU] |154| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 154,column 31,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputDetailValid||,#0 ; [CPU_ALU] |154| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 155,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmOutputIntegralValid||,#0 ; [CPU_ALU] |155| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 156,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmBenchRequest||,#0 ; [CPU_ALU] |156| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 156,column 31,is_stmt,isa 0
        MOV       @||VIENNA_pcmBenchStatus||,#0 ; [CPU_ALU] |156| 
        MOVW      DP,#||VIENNA_pcmBenchCycles|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 157,column 5,is_stmt,isa 0
        MOVL      @||VIENNA_pcmBenchCycles||,XAR7 ; [CPU_ALU] |157| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 157,column 30,is_stmt,isa 0
        MOVL      @||VIENNA_pcmBenchCyclesMax||,XAR6 ; [CPU_ALU] |157| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 157,column 58,is_stmt,isa 0
        MOVL      @||VIENNA_pcmBenchCount||,ACC ; [CPU_ALU] |157| 
        MOVW      DP,#||VIENNA_pcmBenchSelectedId|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 158,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmBenchSelectedId||,#0 ; [CPU_ALU] |158| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 158,column 34,is_stmt,isa 0
        MOV       @||VIENNA_pcmBenchHWState||,#0 ; [CPU_ALU] |158| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 159,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmActualAppliedState||,#0 ; [CPU_ALU] |159| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 159,column 37,is_stmt,isa 0
        MOV       @||VIENNA_pcmPendingState||,#0 ; [CPU_ALU] |159| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 161,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmRootMethod||,#0 ; [CPU_ALU] |161| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 161,column 46,is_stmt,isa 0
        MOV       @||VIENNA_pcmRootMethodActive||,#0 ; [CPU_ALU] |161| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 161,column 93,is_stmt,isa 0
        MOV       @||VIENNA_pcmInputsValid||,#0 ; [CPU_ALU] |161| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 162,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmInputFaultMask||,#0 ; [CPU_ALU] |162| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 162,column 33,is_stmt,isa 0
        MOV       @||VIENNA_pcmReferenceSaturation||,#0 ; [CPU_ALU] |162| 
        MOVW      DP,#||VIENNA_pcmRingCount|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 160,column 5,is_stmt,isa 0
        MOV       @||history_valid||,#0 ; [CPU_ALU] |160| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 160,column 22,is_stmt,isa 0
        MOV       @||previous_trip||,#0 ; [CPU_ALU] |160| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 160,column 39,is_stmt,isa 0
        MOV       @||previous_hw||,#0   ; [CPU_ALU] |160| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 166,column 5,is_stmt,isa 0
        MOV32     @||outer_integral||,R1H ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 166,column 25,is_stmt,isa 0
        MOV32     @||outer_filtered||,R0H ; [CPU_FPU] |166| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 163,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R1H         ; [CPU_FPU] |163| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 163,column 36,is_stmt,isa 0
        MOV32     *+XAR4[2],R0H         ; [CPU_FPU] |163| 
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 164,column 5,is_stmt,isa 0
        MOVL      @||VIENNA_pcmRingCount||,XAR7 ; [CPU_ALU] |164| 
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 164,column 28,is_stmt,isa 0
        MOVL      @||VIENNA_pcmRingOverflow||,XAR6 ; [CPU_ALU] |164| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 164,column 54,is_stmt,isa 0
        MOVL      @||VIENNA_pcmWaveCount||,ACC ; [CPU_ALU] |164| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 165,column 5,is_stmt,isa 0
        MOVL      @||VIENNA_pcmTick||,XAR6 ; [CPU_ALU] |165| 
        MOVW      DP,#||VIENNA_pcmFault|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 165,column 23,is_stmt,isa 0
        MOV       @||VIENNA_pcmFault||,#0 ; [CPU_ALU] |165| 
$C$DW$381	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$381, DW_AT_low_pc(0x00)
	.dwattr $C$DW$381, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$375, DW_AT_TI_end_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$375, DW_AT_TI_end_line(0xa7)
	.dwattr $C$DW$375, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$375

	.sect	"pcmfpc_code"
	.clink
	.global	||VIENNA_PCMFPC_can_start||

$C$DW$382	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$382, DW_AT_name("VIENNA_PCMFPC_can_start")
	.dwattr $C$DW$382, DW_AT_low_pc(||VIENNA_PCMFPC_can_start||)
	.dwattr $C$DW$382, DW_AT_high_pc(0x00)
	.dwattr $C$DW$382, DW_AT_linkage_name("VIENNA_PCMFPC_can_start")
	.dwattr $C$DW$382, DW_AT_external
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$382, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$382, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$382, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$382, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 271,column 1,is_stmt,address ||VIENNA_PCMFPC_can_start||,isa 0

	.dwfde $C$DW$CIE, ||VIENNA_PCMFPC_can_start||

;***************************************************************
;* FNAME: VIENNA_PCMFPC_can_start       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||VIENNA_PCMFPC_can_start||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVW      DP,#||VIENNA_pcmHardwareRelease|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 274,column 5,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmHardwareRelease|| ; [CPU_ALU] |274| 
        B         ||$C$L131||,NEQ       ; [CPU_ALU] |274| 
        ; branchcc occurs ; [] |274| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 274,column 36,is_stmt,isa 0
        OR        @||VIENNA_pcmFault||,#0x0002 ; [CPU_ALU] |274| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 274,column 76,is_stmt,isa 0
        B         ||$C$L134||,UNC       ; [CPU_ALU] |274| 
        ; branch occurs ; [] |274| 
||$C$L131||:    
        MOVW      DP,#||VIENNA_pcmGrid||+23 ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 275,column 5,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||VIENNA_pcmGrid||)+23 ; [CPU_ALU] |275| 
        B         ||$C$L132||,EQ        ; [CPU_ALU] |275| 
        ; branchcc occurs ; [] |275| 
        MOV       AL,@$BLOCKED(||VIENNA_pcmGrid||)+24 ; [CPU_ALU] |275| 
        B         ||$C$L133||,EQ        ; [CPU_ALU] |275| 
        ; branchcc occurs ; [] |275| 
||$C$L132||:    
        MOVW      DP,#||VIENNA_pcmFault|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 275,column 57,is_stmt,isa 0
        OR        @||VIENNA_pcmFault||,#0x0004 ; [CPU_ALU] |275| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 275,column 89,is_stmt,isa 0
        B         ||$C$L134||,UNC       ; [CPU_ALU] |275| 
        ; branch occurs ; [] |275| 
||$C$L133||:    
        MOVW      DP,#||VIENNA_pcmModeRequest|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 276,column 5,is_stmt,isa 0
        MOV       AL,@||VIENNA_pcmModeRequest|| ; [CPU_ALU] |276| 
        CMPB      AL,#2                 ; [CPU_ALU] |276| 
        B         ||$C$L134||,HI        ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
        MOV       AL,@||VIENNA_pcmRootMethod|| ; [CPU_ALU] |276| 
        CMPB      AL,#1                 ; [CPU_ALU] |276| 
        B         ||$C$L134||,HI        ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
        MOV       AL,@||VIENNA_pcmInputsValid|| ; [CPU_ALU] |276| 
        B         ||$C$L134||,EQ        ; [CPU_ALU] |276| 
        ; branchcc occurs ; [] |276| 
        MOVW      DP,#||VIENNA_vBusMeas_pu|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 277,column 5,is_stmt,isa 0
        MOV32     R0H,@||VIENNA_vBusMeas_pu|| ; [CPU_FPU] |277| 
        MPYF32    R0H,R0H,#17379        ; [CPU_FPU] |277| 
        NOP       ; [CPU_ALU] 
        CMPF32    R0H,#17228            ; [CPU_FPU] |277| 
        MOVST0    ZF, NF                ; [CPU_FPU] |277| 
        B         ||$C$L135||,LT        ; [CPU_ALU] |277| 
        ; branchcc occurs ; [] |277| 
        MOVW      DP,#||VIENNA_pcmFault|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 278,column 9,is_stmt,isa 0
        OR        @||VIENNA_pcmFault||,#0x0040 ; [CPU_ALU] |278| 
||$C$L134||:    
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 278,column 48,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |278| 
        B         ||$C$L136||,UNC       ; [CPU_ALU] |278| 
        ; branch occurs ; [] |278| 
||$C$L135||:    
        MOVW      DP,#||VIENNA_pcmFault|| ; [CPU_ARAU] 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 280,column 24,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |280| 
	.dwpsn	file "../vienna_pcmfpc_runtime.c",line 280,column 5,is_stmt,isa 0
        MOV       @||VIENNA_pcmFault||,#0 ; [CPU_ALU] |280| 
||$C$L136||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$383	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$383, DW_AT_low_pc(0x00)
	.dwattr $C$DW$383, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$382, DW_AT_TI_end_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$382, DW_AT_TI_end_line(0x119)
	.dwattr $C$DW$382, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$382

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||PC_default_config||
	.global	||VG_reset||
	.global	||VO_reset||
	.global	||PC_abc_to_dq||
	.global	||PC_dq_to_abc||
	.global	||PC_fast_output_integrals_available||
	.global	||VIENNA_fcsSwitchState||
	.global	||VIENNA_closeGiLoop||
	.global	||VIENNA_closeGvLoop||
	.global	||VIENNA_closeGsLoop||
	.global	||VIENNA_clearTrip||
	.global	||VIENNA_firstTimeGvLoop||
	.global	||PC_run_fast||
	.global	||PC_run||
	.global	||VG_configure||
	.global	||VO_configure||
	.global	||VG_run||
	.global	||VO_reconstruct||
	.global	||VO_update_delta||
	.global	||VIENNA_vBusRefSlewed_pu||
	.global	||VIENNA_gv_out||
	.global	||VIENNA_voltage_error_pu||
	.global	||VIENNA_iLRef_pu||
	.global	||VIENNA_iL1Ref_pu||
	.global	||VIENNA_iL2Ref_pu||
	.global	||VIENNA_iL3Ref_pu||
	.global	||VIENNA_iL1Meas_pu||
	.global	||VIENNA_iL2Meas_pu||
	.global	||VIENNA_iL3Meas_pu||
	.global	||VIENNA_vBusMNMeas_pu||
	.global	||VIENNA_vBusPMMeas_pu||
	.global	||VIENNA_vBusMeas_pu||
	.global	||VIENNA_v1Meas_pu||
	.global	||VIENNA_v2Meas_pu||
	.global	||VIENNA_v3Meas_pu||
	.global	||VIENNA_gv||
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

$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x10)
$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("first_duration_s")
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$384, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x19)
	.dwattr $C$DW$384, DW_AT_decl_column(0x0d)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("candidate_duration_s")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$385, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x19)
	.dwattr $C$DW$385, DW_AT_decl_column(0x1f)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("L_H")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$386, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$386, DW_AT_decl_column(0x0d)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_name("R_ohm")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$387, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$387, DW_AT_decl_column(0x12)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("C_half_F")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$388, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$388, DW_AT_decl_column(0x19)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_name("delta_i_A")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$389, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$389, DW_AT_decl_column(0x0d)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("zero_window_rad")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$390, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$390, DW_AT_decl_column(0x18)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$391, DW_AT_name("root_method")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$391, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$391, DW_AT_decl_column(0x0e)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$392, DW_AT_name("diagnostic_all_angles")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$392, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$392, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$22, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x18)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66
$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("PC_Config")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$66, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x20)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67
$C$DW$393	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$66)

$C$DW$T$67	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$393)

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68
$C$DW$T$68	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69
$C$DW$394	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$68)

$C$DW$T$69	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$394)

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70
$C$DW$T$70	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$70, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$70


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x20)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$395, DW_AT_name("iabc_A")
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$395, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x23)
	.dwattr $C$DW$395, DW_AT_decl_column(0x0d)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$396, DW_AT_name("eabc_V")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$396, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x23)
	.dwattr $C$DW$396, DW_AT_decl_column(0x18)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("up_V")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$397, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x24)
	.dwattr $C$DW$397, DW_AT_decl_column(0x0d)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("low_V")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$398, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x24)
	.dwattr $C$DW$398, DW_AT_decl_column(0x13)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("id_ref_A")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$399, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x25)
	.dwattr $C$DW$399, DW_AT_decl_column(0x0d)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("iq_ref_A")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$400, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x25)
	.dwattr $C$DW$400, DW_AT_decl_column(0x17)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("theta_rad")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$401, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x26)
	.dwattr $C$DW$401, DW_AT_decl_column(0x0d)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("omega_rad_s")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$402, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x26)
	.dwattr $C$DW$402, DW_AT_decl_column(0x18)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$403, DW_AT_name("fhat_A_s")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$403, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x26)
	.dwattr $C$DW$403, DW_AT_decl_column(0x25)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$404, DW_AT_name("applied_hw_state")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$404, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x27)
	.dwattr $C$DW$404, DW_AT_decl_column(0x0e)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$405, DW_AT_name("zcdc_enable")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$405, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x27)
	.dwattr $C$DW$405, DW_AT_decl_column(0x20)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$406, DW_AT_name("terminal_enable")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$406, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0x27)
	.dwattr $C$DW$406, DW_AT_decl_column(0x2d)

	.dwattr $C$DW$T$25, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x22)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75
$C$DW$T$75	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$75, DW_AT_name("PC_Input")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$75, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x28)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$75


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76
$C$DW$407	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$75)

$C$DW$T$76	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$407)

	.dwendtag $C$DW$TU$76


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77
$C$DW$T$77	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$77


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x28)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$408, DW_AT_name("old_abc_A")
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$408, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$408, DW_AT_decl_column(0x0d)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$409, DW_AT_name("free_abc_A")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$409, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$409, DW_AT_decl_column(0x1b)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$410, DW_AT_name("next_abc_A")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$410, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$410, DW_AT_decl_column(0x2a)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$411, DW_AT_name("pole_abc_V")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$411, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$411, DW_AT_decl_column(0x39)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$412, DW_AT_name("idq_A")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$412, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$412, DW_AT_decl_column(0x0d)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("np_V")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$413, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$413, DW_AT_decl_column(0x17)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("mu_V")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$414, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$414, DW_AT_decl_column(0x1d)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("theta_end_rad")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$415, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$415, DW_AT_decl_column(0x23)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("root_residual_A")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$416, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$416, DW_AT_decl_column(0x0d)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("root_bracket_width_V")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$417, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$417, DW_AT_decl_column(0x1e)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$418, DW_AT_name("blocked")
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$418, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$418, DW_AT_decl_column(0x0e)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$419, DW_AT_name("root_iterations")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$419, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$419, DW_AT_decl_column(0x17)

	.dwattr $C$DW$T$26, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("PC_Substep")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x50)
$C$DW$420	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$420, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x5c)
$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$421, DW_AT_name("idq_A")
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$421, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x32)
	.dwattr $C$DW$421, DW_AT_decl_column(0x0d)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("np_V")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$422, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x32)
	.dwattr $C$DW$422, DW_AT_decl_column(0x17)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$423, DW_AT_name("u_integral_dq_V_s")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$423, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x32)
	.dwattr $C$DW$423, DW_AT_decl_column(0x1d)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$424, DW_AT_name("blocked")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$424, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x33)
	.dwattr $C$DW$424, DW_AT_decl_column(0x0e)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$425, DW_AT_name("substep")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$425, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x34)
	.dwattr $C$DW$425, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$29, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("PC_Interval")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$34, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x2e0)
$C$DW$426	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$426, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x3e6)
$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$427, DW_AT_name("status")
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$427, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x38)
	.dwattr $C$DW$427, DW_AT_decl_column(0x0e)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$428, DW_AT_name("selected_id")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$428, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x38)
	.dwattr $C$DW$428, DW_AT_decl_column(0x16)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$429, DW_AT_name("pc_off_id")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$429, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x38)
	.dwattr $C$DW$429, DW_AT_decl_column(0x23)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$430, DW_AT_name("hw_state")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$430, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x38)
	.dwattr $C$DW$430, DW_AT_decl_column(0x2e)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$431, DW_AT_name("valid")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$431, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x39)
	.dwattr $C$DW$431, DW_AT_decl_column(0x0e)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$432, DW_AT_name("requested")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$432, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x39)
	.dwattr $C$DW$432, DW_AT_decl_column(0x15)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$433, DW_AT_name("active")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$433, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x39)
	.dwattr $C$DW$433, DW_AT_decl_column(0x20)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$434, DW_AT_name("current_count")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$434, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x39)
	.dwattr $C$DW$434, DW_AT_decl_column(0x28)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$435, DW_AT_name("intersection_count")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$435, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$435, DW_AT_decl_column(0x0e)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$436, DW_AT_name("midpoint_prefix")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$436, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$436, DW_AT_decl_column(0x22)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$437, DW_AT_name("intersection_mask")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$437, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$437, DW_AT_decl_column(0x33)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$438, DW_AT_name("order_i")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$438, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$438, DW_AT_decl_column(0x0e)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$439, DW_AT_name("order_u")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$439, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$439, DW_AT_decl_column(0x1a)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$440, DW_AT_name("current_mask")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$440, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$440, DW_AT_decl_column(0x0e)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$441, DW_AT_name("switch_count")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$441, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$441, DW_AT_decl_column(0x1c)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$442, DW_AT_name("blocked_candidate")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$442, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$442, DW_AT_decl_column(0x2d)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$443, DW_AT_name("gi")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$443, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$443, DW_AT_decl_column(0x0d)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$444, DW_AT_name("gu")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$444, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$444, DW_AT_decl_column(0x14)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$445, DW_AT_name("gz")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$445, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$445, DW_AT_decl_column(0x1b)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$446, DW_AT_name("idq2_A")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$446, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$446, DW_AT_decl_column(0x22)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$447, DW_AT_name("np2_V")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$447, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$447, DW_AT_decl_column(0x30)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$448, DW_AT_name("idq1_A")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$448, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$448, DW_AT_decl_column(0x0d)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("np1_V")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$449, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$449, DW_AT_decl_column(0x18)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("budget_limit_A")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x92]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$450, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$450, DW_AT_decl_column(0x1f)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("voltage_margin_V")
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$451, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$451, DW_AT_decl_column(0x2f)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$452, DW_AT_name("zcdc_diag")
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$452, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$452, DW_AT_decl_column(0x0d)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$453, DW_AT_name("first_interval")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0xaa]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$453, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x40)
	.dwattr $C$DW$453, DW_AT_decl_column(0x11)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$454, DW_AT_name("candidate_interval")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x106]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$454, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x40)
	.dwattr $C$DW$454, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$36, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80
$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("PC_Output")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$80, DW_AT_decl_file("..\vienna_pcmfpc_zcdc.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81
$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$81


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82
$C$DW$455	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$81)

$C$DW$T$82	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$455)

	.dwendtag $C$DW$TU$82


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x12)
$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$456, DW_AT_name("sample_sec")
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$456, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$456, DW_AT_decl_column(0x0b)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$457, DW_AT_name("nominal_hz")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$457, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$457, DW_AT_decl_column(0x17)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$458, DW_AT_name("min_magnitude_V")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$458, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$458, DW_AT_decl_column(0x23)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$459, DW_AT_name("kp_rad_s")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$459, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$459, DW_AT_decl_column(0x0b)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$460, DW_AT_name("ki_rad_s2")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$460, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$460, DW_AT_decl_column(0x15)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$461, DW_AT_name("omega_min_rad_s")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$461, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$461, DW_AT_decl_column(0x20)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$462, DW_AT_name("omega_max_rad_s")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$462, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$462, DW_AT_decl_column(0x31)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$463, DW_AT_name("lock_phase_sin_max")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$463, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x10)
	.dwattr $C$DW$463, DW_AT_decl_column(0x0b)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$464, DW_AT_name("lock_samples")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$464, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x11)
	.dwattr $C$DW$464, DW_AT_decl_column(0x0e)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$465, DW_AT_name("reverse_samples")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$465, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x11)
	.dwattr $C$DW$465, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$37, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85
$C$DW$T$85	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$85, DW_AT_name("VG_Config")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$85, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x12)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$85


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86
$C$DW$466	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$85)

$C$DW$T$86	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$466)

	.dwendtag $C$DW$TU$86


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87
$C$DW$T$87	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$87, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$87


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88
$C$DW$T$88	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$88


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x1c)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$467, DW_AT_name("theta_rad")
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$467, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x14)
	.dwattr $C$DW$467, DW_AT_decl_column(0x0b)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$468, DW_AT_name("next_theta_rad")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$468, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x14)
	.dwattr $C$DW$468, DW_AT_decl_column(0x16)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$469, DW_AT_name("omega_rad_s")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$469, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x14)
	.dwattr $C$DW$469, DW_AT_decl_column(0x26)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$470, DW_AT_name("ed_V")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$470, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x15)
	.dwattr $C$DW$470, DW_AT_decl_column(0x0b)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$471, DW_AT_name("eq_V")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$471, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x15)
	.dwattr $C$DW$471, DW_AT_decl_column(0x11)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$472, DW_AT_name("magnitude_V")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$472, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x15)
	.dwattr $C$DW$472, DW_AT_decl_column(0x17)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$473, DW_AT_name("frequency_hz")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$473, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x15)
	.dwattr $C$DW$473, DW_AT_decl_column(0x24)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$474, DW_AT_name("phase_error")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$474, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x16)
	.dwattr $C$DW$474, DW_AT_decl_column(0x0b)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$475, DW_AT_name("integrator_rad_s")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$475, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x16)
	.dwattr $C$DW$475, DW_AT_decl_column(0x18)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$476, DW_AT_name("previous_alpha_V")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$476, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0x16)
	.dwattr $C$DW$476, DW_AT_decl_column(0x2a)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$477, DW_AT_name("previous_beta_V")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$477, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x16)
	.dwattr $C$DW$477, DW_AT_decl_column(0x3c)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$478, DW_AT_name("initialized")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$478, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0x17)
	.dwattr $C$DW$478, DW_AT_decl_column(0x0e)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$479, DW_AT_name("locked")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$479, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0x17)
	.dwattr $C$DW$479, DW_AT_decl_column(0x1b)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$480, DW_AT_name("faults")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$480, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0x17)
	.dwattr $C$DW$480, DW_AT_decl_column(0x23)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$481, DW_AT_name("lock_count")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$481, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0x17)
	.dwattr $C$DW$481, DW_AT_decl_column(0x2b)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$482, DW_AT_name("reverse_count")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$482, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0x17)
	.dwattr $C$DW$482, DW_AT_decl_column(0x37)

	.dwattr $C$DW$T$38, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90
$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("VG_State")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$90, DW_AT_decl_file("..\vienna_grid_sync.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x18)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$90


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91
$C$DW$T$91	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$91


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x0a)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$483, DW_AT_name("sample_sec")
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$483, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$483, DW_AT_decl_column(0x0b)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$484, DW_AT_name("inductance_H")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$484, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$484, DW_AT_decl_column(0x17)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$485, DW_AT_name("omega_eso_rad_s")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$485, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$485, DW_AT_decl_column(0x25)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$486, DW_AT_name("k_current")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$486, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$486, DW_AT_decl_column(0x0b)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$487, DW_AT_name("k_disturbance")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$487, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$487, DW_AT_decl_column(0x16)

	.dwattr $C$DW$T$39, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93
$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("VO_Config")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$93, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$93


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94
$C$DW$488	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$93)

$C$DW$T$94	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$488)

	.dwendtag $C$DW$TU$94


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95
$C$DW$T$95	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$95


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96
$C$DW$T$96	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$96, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$96


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x12)
$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$489, DW_AT_name("i_hat_A")
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$489, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0x10)
	.dwattr $C$DW$489, DW_AT_decl_column(0x0b)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$490, DW_AT_name("f_hat_A_s")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$490, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0x10)
	.dwattr $C$DW$490, DW_AT_decl_column(0x17)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$491, DW_AT_name("innovation_A")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$491, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0x10)
	.dwattr $C$DW$491, DW_AT_decl_column(0x25)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$492, DW_AT_name("last_sequence")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$492, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0x11)
	.dwattr $C$DW$492, DW_AT_decl_column(0x0e)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$493, DW_AT_name("initialized")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$493, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0x12)
	.dwattr $C$DW$493, DW_AT_decl_column(0x0e)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$494, DW_AT_name("valid")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$494, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0x12)
	.dwattr $C$DW$494, DW_AT_decl_column(0x1b)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$495, DW_AT_name("source")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$495, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0x12)
	.dwattr $C$DW$495, DW_AT_decl_column(0x22)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$496, DW_AT_name("faults")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$496, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0x12)
	.dwattr $C$DW$496, DW_AT_decl_column(0x2a)

	.dwattr $C$DW$T$43, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98
$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("VO_State")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$98, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$98


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99
$C$DW$T$99	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$99, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$99


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x18)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$497, DW_AT_name("idq_start_A")
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$497, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0x15)
	.dwattr $C$DW$497, DW_AT_decl_column(0x0b)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$498, DW_AT_name("fhat_A_s")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$498, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0x15)
	.dwattr $C$DW$498, DW_AT_decl_column(0x1b)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$499, DW_AT_name("up_V")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$499, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0x15)
	.dwattr $C$DW$499, DW_AT_decl_column(0x28)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$500, DW_AT_name("low_V")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$500, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0x15)
	.dwattr $C$DW$500, DW_AT_decl_column(0x2e)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$501, DW_AT_name("theta_start_rad")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$501, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0x16)
	.dwattr $C$DW$501, DW_AT_decl_column(0x0b)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$502, DW_AT_name("omega_rad_s")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$502, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0x16)
	.dwattr $C$DW$502, DW_AT_decl_column(0x1c)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$503, DW_AT_name("duration_before_sec")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$503, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0x17)
	.dwattr $C$DW$503, DW_AT_decl_column(0x0b)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$504, DW_AT_name("duration_after_sec")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$504, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0x17)
	.dwattr $C$DW$504, DW_AT_decl_column(0x20)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$505, DW_AT_name("gate_before_hw")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$505, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0x18)
	.dwattr $C$DW$505, DW_AT_decl_column(0x0e)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$506, DW_AT_name("gate_after_hw")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$506, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0x18)
	.dwattr $C$DW$506, DW_AT_decl_column(0x1e)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$507, DW_AT_name("sequence")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$507, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0x19)
	.dwattr $C$DW$507, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$44, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x14)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101
$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("VO_ReconstructInput")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$101, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$101


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102
$C$DW$508	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$101)

$C$DW$T$102	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$508)

	.dwendtag $C$DW$TU$102


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103
$C$DW$T$103	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$103, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$103


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x16)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$509, DW_AT_name("delta_u_dq_V_s")
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$509, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$509, DW_AT_decl_column(0x0b)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$510, DW_AT_name("model_end_idq_A")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$510, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$510, DW_AT_decl_column(0x1e)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$511, DW_AT_name("model_end_n_V")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$511, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$511, DW_AT_decl_column(0x32)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$512, DW_AT_name("endpoint_quadrature_dq_V_s")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$512, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$512, DW_AT_decl_column(0x0b)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$513, DW_AT_name("duration_sec")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$513, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$513, DW_AT_decl_column(0x0b)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$514, DW_AT_name("sequence")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$514, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$514, DW_AT_decl_column(0x0e)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$515, DW_AT_name("valid")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$515, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0x20)
	.dwattr $C$DW$515, DW_AT_decl_column(0x0e)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$516, DW_AT_name("blocked")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$516, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0x20)
	.dwattr $C$DW$516, DW_AT_decl_column(0x15)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$517, DW_AT_name("source")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$517, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0x20)
	.dwattr $C$DW$517, DW_AT_decl_column(0x1e)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$518, DW_AT_name("faults")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$518, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0x20)
	.dwattr $C$DW$518, DW_AT_decl_column(0x26)

	.dwattr $C$DW$T$45, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105
$C$DW$T$105	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$105, DW_AT_name("VO_ReconstructOutput")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$105, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x21)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$105


$C$DW$TU$106	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$106
$C$DW$T$106	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$106


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x38)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$519, DW_AT_name("tick")
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$519, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$519, DW_AT_decl_column(0x0e)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$520, DW_AT_name("write_cycles")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$520, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$520, DW_AT_decl_column(0x13)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$521, DW_AT_name("body_cycles")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$521, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$521, DW_AT_decl_column(0x20)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$522, DW_AT_name("iabc_A")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$522, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$522, DW_AT_decl_column(0x0b)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$523, DW_AT_name("ref_dq_A")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$523, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$523, DW_AT_decl_column(0x15)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$524, DW_AT_name("pred_dq_A")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$524, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$524, DW_AT_decl_column(0x21)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$525, DW_AT_name("theta_rad")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$525, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$525, DW_AT_decl_column(0x2e)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$526, DW_AT_name("omega_rad_s")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$526, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$526, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$526, DW_AT_decl_column(0x38)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$527, DW_AT_name("up_V")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$527, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$527, DW_AT_decl_line(0x10)
	.dwattr $C$DW$527, DW_AT_decl_column(0x0b)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$528, DW_AT_name("low_V")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$528, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$528, DW_AT_decl_line(0x10)
	.dwattr $C$DW$528, DW_AT_decl_column(0x10)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$529, DW_AT_name("fhat_A_s")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$529, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0x10)
	.dwattr $C$DW$529, DW_AT_decl_column(0x16)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$530, DW_AT_name("innovation_A")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$530, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$530, DW_AT_decl_line(0x10)
	.dwattr $C$DW$530, DW_AT_decl_column(0x22)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$531, DW_AT_name("np_V")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$531, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$531, DW_AT_decl_line(0x10)
	.dwattr $C$DW$531, DW_AT_decl_column(0x32)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$532, DW_AT_name("gi")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$532, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$532, DW_AT_decl_line(0x10)
	.dwattr $C$DW$532, DW_AT_decl_column(0x37)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$533, DW_AT_name("gu")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$533, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0x10)
	.dwattr $C$DW$533, DW_AT_decl_column(0x3a)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$534, DW_AT_name("gz")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$534, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$534, DW_AT_decl_line(0x10)
	.dwattr $C$DW$534, DW_AT_decl_column(0x3d)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$535, DW_AT_name("mode")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$535, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$535, DW_AT_decl_line(0x11)
	.dwattr $C$DW$535, DW_AT_decl_column(0x0e)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$536, DW_AT_name("pc_off_id")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$536, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$536, DW_AT_decl_line(0x11)
	.dwattr $C$DW$536, DW_AT_decl_column(0x13)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$537, DW_AT_name("selected_id")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$537, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$537, DW_AT_decl_line(0x11)
	.dwattr $C$DW$537, DW_AT_decl_column(0x1d)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$538, DW_AT_name("active")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x2f]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$538, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$538, DW_AT_decl_line(0x11)
	.dwattr $C$DW$538, DW_AT_decl_column(0x29)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$539, DW_AT_name("changed")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$539, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$539, DW_AT_decl_line(0x11)
	.dwattr $C$DW$539, DW_AT_decl_column(0x30)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$540, DW_AT_name("intersection")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$540, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$540, DW_AT_decl_line(0x11)
	.dwattr $C$DW$540, DW_AT_decl_column(0x38)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$541, DW_AT_name("prefix")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$541, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$541, DW_AT_decl_line(0x11)
	.dwattr $C$DW$541, DW_AT_decl_column(0x45)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$542, DW_AT_name("actual_hw")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$542, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$542, DW_AT_decl_line(0x12)
	.dwattr $C$DW$542, DW_AT_decl_column(0x0e)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$543, DW_AT_name("pending_hw")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$543, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$543, DW_AT_decl_line(0x12)
	.dwattr $C$DW$543, DW_AT_decl_column(0x18)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$544, DW_AT_name("fault")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$544, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$544, DW_AT_decl_line(0x12)
	.dwattr $C$DW$544, DW_AT_decl_column(0x23)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$545, DW_AT_name("output_source")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$545, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$545, DW_AT_decl_line(0x12)
	.dwattr $C$DW$545, DW_AT_decl_column(0x29)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$546, DW_AT_name("core_status")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$546, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$546, DW_AT_decl_line(0x12)
	.dwattr $C$DW$546, DW_AT_decl_column(0x37)

	.dwattr $C$DW$T$47, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111
$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("VIENNA_PC_Record")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$111, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112
$C$DW$547	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$111)

$C$DW$T$112	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$547)

	.dwendtag $C$DW$TU$112


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113

$C$DW$T$113	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x1c00)
$C$DW$548	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$548, DW_AT_upper_bound(0x7f)

	.dwendtag $C$DW$T$113

	.dwendtag $C$DW$TU$113


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x0c)
$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$549, DW_AT_name("iabc_A")
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$549, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0x14)
	.dwattr $C$DW$549, DW_AT_decl_column(0x18)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$550, DW_AT_name("ref_dq_A")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$550, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$550, DW_AT_decl_line(0x14)
	.dwattr $C$DW$550, DW_AT_decl_column(0x22)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$551, DW_AT_name("theta_rad")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$551, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$551, DW_AT_decl_line(0x14)
	.dwattr $C$DW$551, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$48, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x14)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$117	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$117
$C$DW$T$117	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$117, DW_AT_name("VIENNA_PC_Wave")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$117, DW_AT_decl_file("..\vienna_pcmfpc_runtime.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x14)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x3b)

	.dwendtag $C$DW$TU$117


$C$DW$TU$118	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$118
$C$DW$552	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$117)

$C$DW$T$118	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$552)

	.dwendtag $C$DW$TU$118


$C$DW$TU$119	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$119

$C$DW$T$119	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x5dc0)
$C$DW$553	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$553, DW_AT_upper_bound(0x7cf)

	.dwendtag $C$DW$T$119

	.dwendtag $C$DW$TU$119


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x02)
$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$554, DW_AT_name("f")
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$554, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$554, DW_AT_decl_line(0x41)
	.dwattr $C$DW$554, DW_AT_decl_column(0x12)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$555, DW_AT_name("u")
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$555, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$555, DW_AT_decl_line(0x41)
	.dwattr $C$DW$555, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$49, DW_AT_decl_file("../vienna_pcmfpc_runtime.c")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x0b)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("_Complex_double")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x08)
$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$556, DW_AT_name("_Vals")
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$556, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$556, DW_AT_decl_line(0x33)
	.dwattr $C$DW$556, DW_AT_decl_column(0x0a)

	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120
$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("_Complex_double")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$120, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x0a)

	.dwendtag $C$DW$TU$120


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("_Complex_float")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x04)
$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$557, DW_AT_name("_Vals")
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$557, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0x33)
	.dwattr $C$DW$557, DW_AT_decl_column(0x0a)

	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$121	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$121
$C$DW$T$121	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$121, DW_AT_name("_Complex_float")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$121, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x0a)

	.dwendtag $C$DW$TU$121


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("_Complex_long_double")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x08)
$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$558, DW_AT_name("_Vals")
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$558, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$558, DW_AT_decl_line(0x33)
	.dwattr $C$DW$558, DW_AT_decl_column(0x0a)

	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$123	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$123
$C$DW$T$123	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$123, DW_AT_name("_Complex_long_double")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$123, DW_AT_decl_file("..\vienna_pcmfpc_observer.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x0a)

	.dwendtag $C$DW$TU$123


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


$C$DW$TU$146	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$146
$C$DW$T$146	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$146, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$146, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$146, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$146, DW_AT_decl_column(0x1b)

	.dwendtag $C$DW$TU$146


$C$DW$TU$147	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$147
$C$DW$T$147	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$147, DW_AT_name("int16_t")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$147, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$147


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
$C$DW$559	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$559, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$176	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$176
$C$DW$560	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$21)

$C$DW$T$176	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$176, DW_AT_type(*$C$DW$560)

	.dwendtag $C$DW$TU$176


$C$DW$TU$177	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$177
$C$DW$561	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$21)

$C$DW$T$177	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$177, DW_AT_type(*$C$DW$561)

	.dwendtag $C$DW$TU$177


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


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$41, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42
$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_decl_file("D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$42


$C$DW$TU$183	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$183
$C$DW$562	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$42)

$C$DW$T$183	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$562)

	.dwendtag $C$DW$TU$183


$C$DW$TU$184	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$184
$C$DW$563	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$42)

$C$DW$T$184	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$184, DW_AT_type(*$C$DW$563)

	.dwendtag $C$DW$TU$184


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


$C$DW$TU$130	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$130
$C$DW$564	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)

$C$DW$T$130	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$564)

	.dwendtag $C$DW$TU$130


$C$DW$TU$131	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$131
$C$DW$T$131	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$131, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$131


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x06)
$C$DW$565	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$565, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x04)
$C$DW$566	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$566, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x20)
$C$DW$567	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$567, DW_AT_upper_bound(0x07)

$C$DW$568	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$568, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x10)
$C$DW$569	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$569, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x14)
$C$DW$570	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$570, DW_AT_upper_bound(0x09)

	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$132	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$132
$C$DW$T$132	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$132, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$132


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x04)
$C$DW$571	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$571, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46

$C$DW$T$46	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x06)
$C$DW$572	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$572, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$46

	.dwendtag $C$DW$TU$46


$C$DW$TU$158	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$158
$C$DW$573	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$16)

$C$DW$T$158	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$573)

	.dwendtag $C$DW$TU$158


$C$DW$TU$159	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$159
$C$DW$T$159	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$159, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$159


$C$DW$TU$187	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$187

$C$DW$T$187	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$187, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$187, DW_AT_byte_size(0x04)
$C$DW$574	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$574, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$187

	.dwendtag $C$DW$TU$187


$C$DW$TU$191	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$191
$C$DW$575	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$16)

$C$DW$T$191	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$191, DW_AT_type(*$C$DW$575)

	.dwendtag $C$DW$TU$191


$C$DW$TU$192	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$192

$C$DW$T$192	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$192, DW_AT_type(*$C$DW$T$191)
	.dwattr $C$DW$T$192, DW_AT_byte_size(0x04)
$C$DW$576	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$576, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$192

	.dwendtag $C$DW$TU$192


$C$DW$TU$194	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$194

$C$DW$T$194	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$194, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$194, DW_AT_byte_size(0x0c)
$C$DW$577	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$577, DW_AT_upper_bound(0x05)

	.dwendtag $C$DW$T$194

	.dwendtag $C$DW$TU$194


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55
$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("float32_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:\ti\C2000Ware_DigitalPower_SDK_26_01_00_00\c2000ware\driverlib\f2837xd\driverlib\inc/hw_types.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x17)

	.dwendtag $C$DW$TU$55


$C$DW$TU$195	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$195
$C$DW$578	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$55)

$C$DW$T$195	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$195, DW_AT_type(*$C$DW$578)

	.dwendtag $C$DW$TU$195


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50

$C$DW$T$50	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x08)
$C$DW$579	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$579, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$50

	.dwendtag $C$DW$TU$50


$C$DW$TU$196	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$196
$C$DW$T$196	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$196, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$196, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$196


$C$DW$TU$197	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$197
$C$DW$580	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$196)

$C$DW$T$197	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$197, DW_AT_type(*$C$DW$580)

	.dwendtag $C$DW$TU$197


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x08)
$C$DW$581	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$581, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$199	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$199
$C$DW$T$199	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$199, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$199, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$199


$C$DW$TU$200	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$200
$C$DW$582	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$199)

$C$DW$T$200	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$200, DW_AT_type(*$C$DW$582)

	.dwendtag $C$DW$TU$200


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("dcl_css")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x0a)
$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$583, DW_AT_name("tpt")
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$583, DW_AT_decl_file("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\libraries\DCL\DCL.h")
	.dwattr $C$DW$583, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$583, DW_AT_decl_column(0x0f)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$584, DW_AT_name("T")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$584, DW_AT_decl_file("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\libraries\DCL\DCL.h")
	.dwattr $C$DW$584, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$584, DW_AT_decl_column(0x0f)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$585, DW_AT_name("sts")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$585, DW_AT_decl_file("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\libraries\DCL\DCL.h")
	.dwattr $C$DW$585, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$585, DW_AT_decl_column(0x0e)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$586, DW_AT_name("err")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$586, DW_AT_decl_file("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\libraries\DCL\DCL.h")
	.dwattr $C$DW$586, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$586, DW_AT_decl_column(0x0e)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$587, DW_AT_name("loc")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$587, DW_AT_decl_file("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\libraries\DCL\DCL.h")
	.dwattr $C$DW$587, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$587, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$56, DW_AT_decl_file("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\libraries\DCL\DCL.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59
$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("DCL_CSS")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$59, DW_AT_decl_file("D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\libraries\DCL\DCL.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60
$C$DW$T$60	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("dcl_pi")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x16)
$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$588, DW_AT_name("Kp")
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$588, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$588, DW_AT_decl_line(0x1cf)
	.dwattr $C$DW$588, DW_AT_decl_column(0x0f)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$589, DW_AT_name("Ki")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$589, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$589, DW_AT_decl_line(0x1d0)
	.dwattr $C$DW$589, DW_AT_decl_column(0x0f)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$590, DW_AT_name("i10")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$590, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$590, DW_AT_decl_line(0x1d1)
	.dwattr $C$DW$590, DW_AT_decl_column(0x0f)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$591, DW_AT_name("Umax")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$591, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$591, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$591, DW_AT_decl_column(0x0f)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$592, DW_AT_name("Umin")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$592, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$592, DW_AT_decl_line(0x1d3)
	.dwattr $C$DW$592, DW_AT_decl_column(0x0f)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$593, DW_AT_name("i6")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$593, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0x1d4)
	.dwattr $C$DW$593, DW_AT_decl_column(0x0f)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$594, DW_AT_name("i11")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$594, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0x1d5)
	.dwattr $C$DW$594, DW_AT_decl_column(0x0f)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$595, DW_AT_name("Imax")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$595, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$595, DW_AT_decl_column(0x0f)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$596, DW_AT_name("Imin")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$596, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$596, DW_AT_decl_line(0x1d7)
	.dwattr $C$DW$596, DW_AT_decl_column(0x0f)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$597, DW_AT_name("sps")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$597, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0x1d8)
	.dwattr $C$DW$597, DW_AT_decl_column(0x11)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$598, DW_AT_name("css")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$598, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0x1d9)
	.dwattr $C$DW$598, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$61, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x1ce)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$202	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$202
$C$DW$T$202	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$202, DW_AT_name("DCL_PI")
	.dwattr $C$DW$T$202, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$202, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$T$202, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$T$202, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$202


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("dcl_pi_sps")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x0c)
$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$599, DW_AT_name("Kp")
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$599, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$599, DW_AT_decl_column(0x0f)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$600, DW_AT_name("Ki")
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$600, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$600, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$600, DW_AT_decl_column(0x0f)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$601, DW_AT_name("Umax")
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$601, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$601, DW_AT_decl_column(0x0f)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$602, DW_AT_name("Umin")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$602, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$602, DW_AT_decl_line(0x1c3)
	.dwattr $C$DW$602, DW_AT_decl_column(0x0f)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$603, DW_AT_name("Imax")
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$603, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$603, DW_AT_decl_line(0x1c4)
	.dwattr $C$DW$603, DW_AT_decl_column(0x0f)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$604, DW_AT_name("Imin")
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$604, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$604, DW_AT_decl_line(0x1c5)
	.dwattr $C$DW$604, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$62, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$62

	.dwendtag $C$DW$TU$62


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57
$C$DW$T$57	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$57, DW_AT_name("DCL_PI_SPS")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$57, DW_AT_decl_file("D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL/DCLF32.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x1c6)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58
$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$58

