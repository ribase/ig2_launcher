@echo off
:begin
echo IG2 MP launcher
echo.
echo 1) Host a session
echo 2) Join a session
echo 3) EXIT
echo.

set /p option=choose: 
if %option%==1 goto option1
if %option%==2 goto option2
if %option%==3 exit
goto wrong

:option1
set /p hostname="Player name (leave blank to exit): " || goto end

ig2_AddOn.exe -host -playername "%hostname%"
pause
goto end

:option2
set /p clientname="Player name (leave blank to exit): " || goto end

set /p ip="IP address (leave blank to exit): " || goto end

ig2_AddOn.exe -client %ip% -playername "%clientname%"
pause
goto end

:wrong
echo WRONG COMMAND
pause
goto begin

:end
