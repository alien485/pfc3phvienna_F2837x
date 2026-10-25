@echo off
call "D:\VisualStudio\Microsoft Visual_Studio2022BuildTools\VC\Auxiliary\Build\vcvars64.bat" >nul
if errorlevel 1 exit /b 1
cd /d "%~dp0"
cl /nologo /TC /W4 /O2 /fp:precise /c /Fo:core_oracle_math_float.obj ..\vienna_pcmfpc_zcdc.c
if errorlevel 1 exit /b 1
cl /nologo /TC /W4 /O2 /fp:precise /c /Fo:core_oracle_bridge_float.obj oracle_bridge.c
if errorlevel 1 exit /b 1
cl /nologo /LD /Fe:core_oracle_float.dll core_oracle_math_float.obj core_oracle_bridge_float.obj
if errorlevel 1 exit /b 1
cl /nologo /TC /W4 /O2 /fp:precise /DPC_REAL_TYPE=double /c /Fo:core_oracle_math_double.obj ..\vienna_pcmfpc_zcdc.c
if errorlevel 1 exit /b 1
cl /nologo /TC /W4 /O2 /fp:precise /DPC_REAL_TYPE=double /c /Fo:core_oracle_bridge_double.obj oracle_bridge.c
if errorlevel 1 exit /b 1
cl /nologo /LD /Fe:core_oracle_double.dll core_oracle_math_double.obj core_oracle_bridge_double.obj
if errorlevel 1 exit /b 1
exit /b 0
