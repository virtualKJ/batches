@ECHO off
DOSKEY
DOSKEY rcc=rclone.exe copy --copy-links --progress --transfers 10 --checkers 20 --cache-workers 10 --cache-dir E:\ --buffer-size 64M $1 $2