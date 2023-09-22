@echo off
cls
mode con:cols=70 lines=20
Title IT Vietnam 2023
color e
Echo ************************[USERNAME\HOSTNAME]
echo.
echo %username% & hostname
echo.
Echo ************************[IPv4 Ethernet]
echo.
IPCONFIG | FINDSTR /R "Ethernet* Address.*[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*"
echo.
Echo ************************[IPv4 Wi-FI]
echo.
IPCONFIG | FINDSTR /R "Wi-fi* Address.*[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*"
pause>nul
