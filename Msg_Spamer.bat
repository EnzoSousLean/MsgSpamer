@echo off

::Declaration of Variables with activation of the choice via /p
set /p Number="Number of Messages to send : "
set /p Message="The Message you want to send : " 
set /p User="Your Session Name : "
set /p Hostname="Hostname of the PC you want to spam : "

::Loop Start
:loop 

set /a count = count + 1

echo %count%

::commande MSG 
msg %User% /SERVER:%Hostname% %Message%

if %count%==%Number% goto end

goto loop 

:end

pause

:: Code By Enzo_Sous_Lean
:: https://github.com/Enzo_Sous_Lean