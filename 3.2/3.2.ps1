Clear-Host

Write-Host @"
Local and Remote Git Repositories
=================================

Local Repository  ---- git push ---->  Remote Repository
Local Repository  <--- git pull -----  Remote Repository
												 ^
												 |
								 git fetch downloads
								 changes without merging
"@

Write-Host @"
1. Local Repository
------------------
A local repository is a Git repository stored on the developer's computer.
It contains the project files and commit history. Developers can edit files,
create commits, and inspect the project without an internet connection.

2. Remote Repository
-------------------
A remote repository is a copy of the repository stored on another server or
online platform, such as GitHub. It allows developers to back up, share, and
collaborate on the project.

Main difference: the local repository is stored on the developer's computer,
while the remote repository is stored online or on another server.

3. How Data Moves Between Them
------------------------------
git push
	Sends commits from the local repository to the remote repository.

git pull
	Downloads changes from the remote repository and updates the local
	repository. It normally fetches and merges the remote changes.

git fetch
	Downloads information about new commits from the remote repository without
	automatically merging those changes into the current local branch.

Example workflow
----------------
1. Edit files and create a commit in the local repository.
2. Run git push to share the commit with the remote repository.
3. Run git pull to download and combine changes made by other developers.
4. Run git fetch when you want to inspect remote changes before merging them.

Conclusion
----------
Developers usually work in the local repository and use the remote repository
to share changes, collaborate, and keep a backup of the project history.
"@

Write-Host "Useful commands:"
Write-Host '  git push origin main   # Send local commits to the remote repository'
Write-Host '  git pull origin main   # Download and merge remote changes'
Write-Host '  git fetch origin       # Download remote changes without merging'
