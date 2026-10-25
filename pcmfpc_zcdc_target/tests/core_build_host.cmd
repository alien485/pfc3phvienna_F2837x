@echo off
call "D:\VisualStudio\Microsoft Visual_Studio2022BuildTools\VC\Auxiliary\Build\vcvars64.bat" >nul
if errorlevel 1 exit /b 1
cd /d "%~dp0"
cl /nologo /TC /W4 /O2 /fp:precise /c /Fo:core_math_float.obj ..\vienna_pcmfpc_zcdc.c
if errorlevel 1 exit /b 1
cl /nologo /TC /W4 /O2 /fp:precise /c /Fo:core_unit_float.obj core_unit.c
if errorlevel 1 exit /b 1
cl /nologo /Fe:core_unit_float.exe core_unit_float.obj core_math_float.obj
if errorlevel 1 exit /b 1
core_unit_float.exe >core_unit_float_results.txt
if errorlevel 1 exit /b 1
cl /nologo /TC /W4 /O2 /fp:precise /DPC_REAL_TYPE=double /c /Fo:core_math_double.obj ..\vienna_pcmfpc_zcdc.c
if errorlevel 1 exit /b 1
cl /nologo /TC /W4 /O2 /fp:precise /DPC_REAL_TYPE=double /c /Fo:core_unit_double.obj core_unit.c
if errorlevel 1 exit /b 1
cl /nologo /Fe:core_unit_double.exe core_unit_double.obj core_math_double.obj
if errorlevel 1 exit /b 1
core_unit_double.exe >core_unit_double_results.txt
if errorlevel 1 exit /b 1
exit /b 0
