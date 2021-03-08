@Echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
Title Setting up
color 0a
cls
Echo.
Echo.
Echo.
Echo.
Echo.
Echo.
echo Just setting some things up...
powershell set-executionpolicy remotesigned
set/p<nul =Press any key to exit...&pause>nul
EXIT