@echo off
Net session >nul 2>&1 || powershell start-process add0.bat -verb runas
SETLOCAL EnableExtensions

:: ����ű�����
set SCRIPT_NAME=�����ļ��нṹ

:: ����ű����·��
set SCRIPT_PATH="%~dp0main0.bat"
copy "%~dp0treemd.exe" "%APPDATA%\treemd.exe"
:: ���ļ��б���������Ҽ��˵���
REG ADD "HKEY_CLASSES_ROOT\Directory\Background\shell\%SCRIPT_NAME%" /f
REG ADD "HKEY_CLASSES_ROOT\Directory\Background\shell\%SCRIPT_NAME%\command" /f /ve /t REG_SZ /d "cmd /c \"%SCRIPT_PATH%\""

echo �Ҽ��˵�������ӡ�
pause
ENDLOCAL
