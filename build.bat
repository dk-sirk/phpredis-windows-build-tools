@echo off
@echo Phpredis Windows Build Tools - Build
@echo ====================================
call _config.bat
call _ready.bat begin
::------------------------------------------------------------------------------


cd /d %PHP_SRC_PATH%
nmake clean 1>nul 2>nul
nmake
cd /d %BUILD_PATH%\
del /q %BUILD_PATH%\release\*.* 1>nul 2>nul
if defined PHP_NTS (
    copy /y %PHP_SRC_PATH%\x64\Release\php_redis.dll %BUILD_PATH%\release\php_redis_nts.dll 1>nul 2>nul
    rmdir /s /q %PHP_SRC_PATH%\x64\Release 1>nul 2>nul
) else (
    copy /y %PHP_SRC_PATH%\x64\Release_TS\php_redis.dll %BUILD_PATH%\release\php_redis_ts.dll 1>nul 2>nul
    rmdir /s /q %PHP_SRC_PATH%\x64\Release_TS 1>nul 2>nul
)
echo --------------------------
echo Done! 


::------------------------------------------------------------------------------
call _ready.bat end