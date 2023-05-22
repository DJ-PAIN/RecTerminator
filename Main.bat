@echo off

tasklist | find /i "Recroom_Release.exe" >nul 2>&1
if errorlevel 1 (
    echo Recroom_Release.exe is not running. Exiting...
pause
    exit /b 1
)

echo Identifying Recroom_Release.exe...
echo Killing Recroom_Release.exe...
taskkill /F /IM Recroom_Release.exe >nul 2>&1
echo Recroom_Release.exe terminated.

echo Killing SteamVR processes...
taskkill /F /IM vrcmd.exe >nul 2>&1
taskkill /F /IM vrcompositor.exe >nul 2>&1
taskkill /F /IM vrdashboard.exe >nul 2>&1
taskkill /F /IM vrmonitor.exe >nul 2>&1
taskkill /F /IM vrserver.exe >nul 2>&1
echo SteamVR processes terminated.
echo Thank you!
pause
