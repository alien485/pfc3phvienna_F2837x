@echo off
call "D:\VisualStudio\Microsoft Visual_Studio2022BuildTools\VC\Auxiliary\Build\vcvars64.bat" >nul
if errorlevel 1 exit /b 1
cd /d "%~dp0"
cl /nologo /TC /W4 /O2 /fp:precise /c /Fo:core_runtime_test.obj core_runtime_test.c
if errorlevel 1 exit /b 1
cl /nologo /TC /W4 /O2 /fp:precise /I. /FIcore_runtime_stub.h /c /Fo:core_runtime_real.obj ..\vienna_pcmfpc_runtime.c
if errorlevel 1 exit /b 1
cl /nologo /TC /W4 /O2 /fp:precise /c /Fo:core_runtime_math.obj ..\vienna_pcmfpc_zcdc.c
if errorlevel 1 exit /b 1
cl /nologo /TC /W4 /O2 /fp:precise /c /Fo:core_runtime_fast.obj ..\vienna_pcmfpc_fast.c
if errorlevel 1 exit /b 1
cl /nologo /TC /W4 /O2 /fp:precise /c /Fo:core_runtime_grid.obj ..\vienna_grid_sync.c
if errorlevel 1 exit /b 1
cl /nologo /TC /W4 /O2 /fp:precise /c /Fo:core_runtime_observer.obj ..\vienna_pcmfpc_observer.c
if errorlevel 1 exit /b 1
cl /nologo /Fe:core_runtime_test.exe core_runtime_test.obj core_runtime_real.obj core_runtime_math.obj core_runtime_fast.obj core_runtime_grid.obj core_runtime_observer.obj
if errorlevel 1 exit /b 1
core_runtime_test.exe >core_runtime_results.txt
if errorlevel 1 exit /b 1
exit /b 0
