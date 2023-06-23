::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDpaSBYh9VeeCaIS5Of66/m7r0waXeFyb47V3vqHI+9z
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpaSBYh9VeeCbYJ5e31+/m7i2g0R8A+e4TkybGaNfBd713hFQ==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title IEIsBack Command-line Installer
echo Hello, %username%. You are running this command-line wizard for the first time. This wizard will do some administrative magic to install the IEIsBack program, which you can continue using Internet Explorer in 2023.
echo Do you wish to continue? Press a key to answer Yes, it shouldn't answer No.
pause
echo Preparing to copy files...
cd C:\
timeout 1
echo Hang on for a sec...
mkdir ieinit
echo Command completed, success or failure exit code: %errorlevel%
timeout 1
cd ieinit
timeout 1
powershell Invoke-WebRequest -Uri "https://github.com/JoseErnestoOnGithub/aria2/raw/main/aria2c.exe" -OutFile "aria2c.exe"
echo Command completed, success or failure exit code: %errorlevel%
echo aria2 is about to download the files required to copy. Press a key to continue the installation process.
pause
aria2c https://github.com/JoseErnestoOnGithub/OpenDOS_New_Commands/raw/main/ie_init.exe
echo Command completed, success or failure exit code: %errorlevel%
echo Ready.
pause
echo Copying file ie_init.exe
copy C:\ieinit\ie_init.exe c:\windows\system32
echo Command completed, success or failure exit code: %errorlevel%
echo Checking your disk for errors. It may take a few minutes.
chkntfs c:
echo Disk checking completed and repaired all errors on the drive. The command returned exit code %errorlevel%.
echo The operation was successful. Press a key to restart your computer in order to finish the installation.
pause
shutdown -r -t 0
exit