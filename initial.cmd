@echo off

REM variables
set "INITIALPATH=%cd%"
set "STARTUP=C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

REM move file to startup.
cd %STARTUP%

(
    echo MsgBox "Line 1" ^& vbCrLf ^& "Line 2",262192, "Title"
) > popup.vbs

@REM goto inital path and delete self.

cd "%INITIALPATH%"
del %0