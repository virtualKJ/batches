@ECHO off
bcdedit /enum >> %TMP%\type.txt && notepad.exe %TMP%\type.txt