@echo off
SETLOCAL EnableExtensions

:: ����ű�����
set SCRIPT_NAME=�����ļ��нṹ

:: ����ű����·��
set SCRIPT_PATH="%~dp0tree_this_folder.bat"

:: ���ļ��б���������Ҽ��˵���
REG ADD "HKEY_CLASSES_ROOT\Directory\Background\shell\%SCRIPT_NAME%" /f
REG ADD "HKEY_CLASSES_ROOT\Directory\Background\shell\%SCRIPT_NAME%\command" /f /ve /t REG_SZ /d "cmd /c \"%SCRIPT_PATH%\""

echo �Ҽ��˵�������ӡ�
pause
ENDLOCAL
