[CmdletBinding()]
param(
    [string]$CcsRoot = 'D:\CCS12\CCS12.3.0.00005_win64\ccs1230\ccs',
    [string]$WorkspaceDirectory = '',
    [switch]$SkipImport,
    [switch]$ImportOnly,
    [ValidateRange(15, 900)]
    [int]$PhaseTimeoutSeconds = 180
)

$ErrorActionPreference = 'Stop'
$targetProject = [IO.Path]::GetFullPath($PSScriptRoot)
$workspaceRoot = [IO.Path]::GetFullPath((Join-Path $targetProject '..\..\..\..'))
$evidenceRoot = Join-Path $workspaceRoot 'output\ti_pcmfpc_zcdc_port'
$checkoutName = Split-Path -Leaf (Split-Path -Parent $targetProject)
if ([string]::IsNullOrWhiteSpace($WorkspaceDirectory)) {
    # Each checkout needs its own CCS project registry. Reusing the former
    # workspace can silently address a project imported from another path.
    $ccsWorkspace = Join-Path $evidenceRoot ('ccs_headless_' + $checkoutName)
} else {
    $ccsWorkspace = [IO.Path]::GetFullPath($WorkspaceDirectory)
}
$launcher = Join-Path $CcsRoot 'eclipse\eclipsec.exe'
$jre = Join-Path $CcsRoot 'eclipse\jre\bin\java.exe'
$configuration = 'FLASH'
$expectedName = 'vienna_pcmfpc_zcdc_F2837x'

if (-not (Test-Path -LiteralPath $launcher -PathType Leaf)) {
    throw "CCS launcher not found: $launcher"
}
if (-not (Test-Path -LiteralPath $jre -PathType Leaf)) {
    throw "CCS Java runtime not found: $jre"
}
$projectFile = Join-Path $targetProject '.project'
if (-not (Test-Path -LiteralPath $projectFile -PathType Leaf)) {
    throw "Target CCS project not found: $projectFile"
}
[xml]$projectXml = Get-Content -LiteralPath $projectFile -Raw
$projectName = [string]$projectXml.projectDescription.name
if ($projectName -ne $expectedName) {
    throw "Refusing to build unexpected project '$projectName'; expected '$expectedName'."
}
$cleanupGuard = Join-Path $targetProject 'makefile.init'
if (-not (Test-Path -LiteralPath $cleanupGuard -PathType Leaf)) {
    throw 'Missing makefile.init cleanup guard; refusing to launch CCS.'
}
$guardText = [IO.File]::ReadAllText($cleanupGuard)
if ($guardText -notmatch 'override RM\s*=' -or $guardText -notmatch 'CLEAN_DISABLED_BY_POLICY') {
    throw 'Cleanup guard is incomplete; refusing to launch CCS.'
}
[xml]$buildConfiguration = Get-Content -LiteralPath (Join-Path $targetProject '.cproject') -Raw
foreach ($builder in $buildConfiguration.SelectNodes('//builder')) {
    if ($builder.GetAttribute('enableCleanBuild') -ne 'false' -or
        $builder.GetAttribute('cleanBuildTarget') -ne 'CLEAN_DISABLED_BY_POLICY') {
        throw 'CCS cleanup is not disabled in .cproject; refusing to launch CCS.'
    }
}

# A successful C build does not validate a debugger target configuration.
# Resolve its installed database references without opening a debug session.
$targetDatabase = Join-Path $CcsRoot 'ccs_base\common\targetdb'
$targetConfiguration = Join-Path $targetProject 'targetConfigs\TMS320F28379D.ccxml'
[xml]$targetConfigurationXml = Get-Content -LiteralPath $targetConfiguration -Raw
foreach ($targetReference in $targetConfigurationXml.SelectNodes('//instance[@href]')) {
    $installedReference = Join-Path $targetDatabase ([string]$targetReference.href)
    if (-not (Test-Path -LiteralPath $installedReference -PathType Leaf)) {
        throw "Target configuration refers to a missing CCS database file: $installedReference"
    }
    if ([IO.Path]::GetFileName([string]$targetReference.href) -ne [string]$targetReference.xml) {
        throw "Target configuration href/xml names disagree: $($targetReference.href)"
    }
}
[xml]$deviceDefinition = Get-Content -LiteralPath (Join-Path $targetDatabase 'devices\f28379d.xml') -Raw
if ([string]$deviceDefinition.device.partnum -ne 'TMS320F28379D' -or
    [string]$targetConfigurationXml.SelectSingleNode('//platform/device').partnum -ne 'TMS320F28379D') {
    throw 'Target configuration and installed device definition must both select TMS320F28379D.'
}
Write-Output 'F28379D target configuration references verified; no debugger session opened.'

