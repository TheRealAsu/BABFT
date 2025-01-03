@echo off
setlocal enabledelayedexpansion

:: Ask user to enter image URL
echo Please enter the image URL :
set /p image_url=

:: Execute PowerShell script to download image and extract RGB colors
powershell -ExecutionPolicy Bypass -Command "& '%~dp0convert_image_to_rgb.ps1' '%image_url%'"

pause