@echo off
set "RetPath=%cd%"
cd C:\dev\amnesia\
START Amnesia_NoSteam.exe config/main_init.cfg
cd %RetPath%
@echo on