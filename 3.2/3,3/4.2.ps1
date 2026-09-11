Clear-Host

Write-Host @"
Commit Frequency and Timing
===========================

Regular commits:     | | | | | | | | |  -> steady development activity
Deadline commits:    |       |         |||| -> work may be rushed
Few commits:         |           |      -> slower progress or blockers
					 Time ------------------------------>
"@

Write-Host @"
1. Commit frequency shows development activity
-----------------------------------------------
Frequent and regular commits may show that team members are actively
working and completing small tasks. Very few commits over a long period may
show that development has slowed down, work is being kept locally, or team
members are experiencing problems.

2. Commit timing shows when the team is most active
---------------------------------------------------
The timing of commits can reveal the team's work pattern. If most commits
happen just before deadlines, the team may be rushing or delaying work until
the last minute. If commits are spread regularly over time, this may show
better planning and a more organised workflow.

Suggested improvement
---------------------
Use an Agile workflow with regular planning and smaller tasks. Break large
features into manageable pieces, agree on short milestones, and encourage
team members to make small, meaningful commits throughout development.
This gives the team earlier feedback, makes changes easier to review, and
reduces last-minute pressure.

Conclusion
----------
Commit frequency helps a team assess the level of development activity,
while commit timing helps reveal planning and deadline patterns. Regular
planning and smaller tasks can create a more consistent workflow.
"@

Write-Host "Example commands for reviewing commit patterns:"
Write-Host '  git log --oneline --date=short --pretty=format:"%ad %an %s"'
Write-Host '  git shortlog -s -n'
