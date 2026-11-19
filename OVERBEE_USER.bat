@echo off
title BUAT USER + ADMIN OVERBEE
color 0a
echo ========================================
echo       BUAT USER + ADMIN (OVERBEE)
echo ========================================
echo.

set /p user=Masukkan Username: 
set /p pass=Masukkan Password: 

echo.
echo [+] Membuat user: %user%
net user %user% %pass% /add

echo [+] Menambahkan ke Administrator...
net localgroup Administrators %user% /add

echo.
echo ========================================
echo        USER BERHASIL DIBUAT
echo ========================================
echo Username : %user%
echo Password : %pass%
echo Admin    : YES
echo ========================================
echo.
pause
