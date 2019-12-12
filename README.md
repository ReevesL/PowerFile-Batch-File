# PowerFile-Batch-File
A batch file used to drive loading and unloading of discs in a PowerFile DVD changer.

## Overview
Finding functional software to drive an old PowerFile DVD changer is tough. You either need to shell out for commercial duplicating software or dig up an old copy of Windows XP. If, however, you install the PowerFile 5.4 mm.exe and the right drivers you can automate the selection and mounting of disks. Combine with your favorite command-line driven backup software and you can have it run through 200 disks while you do something more valuable with your time.

## Requirements
* A PowerFile DVD changer
* PowerFile 5.4 software (from the Disk that came with your drive or downloaded from the web)
* A PC with nescessary connections (i.e. FireWire)
* A compatible OS (I was able to make it work on Windows 7, YMMV)

## Usage
To make sure you are setup correctly take a look at the batch file command for mm.exe. You should be able to manually load and unload disks by typing the commands into cmd.exe.

Once you know the drive is working, edit the batch file with your favorite text editor.
* Verify the drive letters match those of the drives recognized by your PC
* Verify the number of disks supported by your PowerFile (200 for the model I had)
* Verify the path to mm.exe

Once you have edited the batch file head back over to cmd.exe and run it.