# Only create directories. No clean, rebuild, file removal, checkout or hardware action.
[void][IO.Directory]::CreateDirectory($evidenceRoot)
[void][IO.Directory]::CreateDirectory($ccsWorkspace)
# CCS 12 bundles EGit 6.1, whose automatic repository mapping fails on linked
# worktrees. GitHub Desktop manages Git; the compiler only needs project files.
$gitSettingsDirectory = Join-Path $ccsWorkspace '.metadata\.plugins\org.eclipse.core.runtime\.settings'
[void][IO.Directory]::CreateDirectory($gitSettingsDirectory)
$gitPreferences = Join-Path $gitSettingsDirectory 'org.eclipse.egit.core.prefs'
$gitPreferenceLines = @()
if (Test-Path -LiteralPath $gitPreferences -PathType Leaf) {
    $gitPreferenceLines = @([IO.File]::ReadAllLines($gitPreferences) |
        Where-Object { $_ -notmatch '^core_autoShareProjects=' })
}
if (-not ($gitPreferenceLines -match '^eclipse.preferences.version=')) {
    $gitPreferenceLines = @('eclipse.preferences.version=1') + $gitPreferenceLines
}
$gitPreferenceLines += 'core_autoShareProjects=false'
[IO.File]::WriteAllLines($gitPreferences, [string[]]$gitPreferenceLines,
    [Text.UTF8Encoding]::new($false))

