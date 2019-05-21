@ECHO off
title Copy to ISO remote
set from=%1
cd %1
:.copyISO
echo Copying %FROM% to ISO:
rclone.exe copy %FROM% iso: --progress 