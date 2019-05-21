::Copied from history
echo robocopy /? >> C:\Windows\help-robo.bat
help-robo
echo xcopy /? >> C:\Windows\help-xcopy.bat
echo dir /? >> C:\Windows\help-dir.bat
echo rclone.exe help backends >> C:\Windows\help-backends.bat
echo rclone.exe help flags >> C:\Windows\help-flags.bat
echo DOSKEY backend-h=rclone.exe help backend $1 >> C:\Windows\dos-backend.bat
dos-backend
backend-h http
doskey /h