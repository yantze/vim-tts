@echo off

REM 进入bat文件的盘符
%~d0
REM 进入bat文件的目录
cd %~dp0
REM 添加环境变量
SET PATH=%~dp0;%PATH%
REM % 1 是第一个参数
start java -jar tts.jar %1 %2 %3 %4 %5 %6 %7 %8 %9
exit
