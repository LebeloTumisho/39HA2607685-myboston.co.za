Clear-Host

Write-Host @"
Assessing Code Quality and Impact with Git
==========================================

Developers can use Git to review what changed, understand why it changed,
and estimate which parts of an application may be affected.
"@

Write-Host @"
1. Using git diff
-----------------
Command:
	git diff

The git diff command compares versions of files and shows lines that were
added, removed, or modified. A team can use it before committing or merging
to check whether the change is correct, necessary, and focused.

A reviewer can use git diff to:
- Find syntax mistakes, accidental deletions, or incomplete code.
- Check whether the implementation matches the intended task.
- Notice unrelated changes that could increase risk.
- Identify other files or features that may be affected.

Useful variations:
	git diff --staged       # Review changes prepared for the next commit
	git diff main...feature # Compare a feature branch with main

2. Using git blame
------------------
Command:
	git blame filename

The git blame command shows who last changed each line of a file and which
commit made the change. It does not assign fault. Instead, it provides a
starting point for understanding the history of a specific piece of code.

When a problem is found, the team can use git blame to identify the relevant
commit, then inspect that commit with:
	git show COMMIT_ID

This can explain why the line was introduced and help the team contact the
developer who has useful context about the change.

Review workflow
--------------
1. Run git diff to inspect the actual changes.
2. Check whether the changed code is correct and whether its impact is
   limited to the intended feature.
3. Run tests and review the affected parts of the application.
4. If an older line causes a problem, run git blame filename.
5. Use git show with the commit ID to investigate the original change.

Conclusion
----------
git diff helps a team review what changed, while git blame helps explain the
history of a particular line. Together they support code-quality reviews,
problem investigation, and a better understanding of change impact.
"@

Write-Host "Useful commands:"
Write-Host '  git diff                 # Show unstaged changes'
Write-Host '  git diff --staged        # Show staged changes'
Write-Host '  git blame filename       # Show line history and authorship'
Write-Host '  git show COMMIT_ID       # Show a commit and its changes'
