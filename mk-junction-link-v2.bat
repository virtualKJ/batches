@ECHO off
set source=%1
set origin=%~dpn0
set name=%~n1
set drop=%~dpn1
echo Where would you link it sent?
set /p where=
mklink /j "%WHERE%%NAME%" "%DROP%"
mkdir %USERPROFILE%\.prod\rcloneDrops
mkdir %USERPROFILE%\.prod\junctionCLEAN
echo %DATE% %TIME% >> %USERPROFILE%\.prod\current-junctions.txt
echo link created for %NAME% on %WHERE% pointing to %DROP% >> %USERPROFILE%\.prod\current-junctions.txt
echo rclone.exe copy --copy-links --progress "%%1" "%DROP%\%%~n1"  > %USERPROFILE%\.prod\rcloneDrops\"copyTO%~n1".bat
echo rclone.exe copy --copy-links --progress "%DROP%" "%%1":"%%~n1"  > %USERPROFILE%\.prod\rcloneDrops\"copyFROM%~n1".bat
echo rmdir "%WHERE%%NAME%" >> %USERPROFILE%\.prod\junctionCLEAN\"remove%~n1.bat"
::log for complete list of junctions without searching
::call reverse-link.bat to auto rmdir the junction
::create a link to the junction as a drop point itself
::create it as a remote in rclone.conf automatically
::create bat to use the conf and the junction as source/or destination