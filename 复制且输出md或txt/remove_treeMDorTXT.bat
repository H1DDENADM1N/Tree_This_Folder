@echo off
Net session >nul 2>&1 || powershell start-process remove_treeMDorTXT.bat -verb runas
SETLOCAL EnableExtensions

:: ɾ��֮ǰ���ļ��б�������ӵ�ע�����
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Item0" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\Item1" /f
REG DELETE "HKEY_CLASSES_ROOT\Directory\Background\shell\Item0" /f
echo �Ҽ��˵�����ɾ����
:: ɾ����װĿ¼
rd /S /Q "C:\Program Files\Tree This Folder"
pause
ENDLOCAL