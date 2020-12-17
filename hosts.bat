@echo off
set Source=C:\Windows\System32\drivers\etc\HOSTS
set Destination=C:\Windows\System32\drivers\etc\
set Filename=HOSTS
set a=1
:loop
if exist %Destination%\%Filename%(%a%) set /a a+=1 && goto :loop
copy %Source% %Destination%\%Filename%(%a%)
bitsadmin /transfer myDownloadJob /priority normal https://adaway.org/hosts.txt C:\Windows\System32\drivers\etc\HOSTS