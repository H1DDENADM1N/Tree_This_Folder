@echo off
Net session >nul 2>&1 || powershell start-process remove_treejustcopy.bat -verb runas
SETLOCAL EnableExtensions
:: ������ǰ��ӵĽű�����
set SCRIPT_NAME=�����ļ��нṹ
:: ɾ��֮ǰ���ļ��б�������ӵ�ע�����
REG DELETE "HKEY_CLASSES_ROOT\Directory\Background\shell\%SCRIPT_NAME%" /f
:: ��ʱ
ping 127.0.0.1 -n 2 >nul
echo �Ҽ��˵�����ɾ����
:: ɾ����װ�ļ�
del /s /q "C:\Program Files\Tree This Folder\treejustcopy.ico"
del /s /q "C:\Program Files\Tree This Folder\treejustcopy.bat"
del /s /q "C:\Program Files\Tree This Folder\remove_treejustcopy.bat"
pause
ENDLOCAL