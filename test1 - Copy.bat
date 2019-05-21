set log=G:"Team Drives"/Libraries/Logging/rclone/rclone-log.txt
set log2="G:"Team Drives"/Libraries/Logging/rclone/rclone-log.txt"
set lvl=ERROR
set config=--config ""
set var="--fast-list --ignore-case --ignore-checksum --no-update-modtime --progress"
FOR /f "delims=:" %%i IN ('rclone.exe listremotes') DO (
	rclone.exe lsd %%i: --log-file %LOG% --log-level %LVL%
	::IF %ERRORLEVEL% NEQ 0 Echo An error was found && echo %%i >>C:\ere.txt
	::IF %ERRORLEVEL% EQU 0 Echo No error found
	)
	
	::IF %ERRORLEVEL% NEQ 0 Echo An error was found
	::IF %ERRORLEVEL% EQU 0 Echo No error found

::IF %ERRORLEVEL% EQU 0 (Echo No error found) ELSE (Echo An error was found)
::IF %ERRORLEVEL% EQU 0 Echo No error found || Echo An error was found