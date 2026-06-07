Write-Host "Configurando Windows..."

# Mostrar extensoes

Set-ItemProperty `    -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"`
-Name HideFileExt `
-Value 0

# Mostrar arquivos ocultos

Set-ItemProperty `    -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"`
-Name Hidden `
-Value 1

# Abrir Explorer em Este Computador

Set-ItemProperty `    -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"`
-Name LaunchTo `
-Value 1

# Dark Mode

New-Item `    -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize"`
-Force | Out-Null

Set-ItemProperty `    -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize"`
-Name AppsUseLightTheme `
-Value 0

Set-ItemProperty `    -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize"`
-Name SystemUsesLightTheme `
-Value 0

Write-Host "Configuracao concluida."
