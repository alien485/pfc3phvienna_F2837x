param(
    [string]$Compiler = 'D:\MATLAB2023b\install\toolbox\sldrt\clang\win64\clang.exe',
    [string]$VcEnvironment = 'D:\VisualStudio\Microsoft Visual_Studio2022BuildTools\VC\Auxiliary\Build\vcvars64.bat'
)
$ErrorActionPreference = 'Stop'
$projectPath = Split-Path -Parent $PSScriptRoot
$buildPath = Join-Path $PSScriptRoot 'observer_build'
New-Item -ItemType Directory -Force -Path $buildPath | Out-Null
$commandFile = Join-Path $buildPath 'run_observer_tests.cmd'
$commands = @(
    '@echo off',
    ('call "{0}" >nul' -f $VcEnvironment),
    'if errorlevel 1 exit /b 1',
    ('set "TMP={0}"' -f $buildPath),
    ('set "TEMP={0}"' -f $buildPath),
    ('cd /d "{0}"' -f $projectPath),
    ('"{0}" -std=c99 -O2 -Wall -Wextra vienna_grid_sync.c tests\pll_test.c -o tests\observer_build\pll_test.exe' -f $Compiler),
    'if errorlevel 1 exit /b 1',
    'tests\observer_build\pll_test.exe',
    'if errorlevel 1 exit /b 1',
    ('"{0}" -std=c99 -O2 -Wall -Wextra vienna_pcmfpc_zcdc.c vienna_pcmfpc_fast.c vienna_pcmfpc_observer.c tests\observer_test.c -o tests\observer_build\observer_test.exe' -f $Compiler),
    'if errorlevel 1 exit /b 1',
    'tests\observer_build\observer_test.exe',
    'if errorlevel 1 exit /b 1'
)
[IO.File]::WriteAllLines($commandFile, $commands, [Text.Encoding]::ASCII)
$results = & cmd.exe /d /c $commandFile 2>&1
$exitCode = $LASTEXITCODE
$results | Set-Content -Encoding UTF8 -LiteralPath (Join-Path $PSScriptRoot 'observer_results.txt')
$results | Write-Output
if ($exitCode -ne 0) { throw "Observer/PLL host validation failed with exit code $exitCode" }
