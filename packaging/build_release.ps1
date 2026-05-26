$ErrorActionPreference = "Stop"

Push-Location (Join-Path $PSScriptRoot "..")
try {
    pixi run -e location-tracker python -m PyInstaller packaging/TrackerGUI.spec --noconfirm --clean
    Write-Host ""
    Write-Host "[OK] Release build created at: dist\TrackerGUI\TrackerGUI.exe"
}
finally {
    Pop-Location
}
