::@echo off
set source=%1
set origin=%~dpn0
set name=%~n1
set drop=%~dpn1
echo %WHERE% \ %NAME% "%ORIGIN%" / %DROP%
pause
ECHO Where would you link it sent?
set /p where=
::echo %WHERE% %NAME% "%ORIGIN%" 
::echo %WHERE% %NAME% %DROP%
::pause
mklink /j "%WHERE%%NAME%" "%DROP%"
::mklink /j "%WHERE%\%NAME%" "%ORIGIN%" %DROP%
echo %WHERE%%NAME% %DROP%
::echo %WHERE% \ %NAME% "%ORIGIN%" 
pause