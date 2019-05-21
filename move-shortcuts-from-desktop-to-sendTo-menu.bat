@ECHO off
move %USERPROFILE%\Desktop\*.lnk %APPDATA%\Microsoft\Windows\SendTo
explorer.exe %APPDATA%\Microsoft\Windows\SendTo