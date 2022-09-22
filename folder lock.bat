cls
@ECHO OFF
title Folder Private
if EXIST "HTG Locker" goto UNLOCK
if NOT EXIST Private goto MDLOCKER
:CONFIRM
echo Are you sure you want to lock the folder(Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Private "HTG Locker"
attrib +h +s "HTG Locker"
echo Folder locked
start \CONTENTS\msgbox_file_locked
goto End
:UNLOCK
echo Enter password to unlock folder WARNING: this folder might have dangerous files stored if you arent alex andrade ribeiro do not unlock this folder as you might accidently set something off
set/p "pass=>"
if NOT %pass%== alexrR0987 goto FAIL
attrib -h -s "HTG Locker"
ren "HTG Locker" Private
echo Folder Unlocked successfully
start \CONTENTS\msgbox.vbs
goto End
:FAIL
echo Invalid password
start \CONTENTS\msgbox_incorrect_password.vbs
goto end
:MDLOCKER
md Private
echo Private created successfully
start \CONTENTS\msgbox_PRIVATE_FILE_ADDED.vbs
goto End
:End
