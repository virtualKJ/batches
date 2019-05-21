FOR /f "delims=:" %%i IN ('rclone.exe listremotes') DO (
	rclone.exe lsd %%i:
	IF %ERRORLEVEL% NEQ 0 Echo An error was found && echo %%i >>C:\ere.txt
	IF %ERRORLEVEL% EQU 0 Echo No error found
	)
	
	::IF %ERRORLEVEL% NEQ 0 Echo An error was found
	::IF %ERRORLEVEL% EQU 0 Echo No error found

::IF %ERRORLEVEL% EQU 0 (Echo No error found) ELSE (Echo An error was found)
::IF %ERRORLEVEL% EQU 0 Echo No error found || Echo An error was found