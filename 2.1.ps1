param(
    [string]$FileName = "example.txt",
    [string]$Content = "This file was created or modified using Git."
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path ".git")) {
    throw "Run this script from the Git repository folder."
}

Set-Content -Path $FileName -Value $Content -Encoding UTF8

git status
git add -- $FileName

Write-Host "`nStaged changes:"
git diff --cached --stat

$commit = Read-Host "Commit these changes? (y/n)"
if ($commit -eq "y") {
    git commit -m "Create or modify $FileName"

    $push = Read-Host "Push the commit to the remote repository? (y/n)"
    if ($push -eq "y") {
        git push
    }
}