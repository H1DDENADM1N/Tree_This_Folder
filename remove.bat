@echo off
SETLOCAL EnableExtensions

:: ������ǰ��ӵĽű�����
set SCRIPT_NAME=�����ļ��нṹ

:: ɾ��֮ǰ���ļ��б�������ӵ�ע�����
REG DELETE "HKEY_CLASSES_ROOT\Directory\Background\shell\%SCRIPT_NAME%" /f

echo �Ҽ��˵�����ɾ����
pause
ENDLOCAL
