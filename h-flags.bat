@ECHO off
rclone.exe help flags
rclone.exe help flags > C:\Windows\help-flags.txt
cmd.exe /c notepad.exe C:\Windows\help-flags.txt