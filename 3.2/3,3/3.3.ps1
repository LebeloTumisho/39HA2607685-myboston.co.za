Clear-Host

Write-Host @"
Git Branches
============

						 feature-login
						/      
main -----------------o--------o---------
					   \      /
						\    /
						 o--o
					   bugfix

Branches allow different lines of development to exist in the same
repository. The main branch contains the stable project, while feature and
bug-fix branches contain work that is still being developed or tested.
"@

Write-Host @"
1. What is a branch?
--------------------
A branch is a separate line of development in a Git repository. It is a
movable pointer to a sequence of commits. The default branch is often called
main. Developers can create another branch from main, make changes, and
commit them without changing the stable main branch.

2. Why branches are useful
--------------------------
- Developers can work on features independently.
- Teams can fix bugs without interrupting other development work.
- Changes can be reviewed and tested before they are merged into main.
- Several developers can work on different tasks at the same time.
- Incomplete work can remain separate from the stable version.
- Branches make it easier to experiment and return to an earlier version.

3. Example workflow
-------------------
Create and switch to a feature branch:

	git switch -c feature-login

Make changes, stage them, and create a commit:

	git add login.js
	git commit -m "Add login feature"

Switch back to the main branch:

	git switch main

Merge the completed feature into main after review and testing:

	git merge feature-login

Conclusion
----------
Branches help teams organise work, reduce conflicts, protect the stable
version of a project, and safely combine completed changes.
"@

Write-Host "Useful commands:"
Write-Host '  git branch                 # List local branches'
Write-Host '  git switch -c feature-name # Create and switch to a new branch'
Write-Host '  git switch main            # Switch to the main branch'
Write-Host '  git merge feature-name     # Merge a branch into the current branch'
