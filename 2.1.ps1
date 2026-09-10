param(
    [string]$FileName = "example.txt",
    [string]$Content = "This file was created or modified using Git."
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path -Path ".git")) {
    throw "This is not a Git repository."
}

Set-Content -Path $FileName -Value $Content -Encoding UTF8
git add -- $FileName

Write-Host "`nStaged changes:"
git diff --cached --stat

git commit -m "Create or modify $FileName"
Write-Host "File committed successfully."