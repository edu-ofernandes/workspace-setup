Write-Host ""
Write-Host "=== Workstation Bootstrap ===" -ForegroundColor Green
Write-Host ""

.\create-users.ps1

.\configure-windows.ps1

.\install-apps.ps1

.\configure-git.ps1

Write-Host ""
Write-Host "Bootstrap finalizado." -ForegroundColor Green
Write-Host "Reinicie o computador."
