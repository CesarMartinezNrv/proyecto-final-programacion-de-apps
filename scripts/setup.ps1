$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
Push-Location -LiteralPath $projectRoot
try {
    $actualRoot = git rev-parse --show-toplevel
    if ($LASTEXITCODE -ne 0) { throw 'Primero clona o inicializa este repositorio.' }
    if ([IO.Path]::GetFullPath($actualRoot) -ne [IO.Path]::GetFullPath($projectRoot)) {
        throw 'Esta carpeta pertenece a otro repositorio. No se modificó su configuración.'
    }
    git config --local core.hooksPath .githooks
    if ($LASTEXITCODE -ne 0) { throw 'No se pudieron instalar los hooks.' }
    Write-Host 'Hook pre-push instalado solo en este repositorio.'
    Write-Host 'Comprueba: pwsh -File scripts/check.ps1 -Build'
} finally { Pop-Location }
