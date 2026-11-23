param([switch]$Build)
$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest
$projectRoot = Split-Path -Parent $PSScriptRoot
Push-Location -LiteralPath $projectRoot
try {
    function Invoke-Check {
        param([string]$Label, [scriptblock]$Command)
        Write-Host "`n$Label" -ForegroundColor Cyan
        & $Command
        if ($LASTEXITCODE -ne 0) { throw "$Label falló (código $LASTEXITCODE)." }
    }
    $runner = Join-Path $PSScriptRoot 'flutter.ps1'
    Invoke-Check 'Dependencias' { & $runner pub get --enforce-lockfile }
    Invoke-Check 'Formato' { dart format --output=none --set-exit-if-changed lib test }
    Invoke-Check 'Análisis' { & $runner analyze --fatal-infos }
    Invoke-Check 'Pruebas y cobertura' { & $runner test --coverage }
    if ($Build) { Invoke-Check 'Compilación web' { & $runner build web --release } }
    Write-Host "`nVerificación completa." -ForegroundColor Green
} finally { Pop-Location }
