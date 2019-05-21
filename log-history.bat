@ECHO off
doskey /h >> %LOG%\doskey-history.txt
:
:
::Logging
:
:
echo ""%DATE%" - "%TIME%" - "%CD%"" >> %LOG%\doskey-history.txt
: