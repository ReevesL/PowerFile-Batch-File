REM First, we need to know what mm.exe wants
REM mm uses 1-4 to refer to parts of the changer
REM 1 = Mail Slot
REM 2 = Drive 1
REM 3 = Drive 2
REM 4 = Slot 1 (all the way to 203 = Slot 200)

REM since my drives are mapped to E and F

SET Drive_F=2
SET Drive_G=3

SET /A Slot=%1 + 3
if "%1" == "" SET Slot=4

SET /A LastSlot=%2 + 3
if "%2" == "" SET LastSlot=203

SET DriveLetter=%3
if "%3" == "" SET DriveLetter="F"

SET MyDrive=%Drive_F%
if "%3" == "G" SET MyDrive=%Drive_E%

:LOOP
"C:\\Windows\\SysWOW64\\drivers\\PowerFile 5.4\\mm.exe" %Slot% %MyDrive%

REM Place the command line of what you want to do here.
REM in my case, I just want to copy the files, since these are data files

xcopy /e /y %DriveLetter%:\\ c:\\

REM but this could be some ripping software that has a command line interface

"C:\\Windows\\SysWOW64\\drivers\\PowerFile 5.4\\mm.exe" %MyDrive% %Slot%

SET /A Slot=%Slot% + 1

if NOT "%Slot%" == "%LastSlot%" GOTO LOOP
EXIT