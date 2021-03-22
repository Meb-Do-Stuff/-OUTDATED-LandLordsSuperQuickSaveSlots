@echo off
color 06
title LandLord's Super Save Slot Manager
cd C:\Users\%username%\AppData\LocalLow\MinskWorks\
if exist saves\ (echo ) else (mkdir saves)
cls
cd C:\Users\%username%\AppData\LocalLow\MinskWorks\LandlordsSuper
if exist savename.meblikea (
	goto next
) else (goto noxi)
:noxi
echo Send a message to MeblIkea#2629 if there is a bug
echo The current save is unknow
set /p choice=Do you want to save it ? y/n : 
if %choice%==n (
	goto next
) else (goto save)
goto next
:save
set /p name=Name (without spaces): 
cd C:\Users\%username%\AppData\LocalLow\MinskWorks\LandlordsSuper
echo %name% > savename.meblikea
cd C:\Users\%username%\AppData\LocalLow\MinskWorks\
mkdir saves\%name%\
xcopy LandlordsSuper saves\%name%\ /E
cls
echo Done!
pause
:next
cls
echo Send a message to MeblIkea#2629 if there is a bug
FOR /F %%f in (savename.meblikea) DO (echo The current save is %%f)
echo Your saves : 
cd C:\Users\%username%\AppData\LocalLow\MinskWorks\saves
dir /B
set /p choice=Choose your save (New for create new): 
if %choice%==New (
	goto save
)
cd C:\Users\%username%\AppData\LocalLow\MinskWorks\LandlordsSuper
del * /Q
cd C:\Users\%username%\AppData\LocalLow\MinskWorks\saves
xcopy %choice% C:\Users\%username%\AppData\LocalLow\MinskWorks\LandlordsSuper /E /Y
cls
echo Done!
pause
goto next