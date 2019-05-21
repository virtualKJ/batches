@ECHO off
rclone.exe help backends
rclone.exe help backends > C:\Windows\help-backends.txt
cmd.exe /c notepad.exe C:\Windows\help-backends.txt