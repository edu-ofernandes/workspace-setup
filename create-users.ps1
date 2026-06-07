Write-Host "Criando usuarios..."

$password = ConvertTo-SecureString "123456" -AsPlainText -Force

if (-not (Get-LocalUser -Name "edu-master" -ErrorAction SilentlyContinue)) {

```
New-LocalUser `
    -Name "edu-master" `
    -Password $password `
    -PasswordNeverExpires

Add-LocalGroupMember `
    -Group "Administrators" `
    -Member "edu-master"
```

}

if (-not (Get-LocalUser -Name "edu-dev" -ErrorAction SilentlyContinue)) {

```
New-LocalUser `
    -Name "edu-dev" `
    -Password $password `
    -PasswordNeverExpires
```

}

if (-not (Get-LocalUser -Name "edu-play" -ErrorAction SilentlyContinue)) {

```
New-LocalUser `
    -Name "edu-play" `
    -Password $password `
    -PasswordNeverExpires
```

}

Write-Host "Usuarios criados."