function Invoke-CcsHeadless {
    param([string]$Phase, [string[]]$Arguments)
    $stdout = Join-Path $evidenceRoot ("ccs_" + $Phase + '.stdout.log')
    $stderr = Join-Path $evidenceRoot ("ccs_" + $Phase + '.stderr.log')
    $commandLog = Join-Path $evidenceRoot ("ccs_" + $Phase + '.command.txt')
    # Record the exact command and support ProcessStartInfo on Windows PowerShell too.
    $launchArguments = @('-vm', $jre, '-consoleLog') + $Arguments
    $escaped = @($launchArguments | ForEach-Object {
        if ($_ -match '[\r\n"]') { throw 'Invalid command argument.' }
        if ($_ -match '\s') { '"' + $_ + '"' } else { $_ }
    })
    ('"' + $launcher + '" ' + ($escaped -join ' ')) |
        Set-Content -LiteralPath $commandLog -Encoding UTF8
    Write-Output ("CCS " + $Phase + ": " + $commandLog)
    # Own the native process handle. Some PowerShell Start-Process PassThru
    # objects expose null ExitCode after asynchronous waits; null must never
    # be treated as an actual linker/build exit code.
    $startInfo = [Diagnostics.ProcessStartInfo]::new()
    $startInfo.FileName = $launcher
    $startInfo.WorkingDirectory = Split-Path -Parent $launcher
    $startInfo.UseShellExecute = $false
    $startInfo.CreateNoWindow = $true
    $startInfo.WindowStyle = [Diagnostics.ProcessWindowStyle]::Hidden
    $startInfo.RedirectStandardOutput = $true
    $startInfo.RedirectStandardError = $true
    $startInfo.Arguments = $escaped -join ' '
    $process = [Diagnostics.Process]::new()
    $process.StartInfo = $startInfo
    $stdoutStream = [IO.File]::Open($stdout, [IO.FileMode]::Create,
        [IO.FileAccess]::Write, [IO.FileShare]::ReadWrite)
    $stderrStream = [IO.File]::Open($stderr, [IO.FileMode]::Create,
        [IO.FileAccess]::Write, [IO.FileShare]::ReadWrite)
    $nativeExitCode = $null
    try {
        if (-not $process.Start()) { throw "Could not start CCS $Phase." }
        Write-Output ("Started headless CCS PID " + $process.Id)
        # Drain both pipes concurrently to avoid a full stdout/stderr pipe
        # deadlocking the child. Files remain readable while CCS is running.
        $stdoutCopy = $process.StandardOutput.BaseStream.CopyToAsync($stdoutStream)
        $stderrCopy = $process.StandardError.BaseStream.CopyToAsync($stderrStream)
        $watch = [Diagnostics.Stopwatch]::StartNew()
        while (-not $process.WaitForExit(1000)) {
            if ($watch.Elapsed.TotalSeconds -ge $PhaseTimeoutSeconds) {
                # Kill only the process tree created above, never a user's IDE.
                if ($PSVersionTable.PSEdition -eq 'Core') {
                    $process.Kill($true)
                } else {
                    # .NET Framework has no Kill(entireProcessTree) overload.
                    # taskkill targets only the still-owned headless process tree.
                    $stopInfo = [Diagnostics.ProcessStartInfo]::new()
                    $stopInfo.FileName = Join-Path $env:SystemRoot 'System32\taskkill.exe'
                    $stopInfo.Arguments = '/PID ' + $process.Id + ' /T /F'
                    $stopInfo.UseShellExecute = $false
                    $stopInfo.CreateNoWindow = $true
                    $stopProcess = [Diagnostics.Process]::Start($stopInfo)
                    $stopProcess.WaitForExit()
                    $stopProcess.Dispose()
                }
                $process.WaitForExit()
                throw "CCS $Phase timed out after $PhaseTimeoutSeconds seconds; see $stdout and $stderr."
            }
        }
        $process.WaitForExit()
        $process.Refresh()
        [void]$stdoutCopy.GetAwaiter().GetResult()
        [void]$stderrCopy.GetAwaiter().GetResult()
        $nativeExitCode = [int]$process.ExitCode
    } finally {
        $stdoutStream.Dispose()
        $stderrStream.Dispose()
        $process.Dispose()
    }
    if (Test-Path -LiteralPath $stdout) { Get-Content -LiteralPath $stdout }
    if (Test-Path -LiteralPath $stderr) { Get-Content -LiteralPath $stderr }
    if ($null -eq $nativeExitCode) {
        throw "CCS $Phase did not provide a native exit code. See $stdout and $stderr."
    }
    Write-Output ("CCS " + $Phase + " native exit code: " + $nativeExitCode)
    if ($nativeExitCode -ne 0) {
        throw "CCS $Phase failed with exit code $nativeExitCode. See $stdout and $stderr."
    }
}

if (-not $SkipImport) {
    Invoke-CcsHeadless -Phase 'import' -Arguments @(
        '-noSplash', '-data', $ccsWorkspace,
        '-application', 'com.ti.ccstudio.apps.projectImport',
        '-ccs.location', $targetProject
    )
}
if ($ImportOnly) { return }

Invoke-CcsHeadless -Phase 'incremental' -Arguments @(
    '-noSplash', '-data', $ccsWorkspace,
    '-application', 'com.ti.ccstudio.apps.projectBuild',
    '-ccs.projects', $projectName,
    '-ccs.configuration', $configuration,
    '-ccs.buildType', 'incremental',
    '-ccs.listProblems'
)

$outputFile = Join-Path $targetProject ("FLASH\" + $projectName + '.out')
$mapFile = Join-Path $targetProject ("FLASH\" + $projectName + '.map')
if (-not (Test-Path -LiteralPath $outputFile -PathType Leaf)) {
    throw "CCS returned success without the expected output: $outputFile"
}
if (-not (Test-Path -LiteralPath $mapFile -PathType Leaf)) {
    throw "Missing link map: $mapFile"
}
Get-Item -LiteralPath $outputFile, $mapFile |
    Select-Object FullName, Length, LastWriteTime
Write-Output 'Incremental build completed. This script never connects to or programs a target.'
