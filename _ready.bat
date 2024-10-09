@echo off


if %1 == begin (
    goto BEGIN
) else (
    goto END
)


:BEGIN


set BUILD_PATH=%~dp0
set BUILD_PATH=%BUILD_PATH:~0,-1%
set PHP_SDK_PATH=%BUILD_PATH%\php-sdk
set PHP_EXT_SDK_PATH=%BUILD_PATH%\php-sdk-ext
set PHP_SRC_PATH=%BUILD_PATH%\php-src
set INCLUDE=%VC_TOOLS_PATH%\include;%WIN_SDK_PATH%\Include\%WIN_SDK_VERSION%\shared;%WIN_SDK_PATH%\Include\%WIN_SDK_VERSION%\ucrt;%WIN_SDK_PATH%\Include\%WIN_SDK_VERSION%\um
set LIB=%VC_TOOLS_PATH%\lib\x64;%WIN_SDK_PATH%\Lib\%WIN_SDK_VERSION%\um\x64;%WIN_SDK_PATH%\Lib\%WIN_SDK_VERSION%\ucrt\x64
set ORIGN_PATH=%path%

set path=%PATH%;%VC_TOOLS_PATH%\bin\HostX64\x64
set path=%PATH%;%WIN_SDK_PATH%\bin\%WIN_SDK_VERSION%\x64
set path=%PATH%;%PHP_SDK_PATH%;%PHP_SDK_PATH%\bin;%PHP_SDK_PATH%\msys2\usr\bin
set path=%PATH%;%PHP_EXT_SDK_PATH%
set path=%PATH%;%PHP_SRC_PATH%

goto EXIT


:END


set path=%ORIGN_PATH%
goto EXIT


:EXIT
