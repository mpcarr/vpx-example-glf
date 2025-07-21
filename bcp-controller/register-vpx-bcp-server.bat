@echo off
:: Set the current directory to the batch file's directory
cd /d "%~dp0"
:: Check if we are running in a 64-bit environment
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    set "regasmPath=%SystemRoot%\Microsoft.NET\Framework64\v4.0.30319\RegAsm.exe"
) else (
    echo This script is designed for 64-bit environments only.
    exit /b 1
)

:: Check if the .NET Framework 4.0 is installed
if not exist "%SystemRoot%\Microsoft.NET\Framework64\v4.0.30319\RegAsm.exe" (
    echo .NET Framework 4.0 is not installed.
    exit /b 1
)
:: Register the COM DLL and generate the Type Library (TLB)
%regasmPath% "./vpx-bcp-controller.dll" /codebase /tlb

if errorlevel 1 (
    echo Failed to register the COM DLL and generate the TLB.
    pause
    exit /b 1
)

echo COM DLL registration and TLB generation successful.
pause
