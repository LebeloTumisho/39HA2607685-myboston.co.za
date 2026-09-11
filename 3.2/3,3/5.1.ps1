Clear-Host

Write-Host @"
Three Key Git Repository Health Metrics
=======================================

These metrics help a development team understand how consistently the team
works, how contributions are shared, and whether changes are manageable.
"@

Write-Host @"
1. Commit Frequency
-------------------
What it measures:
Commit frequency measures how often commits are made during a period, such
as a day, week, or month.

Why it is important:
Regular commits may show consistent development activity. A sudden decrease
may indicate a blocker, slowed development, or work that is not being
committed. Commits concentrated just before a deadline may indicate rushed
work or delayed integration.

Useful command:
	git log --oneline --since="1 month ago"

2. Contributor Activity
-----------------------
What it measures:
Contributor activity measures contributions by individual developers. This
can include commit totals and the areas of the project each person changes.

Why it is important:
This shows how work is distributed across the team. If one person makes most
of the changes, the project may depend too heavily on that developer. The
team can use this information to improve collaboration, knowledge sharing,
and task distribution.

Useful command:
	git shortlog -s -n --all

3. Code Change Size
-------------------
What it measures:
Code change size measures how much code is added, removed, or modified in a
commit. Git diff can show these changes and their line counts.

Why it is important:
Very large changes are usually harder to review, test, and understand. They
may also increase the chance of errors and have a wider impact on the
application. Smaller, focused commits are generally easier to manage, while
large changes may need extra review and testing.

Useful commands:
	git diff --stat HEAD~1 HEAD
	git show --stat COMMIT_ID

How to use the metrics together
--------------------------------
1. Review commit frequency to identify consistent or slow periods.
2. Review contributor activity to understand how work is shared.
3. Review change size to find commits that may need extra testing or review.
4. Discuss unusual results with the team before drawing conclusions.

Conclusion
----------
Commit frequency, contributor activity, and code change size provide a useful
view of repository health. Together they show how consistently the team is
working, how contributions are distributed, and whether changes are focused
and manageable.
"@

Write-Host "Useful commands:"
Write-Host '  git log --oneline --since="1 month ago" # Review recent commit frequency'
Write-Host '  git shortlog -s -n --all                 # Summarise commits by contributor'
Write-Host '  git diff --stat HEAD~1 HEAD              # Measure the latest change size'
