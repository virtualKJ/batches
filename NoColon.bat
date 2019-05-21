::@ECHO off
set targetfolder=%1
cd %1
echo.
echo Plex choose remote:
rclone.exe listremotes
echo.
echo Enter remote below (NO COLON)
echo
echo.
set /p remote=
echo.
echo Now copying to %REMOTE%
echo.
echo Choose folder
echo.
rclone.exe lsd %REMOTE%:
echo.
echo Enter below.
set /p folder=
echo.
echo
echo now copying to %REMOTE%/%FOLDER%
rclone.exe copy --copy-links --progress --transfers 10 --checkers 20 --cache-workers 10 --cache-dir E:\ --buffer-size 64M %1 %REMOTE%:%FOLDER%
pause

