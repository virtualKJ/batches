@echo off

title Copy to remotes
set from=%1
cd %1
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
FOR /l %%i IN (1,10,!counter!) DO (
    rclone.exe lsd %%i) rem !FileList[%%i]!
)

set /p remote="Choose an option: "
echo !FileList[%option%]!
if !counter! == %option% goto action yeah


::@echo %REMOTE% 
::@echo %OPTION%
:.yeah
echo yeah %REMOTE%  %OPTION% %counter%
pause
::rclone.exe copy %FROM% %REMOTE%:"%FROM%" --progress 

endlocal