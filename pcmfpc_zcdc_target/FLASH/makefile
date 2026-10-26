################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS

GEN_OPTS__FLAG := --cmd_file="syscfg/board.opt" --cmd_file="syscfg/c2000ware_libraries.opt" 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./DCL_PI_C4.obj" \
"./DCL_PI_L2.obj" \
"./syscfg/board.obj" \
"./syscfg/c2000ware_libraries.obj" \
"./sfra_gui_scicomms_driverlib.obj" \
"./vienna.obj" \
"./vienna_clatask.obj" \
"./vienna_grid_sync.obj" \
"./vienna_hal.obj" \
"./vienna_main.obj" \
"./vienna_pcmfpc_fast.obj" \
"./vienna_pcmfpc_observer.obj" \
"./vienna_pcmfpc_runtime.obj" \
"./vienna_pcmfpc_zcdc.obj" \
"./device/F2837xD_CodeStartBranch.obj" \
"./device/device.obj" \
"../f2837xd_flash_cpu1_lnk.cmd" \
"../device/driverlib/driverlib_eabi.lib" \
"../libraries/CLAmath/cla1_math_library_fpu32_eabi.lib" \
"../libraries/FPUfastRTS/rts2800_fpu32_fast_supplement_eabi.lib" \
"../libraries/sfra/sfra_f32_tmu_eabi.lib" \
$(GEN_CMDS__FLAG) \
-ldriverlib_eabi.lib \
-lsfra_f32_tmu_eabi.lib \
-lcla1_math_library_fpu32_eabi.lib \
-lrts2800_fpu32_fast_supplement_eabi.lib \
-llibc.a \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include device/subdir_vars.mk
-include device/driverlib/subdir_vars.mk
-include libraries/CLAmath/subdir_vars.mk
-include libraries/FPUfastRTS/subdir_vars.mk
-include libraries/sfra/subdir_vars.mk
-include subdir_rules.mk
-include device/subdir_rules.mk
-include device/driverlib/subdir_rules.mk
-include libraries/CLAmath/subdir_rules.mk
-include libraries/FPUfastRTS/subdir_rules.mk
-include libraries/sfra/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
vienna_pcmfpc_zcdc_F2837x.out 

EXE_OUTPUTS__QUOTED += \
"vienna_pcmfpc_zcdc_F2837x.out" 


# All Target
all: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "vienna_pcmfpc_zcdc_F2837x.out"

# Tool invocations
vienna_pcmfpc_zcdc_F2837x.out: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: C2000 Linker'
	"D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --opt_for_speed=5 --fp_mode=relaxed --fp_reassoc=on --define=CLA_DEBUG=1 --define=_DEBUG --define=_FLASH --define=F28x_DEVICE --define=CPU1 --define=LARGE_MODEL --define=debug -g --float_operations_allowed=32 --diag_suppress=10063 --diag_suppress=173 --diag_warning=225 --diag_wrap=off --display_error_number --quiet --abi=eabi -k --asm_listing -z -m"vienna_pcmfpc_zcdc_F2837x.map" --heap_size=0x200 --stack_size=0x380 --warn_sections -i"D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/lib" -i"D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/sfra" -i"D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/CLAmath" -i"D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/libraries/FPUfastRTS" -i"D:/GraduateStudentProject/Vienna_Rectifier/Vienna_Project/Vienna_MPC/pfc3phvienna_F2837x/pcmfpc_zcdc_target/device/driverlib" -i"D:/CCS12/CCS12.3.0.00005_win64/ccs1230/ccs/tools/compiler/ti-cgt-c2000_25.11.1.LTS/include" --reread_libs --diag_wrap=off --display_error_number --xml_link_info="vienna_pcmfpc_zcdc_F2837x_linkInfo.xml" --entry_point=code_start --rom_model -o "vienna_pcmfpc_zcdc_F2837x.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '
	@$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(GEN_MISC_FILES__QUOTED)$(GEN_FILES__QUOTED)$(EXE_OUTPUTS__QUOTED)
	-$(RM) "DCL_PI_C4.lst" "DCL_PI_L2.lst" "syscfg/board.lst" "syscfg/c2000ware_libraries.lst" "sfra_gui_scicomms_driverlib.lst" "vienna.lst" "vienna_clatask.lst" "vienna_grid_sync.lst" "vienna_hal.lst" "vienna_main.lst" "vienna_pcmfpc_fast.lst" "vienna_pcmfpc_observer.lst" "vienna_pcmfpc_runtime.lst" "vienna_pcmfpc_zcdc.lst" "device/F2837xD_CodeStartBranch.lst" "device/device.lst" 
	-$(RM) "DCL_PI_C4.obj" "DCL_PI_L2.obj" "syscfg\board.obj" "syscfg\c2000ware_libraries.obj" "sfra_gui_scicomms_driverlib.obj" "vienna.obj" "vienna_clatask.obj" "vienna_grid_sync.obj" "vienna_hal.obj" "vienna_main.obj" "vienna_pcmfpc_fast.obj" "vienna_pcmfpc_observer.obj" "vienna_pcmfpc_runtime.obj" "vienna_pcmfpc_zcdc.obj" "device\F2837xD_CodeStartBranch.obj" "device\device.obj" 
	-$(RM) "syscfg\board.d" "syscfg\c2000ware_libraries.d" "sfra_gui_scicomms_driverlib.d" "vienna.d" "vienna_grid_sync.d" "vienna_hal.d" "vienna_main.d" "vienna_pcmfpc_fast.d" "vienna_pcmfpc_observer.d" "vienna_pcmfpc_runtime.d" "vienna_pcmfpc_zcdc.d" "device\device.d" 
	-$(RM) "DCL_PI_C4.asm" "DCL_PI_L2.asm" "syscfg/board.asm" "syscfg/c2000ware_libraries.asm" "sfra_gui_scicomms_driverlib.asm" "vienna.asm" "vienna_clatask.asm" "vienna_grid_sync.asm" "vienna_hal.asm" "vienna_main.asm" "vienna_pcmfpc_fast.asm" "vienna_pcmfpc_observer.asm" "vienna_pcmfpc_runtime.asm" "vienna_pcmfpc_zcdc.asm" "device/F2837xD_CodeStartBranch.asm" "device/device.asm" 
	-$(RM) "vienna_clatask.d" 
	-$(RM) "DCL_PI_C4.d" "DCL_PI_L2.d" "device\F2837xD_CodeStartBranch.d" 
	-$(RMDIR) $(GEN_MISC_DIRS__QUOTED)
	-@echo 'Finished clean'
	-@echo ' '

post-build:
	-$(POWERSUITE_POSTSTEP)
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

