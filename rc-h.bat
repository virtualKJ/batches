@ECHO off
rclone.exe help backend %1 && rclone.exe help backend %1 > %CD%\backend-%1.txt
notepad.exe %CD%\backend-%1.txt
rclone copy %CD%/backend-%1.txt %T%/Helps
dir %T%\Helps