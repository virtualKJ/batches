@echo off

title Copy to remotes
set from=%1
cd %1
set orgin=%~dp0
set name=%~dpn0
set pn=%~dpn0
set nn=%~dn0
set n=%~n0
set n1=%~n1
:.copyISO
::echo Copying %FROM% to ISO:
::rclone.exe copy %FROM% iso: --progress 

set /a counter=0

setlocal enabledelayedexpansion
FOR /f "delims=:" %%i IN ('rclone.exe listremotes') DO (
    set /a counter+=1
    rem echo !counter!^) %%~ni
    set FileList[!counter!]=%%~ni & rem This is an array element, a dinamically created variable
)

rem Iterate through variables:
FOR /l %%i IN (1,1,!counter!) DO (
    echo %%i^) !FileList[%%i]!
)
echo %CD%
echo %n1%
echo %orgin%
echo %from%
echo %name%
echo %pn%
echo %nn%
echo %n%
set /p option="Choose an option: "
set remote=!FileList[%option%]!
echo !FileList[%option%]!
echo %remote%
if !counter! == %option% goto action copy


::@echo %REMOTE% 
::@echo %OPTION%
:.copy
echo copy %FROM% to !FileList[%option%]! \\ %remote% : \ %orgin%
pause
::rclone.exe copy %FROM% %REMOTE%:"%FROM%" --progress 

endlocal