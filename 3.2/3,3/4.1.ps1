Clear-Host

Write-Host @"
Evaluating Git Repository Activity Trends
=========================================

Git history can help a development team understand how a project changes
over time. Teams can examine commit dates, authors, messages, and file
changes to identify busy periods, frequently changed files, and patterns in
team contributions.
"@

Write-Host @"
1. git log
----------
Command:
	git log

This displays the commit history. It normally includes the commit ID, author,
date, and commit message. A team can use this information to see how often
commits are made and whether activity increases near a deadline.

Useful variation:
	git log --oneline --date=short --pretty=format:"%h %ad %an %s"

This gives a shorter, easier-to-scan history with the commit ID, date, author,
and subject of each commit.

2. git log --stat
-----------------
Command:
	git log --stat

This displays the commit history together with file-change statistics. It
shows which files were changed and how many lines were added or removed.
Teams can use it to find parts of the project that change frequently or
commits that contain unusually large changes.

3. git shortlog
---------------
Command:
	git shortlog -s -n

This summarises commits by author and sorts authors by the number of commits.
It helps a team compare contribution activity and identify how participation
changes over time. Commit totals should be treated as one indicator only,
because the number of commits does not measure the quality or difficulty of
the work.

Example activity review
-----------------------
1. Run git log to review commit dates and messages.
2. Compare dates to identify busy or quiet periods.
3. Run git log --stat to find frequently changed files.
4. Run git shortlog -s -n to review commit activity by author.
5. Compare these results across different time periods to identify trends.

Conclusion
----------
The commands git log, git log --stat, and git shortlog provide different
views of repository activity. Together they help a team evaluate development
frequency, file-change patterns, and contribution activity over time.
"@

Write-Host "Useful commands:"
Write-Host '  git log                  # Display commit history'
Write-Host '  git log --stat           # Display history and file-change statistics'
Write-Host '  git shortlog -s -n       # Summarise commits by author'
