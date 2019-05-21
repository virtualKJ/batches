@ECHO off
set source=%1
set origin=%~dpn0
set name=%~n1
set drop=%~dpn1
echo Where would you link it sent?
set /p where=
mklink /j "%WHERE%%NAME%" "%DROP%"
echo link created for %NAME% on %WHERE% pointing to %DROP%
::log for complete list of junctions without searching
::call reverse-link.bat to auto rmdir the junction
::create a link to the junction as a drop point itself
::create it as a remote in rclone.conf automatically
::create bat to use the conf and the junction as source/or destination