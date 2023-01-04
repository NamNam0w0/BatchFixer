//// This Multi Tool Created by NamNam0w0
rem DID NOT MAKE THIS PART, IT IS MADE BY https://www.winhelponline.com/blog/automatically-elevate-batch-file-run-administrator/
::::::::::::::::::::::::::::::::::::::::::::
:: Automatically check & get admin rights V2
::::::::::::::::::::::::::::::::::::::::::::
@echo off
CLS
ECHO.
ECHO =============================
ECHO Running Admin shell
ECHO =============================

:init
setlocal DisableDelayedExpansion
set "batchPath=%~0"
for %%k in (%0) do set batchName=%%~nk
set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
setlocal EnableDelayedExpansion

:checkPrivileges
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)
ECHO.
ECHO **************************************
ECHO Invoking UAC for Privilege Escalation
ECHO **************************************

ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
ECHO args = "ELEV " >> "%vbsGetPrivileges%"
ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
ECHO Next >> "%vbsGetPrivileges%"
ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
"%SystemRoot%\System32\WScript.exe" "%vbsGetPrivileges%" %*
exit /B

:gotPrivileges
setlocal & pushd .
cd /d %~dp0
if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)

::::::::::::::::::::::::::::
::START
::::::::::::::::::::::::::::
rem EVERYTHING ON TOP OF THIS NOT BY ME, FROM https://www.winhelponline.com/blog/automatically-elevate-batch-file-run-administrator/
@echo off
@rem
title NamNam0w0 loves you ^<3 || V0.4
chcp 65001 >nul
pushd "%~dp0"
cls
:Main
color 04
type C:\Users\realn\OneDrive\Documents\GitHub\BatchFixer\MenuText.txt
rem this prints the option menu for people to see the options
echo.
set /p ans="//0w0 ✞ >"
rem this sets the text that stands behind the input, its just a little decoration type of thing.


if %ans%==1 (
goto F1
)
if %ans%==2 (
goto F2
)
if %ans%==3 (
goto F3
)
if %ans%==4 (
goto F4
)
if %ans%==5 (
goto F5
)
if %ans%==6 (
goto F6
)

rem Organization 1

:F1
cls
goto Fix1

:F2
cls
goto Fix2

:F3
cls
goto Fix3

:F4
cls
goto Fix4

:F5
cls
goto Fix5

:F6
cls
goto Fix6
rem Organization 2

:Fix1

netsh int ip reset C:\resetlog.txt

netsh winsock reset

ipconfig /release

ipconfig /renew

ipconfig /flushdns

Echo Resetted Winsock. Released + Renewed IP + Flushed DNS.

pause
cls

goto Main

:Fix2

netsh int tcp set global chimney=enabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set supplemental
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global ecncapability=enabled
Echo set network settings back

:Fix3

netsh advfirewall firewall add rule name="StopThrottling" dir=in action=block remoteip=173.194.55.0/24,206.111.0.0/16 enable=yes

pause
cls

goto Main

:Fix4

Dism /Online /Cleanup-Image /CheckHealth

Dism /Online /Cleanup-Image /ScanHealth

Dism /Online /Cleanup-Image /RestoreHealth

Echo Finished Image Cleanup Check, Scan, and Restore

pause
cls

goto Main

:Fix5

net stop audiosrv
Echo Press enter when ready to start the audio back up
pause
net start audiosrv

pause
cls

goto Main

:Fix6

ECHO ---------------------------------------------------------------------------
ECHO ALL CREDIT TO YIFFER FOR THIS WHOLE PART OF THE CODE, I DID NOT CODE ANY OF OPTION 3
ECHO Yiffers Github Page ^> https://github.com/yiffer
ECHO ---------------------------------------------------------------------------
ECHO Machine:
wmic computersystem get manufacturer,model,name
ECHO ---------------------------------------------------------------------------
ECHO CPU:
wmic cpu get name,numberofcores
ECHO ---------------------------------------------------------------------------
ECHO BIOS:
wmic bios get manufacturer,serialnumber,smbiosbiosversion
ECHO ---------------------------------------------------------------------------
ECHO RAM sticks:
wmic memorychip where "devicelocator != 'SYSTEM ROM'" get capacity,devicelocator,manufacturer,partnumber
ECHO ---------------------------------------------------------------------------
ECHO OS:
wmic os get caption,installdate,osarchitecture,totalvisiblememorysize
ECHO ---------------------------------------------------------------------------
ECHO Physical drives:
wmic diskdrive get index,firmwarerevision,model,size
ECHO ---------------------------------------------------------------------------
ECHO Logical drives:
wmic logicaldisk get description,deviceid,freespace,size,volumename
ECHO ---------------------------------------------------------------------------
ECHO Physical network interface(s):
wmic NIC where "physicaladapter=TRUE" get MACAddress,ProductName | findstr /v /C:"Virtual"
ECHO ---------------------------------------------------------------------------
ECHO Currently active network interfaces:
wmic nicconfig where ipenabled="TRUE" get description,macaddress,ipaddress,dhcpleaseobtained
ECHO ---------------------------------------------------------------------------
ECHO Display Adapters
for /F "tokens=* skip=1" %%n in ('WMIC path Win32_VideoController get Name ^| findstr "."') do set GPU_NAME=%%n
echo %GPU_NAME%
ECHO ---------------------------------------------------------------------------

pause
cls

goto Main