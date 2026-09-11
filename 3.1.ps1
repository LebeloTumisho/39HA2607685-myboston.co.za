Clear-Host

Write-Host @"
Git Architecture
=================

Working Directory
	  |
	  | git add login.js
	  v
Staging Area
	  |
	  | git commit -m "Fix login error"
	  v
Local Repository
"@

Write-Host @"
1. Working Directory
--------------------
This is the area where the developer works on project files. It contains
the files that can be created, edited, or deleted. For example, a developer
can edit login.js to fix a login problem. Until the change is staged, it
exists only in the working directory.

Main function: create and modify project files.

2. Staging Area
--------------
This is the preparation area for the next commit. The developer selects
which changes should be included by using git add, for example:

	git add login.js

Main function: select and review changes before they are committed. This
allows a developer to commit one file even when several files were changed.

3. Repository
------------
This is where Git stores the committed history of the project. When the
staged changes are ready, the developer commits them, for example:

	git commit -m "Fix login error"

Main function: permanently record committed versions so earlier versions
can be viewed or restored when necessary.

Summary
-------
The developer changes files in the working directory, selects changes in
the staging area, and saves them in the repository with git commit.
"@

Write-Host "Useful commands:"
Write-Host "  git status       # Show changes in the working directory and staging area"
Write-Host "  git add login.js # Move login.js changes to the staging area"
Write-Host "  git diff --cached # Review staged changes"
Write-Host '  git commit -m "Fix login error" # Save staged changes in the repository'
