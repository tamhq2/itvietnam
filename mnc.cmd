@echo off
cls
mode con:cols=70 lines=20
Title IT Vietnam 2023
color e
Echo ************************[USERNAME\HOSTNAME]>%temp%\IT.txt
echo.
(echo %username% & hostname) >>%temp%\IT.txt
(systeminfo | find /i "System Model" & systeminfo | find /i "Domain" & systeminfo | find /i "OS" & systeminfo | find /i "Total Physical Memory:")>>%temp%\IT.txt
echo.
echo.
wmic bios get serialnumber>>%temp%\IT.txt
echo.
wmic cpu get NumberOfCores,NumberOfLogicalProcessors,name /format:list>>%temp%\IT.txt
echo.
wmic diskdrive get model,index,serialnumber,size /format:list>>%temp%\IT.txt
echo.
wmic memorychip get serialnumber, partnumber, ConfiguredClockspeed, Speed, manufacturer /format:list>>%temp%\IT.txt
Echo ************************[IPv4 Ethernet]>>%temp%\IT.txt
echo.
IPCONFIG | FINDSTR /R "Ethernet* Address.*[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*">>%temp%\IT.txt
echo.
Echo ************************[IPv4 Wi-FI]>>%temp%\IT.txt
echo.
IPCONFIG | FINDSTR /R "Wi-fi* Address.*[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*">>%temp%\IT.txt
echo.
echo.
echo CARD MANG DA CONNECTED>>%temp%\IT.txt
getmac | FINDSTR /R "Tcpip* Address.*[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*">>%temp%\IT.txt
echo.
echo.
echo NIC card>>%temp%\IT.txt
wmic nic get caption, index | findstr /v "Index=1">>%temp%\IT.txt

start notepad.exe %temp%\IT.txt


