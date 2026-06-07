$apps = @(

```
"Mozilla.Firefox",
"Google.Chrome",

"Vial.Vial",

"TeamViewer.TeamViewer",

"7zip.7zip",

"VideoLAN.VLC",

"Stremio.Stremio",

"Spotify.Spotify",

"WhatsApp.WhatsApp",

"Telegram.TelegramDesktop",

"Discord.Discord",

"Obsidian.Obsidian",

"Git.Git",

"GitHub.GitHubDesktop",

"Postman.Postman",

"Microsoft.WindowsTerminal",

"Microsoft.VisualStudioCode",

"SublimeHQ.SublimeText",

"CoreyButler.NVMforWindows"
```

)

foreach ($app in $apps) {

```
Write-Host ""
Write-Host "Instalando $app"

winget install `
    --id $app `
    --exact `
    --accept-source-agreements `
    --accept-package-agreements
```

}

Write-Host ""
Write-Host "Instalacao finalizada."
