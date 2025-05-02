# FolderLocker

## Create

Creating a batch script to lock a folder can be a handy way to protect your files. Below is a simple example of a batch script that can lock and unlock a folder using a password.

```
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
if NOT %pass%==yourpassword goto FAIL
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
```

## Instructions:

1. **Replace** `yourpassword` with your desired password.
2. **Save the script** with a `.bat` extension, for example, `FolderLocker.bat`.
3. **Run the script** by double-clicking it. The first time you run it, it will create a folder named `Locker`.
4. **Move your files** into the `Locker` folder.
5. **Run the script again** to lock the folder. It will prompt you to confirm locking the folder.
6. **To unlock the folder**, run the script and enter your password.

## Notes:

- This script uses a simple method to hide and lock the folder by renaming it and changing its attributes. It is not highly secure but can deter casual snooping.
- For more robust security, consider using dedicated encryption software.

Feel free to reach out if you need further assistance or have any other questions!
