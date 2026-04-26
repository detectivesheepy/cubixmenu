@echo off
:menu
cls
echo ============================================
echo           WELCOME TO CUBIX
echo        SELECT A SCRIPT TO RUN
echo ============================================
echo 1) Open remote shutdown menu
echo 2) View network IP's
echo 3) View running tasks
echo 4) Open god mode menu
echo ============================================

choice /c 1234 /m "Enter the key represented by the script"

:: The errorlevel corresponds to the position in the /c list
if errorlevel 4 goto scriptD
if errorlevel 3 goto scriptC
if errorlevel 2 goto scriptB
if errorlevel 1 goto scriptA

:scriptA
cls
:: start script here
powershell shutdown -i
:: end script here
echo Continuing will return you to the CUBIX menu
pause
goto menu

:scriptB
cls
:: start script here
powershell arp -a
:: end script here
echo Continuing will return you to the CUBIX menu
pause
goto menu

:scriptC
cls
:: start script here
powershell tasklist
:: end script here
echo Continuing will return you to the CUBIX menu
pause
goto menu

:scriptD
cls
:: start script here
start explorer shell:::{ED7BA470-8E54-465E-825C-99712043E01C}
:: end script here
echo Continuing will return you to the CUBIX menu
pause
goto menu
