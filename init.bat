@echo off
@echo Phpredis Windows Build Tools - Init
@echo ===================================
call _config.bat
call _ready.bat begin
::------------------------------------------------------------------------------


cd /d %PHP_SRC_PATH%
call buildconf.bat
set PARAMS=--enable-cli --enable-cgi --disable-all --enable-redis=shared
if defined PHP_NTS (
    set PARAMS=%PARAMS% --disable-zts
)
set PARAMS=%PARAMS% --with-extra-includes="%INCLUDE%"
call configure.bat %PARAMS%
cd /d %BUILD_PATH%\


::------------------------------------------------------------------------------
call _ready.bat end