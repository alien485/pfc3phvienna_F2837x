@echo off
call "D:\VisualStudio\Microsoft Visual_Studio2022BuildTools\VC\Auxiliary\Build\vcvars64.bat" >nul
if errorlevel 1 exit /b 1
set "TMP=D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\tests\observer_build"
set "TEMP=D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target\tests\observer_build"
cd /d "D:\GraduateStudentProject\Vienna_Rectifier\Vienna_Project\Vienna_MPC\pfc3phvienna_F2837x\pcmfpc_zcdc_target"
"D:\MATLAB2023b\install\toolbox\sldrt\clang\win64\clang.exe" -std=c99 -O2 -Wall -Wextra vienna_grid_sync.c tests\pll_test.c -o tests\observer_build\pll_test.exe
if errorlevel 1 exit /b 1
tests\observer_build\pll_test.exe
if errorlevel 1 exit /b 1
"D:\MATLAB2023b\install\toolbox\sldrt\clang\win64\clang.exe" -std=c99 -O2 -Wall -Wextra vienna_pcmfpc_zcdc.c vienna_pcmfpc_fast.c vienna_pcmfpc_observer.c tests\observer_test.c -o tests\observer_build\observer_test.exe
if errorlevel 1 exit /b 1
tests\observer_build\observer_test.exe
if errorlevel 1 exit /b 1
