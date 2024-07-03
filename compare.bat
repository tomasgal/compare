@echo off
REM Check if both input files are provided
if "%~1"=="" (
    echo Usage: compare.bat file1 file2
    exit /b 1
)
if "%~2"=="" (
    echo Usage: compare.bat file1 file2
    exit /b 1
)

REM Compare the two files
fc %~1 %~2

REM Check the result of the comparison
if %errorlevel%==0 (
    echo Files are identical.
) else (
    echo Files are different.
)