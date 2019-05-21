@echo off

set /a counter=0

setlocal enabledelayedexpansion
FOR /f "usebackq delims==" %%i IN ('rclone.exe lsf %CD%') DO (
    set /a counter+=1
    rem echo !counter!^) %%~ni
    set FileList[!counter!]=%%~ni & rem This is an array element, a dinamically created variable
)

rem Iterate through variables:
FOR /l %%i IN (1,1,!counter!) DO (
    echo %%i^) !FileList[%%i]!
)

set /p option="Choose an option: "
echo !FileList[%option%]!

endlocal