@echo off
:: Navigate to the repository root (this script should be placed in repo root)
cd /d %~dp0

:: Ask for commit message
set /p msg="Enter commit message: "

:: Stage all changes
git add .

:: Commit with user-provided message
git commit -m "%msg%"

:: Push changes to the default remote branch
git push

pause
