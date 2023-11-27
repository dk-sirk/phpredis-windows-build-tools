# PhpRedis Windows Build Tools

Easy build PhpRedis binary DLL for windows.

Links:
- [PHP for Windows](https://windows.php.net)
- [PhpRedis](https://github.com/phpredis/phpredis)
- [PHP SDK Binary Tools](https://github.com/php/php-sdk-binary-tools)
- [PhpRedis on PECL](https://pecl.php.net/package/redis)


# Download

- Visual Studio ( https://visualstudio.microsoft.com/downloads ) Download Community Edition
- PHP SDK ( https://github.com/php/php-sdk-binary-tools ) Download source code ZIP
- PHP Source ( https://windows.php.net/download ) Download source code ZIP
- PhpRedis Source ( https://github.com/phpredis/phpredis ) Download source code ZIP

# Prepare 

- Run [Visual Studio Setup], select `MSVC v142 VS2019 C++ x64/x86 build tools` and `Windows 11 SDK (10.0.22621.0)`, complete the installation according to the wizard.
- Extract this tools to a empty folder, e.g., `c:\build` alias `{build}`
- Extract SDKs and sources to specified folder, excluding the first level directory if exist:
  - PHP SDK -> `{build}\php-sdk`
  - PHP Source -> `{build}\php-src`
  - PhpRedis Source -> `{build}\php-src\ext\redis`
- **Edit `{build}\_config.bat`** !!!

# Run

Open CMD console, cd `{build}`, run

`init.bat`

if no error accured, next

`build.bat`

# Output

`php_redis_nts.dll` or `php_redis_ts.dll` you will find in `{build}\release`

# Remark

- Open CMD console，run `{build}\env.bat` to initialize runtime environment，if you want to run tools related.
- This script is support x64 only.