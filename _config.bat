@echo off


:: VC2019 complier path
:: e.g., C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.29.30133
set VC_TOOLS_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.29.30133


:: Windows SDK path
:: e.g., D:\Windows Kits OR C:\Program Files (x86)\Microsoft SDKs\Windows Kits
set WIN_SDK_PATH=D:\Windows Kits


:: Windows SDK version
:: e.g., 10.0.22621.0
set WIN_SDK_VERSION=10.0.22621.0


:: Enable NTS
:: Default is 1, for FastCGI, set blank for SAPI
set PHP_NTS=1
