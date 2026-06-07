if (-not (Get-Command git -ErrorAction SilentlyContinue)) {

```
Write-Host "Git ainda nao instalado."
return
```

}

git config --global user.name "Eduardo Oliveira Fernandes"

git config --global user.email "[email@email.com](mailto:email@email.com)"

git config --global alias.s "status -s"

git config --global alias.ck "checkout"

git config --global alias.mg "merge"

git config --global alias.ckb "checkout -b"

git config --global alias.psb "push origin"

git config --global alias.plb "pull origin"

git config --global alias.dbl "branch -d"

git config --global alias.dbr "push origin -d"

git config --global alias.ba "branch -a"

Write-Host "Git configurado."
