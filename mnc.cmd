@echo off
cls
mode con:cols=70 lines=20
Title IT Vietnam 2023
color e
Echo ************************[USERNAME\HOSTNAME]>%temp%\IT.txt
echo.
systeminfo | find /i "System Model">>%temp%\IT.txt
(echo %username% & hostname) >>%temp%\IT.txt
echo.
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
wmic bios get serialnumber>>%temp%\IT.txt
start notepad.exe %temp%\IT.txt


