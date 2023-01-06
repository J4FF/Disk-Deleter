@echo off
title Disk Deleter

:Start
cls
echo ---------Disk Deleter---------Made-by-J_AFF#1652---------
(echo Rescan
echo list disk 
)  | diskpart

echo press 1 to format, press 2 to delet or 3 to do both
choice /C 123
if errorlevel 3 goto DeletFormat
if errorlevel 2 goto Delette
if errorlevel 1 goto Formatte

::------------------------------------------------------------
:Formatte
set /p Disk=Please enter the disk number and Press Enter:
choice /M "Bist du dir wiklich sicher?"
if errorlevel 2 goto End
if errorlevel 1 goto Y
:Y
if "%Disk%"=="" goto :eof
(echo Rescan
echo select disk %Disk%
echo create partition primary
echo select partition 1
echo active
echo format FS=NTFS quick
echo assign
)  | diskpart

goto End


::---------------J_AFF#1652-------------------------
:Delette
set /p Disk=Please enter the disk number and Press Enter:
choice /M "Bist du dir wiklich sicher?"
if errorlevel 2 goto End
if errorlevel 1 goto Y
:Y
if "%Disk%"=="" goto :eof
(echo Rescan
echo Select Disk %disk%
echo clean
)  | diskpart

goto End


::------------------------------------------------------------
:DeletFormat

set /p Disk=Please enter the disk number and Press Enter:
choice /M "Bist du dir wiklich sicher?"
if errorlevel 2 goto End
if errorlevel 1 goto B
:B
if "%Disk%"=="" goto :eof
(echo Rescan
echo Select Disk %disk%
echo clean
echo select disk %Disk%
echo create partition primary
echo select partition 1
echo active
echo format FS=NTFS quick
echo assign
)  | diskpart






:End
goto start