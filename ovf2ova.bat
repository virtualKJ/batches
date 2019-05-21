::With Direct inputs for source destination | tired of fucking with it
for /R Z:\ %%i IN (*.vmx) DO ovftool.exe "%%i" "E:\out\%%~ni.ova"
::
::This should in theory work
for /R %%1 %%i IN (*.vmx) DO ovftool.exe "%%i" "%%2%%~ni.ova"
::
::or with set
::
SET source=
SET dest=
for /R %%SOURCE% %%i IN (*.vmx) DO ovftool.exe "%%i" "%%DEST%%~ni.ova"


Edit:
#Works | use inputs on CLI 
  ie ovf2ova.bat A:input B:output
  
for /R %1 %%i IN (*.vmx) DO ovftool.exe "%%i" "%2\%%~ni.ova"
