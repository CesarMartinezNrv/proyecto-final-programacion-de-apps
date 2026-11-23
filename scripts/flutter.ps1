# Invoca la herramienta instalada; no modifica ni descarga el SDK.
param([Parameter(ValueFromRemainingArguments = $true)][string[]]$FlutterArguments)
$ErrorActionPreference = 'Stop'
$flutterExecutable = (Get-Command flutter -CommandType Application -ErrorAction Stop | Select-Object -First 1).Source
if ($IsWindows -and $flutterExecutable.EndsWith('.bat')) {
    $binDirectory = Split-Path -Parent $flutterExecutable
    $dartExecutable = Join-Path $binDirectory 'cache/dart-sdk/bin/dart.exe'
    $toolSnapshot = Join-Path $binDirectory 'cache/flutter_tools.snapshot'
    if ((Test-Path -LiteralPath $dartExecutable) -and (Test-Path -LiteralPath $toolSnapshot)) {
        & $dartExecutable $toolSnapshot @FlutterArguments
        exit $LASTEXITCODE
    }
}
& $flutterExecutable @FlutterArguments
exit $LASTEXITCODE
