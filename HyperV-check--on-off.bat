@ECHO off
bcdedit /enum >> %TMP%\type.txt && notepad.exe %TMP%\type.txt
::
::	#Same output with /v as /enum for the command
::
::Hypervisor check if prefered
::bcdedit /v >> type.txt && notepad.exe type.txt
::
::	#Enable Hyper-V on host
::HVon
::bcdedit /set hypervisorlaunchtype auto
::shutdown /r /t 0
::
::	#Disable Hyper-V off host
::
::HVoff
::bcdedit /set hypervisorlaunchtype off
::shutdown /r /t 0