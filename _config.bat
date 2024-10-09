@echo off


:: VC2019 complier path
:: ====================
:: e.g., C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.29.30133
:: e.g., C:\VS2022\VC\Tools\MSVC\14.41.34120
set VC_TOOLS_PATH=C:\VS2022\VC\Tools\MSVC\14.41.34120


:: Windows SDK path
:: ================
:: e.g., C:\Program Files (x86)\Microsoft SDKs\Windows Kits\10
:: e.g., C:\Windows Kits\10
set WIN_SDK_PATH=C:\Windows Kits\10


:: Windows SDK version
:: ===================
:: see SDKManifest.xml FileList\PlatformIdentity attribute
:: e.g., 10.0.22621.0
set WIN_SDK_VERSION=10.0.22621.0


:: Enable NTS
:: ==========
:: Default is 1, for FastCGI, set blank for SAPI
set PHP_NTS=1
