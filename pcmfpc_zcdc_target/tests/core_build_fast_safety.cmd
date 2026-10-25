@echo off
call "D:\VisualStudio\Microsoft Visual_Studio2022BuildTools\VC\Auxiliary\Build\vcvars64.bat" >nul
if errorlevel 1 exit /b 1
cd /d "%~dp0"
cl /nologo /TC /W4 /O2 /fp:precise /Fe:core_fast_safety.exe core_fast_safety.c ..\vienna_pcmfpc_fast.c ..\vienna_pcmfpc_zcdc.c
if errorlevel 1 exit /b 1
core_fast_safety.exe >core_fast_safety_results.txt
if errorlevel 1 exit /b 1
exit /b 0
