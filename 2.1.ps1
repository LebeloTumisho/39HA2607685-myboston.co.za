Git File Management Process

1. Create or modify a file in the Git repository.

2. Check the repository status:
   git status

3. Add a specific file to the staging area:
   git add filename

   To stage all changed files:
   git add .

4. Save the staged changes in a commit:
   git commit -m "Describe the changes"

5. Upload the commit to the remote repository:
   git push

The command used to add files to Git's staging area is:

   git addparam(
    [Parameter(Mandatory = $true)]
    [string]$FileName,

    [Parameter(Mandatory = $true)]
    [string]$Content
)

$ErrorActionPreference = "Stop"

Set-Content -Path $FileName -Value $Content -Encoding UTF8

git status
git add -- $FileName

Write-Host "`nStaged changes:"
git diff --cached --stat

$commit = Read-Host "Commit the changes? (y/n)"
if ($commit -eq "y") {
    git commit -m "Create or modify $FileName"
    Write-Host "Changes committed successfully."
}