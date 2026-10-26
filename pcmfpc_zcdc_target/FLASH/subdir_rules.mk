################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --opt_for_speed=5 --fp_mode=relaxed --fp_reassoc=on --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/device" --include_path="C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/CLAmath" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/power_measurement" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/utilities" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/sfra" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL" --include_path="C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/solutions/tidm_1000/f2837x/drivers/include" --include_path="D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include" --define=CLA_DEBUG=1 --define=_DEBUG --define=_FLASH --define=F28x_DEVICE --define=CPU1 --define=LARGE_MODEL --define=debug -g --float_operations_allowed=32 --diag_suppress=10063 --diag_suppress=173 --diag_warning=225 --diag_wrap=off --display_error_number --quiet --abi=eabi -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/FLASH/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-771657729: ../main.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/utils/sysconfig_1.21.0/sysconfig_cli.bat" --script "D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/main.syscfg" -o "syscfg" -s "C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/powerSUITE/.metadata/product.json" -d "F2837xD" --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/Kit.json: build-771657729 ../main.syscfg
syscfg/board.c: build-771657729
syscfg/board.h: build-771657729
syscfg/board.cmd.genlibs: build-771657729
syscfg/board.opt: build-771657729
syscfg/board.json: build-771657729
syscfg/pinmux.csv: build-771657729
syscfg/c2000ware_libraries.cmd.genlibs: build-771657729
syscfg/c2000ware_libraries.opt: build-771657729
syscfg/c2000ware_libraries.c: build-771657729
syscfg/c2000ware_libraries.h: build-771657729
syscfg/clocktree.h: build-771657729
syscfg: build-771657729

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --opt_for_speed=5 --fp_mode=relaxed --fp_reassoc=on --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/device" --include_path="C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/CLAmath" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/power_measurement" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/utilities" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/sfra" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL" --include_path="C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/solutions/tidm_1000/f2837x/drivers/include" --include_path="D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include" --define=CLA_DEBUG=1 --define=_DEBUG --define=_FLASH --define=F28x_DEVICE --define=CPU1 --define=LARGE_MODEL --define=debug -g --float_operations_allowed=32 --diag_suppress=10063 --diag_suppress=173 --diag_warning=225 --diag_wrap=off --display_error_number --quiet --abi=eabi -k --asm_listing --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/FLASH/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --opt_for_speed=5 --fp_mode=relaxed --fp_reassoc=on --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/device" --include_path="C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/CLAmath" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/power_measurement" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/utilities" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/sfra" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL" --include_path="C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/solutions/tidm_1000/f2837x/drivers/include" --include_path="D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include" --define=CLA_DEBUG=1 --define=_DEBUG --define=_FLASH --define=F28x_DEVICE --define=CPU1 --define=LARGE_MODEL --define=debug -g --float_operations_allowed=32 --diag_suppress=10063 --diag_suppress=173 --diag_warning=225 --diag_wrap=off --display_error_number --quiet --abi=eabi -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/FLASH/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.cla $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --opt_for_speed=5 --fp_mode=relaxed --fp_reassoc=on --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/device" --include_path="C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/c2000ware/driverlib/f2837xd/driverlib" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/CLAmath" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/power_measurement" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/utilities" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/sfra" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/DCL" --include_path="C:/ti/C2000Ware_DigitalPower_SDK_26_01_00_00/solutions/tidm_1000/f2837x/drivers/include" --include_path="D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include" --define=CLA_DEBUG=1 --define=_DEBUG --define=_FLASH --define=F28x_DEVICE --define=CPU1 --define=LARGE_MODEL --define=debug -g --float_operations_allowed=32 --diag_suppress=10063 --diag_suppress=173 --diag_warning=225 --diag_wrap=off --display_error_number --quiet --abi=eabi -k --asm_listing --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/FLASH/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


