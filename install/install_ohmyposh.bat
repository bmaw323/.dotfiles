@echo off

Powershell.exe Install-Module posh-git -Scope CurrentUser -Force
Powershell.exe Install-Module oh-my-posh -Scope CurrentUser

FOR /F "delims=" %i in ('Powershell.exe echo $PROFILE') DO set profile=%i

if exist %profile% (
) else (
    copy /y NUL %profile% >NUL
)

echo "editing profile"
start /wait notepad.exe %profile%
