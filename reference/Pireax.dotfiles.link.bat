@echo off
for %%f in ("%~dp0home\*") do (
    @mklink "%USERPROFILE%\%%~nxf" "%%f" 2> nul
)
for /D %%d in ("%~dp0home\*") do (
    @mklink /D "%USERPROFILE%\%%~nxd" "%%d" 2> nul
)

mkdir "%USERPROFILE%\vim-temp"
mkdir "%USERPROFILE%\vim-temp\backup"
mkdir "%USERPROFILE%\vim-temp\swap"
mkdir "%USERPROFILE%\vim-temp\undo"
