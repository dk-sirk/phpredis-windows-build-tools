@echo off
@echo Phpredis Windows Build Tools - Build
@echo ====================================
call _config.bat
call _ready.bat begin
set PRE_PATH=%cd%
::------------------------------------------------------------------------------


cd /d %PHP_SRC_PATH%
nmake clean 1>nul 2>nul
nmake
if defined PHP_NTS (
    copy /y %PHP_SRC_PATH%\x64\Release\php_redis.dll %BUILD_PATH%\release\php_redis_nts.dll 1>nul 2>nul
    rmdir /s /q %PHP_SRC_PATH%\x64\Release 1>nul 2>nul
) else (
    copy /y %PHP_SRC_PATH%\x64\Release_TS\php_redis.dll %BUILD_PATH%\release\php_redis_ts.dll 1>nul 2>nul
    rmdir /s /q %PHP_SRC_PATH%\x64\Release_TS 1>nul 2>nul
)


::------------------------------------------------------------------------------
cd /d %PRE_PATH%
set PRE_PATH=
call _ready.bat end
echo --------------------------
echo Done!
