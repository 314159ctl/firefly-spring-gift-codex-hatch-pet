$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $PSScriptRoot
$sourcePet = Join-Path $projectRoot "pet"
$petId = "firefly-spring-gift"
$targetPet = Join-Path $env:USERPROFILE ".codex\pets\$petId"
$backupRoot = Join-Path $env:USERPROFILE ".codex\backups\$petId"

if (-not (Test-Path (Join-Path $sourcePet "pet.json"))) {
    throw "Missing pet/pet.json. Run this script from the repository root."
}
if (-not (Test-Path (Join-Path $sourcePet "spritesheet.webp"))) {
    throw "Missing pet/spritesheet.webp. Run this script from the repository root."
}

New-Item -ItemType Directory -Force -Path $targetPet | Out-Null

if (Test-Path (Join-Path $targetPet "pet.json")) {
    $stamp = Get-Date -Format "yyyyMMdd-HHmmss"
    $backupDir = Join-Path $backupRoot $stamp
    New-Item -ItemType Directory -Force -Path $backupDir | Out-Null
    Copy-Item -LiteralPath (Join-Path $targetPet "pet.json") -Destination $backupDir -Force
    if (Test-Path (Join-Path $targetPet "spritesheet.webp")) {
        Copy-Item -LiteralPath (Join-Path $targetPet "spritesheet.webp") -Destination $backupDir -Force
    }
    Write-Host "Backed up the previous version to: $backupDir"
}

Copy-Item -LiteralPath (Join-Path $sourcePet "pet.json") -Destination $targetPet -Force
Copy-Item -LiteralPath (Join-Path $sourcePet "spritesheet.webp") -Destination $targetPet -Force

Write-Host "Installed: Spring Gift - Firefly"
Write-Host "Install directory: $targetPet"
Write-Host "Fully quit and reopen Codex, then choose the pet in Settings -> Pets."
