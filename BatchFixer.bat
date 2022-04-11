//// This Multi Tool Created by NamNam0w0
@echo off
@rem
title NamNam0w0 loves you ^<3
chcp 65001 >nul
cls
:Main
color 04
type MenuText.txt
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
rem Organization 2

:Fix1

netsh int ip reset C:\resetlog.txt

netsh winsock reset

ipconfig /flushdns

Echo Resetted Netsh, Winsock, and Flushed DNS

pause
cls

goto Main

:Fix2

Dism /Online /Cleanup-Image /CheckHealth

Dism /Online /Cleanup-Image /ScanHealth

Dism /Online /Cleanup-Image /RestoreHealth

Echo Finished Image Cleanup Check, Scan, and Restore

pause
cls

goto Main

:Fix3

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
PAUSE


pause
cls

goto Main