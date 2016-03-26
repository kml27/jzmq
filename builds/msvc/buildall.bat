@echo off
echo building java
call buildjava.bat
REM echo errorlevel is %errorlevel%
echo building cpp x64
call buildcppx64.bat
echo building cpp x86
call buildcppx86.bat
call buildjar.bat
echo on