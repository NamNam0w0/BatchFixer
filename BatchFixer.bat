//// This Multi Tool Created by HG4U_Terminal

cls
@echo off
cls
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
echo [0;35mN
title N
ping localhost -n 1 >nul
cls
echo Na
title Na
ping localhost -n 1 >nul
cls
echo Nam
title Nam
ping localhost -n 1 >nul
cls
echo NamN
title NamN
ping localhost -n 1 >nul
cls
echo NamNa
title NamNa
ping localhost -n 1 >nul
cls
echo NamNam
title NamNam
ping localhost -n 1 >nul
cls
echo NamNam0
title NamNam0
ping localhost -n 1 >nul
cls
echo NamNam0w
title NamNam0w
ping localhost -n 1 >nul
cls
echo NamNam0w0
title NamNam0w0
ping localhost -n 1 >nul
cls
echo NamNam0w0 
title NamNam0w0 
ping localhost -n 1 >nul
cls
echo NamNam0w0 l
title NamNam0w0 l
ping localhost -n 1 >nul
cls
echo NamNam0w0 lo
title NamNam0w0 lo
ping localhost -n 1 >nul
cls
echo NamNam0w0 lov
title NamNam0w0 lov
ping localhost -n 1 >nul
cls
echo NamNam0w0 love
title NamNam0w0 love
ping localhost -n 1 >nul
cls
echo NamNam0w0 loves 
title NamNam0w0 loves 
ping localhost -n 1 >nul
cls
echo NamNam0w0 loves y
title NamNam0w0 loves y
ping localhost -n 1 >nul
cls
echo NamNam0w0 loves yo
title NamNam0w0 loves yo
ping localhost -n 1 >nul
cls
echo NamNam0w0 loves you 
title NamNam0w0 loves you 
ping localhost -n 1 >nul
cls
echo NamNam0w0 loves you ^<
title NamNam0w0 loves you ^<
ping localhost -n 1 >nul
cls
echo NamNam0w0 loves you ^<3
title NamNam0w0 loves you ^<3
ping localhost -n 2.5 >nul
cls
chcp 65001 >nul
:Main
echo.
echo - ███╗   ██╗ █████╗ ███╗   ███╗███╗   ██╗ █████╗ ███╗   ███╗ ██████╗ ██╗    ██╗ ██████╗ 
echo - ████╗  ██║██╔══██╗████╗ ████║████╗  ██║██╔══██╗████╗ ████║██╔═████╗██║    ██║██╔═████╗
echo - ██╔██╗ ██║███████║██╔████╔██║██╔██╗ ██║███████║██╔████╔██║██║██╔██║██║ █╗ ██║██║██╔██║
echo - ██║╚██╗██║██╔══██║██║╚██╔╝██║██║╚██╗██║██╔══██║██║╚██╔╝██║████╔╝██║██║███╗██║████╔╝██║
echo - ██║ ╚████║██║  ██║██║ ╚═╝ ██║██║ ╚████║██║  ██║██║ ╚═╝ ██║╚██████╔╝╚███╔███╔╝╚██████╔╝
echo - ╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝  ╚══╝╚══╝  ╚═════╝ 
echo - ╭─────────────────────── ♰
echo - │ ^<3 ¦ ➫ Make sure you ran this in Administator
echo - │ ^<3 ¦ ➫ This tool was made by NamNam0w0#0001 join my discord ^> https://discord.gg/PkTfxvSjvr
echo - │ ^<3 ¦ ➫ This tool will reset inernet and flush dns etc
echo - ╰─────────────────────── ♰
echo -
echo ^> Say the number corresponding to the option to proceed to each option (say the number on the left for example 1 goes to tracking list)
echo -
echo ^> 1 To Attempt a Fix for Network Related Issues
echo -
echo ^> 2 To Attempt a Fix for Image Cleanup Stuff
echo -
echo ^> 3 To Attempt a Fix for ^| Under Construction
echo.
set /p ans="//0w0:"


if %ans%==1 (
goto F1
)
if %ans%==2 (
goto F2
)
if %ans%==3 (
goto F3
)

:F1
cls
goto Fix1

:F2
cls
goto Fix2

:F3
cls
goto Fix3

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