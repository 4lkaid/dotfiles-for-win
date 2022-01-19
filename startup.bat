@echo off

:console
echo =============== Author: 4lkaid 2021/07/12 ===============
echo.
echo         1. start apache
echo         2. stop apache
echo         3. restart apache
echo.
echo         4. start mysql
echo         5. stop mysql
echo         6. restart mysql
echo.
echo         7. start apache and mysql
echo         8. stop apache and mysql
echo         9. restart apache and mysql
echo.
echo         0. quit
echo.
set /p msg=please enter a number (1/2/3/4/5/6/7/8/9/0):
if %msg%==1 call :start apache
if %msg%==2 call :stop apache
if %msg%==3 call :restart apache
if %msg%==4 call :start mysql
if %msg%==5 call :stop mysql
if %msg%==6 call :restart mysql
if %msg%==7 call :start apache&call :start mysql
if %msg%==8 call :stop apache&call :stop mysql
if %msg%==9 call :restart apache&call :restart mysql
if %msg%==0 exit /b 0
pause
cls
goto console

:start
net start %1
exit /b 0

:stop
net stop %1
exit /b 0

:restart
call :stop %1
call :start %1
exit /b 0
