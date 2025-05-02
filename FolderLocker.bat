@echo off
title Folder Locker
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Locker goto MDLOCKER
:CONFIRM
echo Are you sure you want to lock the folder? (Y/N)
set /p "choice="
if /I "%choice%" NEQ "Y" goto END
:LOCK
ren Locker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto END
:UNLOCK
echo Enter password to unlock folder:
set /p "pass="
if NOT %pass%==Deepika@2005 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker
echo Folder unlocked
goto END
:FAIL
echo Invalid password
goto END
:MDLOCKER
md Locker
echo Locker created successfully
goto END
:END
